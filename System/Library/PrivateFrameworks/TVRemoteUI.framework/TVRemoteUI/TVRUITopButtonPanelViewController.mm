@interface TVRUITopButtonPanelViewController
- (_TVRUIEventDelegate)buttonEventDelegate;
- (void)_buttonPressed:(id)pressed;
- (void)_buttonReleased:(id)released;
- (void)_updateButtonsShapes;
- (void)_updateViewState;
- (void)setDevice:(id)device;
- (void)setEnabled:(BOOL)enabled;
- (void)setStyleProvider:(id)provider;
- (void)setVolumeControlAvailable:(BOOL)available;
- (void)viewDidLoad;
@end

@implementation TVRUITopButtonPanelViewController

- (void)viewDidLoad
{
  v96[3] = *MEMORY[0x277D85DE8];
  v93.receiver = self;
  v93.super_class = TVRUITopButtonPanelViewController;
  [(TVRUITopButtonPanelViewController *)&v93 viewDidLoad];
  v3 = [[TVRUIButton alloc] initWithType:29 hasTapAction:0];
  [(TVRUITopButtonPanelViewController *)self setMuteButton:v3];

  v4 = [[TVRUIButton alloc] initWithType:28 hasTapAction:0];
  [(TVRUITopButtonPanelViewController *)self setGuideButton:v4];

  v5 = [[TVRUIButton alloc] initWithType:30 hasTapAction:0];
  [(TVRUITopButtonPanelViewController *)self setPowerButton:v5];

  muteButton = [(TVRUITopButtonPanelViewController *)self muteButton];
  v96[0] = muteButton;
  guideButton = [(TVRUITopButtonPanelViewController *)self guideButton];
  v96[1] = guideButton;
  powerButton = [(TVRUITopButtonPanelViewController *)self powerButton];
  v96[2] = powerButton;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v96 count:3];
  [(TVRUITopButtonPanelViewController *)self setButtons:v9];

  [(TVRUITopButtonPanelViewController *)self _updateButtonsShapes];
  v91 = 0u;
  v92 = 0u;
  v89 = 0u;
  v90 = 0u;
  buttons = [(TVRUITopButtonPanelViewController *)self buttons];
  v11 = [buttons countByEnumeratingWithState:&v89 objects:v95 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v90;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v90 != v13)
        {
          objc_enumerationMutation(buttons);
        }

        v15 = *(*(&v89 + 1) + 8 * i);
        view = [(TVRUITopButtonPanelViewController *)self view];
        [view addSubview:v15];

        [v15 setTranslatesAutoresizingMaskIntoConstraints:0];
        [v15 addTarget:self action:sel__buttonPressed_ forControlEvents:1];
        [v15 addTarget:self action:sel__buttonReleased_ forControlEvents:448];
      }

      v12 = [buttons countByEnumeratingWithState:&v89 objects:v95 count:16];
    }

    while (v12);
  }

  styleProvider = [(TVRUITopButtonPanelViewController *)self styleProvider];
  [styleProvider controlPanelInsets];
  v19 = v18;
  v21 = v20;

  v61 = MEMORY[0x277CCAAD0];
  muteButton2 = [(TVRUITopButtonPanelViewController *)self muteButton];
  leftAnchor = [muteButton2 leftAnchor];
  view2 = [(TVRUITopButtonPanelViewController *)self view];
  leftAnchor2 = [view2 leftAnchor];
  v83 = [leftAnchor constraintEqualToAnchor:leftAnchor2 constant:v19];
  v94[0] = v83;
  muteButton3 = [(TVRUITopButtonPanelViewController *)self muteButton];
  centerYAnchor = [muteButton3 centerYAnchor];
  view3 = [(TVRUITopButtonPanelViewController *)self view];
  centerYAnchor2 = [view3 centerYAnchor];
  v78 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v94[1] = v78;
  muteButton4 = [(TVRUITopButtonPanelViewController *)self muteButton];
  heightAnchor = [muteButton4 heightAnchor];
  view4 = [(TVRUITopButtonPanelViewController *)self view];
  heightAnchor2 = [view4 heightAnchor];
  v73 = [heightAnchor constraintEqualToAnchor:heightAnchor2];
  v94[2] = v73;
  muteButton5 = [(TVRUITopButtonPanelViewController *)self muteButton];
  widthAnchor = [muteButton5 widthAnchor];
  muteButton6 = [(TVRUITopButtonPanelViewController *)self muteButton];
  heightAnchor3 = [muteButton6 heightAnchor];
  v68 = [widthAnchor constraintEqualToAnchor:heightAnchor3];
  v94[3] = v68;
  guideButton2 = [(TVRUITopButtonPanelViewController *)self guideButton];
  centerXAnchor = [guideButton2 centerXAnchor];
  view5 = [(TVRUITopButtonPanelViewController *)self view];
  centerXAnchor2 = [view5 centerXAnchor];
  v63 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v94[4] = v63;
  guideButton3 = [(TVRUITopButtonPanelViewController *)self guideButton];
  centerYAnchor3 = [guideButton3 centerYAnchor];
  view6 = [(TVRUITopButtonPanelViewController *)self view];
  centerYAnchor4 = [view6 centerYAnchor];
  v57 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
  v94[5] = v57;
  guideButton4 = [(TVRUITopButtonPanelViewController *)self guideButton];
  heightAnchor4 = [guideButton4 heightAnchor];
  view7 = [(TVRUITopButtonPanelViewController *)self view];
  heightAnchor5 = [view7 heightAnchor];
  v52 = [heightAnchor4 constraintEqualToAnchor:heightAnchor5];
  v94[6] = v52;
  guideButton5 = [(TVRUITopButtonPanelViewController *)self guideButton];
  widthAnchor2 = [guideButton5 widthAnchor];
  guideButton6 = [(TVRUITopButtonPanelViewController *)self guideButton];
  heightAnchor6 = [guideButton6 heightAnchor];
  v47 = [widthAnchor2 constraintEqualToAnchor:heightAnchor6];
  v94[7] = v47;
  powerButton2 = [(TVRUITopButtonPanelViewController *)self powerButton];
  rightAnchor = [powerButton2 rightAnchor];
  view8 = [(TVRUITopButtonPanelViewController *)self view];
  rightAnchor2 = [view8 rightAnchor];
  v42 = [rightAnchor constraintEqualToAnchor:rightAnchor2 constant:-v21];
  v94[8] = v42;
  powerButton3 = [(TVRUITopButtonPanelViewController *)self powerButton];
  centerYAnchor5 = [powerButton3 centerYAnchor];
  view9 = [(TVRUITopButtonPanelViewController *)self view];
  centerYAnchor6 = [view9 centerYAnchor];
  v37 = [centerYAnchor5 constraintEqualToAnchor:centerYAnchor6];
  v94[9] = v37;
  powerButton4 = [(TVRUITopButtonPanelViewController *)self powerButton];
  heightAnchor7 = [powerButton4 heightAnchor];
  view10 = [(TVRUITopButtonPanelViewController *)self view];
  heightAnchor8 = [view10 heightAnchor];
  v24 = [heightAnchor7 constraintEqualToAnchor:heightAnchor8];
  v94[10] = v24;
  powerButton5 = [(TVRUITopButtonPanelViewController *)self powerButton];
  widthAnchor3 = [powerButton5 widthAnchor];
  powerButton6 = [(TVRUITopButtonPanelViewController *)self powerButton];
  heightAnchor9 = [powerButton6 heightAnchor];
  v29 = [widthAnchor3 constraintEqualToAnchor:heightAnchor9];
  v94[11] = v29;
  v30 = [MEMORY[0x277CBEA60] arrayWithObjects:v94 count:12];
  [v61 activateConstraints:v30];

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v32 = *MEMORY[0x277D81C70];
  mainQueue = [MEMORY[0x277CCABD8] mainQueue];
  v88[0] = MEMORY[0x277D85DD0];
  v88[1] = 3221225472;
  v88[2] = __48__TVRUITopButtonPanelViewController_viewDidLoad__block_invoke;
  v88[3] = &unk_279D88768;
  v88[4] = self;
  v34 = [defaultCenter addObserverForName:v32 object:0 queue:mainQueue usingBlock:v88];
}

- (void)setDevice:(id)device
{
  deviceCopy = device;
  if (self->_device != deviceCopy)
  {
    v12 = deviceCopy;
    objc_storeStrong(&self->_device, device);
    supportsMute = [(TVRUIDevice *)self->_device supportsMute];
    muteButton = [(TVRUITopButtonPanelViewController *)self muteButton];
    [muteButton setEnabled:supportsMute];

    supportsGuide = [(TVRUIDevice *)self->_device supportsGuide];
    guideButton = [(TVRUITopButtonPanelViewController *)self guideButton];
    [guideButton setEnabled:supportsGuide];

    supportsPower = [(TVRUIDevice *)self->_device supportsPower];
    powerButton = [(TVRUITopButtonPanelViewController *)self powerButton];
    [powerButton setEnabled:supportsPower];

    deviceCopy = v12;
  }
}

- (void)setStyleProvider:(id)provider
{
  providerCopy = provider;
  if (self->_styleProvider != providerCopy)
  {
    v6 = providerCopy;
    objc_storeStrong(&self->_styleProvider, provider);
    providerCopy = v6;
  }
}

- (void)setEnabled:(BOOL)enabled
{
  if (self->_enabled != enabled)
  {
    self->_enabled = enabled;
    [(TVRUITopButtonPanelViewController *)self _updateViewState];
  }
}

- (void)_updateViewState
{
  v3 = 1.0;
  if (![(TVRUITopButtonPanelViewController *)self enabled])
  {
    styleProvider = [(TVRUITopButtonPanelViewController *)self styleProvider];
    [styleProvider disabledButtonAlpha];
    v3 = v5;
  }

  view = [(TVRUITopButtonPanelViewController *)self view];
  [view setAlpha:v3];

  muteButton = [(TVRUITopButtonPanelViewController *)self muteButton];
  [muteButton setAlpha:v3];

  guideButton = [(TVRUITopButtonPanelViewController *)self guideButton];
  [guideButton setAlpha:v3];

  powerButton = [(TVRUITopButtonPanelViewController *)self powerButton];
  [powerButton setAlpha:v3];
}

- (void)setVolumeControlAvailable:(BOOL)available
{
  availableCopy = available;
  if (available)
  {
    device = [(TVRUITopButtonPanelViewController *)self device];
    supportsMute = [device supportsMute];
  }

  else
  {
    supportsMute = 0;
  }

  muteButton = [(TVRUITopButtonPanelViewController *)self muteButton];
  [muteButton setEnabled:supportsMute];

  if (availableCopy)
  {
  }
}

- (void)_buttonPressed:(id)pressed
{
  v9 = +[TVRUIButtonEvent createButtonEvent:buttonType:](TVRUIButtonEvent, "createButtonEvent:buttonType:", 1, [pressed buttonType]);
  buttonEventDelegate = [(TVRUITopButtonPanelViewController *)self buttonEventDelegate];
  if (buttonEventDelegate)
  {
    v5 = buttonEventDelegate;
    buttonEventDelegate2 = [(TVRUITopButtonPanelViewController *)self buttonEventDelegate];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      buttonEventDelegate3 = [(TVRUITopButtonPanelViewController *)self buttonEventDelegate];
      [buttonEventDelegate3 generatedButtonEvent:v9];
    }
  }
}

- (void)_buttonReleased:(id)released
{
  v9 = +[TVRUIButtonEvent createButtonEvent:buttonType:](TVRUIButtonEvent, "createButtonEvent:buttonType:", 2, [released buttonType]);
  buttonEventDelegate = [(TVRUITopButtonPanelViewController *)self buttonEventDelegate];
  if (buttonEventDelegate)
  {
    v5 = buttonEventDelegate;
    buttonEventDelegate2 = [(TVRUITopButtonPanelViewController *)self buttonEventDelegate];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      buttonEventDelegate3 = [(TVRUITopButtonPanelViewController *)self buttonEventDelegate];
      [buttonEventDelegate3 generatedButtonEvent:v9];
    }
  }
}

- (void)_updateButtonsShapes
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  buttons = [(TVRUITopButtonPanelViewController *)self buttons];
  v4 = [buttons countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(buttons);
        }

        v8 = *(*(&v11 + 1) + 8 * v7);
        [v8 setHasButtonShape:_AXSButtonShapesEnabled() != 0];
        if ([v8 hasButtonShape])
        {
          styleProvider = [(TVRUITopButtonPanelViewController *)self styleProvider];
          buttonBackgroundColor = [styleProvider buttonBackgroundColor];
          [v8 setBackgroundColor:buttonBackgroundColor];
        }

        else
        {
          [v8 setBackgroundColor:0];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [buttons countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }
}

- (_TVRUIEventDelegate)buttonEventDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_buttonEventDelegate);

  return WeakRetained;
}

@end