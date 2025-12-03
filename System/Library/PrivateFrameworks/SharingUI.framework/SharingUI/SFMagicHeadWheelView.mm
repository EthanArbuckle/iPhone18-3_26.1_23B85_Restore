@interface SFMagicHeadWheelView
+ (double)clampedRotationDegrees:(double)degrees;
- (BOOL)canChangeSelectionWhenInRotationState:(int64_t)state guidanceState:(int64_t)guidanceState description:(id *)description ignoreDisabling:(BOOL)disabling;
- (BOOL)canChangeSelectionWithDescription:(id *)description ignoreDisabling:(BOOL)disabling;
- (BOOL)configureSelectedHeadWithNode:(id)node slotNode:(id)slotNode isSameAsSelected:(BOOL)selected;
- (BOOL)guidanceStatesEnabled;
- (BOOL)inGuidanceStates;
- (BOOL)transitionToGuidanceState:(int64_t)state;
- (BOOL)updateSelectedHead:(id)head;
- (BOOL)updateSelectedNode:(id)node;
- (BOOL)updateSelectedSlotNode:(id)node;
- (CGPoint)centerOfContentBounds;
- (CGRect)squareBounds;
- (SFMagicHeadWheelView)initWithNumberOfDots:(unint64_t)dots dotsRadius:(double)radius isMagicHead:(BOOL)head;
- (SFMagicHeadWheelViewDelegate)delegate;
- (int64_t)triggerCountForCandidateRotationState:(int64_t)state;
- (void)cozyUpAnimationForHead:(id)head;
- (void)createSprings;
- (void)dealloc;
- (void)deviceRotatedToDegrees:(double)degrees withPitch:(double)pitch andRoll:(double)roll;
- (void)hapticsForHideDots:(BOOL)dots;
- (void)hideDots:(BOOL)dots withAnimationDuration:(double)duration;
- (void)hideSelection:(BOOL)selection;
- (void)invalidate;
- (void)layoutSubviews;
- (void)loadSettings;
- (void)magicHead:(id)head requestingSubtitleTextChangeForState:(int64_t)state;
- (void)magicHeadDidFinishTransferForHead:(id)head;
- (void)magicHeadDidStartTransferForHead:(id)head;
- (void)magicHeadDidTerminateTransferForHead:(id)head;
- (void)pulseSelectedHead;
- (void)scaleDots:(BOOL)dots;
- (void)selectAnimationForHead:(id)head withDismissHead:(id)dismissHead;
- (void)selectedHeadHighlighted;
- (void)selectedHeadHightlightCancel;
- (void)selectedHeadTapped;
- (void)setEnabled:(BOOL)enabled;
- (void)setFrame:(CGRect)frame;
- (void)setMarkerViewForIdentifier:(id)identifier atPositionDegree:(double)degree;
- (void)setNoUWBCapableDevices:(BOOL)devices;
- (void)startSuppressGuidanceHapticsTimer;
- (void)stopSuppressGuidanceHapticsTimer;
- (void)transitionToRotationState:(int64_t)state bypassSampling:(BOOL)sampling;
- (void)updateCanChangeSelectionUI;
- (void)updatePlaceHolderView;
- (void)updateSelectionControlState;
- (void)updateVelocityWithCurrentAngle:(double)angle;
- (void)updateVisibilityOfComponents;
@end

@implementation SFMagicHeadWheelView

- (SFMagicHeadWheelView)initWithNumberOfDots:(unint64_t)dots dotsRadius:(double)radius isMagicHead:(BOOL)head
{
  v53.receiver = self;
  v53.super_class = SFMagicHeadWheelView;
  v8 = *MEMORY[0x1E695F058];
  v9 = *(MEMORY[0x1E695F058] + 8);
  v10 = *(MEMORY[0x1E695F058] + 16);
  v11 = *(MEMORY[0x1E695F058] + 24);
  v12 = [(SFMagicHeadWheelView *)&v53 initWithFrame:*MEMORY[0x1E695F058], v9, v10, v11];
  v13 = v12;
  if (v12)
  {
    [(SFMagicHeadWheelView *)v12 loadSettings];
    v13->_magicHead = head;
    v14 = objc_opt_new();
    [(SFMagicHeadWheelView *)v13 setIdentifierToSelectionMarkerView:v14];

    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(SFMagicHeadWheelView *)v13 setBackgroundColor:clearColor];

    if ([(SFMagicHeadWheelView *)v13 guidanceStatesEnabled])
    {
      layer = [(SFMagicHeadWheelView *)v13 layer];
      v17 = *(MEMORY[0x1E69792E8] + 48);
      v48[2] = *(MEMORY[0x1E69792E8] + 32);
      v48[3] = v17;
      v48[4] = *(MEMORY[0x1E69792E8] + 64);
      v18 = *(MEMORY[0x1E69792E8] + 80);
      v19 = *(MEMORY[0x1E69792E8] + 16);
      v48[0] = *MEMORY[0x1E69792E8];
      v48[1] = v19;
      v49 = v18;
      v50 = 0xBF40624DD2F1A9FCLL;
      v20 = *(MEMORY[0x1E69792E8] + 112);
      v51 = *(MEMORY[0x1E69792E8] + 96);
      v52 = v20;
      [layer setSublayerTransform:v48];
    }

    v21 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v8, v9, v10, v11}];
    [(SFMagicHeadWheelView *)v13 setContentView:v21];

    clearColor2 = [MEMORY[0x1E69DC888] clearColor];
    contentView = [(SFMagicHeadWheelView *)v13 contentView];
    [contentView setBackgroundColor:clearColor2];

    contentView2 = [(SFMagicHeadWheelView *)v13 contentView];
    [(SFMagicHeadWheelView *)v13 addSubview:contentView2];

    if (![(SFMagicHeadWheelView *)v13 isMagicHead])
    {
      v25 = [[SFMagicHeadPlaceholderView alloc] initWithFrame:v8, v9, v10, v11];
      [(SFMagicHeadWheelView *)v13 setPlaceHolderView:v25];

      contentView3 = [(SFMagicHeadWheelView *)v13 contentView];
      placeHolderView = [(SFMagicHeadWheelView *)v13 placeHolderView];
      [contentView3 addSubview:placeHolderView];
    }

    v28 = [MEMORY[0x1E69DC730] effectWithStyle:9];
    v29 = [MEMORY[0x1E69DD248] effectForBlurEffect:v28 style:2];
    v30 = [objc_alloc(MEMORY[0x1E69DD298]) initWithEffect:v29];
    [(SFMagicHeadWheelView *)v13 setDotsContainer:v30];

    contentView4 = [(SFMagicHeadWheelView *)v13 contentView];
    dotsContainer = [(SFMagicHeadWheelView *)v13 dotsContainer];
    [contentView4 addSubview:dotsContainer];

    v33 = objc_opt_new();
    [(SFMagicHeadWheelView *)v13 setDots:v33];

    [(SFMagicHeadWheelView *)v13 setNumberOfDots:dots];
    [(SFMagicHeadWheelView *)v13 setDotsRadius:radius];
    for (; dots; --dots)
    {
      v34 = objc_opt_new();
      [v34 setBounds:{0.0, 0.0, radius + radius, radius + radius}];
      layer2 = [v34 layer];
      [layer2 setCornerRadius:radius];

      whiteColor = [MEMORY[0x1E69DC888] whiteColor];
      [v34 setBackgroundColor:whiteColor];

      [v34 setUserInteractionEnabled:0];
      [v34 setAlpha:0.0];
      dots = [(SFMagicHeadWheelView *)v13 dots];
      [dots addObject:v34];

      dotsContainer2 = [(SFMagicHeadWheelView *)v13 dotsContainer];
      contentView5 = [dotsContainer2 contentView];
      [contentView5 addSubview:v34];
    }

    if (![(SFMagicHeadWheelView *)v13 isMagicHead])
    {
      v40 = [objc_alloc(MEMORY[0x1E69DC8F0]) initWithFrame:{v8, v9, v10, v11}];
      [(SFMagicHeadWheelView *)v13 setSelectedHeadControl:v40];

      selectedHeadControl = [(SFMagicHeadWheelView *)v13 selectedHeadControl];
      [selectedHeadControl addTarget:v13 action:sel_selectedHeadTapped forControlEvents:64];

      selectedHeadControl2 = [(SFMagicHeadWheelView *)v13 selectedHeadControl];
      [selectedHeadControl2 addTarget:v13 action:sel_selectedHeadHighlighted forControlEvents:1];

      selectedHeadControl3 = [(SFMagicHeadWheelView *)v13 selectedHeadControl];
      [selectedHeadControl3 addTarget:v13 action:sel_selectedHeadHightlightCancel forControlEvents:256];

      selectedHeadControl4 = [(SFMagicHeadWheelView *)v13 selectedHeadControl];
      [selectedHeadControl4 addTarget:v13 action:sel_selectedHeadHightlightCancel forControlEvents:128];

      contentView6 = [(SFMagicHeadWheelView *)v13 contentView];
      selectedHeadControl5 = [(SFMagicHeadWheelView *)v13 selectedHeadControl];
      [contentView6 addSubview:selectedHeadControl5];
    }

    [(SFMagicHeadWheelView *)v13 setRotatedAfterSelectionWasMade:1];
    [(SFMagicHeadWheelView *)v13 setNoUWBCapableDevices:1];
    v13->_guidanceState = -1;
    [(SFMagicHeadWheelView *)v13 transitionToGuidanceState:0];
    [(SFMagicHeadWheelView *)v13 transitionToRotationState:[(SFMagicHeadWheelView *)v13 isMagicHead]^ 1 bypassSampling:1];
    [(SFMagicHeadWheelView *)v13 updateVisibilityOfComponents];
  }

  return v13;
}

- (void)loadSettings
{
  rootSettings = [MEMORY[0x1E69CDEB8] rootSettings];
  magicHeadSettings = [rootSettings magicHeadSettings];
  [(SFMagicHeadWheelView *)self setSettings:magicHeadSettings];
}

- (void)invalidate
{
  if (![(SFMagicHeadWheelView *)self invalidated])
  {
    [(SFMagicHeadWheelView *)self setInvalidated:1];
    [(SFMagicHeadWheelView *)self stopSuppressGuidanceHapticsTimer];
    rotationSpringProperty = [(SFMagicHeadWheelView *)self rotationSpringProperty];
    [rotationSpringProperty invalidate];

    pitchSpringProperty = [(SFMagicHeadWheelView *)self pitchSpringProperty];
    [pitchSpringProperty invalidate];

    rollSpringProperty = [(SFMagicHeadWheelView *)self rollSpringProperty];
    [rollSpringProperty invalidate];

    [(SFMagicHeadWheelView *)self setSelectionAnimator:0];
  }
}

- (void)setEnabled:(BOOL)enabled
{
  if (self->_enabled != enabled)
  {
    self->_enabled = enabled;
    if (enabled)
    {
      [(SFMagicHeadWheelView *)self setNeedsLayout];
    }

    else
    {
      self->_guidanceState = 0;
      self->_rotationState = 0;
    }
  }
}

- (void)setNoUWBCapableDevices:(BOOL)devices
{
  if (self->_noUWBCapableDevices != devices)
  {
    self->_noUWBCapableDevices = devices;
    [(SFMagicHeadWheelView *)self updatePlaceHolderView];
  }
}

- (void)dealloc
{
  [(SFMagicHeadWheelView *)self invalidate];
  v3.receiver = self;
  v3.super_class = SFMagicHeadWheelView;
  [(SFMagicHeadWheelView *)&v3 dealloc];
}

- (void)createSprings
{
  v14[3] = *MEMORY[0x1E69E9840];
  v3 = __37__SFMagicHeadWheelView_createSprings__block_invoke();
  [(SFMagicHeadWheelView *)self setRotationSpringProperty:v3];

  v4 = __37__SFMagicHeadWheelView_createSprings__block_invoke();
  [(SFMagicHeadWheelView *)self setPitchSpringProperty:v4];

  v5 = __37__SFMagicHeadWheelView_createSprings__block_invoke();
  [(SFMagicHeadWheelView *)self setRollSpringProperty:v5];

  objc_initWeak(&location, self);
  v6 = MEMORY[0x1E69DD250];
  rotationSpringProperty = [(SFMagicHeadWheelView *)self rotationSpringProperty];
  v14[0] = rotationSpringProperty;
  pitchSpringProperty = [(SFMagicHeadWheelView *)self pitchSpringProperty];
  v14[1] = pitchSpringProperty;
  rollSpringProperty = [(SFMagicHeadWheelView *)self rollSpringProperty];
  v14[2] = rollSpringProperty;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:3];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __37__SFMagicHeadWheelView_createSprings__block_invoke_2;
  v11[3] = &unk_1E7EE3688;
  objc_copyWeak(&v12, &location);
  [v6 _createTransformerWithInputAnimatableProperties:v10 presentationValueChangedCallback:v11];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

id __37__SFMagicHeadWheelView_createSprings__block_invoke()
{
  v0 = objc_opt_new();
  [v0 setDampingRatio:1.0 response:0.55];
  [v0 setTrackingDampingRatio:0.86 response:0.125];
  [v0 setTracking:1];

  return v0;
}

void __37__SFMagicHeadWheelView_createSprings__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setNeedsLayout];
}

- (void)deviceRotatedToDegrees:(double)degrees withPitch:(double)pitch andRoll:(double)roll
{
  pitchSpringProperty = [(SFMagicHeadWheelView *)self pitchSpringProperty];

  if (!pitchSpringProperty)
  {
    [(SFMagicHeadWheelView *)self createSprings];
  }

  pitchCopy = pitch;
  v10 = pitchCopy * 57.2957795;
  v11 = v10;
  pitchSpringProperty2 = [(SFMagicHeadWheelView *)self pitchSpringProperty];
  [pitchSpringProperty2 setInput:v11];

  rollCopy = roll;
  v14 = rollCopy * 57.2957795;
  v15 = v14;
  rollSpringProperty = [(SFMagicHeadWheelView *)self rollSpringProperty];
  [rollSpringProperty setInput:v15];

  v17 = objc_opt_class();
  rotationSpringProperty = [(SFMagicHeadWheelView *)self rotationSpringProperty];
  [rotationSpringProperty input];
  [v17 rotationWithShortestDistanceFromDegrees:? toDegrees:?];
  v19 = v18;
  rotationSpringProperty2 = [(SFMagicHeadWheelView *)self rotationSpringProperty];
  [rotationSpringProperty2 setInput:v19];
}

- (int64_t)triggerCountForCandidateRotationState:(int64_t)state
{
  isMagicHead = [(SFMagicHeadWheelView *)self isMagicHead];
  settings = [(SFMagicHeadWheelView *)self settings];
  v7 = settings;
  if (state == 1)
  {
    if (isMagicHead)
    {
      rotationStartGatingResponsiveness = [settings rotationStartGatingResponsiveness];
    }

    else
    {
      rotationStartGatingResponsiveness = [settings rotationStartBigHeadGatingResponsiveness];
    }
  }

  else if (isMagicHead)
  {
    rotationStartGatingResponsiveness = [settings rotationStopGatingResponsiveness];
  }

  else
  {
    rotationStartGatingResponsiveness = [settings rotationStopBigHeadGatingResponsiveness];
  }

  v9 = rotationStartGatingResponsiveness;

  return v9;
}

- (void)transitionToRotationState:(int64_t)state bypassSampling:(BOOL)sampling
{
  stateCopy = state;
  v25 = *MEMORY[0x1E69E9840];
  if ([(SFMagicHeadWheelView *)self proposedRotationState]!= state)
  {
    [(SFMagicHeadWheelView *)self setProposedRotationState:stateCopy];
    [(SFMagicHeadWheelView *)self setConsecutiveRotationChangeRequests:0];
  }

  v7 = [(SFMagicHeadWheelView *)self triggerCountForCandidateRotationState:[(SFMagicHeadWheelView *)self proposedRotationState]];
  if (stateCopy <= 1)
  {
    v8 = v7;
    proposedRotationState = [(SFMagicHeadWheelView *)self proposedRotationState];
    if (proposedRotationState != [(SFMagicHeadWheelView *)self rotationState]&& [(SFMagicHeadWheelView *)self consecutiveRotationChangeRequests]< v8 && !sampling)
    {
      [(SFMagicHeadWheelView *)self setConsecutiveRotationChangeRequests:[(SFMagicHeadWheelView *)self consecutiveRotationChangeRequests]+ 1];
      stateCopy = [(SFMagicHeadWheelView *)self rotationState];
    }
  }

  if ([(SFMagicHeadWheelView *)self rotationState]!= stateCopy)
  {
    rotationState = [(SFMagicHeadWheelView *)self rotationState];
    [(SFMagicHeadWheelView *)self setRotationState:stateCopy];
    v18 = 0;
    [(SFMagicHeadWheelView *)self canChangeSelectionWithDescription:&v18];
    v11 = v18;
    v12 = magic_head_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      if (rotationState == 1)
      {
        v13 = "Rotating";
      }

      else
      {
        v13 = "?";
      }

      if (rotationState)
      {
        v14 = v13;
      }

      else
      {
        v14 = "Resting";
      }

      rotationState2 = [(SFMagicHeadWheelView *)self rotationState];
      if (rotationState2 == 1)
      {
        v16 = "Rotating";
      }

      else
      {
        v16 = "?";
      }

      *buf = 136315650;
      v20 = v14;
      if (!rotationState2)
      {
        v16 = "Resting";
      }

      v21 = 2080;
      v22 = v16;
      v23 = 2112;
      v24 = v11;
      _os_log_impl(&dword_1B9E4B000, v12, OS_LOG_TYPE_DEFAULT, "Transitioning rotation state from %s to %s. %@", buf, 0x20u);
    }

    [(SFMagicHeadWheelView *)self updateVisibilityOfComponents];
  }

  if (![(SFMagicHeadWheelView *)self rotatedAfterSelectionWasMade]&& [(SFMagicHeadWheelView *)self rotationState]== 1)
  {
    [(SFMagicHeadWheelView *)self setRotatedAfterSelectionWasMade:1];
    v17 = magic_head_log();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B9E4B000, v17, OS_LOG_TYPE_DEFAULT, "Re-enabled guidance UI due to rotating", buf, 2u);
    }
  }
}

- (void)updateVelocityWithCurrentAngle:(double)angle
{
  settings = [(SFMagicHeadWheelView *)self settings];
  [settings rotationGateThresholdDegrees];
  v7 = v6;

  [(SFMagicHeadWheelView *)self previousAngle];
  v9 = angle - v8;
  if (v9 < 0.0)
  {
    v9 = -v9;
  }

  [(SFMagicHeadWheelView *)self transitionToRotationState:v9 >= v7 bypassSampling:0];

  [(SFMagicHeadWheelView *)self setPreviousAngle:angle];
}

+ (double)clampedRotationDegrees:(double)degrees
{
  v3 = 0.0;
  if (degrees < 0.0)
  {
    v3 = -1.0;
  }

  if (degrees <= 0.0)
  {
    v4 = v3;
  }

  else
  {
    v4 = 1.0;
  }

  if (degrees < 0.0)
  {
    degrees = -degrees;
  }

  degreesCopy = degrees;
  v6 = v4 * fmodf(degreesCopy, 360.0);
  if (v6 >= 0.0)
  {
    return v6;
  }

  else
  {
    return v6 + 360.0;
  }
}

- (BOOL)canChangeSelectionWhenInRotationState:(int64_t)state guidanceState:(int64_t)guidanceState description:(id *)description ignoreDisabling:(BOOL)disabling
{
  if (disabling || -[SFMagicHeadWheelView isMagicHead](self, "isMagicHead") || (-[SFMagicHeadWheelView settings](self, "settings"), v10 = objc_claimAutoreleasedReturnValue(), v11 = [v10 selectionDisabled], v10, !v11))
  {
    if ((guidanceState - 3) > 1)
    {
      settings = [(SFMagicHeadWheelView *)self settings];
      rotationGatedSelectionEnabled = [settings rotationGatedSelectionEnabled];
      v16 = state != 1;

      v12 = v16 & rotationGatedSelectionEnabled ^ 1;
      v13 = @"Selection can change";
      if ((v16 & rotationGatedSelectionEnabled) != 0)
      {
        v13 = @"Selection cannot change due to Not Rotating";
      }

      if (description)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v12 = 0;
      if (description)
      {
        v13 = @"Selection cannot change due to Tilted";
        goto LABEL_12;
      }
    }
  }

  else
  {
    v12 = 0;
    if (description)
    {
      v13 = @"Selection cannot change due to being Disabled";
LABEL_12:
      *description = v13;
    }
  }

  return v12 & 1;
}

- (BOOL)canChangeSelectionWithDescription:(id *)description ignoreDisabling:(BOOL)disabling
{
  disablingCopy = disabling;
  rotationState = [(SFMagicHeadWheelView *)self rotationState];
  guidanceState = [(SFMagicHeadWheelView *)self guidanceState];

  return [(SFMagicHeadWheelView *)self canChangeSelectionWhenInRotationState:rotationState guidanceState:guidanceState description:description ignoreDisabling:disablingCopy];
}

- (BOOL)inGuidanceStates
{
  guidanceState = [(SFMagicHeadWheelView *)self guidanceState];

  return [(SFMagicHeadWheelView *)self inGuidanceStatesWhenInState:guidanceState];
}

- (BOOL)guidanceStatesEnabled
{
  if ([(SFMagicHeadWheelView *)self isMagicHead])
  {
    LOBYTE(v3) = 0;
  }

  else
  {
    settings = [(SFMagicHeadWheelView *)self settings];
    if ([settings guidanceEnabled] && -[SFMagicHeadWheelView rotatedAfterSelectionWasMade](self, "rotatedAfterSelectionWasMade"))
    {
      v3 = ![(SFMagicHeadWheelView *)self noUWBCapableDevices];
    }

    else
    {
      LOBYTE(v3) = 0;
    }
  }

  return v3;
}

- (BOOL)transitionToGuidanceState:(int64_t)state
{
  v27 = *MEMORY[0x1E69E9840];
  if ([(SFMagicHeadWheelView *)self guidanceState]== state)
  {
    return 1;
  }

  guidanceState = [(SFMagicHeadWheelView *)self guidanceState];
  v7 = state != 2 && guidanceState == 1;
  v5 = !v7;
  if (v7)
  {
    v10 = magic_head_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      guidanceState2 = [(SFMagicHeadWheelView *)self guidanceState];
      if (guidanceState2 > 4)
      {
        v14 = "?";
      }

      else
      {
        v14 = off_1E7EE3858[guidanceState2];
      }

      if (state > 4)
      {
        v16 = "?";
      }

      else
      {
        v16 = off_1E7EE3830[state];
      }

      *buf = 136315394;
      v22 = v14;
      v23 = 2080;
      v24 = v16;
      _os_log_impl(&dword_1B9E4B000, v10, OS_LOG_TYPE_DEFAULT, "Cannot transition guidance state from %s to %s", buf, 0x16u);
    }
  }

  else
  {
    guidanceState3 = [(SFMagicHeadWheelView *)self guidanceState];
    [(SFMagicHeadWheelView *)self setGuidanceState:state];
    if ([(SFMagicHeadWheelView *)self rotatedAfterSelectionWasMade]&& [(SFMagicHeadWheelView *)self guidanceState]== 2)
    {
      [(SFMagicHeadWheelView *)self transitionToRotationState:0 bypassSampling:1];
      v9 = magic_head_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1B9E4B000, v9, OS_LOG_TYPE_DEFAULT, "Disabled guidance UI due to Selected", buf, 2u);
      }

      [(SFMagicHeadWheelView *)self setRotatedAfterSelectionWasMade:0];
    }

    v20 = 0;
    [(SFMagicHeadWheelView *)self canChangeSelectionWithDescription:&v20];
    v10 = v20;
    v11 = magic_head_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      if (guidanceState3 > 4)
      {
        v12 = "?";
      }

      else
      {
        v12 = off_1E7EE3858[guidanceState3];
      }

      if (state > 4)
      {
        v15 = "?";
      }

      else
      {
        v15 = off_1E7EE3858[state];
      }

      *buf = 136315650;
      v22 = v12;
      v23 = 2080;
      v24 = v15;
      v25 = 2112;
      v26 = v10;
      _os_log_impl(&dword_1B9E4B000, v11, OS_LOG_TYPE_DEFAULT, "Transitioning guidance state from %s to %s. %@", buf, 0x20u);
    }

    [(SFMagicHeadWheelView *)self updateSelectionControlState];
    [(SFMagicHeadWheelView *)self updateVisibilityOfComponents];
    v17 = [(SFMagicHeadWheelView *)self inGuidanceStatesWhenInState:guidanceState3];
    if (v17 != [(SFMagicHeadWheelView *)self inGuidanceStatesWhenInState:state])
    {
      delegate = [(SFMagicHeadWheelView *)self delegate];
      [delegate magicHeadSelectedHeadRequestingDisabledState:{-[SFMagicHeadWheelView inGuidanceStatesWhenInState:](self, "inGuidanceStatesWhenInState:", state)}];
    }
  }

  return v5;
}

- (void)updateVisibilityOfComponents
{
  dots = [(SFMagicHeadWheelView *)self dots];
  firstObject = [dots firstObject];
  [firstObject alpha];
  v6 = v5;

  if (![(SFMagicHeadWheelView *)self isMagicHead])
  {
    guidanceState = [(SFMagicHeadWheelView *)self guidanceState];
    if (fabs(v6) >= 0.00000011920929 == guidanceState > 2)
    {
      v8 = guidanceState;
      v9 = guidanceState > 2;
      [(SFMagicHeadWheelView *)self hideDots:v9 withAnimationDuration:0.2];
      [(SFMagicHeadWheelView *)self scaleDots:v9];
      window = [(SFMagicHeadWheelView *)self window];

      if (window)
      {
        [(SFMagicHeadWheelView *)self hapticsForHideDots:v8 > 2];
      }

      [(SFMagicHeadWheelView *)self hideSelection:v8 > 2];
    }

    [(SFMagicHeadWheelView *)self updatePlaceHolderView];
  }

  [(SFMagicHeadWheelView *)self updateCanChangeSelectionUI];
}

- (void)setFrame:(CGRect)frame
{
  v4.receiver = self;
  v4.super_class = SFMagicHeadWheelView;
  [(SFMagicHeadWheelView *)&v4 setFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  [(SFMagicHeadWheelView *)self setNeedsLayout];
}

- (CGRect)squareBounds
{
  [(SFMagicHeadWheelView *)self radius];
  v3 = v2 + v2;
  v4 = 0.0;
  v5 = 0.0;
  v6 = v3;
  result.size.height = v6;
  result.size.width = v3;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (CGPoint)centerOfContentBounds
{
  contentView = [(SFMagicHeadWheelView *)self contentView];
  [contentView bounds];
  MidX = CGRectGetMidX(v10);
  contentView2 = [(SFMagicHeadWheelView *)self contentView];
  [contentView2 bounds];
  MidY = CGRectGetMidY(v11);

  v7 = MidX;
  v8 = MidY;
  result.y = v8;
  result.x = v7;
  return result;
}

- (void)layoutSubviews
{
  v110 = *MEMORY[0x1E69E9840];
  v97.receiver = self;
  v97.super_class = SFMagicHeadWheelView;
  [(SFMagicHeadWheelView *)&v97 layoutSubviews];
  settings = [(SFMagicHeadWheelView *)self settings];
  [(SFMagicHeadWheelView *)self bounds];
  Width = CGRectGetWidth(v111);
  [(SFMagicHeadWheelView *)self bounds];
  Height = CGRectGetHeight(v112);
  if (Width < Height)
  {
    Height = Width;
  }

  [(SFMagicHeadWheelView *)self setRadius:Height * 0.5];
  [(SFMagicHeadWheelView *)self squareBounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  contentView = [(SFMagicHeadWheelView *)self contentView];
  [contentView setBounds:{v7, v9, v11, v13}];

  [(SFMagicHeadWheelView *)self bounds];
  MidX = CGRectGetMidX(v113);
  [(SFMagicHeadWheelView *)self bounds];
  MidY = CGRectGetMidY(v114);
  contentView2 = [(SFMagicHeadWheelView *)self contentView];
  [contentView2 setCenter:{MidX, MidY}];

  [(SFMagicHeadWheelView *)self centerOfContentBounds];
  v19 = v18;
  v21 = v20;
  [(SFMagicHeadWheelView *)self centerOfContentBounds];
  v23 = v22;
  v25 = v24;
  canChangeSelectionView = [(SFMagicHeadWheelView *)self canChangeSelectionView];
  [canChangeSelectionView setCenter:{v23, v25}];

  placeHolderView = [(SFMagicHeadWheelView *)self placeHolderView];
  [placeHolderView setBounds:{v7, v9, v11, v13}];

  placeHolderView2 = [(SFMagicHeadWheelView *)self placeHolderView];
  [placeHolderView2 setCenter:{v19, v21}];

  selectedHeadControl = [(SFMagicHeadWheelView *)self selectedHeadControl];
  [selectedHeadControl setBounds:{v7, v9, v11, v13}];

  selectedHeadControl2 = [(SFMagicHeadWheelView *)self selectedHeadControl];
  [selectedHeadControl2 setCenter:{v19, v21}];

  dotsContainer = [(SFMagicHeadWheelView *)self dotsContainer];
  [dotsContainer setBounds:{v7, v9, v11, v13}];

  dotsContainer2 = [(SFMagicHeadWheelView *)self dotsContainer];
  [dotsContainer2 setCenter:{v19, v21}];

  if ([(SFMagicHeadWheelView *)self isEnabled])
  {
    guidanceStatesEnabled = [(SFMagicHeadWheelView *)self guidanceStatesEnabled];
    if (guidanceStatesEnabled)
    {
      pitchSpringProperty = [(SFMagicHeadWheelView *)self pitchSpringProperty];
      if ([pitchSpringProperty primed])
      {
        pitchSpringProperty2 = [(SFMagicHeadWheelView *)self pitchSpringProperty];
        [pitchSpringProperty2 output];
        v37 = v36;
      }

      else
      {
        v37 = 90.0;
      }
    }

    else
    {
      v37 = 90.0;
    }

    if ([(SFMagicHeadWheelView *)self guidanceState]== 4)
    {
      [settings guidanceTooFarDegrees];
      v39 = v38;
      [settings guidanceRecoveredDegreesDelta];
      if (v37 > v39 + v40)
      {
        v41 = 3;
        goto LABEL_22;
      }

LABEL_15:
      [settings guidanceFadeHeadDegrees];
      v45 = v44;
      [settings guidanceRestoreHeadDegreesDelta];
      if (v37 <= v45 + v46)
      {
LABEL_23:
        [settings guidanceGoodAngleThreshold];
        v49 = v48;
        [settings guidanceGoodAngleThreshold];
        v51 = v50;
        [settings guidanceWorstAngleDegreesDelta];
        v53 = v51 - v52;
        [settings guidanceDipSpeed];
        v55 = 0.0;
        v56 = SFMathMap(v37, v53, v49, -(v49 * v54), 0.0);
        if (v56 < v53)
        {
          v53 = v56;
        }

        [settings guidanceRubberbandingStretchiness];
        v58 = fmin(SFMathRubberband(v53, v49, v49, v57, 0.0), 0.0);
        if ([(SFMagicHeadWheelView *)self inGuidanceStates])
        {
          contentView3 = [(SFMagicHeadWheelView *)self contentView];
          layer = [contentView3 layer];
          v61 = v58;
          v62 = v61 * 0.0174532925;
          *&v62 = v62;
          v63 = [MEMORY[0x1E696AD98] numberWithFloat:v62];
          [layer setValue:v63 forKeyPath:@"transform.rotation.x"];
        }

        if ([settings rollEnabled])
        {
          rollSpringProperty = [(SFMagicHeadWheelView *)self rollSpringProperty];
          if ([rollSpringProperty primed])
          {
            rollSpringProperty2 = [(SFMagicHeadWheelView *)self rollSpringProperty];
            [rollSpringProperty2 output];
            v55 = v66;
          }
        }

        [settings rollMaxDegrees];
        v68 = -v67;
        [settings rollMaxDegrees];
        v70 = v69;
        [settings rollRubberbandingStretchiness];
        v72 = v71;
        [settings rollRubberbandingStretchiness];
        v74 = SFMathRubberband(v55, v68, v70, v72, v73);
        if (guidanceStatesEnabled)
        {
          contentView4 = [(SFMagicHeadWheelView *)self contentView];
          layer2 = [contentView4 layer];
          v77 = v74;
          v78 = v77 * 0.0174532925;
          *&v78 = v78;
          v79 = [MEMORY[0x1E696AD98] numberWithFloat:v78];
          [layer2 setValue:v79 forKeyPath:@"transform.rotation.y"];
        }

        rotationSpringProperty = [(SFMagicHeadWheelView *)self rotationSpringProperty];
        v81 = 0.0;
        if ([rotationSpringProperty primed])
        {
          rotationSpringProperty2 = [(SFMagicHeadWheelView *)self rotationSpringProperty];
          [rotationSpringProperty2 output];
          v81 = v83;
        }

        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __38__SFMagicHeadWheelView_layoutSubviews__block_invoke;
        block[3] = &unk_1E7EE36B0;
        block[4] = self;
        *&block[5] = v81;
        dispatch_async(MEMORY[0x1E69E96A0], block);
        [(SFMagicHeadWheelView *)self updateVelocityWithCurrentAngle:v81];
        dotsContainer3 = [(SFMagicHeadWheelView *)self dotsContainer];
        [dotsContainer3 bounds];
        v85 = CGRectGetMidX(v115);
        dotsContainer4 = [(SFMagicHeadWheelView *)self dotsContainer];
        [dotsContainer4 bounds];
        v87 = CGRectGetMidY(v116);

        dots = [(SFMagicHeadWheelView *)self dots];
        v95[0] = MEMORY[0x1E69E9820];
        v95[1] = 3221225472;
        v95[2] = __38__SFMagicHeadWheelView_layoutSubviews__block_invoke_2;
        v95[3] = &unk_1E7EE36D8;
        *&v95[5] = v85;
        *&v95[6] = v87;
        v95[4] = self;
        *&v95[7] = v81;
        [dots enumerateObjectsUsingBlock:v95];

        identifierToSelectionMarkerView = [(SFMagicHeadWheelView *)self identifierToSelectionMarkerView];
        allValues = [identifierToSelectionMarkerView allValues];
        v94[0] = MEMORY[0x1E69E9820];
        v94[1] = 3221225472;
        v94[2] = __38__SFMagicHeadWheelView_layoutSubviews__block_invoke_4;
        v94[3] = &__block_descriptor_56_e38_v32__0__SFMagicHeadMarkerView_8Q16_B24l;
        *&v94[4] = v85;
        *&v94[5] = v87;
        *&v94[6] = v81;
        [allValues enumerateObjectsUsingBlock:v94];

        v91 = magic_head_log();
        if (os_log_type_enabled(v91, OS_LOG_TYPE_DEBUG))
        {
          rotationSpringProperty3 = [(SFMagicHeadWheelView *)self rotationSpringProperty];
          [rotationSpringProperty3 input];
          *buf = 134219264;
          v99 = v81;
          v100 = 2048;
          v101 = v93;
          v102 = 2048;
          v103 = v58;
          v104 = 2048;
          v105 = v37;
          v106 = 2048;
          v107 = v74;
          v108 = 2048;
          v109 = v55;
          _os_log_debug_impl(&dword_1B9E4B000, v91, OS_LOG_TYPE_DEBUG, "Motion: (adjusted/raw) yaw: %f/%f, pitch: %f/%f, roll %f/%f", buf, 0x3Eu);
        }

        goto LABEL_38;
      }

      v41 = 0;
LABEL_22:
      [(SFMagicHeadWheelView *)self transitionToGuidanceState:v41];
      goto LABEL_23;
    }

    guidanceState = [(SFMagicHeadWheelView *)self guidanceState];
    [settings guidanceTooFarDegrees];
    if (guidanceState == 3)
    {
      if (v37 >= v43)
      {
        goto LABEL_15;
      }
    }

    else if (v37 >= v43)
    {
      [settings guidanceFadeHeadDegrees];
      if (v37 >= v47)
      {
        v41 = 0;
      }

      else
      {
        v41 = 3;
      }

      goto LABEL_22;
    }

    v41 = 4;
    goto LABEL_22;
  }

LABEL_38:
}

void __38__SFMagicHeadWheelView_layoutSubviews__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 magicHeadChangedFacingDegree:*(a1 + 40)];
}

void __38__SFMagicHeadWheelView_layoutSubviews__block_invoke_2(uint64_t a1, void *a2, unint64_t a3)
{
  v5 = a2;
  [v5 setCenter:{*(a1 + 40), *(a1 + 48)}];
  v6 = *(a1 + 56) + a3 / [*(a1 + 32) numberOfDots] * 360.0;
  v7 = v6;
  v8 = v7 * 0.0174532925;
  memset(&v37, 0, sizeof(v37));
  CGAffineTransformMakeRotation(&v37, v8);
  memset(&v36, 0, sizeof(v36));
  [*(a1 + 32) radius];
  v10 = v9;
  [*(a1 + 32) dotsRadius];
  CGAffineTransformMakeTranslation(&v36, 0.0, v11 - v10);
  memset(&v35, 0, sizeof(v35));
  t1 = v36;
  t2 = v37;
  CGAffineTransformConcat(&v35, &t1, &t2);
  v12 = [*(a1 + 32) selectedHead];
  if (v12)
  {
    v13 = v12;
    v14 = [*(a1 + 32) inGuidanceStates];

    if ((v14 & 1) == 0)
    {
      [objc_opt_class() clampedRotationDegrees:v6];
      if (v15 <= 180)
      {
        v16 = 180.0 - v15;
      }

      else
      {
        v16 = (v15 - 180);
      }

      if ([*(a1 + 32) isMagicHead])
      {
        v17 = [*(a1 + 32) rotationState];
        v18 = 1.0;
        v19 = 0.0;
        if (v17 != 1)
        {
          v18 = 0.0;
        }

        if (v16 + -20.0 > 0.0)
        {
          v19 = (v16 + -20.0) / 20.0;
        }

        if (v16 < 40.0 && v17 == 1)
        {
          v21 = v19;
        }

        else
        {
          v21 = v18;
        }

        v22 = MEMORY[0x1E69DD250];
        v23 = [*(a1 + 32) settings];
        v24 = v23;
        if (fabs(v21) >= 0.00000011920929)
        {
          [v23 circlesFadeInDurationS];
        }

        else
        {
          [v23 circlesFadeOutDurationS];
        }

        v27 = v25;
        v30[0] = MEMORY[0x1E69E9820];
        v30[1] = 3221225472;
        v30[2] = __38__SFMagicHeadWheelView_layoutSubviews__block_invoke_3;
        v30[3] = &unk_1E7EE36B0;
        v31 = v5;
        v32 = v21;
        [v22 animateWithDuration:v30 animations:v27];
      }

      else if (v16 < 40.0)
      {
        v26 = 0.0;
        memset(&t1.c, 0, 32);
        if (v16 + -30.0 > 0.0)
        {
          v26 = (v16 + -30.0) / 10.0;
        }

        *&t1.a = 0uLL;
        CGAffineTransformMakeScale(&t1, v26, v26);
        v29 = t1;
        v28 = v35;
        CGAffineTransformConcat(&t2, &v29, &v28);
        v35 = t2;
      }
    }
  }

  t1 = v35;
  [v5 setTransform:&t1];
}

void __38__SFMagicHeadWheelView_layoutSubviews__block_invoke_4(double *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v5 = a2;
  [v5 setCenter:{v3, v4}];
  [v5 updateMarkerWithDegreeOffset:a1[6]];
}

- (void)updateCanChangeSelectionUI
{
  if (IsAppleInternalBuild() && (-[SFMagicHeadWheelView settings](self, "settings"), v3 = objc_claimAutoreleasedReturnValue(), v4 = [v3 showSelectionGateLock], v3, v4))
  {
    canChangeSelectionView = [(SFMagicHeadWheelView *)self canChangeSelectionView];

    if (!canChangeSelectionView)
    {
      v6 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithSize:{40.0, 40.0}];
      [(SFMagicHeadWheelView *)self setCanChangeSelectionView:v6];

      canChangeSelectionView2 = [(SFMagicHeadWheelView *)self canChangeSelectionView];
      layer = [canChangeSelectionView2 layer];
      [layer setZPosition:9999.0];

      systemRedColor = [MEMORY[0x1E69DC888] systemRedColor];
      canChangeSelectionView3 = [(SFMagicHeadWheelView *)self canChangeSelectionView];
      [canChangeSelectionView3 setTintColor:systemRedColor];

      contentView = [(SFMagicHeadWheelView *)self contentView];
      canChangeSelectionView4 = [(SFMagicHeadWheelView *)self canChangeSelectionView];
      [contentView addSubview:canChangeSelectionView4];

      v13 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"lock.fill"];
      canChangeSelectionView5 = [(SFMagicHeadWheelView *)self canChangeSelectionView];
      [canChangeSelectionView5 setImage:v13];

      v15 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"lock.open.fill"];
      canChangeSelectionView6 = [(SFMagicHeadWheelView *)self canChangeSelectionView];
      [canChangeSelectionView6 setHighlightedImage:v15];
    }

    v17 = [(SFMagicHeadWheelView *)self canChangeSelectionWithDescription:0 ignoreDisabling:1];
    canChangeSelectionView7 = [(SFMagicHeadWheelView *)self canChangeSelectionView];
    [canChangeSelectionView7 setHighlighted:v17];
  }

  else
  {
    canChangeSelectionView8 = [(SFMagicHeadWheelView *)self canChangeSelectionView];
    [canChangeSelectionView8 removeFromSuperview];

    [(SFMagicHeadWheelView *)self setCanChangeSelectionView:0];
  }
}

- (void)setMarkerViewForIdentifier:(id)identifier atPositionDegree:(double)degree
{
  identifierCopy = identifier;
  identifierToSelectionMarkerView = [(SFMagicHeadWheelView *)self identifierToSelectionMarkerView];
  v8 = [identifierToSelectionMarkerView objectForKeyedSubscript:identifierCopy];
  [v8 removeFromSuperview];

  v9 = [SFMagicHeadMarkerView alloc];
  [(SFMagicHeadWheelView *)self radius];
  v15 = [(SFMagicHeadMarkerView *)v9 initWithPositionDegree:degree containerRadius:v10];
  settings = [(SFMagicHeadWheelView *)self settings];
  -[SFMagicHeadMarkerView setHidden:](v15, "setHidden:", [settings showSelectionMarkers] ^ 1);

  dotsContainer = [(SFMagicHeadWheelView *)self dotsContainer];
  contentView = [dotsContainer contentView];
  [contentView addSubview:v15];

  identifierToSelectionMarkerView2 = [(SFMagicHeadWheelView *)self identifierToSelectionMarkerView];
  [identifierToSelectionMarkerView2 setObject:v15 forKeyedSubscript:identifierCopy];

  [(SFMagicHeadWheelView *)self setNeedsLayout];
}

- (BOOL)updateSelectedNode:(id)node
{
  nodeCopy = node;
  selectedHead = [(SFMagicHeadWheelView *)self selectedHead];
  node = [selectedHead node];
  realName = [node realName];
  realName2 = [nodeCopy realName];
  v9 = realName;
  v10 = realName2;
  v11 = v10;
  if (v9 == v10)
  {
    v12 = 1;
  }

  else if ((v9 != 0) == (v10 == 0))
  {
    v12 = 0;
  }

  else
  {
    v12 = [v9 isEqual:v10];
  }

  v13 = [(SFMagicHeadWheelView *)self configureSelectedHeadWithNode:nodeCopy slotNode:0 isSameAsSelected:v12];
  return v13;
}

- (BOOL)updateSelectedSlotNode:(id)node
{
  nodeCopy = node;
  selectedHead = [(SFMagicHeadWheelView *)self selectedHead];
  slotNode = [selectedHead slotNode];
  identifier = [slotNode identifier];
  identifier2 = [nodeCopy identifier];
  v9 = identifier;
  v10 = identifier2;
  v11 = v10;
  if (v9 == v10)
  {
    v12 = 1;
  }

  else if ((v9 != 0) == (v10 == 0))
  {
    v12 = 0;
  }

  else
  {
    v12 = [v9 isEqual:v10];
  }

  v13 = [(SFMagicHeadWheelView *)self configureSelectedHeadWithNode:0 slotNode:nodeCopy isSameAsSelected:v12];
  return v13;
}

- (BOOL)configureSelectedHeadWithNode:(id)node slotNode:(id)slotNode isSameAsSelected:(BOOL)selected
{
  selectedCopy = selected;
  nodeCopy = node;
  slotNodeCopy = slotNode;
  v10 = slotNodeCopy;
  if (!slotNodeCopy)
  {
    slotNodeCopy = nodeCopy;
  }

  selectionReason = [slotNodeCopy selectionReason];
  if (selectionReason == 2)
  {
    if (!selectedCopy)
    {
      v12 = magic_head_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1B9E4B000, v12, OS_LOG_TYPE_DEFAULT, "Selection can change due to CozyUp", buf, 2u);
      }
    }

    v13 = 0;
    goto LABEL_9;
  }

  v35 = 0;
  v24 = [(SFMagicHeadWheelView *)self canChangeSelectionWithDescription:&v35];
  v13 = v35;
  if (v24)
  {
    if (selectionReason == 1)
    {
      if (selectedCopy)
      {
        selectedHead = [(SFMagicHeadWheelView *)self selectedHead];
        pointedAt = [selectedHead pointedAt];

        if ((pointedAt & 1) == 0)
        {
          v27 = magic_head_log();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
          {
            [SFMagicHeadWheelView configureSelectedHeadWithNode:nodeCopy slotNode:v27 isSameAsSelected:?];
          }

          selectedHead2 = [(SFMagicHeadWheelView *)self selectedHead];
          [selectedHead2 setPointedAt:1];

          [(SFMagicHeadWheelView *)self pulseSelectedHead];
          [(SFMagicHeadWheelView *)self triggerReSelectedHaptic];
          selectedHead3 = [(SFMagicHeadWheelView *)self selectedHead];
          nodeIdentifier = [selectedHead3 nodeIdentifier];
          rotationSpringProperty = [(SFMagicHeadWheelView *)self rotationSpringProperty];
          [rotationSpringProperty input];
          [(SFMagicHeadWheelView *)self setMarkerViewForIdentifier:nodeIdentifier atPositionDegree:-v32];

          [(SFMagicHeadWheelView *)self transitionToGuidanceState:2];
        }
      }

      goto LABEL_13;
    }

LABEL_9:
    selectedHead4 = [(SFMagicHeadWheelView *)self selectedHead];
    pointedAt2 = [selectedHead4 pointedAt];

    if (pointedAt2)
    {
      v16 = magic_head_log();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        [SFMagicHeadWheelView configureSelectedHeadWithNode:v16 slotNode:? isSameAsSelected:?];
      }

      selectedHead5 = [(SFMagicHeadWheelView *)self selectedHead];
      [selectedHead5 setPointedAt:0];
    }

LABEL_13:
    if (nodeCopy | v10)
    {
      v18 = [SFMagicHead alloc];
      [(SFMagicHeadWheelView *)self radius];
      v20 = v19;
      settings = [(SFMagicHeadWheelView *)self settings];
      v22 = [(SFMagicHead *)v18 initWithNode:nodeCopy slotNode:v10 containerRadius:self delegate:settings settings:v20];
      v23 = [(SFMagicHeadWheelView *)self updateSelectedHead:v22];
    }

    else
    {
      v23 = !selectedCopy;
    }

    goto LABEL_26;
  }

  v33 = magic_head_log();
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
  {
    [SFMagicHeadWheelView configureSelectedHeadWithNode:v13 slotNode:v33 isSameAsSelected:?];
  }

  v23 = 0;
LABEL_26:

  return v23;
}

- (void)pulseSelectedHead
{
  settings = [(SFMagicHeadWheelView *)self settings];
  selectedPulseEnabled = [settings selectedPulseEnabled];

  if (selectedPulseEnabled)
  {
    selectionAnimator = [(SFMagicHeadWheelView *)self selectionAnimator];
    isRunning = [selectionAnimator isRunning];

    if ((isRunning & 1) == 0)
    {
      settings2 = [(SFMagicHeadWheelView *)self settings];
      [settings2 selectedPulseScaleAmount];
      v9 = v8;

      v10 = MEMORY[0x1E69DD250];
      settings3 = [(SFMagicHeadWheelView *)self settings];
      [settings3 selectedPulseDurationS];
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __41__SFMagicHeadWheelView_pulseSelectedHead__block_invoke;
      v19[3] = &unk_1E7EE36B0;
      v19[4] = self;
      v19[5] = v9;
      [v10 animateWithDuration:0 delay:v19 usingSpringWithDamping:0 initialSpringVelocity:? options:? animations:? completion:?];

      v12 = MEMORY[0x1E69DD250];
      settings4 = [(SFMagicHeadWheelView *)self settings];
      [settings4 selectedPulseDurationS];
      v15 = v14;
      settings5 = [(SFMagicHeadWheelView *)self settings];
      [settings5 selectedPulseDurationS];
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __41__SFMagicHeadWheelView_pulseSelectedHead__block_invoke_2;
      v18[3] = &unk_1E7EE3720;
      v18[4] = self;
      [v12 animateWithDuration:0 delay:v18 usingSpringWithDamping:0 initialSpringVelocity:v15 options:v17 * 0.5 animations:0.6 completion:0.0];
    }
  }
}

void __41__SFMagicHeadWheelView_pulseSelectedHead__block_invoke(uint64_t a1)
{
  CGAffineTransformMakeScale(&v4, *(a1 + 40), *(a1 + 40));
  v2 = [*(a1 + 32) selectedHead];
  v3 = v4;
  [v2 setTransform:&v3];
}

void __41__SFMagicHeadWheelView_pulseSelectedHead__block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) selectedHead];
  v2 = *(MEMORY[0x1E695EFD0] + 16);
  v3[0] = *MEMORY[0x1E695EFD0];
  v3[1] = v2;
  v3[2] = *(MEMORY[0x1E695EFD0] + 32);
  [v1 setTransform:v3];
}

- (BOOL)updateSelectedHead:(id)head
{
  v35 = *MEMORY[0x1E69E9840];
  headCopy = head;
  nodeIdentifier = [(SFMagicHead *)self->_selectedHead nodeIdentifier];
  nodeIdentifier2 = [headCopy nodeIdentifier];
  v8 = nodeIdentifier;
  v9 = nodeIdentifier2;
  v10 = v9;
  if (v8 == v9)
  {
    v11 = 1;
  }

  else if ((v8 != 0) == (v9 == 0))
  {
    v11 = 0;
  }

  else
  {
    v11 = [v8 isEqual:v9];
  }

  slotNode = [(SFMagicHead *)self->_selectedHead slotNode];
  avatarImageSlotID = [slotNode avatarImageSlotID];
  slotNode2 = [headCopy slotNode];
  avatarImageSlotID2 = [slotNode2 avatarImageSlotID];

  if ((!v11 || avatarImageSlotID != avatarImageSlotID2) && [(SFMagicHeadWheelView *)self transitionToGuidanceState:1])
  {
    v16 = self->_selectedHead;
    objc_storeStrong(&self->_selectedHead, head);
    v17 = magic_head_log();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      node = [(SFMagicHead *)self->_selectedHead node];
      v33 = 138412290;
      v34 = node;
      _os_log_impl(&dword_1B9E4B000, v17, OS_LOG_TYPE_DEFAULT, "Selecting %@", &v33, 0xCu);
    }

    if (self->_selectedHead)
    {
      nodeIdentifier3 = [headCopy nodeIdentifier];
      rotationSpringProperty = [(SFMagicHeadWheelView *)self rotationSpringProperty];
      [rotationSpringProperty input];
      [(SFMagicHeadWheelView *)self setMarkerViewForIdentifier:nodeIdentifier3 atPositionDegree:-v21];

      [(SFMagicHead *)self->_selectedHead setUserInteractionEnabled:0];
      contentView = [(SFMagicHeadWheelView *)self contentView];
      [contentView addSubview:self->_selectedHead];

      [(SFMagicHeadWheelView *)self centerOfContentBounds];
      [(SFMagicHead *)self->_selectedHead setCenter:?];
      slotNode3 = [(SFMagicHead *)self->_selectedHead slotNode];
      selectedHead = self->_selectedHead;
      if (slotNode3)
      {
        [(SFMagicHead *)selectedHead slotNode];
      }

      else
      {
        [(SFMagicHead *)selectedHead node];
      }
      v28 = ;
      selectionReason = [v28 selectionReason];

      if (selectionReason != 1)
      {
        settings = [(SFMagicHeadWheelView *)self settings];
        hapticForCozyUpSelectionEnabled = [settings hapticForCozyUpSelectionEnabled];

        if (hapticForCozyUpSelectionEnabled)
        {
          [(SFMagicHeadWheelView *)self triggerSelectedHaptic];
        }

        [(SFMagicHeadWheelView *)self cozyUpAnimationForHead:headCopy];
        goto LABEL_23;
      }

      [(SFMagicHeadWheelView *)self triggerSelectedHaptic];
      selfCopy2 = self;
      v27 = headCopy;
    }

    else
    {
      selfCopy2 = self;
      v27 = 0;
    }

    [(SFMagicHeadWheelView *)selfCopy2 selectAnimationForHead:v27 withDismissHead:v16];
LABEL_23:

    v25 = 1;
    goto LABEL_24;
  }

  v25 = 0;
LABEL_24:

  return v25;
}

- (void)updateSelectionControlState
{
  inGuidanceStates = [(SFMagicHeadWheelView *)self inGuidanceStates];
  selectedHeadControl = [(SFMagicHeadWheelView *)self selectedHeadControl];
  v5 = selectedHeadControl;
  if (inGuidanceStates)
  {
    [selectedHeadControl setEnabled:0];

    [(SFMagicHeadWheelView *)self selectedHeadHightlightCancel];
  }

  else
  {
    [selectedHeadControl setEnabled:1];
  }
}

- (void)selectedHeadHighlighted
{
  selectedHead = [(SFMagicHeadWheelView *)self selectedHead];
  [selectedHead setHighlighted:1];
}

- (void)selectedHeadHightlightCancel
{
  selectedHead = [(SFMagicHeadWheelView *)self selectedHead];
  [selectedHead setHighlighted:0];
}

- (void)selectedHeadTapped
{
  selectedHead = [(SFMagicHeadWheelView *)self selectedHead];
  node = [selectedHead node];

  if (node)
  {
    delegate = [(SFMagicHeadWheelView *)self delegate];
    [delegate magicHeadSelectedNodeTapped:node];

    [(SFMagicHeadWheelView *)self selectedHeadHightlightCancel];
  }
}

- (void)cozyUpAnimationForHead:(id)head
{
  headCopy = head;
  settings = [(SFMagicHeadWheelView *)self settings];
  [headCopy setPosition:1];
  if ([settings cozyUpAnimationEnabled])
  {
    [headCopy setSize:0];
    v6 = objc_opt_new();
    [(SFMagicHeadWheelView *)self setSelectionAnimator:v6];

    placeHolderView = [(SFMagicHeadWheelView *)self placeHolderView];
    selectionAnimator = [(SFMagicHeadWheelView *)self selectionAnimator];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __47__SFMagicHeadWheelView_cozyUpAnimationForHead___block_invoke;
    v18[3] = &unk_1E7EE3770;
    v19 = settings;
    v20 = headCopy;
    v9 = placeHolderView;
    v21 = v9;
    [selectionAnimator addAnimations:v18];

    objc_initWeak(&location, self);
    selectionAnimator = self->_selectionAnimator;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __47__SFMagicHeadWheelView_cozyUpAnimationForHead___block_invoke_3;
    v15[3] = &unk_1E7EE3798;
    objc_copyWeak(&v16, &location);
    [(UIViewPropertyAnimator *)selectionAnimator addCompletion:v15];
    delegate = [(SFMagicHeadWheelView *)self delegate];
    selectedHead = [(SFMagicHeadWheelView *)self selectedHead];
    node = [selectedHead node];
    [delegate magicHeadChangedSelectionToNode:node];

    selectionAnimator2 = [(SFMagicHeadWheelView *)self selectionAnimator];
    [selectionAnimator2 startAnimation];

    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }

  else
  {
    [headCopy setSize:2];
  }
}

void __47__SFMagicHeadWheelView_cozyUpAnimationForHead___block_invoke(id *a1)
{
  v2 = MEMORY[0x1E69DD250];
  [a1[4] cozyUpSelectDurationS];
  v4 = v3;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __47__SFMagicHeadWheelView_cozyUpAnimationForHead___block_invoke_2;
  v5[3] = &unk_1E7EE3748;
  v6 = a1[5];
  v7 = a1[6];
  [v2 animateWithDuration:v5 animations:v4];
}

uint64_t __47__SFMagicHeadWheelView_cozyUpAnimationForHead___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setSize:2];
  v2 = *(a1 + 40);

  return [v2 setAlpha:0.0];
}

void __47__SFMagicHeadWheelView_cozyUpAnimationForHead___block_invoke_3(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained transitionToGuidanceState:2];
  }
}

- (void)selectAnimationForHead:(id)head withDismissHead:(id)dismissHead
{
  headCopy = head;
  dismissHeadCopy = dismissHead;
  settings = [(SFMagicHeadWheelView *)self settings];
  if (dismissHeadCopy)
  {
    identifierToSelectionMarkerView = [(SFMagicHeadWheelView *)self identifierToSelectionMarkerView];
    nodeIdentifier = [dismissHeadCopy nodeIdentifier];
    v11 = [identifierToSelectionMarkerView objectForKeyedSubscript:nodeIdentifier];
    [v11 currentOffset];
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  [headCopy setSize:1];
  [headCopy setPosition:0];
  [headCopy setAlpha:0.0];
  v14 = objc_opt_new();
  [(SFMagicHeadWheelView *)self setSelectionAnimator:v14];

  placeHolderView = [(SFMagicHeadWheelView *)self placeHolderView];
  selectionAnimator = [(SFMagicHeadWheelView *)self selectionAnimator];
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __63__SFMagicHeadWheelView_selectAnimationForHead_withDismissHead___block_invoke;
  v32[3] = &unk_1E7EE37C0;
  v17 = headCopy;
  v33 = v17;
  v37 = 0x4077D00000000000;
  v18 = settings;
  v34 = v18;
  v19 = placeHolderView;
  v35 = v19;
  v20 = dismissHeadCopy;
  v36 = v20;
  v38 = v13;
  [selectionAnimator addAnimations:v32];

  objc_initWeak(&location, self);
  selectionAnimator = self->_selectionAnimator;
  v26 = MEMORY[0x1E69E9820];
  v27 = 3221225472;
  v28 = __63__SFMagicHeadWheelView_selectAnimationForHead_withDismissHead___block_invoke_9;
  v29 = &unk_1E7EE3798;
  objc_copyWeak(&v30, &location);
  [(UIViewPropertyAnimator *)selectionAnimator addCompletion:&v26];
  v22 = [(SFMagicHeadWheelView *)self delegate:v26];
  selectedHead = [(SFMagicHeadWheelView *)self selectedHead];
  node = [selectedHead node];
  [v22 magicHeadChangedSelectionToNode:node];

  selectionAnimator2 = [(SFMagicHeadWheelView *)self selectionAnimator];
  [selectionAnimator2 startAnimation];

  objc_destroyWeak(&v30);
  objc_destroyWeak(&location);
}

void __63__SFMagicHeadWheelView_selectAnimationForHead_withDismissHead___block_invoke(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = MEMORY[0x1E69DD250];
    v3 = *(a1 + 64);
    [*(a1 + 40) selectionPositionFriction];
    v5 = v4;
    v45[0] = MEMORY[0x1E69E9820];
    v45[1] = 3221225472;
    v45[2] = __63__SFMagicHeadWheelView_selectAnimationForHead_withDismissHead___block_invoke_2;
    v45[3] = &unk_1E7EE3720;
    v46 = *(a1 + 48);
    [v2 _animateUsingSpringWithTension:1 friction:v45 interactive:0 animations:v3 completion:v5];
    v6 = MEMORY[0x1E69DD250];
    v7 = *(a1 + 64);
    [*(a1 + 40) selectionScaleFriction];
    v9 = v8;
    v43[0] = MEMORY[0x1E69E9820];
    v43[1] = 3221225472;
    v43[2] = __63__SFMagicHeadWheelView_selectAnimationForHead_withDismissHead___block_invoke_3;
    v43[3] = &unk_1E7EE3720;
    v44 = *(a1 + 32);
    [v6 _animateUsingSpringWithTension:1 friction:v43 interactive:0 animations:v7 completion:v9];
    v10 = MEMORY[0x1E69DD250];
    v11 = *(a1 + 64);
    [*(a1 + 40) selectionAlphaFriction];
    v13 = v12;
    v41[0] = MEMORY[0x1E69E9820];
    v41[1] = 3221225472;
    v41[2] = __63__SFMagicHeadWheelView_selectAnimationForHead_withDismissHead___block_invoke_4;
    v41[3] = &unk_1E7EE3720;
    v42 = *(a1 + 32);
    [v10 _animateUsingSpringWithTension:1 friction:v41 interactive:0 animations:v11 completion:v13];
    v14 = MEMORY[0x1E69DD250];
    v15 = *(a1 + 64);
    [*(a1 + 40) selectionPositionFriction];
    v17 = v16;
    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 3221225472;
    v39[2] = __63__SFMagicHeadWheelView_selectAnimationForHead_withDismissHead___block_invoke_5;
    v39[3] = &unk_1E7EE3720;
    v40 = *(a1 + 32);
    [v14 _animateUsingSpringWithTension:1 friction:v39 interactive:0 animations:v15 completion:v17];
  }

  else
  {
    [*(a1 + 48) setAlpha:1.0];
  }

  if (*(a1 + 56))
  {
    v18 = MEMORY[0x1E69DD250];
    v19 = *(a1 + 64);
    [*(a1 + 40) dismissScaleFriction];
    v21 = v20;
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __63__SFMagicHeadWheelView_selectAnimationForHead_withDismissHead___block_invoke_6;
    v37[3] = &unk_1E7EE3720;
    v38 = *(a1 + 56);
    [v18 _animateUsingSpringWithTension:1 friction:v37 interactive:0 animations:v19 completion:v21];
    v22 = MEMORY[0x1E69DD250];
    v23 = *(a1 + 64);
    [*(a1 + 40) dismissAlphaFriction];
    v25 = v24;
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __63__SFMagicHeadWheelView_selectAnimationForHead_withDismissHead___block_invoke_7;
    v33[3] = &unk_1E7EE3770;
    v34 = *(a1 + 56);
    v35 = *(a1 + 32);
    v36 = *(a1 + 48);
    [v22 _animateUsingSpringWithTension:1 friction:v33 interactive:0 animations:v23 completion:v25];
    v26 = MEMORY[0x1E69DD250];
    v27 = *(a1 + 64);
    [*(a1 + 40) dismissPositionFriction];
    v29 = v28;
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __63__SFMagicHeadWheelView_selectAnimationForHead_withDismissHead___block_invoke_8;
    v30[3] = &unk_1E7EE36B0;
    v31 = *(a1 + 56);
    v32 = *(a1 + 72);
    [v26 _animateUsingSpringWithTension:1 friction:v30 interactive:0 animations:v27 completion:v29];
  }
}

uint64_t __63__SFMagicHeadWheelView_selectAnimationForHead_withDismissHead___block_invoke_7(uint64_t a1)
{
  result = [*(a1 + 32) setAlpha:0.0];
  if (!*(a1 + 40))
  {
    v3 = *(a1 + 48);

    return [v3 setAlpha:1.0];
  }

  return result;
}

void __63__SFMagicHeadWheelView_selectAnimationForHead_withDismissHead___block_invoke_9(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained transitionToGuidanceState:2];
  }
}

- (void)hideSelection:(BOOL)selection
{
  selectedHead = [(SFMagicHeadWheelView *)self selectedHead];

  if (selectedHead)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __38__SFMagicHeadWheelView_hideSelection___block_invoke;
    v8[3] = &unk_1E7EE37E8;
    v8[4] = self;
    selectionCopy = selection;
    [MEMORY[0x1E69DD250] performWithoutAnimation:v8];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __38__SFMagicHeadWheelView_hideSelection___block_invoke_2;
    v6[3] = &unk_1E7EE37E8;
    v6[4] = self;
    selectionCopy2 = selection;
    [MEMORY[0x1E69DD250] animateWithDuration:v6 animations:0.2];
  }
}

void __38__SFMagicHeadWheelView_hideSelection___block_invoke(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v1 = 1.0;
  }

  else
  {
    v1 = 0.0;
  }

  v2 = [*(a1 + 32) placeHolderView];
  [v2 setAlpha:v1];
}

void __38__SFMagicHeadWheelView_hideSelection___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v1 = 0.0;
  }

  else
  {
    v1 = 1.0;
  }

  v2 = [*(a1 + 32) selectedHead];
  [v2 setAlpha:v1];
}

- (void)hideDots:(BOOL)dots withAnimationDuration:(double)duration
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __55__SFMagicHeadWheelView_hideDots_withAnimationDuration___block_invoke;
  v4[3] = &unk_1E7EE37E8;
  v4[4] = self;
  dotsCopy = dots;
  [MEMORY[0x1E69DD250] animateWithDuration:v4 animations:duration];
}

void __55__SFMagicHeadWheelView_hideDots_withAnimationDuration___block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) dots];
  v2 = 1.0;
  if (*(a1 + 40))
  {
    v2 = 0.0;
  }

  v3 = [MEMORY[0x1E696AD98] numberWithDouble:v2];
  [v4 setValue:v3 forKey:@"alpha"];
}

- (void)scaleDots:(BOOL)dots
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __34__SFMagicHeadWheelView_scaleDots___block_invoke;
  v3[3] = &unk_1E7EE37E8;
  dotsCopy = dots;
  v3[4] = self;
  [MEMORY[0x1E69DD250] animateWithDuration:0 delay:v3 usingSpringWithDamping:0 initialSpringVelocity:0.7 options:0.0 animations:0.6 completion:0.0];
}

void __34__SFMagicHeadWheelView_scaleDots___block_invoke(uint64_t a1)
{
  v2 = 1.0;
  if (*(a1 + 40))
  {
    v2 = 0.5;
  }

  CGAffineTransformMakeScale(&v5, v2, v2);
  v3 = [*(a1 + 32) dotsContainer];
  v4 = v5;
  [v3 setTransform:&v4];
}

- (void)updatePlaceHolderView
{
  guidanceState = [(SFMagicHeadWheelView *)self guidanceState];
  if ([(SFMagicHeadWheelView *)self inGuidanceStates])
  {
    v4 = 1;
  }

  else
  {
    selectedHead = [(SFMagicHeadWheelView *)self selectedHead];
    v4 = selectedHead != 0;
  }

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __45__SFMagicHeadWheelView_updatePlaceHolderView__block_invoke;
  v6[3] = &unk_1E7EE3810;
  v6[4] = self;
  v7 = guidanceState == 4;
  v8 = v4;
  [MEMORY[0x1E69DD250] animateWithDuration:v6 animations:0.4];
}

void __45__SFMagicHeadWheelView_updatePlaceHolderView__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) placeHolderView];
  [v2 setTiltedTooFarColor:*(a1 + 40) useRaiseLabel:*(a1 + 41) useNoUWBCapableLabel:{objc_msgSend(*(a1 + 32), "noUWBCapableDevices")}];
}

- (void)magicHead:(id)head requestingSubtitleTextChangeForState:(int64_t)state
{
  headCopy = head;
  selectedHead = [(SFMagicHeadWheelView *)self selectedHead];
  v10 = headCopy;
  delegate = selectedHead;
  if (delegate == v10)
  {

    goto LABEL_6;
  }

  if ((v10 != 0) == (delegate == 0))
  {

    goto LABEL_8;
  }

  v9 = [v10 isEqual:delegate];

  if (v9)
  {
LABEL_6:
    delegate = [(SFMagicHeadWheelView *)self delegate];
    [delegate magicHeadSelectedHeadRequestingSubtitleTextChangeForState:state];
LABEL_8:
  }
}

- (void)magicHeadDidStartTransferForHead:(id)head
{
  headCopy = head;
  delegate = [(SFMagicHeadWheelView *)self delegate];
  node = [headCopy node];

  [delegate magicHeadDidStartTransferForNode:node];
}

- (void)magicHeadDidTerminateTransferForHead:(id)head
{
  headCopy = head;
  delegate = [(SFMagicHeadWheelView *)self delegate];
  node = [headCopy node];

  [delegate magicHeadDidTerminateTransferForNode:node];
}

- (void)magicHeadDidFinishTransferForHead:(id)head
{
  headCopy = head;
  delegate = [(SFMagicHeadWheelView *)self delegate];
  node = [headCopy node];

  [delegate magicHeadDidFinishTransferForNode:node];
}

- (void)stopSuppressGuidanceHapticsTimer
{
  suppressGuidanceHapticsTimer = self->_suppressGuidanceHapticsTimer;
  if (suppressGuidanceHapticsTimer)
  {
    v5 = suppressGuidanceHapticsTimer;
    dispatch_source_cancel(v5);
    v4 = self->_suppressGuidanceHapticsTimer;
    self->_suppressGuidanceHapticsTimer = 0;
  }
}

- (void)startSuppressGuidanceHapticsTimer
{
  [(SFMagicHeadWheelView *)self stopSuppressGuidanceHapticsTimer];
  v3 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, MEMORY[0x1E69E96A0]);
  [(SFMagicHeadWheelView *)self setSuppressGuidanceHapticsTimer:v3];

  settings = [(SFMagicHeadWheelView *)self settings];
  [settings guidanceSuppressHapticsDurationS];
  v6 = v5;

  v7 = 1000000000 * v6;
  suppressGuidanceHapticsTimer = [(SFMagicHeadWheelView *)self suppressGuidanceHapticsTimer];
  v9 = dispatch_time(0, v7);
  dispatch_source_set_timer(suppressGuidanceHapticsTimer, v9, v7, v7 >> 2);

  suppressGuidanceHapticsTimer2 = [(SFMagicHeadWheelView *)self suppressGuidanceHapticsTimer];
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __57__SFMagicHeadWheelView_startSuppressGuidanceHapticsTimer__block_invoke;
  handler[3] = &unk_1E7EE3720;
  handler[4] = self;
  dispatch_source_set_event_handler(suppressGuidanceHapticsTimer2, handler);

  suppressGuidanceHapticsTimer3 = [(SFMagicHeadWheelView *)self suppressGuidanceHapticsTimer];
  dispatch_resume(suppressGuidanceHapticsTimer3);
}

- (void)hapticsForHideDots:(BOOL)dots
{
  dotsCopy = dots;
  settings = [(SFMagicHeadWheelView *)self settings];
  [settings guidanceSuppressHapticsEnabled];
  v7 = v6;

  if (v7 == 0.0)
  {
    if (dotsCopy)
    {
LABEL_7:

      [(SFMagicHeadWheelView *)self triggerContractDotsHaptic];
      return;
    }
  }

  else
  {
    suppressGuidanceHapticsTimer = [(SFMagicHeadWheelView *)self suppressGuidanceHapticsTimer];

    if (suppressGuidanceHapticsTimer)
    {
      return;
    }

    if (dotsCopy)
    {
      goto LABEL_7;
    }

    [(SFMagicHeadWheelView *)self startSuppressGuidanceHapticsTimer];
  }

  [(SFMagicHeadWheelView *)self triggerExpandDotsHaptic];
}

- (SFMagicHeadWheelViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)configureSelectedHeadWithNode:(uint64_t)a1 slotNode:(NSObject *)a2 isSameAsSelected:.cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_1B9E4B000, a2, OS_LOG_TYPE_DEBUG, "%@", &v2, 0xCu);
}

- (void)configureSelectedHeadWithNode:(uint64_t)a1 slotNode:(NSObject *)a2 isSameAsSelected:.cold.2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_1B9E4B000, a2, OS_LOG_TYPE_DEBUG, "Re-pointing at selected person %@", &v2, 0xCu);
}

@end