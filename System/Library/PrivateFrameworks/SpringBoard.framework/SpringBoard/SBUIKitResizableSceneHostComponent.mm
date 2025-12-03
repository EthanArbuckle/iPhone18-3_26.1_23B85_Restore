@interface SBUIKitResizableSceneHostComponent
- (CGRect)frame;
- (void)resizableContentViewController:(id)controller didUpdateToBounds:(CGRect)bounds;
- (void)setFrame:(CGRect)frame;
@end

@implementation SBUIKitResizableSceneHostComponent

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  if (!CGRectIsNull(frame))
  {
    v10.origin.x = x;
    v10.origin.y = y;
    v10.size.width = width;
    v10.size.height = height;
    if (!CGRectIsEmpty(v10))
    {
      hostScene = [(FBSSceneComponent *)self hostScene];
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __47__SBUIKitResizableSceneHostComponent_setFrame___block_invoke;
      v9[3] = &__block_descriptor_64_e33_v16__0__FBSMutableSceneSettings_8l;
      *&v9[4] = x;
      *&v9[5] = y;
      *&v9[6] = width;
      *&v9[7] = height;
      [hostScene updateSettingsWithBlock:v9];
    }
  }
}

- (void)resizableContentViewController:(id)controller didUpdateToBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  view = [controller view];
  [view convertRect:0 toView:{x, y, width, height}];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  [(SBUIKitResizableSceneHostComponent *)self setFrame:v11, v13, v15, v17];
}

- (CGRect)frame
{
  x = self->_frame.origin.x;
  y = self->_frame.origin.y;
  width = self->_frame.size.width;
  height = self->_frame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end