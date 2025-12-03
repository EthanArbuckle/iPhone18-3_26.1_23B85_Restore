@interface TVRUIControlPanelViewController
- (_TVRUIEventDelegate)buttonActionsDelegate;
- (id)_createPagedViewWithPrimaryButtonType:(int64_t)type leftButtonTypes:(id)types;
- (id)_createViewWithPrimaryButtonType:(int64_t)type leftButtonTypes:(id)types rightButtonTypes:(id)buttonTypes;
- (void)_createButtonPanelWithKeyboard;
- (void)_createGenericControlButtonPanel;
- (void)_createLegacyButtonPanel;
- (void)_createLegacyPanelWithkeyboard;
- (void)_createTouchpadButtonPanel;
- (void)_disableControls;
- (void)_enableControls;
- (void)_transitionToButtonPanelAndCreateIfNeeded;
- (void)_transitionToPanelView:(id)view;
- (void)_transitionToTouchpadPanelAndCreateIfNeeded;
- (void)_updateViewState;
- (void)disableSearchButton;
- (void)enableSearchButton;
- (void)hideKeyboardButton;
- (void)setDevice:(id)device;
- (void)setEnabled:(BOOL)enabled;
- (void)showKeyboardButton;
- (void)transitonToViewForDeviceType:(int64_t)type;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation TVRUIControlPanelViewController

- (void)viewDidLoad
{
  v12.receiver = self;
  v12.super_class = TVRUIControlPanelViewController;
  [(TVRUIControlPanelViewController *)&v12 viewDidLoad];
  styleProvider = [(TVRUIControlPanelViewController *)self styleProvider];
  controlPanelBackgroundView = [styleProvider controlPanelBackgroundView];
  [(TVRUIControlPanelViewController *)self setBackgroundView:controlPanelBackgroundView];

  backgroundView = [(TVRUIControlPanelViewController *)self backgroundView];

  if (backgroundView)
  {
    view = [(TVRUIControlPanelViewController *)self view];
    backgroundView2 = [(TVRUIControlPanelViewController *)self backgroundView];
    [view addSubview:backgroundView2];
  }

  else
  {
    view = [(TVRUIControlPanelViewController *)self styleProvider];
    backgroundView2 = [view controlPanelBackgroundColor];
    view2 = [(TVRUIControlPanelViewController *)self view];
    [view2 setBackgroundColor:backgroundView2];
  }

  v9 = objc_alloc_init(MEMORY[0x277CBEB58]);
  [(TVRUIControlPanelViewController *)self setAllButtonPanels:v9];

  [(TVRUIControlPanelViewController *)self _createTouchpadButtonPanel];
  touchpadButtonPanel = [(TVRUIControlPanelViewController *)self touchpadButtonPanel];
  [touchpadButtonPanel disableButtons];

  touchpadButtonPanel2 = [(TVRUIControlPanelViewController *)self touchpadButtonPanel];
  [(TVRUIControlPanelViewController *)self _transitionToPanelView:touchpadButtonPanel2];
}

- (void)viewWillLayoutSubviews
{
  v68.receiver = self;
  v68.super_class = TVRUIControlPanelViewController;
  [(TVRUIControlPanelViewController *)&v68 viewWillLayoutSubviews];
  backgroundView = [(TVRUIControlPanelViewController *)self backgroundView];

  if (backgroundView)
  {
    view = [(TVRUIControlPanelViewController *)self view];
    [view bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    backgroundView2 = [(TVRUIControlPanelViewController *)self backgroundView];
    [backgroundView2 setFrame:{v6, v8, v10, v12}];
  }

  view2 = [(TVRUIControlPanelViewController *)self view];
  [view2 bounds];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  touchpadButtonPanel = [(TVRUIControlPanelViewController *)self touchpadButtonPanel];
  [touchpadButtonPanel setFrame:{v16, v18, v20, v22}];

  genericButtonPanel = [(TVRUIControlPanelViewController *)self genericButtonPanel];

  if (genericButtonPanel)
  {
    view3 = [(TVRUIControlPanelViewController *)self view];
    [view3 bounds];
    v27 = v26;
    v29 = v28;
    v31 = v30;
    v33 = v32;
    genericButtonPanel2 = [(TVRUIControlPanelViewController *)self genericButtonPanel];
    [genericButtonPanel2 setFrame:{v27, v29, v31, v33}];
  }

  panelWithKeyboardButton = [(TVRUIControlPanelViewController *)self panelWithKeyboardButton];

  if (panelWithKeyboardButton)
  {
    view4 = [(TVRUIControlPanelViewController *)self view];
    [view4 bounds];
    v38 = v37;
    v40 = v39;
    v42 = v41;
    v44 = v43;
    panelWithKeyboardButton2 = [(TVRUIControlPanelViewController *)self panelWithKeyboardButton];
    [panelWithKeyboardButton2 setFrame:{v38, v40, v42, v44}];
  }

  legacyButtonPanel = [(TVRUIControlPanelViewController *)self legacyButtonPanel];

  if (legacyButtonPanel)
  {
    view5 = [(TVRUIControlPanelViewController *)self view];
    [view5 bounds];
    v49 = v48;
    v51 = v50;
    v53 = v52;
    v55 = v54;
    legacyButtonPanel2 = [(TVRUIControlPanelViewController *)self legacyButtonPanel];
    [legacyButtonPanel2 setFrame:{v49, v51, v53, v55}];
  }

  legacyPanelWithKeyboardButton = [(TVRUIControlPanelViewController *)self legacyPanelWithKeyboardButton];

  if (legacyPanelWithKeyboardButton)
  {
    view6 = [(TVRUIControlPanelViewController *)self view];
    [view6 bounds];
    v60 = v59;
    v62 = v61;
    v64 = v63;
    v66 = v65;
    legacyPanelWithKeyboardButton2 = [(TVRUIControlPanelViewController *)self legacyPanelWithKeyboardButton];
    [legacyPanelWithKeyboardButton2 setFrame:{v60, v62, v64, v66}];
  }
}

- (void)_createTouchpadButtonPanel
{
  if (+[TVRUIFeatures swapBackPlayPauseButtonsEnabled])
  {
    v3 = &unk_287E84B28;
    v4 = &unk_287E84B40;
    selfCopy2 = self;
    v6 = 5;
  }

  else
  {
    v3 = &unk_287E84B58;
    v4 = &unk_287E84B70;
    selfCopy2 = self;
    v6 = 2;
  }

  v7 = [(TVRUIControlPanelViewController *)selfCopy2 _createViewWithPrimaryButtonType:v6 leftButtonTypes:v3 rightButtonTypes:v4];
  [(TVRUIControlPanelViewController *)self setTouchpadButtonPanel:v7];

  v8 = _TVRUIViewControllerLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&dword_26CFEB000, v8, OS_LOG_TYPE_DEFAULT, "Created touchpad button panel WITHOUT page buttons", v11, 2u);
  }

  allButtonPanels = [(TVRUIControlPanelViewController *)self allButtonPanels];
  touchpadButtonPanel = [(TVRUIControlPanelViewController *)self touchpadButtonPanel];
  [allButtonPanels addObject:touchpadButtonPanel];
}

- (void)_createGenericControlButtonPanel
{
  v3 = [(TVRUIControlPanelViewController *)self _createViewWithPrimaryButtonType:23 leftButtonTypes:&unk_287E84B88 rightButtonTypes:&unk_287E84BA0];
  [(TVRUIControlPanelViewController *)self setGenericButtonPanel:v3];

  v4 = _TVRUIViewControllerLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_26CFEB000, v4, OS_LOG_TYPE_DEFAULT, "Created generic tv button panel", v7, 2u);
  }

  allButtonPanels = [(TVRUIControlPanelViewController *)self allButtonPanels];
  genericButtonPanel = [(TVRUIControlPanelViewController *)self genericButtonPanel];
  [allButtonPanels addObject:genericButtonPanel];
}

- (void)_createButtonPanelWithKeyboard
{
  v3 = [(TVRUIControlPanelViewController *)self _createViewWithPrimaryButtonType:2 leftButtonTypes:&unk_287E84BB8 rightButtonTypes:&unk_287E84BD0];
  [(TVRUIControlPanelViewController *)self setPanelWithKeyboardButton:v3];

  v4 = _TVRUIViewControllerLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_26CFEB000, v4, OS_LOG_TYPE_DEFAULT, "Created button panel with keyboard buttons and page buttons", v7, 2u);
  }

  allButtonPanels = [(TVRUIControlPanelViewController *)self allButtonPanels];
  panelWithKeyboardButton = [(TVRUIControlPanelViewController *)self panelWithKeyboardButton];
  [allButtonPanels addObject:panelWithKeyboardButton];
}

- (void)_createLegacyButtonPanel
{
  v3 = [(TVRUIControlPanelViewController *)self _createViewWithPrimaryButtonType:2 leftButtonTypes:&unk_287E84BE8 rightButtonTypes:&unk_287E84C00];
  [(TVRUIControlPanelViewController *)self setLegacyButtonPanel:v3];

  v4 = _TVRUIViewControllerLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_26CFEB000, v4, OS_LOG_TYPE_DEFAULT, "Created legacy button panel", v7, 2u);
  }

  allButtonPanels = [(TVRUIControlPanelViewController *)self allButtonPanels];
  legacyButtonPanel = [(TVRUIControlPanelViewController *)self legacyButtonPanel];
  [allButtonPanels addObject:legacyButtonPanel];
}

- (void)_createLegacyPanelWithkeyboard
{
  v3 = [(TVRUIControlPanelViewController *)self _createViewWithPrimaryButtonType:2 leftButtonTypes:&unk_287E84C18 rightButtonTypes:&unk_287E84C30];
  [(TVRUIControlPanelViewController *)self setLegacyPanelWithKeyboardButton:v3];

  v4 = _TVRUIViewControllerLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_26CFEB000, v4, OS_LOG_TYPE_DEFAULT, "Created legacy button panel with keyboard button", v7, 2u);
  }

  allButtonPanels = [(TVRUIControlPanelViewController *)self allButtonPanels];
  legacyPanelWithKeyboardButton = [(TVRUIControlPanelViewController *)self legacyPanelWithKeyboardButton];
  [allButtonPanels addObject:legacyPanelWithKeyboardButton];
}

- (id)_createViewWithPrimaryButtonType:(int64_t)type leftButtonTypes:(id)types rightButtonTypes:(id)buttonTypes
{
  buttonTypesCopy = buttonTypes;
  typesCopy = types;
  v10 = +[TVRUIFeatures isSolariumEnabled];
  v11 = [TVRUIButtonPanelView alloc];
  styleProvider = [(TVRUIControlPanelViewController *)self styleProvider];
  v13 = [(TVRUIButtonPanelView *)v11 initWithPrimaryButtonType:type secondaryLeftButtons:typesCopy secondaryRightButtons:buttonTypesCopy styleProvider:styleProvider glassEnabled:v10];

  [(TVRUIButtonPanelView *)v13 setAutoresizingMask:18];
  buttonActionsDelegate = [(TVRUIControlPanelViewController *)self buttonActionsDelegate];
  [(TVRUIButtonPanelView *)v13 setButtonEventDelegate:buttonActionsDelegate];

  return v13;
}

- (id)_createPagedViewWithPrimaryButtonType:(int64_t)type leftButtonTypes:(id)types
{
  typesCopy = types;
  v7 = [TVRUIButtonPanelView alloc];
  styleProvider = [(TVRUIControlPanelViewController *)self styleProvider];
  v9 = [(TVRUIButtonPanelView *)v7 initPagedPanelWithPrimaryButtonType:type secondaryLeftButtons:typesCopy styleProvider:styleProvider];

  [v9 setAutoresizingMask:18];
  buttonActionsDelegate = [(TVRUIControlPanelViewController *)self buttonActionsDelegate];
  [v9 setButtonEventDelegate:buttonActionsDelegate];

  return v9;
}

- (void)showKeyboardButton
{
  panelWithKeyboardButton = [(TVRUIControlPanelViewController *)self panelWithKeyboardButton];

  if (!panelWithKeyboardButton)
  {
    [(TVRUIControlPanelViewController *)self _createButtonPanelWithKeyboard];
  }

  panelWithKeyboardButton2 = [(TVRUIControlPanelViewController *)self panelWithKeyboardButton];
  v5 = _TVRUIViewControllerLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_26CFEB000, v5, OS_LOG_TYPE_DEFAULT, "Requesting transition to keyboard button panel", v6, 2u);
  }

  [(TVRUIControlPanelViewController *)self _transitionToPanelView:panelWithKeyboardButton2];
}

- (void)hideKeyboardButton
{
  v3 = _TVRUIViewControllerLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_26CFEB000, v3, OS_LOG_TYPE_DEFAULT, "Hiding keyboard button panel and requesting transition to touchpad buttonpanel", v5, 2u);
  }

  touchpadButtonPanel = [(TVRUIControlPanelViewController *)self touchpadButtonPanel];
  [(TVRUIControlPanelViewController *)self _transitionToPanelView:touchpadButtonPanel];
}

- (void)enableSearchButton
{
  touchpadButtonPanel = [(TVRUIControlPanelViewController *)self touchpadButtonPanel];
  [touchpadButtonPanel enableSearchButton];
}

- (void)disableSearchButton
{
  touchpadButtonPanel = [(TVRUIControlPanelViewController *)self touchpadButtonPanel];
  [touchpadButtonPanel disableSearchButton];
}

- (void)_transitionToPanelView:(id)view
{
  viewCopy = view;
  [(TVRUIControlPanelViewController *)self setCurrentButtonPanel:viewCopy];
  view = [(TVRUIControlPanelViewController *)self view];
  subviews = [view subviews];
  if ([subviews count])
  {
    view2 = [(TVRUIControlPanelViewController *)self view];
    subviews2 = [view2 subviews];
    v9 = [subviews2 objectAtIndexedSubscript:0];
    v10 = [v9 isEqual:viewCopy];

    if ((v10 & 1) == 0)
    {
      v11 = MEMORY[0x277D75D18];
      view3 = [(TVRUIControlPanelViewController *)self view];
      subviews3 = [view3 subviews];
      v14 = [subviews3 objectAtIndexedSubscript:0];
      [v11 transitionFromView:v14 toView:viewCopy duration:5242880 options:&__block_literal_global_11 completion:0.3];

LABEL_8:
      goto LABEL_9;
    }
  }

  else
  {
  }

  view4 = [(TVRUIControlPanelViewController *)self view];
  subviews4 = [view4 subviews];
  v17 = [subviews4 count];

  if (!v17)
  {
    view5 = [(TVRUIControlPanelViewController *)self view];
    [view5 addSubview:viewCopy];

    view3 = _TVRUIViewControllerLog();
    if (os_log_type_enabled(view3, OS_LOG_TYPE_DEFAULT))
    {
      *v19 = 0;
      _os_log_impl(&dword_26CFEB000, view3, OS_LOG_TYPE_DEFAULT, "Adding buttonpanel as subview. not performing transition.", v19, 2u);
    }

    goto LABEL_8;
  }

LABEL_9:
}

void __58__TVRUIControlPanelViewController__transitionToPanelView___block_invoke()
{
  v0 = _TVRUIViewControllerLog();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_26CFEB000, v0, OS_LOG_TYPE_DEFAULT, "Requested buttonpanel transition complete", v1, 2u);
  }
}

- (void)setDevice:(id)device
{
  deviceCopy = device;
  supportsTouchEvents = [deviceCopy supportsTouchEvents];
  v6 = _TVRUIViewControllerLog();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (supportsTouchEvents)
  {
    if (v7)
    {
      *buf = 0;
      _os_log_impl(&dword_26CFEB000, v6, OS_LOG_TYPE_DEFAULT, "Device supports touch events. transitioning to touchpad buttonpanel", buf, 2u);
    }

    touchpadButtonPanel = [(TVRUIControlPanelViewController *)self touchpadButtonPanel];
    [(TVRUIControlPanelViewController *)self _transitionToPanelView:touchpadButtonPanel];
  }

  else
  {
    if (v7)
    {
      *v10 = 0;
      _os_log_impl(&dword_26CFEB000, v6, OS_LOG_TYPE_DEFAULT, "Device does not support touch events. transitioning to generic button panel", v10, 2u);
    }

    [(TVRUIControlPanelViewController *)self _transitionToButtonPanelAndCreateIfNeeded];
  }

  remoteDevice = self->_remoteDevice;
  self->_remoteDevice = deviceCopy;
}

- (void)setEnabled:(BOOL)enabled
{
  if (self->_enabled != enabled)
  {
    self->_enabled = enabled;
    [(TVRUIControlPanelViewController *)self _updateViewState];
  }
}

- (void)_updateViewState
{
  if ([(TVRUIControlPanelViewController *)self enabled])
  {

    [(TVRUIControlPanelViewController *)self _enableControls];
  }

  else
  {

    [(TVRUIControlPanelViewController *)self _disableControls];
  }
}

- (void)_disableControls
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  allButtonPanels = [(TVRUIControlPanelViewController *)self allButtonPanels];
  v3 = [allButtonPanels countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(allButtonPanels);
        }

        [*(*(&v9 + 1) + 8 * v6++) disableButtons];
      }

      while (v4 != v6);
      v4 = [allButtonPanels countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  v7 = _TVRUIViewControllerLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_26CFEB000, v7, OS_LOG_TYPE_DEFAULT, "Disabled all buttonpanels", v8, 2u);
  }
}

- (void)_enableControls
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  allButtonPanels = [(TVRUIControlPanelViewController *)self allButtonPanels];
  v4 = [allButtonPanels countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(allButtonPanels);
        }

        [*(*(&v10 + 1) + 8 * v7++) enableButtonsForDevice:self->_remoteDevice];
      }

      while (v5 != v7);
      v5 = [allButtonPanels countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  v8 = _TVRUIViewControllerLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_26CFEB000, v8, OS_LOG_TYPE_DEFAULT, "Enabled all buttonpanels", v9, 2u);
  }
}

- (void)transitonToViewForDeviceType:(int64_t)type
{
  [(TVRUIControlPanelViewController *)self loadViewIfNeeded];
  v5 = _TVRUIViewControllerLog();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (type == 2)
  {
    if (v6)
    {
      *buf = 0;
      _os_log_impl(&dword_26CFEB000, v5, OS_LOG_TYPE_DEFAULT, "Generic TV type. Requesting transition to generic button panel.", buf, 2u);
    }

    [(TVRUIControlPanelViewController *)self _transitionToButtonPanelAndCreateIfNeeded];
  }

  else
  {
    if (v6)
    {
      *v7 = 0;
      _os_log_impl(&dword_26CFEB000, v5, OS_LOG_TYPE_DEFAULT, "Requesting transition to touch button panel", v7, 2u);
    }

    [(TVRUIControlPanelViewController *)self _transitionToTouchpadPanelAndCreateIfNeeded];
  }
}

- (void)_transitionToButtonPanelAndCreateIfNeeded
{
  genericButtonPanel = [(TVRUIControlPanelViewController *)self genericButtonPanel];

  if (!genericButtonPanel)
  {
    [(TVRUIControlPanelViewController *)self _createGenericControlButtonPanel];
  }

  genericButtonPanel2 = [(TVRUIControlPanelViewController *)self genericButtonPanel];
  [(TVRUIControlPanelViewController *)self _transitionToPanelView:genericButtonPanel2];
}

- (void)_transitionToTouchpadPanelAndCreateIfNeeded
{
  touchpadButtonPanel = [(TVRUIControlPanelViewController *)self touchpadButtonPanel];

  if (!touchpadButtonPanel)
  {
    [(TVRUIControlPanelViewController *)self _createTouchpadButtonPanel];
  }

  touchpadButtonPanel2 = [(TVRUIControlPanelViewController *)self touchpadButtonPanel];
  [(TVRUIControlPanelViewController *)self _transitionToPanelView:touchpadButtonPanel2];
}

- (_TVRUIEventDelegate)buttonActionsDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_buttonActionsDelegate);

  return WeakRetained;
}

@end