@interface PREditingFontAndColorPickerViewController
- (BOOL)_shouldShowWeightSliderForSelectedFont;
- (PREditingFontAndColorPickerViewController)initWithComponents:(unint64_t)components role:(id)role titleString:(id)string;
- (PREditingFontAndColorPickerViewControllerDelegate)delegate;
- (double)desiredDetent;
- (id)localeWithNumberingSystem:(id)system;
- (int64_t)adaptivePresentationStyleForPresentationController:(id)controller;
- (void)_closeButtonTapped:(id)tapped;
- (void)_signalDelegateDidFinish;
- (void)colorPickerComponentViewController:(id)controller didSelectColorItem:(id)item userSelected:(BOOL)selected;
- (void)colorPickerComponentViewControllerDidChangeHeight:(id)height;
- (void)colorWellDidUpdateColor:(id)color;
- (void)didPressTitleAlignmentBarButtonItem:(id)item;
- (void)fontPickerComponentViewController:(id)controller didChangeFontWeight:(double)weight;
- (void)fontPickerComponentViewController:(id)controller didSelectItem:(id)item;
- (void)fontPickerComponentViewControllerDidChangeHeight:(id)height;
- (void)loadComponentViewControllersIfNeeded;
- (void)loadView;
- (void)numberingSystemPickerController:(id)controller didSelectNumberingSystem:(id)system;
- (void)numberingSystemViewController:(id)controller didSelectNumberingSystem:(id)system;
- (void)numberingSystemWasChanged:(id)changed locale:(id)locale;
- (void)setContentsLuminance:(double)luminance;
- (void)titleLayoutPickerComponentViewController:(id)controller didSelectTitleLayout:(unint64_t)layout userSelected:(BOOL)selected;
- (void)traitCollectionDidChange:(id)change;
- (void)updatePopoverContentSize;
- (void)viewDidLayoutSubviews;
@end

@implementation PREditingFontAndColorPickerViewController

- (PREditingFontAndColorPickerViewController)initWithComponents:(unint64_t)components role:(id)role titleString:(id)string
{
  roleCopy = role;
  stringCopy = string;
  v16.receiver = self;
  v16.super_class = PREditingFontAndColorPickerViewController;
  v11 = [(PREditingFontAndColorPickerViewController *)&v16 initWithNibName:0 bundle:0];
  v12 = v11;
  if (v11)
  {
    v11->_components = components;
    v11->_contentsLuminance = 0.5;
    objc_storeStrong(&v11->_role, role);
    v13 = [stringCopy copy];
    titleString = v12->_titleString;
    v12->_titleString = v13;
  }

  return v12;
}

- (void)loadComponentViewControllersIfNeeded
{
  if (!self->_hasLoadedComponentViewControllers)
  {
    components = [(PREditingFontAndColorPickerViewController *)self components];
    extensionBundleURL = [(PREditingFontAndColorPickerViewController *)self extensionBundleURL];
    if (extensionBundleURL)
    {
      v5 = [(PRPosterTitleStyleConfiguration *)self->_titleStyleConfiguration effectiveTimeFontWithExtensionBundleURL:extensionBundleURL forRole:self->_role];
    }

    else
    {
      v5 = 0;
    }

    delegate = [(PREditingFontAndColorPickerViewController *)self delegate];
    v74 = components;
    v75 = v5;
    v76 = delegate;
    if (components)
    {
      v7 = [PREditingFontPickerComponentViewController defaultItemsForRole:self->_role titleString:self->_titleString];
      if (![(NSString *)self->_role isEqualToString:@"PRPosterRoleIncomingCall"]&& (objc_opt_respondsToSelector() & 1) != 0)
      {
        v8 = [delegate additionalFontConfigurationsForFontAndColorPickerViewController:self];
        if (v8)
        {
          [(PREditingFontAndColorPickerViewController *)self setAdditionalFontConfigurations:v8];
          v9 = [v8 bs_map:&__block_literal_global_14];
          v10 = [v7 arrayByAddingObjectsFromArray:v9];

          v7 = v10;
          delegate = v76;
        }
      }

      if (objc_opt_respondsToSelector())
      {
        v85[0] = MEMORY[0x1E69E9820];
        v85[1] = 3221225472;
        v85[2] = __81__PREditingFontAndColorPickerViewController_loadComponentViewControllersIfNeeded__block_invoke_2;
        v85[3] = &unk_1E78439B8;
        v86 = delegate;
        selfCopy = self;
        v11 = [v7 bs_filter:v85];

        v7 = v11;
      }

      timeFontConfiguration = [(PRPosterTitleStyleConfiguration *)self->_titleStyleConfiguration timeFontConfiguration];
      v73 = extensionBundleURL;
      v13 = [timeFontConfiguration timeFontConfigurationWithExtensionBundleURL:extensionBundleURL];
      customFont = [v13 customFont];

      v72 = timeFontConfiguration;
      if (customFont)
      {
        customFont2 = [v13 customFont];
        v83[0] = MEMORY[0x1E69E9820];
        v83[1] = 3221225472;
        v83[2] = __81__PREditingFontAndColorPickerViewController_loadComponentViewControllersIfNeeded__block_invoke_3;
        v83[3] = &unk_1E78439E0;
        v84 = customFont2;
        v16 = customFont2;
        v17 = [v7 bs_firstObjectPassingTest:v83];
      }

      else
      {
        v80[0] = MEMORY[0x1E69E9820];
        v80[1] = 3221225472;
        v80[2] = __81__PREditingFontAndColorPickerViewController_loadComponentViewControllersIfNeeded__block_invoke_4;
        v80[3] = &unk_1E78439B8;
        v18 = v13;
        v81 = v18;
        v19 = timeFontConfiguration;
        v82 = v19;
        v17 = [v7 bs_firstObjectPassingTest:v80];
        if (!v17)
        {
          v77[0] = MEMORY[0x1E69E9820];
          v77[1] = 3221225472;
          v77[2] = __81__PREditingFontAndColorPickerViewController_loadComponentViewControllersIfNeeded__block_invoke_5;
          v77[3] = &unk_1E78439B8;
          v78 = v18;
          v79 = v19;
          v17 = [v7 bs_firstObjectPassingTest:v77];
        }

        v16 = v81;
        delegate = v76;
      }

      v20 = [v7 count];
      v74 = v20 != 0;
      if (v20)
      {
        v21 = [[PREditingFontPickerComponentViewController alloc] initWithItems:v7 selectedItem:v17 role:self->_role titleString:self->_titleString];
        timeFontConfiguration2 = [(PRPosterTitleStyleConfiguration *)self->_titleStyleConfiguration timeFontConfiguration];
        extensionBundleURL2 = [(PREditingFontAndColorPickerViewController *)self extensionBundleURL];
        v24 = [timeFontConfiguration2 timeFontConfigurationWithExtensionBundleURL:extensionBundleURL2];

        v25 = [v24 effectiveFontForRole:self->_role ignoringWeight:1];
        pr_variantWeightRange = [v25 pr_variantWeightRange];
        v28 = v27;
        [v24 weight];
        [(PREditingFontPickerComponentViewController *)v21 setFontWeight:(v29 - pr_variantWeightRange) / (v28 - pr_variantWeightRange)];
        timeNumberingSystem = [(PRPosterTitleStyleConfiguration *)self->_titleStyleConfiguration timeNumberingSystem];
        if (timeNumberingSystem)
        {
          v31 = [(PREditingFontAndColorPickerViewController *)self localeWithNumberingSystem:timeNumberingSystem];
          [(PREditingFontPickerComponentViewController *)v21 setLocale:v31];
        }

        [(PREditingFontPickerComponentViewController *)v21 setDelegate:self, v13];
        [(PREditingFontAndColorPickerViewController *)self setFontPickerController:v21];

        delegate = v76;
        v13 = v71;
      }

      extensionBundleURL = v73;
      v5 = v75;
      if ((components & 0x10) == 0)
      {
LABEL_7:
        if ((components & 8) == 0)
        {
          goto LABEL_8;
        }

        goto LABEL_29;
      }
    }

    else if ((components & 0x10) == 0)
    {
      goto LABEL_7;
    }

    titleStyleConfiguration = self->_titleStyleConfiguration;
    titleString = [(PREditingFontAndColorPickerViewController *)self titleString];
    v34 = [(PRPosterTitleStyleConfiguration *)titleStyleConfiguration effectiveTitleLayoutForText:titleString];

    fontPickerController = [(PREditingFontAndColorPickerViewController *)self fontPickerController];
    selectedItem = [fontPickerController selectedItem];
    fontConfiguration = [selectedItem fontConfiguration];
    v38 = [fontConfiguration effectiveFontForRole:self->_role];

    titleString2 = [(PREditingFontAndColorPickerViewController *)self titleString];
    [PRIncomingCallFontsProvider idealEmphasizedFontSizeForName:titleString2 usingLayout:v34];
    v41 = v40;

    v42 = [v38 fontWithSize:v41];
    v43 = [PRTitleAlignmentBarButtonItem alloc];
    v44 = self->_titleStyleConfiguration;
    titleString3 = [(PREditingFontAndColorPickerViewController *)self titleString];
    v46 = [(PRTitleAlignmentBarButtonItem *)v43 initWithTitleAlignment:[(PRPosterTitleStyleConfiguration *)v44 effectiveTitleAlignmentForText:titleString3 withFont:v42] target:self action:sel_didPressTitleAlignmentBarButtonItem_];
    titleAlignmentBarItem = self->_titleAlignmentBarItem;
    self->_titleAlignmentBarItem = v46;

    v48 = self->_titleAlignmentBarItem;
    titleString4 = [(PREditingFontAndColorPickerViewController *)self titleString];
    delegate = v76;
    [(PRTitleAlignmentBarButtonItem *)v48 setEnabled:[PRIncomingCallMetricsProvider canApplyKashidaToText:titleString4 withFont:v42]];

    v5 = v75;
    if ((components & 8) == 0)
    {
LABEL_8:
      if ((components & 4) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_30;
    }

LABEL_29:
    v50 = [PREditingTitleLayoutPickerComponentViewController defaultTitleLayoutsForRole:self->_role];
    v51 = [PREditingTitleLayoutPickerComponentViewController alloc];
    v52 = self->_titleStyleConfiguration;
    titleString5 = [(PREditingFontAndColorPickerViewController *)self titleString];
    v54 = v52;
    delegate = v76;
    v55 = [(PREditingTitleLayoutPickerComponentViewController *)v51 initWithTitleLayouts:v50 selectedLayout:[(PRPosterTitleStyleConfiguration *)v54 effectiveTitleLayoutForText:titleString5]];

    [(PREditingTitleLayoutPickerComponentViewController *)v55 setDelegate:self];
    [(PREditingFontAndColorPickerViewController *)self setTitleLayoutPickerController:v55];

    if ((components & 4) == 0)
    {
LABEL_9:
      if ((components & 2) == 0)
      {
        goto LABEL_35;
      }

      goto LABEL_31;
    }

LABEL_30:
    v56 = [[PREditingColorPickerComponentViewController alloc] initWithConfiguration:self->_colorPickerConfiguration variationStore:self->_colorVariationStore];
    [(PREditingColorPickerComponentViewController *)v56 setDelegate:self];
    [(PREditingColorPickerComponentViewController *)v56 setContentsLuminance:self->_contentsLuminance];
    [(PREditingFontAndColorPickerViewController *)self setColorPickerController:v56];

    if ((components & 2) == 0)
    {
LABEL_35:
      self->_hasLoadedComponentViewControllers = 1;

      return;
    }

LABEL_31:
    if ((components >> 2) & 1 | v74)
    {
      v57 = [PREditorNumberingSystemPickerController alloc];
      effectiveTimeNumberingSystem = [(PRPosterTitleStyleConfiguration *)self->_titleStyleConfiguration effectiveTimeNumberingSystem];
      v59 = [(PREditorNumberingSystemPickerController *)v57 initWithSelectedNumberingSystem:effectiveTimeNumberingSystem selectedFont:v5];

      [(PREditorNumberingSystemPickerController *)v59 setDelegate:self];
      numberingSystemController = self->_numberingSystemController;
      self->_numberingSystemController = v59;
      v61 = v59;

      v62 = MEMORY[0x1E69DCAB8];
      v63 = [MEMORY[0x1E69DCAD8] configurationWithScale:3];
      v64 = [v62 systemImageNamed:@"globe" withConfiguration:v63];

      v65 = objc_alloc(MEMORY[0x1E69DC708]);
      menu = [(PREditorNumberingSystemPickerController *)v61 menu];
      v67 = [v65 initWithImage:v64 menu:menu];

      numberSystemBarItem = self->_numberSystemBarItem;
      self->_numberSystemBarItem = v67;
    }

    else
    {
      v69 = [PREditorNumberingSystemViewController alloc];
      effectiveTimeNumberingSystem2 = [(PRPosterTitleStyleConfiguration *)self->_titleStyleConfiguration effectiveTimeNumberingSystem];
      v64 = [(PREditorNumberingSystemViewController *)v69 initWithSelectedNumberingSystem:effectiveTimeNumberingSystem2 selectedFont:v5];

      [(PREditorNumberingSystemViewController *)v64 setDelegate:self];
      [(PREditingFontAndColorPickerViewController *)self setNumberingSystemViewController:v64];
    }

    delegate = v76;
    goto LABEL_35;
  }
}

PREditingFontPickerItem *__81__PREditingFontAndColorPickerViewController_loadComponentViewControllersIfNeeded__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[PREditingFontPickerItem alloc] initWithFontConfiguration:v2 systemItem:0];

  return v3;
}

uint64_t __81__PREditingFontAndColorPickerViewController_loadComponentViewControllersIfNeeded__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isSystemItem])
  {
    v5 = *(a1 + 32);
    v4 = *(a1 + 40);
    v6 = [v3 fontConfiguration];
    v7 = [v5 fontAndColorPickerViewController:v4 shouldShowFontConfiguration:v6];
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

uint64_t __81__PREditingFontAndColorPickerViewController_loadComponentViewControllersIfNeeded__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 fontConfiguration];
  v4 = [v3 customFont];

  v5 = [v4 fontName];
  v6 = [*(a1 + 32) fontName];
  v7 = BSEqualObjects();

  return v7;
}

uint64_t __81__PREditingFontAndColorPickerViewController_loadComponentViewControllersIfNeeded__block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 fontConfiguration];
  v5 = BSEqualObjects();

  [v3 isSystemItem];
  [*(a1 + 40) isSystemItem];
  return v5 & BSFloatEqualToFloat();
}

uint64_t __81__PREditingFontAndColorPickerViewController_loadComponentViewControllersIfNeeded__block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 fontConfiguration];
  v5 = [v4 timeFontIdentifier];
  v6 = [*(a1 + 32) timeFontIdentifier];
  v7 = BSEqualObjects();

  [v3 isSystemItem];
  [*(a1 + 40) isSystemItem];
  return v7 & BSFloatEqualToFloat();
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = PREditingFontAndColorPickerViewController;
  [(PREditingFontAndColorPickerViewController *)&v3 viewDidLayoutSubviews];
  [(PREditingFontAndColorPickerViewController *)self updatePopoverContentSize];
}

- (void)loadView
{
  v87 = *MEMORY[0x1E69E9840];
  [(PREditingFontAndColorPickerViewController *)self loadComponentViewControllersIfNeeded];
  navigationController = [(PREditingFontAndColorPickerViewController *)self navigationController];
  navigationBar = [navigationController navigationBar];
  topItem = [navigationBar topItem];

  [topItem _setManualScrollEdgeAppearanceProgress:0.0];
  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  components = [(PREditingFontAndColorPickerViewController *)self components];
  if ((self->_components & 8) != 0 && self->_titleLayoutPickerController)
  {
    [v6 addObject:?];
  }

  if ((components & 1) != 0 && self->_fontPickerController)
  {
    [v6 addObject:?];
  }

  if ((self->_components & 0x10) == 0)
  {
    if ((components & 2) == 0)
    {
      goto LABEL_9;
    }

LABEL_31:
    if (self->_numberingSystemViewController)
    {
      [v6 addObject:?];
      if ((components & 4) == 0)
      {
        goto LABEL_11;
      }
    }

    else
    {
      [topItem setLeftBarButtonItem:self->_numberSystemBarItem];
      if ((components & 4) == 0)
      {
        goto LABEL_11;
      }
    }

    goto LABEL_10;
  }

  [topItem setLeftBarButtonItem:self->_titleAlignmentBarItem];
  if ((components & 2) != 0)
  {
    goto LABEL_31;
  }

LABEL_9:
  if ((components & 4) != 0)
  {
LABEL_10:
    [v6 addObject:self->_colorPickerController];
  }

LABEL_11:
  if ([(PREditorColorPickerConfiguration *)self->_colorPickerConfiguration colorWellDisplayMode]== 2 && !self->_numberSystemBarItem)
  {
    v8 = objc_alloc(MEMORY[0x1E69C5548]);
    v9 = [v8 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    colorWell = [v9 colorWell];
    [colorWell addTarget:self action:sel_colorWellDidUpdateColor_ forControlEvents:4096];
    [colorWell setTranslatesAutoresizingMaskIntoConstraints:0];
    v11 = [objc_alloc(MEMORY[0x1E69DC708]) initWithCustomView:v9];
    [v11 setHidesSharedBackground:1];
    [topItem setLeftBarButtonItem:v11];
    colorWell = self->_colorWell;
    self->_colorWell = colorWell;
    v13 = colorWell;

    colorWellView = self->_colorWellView;
    self->_colorWellView = v9;
  }

  v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v78 = 0u;
  v79 = 0u;
  v80 = 0u;
  v81 = 0u;
  v16 = v6;
  v17 = [v16 countByEnumeratingWithState:&v78 objects:v86 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v79;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v79 != v19)
        {
          objc_enumerationMutation(v16);
        }

        view = [*(*(&v78 + 1) + 8 * i) view];
        [view setTranslatesAutoresizingMaskIntoConstraints:0];
        [v15 addObject:view];
      }

      v18 = [v16 countByEnumeratingWithState:&v78 objects:v86 count:16];
    }

    while (v18);
  }

  v57 = v15;
  v22 = [objc_alloc(MEMORY[0x1E69DCF90]) initWithArrangedSubviews:v15];
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  v23 = v16;
  v24 = [v23 countByEnumeratingWithState:&v74 objects:v85 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v75;
    do
    {
      for (j = 0; j != v25; ++j)
      {
        if (*v75 != v26)
        {
          objc_enumerationMutation(v23);
        }

        v28 = *(*(&v74 + 1) + 8 * j);
        [(PREditingFontAndColorPickerViewController *)self addChildViewController:v28];
        [v28 didMoveToParentViewController:self];
      }

      v25 = [v23 countByEnumeratingWithState:&v74 objects:v85 count:16];
    }

    while (v25);
  }

  v56 = topItem;
  v54 = v23;

  [v22 setAxis:1];
  [v22 setSpacing:48.0];
  [v22 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(PREditingFontAndColorPickerViewController *)self setRootStackView:v22];
  v29 = objc_alloc_init(MEMORY[0x1E69DD250]);
  [v29 addSubview:v22];
  [(PREditingFontAndColorPickerViewController *)self setView:v29];
  v62 = MEMORY[0x1E696ACD8];
  leadingAnchor = [v22 leadingAnchor];
  safeAreaLayoutGuide = [v29 safeAreaLayoutGuide];
  leadingAnchor2 = [safeAreaLayoutGuide leadingAnchor];
  v30 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v84[0] = v30;
  trailingAnchor = [v22 trailingAnchor];
  safeAreaLayoutGuide2 = [v29 safeAreaLayoutGuide];
  trailingAnchor2 = [safeAreaLayoutGuide2 trailingAnchor];
  v34 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v84[1] = v34;
  v55 = v22;
  topAnchor = [v22 topAnchor];
  v53 = v29;
  safeAreaLayoutGuide3 = [v29 safeAreaLayoutGuide];
  topAnchor2 = [safeAreaLayoutGuide3 topAnchor];
  v38 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:7.0];
  v84[2] = v38;
  v39 = [MEMORY[0x1E695DEC8] arrayWithObjects:v84 count:3];
  [v62 activateConstraints:v39];

  if ([v57 count] < 2)
  {
    v40 = 0;
  }

  else
  {
    v40 = [v57 subarrayWithRange:{1, objc_msgSend(v57, "count") - 1}];
  }

  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  obj = v40;
  v60 = [obj countByEnumeratingWithState:&v70 objects:v83 count:16];
  if (v60)
  {
    v59 = *v71;
    do
    {
      for (k = 0; k != v60; ++k)
      {
        if (*v71 != v59)
        {
          objc_enumerationMutation(obj);
        }

        v42 = *(*(&v70 + 1) + 8 * k);
        v43 = objc_alloc_init(MEMORY[0x1E69DD250]);
        separatorColor = [MEMORY[0x1E69DC888] separatorColor];
        [v43 setBackgroundColor:separatorColor];

        [v43 setTranslatesAutoresizingMaskIntoConstraints:0];
        [v42 addSubview:v43];
        v61 = MEMORY[0x1E696ACD8];
        heightAnchor = [v43 heightAnchor];
        v67 = [heightAnchor constraintEqualToConstant:1.0];
        v82[0] = v67;
        leadingAnchor3 = [v43 leadingAnchor];
        leadingAnchor4 = [v42 leadingAnchor];
        v45 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
        v82[1] = v45;
        trailingAnchor3 = [v43 trailingAnchor];
        trailingAnchor4 = [v42 trailingAnchor];
        v48 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
        v82[2] = v48;
        bottomAnchor = [v43 bottomAnchor];
        topAnchor3 = [v42 topAnchor];
        v51 = [bottomAnchor constraintEqualToAnchor:topAnchor3 constant:-24.0];
        v82[3] = v51;
        v52 = [MEMORY[0x1E695DEC8] arrayWithObjects:v82 count:4];
        [v61 activateConstraints:v52];
      }

      v60 = [obj countByEnumeratingWithState:&v70 objects:v83 count:16];
    }

    while (v60);
  }
}

- (void)traitCollectionDidChange:(id)change
{
  v10.receiver = self;
  v10.super_class = PREditingFontAndColorPickerViewController;
  changeCopy = change;
  [(PREditingFontAndColorPickerViewController *)&v10 traitCollectionDidChange:changeCopy];
  userInterfaceStyle = [changeCopy userInterfaceStyle];

  traitCollection = [(PREditingFontAndColorPickerViewController *)self traitCollection];
  userInterfaceStyle2 = [traitCollection userInterfaceStyle];

  if (userInterfaceStyle != userInterfaceStyle2)
  {
    numberSystemBarItem = self->_numberSystemBarItem;
    menu = [(PREditorNumberingSystemPickerController *)self->_numberingSystemController menu];
    [(UIBarButtonItem *)numberSystemBarItem setMenu:menu];
  }
}

- (double)desiredDetent
{
  [(PREditingFontAndColorPickerViewController *)self loadComponentViewControllersIfNeeded];
  components = self->_components;
  v4 = (components & 1) != 0 && self->_fontPickerController != 0;
  v5 = (components & 8) != 0 && self->_titleLayoutPickerController != 0;
  v6 = (components & 4) != 0 && self->_colorPickerController != 0;
  v7 = 0.0;
  if ((components & 2) != 0 && (numberingSystemViewController = self->_numberingSystemViewController) != 0)
  {
    [(PREditorNumberingSystemViewController *)numberingSystemViewController estimatedHeight];
    v7 = v9 + 0.0;
    v10 = 1;
    if (!v4)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v10 = 0;
    if (!v4)
    {
      goto LABEL_18;
    }
  }

  [(PREditingFontPickerComponentViewController *)self->_fontPickerController estimatedHeight];
  v12 = v7 + v11;
  ++v10;
  if (v6)
  {
    v7 = v12 + 48.0;
  }

  else
  {
    v7 = v12;
  }

LABEL_18:
  if (v5)
  {
    [(PREditingTitleLayoutPickerComponentViewController *)self->_titleLayoutPickerController estimatedHeight];
    v7 = v7 + v15;
    v10 = 1;
    if (v6)
    {
      goto LABEL_20;
    }
  }

  else if (v6)
  {
LABEL_20:
    [(PREditingColorPickerComponentViewController *)self->_colorPickerController estimatedHeight];
    return v7 + v13 + 84.0;
  }

  result = v7 + 84.0;
  if (!v10)
  {
    return 100.0;
  }

  return result;
}

- (BOOL)_shouldShowWeightSliderForSelectedFont
{
  if (_os_feature_enabled_impl())
  {
    timeFontConfiguration = [(PRPosterTitleStyleConfiguration *)self->_titleStyleConfiguration timeFontConfiguration];
    extensionBundleURL = [(PREditingFontAndColorPickerViewController *)self extensionBundleURL];
    v5 = [timeFontConfiguration timeFontConfigurationWithExtensionBundleURL:extensionBundleURL];

    if ([timeFontConfiguration isSystemItem])
    {
      timeFontIdentifier = [v5 timeFontIdentifier];
      v7 = [timeFontIdentifier isEqual:@"PRTimeFontIdentifierRail"] ^ 1;
    }

    else
    {
      LOBYTE(v7) = 0;
    }
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

- (void)setContentsLuminance:(double)luminance
{
  self->_contentsLuminance = luminance;
  if ([(PREditingFontAndColorPickerViewController *)self isViewLoaded])
  {
    colorPickerController = self->_colorPickerController;

    [(PREditingColorPickerComponentViewController *)colorPickerController setContentsLuminance:luminance];
  }
}

- (void)_closeButtonTapped:(id)tapped
{
  [(PREditingFontAndColorPickerViewController *)self _signalDelegateDidFinish];

  [(PREditingFontAndColorPickerViewController *)self dismissViewControllerAnimated:1 completion:0];
}

- (void)_signalDelegateDidFinish
{
  delegate = [(PREditingFontAndColorPickerViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate fontAndColorPickerViewControllerDidFinish:self];
  }
}

- (id)localeWithNumberingSystem:(id)system
{
  v3 = MEMORY[0x1E695DF58];
  systemCopy = system;
  currentLocale = [v3 currentLocale];
  localeIdentifier = [currentLocale localeIdentifier];

  v7 = [MEMORY[0x1E695DF58] componentsFromLocaleIdentifier:localeIdentifier];
  v8 = [v7 mutableCopy];

  [v8 setObject:systemCopy forKey:@"numbers"];
  v9 = [MEMORY[0x1E695DF58] localeIdentifierFromComponents:v8];
  v10 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:v9];

  return v10;
}

- (void)fontPickerComponentViewControllerDidChangeHeight:(id)height
{
  delegate = [(PREditingFontAndColorPickerViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [(PREditingFontAndColorPickerViewController *)self desiredDetent];
    [delegate fontAndColorPickerViewController:self didUpdateDesiredDetent:?];
  }
}

- (void)fontPickerComponentViewController:(id)controller didChangeFontWeight:(double)weight
{
  timeFontConfiguration = [(PRPosterTitleStyleConfiguration *)self->_titleStyleConfiguration timeFontConfiguration];
  extensionBundleURL = [(PREditingFontAndColorPickerViewController *)self extensionBundleURL];
  v14 = [timeFontConfiguration timeFontConfigurationWithExtensionBundleURL:extensionBundleURL];

  v8 = [v14 effectiveFontForRole:self->_role ignoringWeight:1];
  pr_variantWeightRange = [v8 pr_variantWeightRange];
  v11 = v10;
  changeHandler = [(PREditingFontAndColorPickerViewController *)self changeHandler];
  if (changeHandler)
  {
    v13 = [MEMORY[0x1E696AD98] numberWithDouble:v11 * weight + (1.0 - weight) * pr_variantWeightRange];
    (changeHandler)[2](changeHandler, 0, 0, 0, v13, 0, 0, 0, 0);
  }
}

- (void)fontPickerComponentViewController:(id)controller didSelectItem:(id)item
{
  controllerCopy = controller;
  itemCopy = item;
  fontConfiguration = [itemCopy fontConfiguration];
  v8 = [fontConfiguration effectiveFontForRole:self->_role];

  [(PREditorNumberingSystemPickerController *)self->_numberingSystemController setFont:v8];
  menu = [(PREditorNumberingSystemPickerController *)self->_numberingSystemController menu];
  [(UIBarButtonItem *)self->_numberSystemBarItem setMenu:menu];
  fontConfiguration2 = [itemCopy fontConfiguration];
  v11 = [fontConfiguration2 effectiveFontForRole:self->_role ignoringWeight:1];

  changeHandler = [(PREditingFontAndColorPickerViewController *)self changeHandler];
  if (changeHandler)
  {
    additionalFontConfigurations = [(PREditingFontAndColorPickerViewController *)self additionalFontConfigurations];
    fontConfiguration3 = [itemCopy fontConfiguration];
    v15 = [additionalFontConfigurations containsObject:fontConfiguration3];

    fontConfiguration4 = [itemCopy fontConfiguration];
    timeFontIdentifier = [fontConfiguration4 timeFontIdentifier];

    if ((v15 & 1) != 0 || timeFontIdentifier == @"PRTimeFontIdentifierRail")
    {
      fontConfiguration5 = [itemCopy fontConfiguration];
      [fontConfiguration5 weight];
      v22 = v24;
    }

    else
    {
      pr_variantWeightRange = [v11 pr_variantWeightRange];
      v20 = v19;
      [controllerCopy fontWeight];
      v22 = v21 * v20 + (1.0 - v21) * pr_variantWeightRange;
    }

    if (v15)
    {
      v25 = v8;
    }

    else
    {
      v25 = 0;
    }

    v26 = MEMORY[0x1E696AD98];
    v27 = v25;
    v28 = [v26 numberWithDouble:v22];
    v29 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(itemCopy, "isSystemItem")}];
    (changeHandler)[2](changeHandler, timeFontIdentifier, 0, 0, v28, v29, v27, 0, 0);
  }
}

- (void)titleLayoutPickerComponentViewController:(id)controller didSelectTitleLayout:(unint64_t)layout userSelected:(BOOL)selected
{
  layoutCopy = layout;
  v7 = [PRIncomingCallMetricsProvider maxVerticalTextLength:controller];
  if (PRPosterTitleLayoutIsVertical(layoutCopy))
  {
    titleString = [(PREditingFontAndColorPickerViewController *)self titleString];
    v9 = [titleString length];

    if (v9 > v7)
    {
      v10 = MEMORY[0x1E696AEC0];
      v11 = PRBundle();
      v12 = [v11 localizedStringForKey:@"CANNOT_CHANGE_LAYOUT_EXPLANATION" value:&stru_1F1C13D90 table:@"PosterKit"];
      v13 = [v10 stringWithFormat:v12, v7];

      v14 = MEMORY[0x1E69DC650];
      v15 = PRBundle();
      v16 = [v15 localizedStringForKey:@"CANNOT_CHANGE_LAYOUT" value:&stru_1F1C13D90 table:@"PosterKit"];
      v17 = [v14 alertControllerWithTitle:v16 message:v13 preferredStyle:1];

      v18 = MEMORY[0x1E69DC648];
      v19 = PRBundle();
      v20 = [v19 localizedStringForKey:@"CANNOT_CHANGE_LAYOUT_DISMISS_ACTION" value:&stru_1F1C13D90 table:@"PosterKit"];
      v21 = [v18 actionWithTitle:v20 style:0 handler:0];

      [v17 addAction:v21];
      [(PREditingFontAndColorPickerViewController *)self presentViewController:v17 animated:1 completion:0];

      layoutCopy = 0;
    }
  }

  titleLayoutPickerController = [(PREditingFontAndColorPickerViewController *)self titleLayoutPickerController];

  if (titleLayoutPickerController)
  {
    titleLayoutPickerController2 = [(PREditingFontAndColorPickerViewController *)self titleLayoutPickerController];
    [titleLayoutPickerController2 setSelectedTitleLayout:layoutCopy];
  }

  changeHandler = [(PREditingFontAndColorPickerViewController *)self changeHandler];
  if (changeHandler)
  {
    v26 = changeHandler;
    v25 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:layoutCopy];
    (*(v26 + 2))(v26, 0, 0, v25, 0, 0, 0, 0, 0);

    changeHandler = v26;
  }
}

- (void)numberingSystemPickerController:(id)controller didSelectNumberingSystem:(id)system
{
  systemCopy = system;
  displayLocale = [controller displayLocale];
  [(PREditingFontAndColorPickerViewController *)self numberingSystemWasChanged:systemCopy locale:displayLocale];
}

- (void)numberingSystemViewController:(id)controller didSelectNumberingSystem:(id)system
{
  systemCopy = system;
  displayLocale = [controller displayLocale];
  [(PREditingFontAndColorPickerViewController *)self numberingSystemWasChanged:systemCopy locale:displayLocale];
}

- (void)numberingSystemWasChanged:(id)changed locale:(id)locale
{
  changedCopy = changed;
  localeCopy = locale;
  fontPickerController = [(PREditingFontAndColorPickerViewController *)self fontPickerController];
  v8 = fontPickerController;
  if (fontPickerController)
  {
    [fontPickerController setLocale:localeCopy];
  }

  numberingSystemController = self->_numberingSystemController;
  if (numberingSystemController)
  {
    menu = [(PREditorNumberingSystemPickerController *)numberingSystemController menu];
    [(UIBarButtonItem *)self->_numberSystemBarItem setMenu:menu];
  }

  changeHandler = [(PREditingFontAndColorPickerViewController *)self changeHandler];
  v12 = changeHandler;
  if (changeHandler)
  {
    (*(changeHandler + 16))(changeHandler, 0, 0, 0, 0, 0, 0, changedCopy, 0);
  }
}

- (void)didPressTitleAlignmentBarButtonItem:(id)item
{
  toggle = [(PRTitleAlignmentBarButtonItem *)self->_titleAlignmentBarItem toggle];
  changeHandler = [(PREditingFontAndColorPickerViewController *)self changeHandler];
  if (changeHandler)
  {
    v7 = changeHandler;
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:toggle];
    (*(v7 + 2))(v7, 0, v6, 0, 0, 0, 0, 0, 0);

    changeHandler = v7;
  }
}

- (void)updatePopoverContentSize
{
  navigationController = [(PREditingFontAndColorPickerViewController *)self navigationController];
  navigationBar = [navigationController navigationBar];
  [navigationBar frame];
  v5 = v4;

  rootStackView = [(PREditingFontAndColorPickerViewController *)self rootStackView];
  [rootStackView bounds];
  [navigationController setPreferredContentSize:{370.0, v5 + v7 + -15.0}];
}

- (void)colorPickerComponentViewController:(id)controller didSelectColorItem:(id)item userSelected:(BOOL)selected
{
  selectedCopy = selected;
  itemCopy = item;
  if ([itemCopy isFromUIKitColorPicker])
  {
    colorWell = self->_colorWell;
    if (colorWell)
    {
      color = [itemCopy color];
      v8Color = [color color];
      [(PUIColorWell *)colorWell setSelectedColor:v8Color];
    }
  }

  if (selectedCopy)
  {
    changeHandler = [(PREditingFontAndColorPickerViewController *)self changeHandler];
    v11 = changeHandler;
    if (changeHandler)
    {
      (*(changeHandler + 16))(changeHandler, 0, 0, 0, 0, 0, 0, 0, itemCopy);
    }
  }
}

- (void)colorPickerComponentViewControllerDidChangeHeight:(id)height
{
  delegate = [(PREditingFontAndColorPickerViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [(PREditingFontAndColorPickerViewController *)self desiredDetent];
    [delegate fontAndColorPickerViewController:self didUpdateDesiredDetent:?];
  }
}

- (void)colorWellDidUpdateColor:(id)color
{
  colorCopy = color;
  colorWell = [(PREditingFontAndColorPickerViewController *)self colorWell];
  [colorWell invalidateIntrinsicContentSize];

  colorWellView = [(PREditingFontAndColorPickerViewController *)self colorWellView];
  [colorWellView setNeedsLayout];

  selectedColor = [colorCopy selectedColor];

  v7 = [[PRPosterColor alloc] initWithColor:selectedColor];
  v8 = [[PREditorColorPickerConstantColor alloc] initWithColor:v7 initialVariation:0.0];
  v9 = [[PREditingColorItem alloc] initWithPickerColor:v8 variation:[(PREditorColorPickerConfiguration *)self->_colorPickerConfiguration context] context:0.0];
  [(PREditingColorItem *)v9 setFromUIKitColorPicker:1];
  [(PREditingColorPickerComponentViewController *)self->_colorPickerController updateForColorWellSelectedItem:v9];
  changeHandler = [(PREditingFontAndColorPickerViewController *)self changeHandler];
  v11 = changeHandler;
  if (changeHandler)
  {
    (*(changeHandler + 16))(changeHandler, 0, 0, 0, 0, 0, 0, 0, v9);
  }
}

- (int64_t)adaptivePresentationStyleForPresentationController:(id)controller
{
  controllerCopy = controller;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    return -1;
  }

  else
  {
    return -2;
  }
}

- (PREditingFontAndColorPickerViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end