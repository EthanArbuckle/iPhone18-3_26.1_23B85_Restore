@interface SBSUIWallpaperPreviewView
- (SBSUIWallpaperPreviewView)initWithFrame:(CGRect)frame wallpaperView:(id)view disableParallax:(BOOL)parallax;
- (SBSUIWallpaperPreviewViewDelegate)delegate;
- (id)_makeButtonWithVisualEffectBlur;
- (void)_fadeOutInstructionsWithDelay:(double)delay animated:(BOOL)animated completion:(id)completion;
- (void)_layoutCancelButton;
- (void)_layoutDateView;
- (void)_layoutGradientView;
- (void)_layoutIrisButton;
- (void)_layoutIrisInstructionLabels;
- (void)_layoutParallaxButton;
- (void)_layoutSetButton;
- (void)_layoutStackedButtons;
- (void)_layoutWallpaperView;
- (void)_userDidTapOnCancelButton:(id)button;
- (void)_userDidTapOnIrisButton:(id)button;
- (void)_userDidTapOnParallaxButton:(id)button;
- (void)_userDidTapOnSetButton:(id)button;
- (void)dealloc;
- (void)displayInstructionsForEffect:(unint64_t)effect enabled:(BOOL)enabled animated:(BOOL)animated;
- (void)irisWallpaperPlayerPlaybackStateDidChange:(id)change;
- (void)layoutSubviews;
- (void)setCancelButton:(id)button;
- (void)setDateView:(id)view;
- (void)setIrisButton:(id)button;
- (void)setParallaxButton:(id)button;
- (void)setSetButton:(id)button;
- (void)setWallpaperView:(id)view;
- (void)updateForChangedSettings:(id)settings;
@end

@implementation SBSUIWallpaperPreviewView

- (SBSUIWallpaperPreviewView)initWithFrame:(CGRect)frame wallpaperView:(id)view disableParallax:(BOOL)parallax
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  viewCopy = view;
  v84.receiver = self;
  v84.super_class = SBSUIWallpaperPreviewView;
  height = [(SBSUIWallpaperPreviewView *)&v84 initWithFrame:x, y, width, height];
  if (height)
  {
    blackColor = [MEMORY[0x1E69DC888] blackColor];
    [(SBSUIWallpaperPreviewView *)height setBackgroundColor:blackColor];

    objc_storeStrong(&height->_wallpaperView, view);
    if (height->_wallpaperView)
    {
      [(SBSUIWallpaperPreviewView *)height addSubview:?];
    }

    supportsCropping = [viewCopy supportsCropping];
    v81 = viewCopy;
    if ([MEMORY[0x1E69DD250] _motionEffectsEnabled])
    {
      v15 = [objc_opt_class() allowsParallax] & !parallax;
    }

    else
    {
      v15 = 0;
    }

    height->_parallaxPossible = v15;
    v16 = height->_wallpaperView;
    if (objc_opt_respondsToSelector())
    {
      v17 = v16;
    }

    else
    {
      v17 = 0;
    }

    v18 = v17;

    height->_irisPossible = v18 != 0;
    v19 = *MEMORY[0x1E69DDD80];
    v20 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:?];
    v21 = [v20 fontDescriptorWithSymbolicTraits:0];

    v80 = v21;
    v79 = [MEMORY[0x1E69DB878] fontWithDescriptor:v21 size:0.0];
    v83 = [MEMORY[0x1E69DCAD8] configurationWithFont:?];
    [MEMORY[0x1E69D3FE8] dateLabelFontSize];
    v82 = [MEMORY[0x1E69DB878] systemFontOfSize:?];
    v22 = 0x1E696A000;
    if (height->_irisPossible)
    {
      _makeButtonWithVisualEffectBlur = [(SBSUIWallpaperPreviewView *)height _makeButtonWithVisualEffectBlur];
      v24 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"livephoto.slash" withConfiguration:v83];
      [_makeButtonWithVisualEffectBlur setImage:v24 forState:0];

      v25 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"livephoto" withConfiguration:v83];
      [_makeButtonWithVisualEffectBlur setImage:v25 forState:4];

      systemWhiteColor = [MEMORY[0x1E69DC888] systemWhiteColor];
      [_makeButtonWithVisualEffectBlur setTintColor:systemWhiteColor];

      [_makeButtonWithVisualEffectBlur addTarget:height action:sel__userDidTapOnIrisButton_ forControlEvents:64];
      [(SBSUIWallpaperPreviewView *)height setIrisButton:_makeButtonWithVisualEffectBlur];
      v27 = objc_alloc(MEMORY[0x1E69DD5B0]);
      v28 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      v29 = [v28 localizedStringForKey:@"IRIS_INSTRUCTIONS_LINE_1" value:&stru_1F1D7ED48 table:@"SpringBoardUIServices-OrbHW"];
      v30 = [v27 initWithSettings:0 strength:v29 string:v82 font:5.0];
      irisInstructionsLabel1 = height->_irisInstructionsLabel1;
      height->_irisInstructionsLabel1 = v30;

      [(_UILegibilityLabel *)height->_irisInstructionsLabel1 setAlpha:0.0];
      [(SBSUIWallpaperPreviewView *)height addSubview:height->_irisInstructionsLabel1];
      v32 = objc_alloc(MEMORY[0x1E69DD5B0]);
      v33 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      v34 = [v33 localizedStringForKey:@"IRIS_INSTRUCTIONS_LINE_2" value:&stru_1F1D7ED48 table:@"SpringBoardUIServices-OrbHW"];
      v22 = 0x1E696A000uLL;
      v35 = [v32 initWithSettings:0 strength:v34 string:v82 font:5.0];
      irisInstructionsLabel2 = height->_irisInstructionsLabel2;
      height->_irisInstructionsLabel2 = v35;

      [(_UILegibilityLabel *)height->_irisInstructionsLabel2 setAlpha:0.0];
      [(SBSUIWallpaperPreviewView *)height addSubview:height->_irisInstructionsLabel2];
      [(PBUIWallpaperView *)height->_wallpaperView setIrisDelegate:height];
    }

    if (height->_parallaxPossible)
    {
      _makeButtonWithVisualEffectBlur2 = [(SBSUIWallpaperPreviewView *)height _makeButtonWithVisualEffectBlur];
      v38 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"rectangle.and.arrow.up.right.and.arrow.down.left.slash" withConfiguration:v83];
      [_makeButtonWithVisualEffectBlur2 setImage:v38 forState:0];

      v39 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"rectangle.and.arrow.up.right.and.arrow.down.left" withConfiguration:v83];
      [_makeButtonWithVisualEffectBlur2 setImage:v39 forState:4];

      systemWhiteColor2 = [MEMORY[0x1E69DC888] systemWhiteColor];
      [_makeButtonWithVisualEffectBlur2 setTintColor:systemWhiteColor2];

      [_makeButtonWithVisualEffectBlur2 addTarget:height action:sel__userDidTapOnParallaxButton_ forControlEvents:64];
      [(SBSUIWallpaperPreviewView *)height setParallaxButton:_makeButtonWithVisualEffectBlur2];
    }

    v41 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:v19];
    v42 = [v41 fontDescriptorWithSymbolicTraits:2];

    _makeButtonWithVisualEffectBlur3 = [(SBSUIWallpaperPreviewView *)height _makeButtonWithVisualEffectBlur];
    layer = [_makeButtonWithVisualEffectBlur3 layer];
    v45 = *MEMORY[0x1E69796E8];
    [layer setCornerCurve:*MEMORY[0x1E69796E8]];

    titleLabel = [_makeButtonWithVisualEffectBlur3 titleLabel];
    v47 = [MEMORY[0x1E69DB878] fontWithDescriptor:v42 size:0.0];
    [titleLabel setFont:v47];

    v48 = [*(v22 + 2792) bundleForClass:objc_opt_class()];
    v49 = [v48 localizedStringForKey:@"WALLPAPER_PREVIEW_VIEW_CANCEL" value:&stru_1F1D7ED48 table:@"SpringBoardUIServices"];

    v75 = v49;
    [_makeButtonWithVisualEffectBlur3 setTitle:v49 forState:0];
    [_makeButtonWithVisualEffectBlur3 addTarget:height action:sel__userDidTapOnCancelButton_ forControlEvents:64];
    [(SBSUIWallpaperPreviewView *)height setCancelButton:_makeButtonWithVisualEffectBlur3];
    _makeButtonWithVisualEffectBlur4 = [(SBSUIWallpaperPreviewView *)height _makeButtonWithVisualEffectBlur];
    layer2 = [_makeButtonWithVisualEffectBlur4 layer];
    [layer2 setCornerCurve:v45];

    titleLabel2 = [_makeButtonWithVisualEffectBlur4 titleLabel];
    v76 = v42;
    v53 = [MEMORY[0x1E69DB878] fontWithDescriptor:v42 size:0.0];
    [titleLabel2 setFont:v53];

    v54 = [*(v22 + 2792) bundleForClass:objc_opt_class()];
    v55 = [v54 localizedStringForKey:@"WALLPAPER_PREVIEW_VIEW_SET" value:&stru_1F1D7ED48 table:@"SpringBoardUIServices"];

    [_makeButtonWithVisualEffectBlur4 setTitle:v55 forState:0];
    [_makeButtonWithVisualEffectBlur4 addTarget:height action:sel__userDidTapOnSetButton_ forControlEvents:64];
    [(SBSUIWallpaperPreviewView *)height setSetButton:_makeButtonWithVisualEffectBlur4];
    v56 = objc_alloc_init(_SBSUIWallpaperGradientView);
    gradientView = height->_gradientView;
    height->_gradientView = &v56->super;

    [(SBSUIWallpaperPreviewView *)height addSubview:height->_gradientView];
    preferredFontProvider = [MEMORY[0x1E698E7E8] preferredFontProvider];
    v59 = [preferredFontProvider preferredFontForTextStyle:v19 hiFontStyle:4];

    if (supportsCropping)
    {
      v78 = [MEMORY[0x1E69DCAD8] configurationWithFont:v59];
      v60 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"crop" withConfiguration:v78];
      v61 = [v60 imageWithRenderingMode:2];

      v62 = [_SBUIWallpaperInstructionView alloc];
      v63 = [*(v22 + 2792) bundleForClass:objc_opt_class()];
      v64 = [v63 localizedStringForKey:@"WALLPAPER_MOVE_ROTATE_SCALE" value:&stru_1F1D7ED48 table:@"SpringBoardUIServices"];
      v65 = [(_SBUIWallpaperInstructionView *)v62 initWithImage:v61 text:v64 font:v59];
      cropInstructionView = height->_cropInstructionView;
      height->_cropInstructionView = v65;

      v67 = height->_cropInstructionView;
      whiteColor = [MEMORY[0x1E69DC888] whiteColor];
      [(_SBUIWallpaperInstructionView *)v67 setTintColor:whiteColor];

      [(SBSUIWallpaperPreviewView *)height addSubview:height->_cropInstructionView];
    }

    v69 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    effectStateLabel = height->_effectStateLabel;
    height->_effectStateLabel = v69;

    v71 = height->_effectStateLabel;
    whiteColor2 = [MEMORY[0x1E69DC888] whiteColor];
    [(UILabel *)v71 setTextColor:whiteColor2];

    [(UILabel *)height->_effectStateLabel setFont:v59];
    [(UILabel *)height->_effectStateLabel setAlpha:0.0];
    [(UILabel *)height->_effectStateLabel setNumberOfLines:0];
    [(SBSUIWallpaperPreviewView *)height addSubview:height->_effectStateLabel];
    v73 = height;

    viewCopy = v81;
  }

  return height;
}

- (id)_makeButtonWithVisualEffectBlur
{
  v2 = objc_alloc_init(SBSUIWallpaperButton);

  return v2;
}

- (void)_userDidTapOnIrisButton:(id)button
{
  buttonCopy = button;
  delegate = [(SBSUIWallpaperPreviewView *)self delegate];
  [delegate userDidTapOnIrisButton:buttonCopy];
}

- (void)_userDidTapOnParallaxButton:(id)button
{
  buttonCopy = button;
  delegate = [(SBSUIWallpaperPreviewView *)self delegate];
  [delegate userDidTapOnParallaxButton:buttonCopy];
}

- (void)_userDidTapOnCancelButton:(id)button
{
  buttonCopy = button;
  delegate = [(SBSUIWallpaperPreviewView *)self delegate];
  [delegate userDidTapOnCancelButton:buttonCopy];
}

- (void)_userDidTapOnSetButton:(id)button
{
  buttonCopy = button;
  delegate = [(SBSUIWallpaperPreviewView *)self delegate];
  [delegate userDidTapOnSetButton:buttonCopy];
}

- (void)dealloc
{
  if (self->_irisPossible)
  {
    [(PBUIWallpaperView *)self->_wallpaperView setIrisDelegate:0];
  }

  v3.receiver = self;
  v3.super_class = SBSUIWallpaperPreviewView;
  [(SBSUIWallpaperPreviewView *)&v3 dealloc];
}

- (void)setDateView:(id)view
{
  viewCopy = view;
  dateView = self->_dateView;
  if (dateView)
  {
    [(SBFLockScreenDateView *)dateView removeFromSuperview];
  }

  objc_storeStrong(&self->_dateView, view);
  if (self->_dateView)
  {
    [(SBSUIWallpaperPreviewView *)self addSubview:?];
  }
}

- (void)setIrisButton:(id)button
{
  buttonCopy = button;
  irisButton = self->_irisButton;
  if (irisButton)
  {
    [(UIButton *)irisButton removeFromSuperview];
  }

  objc_storeStrong(&self->_irisButton, button);
  if (self->_irisButton)
  {
    [(SBSUIWallpaperPreviewView *)self addSubview:?];
  }
}

- (void)setParallaxButton:(id)button
{
  buttonCopy = button;
  parallaxButton = self->_parallaxButton;
  if (parallaxButton)
  {
    [(UIButton *)parallaxButton removeFromSuperview];
  }

  objc_storeStrong(&self->_parallaxButton, button);
  if (self->_parallaxButton)
  {
    [(SBSUIWallpaperPreviewView *)self addSubview:?];
  }
}

- (void)setCancelButton:(id)button
{
  buttonCopy = button;
  cancelButton = self->_cancelButton;
  if (cancelButton)
  {
    [(UIButton *)cancelButton removeFromSuperview];
  }

  objc_storeStrong(&self->_cancelButton, button);
  if (self->_cancelButton)
  {
    [(SBSUIWallpaperPreviewView *)self addSubview:?];
  }
}

- (void)setSetButton:(id)button
{
  buttonCopy = button;
  setButton = self->_setButton;
  if (setButton)
  {
    [(UIButton *)setButton removeFromSuperview];
  }

  objc_storeStrong(&self->_setButton, button);
  if (self->_setButton)
  {
    [(SBSUIWallpaperPreviewView *)self addSubview:?];
  }
}

- (void)setWallpaperView:(id)view
{
  viewCopy = view;
  wallpaperView = self->_wallpaperView;
  if (wallpaperView)
  {
    [(PBUIWallpaperView *)wallpaperView removeFromSuperview];
  }

  objc_storeStrong(&self->_wallpaperView, view);
  if (self->_wallpaperView)
  {
    [(SBSUIWallpaperPreviewView *)self addSubview:?];
    [(SBSUIWallpaperPreviewView *)self sendSubviewToBack:self->_wallpaperView];
    if (self->_irisPossible)
    {
      [(PBUIWallpaperView *)self->_wallpaperView setIrisDelegate:self];
    }
  }
}

- (void)updateForChangedSettings:(id)settings
{
  irisInstructionsLabel1 = self->_irisInstructionsLabel1;
  settingsCopy = settings;
  [(_UILegibilityLabel *)irisInstructionsLabel1 updateForChangedSettings:settingsCopy];
  [(_UILegibilityLabel *)self->_irisInstructionsLabel2 updateForChangedSettings:settingsCopy];
}

- (void)displayInstructionsForEffect:(unint64_t)effect enabled:(BOOL)enabled animated:(BOOL)animated
{
  animatedCopy = animated;
  objc_initWeak(&location, self);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __75__SBSUIWallpaperPreviewView_displayInstructionsForEffect_enabled_animated___block_invoke;
  v9[3] = &unk_1E789F810;
  v11 = animatedCopy;
  v10[1] = effect;
  v9[4] = self;
  enabledCopy = enabled;
  objc_copyWeak(v10, &location);
  [(SBSUIWallpaperPreviewView *)self _fadeOutInstructionsWithDelay:animatedCopy animated:v9 completion:0.0];
  objc_destroyWeak(v10);
  objc_destroyWeak(&location);
}

void __75__SBSUIWallpaperPreviewView_displayInstructionsForEffect_enabled_animated___block_invoke(uint64_t a1)
{
  v2 = 0.0;
  if (*(a1 + 56))
  {
    v3 = 0.25;
  }

  else
  {
    v3 = 0.0;
  }

  v4 = *(a1 + 48);
  if (v4 == 1)
  {
    if (*(*(a1 + 32) + 472) == 1)
    {
      if (*(a1 + 57))
      {
        v2 = 1.0;
      }

      else
      {
        v2 = 0.0;
      }

      v5 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      v6 = v5;
      v7 = *(a1 + 57);
      v8 = @"WALLPAPER_LIVE_PHOTO_OFF";
      v9 = @"WALLPAPER_LIVE_PHOTO_ON";
      goto LABEL_13;
    }

LABEL_17:
    v11 = 0;
    goto LABEL_18;
  }

  if (v4 || *(*(a1 + 32) + 473) != 1)
  {
    goto LABEL_17;
  }

  v5 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v6 = v5;
  v7 = *(a1 + 57);
  v8 = @"WALLPAPER_PERSPECTIVE_ZOOM_OFF";
  v9 = @"WALLPAPER_PERSPECTIVE_ZOOM_ON";
LABEL_13:
  if (v7)
  {
    v10 = v9;
  }

  else
  {
    v10 = v8;
  }

  v11 = [v5 localizedStringForKey:v10 value:&stru_1F1D7ED48 table:@"SpringBoardUIServices"];

LABEL_18:
  [*(*(a1 + 32) + 448) setText:v11];
  [*(a1 + 32) setNeedsLayout];
  v12 = objc_alloc(MEMORY[0x1E69DD278]);
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __75__SBSUIWallpaperPreviewView_displayInstructionsForEffect_enabled_animated___block_invoke_2;
  v23[3] = &unk_1E789DD70;
  v23[4] = *(a1 + 32);
  *&v23[5] = v2;
  v13 = [v12 initWithDuration:0 curve:v23 animations:v3];
  v14 = *(a1 + 32);
  v15 = *(v14 + 416);
  *(v14 + 416) = v13;

  v16 = *(*(a1 + 32) + 416);
  v17 = MEMORY[0x1E69E9820];
  v18 = 3221225472;
  v19 = __75__SBSUIWallpaperPreviewView_displayInstructionsForEffect_enabled_animated___block_invoke_3;
  v20 = &unk_1E789F7E8;
  objc_copyWeak(&v22, (a1 + 40));
  v21 = *(a1 + 32);
  [v16 addCompletion:&v17];
  [*(*(a1 + 32) + 416) startAnimation];
  objc_destroyWeak(&v22);
}

uint64_t __75__SBSUIWallpaperPreviewView_displayInstructionsForEffect_enabled_animated___block_invoke_2(uint64_t a1)
{
  [*(*(a1 + 32) + 432) setAlpha:*(a1 + 40)];
  [*(*(a1 + 32) + 440) setAlpha:*(a1 + 40)];
  v2 = *(*(a1 + 32) + 448);

  return [v2 setAlpha:1.0];
}

void __75__SBSUIWallpaperPreviewView_displayInstructionsForEffect_enabled_animated___block_invoke_3(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    v6[7] = v2;
    v6[8] = v3;
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __75__SBSUIWallpaperPreviewView_displayInstructionsForEffect_enabled_animated___block_invoke_4;
    v6[3] = &unk_1E789DC08;
    v6[4] = *(a1 + 32);
    [WeakRetained _fadeOutInstructionsWithDelay:1 animated:v6 completion:4.0];
  }
}

void __75__SBSUIWallpaperPreviewView_displayInstructionsForEffect_enabled_animated___block_invoke_4(uint64_t a1)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __75__SBSUIWallpaperPreviewView_displayInstructionsForEffect_enabled_animated___block_invoke_5;
  v5[3] = &unk_1E789DA38;
  v5[4] = *(a1 + 32);
  v2 = [MEMORY[0x1E69DD278] runningPropertyAnimatorWithDuration:0 delay:v5 options:0 animations:0.25 completion:0.0];
  v3 = *(a1 + 32);
  v4 = *(v3 + 408);
  *(v3 + 408) = v2;
}

- (void)_fadeOutInstructionsWithDelay:(double)delay animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  if (animatedCopy)
  {
    v9 = 0.25;
  }

  else
  {
    v9 = 0.0;
  }

  [(UIViewPropertyAnimator *)self->_cropInstructionsAnimator stopAnimation:1];
  [(UIViewPropertyAnimator *)self->_effectInstructionsAnimator stopAnimation:1];
  [(UIViewPropertyAnimator *)self->_fadeOutInstructionsAnimator stopAnimation:1];
  v10 = objc_alloc(MEMORY[0x1E69DD278]);
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __79__SBSUIWallpaperPreviewView__fadeOutInstructionsWithDelay_animated_completion___block_invoke;
  v20[3] = &unk_1E789DA38;
  v20[4] = self;
  v11 = [v10 initWithDuration:0 curve:v20 animations:v9];
  fadeOutInstructionsAnimator = self->_fadeOutInstructionsAnimator;
  self->_fadeOutInstructionsAnimator = v11;

  v13 = self->_fadeOutInstructionsAnimator;
  v15 = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = __79__SBSUIWallpaperPreviewView__fadeOutInstructionsWithDelay_animated_completion___block_invoke_2;
  v18 = &unk_1E789F838;
  v19 = completionCopy;
  v14 = completionCopy;
  [(UIViewPropertyAnimator *)v13 addCompletion:&v15];
  [(UIViewPropertyAnimator *)self->_fadeOutInstructionsAnimator startAnimationAfterDelay:delay, v15, v16, v17, v18];
}

uint64_t __79__SBSUIWallpaperPreviewView__fadeOutInstructionsWithDelay_animated_completion___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 448) setAlpha:0.0];
  [*(*(a1 + 32) + 432) setAlpha:0.0];
  [*(*(a1 + 32) + 440) setAlpha:0.0];
  v2 = *(*(a1 + 32) + 456);

  return [v2 setAlpha:0.0];
}

uint64_t __79__SBSUIWallpaperPreviewView__fadeOutInstructionsWithDelay_animated_completion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2 == 0);
  }

  return result;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = SBSUIWallpaperPreviewView;
  [(SBSUIWallpaperPreviewView *)&v3 layoutSubviews];
  [(SBSUIWallpaperPreviewView *)self _layoutGradientView];
  [(SBSUIWallpaperPreviewView *)self _layoutStackedButtons];
  [(SBSUIWallpaperPreviewView *)self _layoutIrisButton];
  [(SBSUIWallpaperPreviewView *)self _layoutParallaxButton];
  [(SBSUIWallpaperPreviewView *)self _layoutCancelButton];
  [(SBSUIWallpaperPreviewView *)self _layoutSetButton];
  [(SBSUIWallpaperPreviewView *)self _layoutDateView];
  [(SBSUIWallpaperPreviewView *)self _layoutWallpaperView];
  [(SBSUIWallpaperPreviewView *)self _layoutIrisInstructionLabels];
}

- (void)_layoutGradientView
{
  if (self->_gradientView)
  {
    [(SBSUIWallpaperPreviewView *)self addSubview:?];
    [(SBSUIWallpaperPreviewView *)self bounds];
    [(SBSUIWallpaperPreviewView *)self bounds];
    CGRectGetMaxY(v11);
    [(SBSUIWallpaperPreviewView *)self bounds];
    UIPointRoundToViewScale();
    v4 = v3;
    v6 = v5;
    UISizeRoundToViewScale();
    gradientView = self->_gradientView;

    [(UIView *)gradientView setFrame:v4, v6, v7, v8];
  }
}

- (void)_layoutWallpaperView
{
  wallpaperView = self->_wallpaperView;
  if (wallpaperView)
  {
    [(SBSUIWallpaperPreviewView *)self bounds];

    [(PBUIWallpaperView *)wallpaperView setFrame:?];
  }
}

- (void)_layoutDateView
{
  dateView = self->_dateView;
  if (dateView)
  {
    [(SBFLockScreenDateView *)dateView layoutIfNeeded];
    v4 = self->_dateView;
    [(SBSUIWallpaperPreviewView *)self bounds];
    [(SBFLockScreenDateView *)v4 setFrame:?];
    if ((_os_feature_enabled_impl() & 1) == 0)
    {
      v5 = MEMORY[0x1E69D3FB0];
      [(SBSUIWallpaperPreviewView *)self bounds];
      [v5 suggestedFrameForDateTimeViewInScreenCoordinates:0 centeredX:?];
      v6 = self->_dateView;

      [(SBFLockScreenDateView *)v6 setFrame:?];
    }
  }
}

- (void)_layoutStackedButtons
{
  p_cancelButton = &self->_cancelButton;
  titleLabel = [(UIButton *)self->_cancelButton titleLabel];
  font = [titleLabel font];
  [font pointSize];
  v7 = v6 * 1.8;

  v8 = fmax(v7, 34.0);
  readableContentGuide = [(SBSUIWallpaperPreviewView *)self readableContentGuide];
  [readableContentGuide layoutFrame];
  v113 = v10;

  readableContentGuide2 = [(SBSUIWallpaperPreviewView *)self readableContentGuide];
  [readableContentGuide2 layoutFrame];
  v117 = v12;

  titleLabel2 = [(UIButton *)*p_cancelButton titleLabel];
  [titleLabel2 intrinsicContentSize];
  v15 = v14;

  titleLabel3 = [(UIButton *)self->_setButton titleLabel];
  [titleLabel3 intrinsicContentSize];
  v18 = v17;

  if (v15 >= v18)
  {
    v19 = v15;
  }

  else
  {
    v19 = v18;
  }

  v20 = v19 + 32.0;
  v21 = v8 + v19;
  p_irisButton = &self->_irisButton;
  irisButton = self->_irisButton;
  p_parallaxButton = &self->_parallaxButton;
  parallaxButton = self->_parallaxButton;
  v26 = 0.0;
  if (parallaxButton)
  {
    v27 = v8;
  }

  else
  {
    v27 = 0.0;
  }

  if (parallaxButton)
  {
    v28 = 24.0;
  }

  else
  {
    v28 = 0.0;
  }

  if (irisButton)
  {
    v29 = v8;
  }

  else
  {
    v29 = 0.0;
  }

  if (irisButton)
  {
    v30 = 24.0;
  }

  else
  {
    v30 = v28;
  }

  if (irisButton)
  {
    v26 = v28;
  }

  v111 = v26;
  safeAreaLayoutGuide = [(SBSUIWallpaperPreviewView *)self safeAreaLayoutGuide];
  [safeAreaLayoutGuide layoutFrame];
  MaxY = CGRectGetMaxY(v120);

  [(SBSUIWallpaperPreviewView *)self bounds];
  v33 = CGRectGetMaxY(v121) + -35.0;
  if (MaxY < v33)
  {
    v33 = MaxY;
  }

  v34 = v33 - v8;
  v115 = v20 * 2.0 + 16.0;
  if (v115 <= v113)
  {
    v39 = v21;
    v40 = v30 + v27 + v111 + v29 + v30 + v20 * 2.0;
    if (v29 >= v27)
    {
      v41 = v29;
    }

    else
    {
      v41 = v27;
    }

    v42 = v40 <= v113 || v30 + v30 + v20 * 2.0 + v41 > v113;
    v43 = !v42 && *p_irisButton && *p_parallaxButton != 0;
    v44 = v20 * 2.0 + 16.0;
    if (v40 <= v113)
    {
      v44 = v30 + v27 + v111 + v29 + v30 + v20 * 2.0;
    }

    v45 = v113 - v44;
    v46 = fmax(v39 - v20, 0.0);
    if (v46 >= v45 * 0.5)
    {
      v47 = v45 * 0.5;
    }

    else
    {
      v47 = v46;
    }

    [(SBSUIWallpaperPreviewView *)self bounds];
    v42 = v40 > v113;
    v48 = v20 + v47;
    v49 = fmin(*&v117 + (v45 + (v20 + v47 - v20) * -2.0) * 0.5, 35.0);
    v50 = CGRectGetMaxX(v126) - v49 - (v20 + v47);
    if (v42)
    {
      v132.origin.x = v49;
      v132.origin.y = v34;
      v132.size.width = v48;
      v132.size.height = v8;
      CGRectGetMinY(v132);
      if (!v43)
      {
        if (*p_irisButton && *p_parallaxButton)
        {
          v133.origin.x = v49;
          v133.origin.y = v34;
          v133.size.width = v48;
          v133.size.height = v8;
          CGRectGetMidX(v133);
          v134.origin.x = v50;
          v134.origin.y = v34;
          v134.size.width = v48;
          v134.size.height = v8;
          CGRectGetMidX(v134);
        }

        else
        {
          readableContentGuide3 = [(SBSUIWallpaperPreviewView *)self readableContentGuide];
          [readableContentGuide3 layoutFrame];
          CGRectGetMidX(v135);
        }

        goto LABEL_54;
      }
    }

    else if (*p_irisButton && *p_parallaxButton)
    {
      v127.origin.x = v50;
      v127.origin.y = v34;
      v127.size.width = v48;
      v127.size.height = v8;
      MinX = CGRectGetMinX(v127);
      v128.origin.x = v49;
      v128.origin.y = v34;
      v128.size.width = v48;
      v128.size.height = v8;
      v52 = v49;
      v53 = (MinX - CGRectGetMaxX(v128) - v8 - v8) / 3.0;
      v129.origin.x = v52;
      v129.origin.y = v34;
      v129.size.width = v48;
      v129.size.height = v8;
      v130.origin.x = CGRectGetMaxX(v129) + v53;
      v130.origin.y = v34;
      v130.size.width = v8;
      v130.size.height = v8;
      CGRectGetMaxX(v130);
LABEL_54:
      v38 = v113;
      goto LABEL_55;
    }

    [(SBSUIWallpaperPreviewView *)self center];
    goto LABEL_54;
  }

  if (v113 >= v21)
  {
    v35 = v21;
  }

  else
  {
    v35 = v113;
  }

  v122.origin.x = 0.0;
  v122.origin.y = v34;
  v122.size.width = v35;
  v122.size.height = v8;
  v36 = CGRectGetMinY(v122) - v8 + -10.0;
  [(SBSUIWallpaperPreviewView *)self bounds];
  v37 = CGRectGetMidX(v123) + v35 * -0.5;
  v124.origin.x = v37;
  v124.origin.y = v36;
  v124.size.width = v35;
  v124.size.height = v8;
  CGRectGetMinY(v124);
  v38 = v113;
  if (*p_irisButton && *p_parallaxButton)
  {
    v125.origin.x = v37;
    v125.origin.y = v34;
    v125.size.width = v35;
    v125.size.height = v8;
    CGRectGetMaxX(v125);
  }

  else
  {
    v131.origin.x = v37;
    v131.origin.y = v34;
    v131.size.width = v35;
    v131.size.height = v8;
    CGRectGetMidX(v131);
  }

LABEL_55:
  v55 = [(SBSUIWallpaperPreviewView *)self effectiveUserInterfaceLayoutDirection]== 0;
  if (v115 > v38)
  {
    v55 = 1;
  }

  if (v55)
  {
    p_setButton = p_cancelButton;
  }

  else
  {
    p_setButton = &self->_setButton;
  }

  v118 = *p_setButton;
  v57 = [(SBSUIWallpaperPreviewView *)self effectiveUserInterfaceLayoutDirection]== 0;
  if (v115 > v38)
  {
    v57 = 1;
  }

  if (v57)
  {
    v58 = &self->_setButton;
  }

  else
  {
    v58 = p_cancelButton;
  }

  v59 = *v58;
  if ([(SBSUIWallpaperPreviewView *)self effectiveUserInterfaceLayoutDirection])
  {
    v60 = &self->_parallaxButton;
  }

  else
  {
    v60 = &self->_irisButton;
  }

  v61 = *v60;
  if ([(SBSUIWallpaperPreviewView *)self effectiveUserInterfaceLayoutDirection])
  {
    v62 = &self->_irisButton;
  }

  else
  {
    v62 = &self->_parallaxButton;
  }

  v63 = *v62;
  UIPointRoundToViewScale();
  v65 = v64;
  v67 = v66;
  UISizeRoundToViewScale();
  v69 = v68;
  v71 = v70;
  UIPointRoundToViewScale();
  v73 = v72;
  v75 = v74;
  UISizeRoundToViewScale();
  v106 = v76;
  rect_8 = v77;
  UIPointRoundToViewScale();
  rect = v78;
  v116 = v79;
  UISizeRoundToViewScale();
  v112 = v81;
  v114 = v80;
  UIPointRoundToViewScale();
  rect_16 = v83;
  rect_24 = v82;
  UISizeRoundToViewScale();
  v85 = v84;
  v104 = v86;
  v105 = v84;
  [(UIButton *)v118 setFrame:v65, v67, v69, v71];
  [(UIButton *)v59 setFrame:v73, v75, v106, rect_8];
  [(UIButton *)v61 setFrame:rect, v116, v114, v112];
  [(UIButton *)v63 setFrame:rect_24, rect_16, v85, v104];
  v136.origin.x = v65;
  v136.origin.y = v67;
  v136.size.width = v69;
  v136.size.height = v71;
  MinY = CGRectGetMinY(v136);
  v137.origin.x = v73;
  v137.origin.y = v75;
  v137.size.width = v106;
  v137.size.height = rect_8;
  v88 = CGRectGetMinY(v137);
  if (MinY >= v88)
  {
    MinY = v88;
  }

  v138.origin.x = rect;
  v138.size.width = v114;
  v138.origin.y = v116;
  v138.size.height = v112;
  v89 = CGRectGetMinY(v138);
  if (MinY >= v89)
  {
    MinY = v89;
  }

  v139.origin.y = rect_16;
  v139.origin.x = rect_24;
  v139.size.width = v105;
  v139.size.height = v104;
  v90 = CGRectGetMinY(v139);
  if (MinY >= v90)
  {
    v91 = v90;
  }

  else
  {
    v91 = MinY;
  }

  cropInstructionView = self->_cropInstructionView;
  [(SBSUIWallpaperPreviewView *)self size];
  [(_SBUIWallpaperInstructionView *)cropInstructionView sizeThatFits:?];
  v94 = v93;
  BSRectWithSize();
  [(SBSUIWallpaperPreviewView *)self bounds];
  UIRectCenteredXInRectScale();
  [(_SBUIWallpaperInstructionView *)self->_cropInstructionView setFrame:v95, SBUIFloatFloorForScale(v91 - v94 + -20.0, 0.0), v96, v97, 0];
  [(SBSUIWallpaperPreviewView *)self bringSubviewToFront:self->_cropInstructionView];
  effectStateLabel = self->_effectStateLabel;
  [(SBSUIWallpaperPreviewView *)self size];
  [(UILabel *)effectStateLabel sizeThatFits:?];
  v100 = v99;
  BSRectWithSize();
  [(SBSUIWallpaperPreviewView *)self bounds];
  UIRectCenteredXInRectScale();
  [(UILabel *)self->_effectStateLabel setFrame:v101, SBUIFloatFloorForScale(v91 - v100 + -20.0, 0.0), v102, v103, 0];
  [(SBSUIWallpaperPreviewView *)self bringSubviewToFront:self->_effectStateLabel];
}

- (void)_layoutIrisInstructionLabels
{
  irisInstructionsLabel2 = self->_irisInstructionsLabel2;
  [(SBSUIWallpaperPreviewView *)self size];
  [(_UILegibilityLabel *)irisInstructionsLabel2 sizeThatFits:?];
  BSRectWithSize();
  [(SBSUIWallpaperPreviewView *)self bounds];
  UIRectCenteredIntegralRect();
  [(_UILegibilityLabel *)self->_irisInstructionsLabel2 setFrame:?];
  irisInstructionsLabel1 = self->_irisInstructionsLabel1;
  [(SBSUIWallpaperPreviewView *)self size];
  [(_UILegibilityLabel *)irisInstructionsLabel1 sizeThatFits:?];
  BSRectWithSize();
  [(SBSUIWallpaperPreviewView *)self bounds];
  UIRectCenteredIntegralRect();
  v5 = self->_irisInstructionsLabel1;

  [(_UILegibilityLabel *)v5 setFrame:?];
}

- (void)_layoutIrisButton
{
  irisButton = self->_irisButton;
  if (irisButton)
  {
    layer = [(UIButton *)irisButton layer];
    [(UIButton *)self->_irisButton frame];
    [layer setCornerRadius:CGRectGetHeight(v7) * 0.5];

    v5 = self->_irisButton;

    [(SBSUIWallpaperPreviewView *)self bringSubviewToFront:v5];
  }
}

- (void)_layoutParallaxButton
{
  parallaxButton = self->_parallaxButton;
  if (parallaxButton)
  {
    layer = [(UIButton *)parallaxButton layer];
    [(UIButton *)self->_parallaxButton frame];
    [layer setCornerRadius:CGRectGetHeight(v7) * 0.5];

    v5 = self->_parallaxButton;

    [(SBSUIWallpaperPreviewView *)self bringSubviewToFront:v5];
  }
}

- (void)_layoutCancelButton
{
  cancelButton = self->_cancelButton;
  if (cancelButton)
  {
    layer = [(UIButton *)cancelButton layer];
    [(UIButton *)self->_cancelButton frame];
    [layer setCornerRadius:CGRectGetHeight(v7) * 0.5];

    v5 = self->_cancelButton;

    [(SBSUIWallpaperPreviewView *)self bringSubviewToFront:v5];
  }
}

- (void)_layoutSetButton
{
  setButton = self->_setButton;
  if (setButton)
  {
    layer = [(UIButton *)setButton layer];
    [(UIButton *)self->_setButton frame];
    [layer setCornerRadius:CGRectGetHeight(v7) * 0.5];

    v5 = self->_setButton;

    [(SBSUIWallpaperPreviewView *)self bringSubviewToFront:v5];
  }
}

- (void)irisWallpaperPlayerPlaybackStateDidChange:(id)change
{
  if ([change irisPlaybackState] == 4)
  {

    [(SBSUIWallpaperPreviewView *)self _fadeOutInstructionsWithDelay:1 animated:0 completion:0.0];
  }
}

- (SBSUIWallpaperPreviewViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end