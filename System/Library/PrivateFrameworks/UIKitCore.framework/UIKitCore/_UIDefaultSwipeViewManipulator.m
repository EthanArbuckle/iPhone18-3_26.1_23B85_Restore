@interface _UIDefaultSwipeViewManipulator
- (CGRect)restingFrameForSwipedView:(id)a3 atIndexPath:(id)a4;
- (void)moveSwipedView:(id)a3 atIndexPath:(id)a4 withSwipeInfo:(id *)a5 animator:(id)a6;
- (void)removeAnimationsFromSwipedView:(id)a3 atIndexPath:(id)a4;
@end

@implementation _UIDefaultSwipeViewManipulator

- (CGRect)restingFrameForSwipedView:(id)a3 atIndexPath:(id)a4
{
  [a3 frame];
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

- (void)removeAnimationsFromSwipedView:(id)a3 atIndexPath:(id)a4
{
  v7 = [a3 layer];
  v4 = [v7 presentationLayer];
  if (v4)
  {
    v5 = [v7 animationKeys];
    v6 = [v5 count];

    if (v6)
    {
      [v4 position];
      [v7 setPosition:?];
      [v7 removeAllAnimations];
    }
  }
}

- (void)moveSwipedView:(id)a3 atIndexPath:(id)a4 withSwipeInfo:(id *)a5 animator:(id)a6
{
  v10 = a3;
  v11 = a6;
  [(_UIDefaultSwipeViewManipulator *)self restingFrameForSwipedView:v10 atIndexPath:a4];
  x = v22.origin.x;
  y = v22.origin.y;
  width = v22.size.width;
  height = v22.size.height;
  v16 = CGRectGetMidX(v22) + a5->var3;
  v23.origin.x = x;
  v23.origin.y = y;
  v23.size.width = width;
  v23.size.height = height;
  MidY = CGRectGetMidY(v23);
  if (v11)
  {
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __84___UIDefaultSwipeViewManipulator_moveSwipedView_atIndexPath_withSwipeInfo_animator___block_invoke;
    v18[3] = &unk_1E70F6848;
    v19 = v10;
    v20 = v16;
    v21 = MidY;
    [v11 addAnimations:v18];
  }

  else
  {
    [v10 setCenter:{v16, MidY}];
  }
}

@end