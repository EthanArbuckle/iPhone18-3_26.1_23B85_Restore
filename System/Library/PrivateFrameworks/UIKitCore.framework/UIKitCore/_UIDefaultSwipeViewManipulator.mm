@interface _UIDefaultSwipeViewManipulator
- (CGRect)restingFrameForSwipedView:(id)view atIndexPath:(id)path;
- (void)moveSwipedView:(id)view atIndexPath:(id)path withSwipeInfo:(id *)info animator:(id)animator;
- (void)removeAnimationsFromSwipedView:(id)view atIndexPath:(id)path;
@end

@implementation _UIDefaultSwipeViewManipulator

- (CGRect)restingFrameForSwipedView:(id)view atIndexPath:(id)path
{
  [view frame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(_UIDefaultSwipeViewManipulator *)self swipedViewRestingOffset];
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (void)removeAnimationsFromSwipedView:(id)view atIndexPath:(id)path
{
  layer = [view layer];
  presentationLayer = [layer presentationLayer];
  if (presentationLayer)
  {
    animationKeys = [layer animationKeys];
    v6 = [animationKeys count];

    if (v6)
    {
      [presentationLayer position];
      [layer setPosition:?];
      [layer removeAllAnimations];
    }
  }
}

- (void)moveSwipedView:(id)view atIndexPath:(id)path withSwipeInfo:(id *)info animator:(id)animator
{
  viewCopy = view;
  animatorCopy = animator;
  [(_UIDefaultSwipeViewManipulator *)self restingFrameForSwipedView:viewCopy atIndexPath:path];
  x = v22.origin.x;
  y = v22.origin.y;
  width = v22.size.width;
  height = v22.size.height;
  v16 = CGRectGetMidX(v22) + info->var3;
  v23.origin.x = x;
  v23.origin.y = y;
  v23.size.width = width;
  v23.size.height = height;
  MidY = CGRectGetMidY(v23);
  if (animatorCopy)
  {
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __84___UIDefaultSwipeViewManipulator_moveSwipedView_atIndexPath_withSwipeInfo_animator___block_invoke;
    v18[3] = &unk_1E70F6848;
    v19 = viewCopy;
    v20 = v16;
    v21 = MidY;
    [animatorCopy addAnimations:v18];
  }

  else
  {
    [viewCopy setCenter:{v16, MidY}];
  }
}

@end