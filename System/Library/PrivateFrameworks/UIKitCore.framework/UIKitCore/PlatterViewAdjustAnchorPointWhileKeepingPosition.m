@interface PlatterViewAdjustAnchorPointWhileKeepingPosition
@end

@implementation PlatterViewAdjustAnchorPointWhileKeepingPosition

double ___PlatterViewAdjustAnchorPointWhileKeepingPosition_block_invoke(double a1, double a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v14.origin.x = a3;
  v14.origin.y = a4;
  v14.size.width = a5;
  v14.size.height = a6;
  MinX = CGRectGetMinX(v14);
  v15.origin.x = a3;
  v15.origin.y = a4;
  v15.size.width = a5;
  v15.size.height = a6;
  v12 = MinX + a1 * CGRectGetWidth(v15);
  v16.origin.x = a3;
  v16.origin.y = a4;
  v16.size.width = a5;
  v16.size.height = a6;
  CGRectGetMinY(v16);
  v17.origin.x = a3;
  v17.origin.y = a4;
  v17.size.width = a5;
  v17.size.height = a6;
  CGRectGetHeight(v17);
  return v12;
}

@end