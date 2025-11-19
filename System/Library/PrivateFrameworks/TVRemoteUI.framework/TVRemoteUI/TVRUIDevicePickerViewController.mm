@interface TVRUIDevicePickerViewController
- (BOOL)_accessibilityFontSizesEnabled;
- (BOOL)canPresentTip;
- (BOOL)tipSourceSupportsSiri;
- (CGRect)_preferredTableViewFrameWhenExpanded:(BOOL)a3;
- (CGRect)tipSourceRect;
- (CGSize)_buttonSize;
- (TVRUIDevicePickerDelegate)delegate;
- (TVRUIMenuProvider)menuProvider;
- (UIView)tipSourceView;
- (_TVRUIEventDelegate)buttonEventDelegate;
- (double)_calculatedContentHeight;
- (double)_contentHeightForPreferredContentSizeCategory;
- (double)_defaultCalculatedContentHeight;
- (double)_effectiveContentHeight;
- (double)_expandedContentHeight;
- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4;
- (id)_cellForDevice:(id)a3;
- (id)_devicesMenu;
- (id)_lastVisibleCellSupportingFindMy;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_buttonPressed:(id)a3;
- (void)_buttonReleased:(id)a3;
- (void)_device:(id)a3 updatedFindMySupported:(BOOL)a4;
- (void)_presentShortcutsMenuPopover;
- (void)_setupAnimators;
- (void)_setupButtons;
- (void)_setupDeviceList;
- (void)_setupDeviceTitleView;
- (void)_setupTitleButtonIfNeeded;
- (void)_sortAndReloadDevices;
- (void)_titleWasLongPressed:(id)a3;
- (void)_toggleState;
- (void)_updateButtonsShapes;
- (void)_updateDevice;
- (void)_updateDeviceNameAutomationIdentifier:(id)a3;
- (void)_updateDevicesAndReloadWithSuggestedDevices:(id)a3;
- (void)_updateTableFrame:(BOOL)a3;
- (void)_updateTitleViewForDevice:(id)a3;
- (void)_updateViewState;
- (void)collapseDeviceList;
- (void)didChangeToExpanded:(BOOL)a3;
- (void)didTapWrapperView:(id)a3;
- (void)expandDeviceList;
- (void)loadView;
- (void)resetSelectedDevice;
- (void)setDevice:(id)a3;
- (void)setDeviceTitle:(id)a3;
- (void)setDevices:(id)a3;
- (void)setEnabled:(BOOL)a3;
- (void)setMenuProvider:(id)a3;
- (void)setStyleProvider:(id)a3;
- (void)setSuggestedDevices:(id)a3;
- (void)setVolumeControlAvailable:(BOOL)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation TVRUIDevicePickerViewController

- (void)loadView
{
  v3 = [[_TVRUIDevicePickerView alloc] _initWithViewController:self];
  [(TVRUIDevicePickerViewController *)self setView:v3];
}

- (void)viewDidLoad
{
  v9.receiver = self;
  v9.super_class = TVRUIDevicePickerViewController;
  [(TVRUIDevicePickerViewController *)&v9 viewDidLoad];
  [(TVRUIDevicePickerViewController *)self _setupDeviceTitleView];
  [(TVRUIDevicePickerViewController *)self _setupButtons];
  [(TVRUIDevicePickerViewController *)self resetSelectedDevice];
  [(TVRUIDevicePickerViewController *)self _setupDeviceList];
  [(TVRUIDevicePickerViewController *)self _setupAnimators];
  v3 = objc_alloc_init(TVREventHaptic);
  [(TVRUIDevicePickerViewController *)self setEventHaptic:v3];

  v4 = [(TVRUIDevicePickerViewController *)self titleButton];
  v5 = [(TVRUIDevicePickerViewController *)self styleProvider];
  v6 = [v5 defaultDeviceTitle];
  [v4 setTitle:v6 forState:0];

  v7 = [(TVRUIDevicePickerViewController *)self styleProvider];
  LODWORD(v5) = [v7 isPad];

  if (v5)
  {
    v8 = [(TVRUIDevicePickerViewController *)self view];
    [v8 setClipsToBounds:1];
  }
}

- (void)viewWillLayoutSubviews
{
  v3 = [(TVRUIDevicePickerViewController *)self useNewDevicePicker];
  v4 = _UISolariumEnabled();
  v5 = [(TVRUIDevicePickerViewController *)self view];
  [v5 bounds];
  v94 = v7;
  v95 = v6;
  v93 = v8;
  v96 = v9;

  v10 = [(TVRUIDevicePickerViewController *)self deviceTitleView];
  [v10 bounds];
  v99 = v12;
  v100 = v11;
  v97 = v13;
  v98 = v14;

  v15 = [(TVRUIDevicePickerViewController *)self styleProvider];
  [v15 topControlPanelInsets];
  v17 = v16;
  v19 = v18;

  [(TVRUIDevicePickerViewController *)self _buttonSize];
  v21 = v20;
  v23 = v22;
  if (v4 && ![(TVRUIDevicePickerViewController *)self isDevicePickerShowing])
  {
    v24 = [(TVRUIDevicePickerViewController *)self muteButton];
    v91 = *(MEMORY[0x277CBF2C0] + 16);
    *&v106.a = *MEMORY[0x277CBF2C0];
    v92 = *&v106.a;
    *&v106.c = v91;
    *&v106.tx = *(MEMORY[0x277CBF2C0] + 32);
    v90 = *&v106.tx;
    [v24 setTransform:&v106];

    v25 = [(TVRUIDevicePickerViewController *)self muteButtonOverride];
    *&v106.a = v92;
    *&v106.c = v91;
    *&v106.tx = v90;
    [v25 setTransform:&v106];

    v26 = [(TVRUIDevicePickerViewController *)self powerButton];
    *&v106.a = v92;
    *&v106.c = v91;
    *&v106.tx = v90;
    [v26 setTransform:&v106];
  }

  if (v3)
  {
    v27 = [(TVRUIDevicePickerViewController *)self deviceTitleView];
    [v27 frame];
    v29 = v28;
    v31 = v30;
    v32 = v19;
    v34 = v33;
    v36 = v35;
    v37 = [(TVRUIDevicePickerViewController *)self tableViewWrapper];
    v38 = v34;
    v19 = v32;
    [v37 setCollapsedGlassBackgroundFrame:{v29, v31, v38, v36}];

    v39 = [(TVRUIDevicePickerViewController *)self tableViewWrapper];
    [v39 setShowsGlassBackground:1];
  }

  v40 = self->_baseHeight * 0.5 - v23 * 0.5;
  v41 = [(TVRUIDevicePickerViewController *)self muteButton];
  v42 = v21;
  [v41 setFrame:{v17, v40, v21, v23}];

  v43 = [(TVRUIDevicePickerViewController *)self muteButtonOverride];
  [v43 setFrame:{v17, v40, v21, v23}];

  v44 = [(TVRUIDevicePickerViewController *)self view];
  [v44 bounds];
  v45 = CGRectGetMaxX(v107) - v19 - v21;
  v108.origin.x = v100;
  v108.origin.y = v97;
  v108.size.width = v99;
  v108.size.height = v98;
  v46 = CGRectGetMidY(v108) - v23 * 0.5;
  v47 = [(TVRUIDevicePickerViewController *)self powerButton];
  [v47 setFrame:{v45, v46, v42, v23}];

  v48 = [(TVRUIDevicePickerViewController *)self powerButton];
  [v48 frame];
  v49 = CGRectGetMinX(v109) + -10.0;
  v50 = [(TVRUIDevicePickerViewController *)self muteButton];
  [v50 frame];
  v51 = v49 - (CGRectGetMaxX(v110) + 10.0);

  v52 = [(TVRUIDevicePickerViewController *)self deviceTitleView];
  v53 = [(TVRUIDevicePickerViewController *)self muteButton];
  [v53 frame];
  [v52 setFrame:{CGRectGetMaxX(v111) + 10.0, 0.0, v51, self->_baseHeight}];

  v54 = [(TVRUIDevicePickerViewController *)self tableViewTopSeperator];
  v55 = [(TVRUIDevicePickerViewController *)self styleProvider];
  [v55 touchpadInsets];
  v57 = v56;
  v112.origin.x = v100;
  v112.origin.y = v97;
  v112.size.width = v99;
  v112.size.height = v98;
  Height = CGRectGetHeight(v112);
  v59 = [(TVRUIDevicePickerViewController *)self view];
  [v59 bounds];
  Width = CGRectGetWidth(v113);
  v61 = [(TVRUIDevicePickerViewController *)self styleProvider];
  [v61 touchpadInsets];
  v63 = Width - v62;
  v64 = [(TVRUIDevicePickerViewController *)self styleProvider];
  [v64 touchpadInsets];
  [v54 setFrame:{v57, Height, v63 - v65, 1.0}];

  v66 = [(TVRUIDevicePickerViewController *)self tableViewWrapper];
  v114.origin.x = v100;
  v114.origin.y = v97;
  v114.size.width = v99;
  v114.size.height = v98;
  v67 = CGRectGetMaxY(v114) + 2.0;
  v68 = [(TVRUIDevicePickerViewController *)self view];
  [v68 bounds];
  v69 = CGRectGetWidth(v115);
  v70 = [(TVRUIDevicePickerViewController *)self view];
  [v70 bounds];
  v71 = CGRectGetHeight(v116);
  v117.origin.x = v100;
  v117.origin.y = v97;
  v117.size.width = v99;
  v117.size.height = v98;
  v72 = v71 - CGRectGetHeight(v117) + -2.0;
  v73 = [(TVRUIDevicePickerViewController *)self view];
  [v73 safeAreaInsets];
  [v66 setFrame:{0.0, v67, v69, v72 - v74}];

  if (v3)
  {
    v75 = [(TVRUIDevicePickerViewController *)self view];
    [v75 bounds];
    v77 = v76;
    v79 = v78;
    v81 = v80;
    v83 = v82;
    v84 = [(TVRUIDevicePickerViewController *)self tableViewWrapper];
    [v84 setFrame:{v77, v79, v81, v83}];
  }

  if (v4)
  {
    if ([(TVRUIDevicePickerViewController *)self isDevicePickerShowing])
    {
      memset(&v106, 0, sizeof(v106));
      v118.origin.x = v95;
      v118.origin.y = v93;
      v118.size.width = v94;
      v118.size.height = v96;
      v85 = CGRectGetWidth(v118);
      CGAffineTransformMakeTranslation(&v106, v85 * -0.5, 0.0);
      memset(&v105, 0, sizeof(v105));
      v119.origin.x = v95;
      v119.origin.y = v93;
      v119.size.width = v94;
      v119.size.height = v96;
      v86 = CGRectGetWidth(v119);
      CGAffineTransformMakeTranslation(&v105, v86 * 0.5, 0.0);
      v104 = v106;
      v87 = [(TVRUIDevicePickerViewController *)self muteButton];
      v103 = v104;
      [v87 setTransform:&v103];

      v102 = v106;
      v88 = [(TVRUIDevicePickerViewController *)self muteButtonOverride];
      v103 = v102;
      [v88 setTransform:&v103];

      v101 = v105;
      v89 = [(TVRUIDevicePickerViewController *)self powerButton];
      v103 = v101;
      [v89 setTransform:&v103];
    }
  }
}

- (CGSize)_buttonSize
{
  if (_UISolariumEnabled())
  {
    baseHeight = self->_baseHeight;
  }

  else
  {
    baseHeight = 48.0;
  }

  v4 = baseHeight;
  result.height = v4;
  result.width = baseHeight;
  return result;
}

- (void)_setupButtons
{
  v43[2] = *MEMORY[0x277D85DE8];
  v33 = _UISolariumEnabled();
  v3 = [[TVRUIButton alloc] initWithType:29 hasTapAction:0];
  [(TVRUIDevicePickerViewController *)self setMuteButton:v3];

  v4 = [[TVRUIButton alloc] initWithType:30 hasTapAction:0];
  [(TVRUIDevicePickerViewController *)self setPowerButton:v4];

  v5 = [(TVRUIDevicePickerViewController *)self muteButton];
  v43[0] = v5;
  v6 = [(TVRUIDevicePickerViewController *)self powerButton];
  v43[1] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v43 count:2];
  [(TVRUIDevicePickerViewController *)self setButtons:v7];

  [(TVRUIDevicePickerViewController *)self _updateButtonsShapes];
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v8 = [(TVRUIDevicePickerViewController *)self buttons];
  v9 = [v8 countByEnumeratingWithState:&v38 objects:v42 count:16];
  if (v9)
  {
    v10 = *v39;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v39 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v38 + 1) + 8 * i);
        v13 = [(TVRUIDevicePickerViewController *)self view];
        [v13 addSubview:v12];

        [v12 addTarget:self action:sel__buttonPressed_ forControlEvents:1];
        [v12 addTarget:self action:sel__buttonReleased_ forControlEvents:448];
      }

      v9 = [v8 countByEnumeratingWithState:&v38 objects:v42 count:16];
    }

    while (v9);
  }

  if (+[TVRUIFeatures replaceMuteButtonWithContextMenu])
  {
    objc_initWeak(&location, self);
    v14 = @"ellipsis.circle";
    if (v33)
    {
      v14 = @"square.grid.2x2";
    }

    v15 = v14;
    v16 = [(TVRUIDevicePickerViewController *)self styleProvider];
    v17 = [v16 symbolImageForButtonPanelNamed:v15];

    v18 = MEMORY[0x277D750C8];
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __48__TVRUIDevicePickerViewController__setupButtons__block_invoke;
    v35[3] = &unk_279D87C68;
    objc_copyWeak(&v36, &location);
    v19 = [v18 actionWithTitle:&stru_287E6AEF8 image:v17 identifier:0 handler:v35];
    if (v33)
    {
      v20 = [MEMORY[0x277D75230] borderedButtonConfiguration];
      [v20 setCornerStyle:4];
      v21 = [v20 background];
      [v21 setBackgroundColor:0];
    }

    else
    {
      v20 = [MEMORY[0x277D75230] plainButtonConfiguration];
    }

    v22 = [MEMORY[0x277D75220] buttonWithConfiguration:v20 primaryAction:v19];
    v23 = [(TVRUIDevicePickerViewController *)self styleProvider];
    v24 = [v23 primaryTextAndGlyphColor];
    [(UIButton *)v22 setTintColor:v24];

    [(UIButton *)v22 setShowsMenuAsPrimaryAction:1];
    [(UIButton *)v22 setOverrideUserInterfaceStyle:2];
    if (v33)
    {
      [(UIButton *)v22 tvrui_makeCapsuleCorners];
      [(UIButton *)v22 tvrui_setGlassBackground];
    }

    v25 = [(TVRUIDevicePickerViewController *)self view];
    [v25 addSubview:v22];

    objc_destroyWeak(&v36);
    muteButtonOverride = self->_muteButtonOverride;
    self->_muteButtonOverride = v22;

    v27 = [(TVRUIDevicePickerViewController *)self muteButton];
    [v27 setHidden:1];

    v28 = [(TVRUIDevicePickerViewController *)self muteButton];
    [v28 setAlpha:0.0];

    objc_destroyWeak(&location);
  }

  v29 = [MEMORY[0x277CCAB98] defaultCenter];
  v30 = *MEMORY[0x277D81C70];
  v31 = [MEMORY[0x277CCABD8] mainQueue];
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __48__TVRUIDevicePickerViewController__setupButtons__block_invoke_2;
  v34[3] = &unk_279D88768;
  v34[4] = self;
  v32 = [v29 addObserverForName:v30 object:0 queue:v31 usingBlock:v34];
}

void __48__TVRUIDevicePickerViewController__setupButtons__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _presentShortcutsMenuPopover];
}

- (void)_updateButtonsShapes
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [(TVRUIDevicePickerViewController *)self buttons];
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6++) setHasButtonShape:_AXSButtonShapesEnabled() != 0];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)_setupDeviceTitleView
{
  v3 = _UISolariumEnabled();
  v4 = [(TVRUIDevicePickerViewController *)self deviceTitleView];

  if (!v4)
  {
    v5 = [TVRUITitleView alloc];
    v6 = [(TVRUIDevicePickerViewController *)self styleProvider];
    v7 = [(TVRUITitleView *)v5 initWithStyleProvider:v6];
    [(TVRUIDevicePickerViewController *)self setDeviceTitleView:v7];

    v8 = [(TVRUIDevicePickerViewController *)self deviceTitleView];
    [v8 setUserInteractionEnabled:1];

    v9 = [(TVRUIDevicePickerViewController *)self view];
    v10 = [(TVRUIDevicePickerViewController *)self deviceTitleView];
    [v9 addSubview:v10];

    v19 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel__toggleState];
    [v19 setCancelsTouchesInView:0];
    v11 = [(TVRUIDevicePickerViewController *)self deviceTitleView];
    [v11 addGestureRecognizer:v19];

    v12 = [objc_alloc(MEMORY[0x277D75708]) initWithTarget:self action:sel__titleWasLongPressed_];
    [v12 setMinimumPressDuration:1.2];
    v13 = [(TVRUIDevicePickerViewController *)self deviceTitleView];
    [v13 addGestureRecognizer:v12];

    if (v3)
    {
      v14 = [(TVRUIDevicePickerViewController *)self deviceTitleView];
      [v14 tvrui_makeCapsuleCorners];

      v15 = [(TVRUIDevicePickerViewController *)self styleProvider];
      v16 = [v15 controlGlassVariant];
      v17 = [(TVRUIDevicePickerViewController *)self deviceTitleView];
      [v17 _setBackground:v16];

      v18 = [(TVRUIDevicePickerViewController *)self deviceTitleView];
      [v18 setBackgroundColor:0];
    }
  }
}

- (void)_setupTitleButtonIfNeeded
{
  v3 = [(TVRUIDevicePickerViewController *)self titleButton];

  if (!v3)
  {
    v4 = [MEMORY[0x277D75220] buttonWithType:0];
    [(TVRUIDevicePickerViewController *)self setTitleButton:v4];

    v5 = [(TVRUIDevicePickerViewController *)self titleButton];
    v6 = [v5 titleLabel];
    v7 = [(TVRUIDevicePickerViewController *)self styleProvider];
    v8 = [v7 fontForDeviceTitle];
    [v6 setFont:v8];

    v9 = [(TVRUIDevicePickerViewController *)self titleButton];
    v10 = [v9 titleLabel];
    [v10 setAdjustsFontForContentSizeCategory:1];

    v11 = [(TVRUIDevicePickerViewController *)self titleButton];
    v12 = [v11 titleLabel];
    [v12 setAdjustsFontSizeToFitWidth:1];

    v13 = [(TVRUIDevicePickerViewController *)self titleButton];
    v14 = [v13 titleLabel];
    v15 = [(TVRUIDevicePickerViewController *)self styleProvider];
    v16 = [v15 textColorForDeviceTitle];
    [v14 setTextColor:v16];

    v17 = [(TVRUIDevicePickerViewController *)self titleButton];
    v18 = [(TVRUIDevicePickerViewController *)self styleProvider];
    v19 = [v18 primaryTextAndGlyphColor];
    [v17 setTintColor:v19];

    v20 = [(TVRUIDevicePickerViewController *)self styleProvider];
    v37 = [v20 chevronImage];

    v21 = [(TVRUIDevicePickerViewController *)self titleButton];
    [v21 setImage:v37 forState:0];

    v22 = [(TVRUIDevicePickerViewController *)self titleButton];
    v23 = [v22 imageView];
    [v23 setContentMode:1];

    v24 = [(TVRUIDevicePickerViewController *)self titleButton];
    v25 = [v24 imageView];
    v26 = [(TVRUIDevicePickerViewController *)self styleProvider];
    v27 = [v26 tintColorForChevronImage];
    [v25 setTintColor:v27];

    v28 = [(TVRUIDevicePickerViewController *)self titleButton];
    [v28 addTarget:self action:sel__toggleState forControlEvents:64];

    v29 = [(TVRUIDevicePickerViewController *)self titleButton];
    [v29 setContentHorizontalAlignment:0];

    v30 = MEMORY[0x277D75D18];
    v31 = [(TVRUIDevicePickerViewController *)self view];
    v32 = [v30 userInterfaceLayoutDirectionForSemanticContentAttribute:{objc_msgSend(v31, "semanticContentAttribute")}];

    v33 = [(TVRUIDevicePickerViewController *)self titleButton];
    v34 = v33;
    if (v32)
    {
      v35 = 3;
    }

    else
    {
      v35 = 4;
    }

    [v33 setSemanticContentAttribute:v35];

    v36 = [(TVRUIDevicePickerViewController *)self titleButton];
    [v36 setPointerStyleProvider:&__block_literal_global_13];
  }
}

id __60__TVRUIDevicePickerViewController__setupTitleButtonIfNeeded__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 titleLabel];
  v4 = [v2 titleLabel];
  [v4 bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = [v2 imageView];

  [v13 bounds];
  v14 = v10 + CGRectGetWidth(v27) + 8.0;

  v28.origin.x = v6;
  v28.origin.y = v8;
  v28.size.width = v14;
  v28.size.height = v12;
  v29 = CGRectInset(v28, -16.0, -8.0);
  x = v29.origin.x;
  y = v29.origin.y;
  width = v29.size.width;
  height = v29.size.height;
  v19 = CGRectGetHeight(v29) * 0.5;
  v20 = objc_alloc_init(MEMORY[0x277D758D8]);
  v21 = [MEMORY[0x277D75208] bezierPathWithRoundedRect:x cornerRadius:{y, width, height, v19}];
  [v20 setVisiblePath:v21];
  v22 = [objc_alloc(MEMORY[0x277D75B90]) initWithView:v3 parameters:v20];
  v23 = [MEMORY[0x277D75868] effectWithPreview:v22];
  v24 = [MEMORY[0x277D75890] styleWithEffect:v23 shape:0];

  return v24;
}

- (void)_titleWasLongPressed:(id)a3
{
  v5 = [(TVRUIDevicePickerViewController *)self delegate];
  v4 = [(TVRUIDevicePickerViewController *)self device];
  [v5 devicePickerTitleWasLongPressedForDevice:v4];
}

- (void)setDeviceTitle:(id)a3
{
  v5 = a3;
  if (![(NSString *)self->_deviceTitle isEqualToString:v5])
  {
    objc_storeStrong(&self->_deviceTitle, a3);
    v6 = MEMORY[0x277D75D18];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __50__TVRUIDevicePickerViewController_setDeviceTitle___block_invoke;
    v7[3] = &unk_279D88230;
    v7[4] = self;
    v8 = v5;
    [v6 performWithoutAnimation:v7];
  }
}

void __50__TVRUIDevicePickerViewController_setDeviceTitle___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) titleButton];
  [v2 setTitle:*(a1 + 40) forState:0];

  v3 = [*(a1 + 32) titleButton];
  [v3 layoutIfNeeded];
}

- (void)setMenuProvider:(id)a3
{
  objc_storeWeak(&self->_menuProvider, a3);
  [(TVRUIDevicePickerViewController *)self setContextMenuNeedsUpdate:1];

  [(TVRUIDevicePickerViewController *)self _updateViewState];
}

- (void)_setupDeviceList
{
  v3 = [(TVRUIDevicePickerViewController *)self useNewDevicePicker];
  v4 = [(TVRUIDevicePickerViewController *)self tableViewWrapper];

  if (!v4)
  {
    v5 = [(TVRUIDevicePickerViewController *)self styleProvider];
    [v5 deviceListRowHeight];
    [(TVRUIDevicePickerViewController *)self setBaseHeight:?];

    v6 = objc_alloc_init(_TVRUITableViewWrapperView);
    [(TVRUIDevicePickerViewController *)self setTableViewWrapper:v6];

    v7 = [(TVRUIDevicePickerViewController *)self tableViewWrapper];
    [v7 setClipsToBounds:1];

    v8 = [(TVRUIDevicePickerViewController *)self tableViewWrapper];
    v9 = [v8 layer];
    [v9 setMaskedCorners:4];

    v10 = [(TVRUIDevicePickerViewController *)self view];
    v11 = [(TVRUIDevicePickerViewController *)self tableViewWrapper];
    [v10 addSubview:v11];

    v12 = objc_alloc(MEMORY[0x277D75B40]);
    v13 = [v12 initWithFrame:0 style:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    [(TVRUIDevicePickerViewController *)self setTableView:v13];

    v14 = [(TVRUIDevicePickerViewController *)self tableView];
    v15 = [v14 layer];
    [v15 setAllowsGroupBlending:0];

    v16 = [(TVRUIDevicePickerViewController *)self tableView];
    v17 = [v16 layer];
    [v17 setAllowsGroupOpacity:0];

    v18 = [(TVRUIDevicePickerViewController *)self tableView];
    [v18 setDelegate:self];

    v19 = [(TVRUIDevicePickerViewController *)self tableView];
    [v19 setDataSource:self];

    v20 = [(TVRUIDevicePickerViewController *)self tableView];
    [v20 setSeparatorStyle:0];

    v21 = [(TVRUIDevicePickerViewController *)self tableView];
    [v21 setIndicatorStyle:2];

    v22 = [(TVRUIDevicePickerViewController *)self tableView];
    v23 = [MEMORY[0x277D75348] clearColor];
    [v22 setBackgroundColor:v23];

    v24 = [(TVRUIDevicePickerViewController *)self tableView];
    [v24 registerClass:objc_opt_class() forCellReuseIdentifier:@"kTVRDropDownCellIdentifier"];

    v25 = [(TVRUIDevicePickerViewController *)self tableViewWrapper];
    v26 = [(TVRUIDevicePickerViewController *)self tableView];
    [v25 addSubview:v26];

    v46 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel_didTapWrapperView_];
    [v46 setCancelsTouchesInView:0];
    v27 = [(TVRUIDevicePickerViewController *)self tableViewWrapper];
    [v27 addGestureRecognizer:v46];

    if (v3)
    {
      v28 = [(TVRUIDevicePickerViewController *)self view];
      v29 = [(TVRUIDevicePickerViewController *)self muteButton];
      [v28 bringSubviewToFront:v29];

      v30 = [(TVRUIDevicePickerViewController *)self view];
      v31 = [(TVRUIDevicePickerViewController *)self muteButtonOverride];
      [v30 bringSubviewToFront:v31];

      v32 = [(TVRUIDevicePickerViewController *)self view];
      v33 = [(TVRUIDevicePickerViewController *)self deviceTitleView];
      [v32 bringSubviewToFront:v33];

      v34 = [(TVRUIDevicePickerViewController *)self view];
      v35 = [(TVRUIDevicePickerViewController *)self powerButton];
      [v34 bringSubviewToFront:v35];

      v36 = [(TVRUIDevicePickerViewController *)self tableViewWrapper];
      [v36 setShowsGlassBackground:1];

      v37 = [(TVRUIDevicePickerViewController *)self tableView];
      v38 = [(TVRUIDevicePickerViewController *)self tableViewWrapper];
      [v38 setContentViewToMask:v37];

      [(TVRUIDevicePickerViewController *)self tableView];
    }

    else
    {
      v39 = [(TVRUIDevicePickerViewController *)self styleProvider];
      v40 = [v39 separatorView];
      [(TVRUIDevicePickerViewController *)self setTableViewTopSeperator:v40];

      v41 = [(TVRUIDevicePickerViewController *)self view];
      v42 = [(TVRUIDevicePickerViewController *)self tableViewTopSeperator];
      [v41 addSubview:v42];

      [(TVRUIDevicePickerViewController *)self tableViewTopSeperator];
    }
    v43 = ;
    [v43 setAlpha:0.0];

    v44 = [MEMORY[0x277CCACA8] stringWithFormat:@"UIA.TVRemoteService.%@", @"deviceTable"];
    v45 = [(TVRUIDevicePickerViewController *)self tableView];
    [v45 setAccessibilityIdentifier:v44];
  }
}

- (void)setDevices:(id)a3
{
  v4 = a3;
  if (self->_devices != v4)
  {
    v14 = v4;
    v5 = [MEMORY[0x277CBEB18] arrayWithArray:v4];
    v6 = [(NSArray *)v5 count];
    v7 = v6 != 0;
    v8 = v6 == 0;
    v9 = [(TVRUIDevicePickerViewController *)self titleButton];
    v10 = [v9 imageView];
    [v10 setHidden:v8];

    v11 = [(TVRUIDevicePickerViewController *)self view];
    [v11 setUserInteractionEnabled:v7];

    devices = self->_devices;
    self->_devices = v5;

    [(TVRUIDevicePickerViewController *)self _sortAndReloadDevices];
    if ([(TVRUIDevicePickerViewController *)self isDevicePickerShowing])
    {
      if (![(NSArray *)v14 count])
      {
        [(TVRUIDevicePickerViewController *)self _toggleState];
      }
    }

    else
    {
      v13 = [(TVRUIDevicePickerViewController *)self tableView];
      [(TVRUIDevicePickerViewController *)self _preferredTableViewFrameWhenExpanded:0];
      [v13 setFrame:?];
    }
  }

  MEMORY[0x2821F96F8]();
}

- (void)setSuggestedDevices:(id)a3
{
  v5 = a3;
  if (+[TVRUIFeatures corianderEnabled]&& ![(NSArray *)self->_suggestedDevices isEqualToArray:v5])
  {
    objc_storeStrong(&self->_suggestedDevices, a3);
    [(TVRUIDevicePickerViewController *)self _updateDevicesAndReloadWithSuggestedDevices:v5];
  }
}

- (void)_updateDevicesAndReloadWithSuggestedDevices:(id)a3
{
  v42 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (+[TVRUIFeatures corianderEnabled])
  {
    v5 = _TVRUIDevicePickerLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [(TVRUIDevicePickerViewController *)self devices];
      *buf = 134217984;
      v41 = [v6 count];
      _os_log_impl(&dword_26CFEB000, v5, OS_LOG_TYPE_DEFAULT, "devices count: %ld", buf, 0xCu);
    }

    v7 = _TVRUIDevicePickerLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [(TVRUIDevicePickerViewController *)self _updateDevicesAndReloadWithSuggestedDevices:v7];
    }

    v8 = [(TVRUIDevicePickerViewController *)self devices];
    v9 = [v8 count];

    if (v9)
    {
      v10 = MEMORY[0x277CBEB40];
      v11 = [(TVRUIDevicePickerViewController *)self devices];
      v12 = [v10 orderedSetWithCapacity:{objc_msgSend(v11, "count")}];

      v13 = [(TVRUIDevicePickerViewController *)self devices];
      v14 = [(TVRUIDevicePickerViewController *)self devices];
      v15 = [v14 firstObject];

      v32 = v15;
      v33 = self;
      if (v15 && [v15 isConnected])
      {
        v16 = _TVRUIDevicePickerLog();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          [(TVRUIDevicePickerViewController *)v15 _updateDevicesAndReloadWithSuggestedDevices:v16];
        }

        [v12 addObject:v15];
        v17 = [(TVRUIDevicePickerViewController *)self devices];
        v18 = [(TVRUIDevicePickerViewController *)self devices];
        v19 = [v17 subarrayWithRange:{1, objc_msgSend(v18, "count") - 1}];

        v13 = v19;
      }

      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      v34 = v4;
      v20 = v4;
      v21 = [v20 countByEnumeratingWithState:&v35 objects:v39 count:16];
      if (v21)
      {
        v22 = v21;
        v23 = *v36;
        do
        {
          for (i = 0; i != v22; ++i)
          {
            if (*v36 != v23)
            {
              objc_enumerationMutation(v20);
            }

            v25 = *(*(&v35 + 1) + 8 * i);
            if ([v13 containsObject:v25])
            {
              v26 = _TVRUIDevicePickerLog();
              if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138543362;
                v41 = v25;
                _os_log_impl(&dword_26CFEB000, v26, OS_LOG_TYPE_DEFAULT, "Adding suggested device: %{public}@", buf, 0xCu);
              }

              [v12 addObject:v25];
            }
          }

          v22 = [v20 countByEnumeratingWithState:&v35 objects:v39 count:16];
        }

        while (v22);
      }

      [v12 addObjectsFromArray:v13];
      v27 = [v12 array];
      self = v33;
      devices = v33->_devices;
      v33->_devices = v27;

      v29 = _TVRUIDevicePickerLog();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        v30 = [(TVRUIDevicePickerViewController *)v33 devices];
        *buf = 138543362;
        v41 = v30;
        _os_log_impl(&dword_26CFEB000, v29, OS_LOG_TYPE_DEFAULT, "Sorted device list: %{public}@", buf, 0xCu);
      }

      v4 = v34;
    }
  }

  v31 = [(TVRUIDevicePickerViewController *)self tableView];
  [v31 reloadData];
}

- (void)_sortAndReloadDevices
{
  v3 = [(NSArray *)self->_devices sortedArrayUsingComparator:&__block_literal_global_132];
  devices = self->_devices;
  self->_devices = v3;

  [(TVRUIDevicePickerViewController *)self _updateDevicesAndReloadWithSuggestedDevices:0];
}

uint64_t __56__TVRUIDevicePickerViewController__sortAndReloadDevices__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = v4;
  v7 = v5;
  if ([v6 isConnected])
  {
    v8 = -1;
  }

  else if ([v7 isConnected])
  {
    v8 = 1;
  }

  else
  {
    v9 = [v6 name];
    v10 = [v7 name];
    v8 = [v9 compare:v10 options:1];
  }

  return v8;
}

- (id)_devicesMenu
{
  v14[1] = *MEMORY[0x277D85DE8];
  objc_initWeak(&location, self);
  v2 = MEMORY[0x277D753F0];
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __47__TVRUIDevicePickerViewController__devicesMenu__block_invoke;
  v11 = &unk_279D887D0;
  objc_copyWeak(&v12, &location);
  v3 = [v2 elementWithProvider:&v8];
  v4 = MEMORY[0x277D75710];
  v14[0] = v3;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:{1, v8, v9, v10, v11}];
  v6 = [v4 menuWithChildren:v5];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);

  return v6;
}

void __47__TVRUIDevicePickerViewController__devicesMenu__block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v14 = WeakRetained;
    v6 = [WeakRetained devices];
    v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v16;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = MEMORY[0x277D750C8];
          v12 = [*(*(&v15 + 1) + 8 * i) name];
          v13 = [v11 actionWithTitle:v12 image:0 identifier:0 handler:&__block_literal_global_135];

          [v5 addObject:v13];
        }

        v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v8);
    }

    v3[2](v3, v5);
    WeakRetained = v14;
  }

  else
  {
    v3[2](v3, MEMORY[0x277CBEBF8]);
  }
}

- (void)_setupAnimators
{
  v3 = +[TVRUICubicSpringAnimator standardSpringAnimator];
  [(TVRUIDevicePickerViewController *)self setShowAnimator:v3];

  v7 = [[TVRUICubicSpringTimingParameters alloc] initWithMass:2.0 stiffness:300.0 damping:36.0 initialVelocity:0.0, 0.0];
  v4 = +[TVRUICubicSpringTimingParameters standardTimingParameters];
  v5 = [v4 springCubicTimingParameters];
  [(TVRUICubicSpringTimingParameters *)v7 setSpringCubicTimingParameters:v5];

  v6 = [(UIViewPropertyAnimator *)[TVRUICubicSpringAnimator alloc] initWithDuration:v7 timingParameters:1.0];
  [(TVRUIDevicePickerViewController *)self setHideAnimator:v6];
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v4 = [(TVRUIDevicePickerViewController *)self devices:a3];
  v5 = [v4 count];

  return v5;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v8 = [v6 dequeueReusableCellWithIdentifier:@"kTVRDropDownCellIdentifier" forIndexPath:v7];
  v9 = [(TVRUIDevicePickerViewController *)self styleProvider];

  if (!v9)
  {
    v10 = _TVRUIDevicePickerLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [TVRUIDevicePickerViewController tableView:v10 cellForRowAtIndexPath:?];
    }
  }

  v11 = [(TVRUIDevicePickerViewController *)self styleProvider];
  [v8 setStyleProvider:v11];

  v12 = [(TVRUIDevicePickerViewController *)self devices];
  v13 = [v12 objectAtIndex:{objc_msgSend(v7, "row")}];

  [v8 setDevice:v13];
  [v8 setShowSeparator:{objc_msgSend(v7, "row") != objc_msgSend(v6, "numberOfRowsInSection:", objc_msgSend(v7, "section")) - 1}];
  v14 = objc_alloc_init(MEMORY[0x277D75D18]);
  v15 = [MEMORY[0x277D75348] colorWithWhite:1.0 alpha:0.3];
  [v14 setBackgroundColor:v15];

  [v8 setSelectedBackgroundView:v14];
  if ([v13 isConnected])
  {
    [(TVRUIDevicePickerViewController *)self setConnectedDeviceIndex:v7];
  }

  v16 = MEMORY[0x277D750C8];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __67__TVRUIDevicePickerViewController_tableView_cellForRowAtIndexPath___block_invoke;
  v20[3] = &unk_279D87E38;
  objc_copyWeak(&v22, &location);
  v17 = v13;
  v21 = v17;
  v18 = [v16 actionWithHandler:v20];
  [v8 setFindButtonTapAction:v18];

  objc_destroyWeak(&v22);
  objc_destroyWeak(&location);

  return v8;
}

void __67__TVRUIDevicePickerViewController_tableView_cellForRowAtIndexPath___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained delegate];
  [v2 findButtonTappedForDevice:*(a1 + 32)];
}

- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4
{
  if ([(TVRUIDevicePickerViewController *)self _accessibilityFontSizesEnabled:a3])
  {
    return *MEMORY[0x277D76F30];
  }

  [(TVRUIDevicePickerViewController *)self baseHeight];
  return result;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v15 = *MEMORY[0x277D85DE8];
  devices = self->_devices;
  v6 = a4;
  v7 = -[NSArray objectAtIndex:](devices, "objectAtIndex:", [v6 row]);
  if ([v7 isConnected])
  {
    v8 = _TVRUIDevicePickerLog();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    v13 = 138543362;
    v14 = v7;
    v9 = "User tapped on already connected device: %{public}@";
  }

  else
  {
    v10 = [(TVRUIDevicePickerViewController *)self eventHaptic];
    [v10 playSelectionEventHaptic];

    v11 = [(TVRUIDevicePickerViewController *)self delegate];
    [v11 devicePicked:v7];

    v8 = _TVRUIDevicePickerLog();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    v13 = 138543362;
    v14 = v7;
    v9 = "User picked device: %{public}@";
  }

  _os_log_impl(&dword_26CFEB000, v8, OS_LOG_TYPE_DEFAULT, v9, &v13, 0xCu);
LABEL_7:

  v12 = [(TVRUIDevicePickerViewController *)self tableView];
  [v12 deselectRowAtIndexPath:v6 animated:0];

  if ([(TVRUIDevicePickerViewController *)self isDevicePickerShowing])
  {
    [(TVRUIDevicePickerViewController *)self _toggleState];
  }
}

- (void)expandDeviceList
{
  if (![(TVRUIDevicePickerViewController *)self isDevicePickerShowing])
  {
    v3 = _TVRUIDevicePickerLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_26CFEB000, v3, OS_LOG_TYPE_DEFAULT, "Expanding device list", v4, 2u);
    }

    [(TVRUIDevicePickerViewController *)self _toggleState];
  }
}

- (void)collapseDeviceList
{
  if ([(TVRUIDevicePickerViewController *)self isDevicePickerShowing])
  {
    v3 = _TVRUIDevicePickerLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_26CFEB000, v3, OS_LOG_TYPE_DEFAULT, "Collapsing device list", v4, 2u);
    }

    [(TVRUIDevicePickerViewController *)self _toggleState];
  }
}

- (void)didChangeToExpanded:(BOOL)a3
{
  v3 = a3;
  v5 = [(TVRUIDevicePickerViewController *)self tableView];
  [(TVRUIDevicePickerViewController *)self _preferredTableViewFrameWhenExpanded:v3];
  [v5 setFrame:?];
}

- (void)didTapWrapperView:(id)a3
{
  v11 = a3;
  if ([(TVRUIDevicePickerViewController *)self isDevicePickerShowing])
  {
    v4 = [(TVRUIDevicePickerViewController *)self tableViewWrapper];
    [v11 locationInView:v4];
    v6 = v5;
    v8 = v7;

    v9 = [(TVRUIDevicePickerViewController *)self tableView];
    [v9 frame];
    v13.x = v6;
    v13.y = v8;
    v10 = CGRectContainsPoint(v14, v13);

    if (!v10)
    {
      [(TVRUIDevicePickerViewController *)self _toggleState];
    }
  }
}

- (void)_toggleState
{
  v3 = [(TVRUIDevicePickerViewController *)self useNewDevicePicker];
  v4 = _UISolariumEnabled();
  v5 = _TVRUIDevicePickerLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_26CFEB000, v5, OS_LOG_TYPE_DEFAULT, "Toggle state called", buf, 2u);
  }

  if (-[TVRUIDevicePickerViewController isDevicePickerShowing](self, "isDevicePickerShowing") || (-[TVRUIDevicePickerViewController devices](self, "devices"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 count], v6, v7))
  {
    [(TVRUIDevicePickerViewController *)self setDevicePickerShowing:[(TVRUIDevicePickerViewController *)self isDevicePickerShowing]^ 1];
    if ([(TVRUIDevicePickerViewController *)self isDevicePickerShowing])
    {
      v8 = [(TVRUIDevicePickerViewController *)self tableView];
      [(TVRUIDevicePickerViewController *)self _preferredTableViewFrameWhenExpanded:0];
      [v8 setFrame:?];
    }

    v9 = [(TVRUIDevicePickerViewController *)self showAnimator];
    v10 = [v9 isRunning];

    if (v10)
    {
      v11 = [(TVRUIDevicePickerViewController *)self showAnimator];
      [v11 stopAnimation:1];

      v12 = _TVRUIDevicePickerLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf[0]) = 0;
        v13 = "showAnimator reversed";
LABEL_13:
        _os_log_impl(&dword_26CFEB000, v12, OS_LOG_TYPE_DEFAULT, v13, buf, 2u);
      }
    }

    else
    {
      v14 = [(TVRUIDevicePickerViewController *)self hideAnimator];
      v15 = [v14 isRunning];

      if (!v15)
      {
LABEL_15:
        [(TVRUIDevicePickerViewController *)self _setupAnimators];
        objc_initWeak(buf, self);
        if ([(TVRUIDevicePickerViewController *)self isDevicePickerShowing])
        {
          v17 = [(TVRUIDevicePickerViewController *)self showAnimator];
          v28[0] = MEMORY[0x277D85DD0];
          v28[1] = 3221225472;
          v28[2] = __47__TVRUIDevicePickerViewController__toggleState__block_invoke;
          v28[3] = &unk_279D887F8;
          v18 = &v29;
          objc_copyWeak(&v29, buf);
          v28[4] = self;
          v30 = v4;
          v31 = v3;
          [v17 addAnimations:v28];

          [(TVRUIDevicePickerViewController *)self _sortAndReloadDevices];
          v19 = [(TVRUIDevicePickerViewController *)self eventHaptic];
          [v19 playImpactEventHaptic];

          v20 = [(TVRUIDevicePickerViewController *)self delegate];
          [v20 devicePickerWillChangeState:1 animated:0];

          v21 = [(TVRUIDevicePickerViewController *)self showAnimator];
          [v21 startAnimation];
        }

        else
        {
          v22 = [(TVRUIDevicePickerViewController *)self hideAnimator];
          v25[0] = MEMORY[0x277D85DD0];
          v25[1] = 3221225472;
          v25[2] = __47__TVRUIDevicePickerViewController__toggleState__block_invoke_2;
          v25[3] = &unk_279D88820;
          v18 = &v26;
          objc_copyWeak(&v26, buf);
          v27 = v3;
          [v22 addAnimations:v25];

          v23 = [(TVRUIDevicePickerViewController *)self delegate];
          [v23 devicePickerWillChangeState:0 animated:0];

          v21 = [(TVRUIDevicePickerViewController *)self hideAnimator];
          [v21 startAnimation];
        }

        objc_destroyWeak(v18);
        objc_destroyWeak(buf);
        return;
      }

      v16 = [(TVRUIDevicePickerViewController *)self hideAnimator];
      [v16 stopAnimation:1];

      v12 = _TVRUIDevicePickerLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf[0]) = 0;
        v13 = "hideAnimator reversed";
        goto LABEL_13;
      }
    }

    goto LABEL_15;
  }

  v24 = _TVRUIDevicePickerLog();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_26CFEB000, v24, OS_LOG_TYPE_DEFAULT, "Not showing and device count is 0. Not expanding picker.", buf, 2u);
  }
}

void __47__TVRUIDevicePickerViewController__toggleState__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = [*(a1 + 32) view];
    v4 = [v3 effectiveUserInterfaceLayoutDirection] == 1;

    v5 = dbl_26D0D2680[v4];
    v6 = [WeakRetained view];
    [v6 setNeedsLayout];

    v7 = [WeakRetained view];
    [v7 layoutIfNeeded];

    [WeakRetained _preferredTableViewFrameWhenExpanded:1];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v16 = [WeakRetained deviceTitleView];
    v17 = [v16 imageView];
    CGAffineTransformMakeRotation(&v26, v5);
    [v17 setTransform:&v26];

    v18 = [WeakRetained powerButton];
    [v18 setEnabled:0];

    v19 = [WeakRetained muteButton];
    [v19 setEnabled:0];

    v20 = [WeakRetained muteButtonOverride];
    [v20 setEnabled:0];

    [WeakRetained[140] setFrame:{v9, v11, v13, v15}];
    if ((*(a1 + 48) & 1) == 0)
    {
      [WeakRetained[142] setAlpha:1.0];
    }

    v21 = objc_loadWeakRetained(WeakRetained + 129);
    [v21 devicePickerWillChangeState:1 animated:1];

    if (*(a1 + 49) == 1)
    {
      v27.origin.x = v9;
      v27.origin.y = v11;
      v27.size.width = v13;
      v27.size.height = v15;
      Height = CGRectGetHeight(v27);
      v23 = [WeakRetained tableViewWrapper];
      [v23 setExpandedHeight:Height];

      v24 = [WeakRetained tableViewWrapper];
      [v24 setIsExpanded:1];

      v25 = [WeakRetained tableView];
      [v25 setAlpha:1.0];
    }
  }
}

void __47__TVRUIDevicePickerViewController__toggleState__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained view];
    [v4 setNeedsLayout];

    v5 = [v3 view];
    [v5 layoutIfNeeded];

    v6 = [v3 deviceTitleView];
    v7 = [v6 imageView];
    v8 = *(MEMORY[0x277CBF2C0] + 16);
    v18[0] = *MEMORY[0x277CBF2C0];
    v18[1] = v8;
    v18[2] = *(MEMORY[0x277CBF2C0] + 32);
    [v7 setTransform:v18];

    v9 = [v3 powerButton];
    [v9 setEnabled:1];

    v10 = [v3 muteButton];
    [v10 setEnabled:1];

    v11 = [v3 muteButtonOverride];
    [v11 setEnabled:1];

    v12 = v3[140];
    [v3 _preferredTableViewFrameWhenExpanded:0];
    [v12 setFrame:?];
    [v3[142] setAlpha:0.0];
    v13 = objc_loadWeakRetained(v3 + 129);
    [v13 devicePickerWillChangeState:0 animated:1];

    if (*(a1 + 40) == 1)
    {
      v14 = [v3 tableViewWrapper];
      [v14 setIsExpanded:0];

      v15 = [v3 tableView];
      [v15 setAlpha:0.0];

      v16 = [v3 deviceTitleView];
      [v16 setHidden:0];

      v17 = [v3 deviceTitleView];
      [v17 setAlpha:1.0];
    }
  }
}

- (void)_presentShortcutsMenuPopover
{
  [MEMORY[0x277D758A8] _setAlwaysAllowPopoverPresentations:1];
  v3 = objc_alloc_init(TVRUIShortcutsMenuViewController);
  v4 = [(TVRUIDevicePickerViewController *)self playerCommandHandler];
  [(TVRUIShortcutsMenuViewController *)v3 setPlayerCommandHandler:v4];

  [(TVRUIShortcutsMenuViewController *)v3 setOverrideUserInterfaceStyle:2];
  [(TVRUIShortcutsMenuViewController *)v3 setModalPresentationStyle:7];
  v5 = objc_alloc_init(MEMORY[0x277D75DD0]);
  objc_initWeak(&location, self);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __63__TVRUIDevicePickerViewController__presentShortcutsMenuPopover__block_invoke;
  v13[3] = &unk_279D88848;
  objc_copyWeak(&v14, &location);
  [v5 setAlignmentRectProvider:v13];
  v6 = MEMORY[0x277D75D30];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __63__TVRUIDevicePickerViewController__presentShortcutsMenuPopover__block_invoke_2;
  v11[3] = &unk_279D88870;
  objc_copyWeak(&v12, &location);
  v7 = [v6 zoomWithOptions:v5 sourceViewProvider:v11];
  [(TVRUIShortcutsMenuViewController *)v3 setPreferredTransition:v7];

  v8 = [(TVRUIShortcutsMenuViewController *)v3 popoverPresentationController];
  v9 = [(TVRUIDevicePickerViewController *)self muteButtonOverride];
  [v8 setSourceView:v9];

  v10 = [(TVRUIDevicePickerViewController *)self muteButtonOverride];
  [v10 bounds];
  [v8 setSourceRect:?];

  [v8 setPermittedArrowDirections:-1];
  [(TVRUIDevicePickerViewController *)self presentViewController:v3 animated:1 completion:0];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

double __63__TVRUIDevicePickerViewController__presentShortcutsMenuPopover__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained muteButtonOverride];
  [v2 bounds];
  v4 = v3;

  return v4;
}

id __63__TVRUIDevicePickerViewController__presentShortcutsMenuPopover__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained muteButtonOverride];

  return v2;
}

- (CGRect)_preferredTableViewFrameWhenExpanded:(BOOL)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = [(TVRUIDevicePickerViewController *)self useNewDevicePicker];
  if (v5)
  {
    x = 25.0;
  }

  else
  {
    x = 0.0;
  }

  v7 = [(TVRUIDevicePickerViewController *)self tableViewWrapper];
  [v7 bounds];
  width = v8 + x * -2.0;
  [(TVRUIDevicePickerViewController *)self _expandedContentHeight];
  height = v10;

  if (a3 || v5)
  {
    v14 = _TVRUIDevicePickerLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [(TVRUIDevicePickerViewController *)self devices];
      v19 = 134217984;
      v20 = [v15 count];
      _os_log_impl(&dword_26CFEB000, v14, OS_LOG_TYPE_DEFAULT, "tableViewFrameRequest with num devices %ld", &v19, 0xCu);
    }

    result.origin.y = 0.0;
  }

  else
  {
    [(TVRUIDevicePickerViewController *)self _calculatedContentHeight];
    v13 = -(v12 + 1.0);
    v22.origin.y = 0.0;
    v22.origin.x = x;
    v22.size.width = width;
    v22.size.height = height;
    result = CGRectOffset(v22, 0.0, v13);
    x = result.origin.x;
    width = result.size.width;
    height = result.size.height;
  }

  v16 = x;
  v17 = width;
  v18 = height;
  result.size.height = v18;
  result.size.width = v17;
  result.origin.x = v16;
  return result;
}

- (void)_updateTableFrame:(BOOL)a3
{
  v3 = a3;
  v5 = [(TVRUIDevicePickerViewController *)self tableView];
  [(TVRUIDevicePickerViewController *)self _preferredTableViewFrameWhenExpanded:v3];
  [v5 setFrame:?];
}

- (void)_device:(id)a3 updatedFindMySupported:(BOOL)a4
{
  v4 = [(TVRUIDevicePickerViewController *)self _cellForDevice:a3, a4];
  [v4 _updateFindMyButton];
}

- (id)_cellForDevice:(id)a3
{
  v4 = a3;
  v5 = [(TVRUIDevicePickerViewController *)self devices];
  v6 = [v5 indexOfObject:v4];

  v7 = [MEMORY[0x277CCAA70] indexPathForRow:v6 inSection:0];
  v8 = [(TVRUIDevicePickerViewController *)self tableView];
  v9 = [v8 cellForRowAtIndexPath:v7];

  [v9 _updateFindMyButton];

  return v9;
}

- (double)_calculatedContentHeight
{
  if ([(TVRUIDevicePickerViewController *)self _accessibilityFontSizesEnabled])
  {

    [(TVRUIDevicePickerViewController *)self _contentHeightForPreferredContentSizeCategory];
  }

  else
  {

    [(TVRUIDevicePickerViewController *)self _defaultCalculatedContentHeight];
  }

  return result;
}

- (double)_defaultCalculatedContentHeight
{
  [(TVRUIDevicePickerViewController *)self baseHeight];
  v4 = v3;
  v5 = [(TVRUIDevicePickerViewController *)self devices];
  v6 = v4 * [v5 count];

  return v6;
}

- (double)_effectiveContentHeight
{
  if ([(TVRUIDevicePickerViewController *)self useNewDevicePicker])
  {
    return 0.0;
  }

  [(TVRUIDevicePickerViewController *)self _expandedContentHeight];
  return result;
}

- (double)_expandedContentHeight
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = [(TVRUIDevicePickerViewController *)self useNewDevicePicker];
  v4 = [(TVRUIDevicePickerViewController *)self styleProvider];
  [v4 touchpadHeight];
  v6 = v5;

  v7 = 0.85;
  if (!v3)
  {
    v7 = 0.5;
  }

  v8 = v6 * v7;
  [(TVRUIDevicePickerViewController *)self _calculatedContentHeight];
  v10 = v9;
  v11 = _TVRUIDevicePickerLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 134218240;
    v14 = v8;
    v15 = 2048;
    v16 = v10;
    _os_log_impl(&dword_26CFEB000, v11, OS_LOG_TYPE_DEFAULT, "maxExpandedHeight=%f calculatedHeight=%f", &v13, 0x16u);
  }

  if (v10 >= v8)
  {
    return v8;
  }

  else
  {
    return v10;
  }
}

- (BOOL)_accessibilityFontSizesEnabled
{
  v2 = [MEMORY[0x277D75380] system];
  v3 = [v2 preferredContentSizeCategory];

  LOBYTE(v2) = UIContentSizeCategoryIsAccessibilityCategory(v3);
  return v2;
}

- (double)_contentHeightForPreferredContentSizeCategory
{
  [(TVRUIDevicePickerViewController *)self _defaultCalculatedContentHeight];
  Height = v3;
  v5 = [MEMORY[0x277D75380] system];
  v6 = [v5 preferredContentSizeCategory];

  if (UIContentSizeCategoryIsAccessibilityCategory(v6))
  {
    if (([v6 isEqualToString:*MEMORY[0x277D767F0]] & 1) != 0 || objc_msgSend(v6, "isEqualToString:", *MEMORY[0x277D767E8]))
    {
      v7 = [(TVRUIDevicePickerViewController *)self view];
      [v7 bounds];
      Height = CGRectGetHeight(v9);
    }

    else if (([v6 isEqualToString:*MEMORY[0x277D76800]] & 1) != 0 || objc_msgSend(v6, "isEqualToString:", *MEMORY[0x277D767F8]))
    {
      Height = Height * 1.5;
    }
  }

  return Height;
}

- (void)_buttonPressed:(id)a3
{
  v9 = +[TVRUIButtonEvent createButtonEvent:buttonType:](TVRUIButtonEvent, "createButtonEvent:buttonType:", 1, [a3 buttonType]);
  v4 = [(TVRUIDevicePickerViewController *)self buttonEventDelegate];
  if (v4)
  {
    v5 = v4;
    v6 = [(TVRUIDevicePickerViewController *)self buttonEventDelegate];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v8 = [(TVRUIDevicePickerViewController *)self buttonEventDelegate];
      [v8 generatedButtonEvent:v9];
    }
  }
}

- (void)_buttonReleased:(id)a3
{
  v9 = +[TVRUIButtonEvent createButtonEvent:buttonType:](TVRUIButtonEvent, "createButtonEvent:buttonType:", 2, [a3 buttonType]);
  v4 = [(TVRUIDevicePickerViewController *)self buttonEventDelegate];
  if (v4)
  {
    v5 = v4;
    v6 = [(TVRUIDevicePickerViewController *)self buttonEventDelegate];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v8 = [(TVRUIDevicePickerViewController *)self buttonEventDelegate];
      [v8 generatedButtonEvent:v9];
    }
  }
}

- (void)_updateTitleViewForDevice:(id)a3
{
  v4 = a3;
  v5 = [(TVRUIDevicePickerViewController *)self styleProvider];
  v6 = [v4 model];
  v7 = [v5 iconForDeviceModel:v6];

  v8 = MEMORY[0x277D75D18];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __61__TVRUIDevicePickerViewController__updateTitleViewForDevice___block_invoke;
  v11[3] = &unk_279D883D8;
  v11[4] = self;
  v12 = v4;
  v13 = v7;
  v9 = v7;
  v10 = v4;
  [v8 performWithoutAnimation:v11];
}

void __61__TVRUIDevicePickerViewController__updateTitleViewForDevice___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) deviceTitleView];
  v2 = [*(a1 + 40) name];
  [v3 updateTitleWithDeviceName:v2 icon:*(a1 + 48)];
}

- (void)_updateViewState
{
  if (![(TVRUIDevicePickerViewController *)self isDevicePickerShowing])
  {
    v4 = [(TVRUIDevicePickerViewController *)self enabled];
    if (v4)
    {
      v5 = 1.0;
    }

    else
    {
      v2 = [(TVRUIDevicePickerViewController *)self styleProvider];
      [v2 disabledButtonAlpha];
      v5 = v6;
    }

    v7 = [(TVRUIDevicePickerViewController *)self titleButton];
    [v7 setAlpha:v5];

    if (!v4)
    {
    }

    v8 = [(TVRUIDevicePickerViewController *)self enabled];
    if (v8)
    {
      v9 = 1.0;
    }

    else
    {
      v2 = [(TVRUIDevicePickerViewController *)self styleProvider];
      [v2 disabledButtonAlpha];
      v9 = v10;
    }

    v11 = [(TVRUIDevicePickerViewController *)self powerButton];
    [v11 setAlpha:v9];

    if (!v8)
    {
    }

    v12 = [(TVRUIDevicePickerViewController *)self enabled];
    if (v12)
    {
      v13 = 1.0;
    }

    else
    {
      v2 = [(TVRUIDevicePickerViewController *)self styleProvider];
      [v2 disabledButtonAlpha];
      v13 = v14;
    }

    v15 = [(TVRUIDevicePickerViewController *)self deviceTitleView];
    [v15 setAlpha:v13];

    if (!v12)
    {
    }

    muteButtonOverride = self->_muteButtonOverride;
    v17 = [(TVRUIDevicePickerViewController *)self muteButton];
    v18 = v17;
    if (muteButtonOverride)
    {
      [v17 setHidden:1];

      v19 = [(TVRUIDevicePickerViewController *)self muteButton];
      [v19 setAlpha:0.0];

      v20 = [(TVRUIDevicePickerViewController *)self enabled];
      if (v20)
      {
        v21 = 1.0;
      }

      else
      {
        v26 = [(TVRUIDevicePickerViewController *)self styleProvider];
        [v26 disabledButtonAlpha];
        v21 = v22;
      }

      v23 = [(TVRUIDevicePickerViewController *)self muteButtonOverride];
    }

    else
    {
      [v17 setHidden:0];

      v20 = [(TVRUIDevicePickerViewController *)self enabled];
      if (v20)
      {
        v21 = 1.0;
      }

      else
      {
        v26 = [(TVRUIDevicePickerViewController *)self styleProvider];
        [v26 disabledButtonAlpha];
        v21 = v24;
      }

      v23 = [(TVRUIDevicePickerViewController *)self muteButton];
    }

    v25 = v23;
    [v23 setAlpha:v21];

    if (!v20)
    {
    }
  }
}

- (void)_updateDevice
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = _TVRUIDevicePickerLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136315138;
    v13 = "[TVRUIDevicePickerViewController _updateDevice]";
    _os_log_impl(&dword_26CFEB000, v3, OS_LOG_TYPE_DEFAULT, "%s", &v12, 0xCu);
  }

  device = self->_device;
  if (device)
  {
    v5 = [(TVRUIDevice *)device supportsMute];
    v6 = [(TVRUIDevicePickerViewController *)self muteButton];
    [v6 setEnabled:v5];

    v7 = [(TVRUIDevice *)self->_device supportsPower];
    v8 = [(TVRUIDevicePickerViewController *)self powerButton];
    [v8 setEnabled:v7];

    v9 = [(TVRUIDevicePickerViewController *)self muteButtonOverride];
    [v9 setEnabled:1];

    [(TVRUIDevicePickerViewController *)self _updateTitleViewForDevice:self->_device];
    v10 = [(TVRUIDevicePickerViewController *)self _cellForDevice:self->_device];
    [v10 _updateConnectionStatus];
    v11 = [(TVRUIDevice *)self->_device name];
    [(TVRUIDevicePickerViewController *)self _updateDeviceNameAutomationIdentifier:v11];
  }

  else
  {
    [(TVRUIDevicePickerViewController *)self resetSelectedDevice];
  }
}

- (void)resetSelectedDevice
{
  device = self->_device;
  self->_device = 0;

  v4 = [(TVRUIDevicePickerViewController *)self muteButton];
  [v4 setEnabled:0];

  v5 = [(TVRUIDevicePickerViewController *)self powerButton];
  [v5 setEnabled:0];

  v6 = [(TVRUIDevicePickerViewController *)self muteButtonOverride];
  [v6 setEnabled:0];

  v7 = [(TVRUIDevicePickerViewController *)self styleProvider];
  v8 = [v7 defaultDeviceTitle];

  v9 = MEMORY[0x277D75D18];
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __54__TVRUIDevicePickerViewController_resetSelectedDevice__block_invoke;
  v14 = &unk_279D88230;
  v15 = self;
  v16 = v8;
  v10 = v8;
  [v9 performWithoutAnimation:&v11];
  [(TVRUIDevicePickerViewController *)self _updateViewState:v11];
  [(TVRUIDevicePickerViewController *)self _updateDeviceNameAutomationIdentifier:@"none"];
  [(TVRUITitleView *)self->_deviceTitleView setAlpha:1.0];
}

void __54__TVRUIDevicePickerViewController_resetSelectedDevice__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) deviceTitleView];
  [v2 updateTitleWithDeviceName:*(a1 + 40) icon:0];
}

- (void)_updateDeviceNameAutomationIdentifier:(id)a3
{
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"selectedDevice=%@", a3];
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"UIA.TVRemoteService.%@", v6];
  v5 = [(TVRUIDevicePickerViewController *)self deviceTitleView];
  [v5 setAccessibilityIdentifier:v4];
}

- (void)setDevice:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self->_device == v5)
  {
    if (!v5)
    {
      goto LABEL_5;
    }
  }

  else
  {
    objc_storeStrong(&self->_device, a3);
  }

  [(TVRUIDevicePickerViewController *)self _updateDevice];
LABEL_5:
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
    [(TVRUIDevicePickerViewController *)self _updateViewState];
  }
}

- (void)setVolumeControlAvailable:(BOOL)a3
{
  v4 = a3;
  if (a3)
  {
    v3 = [(TVRUIDevicePickerViewController *)self device];
    v6 = [v3 supportsMute];
  }

  else
  {
    v6 = 0;
  }

  v7 = [(TVRUIDevicePickerViewController *)self muteButton];
  [v7 setEnabled:v6];

  if (v4)
  {
  }

  [(TVRUIDevicePickerViewController *)self setContextMenuNeedsUpdate:1];

  [(TVRUIDevicePickerViewController *)self _updateViewState];
}

- (id)_lastVisibleCellSupportingFindMy
{
  v26[1] = *MEMORY[0x277D85DE8];
  v3 = [(TVRUIDevicePickerViewController *)self tableView];
  v4 = [v3 indexPathsForVisibleRows];

  v5 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"row" ascending:1];
  v26[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:1];
  v7 = [v4 sortedArrayUsingDescriptors:v6];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v22;
LABEL_3:
    v12 = 0;
    while (1)
    {
      if (*v22 != v11)
      {
        objc_enumerationMutation(v8);
      }

      v13 = *(*(&v21 + 1) + 8 * v12);
      v14 = [(TVRUIDevicePickerViewController *)self tableView];
      v15 = [v14 cellForRowAtIndexPath:v13];

      v16 = [v15 device];
      v17 = [v16 supportsFindMyRemote];

      if (v17)
      {
        break;
      }

      if (v10 == ++v12)
      {
        v10 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
        if (v10)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    if (v15)
    {
      goto LABEL_14;
    }
  }

  else
  {
LABEL_9:
  }

  v18 = _TVRUIDevicePickerLog();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *v20 = 0;
    _os_log_impl(&dword_26CFEB000, v18, OS_LOG_TYPE_DEFAULT, "Find my supported device is not visible in the list", v20, 2u);
  }

  v15 = 0;
LABEL_14:

  return v15;
}

- (UIView)tipSourceView
{
  if ([(TVRUIDevicePickerViewController *)self isDevicePickerShowing])
  {
    v3 = [(TVRUIDevicePickerViewController *)self _lastVisibleCellSupportingFindMy];
    v4 = [v3 findMyButton];
  }

  else
  {
    v4 = [(TVRUIDevicePickerViewController *)self deviceTitleView];
  }

  return v4;
}

- (CGRect)tipSourceRect
{
  v2 = *MEMORY[0x277CBF398];
  v3 = *(MEMORY[0x277CBF398] + 8);
  v4 = *(MEMORY[0x277CBF398] + 16);
  v5 = *(MEMORY[0x277CBF398] + 24);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (BOOL)canPresentTip
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = [(TVRUIDevicePickerViewController *)self showAnimator];
  if ([v3 isRunning])
  {
    v4 = 0;
  }

  else
  {
    v5 = [(TVRUIDevicePickerViewController *)self hideAnimator];
    v6 = [v5 isRunning];

    if (v6)
    {
      v4 = 0;
      goto LABEL_10;
    }

    if (![(TVRUIDevicePickerViewController *)self isDevicePickerShowing])
    {
      v7 = [(TVRUIDevicePickerViewController *)self device];
      v8 = [v7 supportsFindMyRemote];

      if (v8)
      {
        v4 = 1;
        goto LABEL_10;
      }
    }

    v3 = [(TVRUIDevicePickerViewController *)self _lastVisibleCellSupportingFindMy];
    v4 = v3 != 0;
  }

LABEL_10:
  v9 = _TVRUIDevicePickerLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = "no";
    if (v4)
    {
      v10 = "yes";
    }

    v12 = 136315138;
    v13 = v10;
    _os_log_impl(&dword_26CFEB000, v9, OS_LOG_TYPE_DEFAULT, "Can present Tip: %s", &v12, 0xCu);
  }

  return v4;
}

- (BOOL)tipSourceSupportsSiri
{
  if ([(TVRUIDevicePickerViewController *)self isDevicePickerShowing])
  {
    v3 = [(TVRUIDevicePickerViewController *)self _lastVisibleCellSupportingFindMy];
    v4 = [v3 device];
    v5 = [v4 supportsSiri];
  }

  else
  {
    v3 = [(TVRUIDevicePickerViewController *)self device];
    v5 = [v3 supportsSiri];
  }

  return v5;
}

- (_TVRUIEventDelegate)buttonEventDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_buttonEventDelegate);

  return WeakRetained;
}

- (TVRUIDevicePickerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (TVRUIMenuProvider)menuProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_menuProvider);

  return WeakRetained;
}

- (void)_updateDevicesAndReloadWithSuggestedDevices:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [a1 devices];
  v4 = 138543362;
  v5 = v3;
  _os_log_debug_impl(&dword_26CFEB000, a2, OS_LOG_TYPE_DEBUG, "devices: %{public}@", &v4, 0xCu);
}

- (void)_updateDevicesAndReloadWithSuggestedDevices:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_debug_impl(&dword_26CFEB000, a2, OS_LOG_TYPE_DEBUG, "Adding connected device: %{public}@", &v2, 0xCu);
}

@end