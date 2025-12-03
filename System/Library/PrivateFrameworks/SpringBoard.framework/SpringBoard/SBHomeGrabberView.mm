@interface SBHomeGrabberView
- (BOOL)_autohideEffectivelyEnabled;
- (BOOL)_edgeProtectEffectivelyEnabled;
- (BOOL)homeAffordanceInteractionAllowsUserInteraction:(id)interaction;
- (BOOL)shouldBeginPointerInteractionRequest:(id)request atLocation:(CGPoint)location forView:(id)view;
- (CGRect)_effectiveHomeAffordanceViewFrame;
- (CGRect)_pointerInteractionHitTestRect;
- (CGRect)grabberFrame;
- (CGRect)grabberFrameForBounds:(CGRect)bounds;
- (CGRect)grabberHitTestRect;
- (CGRect)homeAffordanceFrameForHomeAffordanceInteraction:(id)interaction;
- (CGSize)suggestedSizeForContentWidth:(double)width;
- (SBHomeGrabberDelegate)delegate;
- (SBHomeGrabberPointerClickDelegate)pointerClickDelegate;
- (SBHomeGrabberView)initWithCoder:(id)coder;
- (SBHomeGrabberView)initWithFrame:(CGRect)frame settings:(id)settings shouldEnableGestures:(BOOL)gestures;
- (UIEdgeInsets)standardHomeAffordanceHitTestRectOutsetsForHomeAffordanceInteraction:(id)interaction;
- (double)suggestedEdgeSpacing;
- (id)_animationSettingsForTransitionFromStyle:(int64_t)style toStyle:(int64_t)toStyle fromPresence:(int64_t)presence toPresence:(int64_t)toPresence;
- (id)_effectiveLumaDodgePillSettings;
- (id)_newHomeAffordanceView;
- (id)_newPillView;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (id)regionAtLocation:(CGPoint)location forView:(id)view;
- (id)styleForRegion:(id)region forView:(id)view;
- (int64_t)_calculateLumaStyle;
- (int64_t)_calculatePresence;
- (int64_t)_calculateStyle;
- (unint64_t)_hintStyleForWindowScene:(id)scene;
- (void)_animateToStyle:(int64_t)style disallowAdditive:(BOOL)additive withAnimationSettings:(id)settings;
- (void)_notifyObserversOfDidUpdateHidden;
- (void)_setSystemPointerInteractionEnabled:(BOOL)enabled;
- (void)_updateHitTestRectVisualizationView;
- (void)_updateHomeAffordanceInteraction;
- (void)_updateIdleTouchAwarenessClient;
- (void)_updatePresence:(int64_t)presence style:(int64_t)style withAnimationSettings:(id)settings;
- (void)_updateTouchHitTestBlockingView;
- (void)addObserver:(id)observer;
- (void)assistantDidChangeHomeAffordanceDoubleTapGestureEnablement:(id)enablement;
- (void)client:(id)client attentionLostTimeoutDidExpire:(double)expire forConfigurationGeneration:(unint64_t)generation withAssociatedObject:(id)object;
- (void)clientDidResetForUserAttention:(id)attention withEvent:(id)event;
- (void)dealloc;
- (void)didMoveToWindow;
- (void)forgetBackgroundLuminance;
- (void)homeAffordanceInteraction:(id)interaction didRecognizeTouchThatShouldUnhideViewImmediately:(BOOL)immediately;
- (void)homeAffordanceInteractionDidFailToRecognizeDoubleTap:(id)tap;
- (void)homeAffordanceInteractionDidRecognizeDoubleTap:(id)tap;
- (void)homeAffordanceInteractionDidRecognizeSingleClick:(id)click;
- (void)homeAffordanceInteractionDidRecognizeSingleTap:(id)tap;
- (void)homeAffordanceInteractionHomeAffordanceHitTestRectDidChange:(id)change;
- (void)layoutSubviews;
- (void)lumaDodgePillDidDetectBackgroundLuminanceChange:(id)change;
- (void)mousePointerManager:(id)manager hardwarePointingDeviceAttachedDidChange:(BOOL)change;
- (void)pointerWillExitRegion;
- (void)removeObserver:(id)observer;
- (void)resetAutoHide;
- (void)resetAutoHideWithInitialDelay:(double)delay;
- (void)setAutoHides:(BOOL)hides;
- (void)setColorBias:(int64_t)bias;
- (void)setDelegate:(id)delegate;
- (void)setEdgeProtectEnabled:(BOOL)enabled;
- (void)setHidden:(BOOL)hidden;
- (void)setHidden:(BOOL)hidden forReason:(id)reason withAnimationSettings:(id)settings;
- (void)setHomeAffordanceInteractionEnabled:(BOOL)enabled;
- (void)setIgnoresLuminance:(BOOL)luminance;
- (void)settings:(id)settings changedValueForKeyPath:(id)path;
- (void)turnOffAutoHideWithDelay:(double)delay;
- (void)turnOnAutoHideWithInitialDelay:(double)delay;
- (void)updateStyle;
- (void)updateStyleWithAnimationSettings:(id)settings;
- (void)willMoveToWindow:(id)window;
@end

@implementation SBHomeGrabberView

- (void)_updateTouchHitTestBlockingView
{
  if (self->_touchHitTestBlockingViewBlocksTouches)
  {
    v3 = 0;
  }

  else
  {
    v3 = SBFIsSAEHungryHomeAffordanceAvailable() ^ 1;
  }

  touchHitTestBlockingView = self->_touchHitTestBlockingView;

  [(UIView *)touchHitTestBlockingView setHidden:v3];
}

- (id)_newPillView
{
  [(SBHomeGrabberView *)self grabberFrame];
  SBRectWithSize();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  _effectiveLumaDodgePillSettings = [(SBHomeGrabberView *)self _effectiveLumaDodgePillSettings];
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  sbf_homeGrabberGraphicsQuality = [currentDevice sbf_homeGrabberGraphicsQuality];

  v14 = [objc_alloc(MEMORY[0x277D26710]) initWithFrame:_effectiveLumaDodgePillSettings settings:sbf_homeGrabberGraphicsQuality graphicsQuality:{v4, v6, v8, v10}];
  return v14;
}

- (CGRect)grabberFrame
{
  [(SBHomeGrabberView *)self bounds];

  [(SBHomeGrabberView *)self grabberFrameForBounds:?];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (id)_effectiveLumaDodgePillSettings
{
  pillSettings = self->_pillSettings;
  if (pillSettings)
  {
    mEMORY[0x277D26708] = pillSettings;
  }

  else
  {
    mEMORY[0x277D26708] = [MEMORY[0x277D26708] sharedInstance];
  }

  return mEMORY[0x277D26708];
}

- (double)suggestedEdgeSpacing
{
  _effectiveLumaDodgePillSettings = [(SBHomeGrabberView *)self _effectiveLumaDodgePillSettings];
  [_effectiveLumaDodgePillSettings edgeSpacing];
  v4 = v3;

  return v4;
}

- (id)_newHomeAffordanceView
{
  v3 = objc_alloc(MEMORY[0x277D65E78]);
  [(SBHomeGrabberView *)self grabberFrame];
  v4 = [v3 initWithFrame:?];
  _sbWindowScene = [(UIView *)self _sbWindowScene];
  [v4 setHintStyle:{-[SBHomeGrabberView _hintStyleForWindowScene:](self, "_hintStyleForWindowScene:", _sbWindowScene)}];

  [v4 bs_setHitTestingDisabled:1];
  return v4;
}

- (int64_t)_calculatePresence
{
  v10 = *MEMORY[0x277D85DE8];
  if ([(NSMutableSet *)self->_hiddenOverrides count])
  {
    return 2;
  }

  if ([(SBAttentionAwarenessClient *)self->_idleTouchAwarenessClient isEnabled])
  {
    if (self->_touchState)
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      if (objc_opt_respondsToSelector())
      {
        v5 = [WeakRetained shouldAllowAutoHideForHomeGrabberView:self];
      }

      else
      {
        v5 = 0;
      }

      if (WeakRetained && (v5 & 1) == 0 && ([objc_opt_class() wantsAutoHideAlwaysEnabled] & 1) == 0)
      {
        self->_touchState = 0;
        ++self->_lastInitialHideToken;
        [(SBAttentionAwarenessClient *)self->_idleTouchAwarenessClient resetAttentionLostTimeout];
        v6 = SBLogHomeAffordance();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
        {
          v8 = 134217984;
          selfCopy = self;
          _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_INFO, "grabber=%p touch idleness changed - stopped asserting hidden for delegate override", &v8, 0xCu);
        }
      }

      touchState = self->_touchState;
      if (touchState == 2)
      {
        return 1;
      }

      else
      {
        return 2 * (touchState == 1);
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    result = [(NSMutableSet *)self->_outstandingVisibilityTransitionTokens count];
    if (result)
    {
      return self->_presence;
    }
  }

  return result;
}

- (int64_t)_calculateStyle
{
  if (self->_outstandingHintAnimationCount >= 1)
  {
    return self->_style;
  }

  if (![(SBHomeGrabberView *)self _edgeProtectEffectivelyEnabled])
  {
    goto LABEL_7;
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (!WeakRetained || (objc_opt_respondsToSelector() & 1) == 0)
  {

    return 1;
  }

  v5 = [WeakRetained shouldAllowThinStyleForHomeGrabberView:self];

  if (v5)
  {
    return 1;
  }

LABEL_7:

  return [(SBHomeGrabberView *)self _calculateLumaStyle];
}

- (BOOL)_edgeProtectEffectivelyEnabled
{
  if ([(SBFHomeGrabberSettings *)self->_settings edgeProtectOverride]== 0x7FFFFFFFFFFFFFFFLL)
  {
    return self->_edgeProtectEnabled;
  }

  return BSSettingFlagIsYes();
}

- (int64_t)_calculateLumaStyle
{
  luma = self->_luma;
  if (self->_ignoresLuminance)
  {
    luma = 0;
  }

  if (luma == 2)
  {
    return 3;
  }

  if (luma == 1)
  {
    return 4;
  }

  colorBias = self->_colorBias;
  if (colorBias == 1)
  {
    return 3;
  }

  if (colorBias == 2)
  {
    return 4;
  }

  v7 = [(SBFHomeGrabberSettings *)self->_settings initializationStyle:v2];
  if (v7 >= 3)
  {
    return 0;
  }

  else
  {
    return v7 + 2;
  }
}

- (void)_updateHomeAffordanceInteraction
{
  v3 = [(SBHomeGrabberView *)self _isInAWindow]&& ([(SBHomeGrabberView *)self isHiddenOrHasHiddenAncestor]& 1) == 0 && self->_homeAffordanceInteractionEnabled;
  homeAffordanceInteraction = self->_homeAffordanceInteraction;

  [(SBFHomeAffordanceInteraction *)homeAffordanceInteraction setEnabled:v3];
}

- (void)_updateIdleTouchAwarenessClient
{
  v10 = *MEMORY[0x277D85DE8];
  _autohideEffectivelyEnabled = [(SBHomeGrabberView *)self _autohideEffectivelyEnabled];
  isEnabled = [(SBAttentionAwarenessClient *)self->_idleTouchAwarenessClient isEnabled];
  if (_autohideEffectivelyEnabled)
  {
    if (isEnabled)
    {
      return;
    }

    [(SBAttentionAwarenessClient *)self->_idleTouchAwarenessClient resetAttentionLostTimeout];
    [(SBAttentionAwarenessClient *)self->_idleTouchAwarenessClient setEnabled:1];
    ++self->_lastInitialHideToken;
    v5 = SBLogHomeAffordance();
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      goto LABEL_13;
    }

    v8 = 134217984;
    selfCopy3 = self;
    v6 = "grabber=%p started observing touch idleness";
    goto LABEL_12;
  }

  if (!isEnabled)
  {
    return;
  }

  [(SBAttentionAwarenessClient *)self->_idleTouchAwarenessClient setEnabled:0];
  if (self->_touchState != 1)
  {
    v5 = SBLogHomeAffordance();
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
LABEL_13:

      return;
    }

    v8 = 134217984;
    selfCopy3 = self;
    v6 = "grabber=%p stopped observing touch idleness";
LABEL_12:
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_INFO, v6, &v8, 0xCu);
    goto LABEL_13;
  }

  self->_touchState = 0;
  v7 = SBLogHomeAffordance();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = 134217984;
    selfCopy3 = self;
    _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_INFO, "grabber=%p stopped observing touch idleness - stopped asserting hidden", &v8, 0xCu);
  }

  [(SBHomeGrabberView *)self updateStyle];
}

- (BOOL)_autohideEffectivelyEnabled
{
  if ([(SBFHomeGrabberSettings *)self->_settings autoHideOverride]== 0x7FFFFFFFFFFFFFFFLL)
  {
    return self->_autoHides && self->_outstandingHintAnimationCount == 0;
  }

  return BSSettingFlagIsYes();
}

- (void)_updateHitTestRectVisualizationView
{
  visualizeHitTestRect = [(SBFHomeGrabberSettings *)self->_settings visualizeHitTestRect];
  hitTestRectVisualizationView = self->_hitTestRectVisualizationView;
  if (visualizeHitTestRect)
  {
    v5 = hitTestRectVisualizationView == 0;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    [(SBFHomeAffordanceInteraction *)self->_homeAffordanceInteraction homeAffordanceHitTestRect];
    v10 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v6, v7, v8, v9}];
    v11 = self->_hitTestRectVisualizationView;
    self->_hitTestRectVisualizationView = v10;

    v12 = self->_hitTestRectVisualizationView;
    systemRedColor = [MEMORY[0x277D75348] systemRedColor];
    v14 = [systemRedColor colorWithAlphaComponent:0.5];
    [(UIView *)v12 setBackgroundColor:v14];

    [(UIView *)self->_hitTestRectVisualizationView bs_setHitTestingDisabled:1];
    v15 = self->_hitTestRectVisualizationView;

    [(SBHomeGrabberView *)self addSubview:v15];
  }

  else
  {
    if (!hitTestRectVisualizationView)
    {
      LOBYTE(visualizeHitTestRect) = 1;
    }

    if ((visualizeHitTestRect & 1) == 0)
    {
      [(UIView *)hitTestRectVisualizationView removeFromSuperview];
      v16 = self->_hitTestRectVisualizationView;
      self->_hitTestRectVisualizationView = 0;
    }
  }
}

- (void)didMoveToWindow
{
  v3.receiver = self;
  v3.super_class = SBHomeGrabberView;
  [(SBHomeGrabberView *)&v3 didMoveToWindow];
  [(SBHomeGrabberView *)self _updateIdleTouchAwarenessClient];
}

- (void)layoutSubviews
{
  [(SBHomeGrabberView *)self bounds];
  [(SBHomeGrabberView *)self grabberFrameForBounds:?];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained additionalEdgeSpacingForHomeGrabberView:self];

  homeAffordanceView = self->_homeAffordanceView;
  SBScreenScale();
  BSRectRoundForScale();
  [(SBFHomeAffordanceView *)homeAffordanceView setFrame:?];
  [(SBFHomeAffordanceInteraction *)self->_homeAffordanceInteraction setNeedsUpdate];
  [(SBFHomeAffordanceInteraction *)self->_homeAffordanceInteraction homeAffordanceHitTestRect];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [(UIView *)self->_hitTestRectVisualizationView setFrame:?];
  [(UIView *)self->_touchHitTestBlockingView setFrame:v6, v8, v10, v12];
  UIRectGetCenter();
  UIRectCenteredAboutPoint();
  [(UIView *)self->_pointerHitTestBlockingView setFrame:?];
  pointerHitTestBlockingView = self->_pointerHitTestBlockingView;
  mousePointerManager = [SBApp mousePointerManager];
  -[UIView setHidden:](pointerHitTestBlockingView, "setHidden:", [mousePointerManager isHardwarePointingDeviceAttached] ^ 1);
}

- (void)_notifyObserversOfDidUpdateHidden
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  allObjects = [(NSHashTable *)self->_observers allObjects];
  v4 = [allObjects countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(allObjects);
        }

        v8 = *(*(&v9 + 1) + 8 * v7);
        if (objc_opt_respondsToSelector())
        {
          [v8 homeGrabberViewDidUpdateHidden:self];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [allObjects countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

- (void)updateStyle
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SBHomeGrabberView updateStyle]"];
  [OUTLINED_FUNCTION_2_0(v0 v1];
}

- (CGRect)grabberHitTestRect
{
  [(SBFHomeAffordanceInteraction *)self->_homeAffordanceInteraction homeAffordanceHitTestRect];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (SBHomeGrabberView)initWithFrame:(CGRect)frame settings:(id)settings shouldEnableGestures:(BOOL)gestures
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  settingsCopy = settings;
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [SBHomeGrabberView initWithFrame:settings:shouldEnableGestures:];
  }

  v39.receiver = self;
  v39.super_class = SBHomeGrabberView;
  height = [(SBHomeGrabberView *)&v39 initWithFrame:x, y, width, height];
  v14 = height;
  if (height)
  {
    height->_shouldEnableGestures = gestures;
    rootSettings = [MEMORY[0x277D65E80] rootSettings];
    settings = v14->_settings;
    v14->_settings = rootSettings;

    [(SBFHomeGrabberSettings *)v14->_settings addKeyPathObserver:v14];
    [(SBHomeGrabberView *)v14 setAccessibilityIdentifier:@"Home Grabber"];
    objc_storeStrong(&v14->_pillSettings, settings);
    v17 = objc_alloc(MEMORY[0x277D75D18]);
    v18 = *MEMORY[0x277CBF3A0];
    v19 = *(MEMORY[0x277CBF3A0] + 8);
    v20 = *(MEMORY[0x277CBF3A0] + 16);
    v21 = *(MEMORY[0x277CBF3A0] + 24);
    v22 = [v17 initWithFrame:{*MEMORY[0x277CBF3A0], v19, v20, v21}];
    touchHitTestBlockingView = v14->_touchHitTestBlockingView;
    v14->_touchHitTestBlockingView = v22;

    layer = [(UIView *)v14->_touchHitTestBlockingView layer];
    [layer setHitTestsAsOpaque:1];

    [(SBHomeGrabberView *)v14 _updateTouchHitTestBlockingView];
    [(SBHomeGrabberView *)v14 addSubview:v14->_touchHitTestBlockingView];
    v25 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v18, v19, v20, v21}];
    pointerHitTestBlockingView = v14->_pointerHitTestBlockingView;
    v14->_pointerHitTestBlockingView = v25;

    layer2 = [(UIView *)v14->_pointerHitTestBlockingView layer];
    [layer2 setHitTestsAsOpaque:1];

    [(SBHomeGrabberView *)v14 addSubview:v14->_pointerHitTestBlockingView];
    _newPillView = [(SBHomeGrabberView *)v14 _newPillView];
    pillView = v14->_pillView;
    v14->_pillView = _newPillView;

    [(MTLumaDodgePillView *)v14->_pillView setBackgroundLumninanceObserver:v14];
    _newHomeAffordanceView = [(SBHomeGrabberView *)v14 _newHomeAffordanceView];
    homeAffordanceView = v14->_homeAffordanceView;
    v14->_homeAffordanceView = _newHomeAffordanceView;

    [(SBFHomeAffordanceView *)v14->_homeAffordanceView addContentView:v14->_pillView];
    [(SBHomeGrabberView *)v14 addSubview:v14->_homeAffordanceView];
    v32 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.SpringBoard.HomeGrabberView-%llu", ++initWithFrame_settings_shouldEnableGestures____grabberNumber];
    v33 = objc_alloc_init(MEMORY[0x277CEF768]);
    [v33 setIdentifier:v32];
    [v33 setEventMask:8];
    [(SBFHomeGrabberSettings *)v14->_settings autoHideTime];
    [v33 setAttentionLostTimeout:?];
    v34 = objc_alloc_init(SBAttentionAwarenessClient);
    idleTouchAwarenessClient = v14->_idleTouchAwarenessClient;
    v14->_idleTouchAwarenessClient = v34;

    [(SBAttentionAwarenessClient *)v14->_idleTouchAwarenessClient setDelegate:v14];
    [(SBAttentionAwarenessClient *)v14->_idleTouchAwarenessClient setConfiguration:v33];
    v14->_autoHides = [objc_opt_class() wantsAutoHideAlwaysEnabled];
    [(SBHomeGrabberView *)v14 settings:v14->_settings changedValueForKeyPath:0];
    mousePointerManager = [SBApp mousePointerManager];
    [mousePointerManager addObserver:v14];
    v14->_isSystemPointerInteractionEnabled = [mousePointerManager isHardwarePointingDeviceAttached];
    v37 = SBLogHomeAffordance();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
    {
      [SBHomeGrabberView initWithFrame:v14 settings:&v14->_pillView shouldEnableGestures:v37];
    }
  }

  return v14;
}

- (SBHomeGrabberView)initWithCoder:(id)coder
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"SBHomeGrabberView.m" lineNumber:185 description:{@"cannot call %s", "-[SBHomeGrabberView initWithCoder:]"}];

  v6 = *MEMORY[0x277CBF3A0];
  v7 = *(MEMORY[0x277CBF3A0] + 8);
  v8 = *(MEMORY[0x277CBF3A0] + 16);
  v9 = *(MEMORY[0x277CBF3A0] + 24);

  return [(SBHomeGrabberView *)self initWithFrame:v6, v7, v8, v9];
}

- (void)dealloc
{
  v9 = *MEMORY[0x277D85DE8];
  [(SBFHomeGrabberSettings *)self->_settings removeKeyPathObserver:self];
  if (self->_shouldEnableGestures && self->_isSystemPointerInteractionEnabled)
  {
    WeakRetained = objc_loadWeakRetained(&self->_systemPointerInteractionManager);
    [WeakRetained unregisterView:self];
  }

  if ([(SBAttentionAwarenessClient *)self->_idleTouchAwarenessClient isEnabled])
  {
    [(SBAttentionAwarenessClient *)self->_idleTouchAwarenessClient setEnabled:0];
    v4 = SBLogHomeAffordance();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      selfCopy = self;
      _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_INFO, "grabber=%p stopped observing touch idleness - dealloc", buf, 0xCu);
    }
  }

  [(SBAttentionAwarenessClient *)self->_idleTouchAwarenessClient setDelegate:0];
  [(SBAttentionAwarenessClient *)self->_idleTouchAwarenessClient invalidate];
  v5 = objc_loadWeakRetained(&self->_assistantController);
  [v5 removeObserver:self];

  v6.receiver = self;
  v6.super_class = SBHomeGrabberView;
  [(SBHomeGrabberView *)&v6 dealloc];
}

- (void)setDelegate:(id)delegate
{
  obj = delegate;
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [SBHomeGrabberView setDelegate:];
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_delegate, obj);
    [(SBHomeGrabberView *)self updateStyle];
    [(SBHomeGrabberView *)self setNeedsLayout];
    v5 = obj;
  }
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  if (observerCopy)
  {
    observers = self->_observers;
    v8 = observerCopy;
    if (!observers)
    {
      weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
      v7 = self->_observers;
      self->_observers = weakObjectsHashTable;

      observers = self->_observers;
    }

    [(NSHashTable *)observers addObject:v8];
    observerCopy = v8;
  }
}

- (void)removeObserver:(id)observer
{
  [(NSHashTable *)self->_observers removeObject:observer];
  if (![(NSHashTable *)self->_observers count])
  {
    observers = self->_observers;
    self->_observers = 0;
  }
}

- (void)setAutoHides:(BOOL)hides
{
  hidesCopy = hides;
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [SBHomeGrabberView setAutoHides:];
  }

  if (([objc_opt_class() wantsAutoHideAlwaysEnabled] & 1) == 0 && self->_autoHides != hidesCopy)
  {
    self->_autoHides = hidesCopy;

    [(SBHomeGrabberView *)self _updateIdleTouchAwarenessClient];
  }
}

- (void)turnOnAutoHideWithInitialDelay:(double)delay
{
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [SBHomeGrabberView turnOnAutoHideWithInitialDelay:];
  }

  if (([objc_opt_class() wantsAutoHideAlwaysEnabled] & 1) == 0 && !-[SBHomeGrabberView _autohideEffectivelyEnabled](self, "_autohideEffectivelyEnabled"))
  {
    [(SBHomeGrabberView *)self setAutoHides:1];

    [(SBHomeGrabberView *)self resetAutoHideWithInitialDelay:delay];
  }
}

- (void)turnOffAutoHideWithDelay:(double)delay
{
  v13 = *MEMORY[0x277D85DE8];
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [SBHomeGrabberView turnOffAutoHideWithDelay:];
  }

  if (([objc_opt_class() wantsAutoHideAlwaysEnabled] & 1) == 0 && -[SBHomeGrabberView _autohideEffectivelyEnabled](self, "_autohideEffectivelyEnabled"))
  {
    if (self->_touchState && BSFloatGreaterThanFloat())
    {
      self->_touchState = 2;
      v5 = SBLogHomeAffordance();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        *buf = 134218240;
        selfCopy = self;
        v11 = 2048;
        delayCopy = delay;
        _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_INFO, "grabber=%p touch idleness disabled - preparing to stop asserting hidden after %fs", buf, 0x16u);
      }

      [(SBHomeGrabberView *)self updateStyle];
      v6 = self->_lastActivatingToken + 1;
      self->_lastActivatingToken = v6;
      v7 = dispatch_time(0, (delay * 1000000000.0));
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __46__SBHomeGrabberView_turnOffAutoHideWithDelay___block_invoke;
      block[3] = &unk_2783A8C40;
      block[4] = self;
      block[5] = v6;
      *&block[6] = delay;
      dispatch_after(v7, MEMORY[0x277D85CD0], block);
    }

    [(SBHomeGrabberView *)self setAutoHides:0];
  }
}

uint64_t __46__SBHomeGrabberView_turnOffAutoHideWithDelay___block_invoke(uint64_t result)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = *(result + 32);
  if (*(v1 + 488) == 2)
  {
    v2 = result;
    if (*(result + 40) == *(v1 + 496))
    {
      *(v1 + 488) = 0;
      [*(*(result + 32) + 480) resetAttentionLostTimeout];
      v3 = SBLogHomeAffordance();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        v4 = *(v2 + 32);
        v5 = *(v2 + 48);
        v6 = 134218240;
        v7 = v4;
        v8 = 2048;
        v9 = v5;
        _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_INFO, "grabber=%p touch idleness disabled - stopped asserting hidden after %fs", &v6, 0x16u);
      }

      return [*(v2 + 32) updateStyle];
    }
  }

  return result;
}

- (void)setEdgeProtectEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [SBHomeGrabberView setEdgeProtectEnabled:];
  }

  if (self->_edgeProtectEnabled != enabledCopy)
  {
    self->_edgeProtectEnabled = enabledCopy;

    [(SBHomeGrabberView *)self updateStyle];
  }
}

- (void)forgetBackgroundLuminance
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SBHomeGrabberView forgetBackgroundLuminance]"];
  [OUTLINED_FUNCTION_2_0(v0 v1];
}

- (void)resetAutoHide
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SBHomeGrabberView resetAutoHide]"];
  [OUTLINED_FUNCTION_2_0(v0 v1];
}

- (void)resetAutoHideWithInitialDelay:(double)delay
{
  v15 = *MEMORY[0x277D85DE8];
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [SBHomeGrabberView resetAutoHideWithInitialDelay:];
  }

  [(SBHomeGrabberView *)self resetAutoHide];
  if (BSFloatGreaterThanFloat())
  {
    [(SBFHomeGrabberSettings *)self->_settings autoHideTime];
    if (BSFloatLessThanFloat())
    {
      v5 = self->_lastInitialHideToken + 1;
      self->_lastInitialHideToken = v5;
      v6 = SBLogHomeAffordance();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134218496;
        selfCopy = self;
        v11 = 2048;
        v12 = v5;
        v13 = 2048;
        delayCopy = delay;
        _os_log_debug_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEBUG, "grabber=%p touch idleness - preparing to start asserting hidden for initial delay with token=%lu after %fs", buf, 0x20u);
      }

      v7 = dispatch_time(0, (delay * 1000000000.0));
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __51__SBHomeGrabberView_resetAutoHideWithInitialDelay___block_invoke;
      block[3] = &unk_2783A8C40;
      block[4] = self;
      block[5] = v5;
      *&block[6] = delay;
      dispatch_after(v7, MEMORY[0x277D85CD0], block);
    }
  }
}

void __51__SBHomeGrabberView_resetAutoHideWithInitialDelay___block_invoke(void *a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = (a1 + 4);
  v2 = a1[4];
  if (*(v2 + 488) == 1 || a1[5] != *(v2 + 504))
  {
    v8 = SBLogHomeAffordance();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      __51__SBHomeGrabberView_resetAutoHideWithInitialDelay___block_invoke_cold_1();
    }
  }

  else
  {
    *(v2 + 488) = 1;
    v4 = SBLogHomeAffordance();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = a1[4];
      v6 = a1[5];
      v7 = a1[6];
      v9 = 134218496;
      v10 = v5;
      v11 = 2048;
      v12 = v6;
      v13 = 2048;
      v14 = v7;
      _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_INFO, "grabber=%p touch idleness changed - started asserting hidden for initial delay with token=%lu after %fs", &v9, 0x20u);
    }

    [*v3 updateStyle];
  }
}

- (void)updateStyleWithAnimationSettings:(id)settings
{
  v4 = MEMORY[0x277CCACC8];
  settingsCopy = settings;
  if (([v4 isMainThread] & 1) == 0)
  {
    [SBHomeGrabberView updateStyleWithAnimationSettings:];
  }

  [(SBHomeGrabberView *)self _updatePresence:[(SBHomeGrabberView *)self _calculatePresence] style:[(SBHomeGrabberView *)self _calculateStyle] withAnimationSettings:settingsCopy];

  [(SBHomeGrabberView *)self _updateHomeAffordanceInteraction];
}

- (CGSize)suggestedSizeForContentWidth:(double)width
{
  pillView = self->_pillView;
  if (pillView)
  {

    [(MTLumaDodgePillView *)pillView suggestedSizeForContentWidth:?];
  }

  else
  {
    v8 = objc_opt_class();
    _effectiveLumaDodgePillSettings = [(SBHomeGrabberView *)self _effectiveLumaDodgePillSettings];
    [v8 suggestedSizeForContentWidth:_effectiveLumaDodgePillSettings withSettings:width];
    v11 = v10;
    v13 = v12;

    v6 = v11;
    v7 = v13;
  }

  result.height = v7;
  result.width = v6;
  return result;
}

- (CGRect)grabberFrameForBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v8 = *(MEMORY[0x277CBF3A0] + 8);
  rect = *MEMORY[0x277CBF3A0];
  [(SBHomeGrabberView *)self suggestedSizeForContentWidth:CGRectGetWidth(bounds)];
  v10 = v9;
  v12 = v11;
  v21.origin.x = x;
  v21.origin.y = y;
  v21.size.width = width;
  v21.size.height = height;
  v13 = CGRectGetWidth(v21);
  v22.origin.x = rect;
  v22.origin.y = v8;
  v22.size.width = v10;
  v22.size.height = v12;
  v14 = (v13 - CGRectGetWidth(v22)) * 0.5;
  v23.origin.x = x;
  v23.origin.y = y;
  v23.size.width = width;
  v23.size.height = height;
  CGRectGetHeight(v23);
  v24.origin.x = v14;
  v24.origin.y = v8;
  v24.size.width = v10;
  v24.size.height = v12;
  CGRectGetHeight(v24);
  [(SBHomeGrabberView *)self suggestedEdgeSpacing];
  SBScreenScale();

  BSRectRoundForScale();
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

- (void)setColorBias:(int64_t)bias
{
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [SBHomeGrabberView setColorBias:];
  }

  if (self->_colorBias != bias)
  {
    self->_colorBias = bias;
    v5 = bias == 2 ? 1 : 2 * (bias == 1);
    [(MTLumaDodgePillView *)self->_pillView setBackgroundLuminanceBias:v5];
    if (!self->_luma)
    {

      [(SBHomeGrabberView *)self updateStyleWithAnimationSettings:0];
    }
  }
}

- (void)setHomeAffordanceInteractionEnabled:(BOOL)enabled
{
  if (self->_homeAffordanceInteractionEnabled != enabled)
  {
    self->_homeAffordanceInteractionEnabled = enabled;
    [(SBHomeGrabberView *)self _updateHomeAffordanceInteraction];
  }
}

- (void)setIgnoresLuminance:(BOOL)luminance
{
  luminanceCopy = luminance;
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [SBHomeGrabberView setIgnoresLuminance:];
  }

  if (self->_ignoresLuminance != luminanceCopy)
  {
    self->_ignoresLuminance = luminanceCopy;
    if (luminanceCopy)
    {
      selfCopy = 0;
    }

    else
    {
      selfCopy = self;
    }

    [(MTLumaDodgePillView *)self->_pillView setBackgroundLumninanceObserver:selfCopy];

    [(SBHomeGrabberView *)self updateStyleWithAnimationSettings:0];
  }
}

- (void)setHidden:(BOOL)hidden
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"SBHomeGrabberView.m" lineNumber:417 description:@"-setHidden: is unavailable on SBHomeGrabberView"];
}

- (void)setHidden:(BOOL)hidden forReason:(id)reason withAnimationSettings:(id)settings
{
  hiddenCopy = hidden;
  v26 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  settingsCopy = settings;
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    if (reasonCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [SBHomeGrabberView setHidden:forReason:withAnimationSettings:];
    if (reasonCopy)
    {
      goto LABEL_3;
    }
  }

  [SBHomeGrabberView setHidden:a2 forReason:self withAnimationSettings:?];
LABEL_3:
  v11 = [(NSMutableSet *)self->_hiddenOverrides count];
  hiddenOverrides = self->_hiddenOverrides;
  if (hiddenCopy)
  {
    if (hiddenOverrides)
    {
      v13 = [reasonCopy copy];
      [(NSMutableSet *)hiddenOverrides addObject:v13];
    }

    else
    {
      v14 = MEMORY[0x277CBEB58];
      v15 = [reasonCopy copy];
      v16 = [v14 setWithObject:v15];
      v17 = self->_hiddenOverrides;
      self->_hiddenOverrides = v16;
    }
  }

  else
  {
    [(NSMutableSet *)self->_hiddenOverrides removeObject:reasonCopy];
  }

  v18 = [(NSMutableSet *)self->_hiddenOverrides count];
  if ((v11 == 0) == (v18 != 0))
  {
    v19 = v18;
    v20 = SBLogHomeAffordance();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = @"stopped";
      if (v19)
      {
        v21 = @"started";
      }

      v22 = 134218242;
      selfCopy = self;
      v24 = 2114;
      v25 = v21;
      _os_log_impl(&dword_21ED4E000, v20, OS_LOG_TYPE_INFO, "grabber=%p local override - %{public}@ asserting hidden", &v22, 0x16u);
    }

    [(SBHomeGrabberView *)self _updatePresence:[(SBHomeGrabberView *)self _calculatePresence] style:[(SBHomeGrabberView *)self _calculateStyle] withAnimationSettings:settingsCopy];
    [(SBHomeGrabberView *)self _updateHomeAffordanceInteraction];
  }
}

- (CGRect)_effectiveHomeAffordanceViewFrame
{
  homeAffordanceView = self->_homeAffordanceView;
  if (homeAffordanceView)
  {
    [(SBFHomeAffordanceView *)homeAffordanceView frame];
  }

  else
  {
    [(SBHomeGrabberView *)self bounds];
    [(SBHomeGrabberView *)self grabberFrameForBounds:?];
  }

  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (unint64_t)_hintStyleForWindowScene:(id)scene
{
  assistantController = [scene assistantController];
  isHomeAffordanceDoubleTapGestureEnabled = [assistantController isHomeAffordanceDoubleTapGestureEnabled];

  v5 = MEMORY[0x277D66040];
  if (!isHomeAffordanceDoubleTapGestureEnabled)
  {
    v5 = MEMORY[0x277D66038];
  }

  return *v5;
}

- (id)_animationSettingsForTransitionFromStyle:(int64_t)style toStyle:(int64_t)toStyle fromPresence:(int64_t)presence toPresence:(int64_t)toPresence
{
  if (style)
  {
    v6 = presence == 0;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  if (toStyle)
  {
    v8 = toPresence == 0;
  }

  else
  {
    v8 = 0;
  }

  v9 = !v8;
  if ((v7 & 1) != 0 || !v9)
  {
    if ((v7 | v9))
    {
      if ((v7 & v9) == 1)
      {
        hideAnimationSettings = [(SBFHomeGrabberSettings *)self->_settings hideAnimationSettings];
      }

      else
      {
        if (style != 1)
        {
          LOBYTE(v9) = 1;
        }

        if (v9)
        {
          v14 = v7 ^ 1;
          settings = self->_settings;
          if (toStyle != 1)
          {
            v14 = 1;
          }

          if (v14)
          {
            [(SBFHomeGrabberSettings *)settings lumaResponseAnimationSettings];
          }

          else
          {
            [(SBFHomeGrabberSettings *)settings prominentToThinAnimationSettings];
          }
          hideAnimationSettings = ;
        }

        else
        {
          hideAnimationSettings = [(SBFHomeGrabberSettings *)self->_settings thinToProminentAnimationSettings];
        }
      }
    }

    else
    {
      hideAnimationSettings = [(SBFHomeGrabberSettings *)self->_settings unhideAnimationSettings];
    }

    v12 = hideAnimationSettings;
    bSAnimationSettings = [hideAnimationSettings BSAnimationSettings];
  }

  else
  {
    bSAnimationSettings = 0;
  }

  return bSAnimationSettings;
}

- (void)_animateToStyle:(int64_t)style disallowAdditive:(BOOL)additive withAnimationSettings:(id)settings
{
  v25 = *MEMORY[0x277D85DE8];
  settingsCopy = settings;
  if ([(MTLumaDodgePillView *)self->_pillView style]!= style)
  {
    v9 = [MEMORY[0x277CF0D38] factoryWithSettings:settingsCopy];
    v10 = v9;
    if (style < 2 || additive)
    {
      v13 = SBLogHomeAffordance();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = NSStringFromMTLumaDodgePillStyle();
        *buf = 134218498;
        selfCopy2 = self;
        v21 = 2114;
        v22 = v14;
        v23 = 2114;
        v24 = settingsCopy;
        _os_log_impl(&dword_21ED4E000, v13, OS_LOG_TYPE_INFO, "grabber=%p style change to %{public}@ with %{public}@", buf, 0x20u);
      }

      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __76__SBHomeGrabberView__animateToStyle_disallowAdditive_withAnimationSettings___block_invoke_49;
      v16[3] = &unk_2783A8BC8;
      v16[4] = self;
      v16[5] = style;
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __76__SBHomeGrabberView__animateToStyle_disallowAdditive_withAnimationSettings___block_invoke_2_50;
      v15[3] = &unk_2783B3C38;
      v15[4] = self;
      v15[5] = style;
      [MEMORY[0x277CF0D38] animateWithSettings:settingsCopy options:4 actions:v16 completion:v15];
    }

    else
    {
      [v9 setAllowsAdditiveAnimations:1];
      v11 = SBLogHomeAffordance();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = NSStringFromMTLumaDodgePillStyle();
        *buf = 134218498;
        selfCopy2 = self;
        v21 = 2114;
        v22 = v12;
        v23 = 2114;
        v24 = settingsCopy;
        _os_log_impl(&dword_21ED4E000, v11, OS_LOG_TYPE_INFO, "grabber=%p additive style change to %{public}@ with %{public}@", buf, 0x20u);
      }

      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __76__SBHomeGrabberView__animateToStyle_disallowAdditive_withAnimationSettings___block_invoke;
      v18[3] = &unk_2783A8BC8;
      v18[4] = self;
      v18[5] = style;
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __76__SBHomeGrabberView__animateToStyle_disallowAdditive_withAnimationSettings___block_invoke_2;
      v17[3] = &unk_2783B3C38;
      v17[4] = self;
      v17[5] = style;
      [MEMORY[0x277CF0D38] animateWithFactory:v10 options:4 actions:v18 completion:v17];
    }
  }
}

void __76__SBHomeGrabberView__animateToStyle_disallowAdditive_withAnimationSettings___block_invoke_2()
{
  v0 = SBLogHomeAffordance();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
  {
    __76__SBHomeGrabberView__animateToStyle_disallowAdditive_withAnimationSettings___block_invoke_2_cold_1();
  }
}

void __76__SBHomeGrabberView__animateToStyle_disallowAdditive_withAnimationSettings___block_invoke_2_50()
{
  v0 = SBLogHomeAffordance();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
  {
    __76__SBHomeGrabberView__animateToStyle_disallowAdditive_withAnimationSettings___block_invoke_2_50_cold_1();
  }
}

- (void)_updatePresence:(int64_t)presence style:(int64_t)style withAnimationSettings:(id)settings
{
  v39 = *MEMORY[0x277D85DE8];
  settingsCopy = settings;
  presence = self->_presence;
  if ((presence != 0) == (presence != 0))
  {
    if (presence)
    {
      if (presence != presence)
      {
        self->_presence = presence;
        v11 = SBLogHomeAffordance();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          v12 = NSStringFromSBHomeGrabberViewPresence(presence);
          *buf = 134218242;
          selfCopy2 = self;
          v35 = 2114;
          v36 = v12;
          _os_log_impl(&dword_21ED4E000, v11, OS_LOG_TYPE_INFO, "grabber=%p presence change to %{public}@", buf, 0x16u);
        }

        v13 = self->_presence;
        if (v13 == 1)
        {
          v26[0] = MEMORY[0x277D85DD0];
          v26[1] = 3221225472;
          v26[2] = __65__SBHomeGrabberView__updatePresence_style_withAnimationSettings___block_invoke_57;
          v26[3] = &unk_2783A8C18;
          v26[4] = self;
          [MEMORY[0x277D75D18] performWithoutAnimation:v26];
        }

        else if (v13 == 2 && ![(NSMutableSet *)self->_outstandingVisibilityTransitionTokens count]&& [(SBFHomeGrabberSettings *)self->_settings removeViewOnHide])
        {
          [(MTLumaDodgePillView *)self->_pillView setBackgroundLumninanceObserver:0];
          pillView = self->_pillView;
          self->_pillView = 0;

          [(SBFHomeAffordanceView *)self->_homeAffordanceView removeFromSuperview];
          homeAffordanceView = self->_homeAffordanceView;
          self->_homeAffordanceView = 0;

          self->_luma = 0;
        }
      }

      self->_style = style;
    }

    else
    {
      if (presence)
      {
        [SBHomeGrabberView _updatePresence:a2 style:self withAnimationSettings:?];
      }

      if (self->_style != style)
      {
        self->_style = style;
        [(SBHomeGrabberView *)self _animateToStyle:style disallowAdditive:0 withAnimationSettings:settingsCopy];
      }
    }
  }

  else
  {
    self->_presence = presence;
    self->_style = style;
    if (presence)
    {
      if ([(NSMutableSet *)self->_outstandingVisibilityTransitionTokens count])
      {
        [(SBHomeGrabberView *)self _animateToStyle:self->_style disallowAdditive:1 withAnimationSettings:settingsCopy];
      }

      else
      {
        v32[0] = MEMORY[0x277D85DD0];
        v32[1] = 3221225472;
        v32[2] = __65__SBHomeGrabberView__updatePresence_style_withAnimationSettings___block_invoke;
        v32[3] = &unk_2783A8C18;
        v32[4] = self;
        [MEMORY[0x277D75D18] performWithoutAnimation:v32];
      }
    }

    v16 = MEMORY[0x277CCABB0];
    ++self->_lastVisibilityTransitionToken;
    v17 = [v16 numberWithUnsignedInteger:?];
    outstandingVisibilityTransitionTokens = self->_outstandingVisibilityTransitionTokens;
    if (outstandingVisibilityTransitionTokens)
    {
      [(NSMutableSet *)outstandingVisibilityTransitionTokens addObject:v17];
    }

    else
    {
      v19 = [MEMORY[0x277CBEB58] setWithObject:v17];
      v20 = self->_outstandingVisibilityTransitionTokens;
      self->_outstandingVisibilityTransitionTokens = v19;
    }

    if ([objc_opt_class() wantsAutoHideAlwaysEnabled] && -[SBHomeGrabberView _hasOutstandingAnimations](self, "_hasOutstandingAnimations") && -[SBAttentionAwarenessClient isEnabled](self->_idleTouchAwarenessClient, "isEnabled"))
    {
      [(SBAttentionAwarenessClient *)self->_idleTouchAwarenessClient setEnabled:0];
    }

    v21 = [MEMORY[0x277CF0D38] factoryWithSettings:settingsCopy];
    [v21 setAllowsAdditiveAnimations:1];
    v22 = SBLogHomeAffordance();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v23 = NSStringFromSBHomeGrabberViewPresence(presence);
      *buf = 134218498;
      selfCopy2 = self;
      v35 = 2114;
      v36 = v23;
      v37 = 2114;
      v38 = settingsCopy;
      _os_log_impl(&dword_21ED4E000, v22, OS_LOG_TYPE_INFO, "grabber=%p additive presence change to %{public}@ with %{public}@", buf, 0x20u);
    }

    v24 = MEMORY[0x277CF0D38];
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __65__SBHomeGrabberView__updatePresence_style_withAnimationSettings___block_invoke_53;
    v30[3] = &unk_2783A9F58;
    v30[4] = self;
    v31 = presence != 0;
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __65__SBHomeGrabberView__updatePresence_style_withAnimationSettings___block_invoke_2;
    v27[3] = &unk_2783B6948;
    v28 = v17;
    presenceCopy = presence;
    v27[4] = self;
    v25 = v17;
    [v24 animateWithFactory:v21 options:4 actions:v30 completion:v27];
    [(SBHomeGrabberView *)self _notifyObserversOfDidUpdateHidden];
  }
}

void __65__SBHomeGrabberView__updatePresence_style_withAnimationSettings___block_invoke(uint64_t a1)
{
  v2 = (a1 + 32);
  v1 = *(a1 + 32);
  if (v1[53])
  {
    v3 = v1[68];
    v4 = v1[54];

    [v4 setStyle:v3];
  }

  else
  {
    v5 = [v1 _newPillView];
    v6 = *(*v2 + 54);
    *(*v2 + 54) = v5;

    v7 = *(*v2 + 78);
    if (v7 == 2)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2 * (v7 == 1);
    }

    [*(*v2 + 54) setBackgroundLuminanceBias:v8];
    [*(*v2 + 54) setStyle:*(*v2 + 68)];
    v9 = *v2;
    if ((*(*v2 + 609) & 1) == 0)
    {
      [v9[54] setBackgroundLumninanceObserver:?];
      v9 = *v2;
    }

    v10 = [v9 _newHomeAffordanceView];
    v11 = *(*v2 + 53);
    *(*v2 + 53) = v10;

    [*(*v2 + 53) setAlpha:0.0];
    [*(*v2 + 53) addContentView:*(*v2 + 54)];
    [*v2 addSubview:*(*v2 + 53)];
    [*v2 layoutSubviews];
    v12 = SBLogHomeAffordance();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      __65__SBHomeGrabberView__updatePresence_style_withAnimationSettings___block_invoke_cold_1();
    }
  }
}

uint64_t __65__SBHomeGrabberView__updatePresence_style_withAnimationSettings___block_invoke_53(uint64_t a1)
{
  v1 = 1.0;
  if (*(a1 + 40))
  {
    v1 = 0.0;
  }

  return [*(*(a1 + 32) + 424) setAlpha:v1];
}

void __65__SBHomeGrabberView__updatePresence_style_withAnimationSettings___block_invoke_2(uint64_t a1)
{
  v2 = SBLogHomeAffordance();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __65__SBHomeGrabberView__updatePresence_style_withAnimationSettings___block_invoke_2_cold_1(a1);
  }

  [*(*(a1 + 32) + 560) removeObject:*(a1 + 40)];
  if (![*(*(a1 + 32) + 560) count])
  {
    v3 = *(a1 + 32);
    v4 = *(v3 + 560);
    *(v3 + 560) = 0;

    if ([objc_opt_class() wantsAutoHideAlwaysEnabled] && (objc_msgSend(*(a1 + 32), "_hasOutstandingAnimations") & 1) == 0 && (objc_msgSend(*(*(a1 + 32) + 480), "isEnabled") & 1) == 0)
    {
      [*(*(a1 + 32) + 480) resetAttentionLostTimeout];
      [*(*(a1 + 32) + 480) setEnabled:1];
    }

    v5 = *(a1 + 32);
    if (*(v5 + 536) == 2)
    {
      if ([*(v5 + 408) removeViewOnHide])
      {
        [*(*(a1 + 32) + 432) setBackgroundLumninanceObserver:0];
        v6 = *(a1 + 32);
        v7 = *(v6 + 432);
        *(v6 + 432) = 0;

        [*(*(a1 + 32) + 424) removeFromSuperview];
        v8 = *(a1 + 32);
        v9 = *(v8 + 424);
        *(v8 + 424) = 0;

        *(*(a1 + 32) + 528) = 0;
      }
    }
  }
}

void __65__SBHomeGrabberView__updatePresence_style_withAnimationSettings___block_invoke_57(uint64_t a1)
{
  v2 = (a1 + 32);
  v1 = *(a1 + 32);
  if (!v1[53])
  {
    v3 = [v1 _newPillView];
    v4 = *(*v2 + 54);
    *(*v2 + 54) = v3;

    v5 = *(*v2 + 78);
    if (v5 == 2)
    {
      v6 = 1;
    }

    else
    {
      v6 = 2 * (v5 == 1);
    }

    [*(*v2 + 54) setBackgroundLuminanceBias:v6];
    [*(*v2 + 54) setStyle:*(*v2 + 68)];
    v7 = *v2;
    if ((*(*v2 + 609) & 1) == 0)
    {
      [v7[54] setBackgroundLumninanceObserver:?];
      v7 = *v2;
    }

    v8 = [v7 _newHomeAffordanceView];
    v9 = *(*v2 + 53);
    *(*v2 + 53) = v8;

    [*(*v2 + 53) setAlpha:0.0];
    [*(*v2 + 53) addContentView:*(*v2 + 54)];
    [*v2 addSubview:*(*v2 + 53)];
    [*v2 layoutSubviews];
    v10 = SBLogHomeAffordance();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      __65__SBHomeGrabberView__updatePresence_style_withAnimationSettings___block_invoke_cold_1();
    }
  }
}

- (void)_setSystemPointerInteractionEnabled:(BOOL)enabled
{
  if (self->_isSystemPointerInteractionEnabled != enabled)
  {
    self->_isSystemPointerInteractionEnabled = enabled;
    if (self->_shouldEnableGestures)
    {
      WeakRetained = objc_loadWeakRetained(&self->_systemPointerInteractionManager);
      v5 = WeakRetained;
      if (self->_isSystemPointerInteractionEnabled)
      {
        [WeakRetained registerView:self delegate:self];
      }

      else
      {
        [WeakRetained unregisterView:self];
      }
    }
  }
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  v9.receiver = self;
  v9.super_class = SBHomeGrabberView;
  v5 = [(SBHomeGrabberView *)&v9 hitTest:event withEvent:test.x, test.y];
  v6 = v5;
  if (v5 == self)
  {
    v7 = 0;
  }

  else
  {
    v7 = v5;
  }

  return v7;
}

- (void)willMoveToWindow:(id)window
{
  if (self->_shouldEnableGestures)
  {
    windowCopy = window;
    _sbWindowScene = [(UIView *)self _sbWindowScene];
    _sbWindowScene2 = [windowCopy _sbWindowScene];

    homeAffordanceInteractionManager = [_sbWindowScene homeAffordanceInteractionManager];
    homeAffordanceInteractionManager2 = [_sbWindowScene2 homeAffordanceInteractionManager];
    if (homeAffordanceInteractionManager2 != homeAffordanceInteractionManager)
    {
      homeAffordanceInteraction = self->_homeAffordanceInteraction;
      if (homeAffordanceInteraction)
      {
        [(SBFHomeAffordanceInteraction *)homeAffordanceInteraction setDelegate:0];
        [(SBHomeGrabberView *)self removeInteraction:self->_homeAffordanceInteraction];
        v10 = self->_homeAffordanceInteraction;
        self->_homeAffordanceInteraction = 0;
      }

      newHomeAffordanceInteraction = [homeAffordanceInteractionManager2 newHomeAffordanceInteraction];
      v12 = newHomeAffordanceInteraction;
      if (newHomeAffordanceInteraction)
      {
        [newHomeAffordanceInteraction setDelegate:self];
        [v12 setEnabled:self->_homeAffordanceInteractionEnabled];
        [(SBHomeGrabberView *)self addInteraction:v12];
        objc_storeStrong(&self->_homeAffordanceInteraction, v12);
      }
    }

    systemPointerInteractionManager = [_sbWindowScene systemPointerInteractionManager];
    systemPointerInteractionManager2 = [_sbWindowScene2 systemPointerInteractionManager];
    if (systemPointerInteractionManager2 != systemPointerInteractionManager)
    {
      [systemPointerInteractionManager unregisterView:self];
      if (self->_isSystemPointerInteractionEnabled && ([systemPointerInteractionManager2 isViewRegistered:self] & 1) == 0)
      {
        [systemPointerInteractionManager2 registerView:self delegate:self];
      }

      objc_storeWeak(&self->_systemPointerInteractionManager, systemPointerInteractionManager2);
    }

    assistantController = [_sbWindowScene assistantController];
    assistantController2 = [_sbWindowScene2 assistantController];
    if (assistantController2 != assistantController)
    {
      [assistantController removeObserver:self];
      [assistantController2 addObserver:self];
      objc_storeWeak(&self->_assistantController, assistantController2);
    }
  }
}

- (void)settings:(id)settings changedValueForKeyPath:(id)path
{
  [(SBHomeGrabberView *)self _updatePresence:[(SBHomeGrabberView *)self _calculatePresence:settings] style:[(SBHomeGrabberView *)self _calculateStyle] withAnimationSettings:0];
  [(SBHomeGrabberView *)self _updateHomeAffordanceInteraction];
  [(SBHomeGrabberView *)self _updateIdleTouchAwarenessClient];
  [(SBHomeGrabberView *)self _updateHitTestRectVisualizationView];

  [(SBHomeGrabberView *)self setNeedsLayout];
}

- (void)assistantDidChangeHomeAffordanceDoubleTapGestureEnablement:(id)enablement
{
  homeAffordanceView = self->_homeAffordanceView;
  _sbWindowScene = [(UIView *)self _sbWindowScene];
  [(SBFHomeAffordanceView *)homeAffordanceView setHintStyle:[(SBHomeGrabberView *)self _hintStyleForWindowScene:_sbWindowScene]];

  WeakRetained = objc_loadWeakRetained(&self->_assistantController);
  LOBYTE(_sbWindowScene) = [WeakRetained isHomeAffordanceDoubleTapGestureEnabled];

  if ((_sbWindowScene & 1) == 0)
  {
    self->_touchHitTestBlockingViewBlocksTouches = 0;

    [(SBHomeGrabberView *)self _updateTouchHitTestBlockingView];
  }
}

- (void)client:(id)client attentionLostTimeoutDidExpire:(double)expire forConfigurationGeneration:(unint64_t)generation withAssociatedObject:(id)object
{
  v10 = *MEMORY[0x277D85DE8];
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [SBHomeGrabberView client:attentionLostTimeoutDidExpire:forConfigurationGeneration:withAssociatedObject:];
  }

  if ([(SBAttentionAwarenessClient *)self->_idleTouchAwarenessClient isEnabled]&& self->_touchState != 1)
  {
    self->_touchState = 1;
    v7 = SBLogHomeAffordance();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = 134217984;
      selfCopy = self;
      _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_INFO, "grabber=%p touch idleness changed - started asserting hidden", &v8, 0xCu);
    }

    [(SBHomeGrabberView *)self updateStyle];
  }
}

- (void)clientDidResetForUserAttention:(id)attention withEvent:(id)event
{
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [SBHomeGrabberView clientDidResetForUserAttention:withEvent:];
  }
}

- (void)lumaDodgePillDidDetectBackgroundLuminanceChange:(id)change
{
  changeCopy = change;
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [SBHomeGrabberView lumaDodgePillDidDetectBackgroundLuminanceChange:];
  }

  luma = self->_luma;
  self->_luma = [changeCopy backgroundLuminance];
  v6 = SBLogHomeAffordance();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [SBHomeGrabberView lumaDodgePillDidDetectBackgroundLuminanceChange:];
  }

  if (luma)
  {
    [(SBHomeGrabberView *)self updateStyle];
  }

  else
  {
    initialLumaResponseAnimationSettings = [(SBFHomeGrabberSettings *)self->_settings initialLumaResponseAnimationSettings];
    bSAnimationSettings = [initialLumaResponseAnimationSettings BSAnimationSettings];
    [(SBHomeGrabberView *)self updateStyleWithAnimationSettings:bSAnimationSettings];
  }
}

- (CGRect)_pointerInteractionHitTestRect
{
  [(SBHomeGrabberView *)self _effectiveHomeAffordanceViewFrame];
  [(SBFHomeGrabberSettings *)self->_settings hitTestOutsetSides];
  [(SBFHomeGrabberSettings *)self->_settings hitTestOutsetTop];
  UIRectGetCenter();

  UIRectCenteredAboutPoint();
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (BOOL)shouldBeginPointerInteractionRequest:(id)request atLocation:(CGPoint)location forView:(id)view
{
  y = location.y;
  x = location.x;
  if ([request _isPencilInitiated] & 1) != 0 || (-[SBHomeGrabberView isHiddenOrHasHiddenAncestor](self, "isHiddenOrHasHiddenAncestor"))
  {
    goto LABEL_3;
  }

  _isInAWindow = [(SBHomeGrabberView *)self _isInAWindow];
  if (!_isInAWindow)
  {
    return _isInAWindow;
  }

  if ([(SBHomeGrabberView *)self _edgeProtectEffectivelyEnabled])
  {
LABEL_3:
    LOBYTE(_isInAWindow) = 0;
  }

  else
  {
    [(SBHomeGrabberView *)self _pointerInteractionHitTestRect];
    v10.x = x;
    v10.y = y;
    _isInAWindow = CGRectContainsPoint(v11, v10);
    if (_isInAWindow)
    {
      [(SBAttentionAwarenessClient *)self->_idleTouchAwarenessClient setEnabled:0];
      self->_touchState = 0;
      [(SBHomeGrabberView *)self updateStyle];
      LOBYTE(_isInAWindow) = 1;
    }
  }

  return _isInAWindow;
}

- (void)pointerWillExitRegion
{
  [(SBAttentionAwarenessClient *)self->_idleTouchAwarenessClient resetAttentionLostTimeout];
  idleTouchAwarenessClient = self->_idleTouchAwarenessClient;

  [(SBAttentionAwarenessClient *)idleTouchAwarenessClient setEnabled:1];
}

- (id)regionAtLocation:(CGPoint)location forView:(id)view
{
  v4 = MEMORY[0x277D75880];
  [(SBHomeGrabberView *)self _pointerInteractionHitTestRect:view];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = objc_opt_class();
  v14 = NSStringFromClass(v13);
  v15 = [v4 regionWithRect:v14 identifier:{v6, v8, v10, v12}];

  return v15;
}

- (id)styleForRegion:(id)region forView:(id)view
{
  if ([(SBHomeGrabberView *)self isHidden:region])
  {
    v5 = 0;
  }

  else
  {
    v6 = [objc_alloc(MEMORY[0x277D75B90]) initWithView:self->_homeAffordanceView];
    v7 = [MEMORY[0x277D75878] effectWithPreview:v6];
    [(SBHomeGrabberView *)self _effectiveHomeAffordanceViewFrame];
    v12 = [MEMORY[0x277D75888] shapeWithRoundedRect:v8 + -7.0 cornerRadius:{v9 + -4.0, v10 + 14.0, v11 + 8.0, (v10 + 14.0) * 0.5}];
    v5 = [MEMORY[0x277D75890] styleWithEffect:v7 shape:v12];
  }

  return v5;
}

- (void)mousePointerManager:(id)manager hardwarePointingDeviceAttachedDidChange:(BOOL)change
{
  objc_initWeak(&location, self);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __81__SBHomeGrabberView_mousePointerManager_hardwarePointingDeviceAttachedDidChange___block_invoke;
  block[3] = &unk_2783B1A70;
  objc_copyWeak(&v6, &location);
  changeCopy = change;
  dispatch_async(MEMORY[0x277D85CD0], block);
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __81__SBHomeGrabberView_mousePointerManager_hardwarePointingDeviceAttachedDidChange___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _setSystemPointerInteractionEnabled:*(a1 + 40)];
    [v3 setNeedsLayout];
    WeakRetained = v3;
  }
}

- (CGRect)homeAffordanceFrameForHomeAffordanceInteraction:(id)interaction
{
  [(SBHomeGrabberView *)self bounds];

  [(SBHomeGrabberView *)self grabberFrameForBounds:?];
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (UIEdgeInsets)standardHomeAffordanceHitTestRectOutsetsForHomeAffordanceInteraction:(id)interaction
{
  [(SBHomeGrabberView *)self bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [(SBHomeGrabberView *)self grabberFrameForBounds:?];
  rect = v12;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  window = [(SBHomeGrabberView *)self window];
  [window safeAreaInsets];
  v21 = v20;

  v41.origin.x = v5;
  v41.origin.y = v7;
  v41.size.width = v9;
  v41.size.height = v11;
  v22 = CGRectGetMaxY(v41) - v21;
  v42.origin.x = rect;
  v42.origin.y = v14;
  v42.size.width = v16;
  v42.size.height = v18;
  v23 = vabdd_f64(CGRectGetMaxY(v42), v22);
  _sbWindowScene = [(UIView *)self _sbWindowScene];
  assistantController = [_sbWindowScene assistantController];
  isHomeAffordanceDoubleTapGestureEnabled = [assistantController isHomeAffordanceDoubleTapGestureEnabled];

  if (isHomeAffordanceDoubleTapGestureEnabled)
  {
    v27 = v23;
  }

  else
  {
    v27 = 0.0;
  }

  [(SBFHomeGrabberSettings *)self->_settings hitTestOutsetTop];
  v29 = v27 + v28;
  if (([(SBFHomeGrabberSettings *)self->_settings constrainHitTestRectToSafeAreaInset]& (v29 > v23)) != 0)
  {
    v30 = v23;
  }

  else
  {
    v30 = v29;
  }

  [(SBFHomeGrabberSettings *)self->_settings hitTestOutsetSides];
  v32 = v31;
  _effectiveLumaDodgePillSettings = [(SBHomeGrabberView *)self _effectiveLumaDodgePillSettings];
  [_effectiveLumaDodgePillSettings edgeSpacing];
  v35 = v34;

  v36 = -v30;
  v37 = -v32;
  v38 = -v35;
  v39 = -v32;
  result.right = v39;
  result.bottom = v38;
  result.left = v37;
  result.top = v36;
  return result;
}

- (void)homeAffordanceInteractionHomeAffordanceHitTestRectDidChange:(id)change
{
  v15 = *MEMORY[0x277D85DE8];
  [(SBHomeGrabberView *)self setNeedsLayout];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  allObjects = [(NSHashTable *)self->_observers allObjects];
  v5 = [allObjects countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(allObjects);
        }

        v9 = *(*(&v10 + 1) + 8 * v8);
        if (objc_opt_respondsToSelector())
        {
          [v9 homeGrabberViewDidUpdateGrabberHitTestRect:self];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [allObjects countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (BOOL)homeAffordanceInteractionAllowsUserInteraction:(id)interaction
{
  if (![objc_opt_class() wantsAutoHideAlwaysEnabled])
  {
    if (!self->_presence)
    {
      return !self->_suppressesBounce;
    }

    return 0;
  }

  if (self->_style == 1)
  {
    return 0;
  }

  return !self->_suppressesBounce;
}

- (void)homeAffordanceInteractionDidRecognizeSingleTap:(id)tap
{
  v21 = *MEMORY[0x277D85DE8];
  tapCopy = tap;
  if ([(SBHomeGrabberView *)self homeAffordanceInteractionAllowsUserInteraction:tapCopy])
  {
    ++self->_outstandingHintAnimationCount;
    if ([objc_opt_class() wantsAutoHideAlwaysEnabled] && -[SBHomeGrabberView _hasOutstandingAnimations](self, "_hasOutstandingAnimations") && -[SBAttentionAwarenessClient isEnabled](self->_idleTouchAwarenessClient, "isEnabled"))
    {
      [(SBAttentionAwarenessClient *)self->_idleTouchAwarenessClient setEnabled:0];
    }

    objc_initWeak(&location, self);
    homeAffordanceView = self->_homeAffordanceView;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __68__SBHomeGrabberView_homeAffordanceInteractionDidRecognizeSingleTap___block_invoke;
    v17[3] = &unk_2783AC358;
    objc_copyWeak(&v18, &location);
    [(SBFHomeAffordanceView *)homeAffordanceView performHintAnimationWithCompletionHandler:v17];
    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  allObjects = [(NSHashTable *)self->_observers allObjects];
  v7 = [allObjects countByEnumeratingWithState:&v13 objects:v20 count:16];
  if (v7)
  {
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(allObjects);
        }

        v10 = *(*(&v13 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 homeGrabberViewDidRecognizeSingleTap:self];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [allObjects countByEnumeratingWithState:&v13 objects:v20 count:16];
    }

    while (v7);
  }

  WeakRetained = objc_loadWeakRetained(&self->_assistantController);
  isHomeAffordanceDoubleTapGestureEnabled = [WeakRetained isHomeAffordanceDoubleTapGestureEnabled];

  if (isHomeAffordanceDoubleTapGestureEnabled)
  {
    self->_touchHitTestBlockingViewBlocksTouches = 1;
    [(SBHomeGrabberView *)self _updateTouchHitTestBlockingView];
  }
}

void __68__SBHomeGrabberView_homeAffordanceInteractionDidRecognizeSingleTap___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    WeakRetained[59] = WeakRetained[59] - 1;
    v6 = WeakRetained;
    v3 = [objc_opt_class() wantsAutoHideAlwaysEnabled];
    v2 = v6;
    if (v3)
    {
      v4 = [v6 _hasOutstandingAnimations];
      v2 = v6;
      if ((v4 & 1) == 0)
      {
        v5 = [v6[60] isEnabled];
        v2 = v6;
        if ((v5 & 1) == 0)
        {
          [v6[60] resetAttentionLostTimeout];
          [v6[60] setEnabled:1];
          v2 = v6;
        }
      }
    }
  }
}

- (void)homeAffordanceInteractionDidRecognizeDoubleTap:(id)tap
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [(NSHashTable *)self->_observers allObjects:tap];
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v10 + 1) + 8 * v8);
        if (objc_opt_respondsToSelector())
        {
          [v9 homeGrabberViewDidRecognizeDoubleTap:self];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  self->_touchHitTestBlockingViewBlocksTouches = 0;
  [(SBHomeGrabberView *)self _updateTouchHitTestBlockingView];
}

- (void)homeAffordanceInteractionDidFailToRecognizeDoubleTap:(id)tap
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [(NSHashTable *)self->_observers allObjects:tap];
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v10 + 1) + 8 * v8);
        if (objc_opt_respondsToSelector())
        {
          [v9 homeGrabberViewDidFailToRecognizeDoubleTap:self];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  self->_touchHitTestBlockingViewBlocksTouches = 0;
  [(SBHomeGrabberView *)self _updateTouchHitTestBlockingView];
}

- (void)homeAffordanceInteractionDidRecognizeSingleClick:(id)click
{
  WeakRetained = objc_loadWeakRetained(&self->_pointerClickDelegate);
  v5 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained homeGrabberViewDidReceiveClick:self];
  }

  else
  {
    v6 = SBLogHomeAffordance();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [SBHomeGrabberView homeAffordanceInteractionDidRecognizeSingleClick:?];
    }
  }
}

- (void)homeAffordanceInteraction:(id)interaction didRecognizeTouchThatShouldUnhideViewImmediately:(BOOL)immediately
{
  immediatelyCopy = immediately;
  v18 = *MEMORY[0x277D85DE8];
  ++self->_lastInitialHideToken;
  if ([(SBAttentionAwarenessClient *)self->_idleTouchAwarenessClient isEnabled])
  {
    [(SBFHomeGrabberSettings *)self->_settings delayForUnhideOnTouch];
    v7 = v6;
    if ((BSFloatLessThanOrEqualToFloat() & 1) == 0 && (![(NSMutableSet *)self->_outstandingVisibilityTransitionTokens count]? (v8 = !immediatelyCopy) : (v8 = 0), v8))
    {
      if (self->_touchState == 1)
      {
        self->_touchState = 2;
        v10 = SBLogHomeAffordance();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          *buf = 134218240;
          selfCopy2 = self;
          v16 = 2048;
          v17 = v7;
          _os_log_impl(&dword_21ED4E000, v10, OS_LOG_TYPE_INFO, "grabber=%p touch idleness changed - preparing to stop asserting hidden after %fs", buf, 0x16u);
        }

        [(SBHomeGrabberView *)self updateStyle];
        v11 = self->_lastActivatingToken + 1;
        self->_lastActivatingToken = v11;
        v12 = dispatch_time(0, (v7 * 1000000000.0));
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __96__SBHomeGrabberView_homeAffordanceInteraction_didRecognizeTouchThatShouldUnhideViewImmediately___block_invoke;
        block[3] = &unk_2783A8C40;
        block[4] = self;
        block[5] = v11;
        *&block[6] = v7;
        dispatch_after(v12, MEMORY[0x277D85CD0], block);
      }
    }

    else if (self->_touchState)
    {
      self->_touchState = 0;
      [(SBAttentionAwarenessClient *)self->_idleTouchAwarenessClient resetAttentionLostTimeout];
      v9 = SBLogHomeAffordance();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        selfCopy2 = self;
        _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_INFO, "grabber=%p touch idleness changed - stopped asserting hidden immediately", buf, 0xCu);
      }

      [(SBHomeGrabberView *)self updateStyle];
    }
  }
}

uint64_t __96__SBHomeGrabberView_homeAffordanceInteraction_didRecognizeTouchThatShouldUnhideViewImmediately___block_invoke(uint64_t result)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = *(result + 32);
  if (*(v1 + 488) == 2)
  {
    v2 = result;
    if (*(result + 40) == *(v1 + 496))
    {
      *(v1 + 488) = 0;
      [*(*(result + 32) + 480) resetAttentionLostTimeout];
      v3 = SBLogHomeAffordance();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        v4 = *(v2 + 32);
        v5 = *(v2 + 48);
        v6 = 134218240;
        v7 = v4;
        v8 = 2048;
        v9 = v5;
        _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_INFO, "grabber=%p touch idleness changed - stopped asserting hidden after %fs", &v6, 0x16u);
      }

      return [*(v2 + 32) updateStyle];
    }
  }

  return result;
}

- (SBHomeGrabberDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (SBHomeGrabberPointerClickDelegate)pointerClickDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_pointerClickDelegate);

  return WeakRetained;
}

- (void)initWithFrame:settings:shouldEnableGestures:.cold.1()
{
  v7 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SBHomeGrabberView initWithFrame:settings:shouldEnableGestures:]"];
  [OUTLINED_FUNCTION_2_0(v0 v1];
}

- (void)initWithFrame:(uint64_t)a1 settings:(void *)a2 shouldEnableGestures:(NSObject *)a3 .cold.2(uint64_t a1, void *a2, NSObject *a3)
{
  *v3 = 134218240;
  *&v3[4] = a1;
  *&v3[12] = 2048;
  *&v3[14] = *a2;
  OUTLINED_FUNCTION_3_3(&dword_21ED4E000, a2, a3, "grabber=%p initialized with pill=%p", *v3, *&v3[8]);
}

- (void)setDelegate:.cold.1()
{
  v7 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SBHomeGrabberView setDelegate:]"];
  [OUTLINED_FUNCTION_2_0(v0 v1];
}

- (void)setAutoHides:.cold.1()
{
  v7 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SBHomeGrabberView setAutoHides:]"];
  [OUTLINED_FUNCTION_2_0(v0 v1];
}

- (void)turnOnAutoHideWithInitialDelay:.cold.1()
{
  v7 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SBHomeGrabberView turnOnAutoHideWithInitialDelay:]"];
  [OUTLINED_FUNCTION_2_0(v0 v1];
}

- (void)turnOffAutoHideWithDelay:.cold.1()
{
  v7 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SBHomeGrabberView turnOffAutoHideWithDelay:]"];
  [OUTLINED_FUNCTION_2_0(v0 v1];
}

- (void)setEdgeProtectEnabled:.cold.1()
{
  v7 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SBHomeGrabberView setEdgeProtectEnabled:]"];
  [OUTLINED_FUNCTION_2_0(v0 v1];
}

- (void)resetAutoHideWithInitialDelay:.cold.1()
{
  v7 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SBHomeGrabberView resetAutoHideWithInitialDelay:]"];
  [OUTLINED_FUNCTION_2_0(v0 v1];
}

- (void)updateStyleWithAnimationSettings:.cold.1()
{
  v7 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SBHomeGrabberView updateStyleWithAnimationSettings:]"];
  [OUTLINED_FUNCTION_2_0(v0 v1];
}

- (void)setColorBias:.cold.1()
{
  v7 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SBHomeGrabberView setColorBias:]"];
  [OUTLINED_FUNCTION_2_0(v0 v1];
}

- (void)setIgnoresLuminance:.cold.1()
{
  v7 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SBHomeGrabberView setIgnoresLuminance:]"];
  [OUTLINED_FUNCTION_2_0(v0 v1];
}

- (void)setHidden:forReason:withAnimationSettings:.cold.1()
{
  v7 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SBHomeGrabberView setHidden:forReason:withAnimationSettings:]"];
  [OUTLINED_FUNCTION_2_0(v0 v1];
}

- (void)setHidden:(uint64_t)a1 forReason:(uint64_t)a2 withAnimationSettings:.cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBHomeGrabberView.m" lineNumber:422 description:{@"Invalid parameter not satisfying: %@", @"reason"}];
}

void __76__SBHomeGrabberView__animateToStyle_disallowAdditive_withAnimationSettings___block_invoke_2_cold_1()
{
  v0 = NSStringFromMTLumaDodgePillStyle();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_12(&dword_21ED4E000, v1, v2, "grabber=%p additive style change to %{public}@ finished", v3, v4, v5, v6, v7);
}

void __76__SBHomeGrabberView__animateToStyle_disallowAdditive_withAnimationSettings___block_invoke_2_50_cold_1()
{
  v0 = NSStringFromMTLumaDodgePillStyle();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_12(&dword_21ED4E000, v1, v2, "grabber=%p style change to %{public}@ finished", v3, v4, v5, v6, v7);
}

- (void)_updatePresence:(unint64_t *)a1 style:(uint64_t)a2 withAnimationSettings:(uint64_t)a3 .cold.1(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = [MEMORY[0x277CCA890] currentHandler];
  v6 = NSStringFromSBHomeGrabberViewPresence(*a1);
  [v7 handleFailureInMethod:a2 object:a3 file:@"SBHomeGrabberView.m" lineNumber:726 description:{@"grabber=%p from visible to visible means the presence shouldn't change : %@ -> %@", a3, v6, @"visible"}];
}

void __65__SBHomeGrabberView__updatePresence_style_withAnimationSettings___block_invoke_2_cold_1(uint64_t a1)
{
  v1 = NSStringFromSBHomeGrabberViewPresence(*(a1 + 48));
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_12(&dword_21ED4E000, v2, v3, "grabber=%p additive presence change to %{public}@ finished", v4, v5, v6, v7, v8);
}

- (void)client:attentionLostTimeoutDidExpire:forConfigurationGeneration:withAssociatedObject:.cold.1()
{
  v7 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SBHomeGrabberView client:attentionLostTimeoutDidExpire:forConfigurationGeneration:withAssociatedObject:]"];
  [OUTLINED_FUNCTION_2_0(v0 v1];
}

- (void)clientDidResetForUserAttention:withEvent:.cold.1()
{
  v7 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SBHomeGrabberView clientDidResetForUserAttention:withEvent:]"];
  [OUTLINED_FUNCTION_2_0(v0 v1];
}

- (void)lumaDodgePillDidDetectBackgroundLuminanceChange:.cold.1()
{
  v7 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SBHomeGrabberView lumaDodgePillDidDetectBackgroundLuminanceChange:]"];
  [OUTLINED_FUNCTION_2_0(v0 v1];
}

- (void)lumaDodgePillDidDetectBackgroundLuminanceChange:.cold.2()
{
  v6 = NSStringFromMTLumaDodgePillBackgroundLuminance();
  OUTLINED_FUNCTION_12(&dword_21ED4E000, v0, v1, "grabber=%p luma changed to %{public}@", v2, v3, v4, v5, 2u);
}

- (void)homeAffordanceInteractionDidRecognizeSingleClick:(void *)a1 .cold.1(void *a1)
{
  v7 = [a1 window];
  OUTLINED_FUNCTION_12(&dword_21ED4E000, v1, v2, "grabber=%@ in window %@ registered a pointer click, but doesn't have a pointer click delegate.", v3, v4, v5, v6, 2u);
}

@end