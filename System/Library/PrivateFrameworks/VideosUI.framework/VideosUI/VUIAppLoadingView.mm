@interface VUIAppLoadingView
+ (id)loadingScreen;
- (VUIAppLoadingView)initWithFrame:(CGRect)frame templateImage:(id)image;
- (void)didRotate:(id)rotate;
- (void)hide;
- (void)hideImmediately;
- (void)showOverKeyWindowWithSpinnerOnly:(BOOL)only;
- (void)timeout;
@end

@implementation VUIAppLoadingView

+ (id)loadingScreen
{
  if (loadingScreen_onceToken != -1)
  {
    +[VUIAppLoadingView loadingScreen];
  }

  v3 = loadingScreen_loadingScreen;

  return v3;
}

void __34__VUIAppLoadingView_loadingScreen__block_invoke()
{
  v11 = [MEMORY[0x1E696AAE8] mainBundle];
  v0 = MEMORY[0x1E69DCAB8];
  v1 = [MEMORY[0x1E69DD1B8] traitCollectionWithUserInterfaceIdiom:2];
  v2 = [v0 imageNamed:@"LaunchImage" inBundle:v11 compatibleWithTraitCollection:v1];

  v3 = [v11 objectForInfoDictionaryKey:@"UITemplateLaunchImage"];
  v4 = [v3 BOOLValue];

  v5 = [VUIAppLoadingView alloc];
  v6 = [MEMORY[0x1E69DD2E8] vui_keyWindow];
  [v6 bounds];
  if (v4)
  {
    v7 = v2;
  }

  else
  {
    v7 = 0;
  }

  v8 = [(VUIAppLoadingView *)v5 initWithFrame:v7 templateImage:?];
  v9 = loadingScreen_loadingScreen;
  loadingScreen_loadingScreen = v8;

  v10 = loadingScreen_loadingScreen;
  *(loadingScreen_loadingScreen + 432) = 0x4024000000000000;
  *(v10 + 440) = 0;
}

- (void)showOverKeyWindowWithSpinnerOnly:(BOOL)only
{
  [(UIImageView *)self->_maskView setHidden:only];
  if (!self->_overlayWindow)
  {
    v4 = [_VUILoadingOverlayWindow alloc];
    [(VUIAppLoadingView *)self bounds];
    v5 = [(_VUILoadingOverlayWindow *)v4 initWithFrame:?];
    overlayWindow = self->_overlayWindow;
    self->_overlayWindow = v5;

    [(UIWindow *)self->_overlayWindow setWindowLevel:*MEMORY[0x1E69DE7D8]];
    v7 = self->_overlayWindow;
    v8 = objc_alloc_init(MEMORY[0x1E69DD258]);
    [(UIWindow *)v7 setRootViewController:v8];

    layer = [(UIWindow *)self->_overlayWindow layer];
    superlayer = [layer superlayer];
    [superlayer setAllowsGroupOpacity:0];

    layer2 = [(UIWindow *)self->_overlayWindow layer];
    [layer2 setAllowsGroupOpacity:0];

    [(UIWindow *)self->_overlayWindow setBackgroundColor:0];
  }

  vui_keyWindow = [MEMORY[0x1E69DD2E8] vui_keyWindow];
  superview = [(VUIAppLoadingView *)self superview];
  v14 = [superview isEqual:vui_keyWindow];

  if ((v14 & 1) == 0)
  {
    [(UIWindow *)self->_overlayWindow setVuiHidden:0];
    rootViewController = [(UIWindow *)self->_overlayWindow rootViewController];
    [rootViewController setView:self];

    [(UIView *)self->_wallpaperView setVuiAlpha:1.0];
    [(VUIAppLoadingView *)self setVuiAlpha:1.0];
    [(UIImageView *)self->_maskView setVuiAlpha:1.0];
    [(UIVisualEffectView *)self->_visualEffectView _setTintOpacity:1.0];
    [(VUIActivityIndicatorView *)self->_spinner setVuiAlpha:0.0];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __54__VUIAppLoadingView_showOverKeyWindowWithSpinnerOnly___block_invoke;
    aBlock[3] = &unk_1E87317F8;
    aBlock[4] = self;
    v16 = _Block_copy(aBlock);
    v17 = v16;
    delay = self->_delay;
    if (delay <= 0.0)
    {
      (*(v16 + 2))(v16, 0.2);
    }

    else
    {
      v19 = dispatch_time(0, (delay * 1000000000.0));
      v20 = MEMORY[0x1E69E9820];
      v21 = 3221225472;
      v22 = __54__VUIAppLoadingView_showOverKeyWindowWithSpinnerOnly___block_invoke_3;
      v23 = &unk_1E872D7E0;
      v24 = v17;
      dispatch_after(v19, MEMORY[0x1E69E96A0], &v20);
    }

    [(VUIAppLoadingView *)self performSelector:sel_timeout withObject:0 afterDelay:self->_timeout, v20, v21, v22, v23];
  }
}

uint64_t __54__VUIAppLoadingView_showOverKeyWindowWithSpinnerOnly___block_invoke(uint64_t a1, double a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __54__VUIAppLoadingView_showOverKeyWindowWithSpinnerOnly___block_invoke_2;
  v3[3] = &unk_1E872D768;
  v3[4] = *(a1 + 32);
  return [MEMORY[0x1E69DD250] animateWithDuration:6 delay:v3 options:0 animations:0.6 completion:a2];
}

uint64_t __54__VUIAppLoadingView_showOverKeyWindowWithSpinnerOnly___block_invoke_2(uint64_t a1)
{
  [*(*(a1 + 32) + 464) startAnimating];
  v2 = *(*(a1 + 32) + 464);

  return [v2 setAlpha:1.0];
}

- (void)timeout
{
  if ([(VUIAppLoadingView *)self isVisible])
  {
    v3 = VUIDefaultLogObject();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&dword_1E323F000, v3, OS_LOG_TYPE_INFO, "VUIAppLoadingView - VUIAppLoadingView timed out, hiding", v4, 2u);
    }

    [(VUIAppLoadingView *)self hide];
  }
}

- (void)hideImmediately
{
  if ([(VUIAppLoadingView *)self isVisible]&& !self->_hiding)
  {
    [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel_timeout object:0];
    self->_hiding = 1;
    self->_delay = 0.0;
    [(VUIAppLoadingView *)self setAlpha:0.0];
    [(VUIActivityIndicatorView *)self->_spinner stopAnimating];
    self->_hiding = 0;
    overlayWindow = self->_overlayWindow;

    [(UIWindow *)overlayWindow setHidden:1];
  }
}

- (void)hide
{
  if ([(VUIAppLoadingView *)self isVisible])
  {
    if (!self->_hiding)
    {
      [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel_timeout object:0];
      self->_hiding = 1;
      self->_delay = 0.0;
      v4[0] = MEMORY[0x1E69E9820];
      v4[1] = 3221225472;
      v4[2] = __25__VUIAppLoadingView_hide__block_invoke;
      v4[3] = &unk_1E872D768;
      v4[4] = self;
      v3[0] = MEMORY[0x1E69E9820];
      v3[1] = 3221225472;
      v3[2] = __25__VUIAppLoadingView_hide__block_invoke_2;
      v3[3] = &unk_1E872F758;
      v3[4] = self;
      [MEMORY[0x1E69DD250] animateWithDuration:6 delay:v4 options:v3 animations:0.6 completion:0.0];
    }
  }
}

uint64_t __25__VUIAppLoadingView_hide__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[57])
  {
    [v2[57] _setTintOpacity:0.0];
    [*(*(a1 + 32) + 448) setAlpha:0.0];
    [*(*(a1 + 32) + 464) setAlpha:0.0];
    v2 = *(*(a1 + 32) + 408);
  }

  return [v2 setAlpha:0.0];
}

uint64_t __25__VUIAppLoadingView_hide__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setAlpha:0.0];
  [*(*(a1 + 32) + 464) stopAnimating];
  *(*(a1 + 32) + 424) = 0;
  v2 = *(*(a1 + 32) + 416);

  return [v2 setHidden:1];
}

- (VUIAppLoadingView)initWithFrame:(CGRect)frame templateImage:(id)image
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  imageCopy = image;
  height = [(VUIAppLoadingView *)self initWithFrame:x, y, width, height];
  v11 = height;
  if (height)
  {
    [(VUIAppLoadingView *)height bounds];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v20 = v11;
    layer = [v20 layer];
    [layer setAllowsGroupOpacity:0];
    [layer setAllowsGroupBlending:0];
    contentView2 = v20;
    if (imageCopy)
    {
      v23 = MEMORY[0x1E69DD248];
      v24 = [MEMORY[0x1E69DC730] effectWithStyle:1000];
      v25 = [v23 effectForBlurEffect:v24];

      v26 = [objc_alloc(MEMORY[0x1E69DD298]) initWithEffect:v25];
      v27 = v20[57];
      v20[57] = v26;

      [v20[57] setAutoresizingMask:18];
      [v20[57] setFrame:{v13, v15, v17, v19}];
      v28 = MEMORY[0x1E69DCAE0];
      vuiTemplateImage = [imageCopy vuiTemplateImage];
      v30 = [v28 vui_imageViewWithImage:vuiTemplateImage];
      v31 = v20[56];
      v20[56] = v30;

      contentView = [v20[57] contentView];
      [contentView addSubview:v20[56]];

      layer2 = [v20[56] layer];
      [layer2 setAllowsGroupOpacity:0];

      v34 = v20[56];
      [v20[57] bounds];
      [v34 setFrame:?];
      [v20 addSubview:v20[57]];
      contentView2 = [v20[57] contentView];
    }

    grayColor = [MEMORY[0x1E69DC888] grayColor];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    v37 = *MEMORY[0x1E69DE820];
    keyWindow = [*MEMORY[0x1E69DDA98] keyWindow];
    [defaultCenter addObserver:v20 selector:sel_didRotate_ name:v37 object:keyWindow];

    v39 = [VUIActivityIndicatorView vui_activityIndicatorViewWithActivityIndicatorStyle:0];
    v40 = v20[58];
    v20[58] = v39;

    if (grayColor)
    {
      [v20[58] setColor:grayColor];
    }

    [v20[58] sizeToFit];
    [v20[58] bounds];
    v42 = round(v13 + (v17 - v41) * 0.5);
    v44 = round(v15 + (v19 - v43) * 0.5);
    if (imageCopy)
    {
      v44 = v44 + 50.0;
    }

    [v20[58] setFrame:{v42, v44}];
    [contentView2 addSubview:v20[58]];
    [v20[58] vui_startAnimating];
  }

  return v11;
}

- (void)didRotate:(id)rotate
{
  [(VUIActivityIndicatorView *)self->_spinner frame];
  v5 = v4;
  v7 = v6;
  vui_keyWindow = [MEMORY[0x1E69DD2E8] vui_keyWindow];
  [vui_keyWindow frame];
  v11 = round(v10 + (v9 - v5) * 0.5);
  v14 = round(v13 + (v12 - v7) * 0.5);

  image = [(UIImageView *)self->_maskView image];

  spinner = self->_spinner;
  if (image)
  {
    v17 = v14 + 50.0;
  }

  else
  {
    v17 = v14;
  }

  [(VUIActivityIndicatorView *)spinner setFrame:v11, v17, v5, v7];
}

@end