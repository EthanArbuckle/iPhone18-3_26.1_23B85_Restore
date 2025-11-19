@interface SBUIKitResizableSceneHostComponent
- (CGRect)frame;
- (void)resizableContentViewController:(id)a3 didUpdateToBounds:(CGRect)a4;
- (void)setFrame:(CGRect)a3;
@end

@implementation SBUIKitResizableSceneHostComponent

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (!CGRectIsNull(a3))
  {
    v10.origin.x = x;
    v10.origin.y = y;
    v10.size.width = width;
    v10.size.height = height;
    if (!CGRectIsEmpty(v10))
    {
      v8 = [(FBSSceneComponent *)self hostScene];
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __47__SBUIKitResizableSceneHostComponent_setFrame___block_invoke;
      v9[3] = &__block_descriptor_64_e33_v16__0__FBSMutableSceneSettings_8l;
      *&v9[4] = x;
      *&v9[5] = y;
      *&v9[6] = width;
      *&v9[7] = height;
      [v8 updateSettingsWithBlock:v9];
    }
  }
}

- (void)resizableContentViewController:(id)a3 didUpdateToBounds:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v9 = [a3 view];
  [v9 convertRect:0 toView:{x, y, width, height}];
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