@interface PXGView(PXStory)
- (id)storyHitTestResultAtPoint:()PXStory;
@end

@implementation PXGView(PXStory)

- (id)storyHitTestResultAtPoint:()PXStory
{
  v1 = [self hitTestResultAtPoint:?];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

@end