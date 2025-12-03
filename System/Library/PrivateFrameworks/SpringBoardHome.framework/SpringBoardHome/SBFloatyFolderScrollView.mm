@interface SBFloatyFolderScrollView
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
@end

@implementation SBFloatyFolderScrollView

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  selfCopy = self;
  superview = [(SBFloatyFolderScrollView *)self superview];
  [(SBFloatyFolderScrollView *)selfCopy convertPoint:superview toView:x, y];
  v9 = v8;
  v11 = v10;
  [superview bounds];
  v13.x = v9;
  v13.y = v11;
  LOBYTE(selfCopy) = CGRectContainsPoint(v14, v13);

  return selfCopy;
}

@end