@interface PKPassFaceViewCategoryVisualizationRendererState
- (char)initWithCurrentRendererState:(void *)state;
- (void)dealloc;
@end

@implementation PKPassFaceViewCategoryVisualizationRendererState

- (void)dealloc
{
  PKCategoryVisualizationRendererStateDestroy(&self->_state);
  v3.receiver = self;
  v3.super_class = PKPassFaceViewCategoryVisualizationRendererState;
  [(PKPassFaceViewCategoryVisualizationRendererState *)&v3 dealloc];
}

- (char)initWithCurrentRendererState:(void *)state
{
  if (!state)
  {
    return 0;
  }

  v7.receiver = state;
  v7.super_class = PKPassFaceViewCategoryVisualizationRendererState;
  v3 = objc_msgSendSuper2(&v7, sel_init);
  if (v3)
  {
    memcpy(v5, a2, sizeof(v5));
    PKCategoryVisualizationRendererStateCopy(v5, v6);
    memcpy(v3 + 16, v6, 0x27D0uLL);
  }

  return v3;
}

@end