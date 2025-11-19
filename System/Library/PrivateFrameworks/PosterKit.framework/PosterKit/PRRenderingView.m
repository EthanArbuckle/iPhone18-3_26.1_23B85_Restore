@interface PRRenderingView
- (BOOL)isEmpty;
- (PRRenderingView)initWithOwner:(id)a3 scene:(id)a4 level:(int64_t)a5 dynamicRotationEnabled:(BOOL)a6 extensionUserInteractionEnabled:(BOOL)a7;
- (void)invalidate;
- (void)setAlphaInverted:(BOOL)a3;
- (void)setExtensionUserInteractionEnabled:(BOOL)a3;
- (void)setLevel:(int64_t)a3;
@end

@implementation PRRenderingView

- (BOOL)isEmpty
{
  v3 = [(PRRenderingView *)self subviews];
  if ([v3 count])
  {
    v4 = 0;
  }

  else
  {
    v5 = [(PRRenderingView *)self backgroundColor];
    v4 = v5 == 0;
  }

  return v4;
}

- (PRRenderingView)initWithOwner:(id)a3 scene:(id)a4 level:(int64_t)a5 dynamicRotationEnabled:(BOOL)a6 extensionUserInteractionEnabled:(BOOL)a7
{
  v7 = a7;
  v8 = a6;
  v12 = a3;
  v13 = a4;
  BSDispatchQueueAssertMain();
  v23.receiver = self;
  v23.super_class = PRRenderingView;
  v14 = [(PRRenderingView *)&v23 init];
  v15 = v14;
  if (v14)
  {
    objc_storeWeak(&v14->_owner, v12);
    v16 = [[PRPosterWindow alloc] initWithWindowScene:v13];
    window = v15->_window;
    v15->_window = v16;

    v15->_level = a5;
    v18 = [(PRRenderingView *)v15 layer];
    v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"PRRenderingView - %ld", a5];
    [v18 setName:v19];

    v20 = [[PRPosterRootViewController alloc] initWithDynamicRotationEnabled:v8];
    [(PRPosterRootViewController *)v20 setRenderingView:v15];
    [(PRPosterWindow *)v15->_window setRootViewController:v20];
    [(PRPosterWindow *)v15->_window setUserInteractionEnabled:v7];
    [(PRPosterWindow *)v15->_window setWindowLevel:a5];
    v21 = [(PRPosterWindow *)v15->_window layer];
    [v21 setAllowsHitTesting:v7];

    [(PRPosterWindow *)v15->_window setHidden:0];
    [(PRRenderingView *)v15 setupSubviews];
  }

  return v15;
}

- (void)setLevel:(int64_t)a3
{
  if (self->_level != a3)
  {
    self->_level = a3;
    [(PRPosterWindow *)self->_window setWindowLevel:a3];
  }
}

- (void)setAlphaInverted:(BOOL)a3
{
  v25 = *MEMORY[0x1E69E9840];
  if (self->_alphaInverted != a3)
  {
    v3 = a3;
    self->_alphaInverted = a3;
    v5 = self->_window;
    if (v3)
    {
      v6 = objc_alloc(MEMORY[0x1E69DD250]);
      [(PRPosterWindow *)v5 bounds];
      v7 = [v6 initWithFrame:?];
      [(UIView *)v7 setAutoresizingMask:18];
      v8 = [MEMORY[0x1E69DC888] systemDarkOrangeColor];
      [(UIView *)v7 setBackgroundColor:v8];

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
    v10 = [(PRPosterWindow *)v5 subviews];
    v11 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
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
            objc_enumerationMutation(v10);
          }

          v16 = *(*(&v20 + 1) + 8 * v15);
          if (v3)
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

          v18 = [(UIView *)v16 layer];
          [v18 setCompositingFilter:v17];

          ++v15;
        }

        while (v12 != v15);
        v12 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v12);
    }
  }
}

- (void)setExtensionUserInteractionEnabled:(BOOL)a3
{
  if (self->_extensionUserInteractionEnabled != a3)
  {
    v4 = a3;
    self->_extensionUserInteractionEnabled = a3;
    [(PRPosterWindow *)self->_window setUserInteractionEnabled:?];
    v6 = [(PRPosterWindow *)self->_window layer];
    [v6 setAllowsHitTesting:v4];
  }
}

- (void)invalidate
{
  [(PRPosterWindow *)self->_window setHidden:1];
  [(PRRenderingView *)self removeFromSuperview];
  v3 = [(PRPosterWindow *)self->_window rootViewController];
  [v3 setView:0];

  [(PRPosterWindow *)self->_window setRootViewController:0];
  WeakRetained = objc_loadWeakRetained(&self->_owner);
  [WeakRetained invalidateView:self];

  window = self->_window;
  self->_window = 0;

  objc_storeWeak(&self->_owner, 0);
}

@end