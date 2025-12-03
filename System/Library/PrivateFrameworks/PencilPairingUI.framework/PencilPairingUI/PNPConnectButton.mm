@interface PNPConnectButton
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
@end

@implementation PNPConnectButton

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  superview = [(PNPConnectButton *)self superview];
  superview2 = [(PNPConnectButton *)self superview];
  [superview2 bounds];
  [superview convertRect:self toView:?];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v17 = v10;
  v18 = v12;
  v19 = v14;
  v20 = v16;
  v21 = x;
  v22 = y;

  return CGRectContainsPoint(*&v17, *&v21);
}

@end