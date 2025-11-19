@interface SBFloatyFolderScrollView
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
@end

@implementation SBFloatyFolderScrollView

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v6 = self;
  v7 = [(SBFloatyFolderScrollView *)self superview];
  [(SBFloatyFolderScrollView *)v6 convertPoint:v7 toView:x, y];
  v9 = v8;
  v11 = v10;
  [v7 bounds];
  v13.x = v9;
  v13.y = v11;
  LOBYTE(v6) = CGRectContainsPoint(v14, v13);

  return v6;
}

@end