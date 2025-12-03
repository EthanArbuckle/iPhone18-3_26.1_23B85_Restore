@interface _UIKeyboardAnimatorAnimationStyleControllerContext
- (CGRect)endFrame;
- (CGRect)startFrame;
- (_UIKeyboardAnimatorAnimationStyleControllerContext)initWithHost:(id)host startPlacement:(id)placement endPlacement:(id)endPlacement;
@end

@implementation _UIKeyboardAnimatorAnimationStyleControllerContext

- (_UIKeyboardAnimatorAnimationStyleControllerContext)initWithHost:(id)host startPlacement:(id)placement endPlacement:(id)endPlacement
{
  hostCopy = host;
  placementCopy = placement;
  endPlacementCopy = endPlacement;
  v25.receiver = self;
  v25.super_class = _UIKeyboardAnimatorAnimationStyleControllerContext;
  v12 = [(_UIKeyboardAnimatorAnimationStyleControllerContext *)&v25 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_host, host);
    objc_storeStrong(&v13->_start, placement);
    objc_storeStrong(&v13->_end, endPlacement);
    [hostCopy updateToPlacement:v13->_end withNormalAnimationsAndNotifications:0];
    animatingView = [(_UIKeyboardAnimatorAnimationStyleControllerContext *)v13 animatingView];
    [animatingView frame];
    v13->_endFrame.origin.x = v15;
    v13->_endFrame.origin.y = v16;
    v13->_endFrame.size.width = v17;
    v13->_endFrame.size.height = v18;

    [hostCopy updateToPlacement:v13->_start withNormalAnimationsAndNotifications:0];
    animatingView2 = [(_UIKeyboardAnimatorAnimationStyleControllerContext *)v13 animatingView];
    [animatingView2 frame];
    v13->_startFrame.origin.x = v20;
    v13->_startFrame.origin.y = v21;
    v13->_startFrame.size.width = v22;
    v13->_startFrame.size.height = v23;
  }

  return v13;
}

- (CGRect)startFrame
{
  x = self->_startFrame.origin.x;
  y = self->_startFrame.origin.y;
  width = self->_startFrame.size.width;
  height = self->_startFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)endFrame
{
  x = self->_endFrame.origin.x;
  y = self->_endFrame.origin.y;
  width = self->_endFrame.size.width;
  height = self->_endFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end