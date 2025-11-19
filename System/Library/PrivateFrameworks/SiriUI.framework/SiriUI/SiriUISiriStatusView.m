@interface SiriUISiriStatusView
+ (CGRect)activeFrameForScreen:(id)a3 frame:(CGRect)a4 safeAreaInsets:(UIEdgeInsets)a5;
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (CGRect)_flamesFrame;
- (CGRect)_flamesViewFrame;
- (CGRect)_siriGlyphTappableRect;
- (CGSize)sizeThatFits:(CGSize)result;
- (SiriUISiriStatusView)initWithFrame:(CGRect)a3 screen:(id)a4 textInputEnabled:(BOOL)a5 configuration:(id)a6;
- (SiriUISiriStatusViewAnimationDelegate)animationDelegate;
- (SiriUISiriStatusViewDelegate)delegate;
- (UIEdgeInsets)safeAreaInsets;
- (float)audioLevelForFlamesView:(id)a3;
- (id)_flamesView;
- (void)_animateSiriGlyphHidden:(BOOL)a3;
- (void)_attachFlamesViewIfNeeded;
- (void)_handleKeyboardDidShowNotification:(id)a3;
- (void)_handleKeyboardWillHideNotification:(id)a3;
- (void)_layoutFlamesViewIfNeeded;
- (void)_micButtonHeld:(id)a3;
- (void)_micButtonTapped:(id)a3;
- (void)_setupOrbIfNeeded:(id)a3;
- (void)dealloc;
- (void)forceMicVisible:(BOOL)a3;
- (void)layoutSubviews;
- (void)setFlamesViewDeferred:(BOOL)a3;
- (void)setInUITrackingMode:(BOOL)a3;
- (void)setMode:(int64_t)a3;
- (void)setPaused:(BOOL)a3;
@end

@implementation SiriUISiriStatusView

- (SiriUISiriStatusView)initWithFrame:(CGRect)a3 screen:(id)a4 textInputEnabled:(BOOL)a5 configuration:(id)a6
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v14 = a4;
  v15 = a6;
  v40.receiver = self;
  v40.super_class = SiriUISiriStatusView;
  v16 = [(SiriUISiriStatusView *)&v40 initWithFrame:x, y, width, height];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_screen, a4);
    objc_storeStrong(&v17->_configuration, a6);
    v17->_textInputEnabled = a5;
    v18 = objc_alloc(MEMORY[0x277D75D18]);
    v19 = [v18 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    touchInputView = v17->_touchInputView;
    v17->_touchInputView = v19;

    v21 = v17->_touchInputView;
    v22 = [MEMORY[0x277D75348] clearColor];
    [(UIView *)v21 setBackgroundColor:v22];

    v23 = [(UIView *)v17->_touchInputView layer];
    [v23 setHitTestsAsOpaque:1];

    [(SiriUISiriStatusView *)v17 addSubview:v17->_touchInputView];
    v24 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{0.0, 0.0, 85.0, 85.0}];
    glyphView = v17->_glyphView;
    v17->_glyphView = v24;

    [(UIView *)v17->_glyphView setAlpha:0.0];
    [(UIView *)v17->_glyphView setHidden:v17->_textInputEnabled];
    v26 = v17->_glyphView;
    v27 = [MEMORY[0x277D75348] clearColor];
    [(UIView *)v26 setBackgroundColor:v27];

    v28 = [(UIView *)v17->_glyphView layer];
    [v28 setAllowsGroupBlending:0];

    [(SiriUISiriStatusView *)v17 insertSubview:v17->_glyphView below:v17->_touchInputView];
    v29 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v30 = dispatch_queue_create("SiriUIStatusView.GlyphConfigurationQueue", v29);
    glyphConfigurationQueue = v17->_glyphConfigurationQueue;
    v17->_glyphConfigurationQueue = v30;

    v32 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:v17 action:sel__micButtonTapped_];
    [v32 setDelegate:v17];
    [(UIView *)v17->_touchInputView addGestureRecognizer:v32];
    v33 = [objc_alloc(MEMORY[0x277D75708]) initWithTarget:v17 action:sel__micButtonHeld_];
    longPressRecognizer = v17->_longPressRecognizer;
    v17->_longPressRecognizer = v33;

    [(UILongPressGestureRecognizer *)v17->_longPressRecognizer setMinimumPressDuration:0.1];
    [(UILongPressGestureRecognizer *)v17->_longPressRecognizer setDelegate:v17];
    [(UIView *)v17->_touchInputView addGestureRecognizer:v17->_longPressRecognizer];
    v35 = objc_alloc(MEMORY[0x277D75D18]);
    [(SiriUISiriStatusView *)v17 bounds];
    v36 = [v35 initWithFrame:?];
    flamesContainerView = v17->_flamesContainerView;
    v17->_flamesContainerView = v36;

    [(SiriUISiriStatusView *)v17 insertSubview:v17->_flamesContainerView above:v17->_touchInputView];
    [(UIView *)v17->_flamesContainerView setUserInteractionEnabled:0];
    v38 = [MEMORY[0x277CCAB98] defaultCenter];
    [v38 addObserver:v17 selector:sel__handleKeyboardDidShowNotification_ name:*MEMORY[0x277D76BA8] object:0];
    [v38 addObserver:v17 selector:sel__handleKeyboardWillHideNotification_ name:*MEMORY[0x277D76C50] object:0];
    [(SiriUISiriStatusView *)v17 setNeedsLayout];
  }

  return v17;
}

+ (CGRect)activeFrameForScreen:(id)a3 frame:(CGRect)a4 safeAreaInsets:(UIEdgeInsets)a5
{
  y = a4.origin.y;
  v9 = a4.origin.x + a5.left;
  v6 = v9;
  v10 = a4.size.width - (a5.left + a5.right);
  v7 = v10;
  v11 = a4.size.height - a5.bottom;
  v8 = v11;
  CGRectGetHeight(a4);
  v17.origin.x = v6;
  v17.origin.y = y;
  v17.size.width = v7;
  v17.size.height = v8;
  CGRectGetWidth(v17);

  UIRectCenteredXInRect();
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (void)dealloc
{
  [(SUICFlamesView *)self->_flamesView setDelegate:0];
  v3.receiver = self;
  v3.super_class = SiriUISiriStatusView;
  [(SiriUISiriStatusView *)&v3 dealloc];
}

- (CGSize)sizeThatFits:(CGSize)result
{
  v3 = 90.0;
  result.height = v3;
  return result;
}

- (void)forceMicVisible:(BOOL)a3
{
  v7 = *MEMORY[0x277D85DE8];
  if (a3 && (self->_mode - 1) <= 1)
  {
    v3 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315138;
      v6 = "[SiriUISiriStatusView forceMicVisible:]";
      _os_log_impl(&dword_26948D000, v3, OS_LOG_TYPE_DEFAULT, "%s Tried to force mic visible, but we're already showing flames. Ignoring.", &v5, 0xCu);
    }
  }

  else
  {
    v4 = !a3;

    [(SiriUISiriStatusView *)self _animateSiriGlyphHidden:v4];
  }
}

- (void)layoutSubviews
{
  flamesContainerView = self->_flamesContainerView;
  [(SiriUISiriStatusView *)self _flamesViewFrame];
  [(UIView *)flamesContainerView setFrame:?];
  [(SiriUISiriStatusView *)self _layoutFlamesViewIfNeeded];
  [(SiriUISiriStatusView *)self bounds];
  v5 = v4;
  rect = v6;
  v8 = v7;
  v10 = v9;
  [(SiriUISiriStatusView *)self safeAreaInsets];
  v12 = v5 + v11;
  v14 = v8 - (v11 + v13);
  v16 = v10 - v15;
  [(UIView *)self->_glyphView frame];
  UIRectCenteredXInRect();
  x = v28.origin.x;
  y = v28.origin.y;
  width = v28.size.width;
  height = v28.size.height;
  v21 = floor((90.0 - CGRectGetHeight(v28)) * 0.5);
  v29.origin.x = v12;
  v29.origin.y = rect;
  v29.size.width = v14;
  v29.size.height = v16;
  v22 = CGRectGetHeight(v29) - v21;
  v30.origin.x = x;
  v30.origin.y = y;
  v30.size.width = width;
  v30.size.height = height;
  [(UIView *)self->_glyphView setFrame:x, v22 - CGRectGetHeight(v30), width, height];
  v23 = [(SiriUISiriStatusView *)self layer];
  [v23 setAllowsGroupBlending:0];

  flamesView = self->_flamesView;
  [(SiriUISiriStatusView *)self _flamesFrame];
  [(SUICFlamesView *)flamesView setActiveFrame:?];
  touchInputView = self->_touchInputView;
  [(SiriUISiriStatusView *)self _flamesFrame];

  [(UIView *)touchInputView setFrame:?];
}

- (CGRect)_flamesViewFrame
{
  [(SiriUISiriStatusView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(SiriUISiriStatusView *)self flamesViewWidth];
  if (v11 > 0.0)
  {
    [(SiriUISiriStatusView *)self flamesViewWidth];
    UIRectCenteredXInRectScale();
    v4 = v12;
    v6 = v13;
    v8 = v14;
    v10 = v15;
  }

  v16 = v4;
  v17 = v6;
  v18 = v8;
  v19 = v10;
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

- (void)setMode:(int64_t)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v6 = MEMORY[0x277CCABB0];
    v7 = v5;
    v8 = [v6 numberWithInteger:a3];
    v15 = 136315394;
    v16 = "[SiriUISiriStatusView setMode:]";
    v17 = 2112;
    v18 = v8;
    _os_log_impl(&dword_26948D000, v7, OS_LOG_TYPE_DEFAULT, "%s setMode: %@", &v15, 0x16u);
  }

  if (self->_mode != a3)
  {
    self->_mode = a3;
    v9 = [MEMORY[0x277CCAC38] processInfo];
    [v9 systemUptime];
    self->_lastStateChangeTime = v10;

    if (a3 > 2)
    {
      if (a3 == 3)
      {
        [(SUICFlamesView *)self->_flamesView setState:3];
        goto LABEL_15;
      }

      if (a3 == 4)
      {
        [(SiriUISiriStatusView *)self _setFlamesViewState:0];
        v13 = self;
        v14 = 1;
LABEL_16:
        [(SiriUISiriStatusView *)v13 _animateSiriGlyphHidden:v14];
        return;
      }
    }

    else
    {
      if (a3 == 1)
      {
        [(SiriUISiriStatusView *)self _attachFlamesViewIfNeeded];
        v11 = self;
        v12 = 1;
        goto LABEL_13;
      }

      if (a3 == 2)
      {
        v11 = self;
        v12 = 2;
LABEL_13:
        [(SiriUISiriStatusView *)v11 _setFlamesViewState:v12];
        [(SiriUISiriStatusView *)self _animateSiriGlyphHidden:1];
        [(SUICFlamesView *)self->_flamesView setRenderingEnabled:1 forReason:*MEMORY[0x277D77228]];
        return;
      }
    }

    [(SiriUISiriStatusView *)self _setFlamesViewState:0];
LABEL_15:
    v13 = self;
    v14 = 0;
    goto LABEL_16;
  }
}

- (void)setFlamesViewDeferred:(BOOL)a3
{
  self->_flamesViewDeferred = a3;
  if (!a3)
  {
    [(SiriUISiriStatusView *)self _attachFlamesViewIfNeeded];
  }
}

- (void)setPaused:(BOOL)a3
{
  if (self->_paused != a3)
  {
    self->_paused = a3;
    [(SUICFlamesView *)self->_flamesView setPaused:?];
  }
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v9 = (self->_mode != 2 || ([MEMORY[0x277CCAC38] processInfo], v5 = v4 = a3;

  return v9;
}

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  [(UIView *)self->_flamesContainerView frame];
  v10 = x;
  v11 = y;

  return CGRectContainsPoint(*&v6, *&v10);
}

- (void)_micButtonTapped:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v6 = MEMORY[0x277CCABB0];
    v7 = v5;
    v8 = [v6 numberWithInteger:{objc_msgSend(v4, "state")}];
    v10 = 136315394;
    v11 = "[SiriUISiriStatusView _micButtonTapped:]";
    v12 = 2112;
    v13 = v8;
    _os_log_impl(&dword_26948D000, v7, OS_LOG_TYPE_DEFAULT, "%s Mic Button Tapped State %@", &v10, 0x16u);
  }

  if ([v4 state] == 3)
  {
    v9 = [(SiriUISiriStatusView *)self delegate];
    [v9 siriStatusViewWasTapped:self];
  }
}

- (void)_micButtonHeld:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = [a3 state];
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v6 = MEMORY[0x277CCABB0];
    v7 = v5;
    v8 = [v6 numberWithInteger:v4];
    v10 = 136315394;
    v11 = "[SiriUISiriStatusView _micButtonHeld:]";
    v12 = 2112;
    v13 = v8;
    _os_log_impl(&dword_26948D000, v7, OS_LOG_TYPE_DEFAULT, "%s Mic Button Held State %@", &v10, 0x16u);
  }

  if (v4 == 1)
  {
    v9 = [(SiriUISiriStatusView *)self delegate];
    [v9 siriStatusViewHoldDidBegin:self];
  }

  else
  {
    if ((v4 - 3) > 1)
    {
      return;
    }

    v9 = [(SiriUISiriStatusView *)self delegate];
    [v9 siriStatusViewHoldDidEnd:self];
  }
}

- (id)_flamesView
{
  v19 = *MEMORY[0x277D85DE8];
  flamesView = self->_flamesView;
  if (!flamesView)
  {
    if (self->_flamesViewDeferred)
    {
      flamesView = 0;
    }

    else
    {
      v4 = MEMORY[0x277CEF098];
      v5 = *MEMORY[0x277CEF098];
      if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
      {
        v17 = 136315138;
        v18 = "[SiriUISiriStatusView _flamesView]";
        _os_log_impl(&dword_26948D000, v5, OS_LOG_TYPE_DEFAULT, "%s Beginning flamesView setup", &v17, 0xCu);
      }

      v6 = objc_alloc(MEMORY[0x277D61A58]);
      [(UIScreen *)self->_screen bounds];
      v11 = [v6 initWithFrame:self->_screen screen:-[SiriUIConfiguration flamesViewFidelity](self->_configuration fidelity:{"flamesViewFidelity"), v7, v8, v9, v10}];
      v12 = self->_flamesView;
      self->_flamesView = v11;

      v13 = self->_flamesView;
      [(SiriUISiriStatusView *)self _flamesFrame];
      [(SUICFlamesView *)v13 setActiveFrame:?];
      if (UIAccessibilityIsReduceTransparencyEnabled())
      {
        [(SUICFlamesView *)self->_flamesView setShowAura:0];
      }

      [(SUICFlamesView *)self->_flamesView setFreezesAura:SiriUIDeviceShouldFreezeAura()];
      [(SUICFlamesView *)self->_flamesView setState:self->_deferredFlamesViewState];
      touchInputView = self->_touchInputView;
      [(SiriUISiriStatusView *)self _flamesFrame];
      [(UIView *)touchInputView setFrame:?];
      [(SUICFlamesView *)self->_flamesView setDelegate:self];
      v15 = *v4;
      if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
      {
        v17 = 136315138;
        v18 = "[SiriUISiriStatusView _flamesView]";
        _os_log_impl(&dword_26948D000, v15, OS_LOG_TYPE_DEFAULT, "%s Finished flamesView setup", &v17, 0xCu);
      }

      flamesView = self->_flamesView;
    }
  }

  return flamesView;
}

- (void)setInUITrackingMode:(BOOL)a3
{
  v3 = a3;
  kdebug_trace();
  self->_inUITrackingMode = v3;
  mode = self->_mode;
  if (mode <= 4)
  {
    flamesView = self->_flamesView;
    v7 = *MEMORY[0x277D77228];
    v8 = ((1 << mode) & 0x19) == 0 || !v3;

    [(SUICFlamesView *)flamesView setRenderingEnabled:v8 forReason:v7];
  }
}

- (void)_attachFlamesViewIfNeeded
{
  v3 = [(SiriUISiriStatusView *)self _flamesView];
  if (v3)
  {
    v5 = v3;
    v4 = [v3 superview];

    v3 = v5;
    if (!v4)
    {
      [(UIView *)self->_flamesContainerView addSubview:v5];
      [(SiriUISiriStatusView *)self setNeedsLayout];
      v3 = v5;
    }
  }
}

- (void)_layoutFlamesViewIfNeeded
{
  v3 = [(SUICFlamesView *)self->_flamesView superview];
  flamesContainerView = self->_flamesContainerView;

  if (v3 == flamesContainerView)
  {
    flamesView = self->_flamesView;
    [(UIView *)self->_flamesContainerView bounds];

    [(SUICFlamesView *)flamesView setFrame:?];
  }
}

- (void)_setupOrbIfNeeded:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v22 = "[SiriUISiriStatusView _setupOrbIfNeeded:]";
    _os_log_impl(&dword_26948D000, v5, OS_LOG_TYPE_DEFAULT, "%s Beginning orb setup", buf, 0xCu);
  }

  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __42__SiriUISiriStatusView__setupOrbIfNeeded___block_invoke;
  v20[3] = &unk_279C59D78;
  v20[4] = self;
  v6 = MEMORY[0x26D63F900](v20);
  v7 = v6;
  if (self->_glyphPlayerItem)
  {
    (*(v6 + 16))(v6);
    if (v4)
    {
      v4[2](v4);
    }
  }

  else
  {
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __42__SiriUISiriStatusView__setupOrbIfNeeded___block_invoke_26;
    v19[3] = &unk_279C59D78;
    v19[4] = self;
    v8 = MEMORY[0x26D63F900](v19);
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __42__SiriUISiriStatusView__setupOrbIfNeeded___block_invoke_33;
    v18[3] = &unk_279C59D78;
    v18[4] = self;
    v9 = MEMORY[0x26D63F900](v18);
    glyphConfigurationQueue = self->_glyphConfigurationQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __42__SiriUISiriStatusView__setupOrbIfNeeded___block_invoke_35;
    block[3] = &unk_279C59DC8;
    v14 = v8;
    v15 = v9;
    v16 = v7;
    v17 = v4;
    v11 = v9;
    v12 = v8;
    dispatch_async(glyphConfigurationQueue, block);
  }
}

void __42__SiriUISiriStatusView__setupOrbIfNeeded___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __42__SiriUISiriStatusView__setupOrbIfNeeded___block_invoke_2;
  v8[3] = &unk_279C59D78;
  v8[4] = *(a1 + 32);
  v2 = MEMORY[0x26D63F900](v8);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __42__SiriUISiriStatusView__setupOrbIfNeeded___block_invoke_21;
  v7[3] = &unk_279C59D78;
  v7[4] = *(a1 + 32);
  v3 = MEMORY[0x26D63F900](v7);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __42__SiriUISiriStatusView__setupOrbIfNeeded___block_invoke_2_24;
  v6[3] = &unk_279C59D78;
  v6[4] = *(a1 + 32);
  v4 = MEMORY[0x26D63F900](v6);
  v2[2](v2);
  v3[2](v3);
  v4[2](v4);
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v10 = "[SiriUISiriStatusView _setupOrbIfNeeded:]_block_invoke_3";
    _os_log_impl(&dword_26948D000, v5, OS_LOG_TYPE_DEFAULT, "%s Finished Queue Player setup", buf, 0xCu);
  }
}

void __42__SiriUISiriStatusView__setupOrbIfNeeded___block_invoke_2(uint64_t a1)
{
  if (!*(*(a1 + 32) + 464))
  {
    v2 = objc_alloc_init(MEMORY[0x277CE65F8]);
    v3 = *(a1 + 32);
    v4 = *(v3 + 464);
    *(v3 + 464) = v2;

    [*(*(a1 + 32) + 464) setPreventsDisplaySleepDuringVideoPlayback:0];
    [*(*(a1 + 32) + 464) setAllowsExternalPlayback:0];
    [*(*(a1 + 32) + 464) pause];
    v5 = *(a1 + 32);
    if (*(v5 + 480))
    {
      v6 = *(v5 + 464);

      [v6 setAudioSession:?];
    }

    else
    {
      v7 = *MEMORY[0x277CEF098];
      if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
      {
        __42__SiriUISiriStatusView__setupOrbIfNeeded___block_invoke_2_cold_1(v7);
      }
    }
  }
}

uint64_t __42__SiriUISiriStatusView__setupOrbIfNeeded___block_invoke_21(uint64_t result)
{
  v1 = *(result + 32);
  if (!*(v1 + 448))
  {
    v2 = result;
    v3 = [MEMORY[0x277CE65D8] playerLayerWithPlayer:*(v1 + 464)];
    v4 = *(v2 + 32);
    v5 = *(v4 + 448);
    *(v4 + 448) = v3;

    v6 = *(*(v2 + 32) + 448);
    v7 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA5E8]];
    [v6 setCompositingFilter:v7];

    v8 = *(v2 + 32);
    v9 = *(v8 + 448);
    [*(v8 + 440) bounds];
    [v9 setFrame:?];
    v10 = [*(*(v2 + 32) + 440) layer];
    [v10 addSublayer:*(*(v2 + 32) + 448)];

    v11 = *(v2 + 32);

    return [v11 setNeedsLayout];
  }

  return result;
}

void __42__SiriUISiriStatusView__setupOrbIfNeeded___block_invoke_2_24(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (!v1[57])
  {
    v2 = v1[59];
    if (v2)
    {
      v4 = MEMORY[0x277CE65E0];
      v5 = v1[58];
      CMTimeMake(&start, 966, 1000);
      CMTimeMake(&v9, 33330, 1000);
      CMTimeRangeMake(&v11, &start, &v9);
      v6 = [v4 playerLooperWithPlayer:v5 templateItem:v2 timeRange:&v11];
      v7 = *(a1 + 32);
      v8 = *(v7 + 456);
      *(v7 + 456) = v6;
    }
  }
}

void __42__SiriUISiriStatusView__setupOrbIfNeeded___block_invoke_26(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 pathForResource:@"Siri Blob" ofType:@"mov"];

  v4 = MEMORY[0x277CE65B0];
  v5 = [MEMORY[0x277CBEBC0] fileURLWithPath:v3];
  v6 = [v4 playerItemWithURL:v5];
  v7 = *(a1 + 32);
  v8 = *(v7 + 472);
  *(v7 + 472) = v6;

  v9 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315138;
    v11 = "[SiriUISiriStatusView _setupOrbIfNeeded:]_block_invoke";
    _os_log_impl(&dword_26948D000, v9, OS_LOG_TYPE_DEFAULT, "%s Loaded glyph player item", &v10, 0xCu);
  }
}

void __42__SiriUISiriStatusView__setupOrbIfNeeded___block_invoke_33(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CB83F8] sharedInstance];
  v3 = *MEMORY[0x277CB8020];
  v17 = 0;
  [v2 setCategory:v3 withOptions:1 error:&v17];
  v4 = v17;

  v5 = MEMORY[0x277CEF098];
  if (v4 && os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    __42__SiriUISiriStatusView__setupOrbIfNeeded___block_invoke_33_cold_1();
  }

  if (!*(*(a1 + 32) + 480))
  {
    v6 = [MEMORY[0x277CB83F8] auxiliarySession];
    v7 = *MEMORY[0x277CB8030];
    v8 = *MEMORY[0x277CB80A8];
    v16 = 0;
    [v6 setCategory:v7 mode:v8 options:1 error:&v16];
    v9 = v16;
    if (v9)
    {
      v10 = v9;
      if (os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
      {
        __42__SiriUISiriStatusView__setupOrbIfNeeded___block_invoke_33_cold_2();
      }
    }

    else
    {
      v15 = 0;
      [v6 setRequiresNoAudioResources:1 error:&v15];
      v11 = v15;
      if (v11)
      {
        v10 = v11;
        if (os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
        {
          __42__SiriUISiriStatusView__setupOrbIfNeeded___block_invoke_33_cold_2();
        }
      }

      else
      {
        v12 = *(a1 + 32);
        v13 = v6;
        v10 = *(v12 + 480);
        *(v12 + 480) = v13;
      }
    }
  }

  v14 = *v5;
  if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v19 = "[SiriUISiriStatusView _setupOrbIfNeeded:]_block_invoke";
    _os_log_impl(&dword_26948D000, v14, OS_LOG_TYPE_DEFAULT, "%s Created audio sessions", buf, 0xCu);
  }
}

void __42__SiriUISiriStatusView__setupOrbIfNeeded___block_invoke_35(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  (*(*(a1 + 40) + 16))();
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __42__SiriUISiriStatusView__setupOrbIfNeeded___block_invoke_2_36;
  v2[3] = &unk_279C59DA0;
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  dispatch_async(MEMORY[0x277D85CD0], v2);
}

uint64_t __42__SiriUISiriStatusView__setupOrbIfNeeded___block_invoke_2_36(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)_animateSiriGlyphHidden:(BOOL)a3
{
  v3 = a3;
  v16 = *MEMORY[0x277D85DE8];
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v6 = MEMORY[0x277CCABB0];
    v7 = v5;
    v8 = [v6 numberWithBool:v3];
    *buf = 136315394;
    v13 = "[SiriUISiriStatusView _animateSiriGlyphHidden:]";
    v14 = 2112;
    v15 = v8;
    _os_log_impl(&dword_26948D000, v7, OS_LOG_TYPE_DEFAULT, "%s animateSiriGlyphHidden: %@", buf, 0x16u);
  }

  self->_siriGlyphHidden = v3;
  if (v3)
  {
    [(UIView *)self->_glyphView alpha];
    if (v9 < 2.22044605e-16)
    {
      return;
    }

    if (self->_siriGlyphHidden)
    {
      goto LABEL_7;
    }
  }

  [(UIView *)self->_glyphView alpha];
  if (v10 <= 0.0)
  {
LABEL_7:
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __48__SiriUISiriStatusView__animateSiriGlyphHidden___block_invoke;
    v11[3] = &unk_279C59D78;
    v11[4] = self;
    [(SiriUISiriStatusView *)self _setupOrbIfNeeded:v11];
  }
}

uint64_t __48__SiriUISiriStatusView__animateSiriGlyphHidden___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = 0.0;
  if (!*(v2 + 529))
  {
    v3 = 0.35;
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__SiriUISiriStatusView__animateSiriGlyphHidden___block_invoke_2;
  v7[3] = &unk_279C59D78;
  v7[4] = v2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __48__SiriUISiriStatusView__animateSiriGlyphHidden___block_invoke_3;
  v6[3] = &unk_279C59DF0;
  v6[4] = v2;
  result = [MEMORY[0x277D75D18] animateWithDuration:0 delay:v7 usingSpringWithDamping:v6 initialSpringVelocity:0.35 options:v3 animations:1.0 completion:0.0];
  v5 = *(a1 + 32);
  if ((*(v5 + 529) & 1) == 0)
  {
    return [*(v5 + 440) setAlpha:1.0];
  }

  return result;
}

uint64_t __48__SiriUISiriStatusView__animateSiriGlyphHidden___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 529) == 1)
  {
    [*(v2 + 440) setAlpha:0.0];
    v3 = *(a1 + 32);
    v4 = v3[51];
    [v3 _flamesFrame];

    return [v4 setFrame:?];
  }

  else
  {
    v6 = *(v2 + 408);
    [v2 _siriGlyphTappableRect];
    [v6 setFrame:?];
    IsReduceMotionEnabled = UIAccessibilityIsReduceMotionEnabled();
    v8 = *(*(a1 + 32) + 464);
    if (IsReduceMotionEnabled)
    {
      CMTimeMake(&v10, 9800, 1000);
      [v8 seekToTime:&v10];
      [*(*(a1 + 32) + 464) pause];
      return [*(*(a1 + 32) + 440) setAlpha:1.0];
    }

    else
    {
      v10 = **&MEMORY[0x277CC08F0];
      [v8 seekToTime:&v10];
      LODWORD(v9) = 1.0;
      return [*(*(a1 + 32) + 464) playImmediatelyAtRate:v9];
    }
  }
}

void __48__SiriUISiriStatusView__animateSiriGlyphHidden___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  if ((*(v2 + 529) & 1) == 0)
  {
    IsReduceMotionEnabled = UIAccessibilityIsReduceMotionEnabled();
    v2 = *(a1 + 32);
    if (!IsReduceMotionEnabled)
    {
      v4 = [*(v2 + 464) timeControlStatus];
      v2 = *(a1 + 32);
      if (v4 != 2)
      {
        v5 = *(v2 + 464);
        v15 = *MEMORY[0x277CC08F0];
        v16 = *(MEMORY[0x277CC08F0] + 16);
        [v5 seekToTime:&v15];
        LODWORD(v6) = 1.0;
        [*(*(a1 + 32) + 464) playImmediatelyAtRate:v6];
        v2 = *(a1 + 32);
      }
    }
  }

  [*(v2 + 440) alpha];
  if (v7 < 2.22044605e-16)
  {
    v8 = *(a1 + 32);
    v9 = *(v8 + 456);
    *(v8 + 456) = 0;

    v10 = *(*(a1 + 32) + 464);
    v15 = *MEMORY[0x277CC08F0];
    v16 = *(MEMORY[0x277CC08F0] + 16);
    [v10 seekToTime:&v15];
    [*(*(a1 + 32) + 464) pause];
    v11 = *(a1 + 32);
    v12 = *(v11 + 464);
    *(v11 + 464) = 0;

    [*(*(a1 + 32) + 448) removeFromSuperlayer];
    v13 = *(a1 + 32);
    v14 = *(v13 + 448);
    *(v13 + 448) = 0;
  }
}

- (CGRect)_flamesFrame
{
  v3 = objc_opt_class();
  screen = self->_screen;
  [(SiriUISiriStatusView *)self bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [(SiriUISiriStatusView *)self safeAreaInsets];

  [v3 activeFrameForScreen:screen frame:v6 safeAreaInsets:{v8, v10, v12, v13, v14, v15, v16}];
  result.size.height = v20;
  result.size.width = v19;
  result.origin.y = v18;
  result.origin.x = v17;
  return result;
}

- (CGRect)_siriGlyphTappableRect
{
  [(UIView *)self->_glyphView bounds];
  x = v12.origin.x;
  y = v12.origin.y;
  width = v12.size.width;
  height = v12.size.height;
  CGRectGetHeight(v12);
  v13.origin.x = x;
  v13.origin.y = y;
  v13.size.width = width;
  v13.size.height = height;
  CGRectGetWidth(v13);
  [(UIView *)self->_touchInputView frame];
  [(SiriUISiriStatusView *)self bounds];
  [(SiriUISiriStatusView *)self safeAreaInsets];

  UIRectCenteredXInRect();
  result.size.height = v10;
  result.size.width = v9;
  result.origin.y = v8;
  result.origin.x = v7;
  return result;
}

- (UIEdgeInsets)safeAreaInsets
{
  v3 = [(SiriUISiriStatusView *)self delegate];
  [v3 safeAreaInsetsForSiriStatusView:self];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = v5;
  v13 = v7;
  v14 = v9;
  v15 = v11;
  result.right = v15;
  result.bottom = v14;
  result.left = v13;
  result.top = v12;
  return result;
}

- (void)_handleKeyboardDidShowNotification:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = [a3 userInfo];
  v5 = [v4 objectForKeyedSubscript:*MEMORY[0x277D76BD8]];
  v6 = [v5 BOOLValue];

  if (v6)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v7 = [(UIView *)self->_touchInputView gestureRecognizers];
    v8 = [v7 countByEnumeratingWithState:&v16 objects:v24 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v17;
      v11 = MEMORY[0x277CEF098];
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v17 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v13 = *(*(&v16 + 1) + 8 * i);
          v14 = *v11;
          if (os_log_type_enabled(*v11, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            v21 = "[SiriUISiriStatusView _handleKeyboardDidShowNotification:]";
            v22 = 2112;
            v23 = v13;
            _os_log_impl(&dword_26948D000, v14, OS_LOG_TYPE_DEFAULT, "%s Keyboard showing inside of our process, disabling gesture recognizer: %@", buf, 0x16u);
          }

          [v13 setEnabled:0];
        }

        v9 = [v7 countByEnumeratingWithState:&v16 objects:v24 count:16];
      }

      while (v9);
    }
  }

  else
  {
    v15 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v21 = "[SiriUISiriStatusView _handleKeyboardDidShowNotification:]";
      _os_log_impl(&dword_26948D000, v15, OS_LOG_TYPE_DEFAULT, "%s Keyboard showing outside of our process, ignoring notification", buf, 0xCu);
    }
  }
}

- (void)_handleKeyboardWillHideNotification:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = [(UIView *)self->_touchInputView gestureRecognizers];
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v21 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = *v14;
    v8 = MEMORY[0x277CEF098];
    *&v5 = 136315394;
    v12 = v5;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v10 = *(*(&v13 + 1) + 8 * v9);
        v11 = *v8;
        if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v12;
          v18 = "[SiriUISiriStatusView _handleKeyboardWillHideNotification:]";
          v19 = 2112;
          v20 = v10;
          _os_log_impl(&dword_26948D000, v11, OS_LOG_TYPE_DEFAULT, "%s Keyboard hiding, re-enabling gesture recognizer: %@", buf, 0x16u);
        }

        [v10 setEnabled:{1, v12}];
        ++v9;
      }

      while (v6 != v9);
      v6 = [v3 countByEnumeratingWithState:&v13 objects:v21 count:16];
    }

    while (v6);
  }
}

- (float)audioLevelForFlamesView:(id)a3
{
  v4 = [(SiriUISiriStatusView *)self delegate];
  [v4 audioLevelForSiriStatusView:self];
  v6 = v5;

  return v6;
}

- (SiriUISiriStatusViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (SiriUISiriStatusViewAnimationDelegate)animationDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_animationDelegate);

  return WeakRetained;
}

void __42__SiriUISiriStatusView__setupOrbIfNeeded___block_invoke_2_cold_1(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "[SiriUISiriStatusView _setupOrbIfNeeded:]_block_invoke_2";
  _os_log_error_impl(&dword_26948D000, log, OS_LOG_TYPE_ERROR, "%s Using default audio session for glyphQueuePlayer", &v1, 0xCu);
}

@end