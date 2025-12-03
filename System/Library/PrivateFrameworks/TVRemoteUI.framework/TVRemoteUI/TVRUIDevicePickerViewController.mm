@interface TVRUIDevicePickerViewController
- (BOOL)_accessibilityFontSizesEnabled;
- (BOOL)canPresentTip;
- (BOOL)tipSourceSupportsSiri;
- (CGRect)_preferredTableViewFrameWhenExpanded:(BOOL)expanded;
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
- (double)tableView:(id)view heightForRowAtIndexPath:(id)path;
- (id)_cellForDevice:(id)device;
- (id)_devicesMenu;
- (id)_lastVisibleCellSupportingFindMy;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_buttonPressed:(id)pressed;
- (void)_buttonReleased:(id)released;
- (void)_device:(id)_device updatedFindMySupported:(BOOL)supported;
- (void)_presentShortcutsMenuPopover;
- (void)_setupAnimators;
- (void)_setupButtons;
- (void)_setupDeviceList;
- (void)_setupDeviceTitleView;
- (void)_setupTitleButtonIfNeeded;
- (void)_sortAndReloadDevices;
- (void)_titleWasLongPressed:(id)pressed;
- (void)_toggleState;
- (void)_updateButtonsShapes;
- (void)_updateDevice;
- (void)_updateDeviceNameAutomationIdentifier:(id)identifier;
- (void)_updateDevicesAndReloadWithSuggestedDevices:(id)devices;
- (void)_updateTableFrame:(BOOL)frame;
- (void)_updateTitleViewForDevice:(id)device;
- (void)_updateViewState;
- (void)collapseDeviceList;
- (void)didChangeToExpanded:(BOOL)expanded;
- (void)didTapWrapperView:(id)view;
- (void)expandDeviceList;
- (void)loadView;
- (void)resetSelectedDevice;
- (void)setDevice:(id)device;
- (void)setDeviceTitle:(id)title;
- (void)setDevices:(id)devices;
- (void)setEnabled:(BOOL)enabled;
- (void)setMenuProvider:(id)provider;
- (void)setStyleProvider:(id)provider;
- (void)setSuggestedDevices:(id)devices;
- (void)setVolumeControlAvailable:(BOOL)available;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
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

  titleButton = [(TVRUIDevicePickerViewController *)self titleButton];
  styleProvider = [(TVRUIDevicePickerViewController *)self styleProvider];
  defaultDeviceTitle = [styleProvider defaultDeviceTitle];
  [titleButton setTitle:defaultDeviceTitle forState:0];

  styleProvider2 = [(TVRUIDevicePickerViewController *)self styleProvider];
  LODWORD(styleProvider) = [styleProvider2 isPad];

  if (styleProvider)
  {
    view = [(TVRUIDevicePickerViewController *)self view];
    [view setClipsToBounds:1];
  }
}

- (void)viewWillLayoutSubviews
{
  useNewDevicePicker = [(TVRUIDevicePickerViewController *)self useNewDevicePicker];
  v4 = _UISolariumEnabled();
  view = [(TVRUIDevicePickerViewController *)self view];
  [view bounds];
  v94 = v7;
  v95 = v6;
  v93 = v8;
  v96 = v9;

  deviceTitleView = [(TVRUIDevicePickerViewController *)self deviceTitleView];
  [deviceTitleView bounds];
  v99 = v12;
  v100 = v11;
  v97 = v13;
  v98 = v14;

  styleProvider = [(TVRUIDevicePickerViewController *)self styleProvider];
  [styleProvider topControlPanelInsets];
  v17 = v16;
  v19 = v18;

  [(TVRUIDevicePickerViewController *)self _buttonSize];
  v21 = v20;
  v23 = v22;
  if (v4 && ![(TVRUIDevicePickerViewController *)self isDevicePickerShowing])
  {
    muteButton = [(TVRUIDevicePickerViewController *)self muteButton];
    v91 = *(MEMORY[0x277CBF2C0] + 16);
    *&v106.a = *MEMORY[0x277CBF2C0];
    v92 = *&v106.a;
    *&v106.c = v91;
    *&v106.tx = *(MEMORY[0x277CBF2C0] + 32);
    v90 = *&v106.tx;
    [muteButton setTransform:&v106];

    muteButtonOverride = [(TVRUIDevicePickerViewController *)self muteButtonOverride];
    *&v106.a = v92;
    *&v106.c = v91;
    *&v106.tx = v90;
    [muteButtonOverride setTransform:&v106];

    powerButton = [(TVRUIDevicePickerViewController *)self powerButton];
    *&v106.a = v92;
    *&v106.c = v91;
    *&v106.tx = v90;
    [powerButton setTransform:&v106];
  }

  if (useNewDevicePicker)
  {
    deviceTitleView2 = [(TVRUIDevicePickerViewController *)self deviceTitleView];
    [deviceTitleView2 frame];
    v29 = v28;
    v31 = v30;
    v32 = v19;
    v34 = v33;
    v36 = v35;
    tableViewWrapper = [(TVRUIDevicePickerViewController *)self tableViewWrapper];
    v38 = v34;
    v19 = v32;
    [tableViewWrapper setCollapsedGlassBackgroundFrame:{v29, v31, v38, v36}];

    tableViewWrapper2 = [(TVRUIDevicePickerViewController *)self tableViewWrapper];
    [tableViewWrapper2 setShowsGlassBackground:1];
  }

  v40 = self->_baseHeight * 0.5 - v23 * 0.5;
  muteButton2 = [(TVRUIDevicePickerViewController *)self muteButton];
  v42 = v21;
  [muteButton2 setFrame:{v17, v40, v21, v23}];

  muteButtonOverride2 = [(TVRUIDevicePickerViewController *)self muteButtonOverride];
  [muteButtonOverride2 setFrame:{v17, v40, v21, v23}];

  view2 = [(TVRUIDevicePickerViewController *)self view];
  [view2 bounds];
  v45 = CGRectGetMaxX(v107) - v19 - v21;
  v108.origin.x = v100;
  v108.origin.y = v97;
  v108.size.width = v99;
  v108.size.height = v98;
  v46 = CGRectGetMidY(v108) - v23 * 0.5;
  powerButton2 = [(TVRUIDevicePickerViewController *)self powerButton];
  [powerButton2 setFrame:{v45, v46, v42, v23}];

  powerButton3 = [(TVRUIDevicePickerViewController *)self powerButton];
  [powerButton3 frame];
  v49 = CGRectGetMinX(v109) + -10.0;
  muteButton3 = [(TVRUIDevicePickerViewController *)self muteButton];
  [muteButton3 frame];
  v51 = v49 - (CGRectGetMaxX(v110) + 10.0);

  deviceTitleView3 = [(TVRUIDevicePickerViewController *)self deviceTitleView];
  muteButton4 = [(TVRUIDevicePickerViewController *)self muteButton];
  [muteButton4 frame];
  [deviceTitleView3 setFrame:{CGRectGetMaxX(v111) + 10.0, 0.0, v51, self->_baseHeight}];

  tableViewTopSeperator = [(TVRUIDevicePickerViewController *)self tableViewTopSeperator];
  styleProvider2 = [(TVRUIDevicePickerViewController *)self styleProvider];
  [styleProvider2 touchpadInsets];
  v57 = v56;
  v112.origin.x = v100;
  v112.origin.y = v97;
  v112.size.width = v99;
  v112.size.height = v98;
  Height = CGRectGetHeight(v112);
  view3 = [(TVRUIDevicePickerViewController *)self view];
  [view3 bounds];
  Width = CGRectGetWidth(v113);
  styleProvider3 = [(TVRUIDevicePickerViewController *)self styleProvider];
  [styleProvider3 touchpadInsets];
  v63 = Width - v62;
  styleProvider4 = [(TVRUIDevicePickerViewController *)self styleProvider];
  [styleProvider4 touchpadInsets];
  [tableViewTopSeperator setFrame:{v57, Height, v63 - v65, 1.0}];

  tableViewWrapper3 = [(TVRUIDevicePickerViewController *)self tableViewWrapper];
  v114.origin.x = v100;
  v114.origin.y = v97;
  v114.size.width = v99;
  v114.size.height = v98;
  v67 = CGRectGetMaxY(v114) + 2.0;
  view4 = [(TVRUIDevicePickerViewController *)self view];
  [view4 bounds];
  v69 = CGRectGetWidth(v115);
  view5 = [(TVRUIDevicePickerViewController *)self view];
  [view5 bounds];
  v71 = CGRectGetHeight(v116);
  v117.origin.x = v100;
  v117.origin.y = v97;
  v117.size.width = v99;
  v117.size.height = v98;
  v72 = v71 - CGRectGetHeight(v117) + -2.0;
  view6 = [(TVRUIDevicePickerViewController *)self view];
  [view6 safeAreaInsets];
  [tableViewWrapper3 setFrame:{0.0, v67, v69, v72 - v74}];

  if (useNewDevicePicker)
  {
    view7 = [(TVRUIDevicePickerViewController *)self view];
    [view7 bounds];
    v77 = v76;
    v79 = v78;
    v81 = v80;
    v83 = v82;
    tableViewWrapper4 = [(TVRUIDevicePickerViewController *)self tableViewWrapper];
    [tableViewWrapper4 setFrame:{v77, v79, v81, v83}];
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
      muteButton5 = [(TVRUIDevicePickerViewController *)self muteButton];
      v103 = v104;
      [muteButton5 setTransform:&v103];

      v102 = v106;
      muteButtonOverride3 = [(TVRUIDevicePickerViewController *)self muteButtonOverride];
      v103 = v102;
      [muteButtonOverride3 setTransform:&v103];

      v101 = v105;
      powerButton4 = [(TVRUIDevicePickerViewController *)self powerButton];
      v103 = v101;
      [powerButton4 setTransform:&v103];
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

  muteButton = [(TVRUIDevicePickerViewController *)self muteButton];
  v43[0] = muteButton;
  powerButton = [(TVRUIDevicePickerViewController *)self powerButton];
  v43[1] = powerButton;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v43 count:2];
  [(TVRUIDevicePickerViewController *)self setButtons:v7];

  [(TVRUIDevicePickerViewController *)self _updateButtonsShapes];
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  buttons = [(TVRUIDevicePickerViewController *)self buttons];
  v9 = [buttons countByEnumeratingWithState:&v38 objects:v42 count:16];
  if (v9)
  {
    v10 = *v39;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v39 != v10)
        {
          objc_enumerationMutation(buttons);
        }

        v12 = *(*(&v38 + 1) + 8 * i);
        view = [(TVRUIDevicePickerViewController *)self view];
        [view addSubview:v12];

        [v12 addTarget:self action:sel__buttonPressed_ forControlEvents:1];
        [v12 addTarget:self action:sel__buttonReleased_ forControlEvents:448];
      }

      v9 = [buttons countByEnumeratingWithState:&v38 objects:v42 count:16];
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
    styleProvider = [(TVRUIDevicePickerViewController *)self styleProvider];
    v17 = [styleProvider symbolImageForButtonPanelNamed:v15];

    v18 = MEMORY[0x277D750C8];
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __48__TVRUIDevicePickerViewController__setupButtons__block_invoke;
    v35[3] = &unk_279D87C68;
    objc_copyWeak(&v36, &location);
    v19 = [v18 actionWithTitle:&stru_287E6AEF8 image:v17 identifier:0 handler:v35];
    if (v33)
    {
      borderedButtonConfiguration = [MEMORY[0x277D75230] borderedButtonConfiguration];
      [borderedButtonConfiguration setCornerStyle:4];
      background = [borderedButtonConfiguration background];
      [background setBackgroundColor:0];
    }

    else
    {
      borderedButtonConfiguration = [MEMORY[0x277D75230] plainButtonConfiguration];
    }

    v22 = [MEMORY[0x277D75220] buttonWithConfiguration:borderedButtonConfiguration primaryAction:v19];
    styleProvider2 = [(TVRUIDevicePickerViewController *)self styleProvider];
    primaryTextAndGlyphColor = [styleProvider2 primaryTextAndGlyphColor];
    [(UIButton *)v22 setTintColor:primaryTextAndGlyphColor];

    [(UIButton *)v22 setShowsMenuAsPrimaryAction:1];
    [(UIButton *)v22 setOverrideUserInterfaceStyle:2];
    if (v33)
    {
      [(UIButton *)v22 tvrui_makeCapsuleCorners];
      [(UIButton *)v22 tvrui_setGlassBackground];
    }

    view2 = [(TVRUIDevicePickerViewController *)self view];
    [view2 addSubview:v22];

    objc_destroyWeak(&v36);
    muteButtonOverride = self->_muteButtonOverride;
    self->_muteButtonOverride = v22;

    muteButton2 = [(TVRUIDevicePickerViewController *)self muteButton];
    [muteButton2 setHidden:1];

    muteButton3 = [(TVRUIDevicePickerViewController *)self muteButton];
    [muteButton3 setAlpha:0.0];

    objc_destroyWeak(&location);
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v30 = *MEMORY[0x277D81C70];
  mainQueue = [MEMORY[0x277CCABD8] mainQueue];
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __48__TVRUIDevicePickerViewController__setupButtons__block_invoke_2;
  v34[3] = &unk_279D88768;
  v34[4] = self;
  v32 = [defaultCenter addObserverForName:v30 object:0 queue:mainQueue usingBlock:v34];
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
  buttons = [(TVRUIDevicePickerViewController *)self buttons];
  v3 = [buttons countByEnumeratingWithState:&v7 objects:v11 count:16];
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
          objc_enumerationMutation(buttons);
        }

        [*(*(&v7 + 1) + 8 * v6++) setHasButtonShape:_AXSButtonShapesEnabled() != 0];
      }

      while (v4 != v6);
      v4 = [buttons countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)_setupDeviceTitleView
{
  v3 = _UISolariumEnabled();
  deviceTitleView = [(TVRUIDevicePickerViewController *)self deviceTitleView];

  if (!deviceTitleView)
  {
    v5 = [TVRUITitleView alloc];
    styleProvider = [(TVRUIDevicePickerViewController *)self styleProvider];
    v7 = [(TVRUITitleView *)v5 initWithStyleProvider:styleProvider];
    [(TVRUIDevicePickerViewController *)self setDeviceTitleView:v7];

    deviceTitleView2 = [(TVRUIDevicePickerViewController *)self deviceTitleView];
    [deviceTitleView2 setUserInteractionEnabled:1];

    view = [(TVRUIDevicePickerViewController *)self view];
    deviceTitleView3 = [(TVRUIDevicePickerViewController *)self deviceTitleView];
    [view addSubview:deviceTitleView3];

    v19 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel__toggleState];
    [v19 setCancelsTouchesInView:0];
    deviceTitleView4 = [(TVRUIDevicePickerViewController *)self deviceTitleView];
    [deviceTitleView4 addGestureRecognizer:v19];

    v12 = [objc_alloc(MEMORY[0x277D75708]) initWithTarget:self action:sel__titleWasLongPressed_];
    [v12 setMinimumPressDuration:1.2];
    deviceTitleView5 = [(TVRUIDevicePickerViewController *)self deviceTitleView];
    [deviceTitleView5 addGestureRecognizer:v12];

    if (v3)
    {
      deviceTitleView6 = [(TVRUIDevicePickerViewController *)self deviceTitleView];
      [deviceTitleView6 tvrui_makeCapsuleCorners];

      styleProvider2 = [(TVRUIDevicePickerViewController *)self styleProvider];
      controlGlassVariant = [styleProvider2 controlGlassVariant];
      deviceTitleView7 = [(TVRUIDevicePickerViewController *)self deviceTitleView];
      [deviceTitleView7 _setBackground:controlGlassVariant];

      deviceTitleView8 = [(TVRUIDevicePickerViewController *)self deviceTitleView];
      [deviceTitleView8 setBackgroundColor:0];
    }
  }
}

- (void)_setupTitleButtonIfNeeded
{
  titleButton = [(TVRUIDevicePickerViewController *)self titleButton];

  if (!titleButton)
  {
    v4 = [MEMORY[0x277D75220] buttonWithType:0];
    [(TVRUIDevicePickerViewController *)self setTitleButton:v4];

    titleButton2 = [(TVRUIDevicePickerViewController *)self titleButton];
    titleLabel = [titleButton2 titleLabel];
    styleProvider = [(TVRUIDevicePickerViewController *)self styleProvider];
    fontForDeviceTitle = [styleProvider fontForDeviceTitle];
    [titleLabel setFont:fontForDeviceTitle];

    titleButton3 = [(TVRUIDevicePickerViewController *)self titleButton];
    titleLabel2 = [titleButton3 titleLabel];
    [titleLabel2 setAdjustsFontForContentSizeCategory:1];

    titleButton4 = [(TVRUIDevicePickerViewController *)self titleButton];
    titleLabel3 = [titleButton4 titleLabel];
    [titleLabel3 setAdjustsFontSizeToFitWidth:1];

    titleButton5 = [(TVRUIDevicePickerViewController *)self titleButton];
    titleLabel4 = [titleButton5 titleLabel];
    styleProvider2 = [(TVRUIDevicePickerViewController *)self styleProvider];
    textColorForDeviceTitle = [styleProvider2 textColorForDeviceTitle];
    [titleLabel4 setTextColor:textColorForDeviceTitle];

    titleButton6 = [(TVRUIDevicePickerViewController *)self titleButton];
    styleProvider3 = [(TVRUIDevicePickerViewController *)self styleProvider];
    primaryTextAndGlyphColor = [styleProvider3 primaryTextAndGlyphColor];
    [titleButton6 setTintColor:primaryTextAndGlyphColor];

    styleProvider4 = [(TVRUIDevicePickerViewController *)self styleProvider];
    chevronImage = [styleProvider4 chevronImage];

    titleButton7 = [(TVRUIDevicePickerViewController *)self titleButton];
    [titleButton7 setImage:chevronImage forState:0];

    titleButton8 = [(TVRUIDevicePickerViewController *)self titleButton];
    imageView = [titleButton8 imageView];
    [imageView setContentMode:1];

    titleButton9 = [(TVRUIDevicePickerViewController *)self titleButton];
    imageView2 = [titleButton9 imageView];
    styleProvider5 = [(TVRUIDevicePickerViewController *)self styleProvider];
    tintColorForChevronImage = [styleProvider5 tintColorForChevronImage];
    [imageView2 setTintColor:tintColorForChevronImage];

    titleButton10 = [(TVRUIDevicePickerViewController *)self titleButton];
    [titleButton10 addTarget:self action:sel__toggleState forControlEvents:64];

    titleButton11 = [(TVRUIDevicePickerViewController *)self titleButton];
    [titleButton11 setContentHorizontalAlignment:0];

    v30 = MEMORY[0x277D75D18];
    view = [(TVRUIDevicePickerViewController *)self view];
    v32 = [v30 userInterfaceLayoutDirectionForSemanticContentAttribute:{objc_msgSend(view, "semanticContentAttribute")}];

    titleButton12 = [(TVRUIDevicePickerViewController *)self titleButton];
    v34 = titleButton12;
    if (v32)
    {
      v35 = 3;
    }

    else
    {
      v35 = 4;
    }

    [titleButton12 setSemanticContentAttribute:v35];

    titleButton13 = [(TVRUIDevicePickerViewController *)self titleButton];
    [titleButton13 setPointerStyleProvider:&__block_literal_global_13];
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

- (void)_titleWasLongPressed:(id)pressed
{
  delegate = [(TVRUIDevicePickerViewController *)self delegate];
  device = [(TVRUIDevicePickerViewController *)self device];
  [delegate devicePickerTitleWasLongPressedForDevice:device];
}

- (void)setDeviceTitle:(id)title
{
  titleCopy = title;
  if (![(NSString *)self->_deviceTitle isEqualToString:titleCopy])
  {
    objc_storeStrong(&self->_deviceTitle, title);
    v6 = MEMORY[0x277D75D18];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __50__TVRUIDevicePickerViewController_setDeviceTitle___block_invoke;
    v7[3] = &unk_279D88230;
    v7[4] = self;
    v8 = titleCopy;
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

- (void)setMenuProvider:(id)provider
{
  objc_storeWeak(&self->_menuProvider, provider);
  [(TVRUIDevicePickerViewController *)self setContextMenuNeedsUpdate:1];

  [(TVRUIDevicePickerViewController *)self _updateViewState];
}

- (void)_setupDeviceList
{
  useNewDevicePicker = [(TVRUIDevicePickerViewController *)self useNewDevicePicker];
  tableViewWrapper = [(TVRUIDevicePickerViewController *)self tableViewWrapper];

  if (!tableViewWrapper)
  {
    styleProvider = [(TVRUIDevicePickerViewController *)self styleProvider];
    [styleProvider deviceListRowHeight];
    [(TVRUIDevicePickerViewController *)self setBaseHeight:?];

    v6 = objc_alloc_init(_TVRUITableViewWrapperView);
    [(TVRUIDevicePickerViewController *)self setTableViewWrapper:v6];

    tableViewWrapper2 = [(TVRUIDevicePickerViewController *)self tableViewWrapper];
    [tableViewWrapper2 setClipsToBounds:1];

    tableViewWrapper3 = [(TVRUIDevicePickerViewController *)self tableViewWrapper];
    layer = [tableViewWrapper3 layer];
    [layer setMaskedCorners:4];

    view = [(TVRUIDevicePickerViewController *)self view];
    tableViewWrapper4 = [(TVRUIDevicePickerViewController *)self tableViewWrapper];
    [view addSubview:tableViewWrapper4];

    v12 = objc_alloc(MEMORY[0x277D75B40]);
    v13 = [v12 initWithFrame:0 style:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    [(TVRUIDevicePickerViewController *)self setTableView:v13];

    tableView = [(TVRUIDevicePickerViewController *)self tableView];
    layer2 = [tableView layer];
    [layer2 setAllowsGroupBlending:0];

    tableView2 = [(TVRUIDevicePickerViewController *)self tableView];
    layer3 = [tableView2 layer];
    [layer3 setAllowsGroupOpacity:0];

    tableView3 = [(TVRUIDevicePickerViewController *)self tableView];
    [tableView3 setDelegate:self];

    tableView4 = [(TVRUIDevicePickerViewController *)self tableView];
    [tableView4 setDataSource:self];

    tableView5 = [(TVRUIDevicePickerViewController *)self tableView];
    [tableView5 setSeparatorStyle:0];

    tableView6 = [(TVRUIDevicePickerViewController *)self tableView];
    [tableView6 setIndicatorStyle:2];

    tableView7 = [(TVRUIDevicePickerViewController *)self tableView];
    clearColor = [MEMORY[0x277D75348] clearColor];
    [tableView7 setBackgroundColor:clearColor];

    tableView8 = [(TVRUIDevicePickerViewController *)self tableView];
    [tableView8 registerClass:objc_opt_class() forCellReuseIdentifier:@"kTVRDropDownCellIdentifier"];

    tableViewWrapper5 = [(TVRUIDevicePickerViewController *)self tableViewWrapper];
    tableView9 = [(TVRUIDevicePickerViewController *)self tableView];
    [tableViewWrapper5 addSubview:tableView9];

    v46 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel_didTapWrapperView_];
    [v46 setCancelsTouchesInView:0];
    tableViewWrapper6 = [(TVRUIDevicePickerViewController *)self tableViewWrapper];
    [tableViewWrapper6 addGestureRecognizer:v46];

    if (useNewDevicePicker)
    {
      view2 = [(TVRUIDevicePickerViewController *)self view];
      muteButton = [(TVRUIDevicePickerViewController *)self muteButton];
      [view2 bringSubviewToFront:muteButton];

      view3 = [(TVRUIDevicePickerViewController *)self view];
      muteButtonOverride = [(TVRUIDevicePickerViewController *)self muteButtonOverride];
      [view3 bringSubviewToFront:muteButtonOverride];

      view4 = [(TVRUIDevicePickerViewController *)self view];
      deviceTitleView = [(TVRUIDevicePickerViewController *)self deviceTitleView];
      [view4 bringSubviewToFront:deviceTitleView];

      view5 = [(TVRUIDevicePickerViewController *)self view];
      powerButton = [(TVRUIDevicePickerViewController *)self powerButton];
      [view5 bringSubviewToFront:powerButton];

      tableViewWrapper7 = [(TVRUIDevicePickerViewController *)self tableViewWrapper];
      [tableViewWrapper7 setShowsGlassBackground:1];

      tableView10 = [(TVRUIDevicePickerViewController *)self tableView];
      tableViewWrapper8 = [(TVRUIDevicePickerViewController *)self tableViewWrapper];
      [tableViewWrapper8 setContentViewToMask:tableView10];

      [(TVRUIDevicePickerViewController *)self tableView];
    }

    else
    {
      styleProvider2 = [(TVRUIDevicePickerViewController *)self styleProvider];
      separatorView = [styleProvider2 separatorView];
      [(TVRUIDevicePickerViewController *)self setTableViewTopSeperator:separatorView];

      view6 = [(TVRUIDevicePickerViewController *)self view];
      tableViewTopSeperator = [(TVRUIDevicePickerViewController *)self tableViewTopSeperator];
      [view6 addSubview:tableViewTopSeperator];

      [(TVRUIDevicePickerViewController *)self tableViewTopSeperator];
    }
    v43 = ;
    [v43 setAlpha:0.0];

    v44 = [MEMORY[0x277CCACA8] stringWithFormat:@"UIA.TVRemoteService.%@", @"deviceTable"];
    tableView11 = [(TVRUIDevicePickerViewController *)self tableView];
    [tableView11 setAccessibilityIdentifier:v44];
  }
}

- (void)setDevices:(id)devices
{
  devicesCopy = devices;
  if (self->_devices != devicesCopy)
  {
    v14 = devicesCopy;
    v5 = [MEMORY[0x277CBEB18] arrayWithArray:devicesCopy];
    v6 = [(NSArray *)v5 count];
    v7 = v6 != 0;
    v8 = v6 == 0;
    titleButton = [(TVRUIDevicePickerViewController *)self titleButton];
    imageView = [titleButton imageView];
    [imageView setHidden:v8];

    view = [(TVRUIDevicePickerViewController *)self view];
    [view setUserInteractionEnabled:v7];

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
      tableView = [(TVRUIDevicePickerViewController *)self tableView];
      [(TVRUIDevicePickerViewController *)self _preferredTableViewFrameWhenExpanded:0];
      [tableView setFrame:?];
    }
  }

  MEMORY[0x2821F96F8]();
}

- (void)setSuggestedDevices:(id)devices
{
  devicesCopy = devices;
  if (+[TVRUIFeatures corianderEnabled]&& ![(NSArray *)self->_suggestedDevices isEqualToArray:devicesCopy])
  {
    objc_storeStrong(&self->_suggestedDevices, devices);
    [(TVRUIDevicePickerViewController *)self _updateDevicesAndReloadWithSuggestedDevices:devicesCopy];
  }
}

- (void)_updateDevicesAndReloadWithSuggestedDevices:(id)devices
{
  v42 = *MEMORY[0x277D85DE8];
  devicesCopy = devices;
  if (+[TVRUIFeatures corianderEnabled])
  {
    v5 = _TVRUIDevicePickerLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      devices = [(TVRUIDevicePickerViewController *)self devices];
      *buf = 134217984;
      v41 = [devices count];
      _os_log_impl(&dword_26CFEB000, v5, OS_LOG_TYPE_DEFAULT, "devices count: %ld", buf, 0xCu);
    }

    v7 = _TVRUIDevicePickerLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [(TVRUIDevicePickerViewController *)self _updateDevicesAndReloadWithSuggestedDevices:v7];
    }

    devices2 = [(TVRUIDevicePickerViewController *)self devices];
    v9 = [devices2 count];

    if (v9)
    {
      v10 = MEMORY[0x277CBEB40];
      devices3 = [(TVRUIDevicePickerViewController *)self devices];
      v12 = [v10 orderedSetWithCapacity:{objc_msgSend(devices3, "count")}];

      devices4 = [(TVRUIDevicePickerViewController *)self devices];
      devices5 = [(TVRUIDevicePickerViewController *)self devices];
      firstObject = [devices5 firstObject];

      v32 = firstObject;
      selfCopy = self;
      if (firstObject && [firstObject isConnected])
      {
        v16 = _TVRUIDevicePickerLog();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          [(TVRUIDevicePickerViewController *)firstObject _updateDevicesAndReloadWithSuggestedDevices:v16];
        }

        [v12 addObject:firstObject];
        devices6 = [(TVRUIDevicePickerViewController *)self devices];
        devices7 = [(TVRUIDevicePickerViewController *)self devices];
        v19 = [devices6 subarrayWithRange:{1, objc_msgSend(devices7, "count") - 1}];

        devices4 = v19;
      }

      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      v34 = devicesCopy;
      v20 = devicesCopy;
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
            if ([devices4 containsObject:v25])
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

      [v12 addObjectsFromArray:devices4];
      array = [v12 array];
      self = selfCopy;
      devices = selfCopy->_devices;
      selfCopy->_devices = array;

      v29 = _TVRUIDevicePickerLog();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        devices8 = [(TVRUIDevicePickerViewController *)selfCopy devices];
        *buf = 138543362;
        v41 = devices8;
        _os_log_impl(&dword_26CFEB000, v29, OS_LOG_TYPE_DEFAULT, "Sorted device list: %{public}@", buf, 0xCu);
      }

      devicesCopy = v34;
    }
  }

  tableView = [(TVRUIDevicePickerViewController *)self tableView];
  [tableView reloadData];
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
  springCubicTimingParameters = [v4 springCubicTimingParameters];
  [(TVRUICubicSpringTimingParameters *)v7 setSpringCubicTimingParameters:springCubicTimingParameters];

  v6 = [(UIViewPropertyAnimator *)[TVRUICubicSpringAnimator alloc] initWithDuration:v7 timingParameters:1.0];
  [(TVRUIDevicePickerViewController *)self setHideAnimator:v6];
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v4 = [(TVRUIDevicePickerViewController *)self devices:view];
  v5 = [v4 count];

  return v5;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  objc_initWeak(&location, self);
  v8 = [viewCopy dequeueReusableCellWithIdentifier:@"kTVRDropDownCellIdentifier" forIndexPath:pathCopy];
  styleProvider = [(TVRUIDevicePickerViewController *)self styleProvider];

  if (!styleProvider)
  {
    v10 = _TVRUIDevicePickerLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [TVRUIDevicePickerViewController tableView:v10 cellForRowAtIndexPath:?];
    }
  }

  styleProvider2 = [(TVRUIDevicePickerViewController *)self styleProvider];
  [v8 setStyleProvider:styleProvider2];

  devices = [(TVRUIDevicePickerViewController *)self devices];
  v13 = [devices objectAtIndex:{objc_msgSend(pathCopy, "row")}];

  [v8 setDevice:v13];
  [v8 setShowSeparator:{objc_msgSend(pathCopy, "row") != objc_msgSend(viewCopy, "numberOfRowsInSection:", objc_msgSend(pathCopy, "section")) - 1}];
  v14 = objc_alloc_init(MEMORY[0x277D75D18]);
  v15 = [MEMORY[0x277D75348] colorWithWhite:1.0 alpha:0.3];
  [v14 setBackgroundColor:v15];

  [v8 setSelectedBackgroundView:v14];
  if ([v13 isConnected])
  {
    [(TVRUIDevicePickerViewController *)self setConnectedDeviceIndex:pathCopy];
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

- (double)tableView:(id)view heightForRowAtIndexPath:(id)path
{
  if ([(TVRUIDevicePickerViewController *)self _accessibilityFontSizesEnabled:view])
  {
    return *MEMORY[0x277D76F30];
  }

  [(TVRUIDevicePickerViewController *)self baseHeight];
  return result;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v15 = *MEMORY[0x277D85DE8];
  devices = self->_devices;
  pathCopy = path;
  v7 = -[NSArray objectAtIndex:](devices, "objectAtIndex:", [pathCopy row]);
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
    eventHaptic = [(TVRUIDevicePickerViewController *)self eventHaptic];
    [eventHaptic playSelectionEventHaptic];

    delegate = [(TVRUIDevicePickerViewController *)self delegate];
    [delegate devicePicked:v7];

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

  tableView = [(TVRUIDevicePickerViewController *)self tableView];
  [tableView deselectRowAtIndexPath:pathCopy animated:0];

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

- (void)didChangeToExpanded:(BOOL)expanded
{
  expandedCopy = expanded;
  tableView = [(TVRUIDevicePickerViewController *)self tableView];
  [(TVRUIDevicePickerViewController *)self _preferredTableViewFrameWhenExpanded:expandedCopy];
  [tableView setFrame:?];
}

- (void)didTapWrapperView:(id)view
{
  viewCopy = view;
  if ([(TVRUIDevicePickerViewController *)self isDevicePickerShowing])
  {
    tableViewWrapper = [(TVRUIDevicePickerViewController *)self tableViewWrapper];
    [viewCopy locationInView:tableViewWrapper];
    v6 = v5;
    v8 = v7;

    tableView = [(TVRUIDevicePickerViewController *)self tableView];
    [tableView frame];
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
  useNewDevicePicker = [(TVRUIDevicePickerViewController *)self useNewDevicePicker];
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
      tableView = [(TVRUIDevicePickerViewController *)self tableView];
      [(TVRUIDevicePickerViewController *)self _preferredTableViewFrameWhenExpanded:0];
      [tableView setFrame:?];
    }

    showAnimator = [(TVRUIDevicePickerViewController *)self showAnimator];
    isRunning = [showAnimator isRunning];

    if (isRunning)
    {
      showAnimator2 = [(TVRUIDevicePickerViewController *)self showAnimator];
      [showAnimator2 stopAnimation:1];

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
      hideAnimator = [(TVRUIDevicePickerViewController *)self hideAnimator];
      isRunning2 = [hideAnimator isRunning];

      if (!isRunning2)
      {
LABEL_15:
        [(TVRUIDevicePickerViewController *)self _setupAnimators];
        objc_initWeak(buf, self);
        if ([(TVRUIDevicePickerViewController *)self isDevicePickerShowing])
        {
          showAnimator3 = [(TVRUIDevicePickerViewController *)self showAnimator];
          v28[0] = MEMORY[0x277D85DD0];
          v28[1] = 3221225472;
          v28[2] = __47__TVRUIDevicePickerViewController__toggleState__block_invoke;
          v28[3] = &unk_279D887F8;
          v18 = &v29;
          objc_copyWeak(&v29, buf);
          v28[4] = self;
          v30 = v4;
          v31 = useNewDevicePicker;
          [showAnimator3 addAnimations:v28];

          [(TVRUIDevicePickerViewController *)self _sortAndReloadDevices];
          eventHaptic = [(TVRUIDevicePickerViewController *)self eventHaptic];
          [eventHaptic playImpactEventHaptic];

          delegate = [(TVRUIDevicePickerViewController *)self delegate];
          [delegate devicePickerWillChangeState:1 animated:0];

          showAnimator4 = [(TVRUIDevicePickerViewController *)self showAnimator];
          [showAnimator4 startAnimation];
        }

        else
        {
          hideAnimator2 = [(TVRUIDevicePickerViewController *)self hideAnimator];
          v25[0] = MEMORY[0x277D85DD0];
          v25[1] = 3221225472;
          v25[2] = __47__TVRUIDevicePickerViewController__toggleState__block_invoke_2;
          v25[3] = &unk_279D88820;
          v18 = &v26;
          objc_copyWeak(&v26, buf);
          v27 = useNewDevicePicker;
          [hideAnimator2 addAnimations:v25];

          delegate2 = [(TVRUIDevicePickerViewController *)self delegate];
          [delegate2 devicePickerWillChangeState:0 animated:0];

          showAnimator4 = [(TVRUIDevicePickerViewController *)self hideAnimator];
          [showAnimator4 startAnimation];
        }

        objc_destroyWeak(v18);
        objc_destroyWeak(buf);
        return;
      }

      hideAnimator3 = [(TVRUIDevicePickerViewController *)self hideAnimator];
      [hideAnimator3 stopAnimation:1];

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
  playerCommandHandler = [(TVRUIDevicePickerViewController *)self playerCommandHandler];
  [(TVRUIShortcutsMenuViewController *)v3 setPlayerCommandHandler:playerCommandHandler];

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

  popoverPresentationController = [(TVRUIShortcutsMenuViewController *)v3 popoverPresentationController];
  muteButtonOverride = [(TVRUIDevicePickerViewController *)self muteButtonOverride];
  [popoverPresentationController setSourceView:muteButtonOverride];

  muteButtonOverride2 = [(TVRUIDevicePickerViewController *)self muteButtonOverride];
  [muteButtonOverride2 bounds];
  [popoverPresentationController setSourceRect:?];

  [popoverPresentationController setPermittedArrowDirections:-1];
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

- (CGRect)_preferredTableViewFrameWhenExpanded:(BOOL)expanded
{
  v21 = *MEMORY[0x277D85DE8];
  useNewDevicePicker = [(TVRUIDevicePickerViewController *)self useNewDevicePicker];
  if (useNewDevicePicker)
  {
    x = 25.0;
  }

  else
  {
    x = 0.0;
  }

  tableViewWrapper = [(TVRUIDevicePickerViewController *)self tableViewWrapper];
  [tableViewWrapper bounds];
  width = v8 + x * -2.0;
  [(TVRUIDevicePickerViewController *)self _expandedContentHeight];
  height = v10;

  if (expanded || useNewDevicePicker)
  {
    v14 = _TVRUIDevicePickerLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      devices = [(TVRUIDevicePickerViewController *)self devices];
      v19 = 134217984;
      v20 = [devices count];
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

- (void)_updateTableFrame:(BOOL)frame
{
  frameCopy = frame;
  tableView = [(TVRUIDevicePickerViewController *)self tableView];
  [(TVRUIDevicePickerViewController *)self _preferredTableViewFrameWhenExpanded:frameCopy];
  [tableView setFrame:?];
}

- (void)_device:(id)_device updatedFindMySupported:(BOOL)supported
{
  supported = [(TVRUIDevicePickerViewController *)self _cellForDevice:_device, supported];
  [supported _updateFindMyButton];
}

- (id)_cellForDevice:(id)device
{
  deviceCopy = device;
  devices = [(TVRUIDevicePickerViewController *)self devices];
  v6 = [devices indexOfObject:deviceCopy];

  v7 = [MEMORY[0x277CCAA70] indexPathForRow:v6 inSection:0];
  tableView = [(TVRUIDevicePickerViewController *)self tableView];
  v9 = [tableView cellForRowAtIndexPath:v7];

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
  devices = [(TVRUIDevicePickerViewController *)self devices];
  v6 = v4 * [devices count];

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
  useNewDevicePicker = [(TVRUIDevicePickerViewController *)self useNewDevicePicker];
  styleProvider = [(TVRUIDevicePickerViewController *)self styleProvider];
  [styleProvider touchpadHeight];
  v6 = v5;

  v7 = 0.85;
  if (!useNewDevicePicker)
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
  system = [MEMORY[0x277D75380] system];
  preferredContentSizeCategory = [system preferredContentSizeCategory];

  LOBYTE(system) = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);
  return system;
}

- (double)_contentHeightForPreferredContentSizeCategory
{
  [(TVRUIDevicePickerViewController *)self _defaultCalculatedContentHeight];
  Height = v3;
  system = [MEMORY[0x277D75380] system];
  preferredContentSizeCategory = [system preferredContentSizeCategory];

  if (UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory))
  {
    if (([preferredContentSizeCategory isEqualToString:*MEMORY[0x277D767F0]] & 1) != 0 || objc_msgSend(preferredContentSizeCategory, "isEqualToString:", *MEMORY[0x277D767E8]))
    {
      view = [(TVRUIDevicePickerViewController *)self view];
      [view bounds];
      Height = CGRectGetHeight(v9);
    }

    else if (([preferredContentSizeCategory isEqualToString:*MEMORY[0x277D76800]] & 1) != 0 || objc_msgSend(preferredContentSizeCategory, "isEqualToString:", *MEMORY[0x277D767F8]))
    {
      Height = Height * 1.5;
    }
  }

  return Height;
}

- (void)_buttonPressed:(id)pressed
{
  v9 = +[TVRUIButtonEvent createButtonEvent:buttonType:](TVRUIButtonEvent, "createButtonEvent:buttonType:", 1, [pressed buttonType]);
  buttonEventDelegate = [(TVRUIDevicePickerViewController *)self buttonEventDelegate];
  if (buttonEventDelegate)
  {
    v5 = buttonEventDelegate;
    buttonEventDelegate2 = [(TVRUIDevicePickerViewController *)self buttonEventDelegate];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      buttonEventDelegate3 = [(TVRUIDevicePickerViewController *)self buttonEventDelegate];
      [buttonEventDelegate3 generatedButtonEvent:v9];
    }
  }
}

- (void)_buttonReleased:(id)released
{
  v9 = +[TVRUIButtonEvent createButtonEvent:buttonType:](TVRUIButtonEvent, "createButtonEvent:buttonType:", 2, [released buttonType]);
  buttonEventDelegate = [(TVRUIDevicePickerViewController *)self buttonEventDelegate];
  if (buttonEventDelegate)
  {
    v5 = buttonEventDelegate;
    buttonEventDelegate2 = [(TVRUIDevicePickerViewController *)self buttonEventDelegate];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      buttonEventDelegate3 = [(TVRUIDevicePickerViewController *)self buttonEventDelegate];
      [buttonEventDelegate3 generatedButtonEvent:v9];
    }
  }
}

- (void)_updateTitleViewForDevice:(id)device
{
  deviceCopy = device;
  styleProvider = [(TVRUIDevicePickerViewController *)self styleProvider];
  model = [deviceCopy model];
  v7 = [styleProvider iconForDeviceModel:model];

  v8 = MEMORY[0x277D75D18];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __61__TVRUIDevicePickerViewController__updateTitleViewForDevice___block_invoke;
  v11[3] = &unk_279D883D8;
  v11[4] = self;
  v12 = deviceCopy;
  v13 = v7;
  v9 = v7;
  v10 = deviceCopy;
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
    enabled = [(TVRUIDevicePickerViewController *)self enabled];
    if (enabled)
    {
      v5 = 1.0;
    }

    else
    {
      styleProvider = [(TVRUIDevicePickerViewController *)self styleProvider];
      [styleProvider disabledButtonAlpha];
      v5 = v6;
    }

    titleButton = [(TVRUIDevicePickerViewController *)self titleButton];
    [titleButton setAlpha:v5];

    if (!enabled)
    {
    }

    enabled2 = [(TVRUIDevicePickerViewController *)self enabled];
    if (enabled2)
    {
      v9 = 1.0;
    }

    else
    {
      styleProvider = [(TVRUIDevicePickerViewController *)self styleProvider];
      [styleProvider disabledButtonAlpha];
      v9 = v10;
    }

    powerButton = [(TVRUIDevicePickerViewController *)self powerButton];
    [powerButton setAlpha:v9];

    if (!enabled2)
    {
    }

    enabled3 = [(TVRUIDevicePickerViewController *)self enabled];
    if (enabled3)
    {
      v13 = 1.0;
    }

    else
    {
      styleProvider = [(TVRUIDevicePickerViewController *)self styleProvider];
      [styleProvider disabledButtonAlpha];
      v13 = v14;
    }

    deviceTitleView = [(TVRUIDevicePickerViewController *)self deviceTitleView];
    [deviceTitleView setAlpha:v13];

    if (!enabled3)
    {
    }

    muteButtonOverride = self->_muteButtonOverride;
    muteButton = [(TVRUIDevicePickerViewController *)self muteButton];
    v18 = muteButton;
    if (muteButtonOverride)
    {
      [muteButton setHidden:1];

      muteButton2 = [(TVRUIDevicePickerViewController *)self muteButton];
      [muteButton2 setAlpha:0.0];

      enabled4 = [(TVRUIDevicePickerViewController *)self enabled];
      if (enabled4)
      {
        v21 = 1.0;
      }

      else
      {
        styleProvider2 = [(TVRUIDevicePickerViewController *)self styleProvider];
        [styleProvider2 disabledButtonAlpha];
        v21 = v22;
      }

      muteButtonOverride = [(TVRUIDevicePickerViewController *)self muteButtonOverride];
    }

    else
    {
      [muteButton setHidden:0];

      enabled4 = [(TVRUIDevicePickerViewController *)self enabled];
      if (enabled4)
      {
        v21 = 1.0;
      }

      else
      {
        styleProvider2 = [(TVRUIDevicePickerViewController *)self styleProvider];
        [styleProvider2 disabledButtonAlpha];
        v21 = v24;
      }

      muteButtonOverride = [(TVRUIDevicePickerViewController *)self muteButton];
    }

    v25 = muteButtonOverride;
    [muteButtonOverride setAlpha:v21];

    if (!enabled4)
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
    supportsMute = [(TVRUIDevice *)device supportsMute];
    muteButton = [(TVRUIDevicePickerViewController *)self muteButton];
    [muteButton setEnabled:supportsMute];

    supportsPower = [(TVRUIDevice *)self->_device supportsPower];
    powerButton = [(TVRUIDevicePickerViewController *)self powerButton];
    [powerButton setEnabled:supportsPower];

    muteButtonOverride = [(TVRUIDevicePickerViewController *)self muteButtonOverride];
    [muteButtonOverride setEnabled:1];

    [(TVRUIDevicePickerViewController *)self _updateTitleViewForDevice:self->_device];
    v10 = [(TVRUIDevicePickerViewController *)self _cellForDevice:self->_device];
    [v10 _updateConnectionStatus];
    name = [(TVRUIDevice *)self->_device name];
    [(TVRUIDevicePickerViewController *)self _updateDeviceNameAutomationIdentifier:name];
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

  muteButton = [(TVRUIDevicePickerViewController *)self muteButton];
  [muteButton setEnabled:0];

  powerButton = [(TVRUIDevicePickerViewController *)self powerButton];
  [powerButton setEnabled:0];

  muteButtonOverride = [(TVRUIDevicePickerViewController *)self muteButtonOverride];
  [muteButtonOverride setEnabled:0];

  styleProvider = [(TVRUIDevicePickerViewController *)self styleProvider];
  defaultDeviceTitle = [styleProvider defaultDeviceTitle];

  v9 = MEMORY[0x277D75D18];
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __54__TVRUIDevicePickerViewController_resetSelectedDevice__block_invoke;
  v14 = &unk_279D88230;
  selfCopy = self;
  v16 = defaultDeviceTitle;
  v10 = defaultDeviceTitle;
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

- (void)_updateDeviceNameAutomationIdentifier:(id)identifier
{
  identifier = [MEMORY[0x277CCACA8] stringWithFormat:@"selectedDevice=%@", identifier];
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"UIA.TVRemoteService.%@", identifier];
  deviceTitleView = [(TVRUIDevicePickerViewController *)self deviceTitleView];
  [deviceTitleView setAccessibilityIdentifier:v4];
}

- (void)setDevice:(id)device
{
  deviceCopy = device;
  v6 = deviceCopy;
  if (self->_device == deviceCopy)
  {
    if (!deviceCopy)
    {
      goto LABEL_5;
    }
  }

  else
  {
    objc_storeStrong(&self->_device, device);
  }

  [(TVRUIDevicePickerViewController *)self _updateDevice];
LABEL_5:
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
    [(TVRUIDevicePickerViewController *)self _updateViewState];
  }
}

- (void)setVolumeControlAvailable:(BOOL)available
{
  availableCopy = available;
  if (available)
  {
    device = [(TVRUIDevicePickerViewController *)self device];
    supportsMute = [device supportsMute];
  }

  else
  {
    supportsMute = 0;
  }

  muteButton = [(TVRUIDevicePickerViewController *)self muteButton];
  [muteButton setEnabled:supportsMute];

  if (availableCopy)
  {
  }

  [(TVRUIDevicePickerViewController *)self setContextMenuNeedsUpdate:1];

  [(TVRUIDevicePickerViewController *)self _updateViewState];
}

- (id)_lastVisibleCellSupportingFindMy
{
  v26[1] = *MEMORY[0x277D85DE8];
  tableView = [(TVRUIDevicePickerViewController *)self tableView];
  indexPathsForVisibleRows = [tableView indexPathsForVisibleRows];

  v5 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"row" ascending:1];
  v26[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:1];
  v7 = [indexPathsForVisibleRows sortedArrayUsingDescriptors:v6];

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
      tableView2 = [(TVRUIDevicePickerViewController *)self tableView];
      v15 = [tableView2 cellForRowAtIndexPath:v13];

      device = [v15 device];
      supportsFindMyRemote = [device supportsFindMyRemote];

      if (supportsFindMyRemote)
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
    _lastVisibleCellSupportingFindMy = [(TVRUIDevicePickerViewController *)self _lastVisibleCellSupportingFindMy];
    findMyButton = [_lastVisibleCellSupportingFindMy findMyButton];
  }

  else
  {
    findMyButton = [(TVRUIDevicePickerViewController *)self deviceTitleView];
  }

  return findMyButton;
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
  showAnimator = [(TVRUIDevicePickerViewController *)self showAnimator];
  if ([showAnimator isRunning])
  {
    v4 = 0;
  }

  else
  {
    hideAnimator = [(TVRUIDevicePickerViewController *)self hideAnimator];
    isRunning = [hideAnimator isRunning];

    if (isRunning)
    {
      v4 = 0;
      goto LABEL_10;
    }

    if (![(TVRUIDevicePickerViewController *)self isDevicePickerShowing])
    {
      device = [(TVRUIDevicePickerViewController *)self device];
      supportsFindMyRemote = [device supportsFindMyRemote];

      if (supportsFindMyRemote)
      {
        v4 = 1;
        goto LABEL_10;
      }
    }

    showAnimator = [(TVRUIDevicePickerViewController *)self _lastVisibleCellSupportingFindMy];
    v4 = showAnimator != 0;
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
    _lastVisibleCellSupportingFindMy = [(TVRUIDevicePickerViewController *)self _lastVisibleCellSupportingFindMy];
    device = [_lastVisibleCellSupportingFindMy device];
    supportsSiri = [device supportsSiri];
  }

  else
  {
    _lastVisibleCellSupportingFindMy = [(TVRUIDevicePickerViewController *)self device];
    supportsSiri = [_lastVisibleCellSupportingFindMy supportsSiri];
  }

  return supportsSiri;
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