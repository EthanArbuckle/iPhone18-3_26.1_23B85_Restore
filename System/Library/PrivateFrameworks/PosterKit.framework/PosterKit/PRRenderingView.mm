@interface PRRenderingView
- (BOOL)isEmpty;
- (PRRenderingView)initWithOwner:(id)owner scene:(id)scene level:(int64_t)level dynamicRotationEnabled:(BOOL)enabled extensionUserInteractionEnabled:(BOOL)interactionEnabled;
- (void)invalidate;
- (void)setAlphaInverted:(BOOL)inverted;
- (void)setExtensionUserInteractionEnabled:(BOOL)enabled;
- (void)setLevel:(int64_t)level;
@end

@implementation PRRenderingView

- (BOOL)isEmpty
{
  subviews = [(PRRenderingView *)self subviews];
  if ([subviews count])
  {
    v4 = 0;
  }

  else
  {
    backgroundColor = [(PRRenderingView *)self backgroundColor];
    v4 = backgroundColor == 0;
  }

  return v4;
}

- (PRRenderingView)initWithOwner:(id)owner scene:(id)scene level:(int64_t)level dynamicRotationEnabled:(BOOL)enabled extensionUserInteractionEnabled:(BOOL)interactionEnabled
{
  interactionEnabledCopy = interactionEnabled;
  enabledCopy = enabled;
  ownerCopy = owner;
  sceneCopy = scene;
  BSDispatchQueueAssertMain();
  v23.receiver = self;
  v23.super_class = PRRenderingView;
  v14 = [(PRRenderingView *)&v23 init];
  v15 = v14;
  if (v14)
  {
    objc_storeWeak(&v14->_owner, ownerCopy);
    v16 = [[PRPosterWindow alloc] initWithWindowScene:sceneCopy];
    window = v15->_window;
    v15->_window = v16;

    v15->_level = level;
    layer = [(PRRenderingView *)v15 layer];
    level = [MEMORY[0x1E696AEC0] stringWithFormat:@"PRRenderingView - %ld", level];
    [layer setName:level];

    v20 = [[PRPosterRootViewController alloc] initWithDynamicRotationEnabled:enabledCopy];
    [(PRPosterRootViewController *)v20 setRenderingView:v15];
    [(PRPosterWindow *)v15->_window setRootViewController:v20];
    [(PRPosterWindow *)v15->_window setUserInteractionEnabled:interactionEnabledCopy];
    [(PRPosterWindow *)v15->_window setWindowLevel:level];
    layer2 = [(PRPosterWindow *)v15->_window layer];
    [layer2 setAllowsHitTesting:interactionEnabledCopy];

    [(PRPosterWindow *)v15->_window setHidden:0];
    [(PRRenderingView *)v15 setupSubviews];
  }

  return v15;
}

- (void)setLevel:(int64_t)level
{
  if (self->_level != level)
  {
    self->_level = level;
    [(PRPosterWindow *)self->_window setWindowLevel:level];
  }
}

- (void)setAlphaInverted:(BOOL)inverted
{
  v25 = *MEMORY[0x1E69E9840];
  if (self->_alphaInverted != inverted)
  {
    invertedCopy = inverted;
    self->_alphaInverted = inverted;
    v5 = self->_window;
    if (invertedCopy)
    {
      v6 = objc_alloc(MEMORY[0x1E69DD250]);
      [(PRPosterWindow *)v5 bounds];
      v7 = [v6 initWithFrame:?];
      [(UIView *)v7 setAutoresizingMask:18];
      systemDarkOrangeColor = [MEMORY[0x1E69DC888] systemDarkOrangeColor];
      [(UIView *)v7 setBackgroundColor:systemDarkOrangeColor];

      [(PRPosterWindow *)v5 insertSubview:v7 atIndex:0];
      invertedBackgroundCutoutView = self->_invertedBackgroundCutoutView;
      self->_invertedBackgroundCutoutView = v7;
    }

    else
    {
      [(UIView *)self->_invertedBackgroundCutoutView removeFromSuperview];
      invertedBackgroundCutoutView = self->_invertedBackgroundCutoutView;
      self->_invertedBackgroundCutoutView = 0;
    }

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v19 = v5;
    subviews = [(PRPosterWindow *)v5 subviews];
    v11 = [subviews countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v21;
      v14 = *MEMORY[0x1E69798E8];
      do
      {
        v15 = 0;
        do
        {
          if (*v21 != v13)
          {
            objc_enumerationMutation(subviews);
          }

          v16 = *(*(&v20 + 1) + 8 * v15);
          if (invertedCopy)
          {
            if (v16 == self->_invertedBackgroundCutoutView)
            {
              v17 = 0;
            }

            else
            {
              v17 = v14;
            }
          }

          else
          {
            v17 = 0;
          }

          layer = [(UIView *)v16 layer];
          [layer setCompositingFilter:v17];

          ++v15;
        }

        while (v12 != v15);
        v12 = [subviews countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v12);
    }
  }
}

- (void)setExtensionUserInteractionEnabled:(BOOL)enabled
{
  if (self->_extensionUserInteractionEnabled != enabled)
  {
    enabledCopy = enabled;
    self->_extensionUserInteractionEnabled = enabled;
    [(PRPosterWindow *)self->_window setUserInteractionEnabled:?];
    layer = [(PRPosterWindow *)self->_window layer];
    [layer setAllowsHitTesting:enabledCopy];
  }
}

- (void)invalidate
{
  [(PRPosterWindow *)self->_window setHidden:1];
  [(PRRenderingView *)self removeFromSuperview];
  rootViewController = [(PRPosterWindow *)self->_window rootViewController];
  [rootViewController setView:0];

  [(PRPosterWindow *)self->_window setRootViewController:0];
  WeakRetained = objc_loadWeakRetained(&self->_owner);
  [WeakRetained invalidateView:self];

  window = self->_window;
  self->_window = 0;

  objc_storeWeak(&self->_owner, 0);
}

@end