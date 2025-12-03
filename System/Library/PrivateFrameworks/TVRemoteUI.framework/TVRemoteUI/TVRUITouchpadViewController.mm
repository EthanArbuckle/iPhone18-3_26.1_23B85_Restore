@interface TVRUITouchpadViewController
- (BOOL)isShowingControls;
- (TVRUITouchpadDelegate)touchDelegate;
- (_TVRUIEventDelegate)eventDelegate;
- (void)_darkenSystemColorsChanged:(id)changed;
- (void)_setupDirectionalArrowView;
- (void)_setupTouchpadView;
- (void)_simpleRemoteGesturesEnabled:(id)enabled;
- (void)_toggleControlScale;
- (void)_transitionToAppropriateView;
- (void)_transitionToDirectionalControlView;
- (void)_transitionToTouchpadView;
- (void)_updateViewState;
- (void)pointerInteraction:(id)interaction willEnterRegion:(id)region animator:(id)animator;
- (void)setDevice:(id)device;
- (void)setEnabled:(BOOL)enabled;
- (void)setMediaControlsAreVisible:(BOOL)visible;
- (void)setShowControls:(BOOL)controls;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesCancelled:(id)cancelled withEvent:(id)event;
- (void)touchesEnded:(id)ended withEvent:(id)event;
- (void)touchesMoved:(id)moved withEvent:(id)event;
- (void)transitonToViewForDeviceType:(int64_t)type;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillLayoutSubviews;
@end

@implementation TVRUITouchpadViewController

- (void)viewDidLoad
{
  v9.receiver = self;
  v9.super_class = TVRUITouchpadViewController;
  [(TVRUITouchpadViewController *)&v9 viewDidLoad];
  [(TVRUITouchpadViewController *)self _darkenSystemColorsChanged:0];
  [(TVRUITouchpadViewController *)self _setupTouchpadView];
  if (_AXSAppleTVRemoteUsesSimpleGestures())
  {
    [(TVRUITouchpadViewController *)self _transitionToDirectionalControlView];
  }

  else
  {
    [(TVRUITouchpadViewController *)self _transitionToTouchpadView];
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel__simpleRemoteGesturesEnabled_ name:*MEMORY[0x277D81C30] object:0];

  v4 = _TVRUIViewControllerLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_26CFEB000, v4, OS_LOG_TYPE_DEFAULT, "Registered to listen for accessibility simple remote gestures", v8, 2u);
  }

  view = [(TVRUITouchpadViewController *)self view];
  v6 = [objc_alloc(MEMORY[0x277D75870]) initWithDelegate:self];
  [view addInteraction:v6];

  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter2 addObserver:self selector:sel__darkenSystemColorsChanged_ name:*MEMORY[0x277D76460] object:0];

  [(TVRUITouchpadViewController *)self setEnabled:1];
}

- (void)viewWillLayoutSubviews
{
  v34.receiver = self;
  v34.super_class = TVRUITouchpadViewController;
  [(TVRUITouchpadViewController *)&v34 viewWillLayoutSubviews];
  backgroundView = [(TVRUITouchpadViewController *)self backgroundView];

  if (backgroundView)
  {
    view = [(TVRUITouchpadViewController *)self view];
    [view bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    backgroundView2 = [(TVRUITouchpadViewController *)self backgroundView];
    [backgroundView2 setFrame:{v6, v8, v10, v12}];
  }

  view2 = [(TVRUITouchpadViewController *)self view];
  [view2 bounds];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  touchpadView = [(TVRUITouchpadViewController *)self touchpadView];
  [touchpadView setFrame:{v16, v18, v20, v22}];

  view3 = [(TVRUITouchpadViewController *)self view];
  [view3 bounds];
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  directionalControlView = [(TVRUITouchpadViewController *)self directionalControlView];
  [directionalControlView setFrame:{v26, v28, v30, v32}];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v7.receiver = self;
  v7.super_class = TVRUITouchpadViewController;
  [(TVRUITouchpadViewController *)&v7 viewWillDisappear:disappear];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x277D81C30] object:0];

  v5 = _TVRUIViewControllerLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_26CFEB000, v5, OS_LOG_TYPE_DEFAULT, "Unregistered to listen for accessibility simple remote gestures", v6, 2u);
  }
}

- (void)transitonToViewForDeviceType:(int64_t)type
{
  if (type == 2)
  {
    [(TVRUITouchpadViewController *)self _transitionToDirectionalControlView];
  }

  else
  {
    [(TVRUITouchpadViewController *)self _transitionToTouchpadView];
  }
}

- (void)_setupTouchpadView
{
  v3 = objc_alloc_init(TVRUITouchpadView);
  touchpadView = self->_touchpadView;
  self->_touchpadView = v3;

  [(TVRUITouchpadView *)self->_touchpadView setAutoresizingMask:18];
  touchDelegate = [(TVRUITouchpadViewController *)self touchDelegate];
  [(TVRUITouchpadView *)self->_touchpadView setTouchDelegate:touchDelegate];

  clearColor = [MEMORY[0x277D75348] clearColor];
  [(TVRUITouchpadView *)self->_touchpadView setBackgroundColor:clearColor];

  v7 = [[TVRUIStandardTouchProcessor alloc] initWithTouchpadView:self->_touchpadView];
  touchProcessor = self->_touchProcessor;
  self->_touchProcessor = v7;

  v9 = self->_touchProcessor;
  eventDelegate = [(TVRUITouchpadViewController *)self eventDelegate];
  [(TVRUITouchProcessor *)v9 setEventDelegate:eventDelegate];
}

- (void)_setupDirectionalArrowView
{
  v3 = [TVRUIDirectionalControlView alloc];
  styleProvider = [(TVRUITouchpadViewController *)self styleProvider];
  v5 = [(TVRUIDirectionalControlView *)v3 initWithStyleProvider:styleProvider];
  directionalControlView = self->_directionalControlView;
  self->_directionalControlView = v5;

  [(TVRUIDirectionalControlView *)self->_directionalControlView setAutoresizingMask:18];
  clearColor = [MEMORY[0x277D75348] clearColor];
  [(TVRUIDirectionalControlView *)self->_directionalControlView setBackgroundColor:clearColor];

  eventDelegate = [(TVRUITouchpadViewController *)self eventDelegate];
  [(TVRUIDirectionalControlView *)self->_directionalControlView setEventDelegate:eventDelegate];
}

- (void)_transitionToTouchpadView
{
  directionalControlView = [(TVRUITouchpadViewController *)self directionalControlView];
  superview = [directionalControlView superview];
  view = [(TVRUITouchpadViewController *)self view];
  v6 = [superview isEqual:view];

  if (v6)
  {
    v7 = MEMORY[0x277D75D18];
    directionalControlView2 = [(TVRUITouchpadViewController *)self directionalControlView];
    touchpadView = [(TVRUITouchpadViewController *)self touchpadView];
    [v7 transitionFromView:directionalControlView2 toView:touchpadView duration:5242880 options:0 completion:0.2];
  }

  else
  {
    directionalControlView2 = [(TVRUITouchpadViewController *)self view];
    touchpadView = [(TVRUITouchpadViewController *)self touchpadView];
    [directionalControlView2 addSubview:touchpadView];
  }

  [(TVRUITouchpadViewController *)self setTouchpadMode:0];
}

- (void)_transitionToDirectionalControlView
{
  directionalControlView = [(TVRUITouchpadViewController *)self directionalControlView];

  if (!directionalControlView)
  {
    [(TVRUITouchpadViewController *)self _setupDirectionalArrowView];
  }

  eventDelegate = [(TVRUITouchpadViewController *)self eventDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    eventDelegate2 = [(TVRUITouchpadViewController *)self eventDelegate];
    [eventDelegate2 willShowDirectionalControls];
  }

  touchpadView = [(TVRUITouchpadViewController *)self touchpadView];
  superview = [touchpadView superview];
  view = [(TVRUITouchpadViewController *)self view];
  v10 = [superview isEqual:view];

  if (v10)
  {
    v11 = MEMORY[0x277D75D18];
    touchpadView2 = [(TVRUITouchpadViewController *)self touchpadView];
    directionalControlView2 = [(TVRUITouchpadViewController *)self directionalControlView];
    [v11 transitionFromView:touchpadView2 toView:directionalControlView2 duration:5242880 options:0 completion:0.2];
  }

  else
  {
    touchpadView2 = [(TVRUITouchpadViewController *)self view];
    directionalControlView2 = [(TVRUITouchpadViewController *)self directionalControlView];
    [touchpadView2 addSubview:directionalControlView2];
  }

  directionalControlView3 = [(TVRUITouchpadViewController *)self directionalControlView];
  [directionalControlView3 setAlpha:1.0];

  [(TVRUITouchpadViewController *)self setTouchpadMode:1];

  [(TVRUITouchpadViewController *)self _toggleControlScale];
}

- (void)setDevice:(id)device
{
  objc_storeStrong(&self->_remoteDevice, device);

  [(TVRUITouchpadViewController *)self _transitionToAppropriateView];
}

- (void)_transitionToAppropriateView
{
  if ([(TVRUIDevice *)self->_remoteDevice supportsTouchEvents])
  {
    v3 = _AXSAppleTVRemoteUsesSimpleGestures();
    touchpadMode = [(TVRUITouchpadViewController *)self touchpadMode];
    if (!v3)
    {
      if (touchpadMode)
      {

        [(TVRUITouchpadViewController *)self _transitionToTouchpadView];
      }

      return;
    }
  }

  else
  {
    touchpadMode = [(TVRUITouchpadViewController *)self touchpadMode];
  }

  if (touchpadMode != 1)
  {

    [(TVRUITouchpadViewController *)self _transitionToDirectionalControlView];
  }
}

- (void)_updateViewState
{
  if ([(TVRUITouchpadViewController *)self isShowingControls])
  {
    enabled = [(TVRUITouchpadViewController *)self enabled];
    if (enabled)
    {
      v4 = 1.0;
    }

    else
    {
      styleProvider = [(TVRUITouchpadViewController *)self styleProvider];
      [styleProvider disabledButtonAlpha];
      v4 = v5;
    }

    directionalControlView = [(TVRUITouchpadViewController *)self directionalControlView];
    [directionalControlView setAlpha:v4];

    if (!enabled)
    {
    }
  }
}

- (void)setEnabled:(BOOL)enabled
{
  if (self->_enabled != enabled)
  {
    self->_enabled = enabled;
    [(TVRUITouchpadViewController *)self _updateViewState];
  }
}

- (void)setShowControls:(BOOL)controls
{
  controlsCopy = controls;
  directionalControlView = [(TVRUITouchpadViewController *)self directionalControlView];
  superview = [directionalControlView superview];
  view = [(TVRUITouchpadViewController *)self view];
  v8 = [superview isEqual:view];

  if (v8)
  {
    if (controlsCopy)
    {
      v9 = 1.0;
    }

    else
    {
      v9 = 0.0;
    }

    directionalControlView2 = [(TVRUITouchpadViewController *)self directionalControlView];
    [directionalControlView2 setAlpha:v9];

    touchpadView = [(TVRUITouchpadViewController *)self touchpadView];
    [touchpadView setUserInteractionEnabled:controlsCopy];
  }
}

- (BOOL)isShowingControls
{
  directionalControlView = [(TVRUITouchpadViewController *)self directionalControlView];
  [directionalControlView alpha];
  v4 = v3 > 0.0;

  return v4;
}

- (void)setMediaControlsAreVisible:(BOOL)visible
{
  if (self->_mediaControlsAreVisible != visible)
  {
    self->_mediaControlsAreVisible = visible;
    [(TVRUITouchpadViewController *)self _toggleControlScale];
  }
}

- (void)_toggleControlScale
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = _TVRUIViewControllerLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    isShowingControls = [(TVRUITouchpadViewController *)self isShowingControls];
    styleProvider = [(TVRUITouchpadViewController *)self styleProvider];
    v9[0] = 67109376;
    v9[1] = isShowingControls;
    v10 = 1024;
    isSmallDevice = [styleProvider isSmallDevice];
    _os_log_impl(&dword_26CFEB000, v3, OS_LOG_TYPE_DEFAULT, "#directional - toggleControlState %d %d", v9, 0xEu);
  }

  if ([(TVRUITouchpadViewController *)self isShowingControls])
  {
    styleProvider2 = [(TVRUITouchpadViewController *)self styleProvider];
    isSmallDevice2 = [styleProvider2 isSmallDevice];

    if (isSmallDevice2)
    {
      directionalControlView = [(TVRUITouchpadViewController *)self directionalControlView];
      [directionalControlView setOffsetDirectionalPad:self->_mediaControlsAreVisible];
    }
  }
}

- (void)_simpleRemoteGesturesEnabled:(id)enabled
{
  v4 = _TVRUIViewControllerLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_26CFEB000, v4, OS_LOG_TYPE_DEFAULT, "Accessibility simple remote gestures enabled notification received", v5, 2u);
  }

  [(TVRUITouchpadViewController *)self _transitionToAppropriateView];
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  beganCopy = began;
  eventCopy = event;
  if (![(TVRUITouchpadViewController *)self touchpadMode])
  {
    touchProcessor = [(TVRUITouchpadViewController *)self touchProcessor];
    touchpadView = [(TVRUITouchpadViewController *)self touchpadView];
    [touchProcessor touchesBegan:touchpadView touches:beganCopy withEvent:eventCopy];
  }
}

- (void)touchesMoved:(id)moved withEvent:(id)event
{
  movedCopy = moved;
  eventCopy = event;
  if (![(TVRUITouchpadViewController *)self touchpadMode])
  {
    touchProcessor = [(TVRUITouchpadViewController *)self touchProcessor];
    touchpadView = [(TVRUITouchpadViewController *)self touchpadView];
    [touchProcessor touchesMoved:touchpadView touches:movedCopy withEvent:eventCopy];
  }
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  endedCopy = ended;
  eventCopy = event;
  if (![(TVRUITouchpadViewController *)self touchpadMode])
  {
    touchProcessor = [(TVRUITouchpadViewController *)self touchProcessor];
    touchpadView = [(TVRUITouchpadViewController *)self touchpadView];
    [touchProcessor touchesEnded:touchpadView touches:endedCopy withEvent:eventCopy];
  }
}

- (void)touchesCancelled:(id)cancelled withEvent:(id)event
{
  cancelledCopy = cancelled;
  eventCopy = event;
  if (![(TVRUITouchpadViewController *)self touchpadMode])
  {
    touchProcessor = [(TVRUITouchpadViewController *)self touchProcessor];
    touchpadView = [(TVRUITouchpadViewController *)self touchpadView];
    [touchProcessor touchesCancelled:touchpadView touches:cancelledCopy withEvent:eventCopy];
  }
}

- (void)pointerInteraction:(id)interaction willEnterRegion:(id)region animator:(id)animator
{
  v10 = *MEMORY[0x277D85DE8];
  v6 = _TVRUIViewControllerLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315138;
    v9 = "[TVRUITouchpadViewController pointerInteraction:willEnterRegion:animator:]";
    _os_log_impl(&dword_26CFEB000, v6, OS_LOG_TYPE_DEFAULT, "%s", &v8, 0xCu);
  }

  if ([(TVRUITouchpadViewController *)self touchpadMode]!= 1)
  {
    v7 = _TVRUIViewControllerLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v8) = 0;
      _os_log_impl(&dword_26CFEB000, v7, OS_LOG_TYPE_DEFAULT, "Transitioning to directional controls because a pointer entered the touchpad", &v8, 2u);
    }

    [(TVRUITouchpadViewController *)self _transitionToDirectionalControlView];
  }
}

- (void)_darkenSystemColorsChanged:(id)changed
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = _TVRUIViewControllerLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315138;
    v9 = "[TVRUITouchpadViewController _darkenSystemColorsChanged:]";
    _os_log_impl(&dword_26CFEB000, v4, OS_LOG_TYPE_DEFAULT, "%s", &v8, 0xCu);
  }

  styleProvider = [(TVRUITouchpadViewController *)self styleProvider];
  touchpadBackgroundColor = [styleProvider touchpadBackgroundColor];
  view = [(TVRUITouchpadViewController *)self view];
  [view setBackgroundColor:touchpadBackgroundColor];
}

- (_TVRUIEventDelegate)eventDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_eventDelegate);

  return WeakRetained;
}

- (TVRUITouchpadDelegate)touchDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_touchDelegate);

  return WeakRetained;
}

@end