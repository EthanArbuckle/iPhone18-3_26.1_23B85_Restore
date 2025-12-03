@interface _UISceneHostingContentSizePreferenceClientComponent
- (CGSize)_preferredContentSize;
- (void)_setPreferredContentSize:(CGSize)size;
@end

@implementation _UISceneHostingContentSizePreferenceClientComponent

- (void)_setPreferredContentSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  p_preferredContentSize = &self->_preferredContentSize;
  if (size.width != self->_preferredContentSize.width || size.height != self->_preferredContentSize.height)
  {
    clientScene = [(FBSSceneComponent *)self clientScene];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __80___UISceneHostingContentSizePreferenceClientComponent__setPreferredContentSize___block_invoke;
    v8[3] = &__block_descriptor_48_e118___FBSSceneTransitionContext_16__0__FBSMutableSceneClientSettings__UISceneHostingContentSizePreferenceClientSettings__8l;
    *&v8[4] = width;
    *&v8[5] = height;
    [clientScene updateClientSettingsWithTransitionBlock:v8];

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