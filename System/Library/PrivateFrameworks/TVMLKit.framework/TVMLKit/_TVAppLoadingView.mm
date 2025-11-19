@interface _TVAppLoadingView
+ (id)loadingScreen;
- (_TVAppLoadingView)initWithFrame:(CGRect)a3 templateImage:(id)a4;
- (void)didRotate:(id)a3;
- (void)hide;
- (void)showOverKeyWindowWithSpinnerOnly:(BOOL)a3;
- (void)timeout;
@end

@implementation _TVAppLoadingView

+ (id)loadingScreen
{
  if (loadingScreen_onceToken != -1)
  {
    +[_TVAppLoadingView loadingScreen];
  }

  v3 = loadingScreen_loadingScreen;

  return v3;
}

- (void)showOverKeyWindowWithSpinnerOnly:(BOOL)a3
{
  [(UIImageView *)self->_maskView setHidden:a3];
  if (!self->_overlayWindow)
  {
    v4 = [_TVLoadingOverlayWindow alloc];
    [(_TVAppLoadingView *)self bounds];
    v5 = [(_TVLoadingOverlayWindow *)v4 initWithFrame:?];
    overlayWindow = self->_overlayWindow;
    self->_overlayWindow = v5;

    [(UIWindow *)self->_overlayWindow setWindowLevel:*MEMORY[0x277D772A8]];
    v7 = self->_overlayWindow;
    v8 = objc_alloc_init(MEMORY[0x277D75D28]);
    [(UIWindow *)v7 setRootViewController:v8];

    v9 = [(UIWindow *)self->_overlayWindow layer];
    v10 = [v9 superlayer];
    [v10 setAllowsGroupOpacity:0];

    v11 = [(UIWindow *)self->_overlayWindow layer];
    [v11 setAllowsGroupOpacity:0];

    [(UIWindow *)self->_overlayWindow setBackgroundColor:0];
  }

  v12 = [MEMORY[0x277D75128] sharedApplication];
  v13 = [v12 keyWindow];

  v14 = [(_TVAppLoadingView *)self superview];
  v15 = [v14 isEqual:v13];

  if ((v15 & 1) == 0)
  {
    [(UIWindow *)self->_overlayWindow setHidden:0];
    v16 = [(UIWindow *)self->_overlayWindow rootViewController];
    [v16 setView:self];

    [(UIView *)self->_wallpaperView setAlpha:1.0];
    [(_TVAppLoadingView *)self setAlpha:1.0];
    [(UIImageView *)self->_maskView setAlpha:1.0];
    [(UIVisualEffectView *)self->_visualEffectView _setTintOpacity:1.0];
    [(UIActivityIndicatorView *)self->_spinner setAlpha:0.0];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __54___TVAppLoadingView_showOverKeyWindowWithSpinnerOnly___block_invoke;
    v26[3] = &unk_279D6EE78;
    v26[4] = self;
    v17 = MEMORY[0x26D6AFBB0](v26);
    v18 = v17;
    delay = self->_delay;
    if (delay == 0.0)
    {
      (*(v17 + 16))(v17, 0.2);
    }

    else
    {
      v20 = dispatch_time(0, (delay * 1000000000.0));
      v21 = MEMORY[0x277D85DD0];
      v22 = 3221225472;
      v23 = __54___TVAppLoadingView_showOverKeyWindowWithSpinnerOnly___block_invoke_3;
      v24 = &unk_279D6E6F8;
      v25 = v18;
      dispatch_after(v20, MEMORY[0x277D85CD0], &v21);
    }

    [(_TVAppLoadingView *)self performSelector:sel_timeout withObject:0 afterDelay:self->_timeout, v21, v22, v23, v24];
  }
}

- (void)timeout
{
  if ([(_TVAppLoadingView *)self isVisible])
  {
    v3 = TVMLKitLogObject;
    if (os_log_type_enabled(TVMLKitLogObject, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_26CD9A000, v3, OS_LOG_TYPE_DEFAULT, "_TVAppLoadingView timed out, hiding", v4, 2u);
    }

    [(_TVAppLoadingView *)self hide];
  }
}

- (void)hide
{
  if ([(_TVAppLoadingView *)self isVisible])
  {
    if (!self->_hiding)
    {
      [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel_timeout object:0];
      self->_hiding = 1;
      self->_delay = 0.0;
      v4[0] = MEMORY[0x277D85DD0];
      v4[1] = 3221225472;
      v4[2] = __25___TVAppLoadingView_hide__block_invoke;
      v4[3] = &unk_279D6E7F8;
      v4[4] = self;
      v3[0] = MEMORY[0x277D85DD0];
      v3[1] = 3221225472;
      v3[2] = __25___TVAppLoadingView_hide__block_invoke_2;
      v3[3] = &unk_279D6EBD0;
      v3[4] = self;
      [MEMORY[0x277D75D18] animateWithDuration:6 delay:v4 options:v3 animations:0.6 completion:0.0];
    }
  }
}

- (_TVAppLoadingView)initWithFrame:(CGRect)a3 templateImage:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = a4;
  v10 = [(_TVAppLoadingView *)self initWithFrame:x, y, width, height];
  v11 = v10;
  if (v10)
  {
    [(_TVAppLoadingView *)v10 bounds];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v20 = v11;
    v21 = [v20 layer];
    [v21 setAllowsGroupOpacity:0];
    [v21 setAllowsGroupBlending:0];
    if (v9)
    {
      v22 = MEMORY[0x277D75D00];
      v23 = [MEMORY[0x277D75210] effectWithStyle:1000];
      v24 = [v22 effectForBlurEffect:v23];

      v25 = [[_TVVisualEffectView alloc] initWithEffect:v24];
      v26 = v20[57];
      v20[57] = v25;

      [v20[57] setAutoresizingMask:18];
      [v20[57] setFrame:{v13, v15, v17, v19}];
      v27 = objc_alloc(MEMORY[0x277D755E8]);
      v28 = [v9 imageWithRenderingMode:2];
      v29 = [v27 initWithImage:v28];
      v30 = v20[56];
      v20[56] = v29;

      v31 = [v20[57] contentView];
      [v31 addSubview:v20[56]];

      v32 = [v20[56] layer];
      [v32 setAllowsGroupOpacity:0];

      [v20 addSubview:v20[57]];
      v33 = [v20[57] contentView];
    }

    else
    {
      v33 = v20;
    }

    v34 = [MEMORY[0x277D75348] grayColor];
    v35 = [MEMORY[0x277CCAB98] defaultCenter];
    v36 = *MEMORY[0x277D772D0];
    v37 = [*MEMORY[0x277D76620] keyWindow];
    [v35 addObserver:v20 selector:sel_didRotate_ name:v36 object:v37];

    [MEMORY[0x277D750E8] defaultSizeForStyle:100];
    UIRectCenteredIntegralRect();
    v39 = v38;
    v41 = v40;
    v43 = v42;
    v45 = v44;
    v46 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
    v47 = v20[58];
    v20[58] = v46;

    if (v34)
    {
      [v20[58] setColor:v34];
    }

    if (v9)
    {
      v48 = v41 + 50.0;
    }

    else
    {
      v48 = v41;
    }

    [v20[58] setFrame:{v39, v48, v43, v45}];
    [v33 addSubview:v20[58]];
    [v20[58] startAnimating];
  }

  return v11;
}

- (void)didRotate:(id)a3
{
  [(UIActivityIndicatorView *)self->_spinner frame];
  v4 = [*MEMORY[0x277D76620] keyWindow];
  [v4 frame];
  UIRectCenteredIntegralRect();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = [(UIImageView *)self->_maskView image];

  spinner = self->_spinner;
  if (v13)
  {
    v15 = v8 + 50.0;
  }

  else
  {
    v15 = v8;
  }

  [(UIActivityIndicatorView *)spinner setFrame:v6, v15, v10, v12];
}

@end