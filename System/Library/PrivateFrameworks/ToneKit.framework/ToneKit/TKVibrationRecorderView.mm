@interface TKVibrationRecorderView
- (BOOL)vibrationRecorderTouchSurfaceDidEnterRecordingMode:(id)mode;
- (TKVibrationRecorderView)initWithVibrationPatternMaximumDuration:(double)duration;
- (TKVibrationRecorderViewDelegate)delegate;
- (id)_titleForControlsToolbarButtonWithIdentifier:(int)identifier;
- (void)_exitWaitingModeWithAnimation:(BOOL)animation;
- (void)_handleLeftButtonTapped:(id)tapped;
- (void)_handleRightButtonTapped:(id)tapped;
- (void)_handleScreenPeripheryInsetsDidChangeNotification:(id)notification;
- (void)_updateBottomLineToolbarForPeripheryInsetsChange;
- (void)_updateProgress:(id)progress;
- (void)dealloc;
- (void)didMoveToWindow;
- (void)enterRecordingMode;
- (void)enterReplayModeWithVibrationPattern:(id)pattern;
- (void)exitReplayMode;
- (void)safeAreaInsetsDidChange;
- (void)startAnimatingProgress;
- (void)stopAnimatingProgress;
- (void)vibrationComponentDidEndForVibrationRecorderTouchSurface:(id)surface;
- (void)vibrationComponentDidStartForVibrationRecorderTouchSurface:(id)surface;
- (void)vibrationRecorderTouchSurface:(id)surface didExitRecordingModeWithContextObject:(id)object;
- (void)vibrationRecorderTouchSurfaceDidFinishReplayingVibration:(id)vibration;
@end

@implementation TKVibrationRecorderView

- (TKVibrationRecorderView)initWithVibrationPatternMaximumDuration:(double)duration
{
  v70.receiver = self;
  v70.super_class = TKVibrationRecorderView;
  v4 = [(TKVibrationRecorderView *)&v70 init];
  v5 = v4;
  if (v4)
  {
    v4->_vibrationPatternMaximumDuration = duration;
    v6 = objc_alloc_init(TKStyleProvider);
    styleProvider = v5->_styleProvider;
    v5->_styleProvider = v6;

    vibrationRecorderBarsBackgroundColor = [(TKVibrationRecorderStyleProvider *)v5->_styleProvider vibrationRecorderBarsBackgroundColor];
    [(TKVibrationRecorderView *)v5 setBackgroundColor:vibrationRecorderBarsBackgroundColor];

    safeAreaLayoutGuide = [(TKVibrationRecorderView *)v5 safeAreaLayoutGuide];
    v10 = objc_alloc_init(MEMORY[0x277D75C58]);
    bottomLineToolbar = v5->_bottomLineToolbar;
    v5->_bottomLineToolbar = v10;

    [(UIToolbar *)v5->_bottomLineToolbar setTranslatesAutoresizingMaskIntoConstraints:0];
    [(TKVibrationRecorderView *)v5 addSubview:v5->_bottomLineToolbar];
    [(UIToolbar *)v5->_bottomLineToolbar intrinsicContentSize];
    v13 = [(UIToolbar *)v5->_bottomLineToolbar tk_addedConstraintForLayoutAttribute:4 asEqualToValueOfItem:safeAreaLayoutGuide withOffset:v12];
    bottomLineToolbarBottomConstraint = v5->_bottomLineToolbarBottomConstraint;
    v5->_bottomLineToolbarBottomConstraint = v13;

    [(UIToolbar *)v5->_bottomLineToolbar tk_constrainLayoutAttribute:1 asEqualToValueOfItem:v5];
    [(UIToolbar *)v5->_bottomLineToolbar tk_constrainLayoutAttribute:2 asEqualToValueOfItem:v5];
    v15 = objc_alloc_init(MEMORY[0x277D75C58]);
    controlsToolbar = v5->_controlsToolbar;
    v5->_controlsToolbar = v15;

    [(UIToolbar *)v5->_controlsToolbar setTranslatesAutoresizingMaskIntoConstraints:0];
    [(TKVibrationRecorderView *)v5 addSubview:v5->_controlsToolbar];
    [(TKVibrationRecorderStyleProvider *)v5->_styleProvider vibrationRecorderControlsToolbarVerticalOffset];
    v18 = v17;
    [(UIToolbar *)v5->_controlsToolbar intrinsicContentSize];
    v20 = v19;
    [(TKVibrationRecorderStyleProvider *)v5->_styleProvider vibrationRecorderControlsToolbarAdditionalHeight];
    v22 = v21;
    v23 = [(UIToolbar *)v5->_controlsToolbar tk_addedConstraintForLayoutAttribute:4 asEqualToLayoutAttribute:3 ofItem:v5->_bottomLineToolbar withOffset:v18];
    controlsToolbarTopConstraint = v5->_controlsToolbarTopConstraint;
    v5->_controlsToolbarTopConstraint = v23;

    [(UIToolbar *)v5->_controlsToolbar tk_constrainLayoutAttribute:1 asEqualToValueOfItem:v5];
    [(UIToolbar *)v5->_controlsToolbar tk_constrainLayoutAttribute:2 asEqualToValueOfItem:v5];
    [(UIToolbar *)v5->_controlsToolbar tk_constrainLayoutAttribute:8 asEqualToConstant:v20 + v22];
    v25 = objc_alloc_init(MEMORY[0x277D75C58]);
    [v25 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(TKVibrationRecorderView *)v5 addSubview:v25];
    [(TKVibrationRecorderStyleProvider *)v5->_styleProvider vibrationRecorderProgressToolbarVerticalOffset];
    v27 = v26;
    [v25 intrinsicContentSize];
    v29 = v28;
    [(TKVibrationRecorderStyleProvider *)v5->_styleProvider vibrationRecorderProgressToolbarAdditionalHeight];
    v31 = v30;
    v32 = [v25 tk_addedConstraintForLayoutAttribute:4 asEqualToLayoutAttribute:3 ofItem:v5->_controlsToolbar withOffset:v27];
    progressToolbarBottomConstraint = v5->_progressToolbarBottomConstraint;
    v5->_progressToolbarBottomConstraint = v32;

    [v25 tk_constrainLayoutAttribute:1 asEqualToValueOfItem:v5];
    [v25 tk_constrainLayoutAttribute:2 asEqualToValueOfItem:v5];
    [v25 tk_constrainLayoutAttribute:8 asEqualToConstant:v29 + v31];
    v34 = [[TKVibrationRecorderProgressView alloc] initWithMaximumTimeInterval:v5->_styleProvider styleProvider:duration];
    progressView = v5->_progressView;
    v5->_progressView = v34;

    [(TKVibrationRecorderProgressView *)v5->_progressView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(TKVibrationRecorderView *)v5 addSubview:v5->_progressView];
    [(TKVibrationRecorderStyleProvider *)v5->_styleProvider vibrationRecorderProgressViewHorizontalOffsetFromEdge];
    v37 = v36;
    [(UIView *)v5->_progressView tk_constrainLayoutAttribute:1 asEqualToValueOfItem:safeAreaLayoutGuide withOffset:?];
    [(UIView *)v5->_progressView tk_constrainLayoutAttribute:2 asEqualToValueOfItem:safeAreaLayoutGuide withOffset:-v37];
    [(UIView *)v5->_progressView tk_constrainLayoutAttribute:10 asEqualToValueOfItem:v25];
    v38 = TLLocalizedString();
    v39 = [[TKVibrationRecorderTouchSurface alloc] initWithVibrationPatternMaximumDuration:v5->_styleProvider styleProvider:duration];
    touchSurface = v5->_touchSurface;
    v5->_touchSurface = v39;

    [(TKVibrationRecorderTouchSurface *)v5->_touchSurface setDelegate:v5];
    [(TKVibrationRecorderTouchSurface *)v5->_touchSurface setAccessibilityHint:v38];
    [(TKVibrationRecorderTouchSurface *)v5->_touchSurface setTranslatesAutoresizingMaskIntoConstraints:0];
    [(TKVibrationRecorderView *)v5 insertSubview:v5->_touchSurface belowSubview:v5->_bottomLineToolbar];
    [(UIView *)v5->_touchSurface tk_constrainLayoutAttribute:1 asEqualToValueOfItem:v5];
    [(UIView *)v5->_touchSurface tk_constrainLayoutAttribute:2 asEqualToValueOfItem:v5];
    v41 = [(UIView *)v5->_touchSurface tk_addedConstraintForLayoutAttribute:3 asEqualToValueOfItem:v5];
    touchSurfaceTopConstraint = v5->_touchSurfaceTopConstraint;
    v5->_touchSurfaceTopConstraint = v41;

    [(UIView *)v5->_touchSurface tk_constrainLayoutAttribute:4 asEqualToLayoutAttribute:3 ofItem:v25];
    v43 = v5->_touchSurface;
    [(TKVibrationRecorderStyleProvider *)v5->_styleProvider vibrationRecorderRippleFingerStillSpeed];
    [(TKVibrationRecorderRippleView *)v43 setFingerStillSpeed:?];
    v44 = v5->_touchSurface;
    [(TKVibrationRecorderStyleProvider *)v5->_styleProvider vibrationRecorderRippleFingerMovingSpeed];
    [(TKVibrationRecorderRippleView *)v44 setFingerMovingSpeed:?];
    v45 = v5->_touchSurface;
    [(TKVibrationRecorderStyleProvider *)v5->_styleProvider vibrationRecorderRippleInitialRadius];
    [(TKVibrationRecorderRippleView *)v45 setFirstRippleInitialRadius:?];
    v46 = v5->_touchSurface;
    [(TKVibrationRecorderStyleProvider *)v5->_styleProvider vibrationRecorderRippleFinalRadius];
    [(TKVibrationRecorderRippleView *)v46 setFadeOutRadius:?];
    v47 = objc_alloc_init(MEMORY[0x277D756B8]);
    instructionsLabel = v5->_instructionsLabel;
    v5->_instructionsLabel = v47;

    [(UILabel *)v5->_instructionsLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v49 = v5->_instructionsLabel;
    vibrationRecorderInstructionsLabelFont = [(TKVibrationRecorderStyleProvider *)v5->_styleProvider vibrationRecorderInstructionsLabelFont];
    [(UILabel *)v49 setFont:vibrationRecorderInstructionsLabelFont];

    v51 = v5->_instructionsLabel;
    vibrationRecorderInstructionsLabelTextColor = [(TKVibrationRecorderStyleProvider *)v5->_styleProvider vibrationRecorderInstructionsLabelTextColor];
    [(UILabel *)v51 setTextColor:vibrationRecorderInstructionsLabelTextColor];

    v53 = v5->_instructionsLabel;
    vibrationRecorderInstructionsLabelBackgroundColor = [(TKVibrationRecorderStyleProvider *)v5->_styleProvider vibrationRecorderInstructionsLabelBackgroundColor];
    [(UILabel *)v53 setBackgroundColor:vibrationRecorderInstructionsLabelBackgroundColor];

    [(UILabel *)v5->_instructionsLabel setText:v38];
    [(UILabel *)v5->_instructionsLabel setTextAlignment:1];
    [(UILabel *)v5->_instructionsLabel setLineBreakMode:0];
    [(UILabel *)v5->_instructionsLabel setNumberOfLines:0];
    [(UILabel *)v5->_instructionsLabel setUserInteractionEnabled:0];
    [(UILabel *)v5->_instructionsLabel setIsAccessibilityElement:0];
    [(TKVibrationRecorderView *)v5 addSubview:v5->_instructionsLabel];
    [(TKVibrationRecorderStyleProvider *)v5->_styleProvider vibrationRecorderInstructionsLabelEdgeInsets];
    v56 = v55;
    v58 = v57;
    v60 = v59;
    v62 = v61;
    [(TKVibrationRecorderStyleProvider *)v5->_styleProvider vibrationRecorderInstructionsLabelPositionOffset];
    v64 = v63;
    v66 = v65;
    [(UILabel *)v5->_instructionsLabel tk_constrainLayoutAttribute:1 asGreaterThanOrEqualToValueOfItem:safeAreaLayoutGuide withOffset:v58];
    [(UILabel *)v5->_instructionsLabel tk_constrainLayoutAttribute:2 asLessThanOrEqualToValueOfItem:safeAreaLayoutGuide withOffset:-v62];
    [(UILabel *)v5->_instructionsLabel tk_constrainLayoutAttribute:3 asGreaterThanOrEqualToValueOfItem:v5 withOffset:v56];
    [(UILabel *)v5->_instructionsLabel tk_constrainLayoutAttribute:4 asLessThanOrEqualToValueOfItem:v5 withOffset:-v60];
    [(UILabel *)v5->_instructionsLabel tk_constrainLayoutAttribute:9 asEqualToValueOfItem:v5->_touchSurface withOffset:v64];
    [(UILabel *)v5->_instructionsLabel tk_constrainLayoutAttribute:10 asEqualToValueOfItem:v5->_touchSurface withOffset:v66];
    [(TKVibrationRecorderView *)v5 _enterWaitingModeWithAnimation:0 enablePlayButton:0];
    v67 = +[TKDisplayLinkManager currentDisplayLinkManager];
    [v67 beginRequiringWarmUpMode];

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v5 selector:sel__handleScreenPeripheryInsetsDidChangeNotification_ name:*MEMORY[0x277D77550] object:0];
  }

  return v5;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x277D77550] object:0];

  v4 = +[TKDisplayLinkManager currentDisplayLinkManager];
  [v4 endRequiringWarmUpMode];

  [(TKVibrationRecorderTouchSurface *)self->_touchSurface setDelegate:0];
  v5.receiver = self;
  v5.super_class = TKVibrationRecorderView;
  [(TKVibrationRecorderView *)&v5 dealloc];
}

- (id)_titleForControlsToolbarButtonWithIdentifier:(int)identifier
{
  if ((identifier - 1) <= 3)
  {
    v3 = off_278316978[identifier - 1];
  }

  return TLLocalizedString();
}

- (void)_handleLeftButtonTapped:(id)tapped
{
  delegate = [(TKVibrationRecorderView *)self delegate];
  [delegate vibrationRecorderView:self buttonTappedWithIdentifier:self->_leftButtonIdentifier];
}

- (void)_handleRightButtonTapped:(id)tapped
{
  delegate = [(TKVibrationRecorderView *)self delegate];
  [delegate vibrationRecorderView:self buttonTappedWithIdentifier:self->_rightButtonIdentifier];
}

- (void)_exitWaitingModeWithAnimation:(BOOL)animation
{
  v4 = 0.0;
  if (animation)
  {
    [(TKVibrationRecorderStyleProvider *)self->_styleProvider vibrationRecorderInstructionsLabelFadeAnimationDuration];
  }

  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __57__TKVibrationRecorderView__exitWaitingModeWithAnimation___block_invoke;
  v5[3] = &unk_278316500;
  v5[4] = self;
  [MEMORY[0x277D75D18] animateWithDuration:6 delay:v5 options:&__block_literal_global_33 animations:v4 completion:0.0];
  [(TKVibrationRecorderTouchSurface *)self->_touchSurface setAccessibilityHint:0];
}

- (void)enterRecordingMode
{
  [(TKVibrationRecorderView *)self _exitWaitingModeWithAnimation:1];
  [(TKVibrationRecorderView *)self _setLeftButtonIdentifier:3 enabled:0 rightButtonIdentifier:2 enabled:1 animated:1];
  [(TKVibrationRecorderProgressView *)self->_progressView clearAllVibrationComponents];
  [(TKVibrationRecorderProgressView *)self->_progressView setRoundedCornersCompensationDelayMode:1];
  [(TKVibrationRecorderProgressView *)self->_progressView setCurrentTimeInterval:0.0];
  touchSurface = self->_touchSurface;

  [(TKVibrationRecorderTouchSurface *)touchSurface enterRecordingMode];
}

- (void)enterReplayModeWithVibrationPattern:(id)pattern
{
  if (!self->_isReplayModeEnabled)
  {
    self->_isReplayModeEnabled = 1;
    patternCopy = pattern;
    [(TKVibrationRecorderView *)self _exitWaitingModeWithAnimation:1];
    [(TKVibrationRecorderView *)self _setLeftButtonIdentifier:3 enabled:0 rightButtonIdentifier:4 enabled:1 animated:1];
    [(TKVibrationRecorderTouchSurface *)self->_touchSurface enterReplayModeWithVibrationPattern:patternCopy];

    [(TKVibrationRecorderProgressView *)self->_progressView setRoundedCornersCompensationDelayMode:2];

    [(TKVibrationRecorderView *)self startAnimatingProgress];
  }
}

- (void)exitReplayMode
{
  if (self->_isReplayModeEnabled)
  {
    self->_isReplayModeEnabled = 0;
    [(TKVibrationRecorderView *)self stopAnimatingProgress];
    [(TKVibrationRecorderProgressView *)self->_progressView setRoundedCornersCompensationDelayMode:0];
    [(TKVibrationRecorderProgressView *)self->_progressView setCurrentTimeInterval:0.0];
    [(TKVibrationRecorderTouchSurface *)self->_touchSurface exitReplayMode];

    [(TKVibrationRecorderView *)self _enterWaitingModeWithAnimation:1 enablePlayButton:1];
  }
}

- (void)startAnimatingProgress
{
  self->_isAnimatingProgress = 1;
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  self->_currentVibrationProgressDidStartTimestamp = v3;
  [(TKVibrationRecorderProgressView *)self->_progressView setCurrentTimeInterval:0.0];
  v4 = +[TKDisplayLinkManager currentDisplayLinkManager];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __49__TKVibrationRecorderView_startAnimatingProgress__block_invoke;
  v7[3] = &unk_278316958;
  v7[4] = self;
  v5 = [v4 addObserverForFrameInterval:2 handler:v7];
  displayLinkManagerObserverToken = self->_displayLinkManagerObserverToken;
  self->_displayLinkManagerObserverToken = v5;
}

- (void)stopAnimatingProgress
{
  if (self->_displayLinkManagerObserverToken)
  {
    v3 = +[TKDisplayLinkManager currentDisplayLinkManager];
    [v3 removeObserverWithToken:self->_displayLinkManagerObserverToken];

    displayLinkManagerObserverToken = self->_displayLinkManagerObserverToken;
    self->_displayLinkManagerObserverToken = 0;
  }

  self->_isAnimatingProgress = 0;
}

- (void)_updateProgress:(id)progress
{
  if (self->_isAnimatingProgress)
  {
    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    v5 = v4;
    if (v4 - self->_currentVibrationProgressDidStartTimestamp <= self->_vibrationPatternMaximumDuration)
    {
      [(TKVibrationRecorderProgressView *)self->_progressView setCurrentTimeInterval:?];
      if (self->_isWaitingForEndOfCurrentVibrationComponent && v5 - self->_currentVibrationComponentDidStartTimestamp > 4.9)
      {
        touchSurface = self->_touchSurface;

        [(TKVibrationRecorderTouchSurface *)touchSurface currentVibrationComponentShouldEnd];
      }
    }

    else
    {
      [(TKVibrationRecorderView *)self stopAnimatingProgress];
      [(TKVibrationRecorderProgressView *)self->_progressView setRoundedCornersCompensationDelayMode:0];
      self->_currentVibrationProgressDidStartTimestamp = 0.0;
      delegate = [(TKVibrationRecorderView *)self delegate];
      [delegate vibrationRecorderViewDidReachVibrationRecordingMaximumDuration:self];
    }
  }
}

- (void)didMoveToWindow
{
  v9.receiver = self;
  v9.super_class = TKVibrationRecorderView;
  [(TKVibrationRecorderView *)&v9 didMoveToWindow];
  window = [(TKVibrationRecorderView *)self window];
  v4 = window;
  if (window)
  {
    styleProvider = self->_styleProvider;
    screen = [window screen];
    [(TKVibrationRecorderStyleProvider *)styleProvider setScreen:screen];

    controlsToolbarTopConstraint = self->_controlsToolbarTopConstraint;
    [(TKVibrationRecorderStyleProvider *)self->_styleProvider vibrationRecorderControlsToolbarVerticalOffset];
    [(NSLayoutConstraint *)controlsToolbarTopConstraint setConstant:?];
    progressToolbarBottomConstraint = self->_progressToolbarBottomConstraint;
    [(TKVibrationRecorderStyleProvider *)self->_styleProvider vibrationRecorderProgressToolbarVerticalOffset];
    [(NSLayoutConstraint *)progressToolbarBottomConstraint setConstant:?];
  }

  [(TKVibrationRecorderView *)self _updateBottomLineToolbarForPeripheryInsetsChange];
}

- (void)_handleScreenPeripheryInsetsDidChangeNotification:(id)notification
{
  object = [notification object];
  window = [(TKVibrationRecorderView *)self window];
  screen = [window screen];

  v6 = object;
  if (object == screen)
  {
    [(TKVibrationRecorderView *)self _updateBottomLineToolbarForPeripheryInsetsChange];
    v6 = object;
  }
}

- (void)_updateBottomLineToolbarForPeripheryInsetsChange
{
  [(UIToolbar *)self->_bottomLineToolbar intrinsicContentSize];
  v4 = v3;
  window = [(TKVibrationRecorderView *)self window];
  screen = [window screen];

  if (screen && ([screen _peripheryInsets], !TKFloatEqualToFloat(v6, 0.0)))
  {
    [screen scale];
    TKFloatGetSafeScaleForValue(v8);
    v4 = v4 + 1.0 / v9;
    v7 = 1;
  }

  else
  {
    v7 = 0;
  }

  [(UIToolbar *)self->_bottomLineToolbar _setHidesShadow:v7];
  [(NSLayoutConstraint *)self->_bottomLineToolbarBottomConstraint setConstant:v4];
}

- (void)safeAreaInsetsDidChange
{
  v16.receiver = self;
  v16.super_class = TKVibrationRecorderView;
  [(TKVibrationRecorderView *)&v16 safeAreaInsetsDidChange];
  [(TKVibrationRecorderView *)self safeAreaInsets];
  v4 = v3;
  v6 = v5;
  v7 = [MEMORY[0x277D75D18] userInterfaceLayoutDirectionForSemanticContentAttribute:{-[UIToolbar semanticContentAttribute](self->_controlsToolbar, "semanticContentAttribute")}];
  items = [(UIToolbar *)self->_controlsToolbar items];
  [(TKVibrationRecorderStyleProvider *)self->_styleProvider vibrationRecorderControlsToolbarItemsHorizontalOffsetFromEdge];
  v10 = v9;
  firstObject = [items firstObject];
  v12 = firstObject;
  if (v7)
  {
    v13 = v6;
  }

  else
  {
    v13 = v4;
  }

  v14 = v13 + v10;
  if (!v7)
  {
    v4 = v6;
  }

  [firstObject setWidth:v14];
  lastObject = [items lastObject];
  [lastObject setWidth:v4 + v10];
  [(UIToolbar *)self->_controlsToolbar setNeedsLayout];
}

- (void)vibrationComponentDidStartForVibrationRecorderTouchSurface:(id)surface
{
  delegate = [(TKVibrationRecorderView *)self delegate];
  [delegate vibrationComponentDidStartForVibrationRecorderView:self];

  [(TKVibrationRecorderProgressView *)self->_progressView vibrationComponentDidStart];
  self->_isWaitingForEndOfCurrentVibrationComponent = 1;
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  self->_currentVibrationComponentDidStartTimestamp = v5;
}

- (void)vibrationComponentDidEndForVibrationRecorderTouchSurface:(id)surface
{
  delegate = [(TKVibrationRecorderView *)self delegate];
  [delegate vibrationComponentDidEndForVibrationRecorderView:self];

  [(TKVibrationRecorderProgressView *)self->_progressView vibrationComponentDidEnd];
  self->_isWaitingForEndOfCurrentVibrationComponent = 0;
  self->_currentVibrationComponentDidStartTimestamp = 0.0;
}

- (void)vibrationRecorderTouchSurfaceDidFinishReplayingVibration:(id)vibration
{
  delegate = [(TKVibrationRecorderView *)self delegate];
  [delegate vibrationRecorderViewDidFinishReplayingVibration:self];

  [(TKVibrationRecorderView *)self stopAnimatingProgress];
  [(TKVibrationRecorderView *)self _enterWaitingModeWithAnimation:1 enablePlayButton:1];
  self->_isReplayModeEnabled = 0;
  [(TKVibrationRecorderProgressView *)self->_progressView setRoundedCornersCompensationDelayMode:0];
  if (self->_vibrationPatternMaximumDuration > 0.0)
  {
    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    v6 = (v5 - self->_currentVibrationProgressDidStartTimestamp) / self->_vibrationPatternMaximumDuration;
    if (v6 > 0.98)
    {
      progressView = self->_progressView;

      [(TKVibrationRecorderProgressView *)progressView setCurrentTimeInterval:?];
    }
  }
}

- (BOOL)vibrationRecorderTouchSurfaceDidEnterRecordingMode:(id)mode
{
  selfCopy = self;
  delegate = [(TKVibrationRecorderView *)self delegate];
  LOBYTE(selfCopy) = [delegate vibrationRecorderViewDidEnterRecordingMode:selfCopy];

  return selfCopy;
}

- (void)vibrationRecorderTouchSurface:(id)surface didExitRecordingModeWithContextObject:(id)object
{
  objectCopy = object;
  delegate = [(TKVibrationRecorderView *)self delegate];
  [delegate vibrationRecorderView:self didExitRecordingModeWithContextObject:objectCopy];
}

- (TKVibrationRecorderViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end