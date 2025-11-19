@interface TVRUITouchpadViewController
- (BOOL)isShowingControls;
- (TVRUITouchpadDelegate)touchDelegate;
- (_TVRUIEventDelegate)eventDelegate;
- (void)_darkenSystemColorsChanged:(id)a3;
- (void)_setupDirectionalArrowView;
- (void)_setupTouchpadView;
- (void)_simpleRemoteGesturesEnabled:(id)a3;
- (void)_toggleControlScale;
- (void)_transitionToAppropriateView;
- (void)_transitionToDirectionalControlView;
- (void)_transitionToTouchpadView;
- (void)_updateViewState;
- (void)pointerInteraction:(id)a3 willEnterRegion:(id)a4 animator:(id)a5;
- (void)setDevice:(id)a3;
- (void)setEnabled:(BOOL)a3;
- (void)setMediaControlsAreVisible:(BOOL)a3;
- (void)setShowControls:(BOOL)a3;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)touchesCancelled:(id)a3 withEvent:(id)a4;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
- (void)touchesMoved:(id)a3 withEvent:(id)a4;
- (void)transitonToViewForDeviceType:(int64_t)a3;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)a3;
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

  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 addObserver:self selector:sel__simpleRemoteGesturesEnabled_ name:*MEMORY[0x277D81C30] object:0];

  v4 = _TVRUIViewControllerLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_26CFEB000, v4, OS_LOG_TYPE_DEFAULT, "Registered to listen for accessibility simple remote gestures", v8, 2u);
  }

  v5 = [(TVRUITouchpadViewController *)self view];
  v6 = [objc_alloc(MEMORY[0x277D75870]) initWithDelegate:self];
  [v5 addInteraction:v6];

  v7 = [MEMORY[0x277CCAB98] defaultCenter];
  [v7 addObserver:self selector:sel__darkenSystemColorsChanged_ name:*MEMORY[0x277D76460] object:0];

  [(TVRUITouchpadViewController *)self setEnabled:1];
}

- (void)viewWillLayoutSubviews
{
  v34.receiver = self;
  v34.super_class = TVRUITouchpadViewController;
  [(TVRUITouchpadViewController *)&v34 viewWillLayoutSubviews];
  v3 = [(TVRUITouchpadViewController *)self backgroundView];

  if (v3)
  {
    v4 = [(TVRUITouchpadViewController *)self view];
    [v4 bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v13 = [(TVRUITouchpadViewController *)self backgroundView];
    [v13 setFrame:{v6, v8, v10, v12}];
  }

  v14 = [(TVRUITouchpadViewController *)self view];
  [v14 bounds];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v23 = [(TVRUITouchpadViewController *)self touchpadView];
  [v23 setFrame:{v16, v18, v20, v22}];

  v24 = [(TVRUITouchpadViewController *)self view];
  [v24 bounds];
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v33 = [(TVRUITouchpadViewController *)self directionalControlView];
  [v33 setFrame:{v26, v28, v30, v32}];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = TVRUITouchpadViewController;
  [(TVRUITouchpadViewController *)&v7 viewWillDisappear:a3];
  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 removeObserver:self name:*MEMORY[0x277D81C30] object:0];

  v5 = _TVRUIViewControllerLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_26CFEB000, v5, OS_LOG_TYPE_DEFAULT, "Unregistered to listen for accessibility simple remote gestures", v6, 2u);
  }
}

- (void)transitonToViewForDeviceType:(int64_t)a3
{
  if (a3 == 2)
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
  v5 = [(TVRUITouchpadViewController *)self touchDelegate];
  [(TVRUITouchpadView *)self->_touchpadView setTouchDelegate:v5];

  v6 = [MEMORY[0x277D75348] clearColor];
  [(TVRUITouchpadView *)self->_touchpadView setBackgroundColor:v6];

  v7 = [[TVRUIStandardTouchProcessor alloc] initWithTouchpadView:self->_touchpadView];
  touchProcessor = self->_touchProcessor;
  self->_touchProcessor = v7;

  v9 = self->_touchProcessor;
  v10 = [(TVRUITouchpadViewController *)self eventDelegate];
  [(TVRUITouchProcessor *)v9 setEventDelegate:v10];
}

- (void)_setupDirectionalArrowView
{
  v3 = [TVRUIDirectionalControlView alloc];
  v4 = [(TVRUITouchpadViewController *)self styleProvider];
  v5 = [(TVRUIDirectionalControlView *)v3 initWithStyleProvider:v4];
  directionalControlView = self->_directionalControlView;
  self->_directionalControlView = v5;

  [(TVRUIDirectionalControlView *)self->_directionalControlView setAutoresizingMask:18];
  v7 = [MEMORY[0x277D75348] clearColor];
  [(TVRUIDirectionalControlView *)self->_directionalControlView setBackgroundColor:v7];

  v8 = [(TVRUITouchpadViewController *)self eventDelegate];
  [(TVRUIDirectionalControlView *)self->_directionalControlView setEventDelegate:v8];
}

- (void)_transitionToTouchpadView
{
  v3 = [(TVRUITouchpadViewController *)self directionalControlView];
  v4 = [v3 superview];
  v5 = [(TVRUITouchpadViewController *)self view];
  v6 = [v4 isEqual:v5];

  if (v6)
  {
    v7 = MEMORY[0x277D75D18];
    v8 = [(TVRUITouchpadViewController *)self directionalControlView];
    v9 = [(TVRUITouchpadViewController *)self touchpadView];
    [v7 transitionFromView:v8 toView:v9 duration:5242880 options:0 completion:0.2];
  }

  else
  {
    v8 = [(TVRUITouchpadViewController *)self view];
    v9 = [(TVRUITouchpadViewController *)self touchpadView];
    [v8 addSubview:v9];
  }

  [(TVRUITouchpadViewController *)self setTouchpadMode:0];
}

- (void)_transitionToDirectionalControlView
{
  v3 = [(TVRUITouchpadViewController *)self directionalControlView];

  if (!v3)
  {
    [(TVRUITouchpadViewController *)self _setupDirectionalArrowView];
  }

  v4 = [(TVRUITouchpadViewController *)self eventDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(TVRUITouchpadViewController *)self eventDelegate];
    [v6 willShowDirectionalControls];
  }

  v7 = [(TVRUITouchpadViewController *)self touchpadView];
  v8 = [v7 superview];
  v9 = [(TVRUITouchpadViewController *)self view];
  v10 = [v8 isEqual:v9];

  if (v10)
  {
    v11 = MEMORY[0x277D75D18];
    v12 = [(TVRUITouchpadViewController *)self touchpadView];
    v13 = [(TVRUITouchpadViewController *)self directionalControlView];
    [v11 transitionFromView:v12 toView:v13 duration:5242880 options:0 completion:0.2];
  }

  else
  {
    v12 = [(TVRUITouchpadViewController *)self view];
    v13 = [(TVRUITouchpadViewController *)self directionalControlView];
    [v12 addSubview:v13];
  }

  v14 = [(TVRUITouchpadViewController *)self directionalControlView];
  [v14 setAlpha:1.0];

  [(TVRUITouchpadViewController *)self setTouchpadMode:1];

  [(TVRUITouchpadViewController *)self _toggleControlScale];
}

- (void)setDevice:(id)a3
{
  objc_storeStrong(&self->_remoteDevice, a3);

  [(TVRUITouchpadViewController *)self _transitionToAppropriateView];
}

- (void)_transitionToAppropriateView
{
  if ([(TVRUIDevice *)self->_remoteDevice supportsTouchEvents])
  {
    v3 = _AXSAppleTVRemoteUsesSimpleGestures();
    v4 = [(TVRUITouchpadViewController *)self touchpadMode];
    if (!v3)
    {
      if (v4)
      {

        [(TVRUITouchpadViewController *)self _transitionToTouchpadView];
      }

      return;
    }
  }

  else
  {
    v4 = [(TVRUITouchpadViewController *)self touchpadMode];
  }

  if (v4 != 1)
  {

    [(TVRUITouchpadViewController *)self _transitionToDirectionalControlView];
  }
}

- (void)_updateViewState
{
  if ([(TVRUITouchpadViewController *)self isShowingControls])
  {
    v3 = [(TVRUITouchpadViewController *)self enabled];
    if (v3)
    {
      v4 = 1.0;
    }

    else
    {
      v7 = [(TVRUITouchpadViewController *)self styleProvider];
      [v7 disabledButtonAlpha];
      v4 = v5;
    }

    v6 = [(TVRUITouchpadViewController *)self directionalControlView];
    [v6 setAlpha:v4];

    if (!v3)
    {
    }
  }
}

- (void)setEnabled:(BOOL)a3
{
  if (self->_enabled != a3)
  {
    self->_enabled = a3;
    [(TVRUITouchpadViewController *)self _updateViewState];
  }
}

- (void)setShowControls:(BOOL)a3
{
  v3 = a3;
  v5 = [(TVRUITouchpadViewController *)self directionalControlView];
  v6 = [v5 superview];
  v7 = [(TVRUITouchpadViewController *)self view];
  v8 = [v6 isEqual:v7];

  if (v8)
  {
    if (v3)
    {
      v9 = 1.0;
    }

    else
    {
      v9 = 0.0;
    }

    v10 = [(TVRUITouchpadViewController *)self directionalControlView];
    [v10 setAlpha:v9];

    v11 = [(TVRUITouchpadViewController *)self touchpadView];
    [v11 setUserInteractionEnabled:v3];
  }
}

- (BOOL)isShowingControls
{
  v2 = [(TVRUITouchpadViewController *)self directionalControlView];
  [v2 alpha];
  v4 = v3 > 0.0;

  return v4;
}

- (void)setMediaControlsAreVisible:(BOOL)a3
{
  if (self->_mediaControlsAreVisible != a3)
  {
    self->_mediaControlsAreVisible = a3;
    [(TVRUITouchpadViewController *)self _toggleControlScale];
  }
}

- (void)_toggleControlScale
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = _TVRUIViewControllerLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(TVRUITouchpadViewController *)self isShowingControls];
    v5 = [(TVRUITouchpadViewController *)self styleProvider];
    v9[0] = 67109376;
    v9[1] = v4;
    v10 = 1024;
    v11 = [v5 isSmallDevice];
    _os_log_impl(&dword_26CFEB000, v3, OS_LOG_TYPE_DEFAULT, "#directional - toggleControlState %d %d", v9, 0xEu);
  }

  if ([(TVRUITouchpadViewController *)self isShowingControls])
  {
    v6 = [(TVRUITouchpadViewController *)self styleProvider];
    v7 = [v6 isSmallDevice];

    if (v7)
    {
      v8 = [(TVRUITouchpadViewController *)self directionalControlView];
      [v8 setOffsetDirectionalPad:self->_mediaControlsAreVisible];
    }
  }
}

- (void)_simpleRemoteGesturesEnabled:(id)a3
{
  v4 = _TVRUIViewControllerLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_26CFEB000, v4, OS_LOG_TYPE_DEFAULT, "Accessibility simple remote gestures enabled notification received", v5, 2u);
  }

  [(TVRUITouchpadViewController *)self _transitionToAppropriateView];
}

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  v9 = a3;
  v6 = a4;
  if (![(TVRUITouchpadViewController *)self touchpadMode])
  {
    v7 = [(TVRUITouchpadViewController *)self touchProcessor];
    v8 = [(TVRUITouchpadViewController *)self touchpadView];
    [v7 touchesBegan:v8 touches:v9 withEvent:v6];
  }
}

- (void)touchesMoved:(id)a3 withEvent:(id)a4
{
  v9 = a3;
  v6 = a4;
  if (![(TVRUITouchpadViewController *)self touchpadMode])
  {
    v7 = [(TVRUITouchpadViewController *)self touchProcessor];
    v8 = [(TVRUITouchpadViewController *)self touchpadView];
    [v7 touchesMoved:v8 touches:v9 withEvent:v6];
  }
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  v9 = a3;
  v6 = a4;
  if (![(TVRUITouchpadViewController *)self touchpadMode])
  {
    v7 = [(TVRUITouchpadViewController *)self touchProcessor];
    v8 = [(TVRUITouchpadViewController *)self touchpadView];
    [v7 touchesEnded:v8 touches:v9 withEvent:v6];
  }
}

- (void)touchesCancelled:(id)a3 withEvent:(id)a4
{
  v9 = a3;
  v6 = a4;
  if (![(TVRUITouchpadViewController *)self touchpadMode])
  {
    v7 = [(TVRUITouchpadViewController *)self touchProcessor];
    v8 = [(TVRUITouchpadViewController *)self touchpadView];
    [v7 touchesCancelled:v8 touches:v9 withEvent:v6];
  }
}

- (void)pointerInteraction:(id)a3 willEnterRegion:(id)a4 animator:(id)a5
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

- (void)_darkenSystemColorsChanged:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = _TVRUIViewControllerLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315138;
    v9 = "[TVRUITouchpadViewController _darkenSystemColorsChanged:]";
    _os_log_impl(&dword_26CFEB000, v4, OS_LOG_TYPE_DEFAULT, "%s", &v8, 0xCu);
  }

  v5 = [(TVRUITouchpadViewController *)self styleProvider];
  v6 = [v5 touchpadBackgroundColor];
  v7 = [(TVRUITouchpadViewController *)self view];
  [v7 setBackgroundColor:v6];
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