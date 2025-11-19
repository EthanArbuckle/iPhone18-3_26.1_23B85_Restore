@interface TVRUIControlPanelViewController
- (_TVRUIEventDelegate)buttonActionsDelegate;
- (id)_createPagedViewWithPrimaryButtonType:(int64_t)a3 leftButtonTypes:(id)a4;
- (id)_createViewWithPrimaryButtonType:(int64_t)a3 leftButtonTypes:(id)a4 rightButtonTypes:(id)a5;
- (void)_createButtonPanelWithKeyboard;
- (void)_createGenericControlButtonPanel;
- (void)_createLegacyButtonPanel;
- (void)_createLegacyPanelWithkeyboard;
- (void)_createTouchpadButtonPanel;
- (void)_disableControls;
- (void)_enableControls;
- (void)_transitionToButtonPanelAndCreateIfNeeded;
- (void)_transitionToPanelView:(id)a3;
- (void)_transitionToTouchpadPanelAndCreateIfNeeded;
- (void)_updateViewState;
- (void)disableSearchButton;
- (void)enableSearchButton;
- (void)hideKeyboardButton;
- (void)setDevice:(id)a3;
- (void)setEnabled:(BOOL)a3;
- (void)showKeyboardButton;
- (void)transitonToViewForDeviceType:(int64_t)a3;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation TVRUIControlPanelViewController

- (void)viewDidLoad
{
  v12.receiver = self;
  v12.super_class = TVRUIControlPanelViewController;
  [(TVRUIControlPanelViewController *)&v12 viewDidLoad];
  v3 = [(TVRUIControlPanelViewController *)self styleProvider];
  v4 = [v3 controlPanelBackgroundView];
  [(TVRUIControlPanelViewController *)self setBackgroundView:v4];

  v5 = [(TVRUIControlPanelViewController *)self backgroundView];

  if (v5)
  {
    v6 = [(TVRUIControlPanelViewController *)self view];
    v7 = [(TVRUIControlPanelViewController *)self backgroundView];
    [v6 addSubview:v7];
  }

  else
  {
    v6 = [(TVRUIControlPanelViewController *)self styleProvider];
    v7 = [v6 controlPanelBackgroundColor];
    v8 = [(TVRUIControlPanelViewController *)self view];
    [v8 setBackgroundColor:v7];
  }

  v9 = objc_alloc_init(MEMORY[0x277CBEB58]);
  [(TVRUIControlPanelViewController *)self setAllButtonPanels:v9];

  [(TVRUIControlPanelViewController *)self _createTouchpadButtonPanel];
  v10 = [(TVRUIControlPanelViewController *)self touchpadButtonPanel];
  [v10 disableButtons];

  v11 = [(TVRUIControlPanelViewController *)self touchpadButtonPanel];
  [(TVRUIControlPanelViewController *)self _transitionToPanelView:v11];
}

- (void)viewWillLayoutSubviews
{
  v68.receiver = self;
  v68.super_class = TVRUIControlPanelViewController;
  [(TVRUIControlPanelViewController *)&v68 viewWillLayoutSubviews];
  v3 = [(TVRUIControlPanelViewController *)self backgroundView];

  if (v3)
  {
    v4 = [(TVRUIControlPanelViewController *)self view];
    [v4 bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v13 = [(TVRUIControlPanelViewController *)self backgroundView];
    [v13 setFrame:{v6, v8, v10, v12}];
  }

  v14 = [(TVRUIControlPanelViewController *)self view];
  [v14 bounds];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v23 = [(TVRUIControlPanelViewController *)self touchpadButtonPanel];
  [v23 setFrame:{v16, v18, v20, v22}];

  v24 = [(TVRUIControlPanelViewController *)self genericButtonPanel];

  if (v24)
  {
    v25 = [(TVRUIControlPanelViewController *)self view];
    [v25 bounds];
    v27 = v26;
    v29 = v28;
    v31 = v30;
    v33 = v32;
    v34 = [(TVRUIControlPanelViewController *)self genericButtonPanel];
    [v34 setFrame:{v27, v29, v31, v33}];
  }

  v35 = [(TVRUIControlPanelViewController *)self panelWithKeyboardButton];

  if (v35)
  {
    v36 = [(TVRUIControlPanelViewController *)self view];
    [v36 bounds];
    v38 = v37;
    v40 = v39;
    v42 = v41;
    v44 = v43;
    v45 = [(TVRUIControlPanelViewController *)self panelWithKeyboardButton];
    [v45 setFrame:{v38, v40, v42, v44}];
  }

  v46 = [(TVRUIControlPanelViewController *)self legacyButtonPanel];

  if (v46)
  {
    v47 = [(TVRUIControlPanelViewController *)self view];
    [v47 bounds];
    v49 = v48;
    v51 = v50;
    v53 = v52;
    v55 = v54;
    v56 = [(TVRUIControlPanelViewController *)self legacyButtonPanel];
    [v56 setFrame:{v49, v51, v53, v55}];
  }

  v57 = [(TVRUIControlPanelViewController *)self legacyPanelWithKeyboardButton];

  if (v57)
  {
    v58 = [(TVRUIControlPanelViewController *)self view];
    [v58 bounds];
    v60 = v59;
    v62 = v61;
    v64 = v63;
    v66 = v65;
    v67 = [(TVRUIControlPanelViewController *)self legacyPanelWithKeyboardButton];
    [v67 setFrame:{v60, v62, v64, v66}];
  }
}

- (void)_createTouchpadButtonPanel
{
  if (+[TVRUIFeatures swapBackPlayPauseButtonsEnabled])
  {
    v3 = &unk_287E84B28;
    v4 = &unk_287E84B40;
    v5 = self;
    v6 = 5;
  }

  else
  {
    v3 = &unk_287E84B58;
    v4 = &unk_287E84B70;
    v5 = self;
    v6 = 2;
  }

  v7 = [(TVRUIControlPanelViewController *)v5 _createViewWithPrimaryButtonType:v6 leftButtonTypes:v3 rightButtonTypes:v4];
  [(TVRUIControlPanelViewController *)self setTouchpadButtonPanel:v7];

  v8 = _TVRUIViewControllerLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&dword_26CFEB000, v8, OS_LOG_TYPE_DEFAULT, "Created touchpad button panel WITHOUT page buttons", v11, 2u);
  }

  v9 = [(TVRUIControlPanelViewController *)self allButtonPanels];
  v10 = [(TVRUIControlPanelViewController *)self touchpadButtonPanel];
  [v9 addObject:v10];
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

  v5 = [(TVRUIControlPanelViewController *)self allButtonPanels];
  v6 = [(TVRUIControlPanelViewController *)self genericButtonPanel];
  [v5 addObject:v6];
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

  v5 = [(TVRUIControlPanelViewController *)self allButtonPanels];
  v6 = [(TVRUIControlPanelViewController *)self panelWithKeyboardButton];
  [v5 addObject:v6];
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

  v5 = [(TVRUIControlPanelViewController *)self allButtonPanels];
  v6 = [(TVRUIControlPanelViewController *)self legacyButtonPanel];
  [v5 addObject:v6];
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

  v5 = [(TVRUIControlPanelViewController *)self allButtonPanels];
  v6 = [(TVRUIControlPanelViewController *)self legacyPanelWithKeyboardButton];
  [v5 addObject:v6];
}

- (id)_createViewWithPrimaryButtonType:(int64_t)a3 leftButtonTypes:(id)a4 rightButtonTypes:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = +[TVRUIFeatures isSolariumEnabled];
  v11 = [TVRUIButtonPanelView alloc];
  v12 = [(TVRUIControlPanelViewController *)self styleProvider];
  v13 = [(TVRUIButtonPanelView *)v11 initWithPrimaryButtonType:a3 secondaryLeftButtons:v9 secondaryRightButtons:v8 styleProvider:v12 glassEnabled:v10];

  [(TVRUIButtonPanelView *)v13 setAutoresizingMask:18];
  v14 = [(TVRUIControlPanelViewController *)self buttonActionsDelegate];
  [(TVRUIButtonPanelView *)v13 setButtonEventDelegate:v14];

  return v13;
}

- (id)_createPagedViewWithPrimaryButtonType:(int64_t)a3 leftButtonTypes:(id)a4
{
  v6 = a4;
  v7 = [TVRUIButtonPanelView alloc];
  v8 = [(TVRUIControlPanelViewController *)self styleProvider];
  v9 = [(TVRUIButtonPanelView *)v7 initPagedPanelWithPrimaryButtonType:a3 secondaryLeftButtons:v6 styleProvider:v8];

  [v9 setAutoresizingMask:18];
  v10 = [(TVRUIControlPanelViewController *)self buttonActionsDelegate];
  [v9 setButtonEventDelegate:v10];

  return v9;
}

- (void)showKeyboardButton
{
  v3 = [(TVRUIControlPanelViewController *)self panelWithKeyboardButton];

  if (!v3)
  {
    [(TVRUIControlPanelViewController *)self _createButtonPanelWithKeyboard];
  }

  v4 = [(TVRUIControlPanelViewController *)self panelWithKeyboardButton];
  v5 = _TVRUIViewControllerLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_26CFEB000, v5, OS_LOG_TYPE_DEFAULT, "Requesting transition to keyboard button panel", v6, 2u);
  }

  [(TVRUIControlPanelViewController *)self _transitionToPanelView:v4];
}

- (void)hideKeyboardButton
{
  v3 = _TVRUIViewControllerLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_26CFEB000, v3, OS_LOG_TYPE_DEFAULT, "Hiding keyboard button panel and requesting transition to touchpad buttonpanel", v5, 2u);
  }

  v4 = [(TVRUIControlPanelViewController *)self touchpadButtonPanel];
  [(TVRUIControlPanelViewController *)self _transitionToPanelView:v4];
}

- (void)enableSearchButton
{
  v2 = [(TVRUIControlPanelViewController *)self touchpadButtonPanel];
  [v2 enableSearchButton];
}

- (void)disableSearchButton
{
  v2 = [(TVRUIControlPanelViewController *)self touchpadButtonPanel];
  [v2 disableSearchButton];
}

- (void)_transitionToPanelView:(id)a3
{
  v4 = a3;
  [(TVRUIControlPanelViewController *)self setCurrentButtonPanel:v4];
  v5 = [(TVRUIControlPanelViewController *)self view];
  v6 = [v5 subviews];
  if ([v6 count])
  {
    v7 = [(TVRUIControlPanelViewController *)self view];
    v8 = [v7 subviews];
    v9 = [v8 objectAtIndexedSubscript:0];
    v10 = [v9 isEqual:v4];

    if ((v10 & 1) == 0)
    {
      v11 = MEMORY[0x277D75D18];
      v12 = [(TVRUIControlPanelViewController *)self view];
      v13 = [v12 subviews];
      v14 = [v13 objectAtIndexedSubscript:0];
      [v11 transitionFromView:v14 toView:v4 duration:5242880 options:&__block_literal_global_11 completion:0.3];

LABEL_8:
      goto LABEL_9;
    }
  }

  else
  {
  }

  v15 = [(TVRUIControlPanelViewController *)self view];
  v16 = [v15 subviews];
  v17 = [v16 count];

  if (!v17)
  {
    v18 = [(TVRUIControlPanelViewController *)self view];
    [v18 addSubview:v4];

    v12 = _TVRUIViewControllerLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v19 = 0;
      _os_log_impl(&dword_26CFEB000, v12, OS_LOG_TYPE_DEFAULT, "Adding buttonpanel as subview. not performing transition.", v19, 2u);
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

- (void)setDevice:(id)a3
{
  v4 = a3;
  v5 = [v4 supportsTouchEvents];
  v6 = _TVRUIViewControllerLog();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v7)
    {
      *buf = 0;
      _os_log_impl(&dword_26CFEB000, v6, OS_LOG_TYPE_DEFAULT, "Device supports touch events. transitioning to touchpad buttonpanel", buf, 2u);
    }

    v8 = [(TVRUIControlPanelViewController *)self touchpadButtonPanel];
    [(TVRUIControlPanelViewController *)self _transitionToPanelView:v8];
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
  self->_remoteDevice = v4;
}

- (void)setEnabled:(BOOL)a3
{
  if (self->_enabled != a3)
  {
    self->_enabled = a3;
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
  v2 = [(TVRUIControlPanelViewController *)self allButtonPanels];
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(v2);
        }

        [*(*(&v9 + 1) + 8 * v6++) disableButtons];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
  v3 = [(TVRUIControlPanelViewController *)self allButtonPanels];
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(v3);
        }

        [*(*(&v10 + 1) + 8 * v7++) enableButtonsForDevice:self->_remoteDevice];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
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

- (void)transitonToViewForDeviceType:(int64_t)a3
{
  [(TVRUIControlPanelViewController *)self loadViewIfNeeded];
  v5 = _TVRUIViewControllerLog();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (a3 == 2)
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
  v3 = [(TVRUIControlPanelViewController *)self genericButtonPanel];

  if (!v3)
  {
    [(TVRUIControlPanelViewController *)self _createGenericControlButtonPanel];
  }

  v4 = [(TVRUIControlPanelViewController *)self genericButtonPanel];
  [(TVRUIControlPanelViewController *)self _transitionToPanelView:v4];
}

- (void)_transitionToTouchpadPanelAndCreateIfNeeded
{
  v3 = [(TVRUIControlPanelViewController *)self touchpadButtonPanel];

  if (!v3)
  {
    [(TVRUIControlPanelViewController *)self _createTouchpadButtonPanel];
  }

  v4 = [(TVRUIControlPanelViewController *)self touchpadButtonPanel];
  [(TVRUIControlPanelViewController *)self _transitionToPanelView:v4];
}

- (_TVRUIEventDelegate)buttonActionsDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_buttonActionsDelegate);

  return WeakRetained;
}

@end