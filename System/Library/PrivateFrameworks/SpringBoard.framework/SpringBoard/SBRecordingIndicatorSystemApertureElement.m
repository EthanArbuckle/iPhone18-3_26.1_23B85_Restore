@interface SBRecordingIndicatorSystemApertureElement
- (BOOL)shouldSuppressElementWhileOtherElementsPresent;
- (CGSize)sizeThatFitsSize:(CGSize)a3 forProvidedView:(id)a4;
- (NSDirectionalEdgeInsets)preferredIndicatorEdgeOutsets;
- (SAUIIndicatorLayoutHosting)layoutHost;
- (SBRecordingIndicatorManager)recordingIndicatorManager;
- (SBRecordingIndicatorSystemApertureElement)initWithInterSensorRegionIndicatorVisualRepresentation:(id)a3 microRegionIndicatorVisualRepresentation:(id)a4 recordingIndicatorManager:(id)a5 minimumOnTimeCoordinator:(id)a6;
- (SBSystemAperturePlatformElementHosting)platformElementHost;
- (void)_cancelDwellTimer;
- (void)_ensureMotRequirements;
- (void)_startDwellTimer;
- (void)dealloc;
- (void)didUpdateFixedIndicatorViewAlpha:(double)a3;
- (void)didUpdateFixedIndicatorViewBlurProgress:(double)a3;
- (void)didUpdateFixedIndicatorViewTransform:(CGAffineTransform *)a3;
- (void)didUpdateIndicatorViewAlpha:(double)a3;
- (void)didUpdateIndicatorViewBlurProgress:(double)a3;
- (void)didUpdateIndicatorViewTransform:(CGAffineTransform *)a3;
- (void)didUpdateInterSensorRegionFrameInScreenSpace:(CGRect)a3;
- (void)element:(id)a3 visibilityWillChange:(BOOL)a4;
- (void)pulse;
- (void)resetInternalState;
- (void)setInterSensorDwellTimerSatisfied:(BOOL)a3;
- (void)setMinimumOnTimeSatisfied:(BOOL)a3;
- (void)setSuppressed:(BOOL)a3;
- (void)systemApertureContainerView:(id)a3 didChangeCenter:(CGPoint)a4;
- (void)systemApertureContainerView:(id)a3 didChangeFrame:(CGRect)a4;
@end

@implementation SBRecordingIndicatorSystemApertureElement

- (void)pulse
{
  WeakRetained = objc_loadWeakRetained(&self->_platformElementHost);
  [WeakRetained elementRequestsDiscreteAnimationOfType:3];
}

- (SBRecordingIndicatorManager)recordingIndicatorManager
{
  WeakRetained = objc_loadWeakRetained(&self->_recordingIndicatorManager);

  return WeakRetained;
}

- (SBRecordingIndicatorSystemApertureElement)initWithInterSensorRegionIndicatorVisualRepresentation:(id)a3 microRegionIndicatorVisualRepresentation:(id)a4 recordingIndicatorManager:(id)a5 minimumOnTimeCoordinator:(id)a6
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v21.receiver = self;
  v21.super_class = SBRecordingIndicatorSystemApertureElement;
  v16 = [(SBRecordingIndicatorSystemApertureElement *)&v21 init];
  if (v16)
  {
    v17 = objc_opt_class();
    v18 = NSStringFromClass(v17);
    elementIdentifier = v16->_elementIdentifier;
    v16->_elementIdentifier = v18;

    objc_storeStrong(&v16->_interSensorRegionIndicator, a3);
    objc_storeStrong(&v16->_microRegionIndicator, a4);
    objc_storeWeak(&v16->_recordingIndicatorManager, v14);
    if (!v15)
    {
      [SBRecordingIndicatorSystemApertureElement initWithInterSensorRegionIndicatorVisualRepresentation:a2 microRegionIndicatorVisualRepresentation:v16 recordingIndicatorManager:? minimumOnTimeCoordinator:?];
    }

    objc_storeStrong(&v16->_minimumOnTimeCoordinator, a6);
  }

  return v16;
}

- (void)dealloc
{
  [(SBSecureIndicatorMinimumOnTimeCoordinatedBlockRegistration *)self->_minimumOnTimeAssertion invalidate];
  v3.receiver = self;
  v3.super_class = SBRecordingIndicatorSystemApertureElement;
  [(SBRecordingIndicatorSystemApertureElement *)&v3 dealloc];
}

- (void)resetInternalState
{
  [(SBRecordingIndicatorSystemApertureElement *)self _cancelDwellTimer];
  [(SBRecordingIndicatorSystemApertureElement *)self setInterSensorDwellTimerSatisfied:0];

  [(SBRecordingIndicatorSystemApertureElement *)self setMinimumOnTimeSatisfied:0];
}

- (void)setInterSensorDwellTimerSatisfied:(BOOL)a3
{
  v11 = *MEMORY[0x277D85DE8];
  if (self->_interSensorDwellTimerSatisfied != a3)
  {
    v3 = a3;
    v5 = SBLogStatusBarish();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      interSensorDwellTimerSatisfied = self->_interSensorDwellTimerSatisfied;
      v8[0] = 67109376;
      v8[1] = v3;
      v9 = 1024;
      v10 = interSensorDwellTimerSatisfied;
      _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "[Recording Indicator] element dwell time satisfied changed: %{BOOL}u; oldValue: %{BOOL}u", v8, 0xEu);
    }

    self->_interSensorDwellTimerSatisfied = v3;
    WeakRetained = objc_loadWeakRetained(&self->_layoutHost);
    [WeakRetained indicatorNeedsDisplayWellKnownLocationDidInvalidateForLayoutSpecifier:self];
  }
}

- (void)setMinimumOnTimeSatisfied:(BOOL)a3
{
  v11 = *MEMORY[0x277D85DE8];
  if (self->_minimumOnTimeSatisfied != a3)
  {
    v3 = a3;
    v5 = SBLogStatusBarish();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      minimumOnTimeSatisfied = self->_minimumOnTimeSatisfied;
      v8[0] = 67109376;
      v8[1] = v3;
      v9 = 1024;
      v10 = minimumOnTimeSatisfied;
      _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "[Recording Indicator] element MOT changed: %{BOOL}u; oldValue: %{BOOL}u", v8, 0xEu);
    }

    self->_minimumOnTimeSatisfied = v3;
    WeakRetained = objc_loadWeakRetained(&self->_layoutHost);
    [WeakRetained indicatorNeedsDisplayWellKnownLocationDidInvalidateForLayoutSpecifier:self];
  }
}

- (void)setSuppressed:(BOOL)a3
{
  self->_suppressed = a3;
  v3 = [(SBRecordingIndicatorSystemApertureElement *)self recordingIndicatorManager];
  [v3 updateRecordingIndicatorLocationIfNecessary];
}

- (BOOL)shouldSuppressElementWhileOtherElementsPresent
{
  v2 = [(SBRecordingIndicatorSystemApertureElement *)self recordingIndicatorManager];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 _shouldSuppressSystemApertureElementWhileOtherElementsPresent];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)element:(id)a3 visibilityWillChange:(BOOL)a4
{
  v4 = [(SBRecordingIndicatorSystemApertureElement *)self recordingIndicatorManager:a3];
  [v4 updateRecordingIndicatorLocationIfNecessary];
}

- (void)didUpdateIndicatorViewAlpha:(double)a3
{
  v5 = [(SBRecordingIndicatorVisualRepresentation *)self->_microRegionIndicator highLevelLayer];
  [v5 opacity];
  v7 = v6;

  v8 = [(SBRecordingIndicatorVisualRepresentation *)self->_microRegionIndicator highLevelLayer];
  *&v9 = a3;
  [v8 setOpacity:v9];

  if (v7 != a3)
  {
    if (a3 == 0.0)
    {
      [(SBRecordingIndicatorSystemApertureElement *)self setInterSensorDwellTimerSatisfied:0];
    }

    [(SBRecordingIndicatorSystemApertureElement *)self _ensureMotRequirements];
  }
}

- (void)didUpdateIndicatorViewTransform:(CGAffineTransform *)a3
{
  v4 = [(SBRecordingIndicatorVisualRepresentation *)self->_microRegionIndicator highLevelLayer];
  v5 = *&a3->c;
  v6[0] = *&a3->a;
  v6[1] = v5;
  v6[2] = *&a3->tx;
  [v4 setAffineTransform:v6];
}

- (void)didUpdateIndicatorViewBlurProgress:(double)a3
{
  v4 = [(SBRecordingIndicatorVisualRepresentation *)self->_microRegionIndicator highLevelLayer];
  [v4 setBlurRadius:a3 * 4.5];
}

- (void)didUpdateFixedIndicatorViewAlpha:(double)a3
{
  v5 = [(SBRecordingIndicatorVisualRepresentation *)self->_interSensorRegionIndicator highLevelLayer];
  [v5 opacity];
  v7 = v6;

  v8 = [(SBRecordingIndicatorVisualRepresentation *)self->_interSensorRegionIndicator highLevelLayer];
  *&v9 = a3;
  [v8 setOpacity:v9];

  if (v7 != a3)
  {
    objc_initWeak(&location, self);
    WeakRetained = objc_loadWeakRetained(&self->_platformElementHost);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __78__SBRecordingIndicatorSystemApertureElement_didUpdateFixedIndicatorViewAlpha___block_invoke_2;
    v11[3] = &unk_2783A9CE8;
    objc_copyWeak(&v12, &location);
    v11[4] = self;
    [WeakRetained performAction:&__block_literal_global_363 withCompletionUponIndicatorSettling:v11];

    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }
}

void __78__SBRecordingIndicatorSystemApertureElement_didUpdateFixedIndicatorViewAlpha___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v6 = WeakRetained;
    [*(a1 + 32) _ensureMotRequirements];
    v3 = [*(*(a1 + 32) + 48) highLevelLayer];
    [v3 opacity];
    v5 = v4;

    if (v5 <= 0.0)
    {
      [v6 _cancelDwellTimer];
    }

    else
    {
      [v6 _startDwellTimer];
    }

    WeakRetained = v6;
  }
}

- (void)_startDwellTimer
{
  if (!self->_interSensorDwellTimer && !self->_interSensorDwellTimerSatisfied)
  {
    v3 = [objc_alloc(MEMORY[0x277CF0BD8]) initWithIdentifier:@"com.apple.springboard.SBRecordingIndicatorSystemApertureElement.interSensorDwellTimer"];
    interSensorDwellTimer = self->_interSensorDwellTimer;
    self->_interSensorDwellTimer = v3;

    objc_initWeak(&location, self);
    v5 = self->_interSensorDwellTimer;
    v6 = MEMORY[0x277D85CD0];
    v7 = MEMORY[0x277D85CD0];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __61__SBRecordingIndicatorSystemApertureElement__startDwellTimer__block_invoke;
    v8[3] = &unk_2783A8AE8;
    objc_copyWeak(&v9, &location);
    [(BSContinuousMachTimer *)v5 scheduleWithFireInterval:v6 leewayInterval:v8 queue:2.0 handler:0.0];

    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }
}

void __61__SBRecordingIndicatorSystemApertureElement__startDwellTimer__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained setInterSensorDwellTimerSatisfied:1];
    [v2 _cancelDwellTimer];
    WeakRetained = v2;
  }
}

- (void)_ensureMotRequirements
{
  *&v18[7] = *MEMORY[0x277D85DE8];
  v3 = [(SBSecureIndicatorMinimumOnTimeCoordinator *)self->_minimumOnTimeCoordinator isMinimumOnTimeSatisfiedForIndicators:3];
  v4 = SBLogStatusBarish();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    minimumOnTimeSatisfied = self->_minimumOnTimeSatisfied;
    minimumOnTimeAssertion = self->_minimumOnTimeAssertion;
    LODWORD(buf) = 67109634;
    HIDWORD(buf) = v3;
    v17 = 1024;
    *v18 = minimumOnTimeSatisfied;
    v18[2] = 2112;
    *&v18[3] = minimumOnTimeAssertion;
    _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "[Recording Indicator] element MOT evaluating: %{BOOL}u; oldValue: %{BOOL}u; %@", &buf, 0x18u);
  }

  [(SBRecordingIndicatorSystemApertureElement *)self setMinimumOnTimeSatisfied:v3];
  v7 = self->_minimumOnTimeAssertion;
  if (v3)
  {
    [(SBSecureIndicatorMinimumOnTimeCoordinatedBlockRegistration *)v7 invalidate];
    v8 = self->_minimumOnTimeAssertion;
    self->_minimumOnTimeAssertion = 0;
  }

  else if (!v7)
  {
    v9 = SBLogStatusBarish();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = self->_minimumOnTimeAssertion;
      buf = 67109378;
      v17 = 2112;
      *v18 = v10;
      _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEFAULT, "[Recording Indicator] element registering for MOT satisfied changes: %{BOOL}u; %@", &buf, 0x12u);
    }

    objc_initWeak(&buf, self);
    minimumOnTimeCoordinator = self->_minimumOnTimeCoordinator;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __67__SBRecordingIndicatorSystemApertureElement__ensureMotRequirements__block_invoke;
    v14[3] = &unk_2783A8C68;
    objc_copyWeak(&v15, &buf);
    v12 = [(SBSecureIndicatorMinimumOnTimeCoordinator *)minimumOnTimeCoordinator performWhenMinimumOnTimeIsSatisfiedForIndicators:3 block:v14];
    v13 = self->_minimumOnTimeAssertion;
    self->_minimumOnTimeAssertion = v12;

    objc_destroyWeak(&v15);
    objc_destroyWeak(&buf);
  }
}

void __67__SBRecordingIndicatorSystemApertureElement__ensureMotRequirements__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _ensureMotRequirements];
}

- (void)_cancelDwellTimer
{
  [(BSContinuousMachTimer *)self->_interSensorDwellTimer invalidate];
  interSensorDwellTimer = self->_interSensorDwellTimer;
  self->_interSensorDwellTimer = 0;
}

- (void)didUpdateFixedIndicatorViewTransform:(CGAffineTransform *)a3
{
  v4 = [(SBRecordingIndicatorVisualRepresentation *)self->_interSensorRegionIndicator highLevelLayer];
  v5 = *&a3->c;
  v6[0] = *&a3->a;
  v6[1] = v5;
  v6[2] = *&a3->tx;
  [v4 setAffineTransform:v6];
}

- (void)didUpdateFixedIndicatorViewBlurProgress:(double)a3
{
  v4 = [(SBRecordingIndicatorVisualRepresentation *)self->_interSensorRegionIndicator highLevelLayer];
  [v4 setBlurRadius:a3 * 4.5];
}

- (void)didUpdateInterSensorRegionFrameInScreenSpace:(CGRect)a3
{
  v3 = [(SBRecordingIndicatorVisualRepresentation *)self->_interSensorRegionIndicator highLevelLayer];
  UIRectGetCenter();
  [v3 setPosition:?];
}

- (void)systemApertureContainerView:(id)a3 didChangeCenter:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v6 = [(SBRecordingIndicatorVisualRepresentation *)self->_microRegionIndicator highLevelLayer];
  [v6 setPosition:{x, y}];
}

- (void)systemApertureContainerView:(id)a3 didChangeFrame:(CGRect)a4
{
  v4 = [(SBRecordingIndicatorVisualRepresentation *)self->_microRegionIndicator highLevelLayer];
  UIRectGetCenter();
  [v4 setPosition:?];
}

- (NSDirectionalEdgeInsets)preferredIndicatorEdgeOutsets
{
  v2 = SBFEffectiveArtworkSubtype();
  v3 = -3.83333333;
  if (v2 != 2736)
  {
    v3 = -3.0;
  }

  v4 = v3;
  v5 = v3;
  v6 = v3;
  result.trailing = v6;
  result.bottom = v5;
  result.leading = v4;
  result.top = v3;
  return result;
}

- (CGSize)sizeThatFitsSize:(CGSize)a3 forProvidedView:(id)a4
{
  v5 = a4;
  v6 = [(SBRecordingIndicatorVisualRepresentation *)self->_interSensorRegionIndicator contentView];
  [v6 bounds];
  v8 = v7;
  v10 = v9;

  if (*MEMORY[0x277CBF3A8] == v8 && *(MEMORY[0x277CBF3A8] + 8) == v10)
  {
    v12 = SBHScreenTypeForCurrentDevice();
    v13 = [v5 window];
    v14 = [v13 windowScene];
    v15 = [v14 screen];
    [SBRecordingIndicatorVisualRepresentation indicatorFrameForScreenType:v12 screen:v15 style:3];
    v8 = v16;
    v10 = v17;
  }

  v18 = v8;
  v19 = v10;
  result.height = v19;
  result.width = v18;
  return result;
}

- (SBSystemAperturePlatformElementHosting)platformElementHost
{
  WeakRetained = objc_loadWeakRetained(&self->_platformElementHost);

  return WeakRetained;
}

- (SAUIIndicatorLayoutHosting)layoutHost
{
  WeakRetained = objc_loadWeakRetained(&self->_layoutHost);

  return WeakRetained;
}

- (void)initWithInterSensorRegionIndicatorVisualRepresentation:(uint64_t)a1 microRegionIndicatorVisualRepresentation:(uint64_t)a2 recordingIndicatorManager:minimumOnTimeCoordinator:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBRecordingIndicatorSystemApertureElement.m" lineNumber:65 description:{@"Invalid parameter not satisfying: %@", @"minimumOnTimeCoordinator"}];
}

@end