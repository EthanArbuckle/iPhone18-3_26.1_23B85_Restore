@interface TVRUITopButtonPanelViewController
- (_TVRUIEventDelegate)buttonEventDelegate;
- (void)_buttonPressed:(id)a3;
- (void)_buttonReleased:(id)a3;
- (void)_updateButtonsShapes;
- (void)_updateViewState;
- (void)setDevice:(id)a3;
- (void)setEnabled:(BOOL)a3;
- (void)setStyleProvider:(id)a3;
- (void)setVolumeControlAvailable:(BOOL)a3;
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

  v6 = [(TVRUITopButtonPanelViewController *)self muteButton];
  v96[0] = v6;
  v7 = [(TVRUITopButtonPanelViewController *)self guideButton];
  v96[1] = v7;
  v8 = [(TVRUITopButtonPanelViewController *)self powerButton];
  v96[2] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v96 count:3];
  [(TVRUITopButtonPanelViewController *)self setButtons:v9];

  [(TVRUITopButtonPanelViewController *)self _updateButtonsShapes];
  v91 = 0u;
  v92 = 0u;
  v89 = 0u;
  v90 = 0u;
  v10 = [(TVRUITopButtonPanelViewController *)self buttons];
  v11 = [v10 countByEnumeratingWithState:&v89 objects:v95 count:16];
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
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v89 + 1) + 8 * i);
        v16 = [(TVRUITopButtonPanelViewController *)self view];
        [v16 addSubview:v15];

        [v15 setTranslatesAutoresizingMaskIntoConstraints:0];
        [v15 addTarget:self action:sel__buttonPressed_ forControlEvents:1];
        [v15 addTarget:self action:sel__buttonReleased_ forControlEvents:448];
      }

      v12 = [v10 countByEnumeratingWithState:&v89 objects:v95 count:16];
    }

    while (v12);
  }

  v17 = [(TVRUITopButtonPanelViewController *)self styleProvider];
  [v17 controlPanelInsets];
  v19 = v18;
  v21 = v20;

  v61 = MEMORY[0x277CCAAD0];
  v87 = [(TVRUITopButtonPanelViewController *)self muteButton];
  v85 = [v87 leftAnchor];
  v86 = [(TVRUITopButtonPanelViewController *)self view];
  v84 = [v86 leftAnchor];
  v83 = [v85 constraintEqualToAnchor:v84 constant:v19];
  v94[0] = v83;
  v82 = [(TVRUITopButtonPanelViewController *)self muteButton];
  v80 = [v82 centerYAnchor];
  v81 = [(TVRUITopButtonPanelViewController *)self view];
  v79 = [v81 centerYAnchor];
  v78 = [v80 constraintEqualToAnchor:v79];
  v94[1] = v78;
  v77 = [(TVRUITopButtonPanelViewController *)self muteButton];
  v75 = [v77 heightAnchor];
  v76 = [(TVRUITopButtonPanelViewController *)self view];
  v74 = [v76 heightAnchor];
  v73 = [v75 constraintEqualToAnchor:v74];
  v94[2] = v73;
  v72 = [(TVRUITopButtonPanelViewController *)self muteButton];
  v70 = [v72 widthAnchor];
  v71 = [(TVRUITopButtonPanelViewController *)self muteButton];
  v69 = [v71 heightAnchor];
  v68 = [v70 constraintEqualToAnchor:v69];
  v94[3] = v68;
  v67 = [(TVRUITopButtonPanelViewController *)self guideButton];
  v65 = [v67 centerXAnchor];
  v66 = [(TVRUITopButtonPanelViewController *)self view];
  v64 = [v66 centerXAnchor];
  v63 = [v65 constraintEqualToAnchor:v64];
  v94[4] = v63;
  v62 = [(TVRUITopButtonPanelViewController *)self guideButton];
  v59 = [v62 centerYAnchor];
  v60 = [(TVRUITopButtonPanelViewController *)self view];
  v58 = [v60 centerYAnchor];
  v57 = [v59 constraintEqualToAnchor:v58];
  v94[5] = v57;
  v56 = [(TVRUITopButtonPanelViewController *)self guideButton];
  v54 = [v56 heightAnchor];
  v55 = [(TVRUITopButtonPanelViewController *)self view];
  v53 = [v55 heightAnchor];
  v52 = [v54 constraintEqualToAnchor:v53];
  v94[6] = v52;
  v51 = [(TVRUITopButtonPanelViewController *)self guideButton];
  v49 = [v51 widthAnchor];
  v50 = [(TVRUITopButtonPanelViewController *)self guideButton];
  v48 = [v50 heightAnchor];
  v47 = [v49 constraintEqualToAnchor:v48];
  v94[7] = v47;
  v46 = [(TVRUITopButtonPanelViewController *)self powerButton];
  v44 = [v46 rightAnchor];
  v45 = [(TVRUITopButtonPanelViewController *)self view];
  v43 = [v45 rightAnchor];
  v42 = [v44 constraintEqualToAnchor:v43 constant:-v21];
  v94[8] = v42;
  v41 = [(TVRUITopButtonPanelViewController *)self powerButton];
  v39 = [v41 centerYAnchor];
  v40 = [(TVRUITopButtonPanelViewController *)self view];
  v38 = [v40 centerYAnchor];
  v37 = [v39 constraintEqualToAnchor:v38];
  v94[9] = v37;
  v36 = [(TVRUITopButtonPanelViewController *)self powerButton];
  v35 = [v36 heightAnchor];
  v22 = [(TVRUITopButtonPanelViewController *)self view];
  v23 = [v22 heightAnchor];
  v24 = [v35 constraintEqualToAnchor:v23];
  v94[10] = v24;
  v25 = [(TVRUITopButtonPanelViewController *)self powerButton];
  v26 = [v25 widthAnchor];
  v27 = [(TVRUITopButtonPanelViewController *)self powerButton];
  v28 = [v27 heightAnchor];
  v29 = [v26 constraintEqualToAnchor:v28];
  v94[11] = v29;
  v30 = [MEMORY[0x277CBEA60] arrayWithObjects:v94 count:12];
  [v61 activateConstraints:v30];

  v31 = [MEMORY[0x277CCAB98] defaultCenter];
  v32 = *MEMORY[0x277D81C70];
  v33 = [MEMORY[0x277CCABD8] mainQueue];
  v88[0] = MEMORY[0x277D85DD0];
  v88[1] = 3221225472;
  v88[2] = __48__TVRUITopButtonPanelViewController_viewDidLoad__block_invoke;
  v88[3] = &unk_279D88768;
  v88[4] = self;
  v34 = [v31 addObserverForName:v32 object:0 queue:v33 usingBlock:v88];
}

- (void)setDevice:(id)a3
{
  v5 = a3;
  if (self->_device != v5)
  {
    v12 = v5;
    objc_storeStrong(&self->_device, a3);
    v6 = [(TVRUIDevice *)self->_device supportsMute];
    v7 = [(TVRUITopButtonPanelViewController *)self muteButton];
    [v7 setEnabled:v6];

    v8 = [(TVRUIDevice *)self->_device supportsGuide];
    v9 = [(TVRUITopButtonPanelViewController *)self guideButton];
    [v9 setEnabled:v8];

    v10 = [(TVRUIDevice *)self->_device supportsPower];
    v11 = [(TVRUITopButtonPanelViewController *)self powerButton];
    [v11 setEnabled:v10];

    v5 = v12;
  }
}

- (void)setStyleProvider:(id)a3
{
  v5 = a3;
  if (self->_styleProvider != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_styleProvider, a3);
    v5 = v6;
  }
}

- (void)setEnabled:(BOOL)a3
{
  if (self->_enabled != a3)
  {
    self->_enabled = a3;
    [(TVRUITopButtonPanelViewController *)self _updateViewState];
  }
}

- (void)_updateViewState
{
  v3 = 1.0;
  if (![(TVRUITopButtonPanelViewController *)self enabled])
  {
    v4 = [(TVRUITopButtonPanelViewController *)self styleProvider];
    [v4 disabledButtonAlpha];
    v3 = v5;
  }

  v6 = [(TVRUITopButtonPanelViewController *)self view];
  [v6 setAlpha:v3];

  v7 = [(TVRUITopButtonPanelViewController *)self muteButton];
  [v7 setAlpha:v3];

  v8 = [(TVRUITopButtonPanelViewController *)self guideButton];
  [v8 setAlpha:v3];

  v9 = [(TVRUITopButtonPanelViewController *)self powerButton];
  [v9 setAlpha:v3];
}

- (void)setVolumeControlAvailable:(BOOL)a3
{
  v3 = a3;
  if (a3)
  {
    v7 = [(TVRUITopButtonPanelViewController *)self device];
    v5 = [v7 supportsMute];
  }

  else
  {
    v5 = 0;
  }

  v6 = [(TVRUITopButtonPanelViewController *)self muteButton];
  [v6 setEnabled:v5];

  if (v3)
  {
  }
}

- (void)_buttonPressed:(id)a3
{
  v9 = +[TVRUIButtonEvent createButtonEvent:buttonType:](TVRUIButtonEvent, "createButtonEvent:buttonType:", 1, [a3 buttonType]);
  v4 = [(TVRUITopButtonPanelViewController *)self buttonEventDelegate];
  if (v4)
  {
    v5 = v4;
    v6 = [(TVRUITopButtonPanelViewController *)self buttonEventDelegate];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v8 = [(TVRUITopButtonPanelViewController *)self buttonEventDelegate];
      [v8 generatedButtonEvent:v9];
    }
  }
}

- (void)_buttonReleased:(id)a3
{
  v9 = +[TVRUIButtonEvent createButtonEvent:buttonType:](TVRUIButtonEvent, "createButtonEvent:buttonType:", 2, [a3 buttonType]);
  v4 = [(TVRUITopButtonPanelViewController *)self buttonEventDelegate];
  if (v4)
  {
    v5 = v4;
    v6 = [(TVRUITopButtonPanelViewController *)self buttonEventDelegate];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v8 = [(TVRUITopButtonPanelViewController *)self buttonEventDelegate];
      [v8 generatedButtonEvent:v9];
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
  v3 = [(TVRUITopButtonPanelViewController *)self buttons];
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * v7);
        [v8 setHasButtonShape:_AXSButtonShapesEnabled() != 0];
        if ([v8 hasButtonShape])
        {
          v9 = [(TVRUITopButtonPanelViewController *)self styleProvider];
          v10 = [v9 buttonBackgroundColor];
          [v8 setBackgroundColor:v10];
        }

        else
        {
          [v8 setBackgroundColor:0];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
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