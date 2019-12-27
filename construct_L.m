function [L]=construct_L(Dinit,options)
% construct the Laplacian matrix

W = constructW(Dinit',options);
DCol = full(sum(W,2));
Dw = spdiags(DCol,0,speye(size(W,1)));
L = Dw - W;
