@interface SBUIPowerDownView
- (SBUIPowerDownView)initWithFrame:(CGRect)frame vibrantSettings:(id)settings;
- (SBUIPowerDownViewDelegate)delegate;
- (id)_createActionSlider;
- (id)createDimmingBackdropViewWithFrame:(CGRect)frame;
- (void)_animatePowerDown;
- (void)_cancelAutoDismissTimer;
- (void)_createFindMyUI;
- (void)_notifyDelegateCancelled;
- (void)_notifyDelegatePowerDown;
- (void)_powerDownSliderDidUpdateSlideWithValue:(double)value;
- (void)_prepareViewsForAlert;
- (void)_readIODeviceSupportsFindMy;
- (void)_readShouldPowerDownViewShowFindMyAlert;
- (void)_resetAutoDismissTimer;
- (void)_updateSliderExclusionPath;
- (void)_willAnimateIn;
- (void)_willAnimateOut;
- (void)dealloc;
- (void)hideAnimated:(BOOL)animated completion:(id)completion;
- (void)layoutSubviews;
- (void)showAnimated:(BOOL)animated completion:(id)completion;
@end

@implementation SBUIPowerDownView

- (SBUIPowerDownView)initWithFrame:(CGRect)frame vibrantSettings:(id)settings
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  settingsCopy = settings;
  v58.receiver = self;
  v58.super_class = SBUIPowerDownView;
  height = [(SBUIPowerDownView *)&v58 initWithFrame:x, y, width, height];
  if (height)
  {
    v54 = objc_alloc_init(MEMORY[0x1E69C8750]);
    [(SBUIPowerDownView *)height setBeaconManager:v54];
    [(SBUIPowerDownView *)height _readIODeviceSupportsFindMy];
    [(SBUIPowerDownView *)height _readShouldPowerDownViewShowFindMyAlert];
    [(SBUIPowerDownView *)height setAutoresizingMask:18];
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(SBUIPowerDownView *)height setBackgroundColor:clearColor];

    [(SBUIPowerDownView *)height bounds];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
    [(SBUIPowerDownView *)height setAlpha:0.0];
    v21 = [(SBUIPowerDownView *)height createDimmingBackdropViewWithFrame:v14, v16, v18, v20];
    backdropView = height->_backdropView;
    height->_backdropView = v21;

    [(SBUIPowerDownView *)height addSubview:height->_backdropView];
    v56 = 0u;
    v57 = 0u;
    v55 = 0u;
    SBGetPowerDownViewMetrics(&v55, [(SBUIPowerDownView *)height _isLandscapeAspectRatio]);
    objc_storeStrong(&height->_vibrantSettings, settings);
    _createActionSlider = [(SBUIPowerDownView *)height _createActionSlider];
    actionSlider = height->_actionSlider;
    height->_actionSlider = _createActionSlider;

    [(_UIActionSlider *)height->_actionSlider setAlpha:0.0];
    [(SBUIPowerDownView *)height addSubview:height->_actionSlider];
    v25 = [objc_alloc(MEMORY[0x1E69DC738]) initWithFrame:{0.0, 0.0, *(&v55 + 1), *(&v55 + 1)}];
    cancelButton = height->_cancelButton;
    height->_cancelButton = v25;

    v27 = height->_cancelButton;
    v28 = MEMORY[0x1E69DCAB8];
    v29 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
    traitCollection = [mainScreen traitCollection];
    v32 = [v28 imageNamed:@"PowerDownCancel" inBundle:v29 compatibleWithTraitCollection:traitCollection];
    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
    v34 = [v32 _flatImageWithColor:whiteColor];
    [(UIButton *)v27 setImage:v34 forState:0];

    [(UIButton *)height->_cancelButton addTarget:height action:sel__cancelButtonTapped forControlEvents:64];
    [(UIButton *)height->_cancelButton setAlpha:0.0];
    [(SBUIPowerDownView *)height addSubview:height->_cancelButton];
    v35 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    cancelLabel = height->_cancelLabel;
    height->_cancelLabel = v35;

    v37 = height->_cancelLabel;
    clearColor2 = [MEMORY[0x1E69DC888] clearColor];
    [(UILabel *)v37 setBackgroundColor:clearColor2];

    v39 = height->_cancelLabel;
    whiteColor2 = [MEMORY[0x1E69DC888] whiteColor];
    [(UILabel *)v39 setTextColor:whiteColor2];

    v41 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v42 = [v41 localizedStringForKey:@"POWER_DOWN_CANCEL" value:&stru_1F1D7ED48 table:@"SpringBoardUIServices"];

    [(UILabel *)height->_cancelLabel setText:v42];
    v43 = height->_cancelLabel;
    v44 = [MEMORY[0x1E69DB878] systemFontOfSize:*(&v56 + 1)];
    [(UILabel *)v43 setFont:v44];

    [(UILabel *)height->_cancelLabel setAlpha:0.0];
    [(SBUIPowerDownView *)height addSubview:height->_cancelLabel];
    [(UIButton *)height->_cancelButton setAccessibilityLabel:v42];
    [(UILabel *)height->_cancelLabel setAccessibilityElementsHidden:1];
    v45 = [[SBUIShapeView alloc] initWithFrame:v14, v16, v18, v20];
    darkeningUnderlayView = height->_darkeningUnderlayView;
    height->_darkeningUnderlayView = v45;

    v47 = height->_darkeningUnderlayView;
    blackColor = [MEMORY[0x1E69DC888] blackColor];
    [(SBUIShapeView *)v47 setFillColor:blackColor];

    [(SBUIShapeView *)height->_darkeningUnderlayView setFillRule:1];
    [(SBUIShapeView *)height->_darkeningUnderlayView setAlpha:0.0];
    [(SBUIPowerDownView *)height addSubview:height->_darkeningUnderlayView];
    v49 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v14, v16, v18, v20}];
    darkeningOverlayView = height->_darkeningOverlayView;
    height->_darkeningOverlayView = v49;

    v51 = height->_darkeningOverlayView;
    blackColor2 = [MEMORY[0x1E69DC888] blackColor];
    [(UIView *)v51 setBackgroundColor:blackColor2];

    [(UIView *)height->_darkeningOverlayView setAlpha:0.0];
    [(SBUIPowerDownView *)height addSubview:height->_darkeningOverlayView];
  }

  return height;
}

- (void)dealloc
{
  [(SBUIPowerDownView *)self _cancelAutoDismissTimer];
  objc_storeWeak(&self->_delegate, 0);
  v3.receiver = self;
  v3.super_class = SBUIPowerDownView;
  [(SBUIPowerDownView *)&v3 dealloc];
}

- (void)_createFindMyUI
{
  v53[1] = *MEMORY[0x1E69E9840];
  v51 = 0u;
  memset(v50, 0, sizeof(v50));
  SBGetPowerDownViewMetrics(v50, [(SBUIPowerDownView *)self _isLandscapeAspectRatio]);
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v46 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:4 weight:*(&v51 + 1)];
  v48 = [MEMORY[0x1E69DCAB8] _systemImageNamed:@"location.fill.radiowaves.left.and.right" withConfiguration:v46];
  v47 = [MEMORY[0x1E69DB7F0] textAttachmentWithImage:v48];
  v42 = [MEMORY[0x1E696AAB0] attributedStringWithAttachment:v47];
  v4 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"chevron.right" withConfiguration:v46];
  imageFlippedForRightToLeftLayoutDirection = [v4 imageFlippedForRightToLeftLayoutDirection];

  v44 = [MEMORY[0x1E69DB7F0] textAttachmentWithImage:imageFlippedForRightToLeftLayoutDirection];
  v5 = MEMORY[0x1E696AAB0];
  v52 = *MEMORY[0x1E69DB650];
  v6 = v52;
  secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
  v53[0] = secondaryLabelColor;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v53 forKeys:&v52 count:1];
  v40 = [v5 attributedStringWithAttachment:v44 attributes:v8];

  v9 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v10 = [MEMORY[0x1E69DC938] modelSpecificLocalizedStringKeyForKey:@"POWER_DOWN_FIND_MY"];
  v43 = [v9 localizedStringForKey:v10 value:&stru_1F1D7ED48 table:@"SpringBoardUIServices"];

  v41 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v43];
  v11 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@" "];
  v12 = objc_alloc_init(MEMORY[0x1E696AD40]);
  [v12 appendAttributedString:v42];
  [v12 appendAttributedString:v11];
  [v12 appendAttributedString:v41];
  [v12 appendAttributedString:v11];
  v13 = [v12 length];
  [v12 appendAttributedString:v40];
  v14 = [v12 length];
  v39 = [MEMORY[0x1E69DB878] systemFontOfSize:*(&v51 + 1)];
  [v12 addAttribute:*MEMORY[0x1E69DB648] value:v39 range:{0, v14}];
  v15 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:0.55];
  [v12 addAttribute:v6 value:v15 range:{0, v13}];

  v16 = objc_alloc(MEMORY[0x1E69DC738]);
  v17 = [v16 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  findMyButton = self->_findMyButton;
  self->_findMyButton = v17;
  v19 = v17;

  [(UIButton *)v19 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIButton *)v19 setAlpha:0.0];
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [(UIButton *)v19 setBackgroundColor:clearColor];

  [(UIButton *)v19 setAttributedTitle:v12 forState:0];
  titleLabel = [(UIButton *)v19 titleLabel];
  [titleLabel _setDrawsAsBackdropOverlayWithBlendMode:2];

  titleLabel2 = [(UIButton *)v19 titleLabel];
  [titleLabel2 setNumberOfLines:0];

  titleLabel3 = [(UIButton *)v19 titleLabel];
  [titleLabel3 setTextAlignment:1];

  titleLabel4 = [(UIButton *)v19 titleLabel];
  [titleLabel4 setLineBreakMode:0];

  [(UIButton *)v19 addTarget:self action:sel__didTapFindMy forControlEvents:64];
  [(SBUIPowerDownView *)self insertSubview:v19 aboveSubview:self->_cancelLabel];
  centerXAnchor = [(UIButton *)v19 centerXAnchor];
  centerXAnchor2 = [(SBUIPowerDownView *)self centerXAnchor];
  v27 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  [v3 addObject:v27];

  leadingAnchor = [(UIButton *)v19 leadingAnchor];
  leadingAnchor2 = [(SBUIPowerDownView *)self leadingAnchor];
  v30 = [leadingAnchor constraintGreaterThanOrEqualToAnchor:leadingAnchor2 constant:20.0];

  trailingAnchor = [(UIButton *)v19 trailingAnchor];
  trailingAnchor2 = [(SBUIPowerDownView *)self trailingAnchor];
  v33 = [trailingAnchor constraintLessThanOrEqualToAnchor:trailingAnchor2 constant:20.0];

  [v3 addObject:v30];
  [v3 addObject:v33];
  topAnchor = [(UIButton *)v19 topAnchor];
  bottomAnchor = [(_UIActionSlider *)self->_actionSlider bottomAnchor];
  v36 = [topAnchor constraintEqualToAnchor:bottomAnchor constant:4.0];
  [v3 addObject:v36];

  heightAnchor = [(UIButton *)v19 heightAnchor];
  v38 = [heightAnchor constraintGreaterThanOrEqualToConstant:40.0];
  [v3 addObject:v38];

  [MEMORY[0x1E696ACD8] activateConstraints:v3];
  v49[0] = MEMORY[0x1E69E9820];
  v49[1] = 3221225472;
  v49[2] = __36__SBUIPowerDownView__createFindMyUI__block_invoke;
  v49[3] = &unk_1E789DA38;
  v49[4] = self;
  [MEMORY[0x1E69DD250] _animateUsingDefaultTimingWithOptions:0 animations:v49 completion:0];
}

- (id)createDimmingBackdropViewWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  _graphicsQuality = [currentDevice _graphicsQuality];

  if (_graphicsQuality == 10)
  {
    v9 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{x, y, width, height}];
    v10 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.7];
    [v9 setBackgroundColor:v10];
  }

  else
  {
    v9 = [objc_alloc(MEMORY[0x1E69DD370]) initWithFrame:2030 privateStyle:{x, y, width, height}];
  }

  return v9;
}

- (void)showAnimated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  [(_UIActionSlider *)self->_actionSlider closeTrackAnimated:0];
  [(SBUIPowerDownView *)self _updateSliderExclusionPath];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __45__SBUIPowerDownView_showAnimated_completion___block_invoke;
  v25[3] = &unk_1E789DA38;
  v25[4] = self;
  v7 = MEMORY[0x1AC58E960](v25);
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __45__SBUIPowerDownView_showAnimated_completion___block_invoke_2;
  v23[3] = &unk_1E789DA60;
  v23[4] = self;
  v24 = animatedCopy;
  v8 = MEMORY[0x1AC58E960](v23);
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __45__SBUIPowerDownView_showAnimated_completion___block_invoke_3;
  v21[3] = &unk_1E789DB90;
  v21[4] = self;
  v9 = completionCopy;
  v22 = v9;
  v10 = MEMORY[0x1AC58E960](v21);
  if (animatedCopy)
  {
    v11 = MEMORY[0x1E69DD250];
    [(SBUIPowerDownView *)self showHideAnimationDuration];
    v13 = v12;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __45__SBUIPowerDownView_showAnimated_completion___block_invoke_4;
    v19[3] = &unk_1E789DBB8;
    v20 = v7;
    [v11 animateWithDuration:0 delay:v19 options:0 animations:v13 completion:0.0];
    v14 = MEMORY[0x1E69DD250];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __45__SBUIPowerDownView_showAnimated_completion___block_invoke_5;
    v17[3] = &unk_1E789DBB8;
    v18 = v8;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __45__SBUIPowerDownView_showAnimated_completion___block_invoke_6;
    v15[3] = &unk_1E789DBE0;
    v16 = v10;
    [v14 _animateUsingDefaultDampedSpringWithDelay:0 initialSpringVelocity:v17 options:v15 animations:0.15 completion:0.0];
  }

  else
  {
    v7[2](v7);
    v8[2](v8);
    v10[2](v10);
  }
}

uint64_t __45__SBUIPowerDownView_showAnimated_completion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setAlpha:1.0];
  v2 = *(a1 + 32);

  return [v2 _willAnimateIn];
}

uint64_t __45__SBUIPowerDownView_showAnimated_completion___block_invoke_2(uint64_t a1)
{
  [*(*(a1 + 32) + 440) setAlpha:1.0];
  [*(*(a1 + 32) + 448) setAlpha:1.0];
  [*(*(a1 + 32) + 456) setAlpha:1.0];
  [*(*(a1 + 32) + 440) openTrackAnimated:*(a1 + 40)];
  v2 = *(a1 + 32);

  return [v2 _updateSliderExclusionPath];
}

uint64_t __45__SBUIPowerDownView_showAnimated_completion___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) _resetAutoDismissTimer];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)hideAnimated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __45__SBUIPowerDownView_hideAnimated_completion___block_invoke;
  v24[3] = &unk_1E789DA38;
  v24[4] = self;
  v7 = MEMORY[0x1AC58E960](v24);
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __45__SBUIPowerDownView_hideAnimated_completion___block_invoke_2;
  v23[3] = &unk_1E789DA38;
  v23[4] = self;
  v8 = MEMORY[0x1AC58E960](v23);
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __45__SBUIPowerDownView_hideAnimated_completion___block_invoke_3;
  v21[3] = &unk_1E789DB90;
  v21[4] = self;
  v9 = completionCopy;
  v22 = v9;
  v10 = MEMORY[0x1AC58E960](v21);
  if (animatedCopy)
  {
    v11 = MEMORY[0x1E69DD250];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __45__SBUIPowerDownView_hideAnimated_completion___block_invoke_4;
    v19[3] = &unk_1E789DBB8;
    v20 = v8;
    [v11 _animateUsingDefaultTimingWithOptions:0 animations:v19 completion:0];
    v12 = MEMORY[0x1E69DD250];
    [(SBUIPowerDownView *)self showHideAnimationDuration];
    v14 = v13;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __45__SBUIPowerDownView_hideAnimated_completion___block_invoke_5;
    v17[3] = &unk_1E789DBB8;
    v18 = v7;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __45__SBUIPowerDownView_hideAnimated_completion___block_invoke_6;
    v15[3] = &unk_1E789DBE0;
    v16 = v10;
    [v12 animateWithDuration:0 delay:v17 options:v15 animations:v14 completion:0.25];
  }

  else
  {
    v8[2](v8);
    v10[2](v10);
    v7[2](v7);
  }
}

uint64_t __45__SBUIPowerDownView_hideAnimated_completion___block_invoke_2(uint64_t a1)
{
  [*(*(a1 + 32) + 440) setAlpha:0.0];
  [*(*(a1 + 32) + 448) setAlpha:0.0];
  [*(*(a1 + 32) + 456) setAlpha:0.0];
  v2 = *(a1 + 32);

  return [v2 setAlpha:0.0];
}

uint64_t __45__SBUIPowerDownView_hideAnimated_completion___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 488));
  [WeakRetained powerDownViewAnimateOutCompleted:*(a1 + 32)];

  result = *(a1 + 40);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

- (void)layoutSubviews
{
  v36.receiver = self;
  v36.super_class = SBUIPowerDownView;
  [(SBUIPowerDownView *)&v36 layoutSubviews];
  [(SBUIPowerDownView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  traitCollection = [(SBUIPowerDownView *)self traitCollection];
  [traitCollection displayScale];
  v13 = v12;

  v34 = 0u;
  v35 = 0u;
  v33 = 0u;
  SBGetPowerDownViewMetrics(&v33, [(SBUIPowerDownView *)self _isLandscapeAspectRatio]);
  [(SBUIPowerDownView *)self safeAreaInsets];
  [(_UIActionSlider *)self->_actionSlider sizeThatFits:v8, v10];
  UIRectCenteredXInRectScale();
  [(_UIActionSlider *)self->_actionSlider setFrame:v13];
  [(UIButton *)self->_cancelButton frame];
  UIRectCenteredXInRectScale();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v37.origin.x = v4;
  v37.origin.y = v6;
  v37.size.width = v8;
  v37.size.height = v10;
  [(UIButton *)self->_cancelButton setFrame:v15, CGRectGetMaxY(v37) - *&v34 - *(&v33 + 1), v17, v19, v13];
  [(UILabel *)self->_cancelLabel sizeThatFits:v8, v10];
  v31 = v13;
  v32 = v4;
  UIRectCenteredXInRectScale();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v38.origin.x = v4;
  v38.origin.y = v6;
  v38.size.width = v8;
  v38.size.height = v10;
  v28 = CGRectGetMaxY(v38) - *&v35;
  v39.origin.x = v21;
  v39.origin.y = v23;
  v39.size.width = v25;
  v39.size.height = v27;
  v29 = v28 - CGRectGetHeight(v39);
  [(UILabel *)self->_cancelLabel _baselineOffsetFromBottom];
  [(UILabel *)self->_cancelLabel setFrame:v21, v29 + v30, v25, v27];
  [(UIView *)self->_backdropView setFrame:v32, v6, v8, v10];
  [(SBUIShapeView *)self->_darkeningUnderlayView setFrame:v32, v6, v8, v10];
  [(UIView *)self->_darkeningOverlayView setFrame:v32, v6, v8, v10];
  [(SBUIPowerDownView *)self _updateSliderExclusionPath];
  [(UILabel *)self->_cancelLabel setNeedsLayout];
}

- (void)_willAnimateIn
{
  delegate = [(SBUIPowerDownView *)self delegate];
  [delegate powerDownViewWillAnimateIn:self];
}

- (void)_willAnimateOut
{
  delegate = [(SBUIPowerDownView *)self delegate];
  [delegate powerDownViewWillAnimateOut:self];
}

- (void)_powerDownSliderDidUpdateSlideWithValue:(double)value
{
  [(SBUIShapeView *)self->_darkeningUnderlayView setAlpha:value];

  [(SBUIPowerDownView *)self _updateSliderExclusionPath];
}

- (void)_cancelAutoDismissTimer
{
  [(NSTimer *)self->_autoDismissTimer invalidate];
  autoDismissTimer = self->_autoDismissTimer;
  self->_autoDismissTimer = 0;
}

- (void)_resetAutoDismissTimer
{
  [(SBUIPowerDownView *)self _cancelAutoDismissTimer];
  self->_autoDismissTimer = [MEMORY[0x1E695DFF0] scheduledTimerWithTimeInterval:self target:sel__idleTimerFired selector:0 userInfo:0 repeats:30.0];

  MEMORY[0x1EEE66BB8]();
}

- (void)_updateSliderExclusionPath
{
  v3 = MEMORY[0x1E69DC728];
  [(SBUIPowerDownView *)self bounds];
  v4 = [v3 bezierPathWithRect:?];
  knobMaskPath = [(_UIActionSlider *)self->_actionSlider knobMaskPath];
  [(_UIActionSlider *)self->_actionSlider frame];
  x = v13.origin.x;
  y = v13.origin.y;
  width = v13.size.width;
  height = v13.size.height;
  MinX = CGRectGetMinX(v13);
  v14.origin.x = x;
  v14.origin.y = y;
  v14.size.width = width;
  v14.size.height = height;
  MinY = CGRectGetMinY(v14);
  CGAffineTransformMakeTranslation(&v12, MinX, MinY);
  [knobMaskPath applyTransform:&v12];
  [v4 appendBezierPath:knobMaskPath];
  [(SBUIShapeView *)self->_darkeningUnderlayView setPath:v4];
}

- (void)_notifyDelegatePowerDown
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained powerDownViewRequestPowerDown:self];
}

- (void)_notifyDelegateCancelled
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained powerDownViewRequestCancel:self];
}

- (void)_animatePowerDown
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __38__SBUIPowerDownView__animatePowerDown__block_invoke;
  v3[3] = &unk_1E789DA38;
  v3[4] = self;
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __38__SBUIPowerDownView__animatePowerDown__block_invoke_2;
  v2[3] = &unk_1E789DC08;
  v2[4] = self;
  [MEMORY[0x1E69DD250] _animateUsingDefaultTimingWithOptions:0 animations:v3 completion:v2];
}

uint64_t __38__SBUIPowerDownView__animatePowerDown__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 424) setAlpha:1.0];
  v2 = *(*(a1 + 32) + 432);

  return [v2 setAlpha:1.0];
}

- (id)_createActionSlider
{
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  _graphicsQuality = [currentDevice _graphicsQuality];

  v5 = objc_alloc(MEMORY[0x1E69DD338]);
  v6 = [v5 initWithFrame:self->_vibrantSettings vibrantSettings:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  v7 = MEMORY[0x1E69DCAB8];
  v8 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  traitCollection = [mainScreen traitCollection];
  v11 = [v7 imageNamed:@"PowerDownKnob" inBundle:v8 compatibleWithTraitCollection:traitCollection];
  v12 = [v11 imageWithRenderingMode:2];
  [v6 setKnobImage:v12];

  redColor = [MEMORY[0x1E69DC888] redColor];
  [v6 setTintColor:redColor];

  v14 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v15 = [v14 localizedStringForKey:@"POWER_DOWN_LOCK_LABEL" value:&stru_1F1D7ED48 table:@"SpringBoardUIServices"];
  [v6 setTrackText:v15];

  [v6 setDelegate:self];
  [v6 setKnobImageOffset:{-0.5, -1.0}];
  if (_graphicsQuality == 10)
  {
    [v6 setStyle:2];
    v16 = [MEMORY[0x1E69DC888] colorWithWhite:0.831372549 alpha:0.96];
    [v6 setBackgroundColor:v16];
  }

  return v6;
}

- (void)_prepareViewsForAlert
{
  v12[1] = *MEMORY[0x1E69E9840];
  [(SBUIPowerDownView *)self _resetAutoDismissTimer];
  [(_UIActionSlider *)self->_actionSlider removeFromSuperview];
  _createActionSlider = [(SBUIPowerDownView *)self _createActionSlider];
  actionSlider = self->_actionSlider;
  self->_actionSlider = _createActionSlider;

  [(SBUIPowerDownView *)self insertSubview:self->_actionSlider belowSubview:self->_cancelButton];
  findMyButton = self->_findMyButton;
  if (findMyButton)
  {
    topAnchor = [(UIButton *)findMyButton topAnchor];
    bottomAnchor = [(_UIActionSlider *)self->_actionSlider bottomAnchor];
    v8 = [topAnchor constraintEqualToAnchor:bottomAnchor constant:4.0];

    v9 = MEMORY[0x1E696ACD8];
    v12[0] = v8;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
    [v9 activateConstraints:v10];
  }

  [(SBUIPowerDownView *)self setNeedsLayout];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __42__SBUIPowerDownView__prepareViewsForAlert__block_invoke;
  v11[3] = &unk_1E789DA38;
  v11[4] = self;
  [MEMORY[0x1E69DD250] _animateUsingDefaultTimingWithOptions:4 animations:v11 completion:0];
}

- (void)_readIODeviceSupportsFindMy
{
  objc_initWeak(&location, self);
  beaconManager = [(SBUIPowerDownView *)self beaconManager];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __48__SBUIPowerDownView__readIODeviceSupportsFindMy__block_invoke;
  v4[3] = &unk_1E789DC58;
  objc_copyWeak(&v5, &location);
  [beaconManager isLPEMModeSupported:v4];

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __48__SBUIPowerDownView__readIODeviceSupportsFindMy__block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __48__SBUIPowerDownView__readIODeviceSupportsFindMy__block_invoke_2;
    block[3] = &unk_1E789DC30;
    objc_copyWeak(&v3, (a1 + 32));
    dispatch_async(MEMORY[0x1E69E96A0], block);
    objc_destroyWeak(&v3);
  }
}

void __48__SBUIPowerDownView__readIODeviceSupportsFindMy__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained setDeviceSupportsFindMy:1];
    [v2 _createFindMyUI];
    WeakRetained = v2;
  }
}

- (void)_readShouldPowerDownViewShowFindMyAlert
{
  objc_initWeak(&location, self);
  beaconManager = [(SBUIPowerDownView *)self beaconManager];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __60__SBUIPowerDownView__readShouldPowerDownViewShowFindMyAlert__block_invoke;
  v4[3] = &unk_1E789DC58;
  objc_copyWeak(&v5, &location);
  [beaconManager userHasAcknowledgeFindMyWithCompletion:v4];

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __60__SBUIPowerDownView__readShouldPowerDownViewShowFindMyAlert__block_invoke(uint64_t a1, char a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __60__SBUIPowerDownView__readShouldPowerDownViewShowFindMyAlert__block_invoke_2;
    v5[3] = &unk_1E789DA60;
    v5[4] = WeakRetained;
    v6 = a2;
    dispatch_async(MEMORY[0x1E69E96A0], v5);
  }
}

- (SBUIPowerDownViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end