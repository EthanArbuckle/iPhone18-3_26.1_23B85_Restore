@interface _UISceneHostingContentSizePreferenceClientComponent
- (CGSize)_preferredContentSize;
- (void)_setPreferredContentSize:(CGSize)a3;
@end

@implementation _UISceneHostingContentSizePreferenceClientComponent

- (void)_setPreferredContentSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  p_preferredContentSize = &self->_preferredContentSize;
  if (a3.width != self->_preferredContentSize.width || a3.height != self->_preferredContentSize.height)
  {
    v7 = [(FBSSceneComponent *)self clientScene];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __80___UISceneHostingContentSizePreferenceClientComponent__setPreferredContentSize___block_invoke;
    v8[3] = &__block_descriptor_48_e118___FBSSceneTransitionContext_16__0__FBSMutableSceneClientSettings__UISceneHostingContentSizePreferenceClientSettings__8l;
    *&v8[4] = width;
    *&v8[5] = height;
    [v7 updateClientSettingsWithTransitionBlock:v8];

    p_preferredContentSize->width = width;
    p_preferredContentSize->height = height;
  }
}

- (CGSize)_preferredContentSize
{
  width = self->_preferredContentSize.width;
  height = self->_preferredContentSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end