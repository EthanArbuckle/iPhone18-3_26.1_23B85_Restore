@interface PREditingFontAndContentStylePickerViewController
- (BOOL)_shouldShowWeightSliderForSelectedFont;
- (PREditingFontAndContentStylePickerViewController)initWithComponents:(unint64_t)components role:(id)role titleString:(id)string;
- (PREditingFontAndContentStylePickerViewControllerDelegate)delegate;
- (double)desiredDetent;
- (id)contentStylePickerComponentViewController:(id)controller coordinatorForStyle:(id)style isSuggested:(BOOL)suggested;
- (id)localeWithNumberingSystem:(id)system;
- (int64_t)adaptivePresentationStyleForPresentationController:(id)controller;
- (void)_closeButtonTapped:(id)tapped;
- (void)_signalDelegateDidFinish;
- (void)contentStylePickerComponentViewController:(id)controller didSelectStyle:(id)style isSuggestedStyle:(BOOL)suggestedStyle userSelected:(BOOL)selected;
- (void)contentStylePickerComponentViewControllerDidChangeHeight:(id)height;
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
- (void)viewDidLayoutSubviews;
@end

@implementation PREditingFontAndContentStylePickerViewController

- (PREditingFontAndContentStylePickerViewController)initWithComponents:(unint64_t)components role:(id)role titleString:(id)string
{
  roleCopy = role;
  stringCopy = string;
  v17.receiver = self;
  v17.super_class = PREditingFontAndContentStylePickerViewController;
  v10 = [(PREditingFontAndContentStylePickerViewController *)&v17 initWithNibName:0 bundle:0];
  v11 = v10;
  if (v10)
  {
    v10->_components = components;
    v10->_contentsLuminance = 0.5;
    v12 = [roleCopy copy];
    role = v11->_role;
    v11->_role = v12;

    v14 = [stringCopy copy];
    titleString = v11->_titleString;
    v11->_titleString = v14;
  }

  return v11;
}

- (void)loadComponentViewControllersIfNeeded
{
  if (!self->_hasLoadedComponentViewControllers)
  {
    components = [(PREditingFontAndContentStylePickerViewController *)self components];
    extensionBundleURL = [(PREditingFontAndContentStylePickerViewController *)self extensionBundleURL];
    v5 = &OBJC_IVAR___PREditorFixedTitleTransition__sourceTitleViewController;
    if (extensionBundleURL)
    {
      v6 = [(PRPosterTitleStyleConfiguration *)self->_titleStyleConfiguration effectiveTimeFontWithExtensionBundleURL:extensionBundleURL forRole:self->_role];
    }

    else
    {
      v6 = 0;
    }

    delegate = [(PREditingFontAndContentStylePickerViewController *)self delegate];
    LOBYTE(v8) = components;
    if (components)
    {
      v62 = v6;
      v9 = [PREditingFontPickerComponentViewController defaultItemsForRole:self->_role titleString:self->_titleString];
      if (![(NSString *)self->_role isEqualToString:@"PRPosterRoleIncomingCall"]&& (objc_opt_respondsToSelector() & 1) != 0)
      {
        v10 = [delegate additionalFontConfigurationsForFontAndContentStylePickerViewController:self];
        if (v10)
        {
          [(PREditingFontAndContentStylePickerViewController *)self setAdditionalFontConfigurations:v10];
          v11 = [v10 bs_map:&__block_literal_global_28];
          [v9 arrayByAddingObjectsFromArray:v11];
          v13 = v12 = delegate;

          v9 = v13;
          delegate = v12;
        }
      }

      if (objc_opt_respondsToSelector())
      {
        v72[0] = MEMORY[0x1E69E9820];
        v72[1] = 3221225472;
        v72[2] = __88__PREditingFontAndContentStylePickerViewController_loadComponentViewControllersIfNeeded__block_invoke_2;
        v72[3] = &unk_1E78439B8;
        v73 = delegate;
        selfCopy = self;
        v14 = [v9 bs_filter:v72];

        v9 = v14;
      }

      timeFontConfiguration = [(PRPosterTitleStyleConfiguration *)self->_titleStyleConfiguration timeFontConfiguration];
      v63 = extensionBundleURL;
      v16 = [timeFontConfiguration timeFontConfigurationWithExtensionBundleURL:extensionBundleURL];
      customFont = [v16 customFont];

      v60 = v16;
      v61 = timeFontConfiguration;
      if (customFont)
      {
        customFont2 = [v16 customFont];
        v70[0] = MEMORY[0x1E69E9820];
        v70[1] = 3221225472;
        v70[2] = __88__PREditingFontAndContentStylePickerViewController_loadComponentViewControllersIfNeeded__block_invoke_3;
        v70[3] = &unk_1E78439E0;
        v71 = customFont2;
        v19 = customFont2;
        v20 = [v9 bs_firstObjectPassingTest:v70];
      }

      else
      {
        v58 = delegate;
        v67[0] = MEMORY[0x1E69E9820];
        v67[1] = 3221225472;
        v67[2] = __88__PREditingFontAndContentStylePickerViewController_loadComponentViewControllersIfNeeded__block_invoke_4;
        v67[3] = &unk_1E78439B8;
        v21 = v16;
        v68 = v21;
        v22 = timeFontConfiguration;
        v69 = v22;
        v20 = [v9 bs_firstObjectPassingTest:v67];
        if (!v20)
        {
          v64[0] = MEMORY[0x1E69E9820];
          v64[1] = 3221225472;
          v64[2] = __88__PREditingFontAndContentStylePickerViewController_loadComponentViewControllersIfNeeded__block_invoke_5;
          v64[3] = &unk_1E78439B8;
          v65 = v21;
          v66 = v22;
          v20 = [v9 bs_firstObjectPassingTest:v64];
        }

        v19 = v68;
        delegate = v58;
      }

      v23 = [v9 count] > 1;
      v8 = v23 | [(PREditingFontAndContentStylePickerViewController *)self _shouldShowWeightSliderForSelectedFont];
      if (v8)
      {
        v59 = delegate;
        v24 = [[PREditingFontPickerComponentViewController alloc] initWithItems:v9 selectedItem:v20 role:self->_role titleString:self->_titleString];
        timeFontConfiguration2 = [(PRPosterTitleStyleConfiguration *)self->_titleStyleConfiguration timeFontConfiguration];
        extensionBundleURL2 = [(PREditingFontAndContentStylePickerViewController *)self extensionBundleURL];
        v27 = [timeFontConfiguration2 timeFontConfigurationWithExtensionBundleURL:extensionBundleURL2];

        v28 = [v27 effectiveFontForRole:self->_role ignoringWeight:1];
        pr_variantWeightRange = [v28 pr_variantWeightRange];
        v31 = v30;
        [v27 weight];
        [(PREditingFontPickerComponentViewController *)v24 setFontWeight:(v32 - pr_variantWeightRange) / (v31 - pr_variantWeightRange)];
        timeNumberingSystem = [(PRPosterTitleStyleConfiguration *)self->_titleStyleConfiguration timeNumberingSystem];
        if (timeNumberingSystem)
        {
          v34 = [(PREditingFontAndContentStylePickerViewController *)self localeWithNumberingSystem:timeNumberingSystem];
          [(PREditingFontPickerComponentViewController *)v24 setLocale:v34];
        }

        [(PREditingFontPickerComponentViewController *)v24 setDelegate:self];
        [(PREditingFontAndContentStylePickerViewController *)self setFontPickerController:v24];

        delegate = v59;
      }

      extensionBundleURL = v63;
      v6 = v62;
      v5 = &OBJC_IVAR___PREditorFixedTitleTransition__sourceTitleViewController;
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

    v35 = [PRTitleAlignmentBarButtonItem alloc];
    preferredTitleAlignment = [(PRPosterTitleStyleConfiguration *)self->_titleStyleConfiguration preferredTitleAlignment];
    v37 = v35;
    v5 = &OBJC_IVAR___PREditorFixedTitleTransition__sourceTitleViewController;
    v38 = [(PRTitleAlignmentBarButtonItem *)v37 initWithTitleAlignment:preferredTitleAlignment target:self action:sel_didPressTitleAlignmentBarButtonItem_];
    titleAlignmentBarItem = self->_titleAlignmentBarItem;
    self->_titleAlignmentBarItem = v38;

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
    v40 = [PREditingTitleLayoutPickerComponentViewController defaultTitleLayoutsForRole:*(&self->super.super.super.isa + v5[268])];
    v41 = [[PREditingTitleLayoutPickerComponentViewController alloc] initWithTitleLayouts:v40 selectedLayout:[(PRPosterTitleStyleConfiguration *)self->_titleStyleConfiguration preferredTitleLayout]];
    [(PREditingTitleLayoutPickerComponentViewController *)v41 setDelegate:self];
    [(PREditingFontAndContentStylePickerViewController *)self setTitleLayoutPickerController:v41];

    v5 = &OBJC_IVAR___PREditorFixedTitleTransition__sourceTitleViewController;
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
    v42 = [[PREditingContentStylePickerComponentViewController alloc] initWithConfiguration:self->_contentStylePickerConfiguration role:*(&self->super.super.super.isa + v5[268])];
    [(PREditingContentStylePickerComponentViewController *)v42 setDelegate:self];
    [(PREditingContentStylePickerComponentViewController *)v42 setContentsLuminance:self->_contentsLuminance];
    [(PREditingFontAndContentStylePickerViewController *)self setContentStylePickerController:v42];

    if ((components & 2) == 0)
    {
LABEL_35:
      self->_hasLoadedComponentViewControllers = 1;

      return;
    }

LABEL_31:
    v43 = delegate;
    if ((components >> 2) & 1 | v8 & 1)
    {
      v44 = [PREditorNumberingSystemPickerController alloc];
      effectiveTimeNumberingSystem = [(PRPosterTitleStyleConfiguration *)self->_titleStyleConfiguration effectiveTimeNumberingSystem];
      v46 = [(PREditorNumberingSystemPickerController *)v44 initWithSelectedNumberingSystem:effectiveTimeNumberingSystem selectedFont:v6];

      [(PREditorNumberingSystemPickerController *)v46 setDelegate:self];
      numberingSystemController = self->_numberingSystemController;
      self->_numberingSystemController = v46;
      v48 = v46;

      v49 = MEMORY[0x1E69DCAB8];
      v50 = [MEMORY[0x1E69DCAD8] configurationWithScale:3];
      v51 = [v49 systemImageNamed:@"globe" withConfiguration:v50];

      v52 = objc_alloc(MEMORY[0x1E69DC708]);
      menu = [(PREditorNumberingSystemPickerController *)v48 menu];
      v54 = [v52 initWithImage:v51 menu:menu];

      [(UIBarButtonItem *)v54 setHidesSharedBackground:1];
      numberSystemBarItem = self->_numberSystemBarItem;
      self->_numberSystemBarItem = v54;
    }

    else
    {
      v56 = [PREditorNumberingSystemViewController alloc];
      effectiveTimeNumberingSystem2 = [(PRPosterTitleStyleConfiguration *)self->_titleStyleConfiguration effectiveTimeNumberingSystem];
      v51 = [(PREditorNumberingSystemViewController *)v56 initWithSelectedNumberingSystem:effectiveTimeNumberingSystem2 selectedFont:v6];

      [(PREditorNumberingSystemViewController *)v51 setDelegate:self];
      [(PREditingFontAndContentStylePickerViewController *)self setNumberingSystemViewController:v51];
    }

    delegate = v43;
    goto LABEL_35;
  }
}

PREditingFontPickerItem *__88__PREditingFontAndContentStylePickerViewController_loadComponentViewControllersIfNeeded__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[PREditingFontPickerItem alloc] initWithFontConfiguration:v2 systemItem:0];

  return v3;
}

uint64_t __88__PREditingFontAndContentStylePickerViewController_loadComponentViewControllersIfNeeded__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isSystemItem])
  {
    v5 = *(a1 + 32);
    v4 = *(a1 + 40);
    v6 = [v3 fontConfiguration];
    v7 = [v5 fontAndContentStylePickerViewController:v4 shouldShowFontConfiguration:v6];
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

uint64_t __88__PREditingFontAndContentStylePickerViewController_loadComponentViewControllersIfNeeded__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 fontConfiguration];
  v4 = [v3 customFont];

  v5 = [v4 fontName];
  v6 = [*(a1 + 32) fontName];
  v7 = BSEqualObjects();

  return v7;
}

uint64_t __88__PREditingFontAndContentStylePickerViewController_loadComponentViewControllersIfNeeded__block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 fontConfiguration];
  v5 = BSEqualObjects();

  [v3 isSystemItem];
  [*(a1 + 40) isSystemItem];
  return v5 & BSFloatEqualToFloat();
}

uint64_t __88__PREditingFontAndContentStylePickerViewController_loadComponentViewControllersIfNeeded__block_invoke_5(uint64_t a1, void *a2)
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
  v10.receiver = self;
  v10.super_class = PREditingFontAndContentStylePickerViewController;
  [(PREditingFontAndContentStylePickerViewController *)&v10 viewDidLayoutSubviews];
  navigationController = [(PREditingFontAndContentStylePickerViewController *)self navigationController];
  navigationBar = [navigationController navigationBar];
  [navigationBar frame];
  v6 = v5;

  rootStackView = [(PREditingFontAndContentStylePickerViewController *)self rootStackView];
  [rootStackView bounds];
  [navigationController setPreferredContentSize:{v9, v6 + v8 + -15.0}];
}

- (void)loadView
{
  v100 = *MEMORY[0x1E69E9840];
  [(PREditingFontAndContentStylePickerViewController *)self loadComponentViewControllersIfNeeded];
  navigationController = [(PREditingFontAndContentStylePickerViewController *)self navigationController];
  navigationBar = [navigationController navigationBar];
  topItem = [navigationBar topItem];

  [topItem _setManualScrollEdgeAppearanceProgress:0.0];
  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  components = [(PREditingFontAndContentStylePickerViewController *)self components];
  if ((components & 1) != 0 && (fontPickerController = self->_fontPickerController) != 0)
  {
    items = [(PREditingFontPickerComponentViewController *)fontPickerController items];
    v10 = [items count];

    if (v10 < 2)
    {
      v11 = 0;
      v12 = 0;
    }

    else
    {
      [v6 addObject:self->_fontPickerController];
      v11 = 0;
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
    v11 = 1;
  }

  components = self->_components;
  if ((components & 0x10) != 0)
  {
    [topItem setLeftBarButtonItem:self->_titleAlignmentBarItem];
    components = self->_components;
  }

  if ((components & 8) != 0 && self->_titleLayoutPickerController)
  {
    [v6 addObject:?];
  }

  if (((v11 | v12) & 1) == 0)
  {
    [v6 addObject:self->_fontPickerController];
  }

  if ((components & 2) != 0)
  {
    if (self->_numberingSystemViewController)
    {
      [v6 addObject:?];
    }

    else
    {
      [topItem setLeftBarButtonItem:self->_numberSystemBarItem];
    }
  }

  if ((components & 4) != 0)
  {
    [v6 addObject:self->_contentStylePickerController];
  }

  colorWell = [(PREditingContentStylePickerComponentViewController *)self->_contentStylePickerController colorWell];
  if (colorWell)
  {
    numberSystemBarItem = self->_numberSystemBarItem;

    if (!numberSystemBarItem)
    {
      colorWellView = [(PREditingContentStylePickerComponentViewController *)self->_contentStylePickerController colorWellView];
      colorWell2 = [colorWellView colorWell];
      [colorWell2 setTranslatesAutoresizingMaskIntoConstraints:0];
      v18 = [objc_alloc(MEMORY[0x1E69DC708]) initWithCustomView:colorWellView];
      [v18 setHidesSharedBackground:1];
      [topItem setLeftBarButtonItem:v18];
    }
  }

  v19 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v91 = 0u;
  v92 = 0u;
  v93 = 0u;
  v94 = 0u;
  v20 = v6;
  v21 = [v20 countByEnumeratingWithState:&v91 objects:v99 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v92;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v92 != v23)
        {
          objc_enumerationMutation(v20);
        }

        view = [*(*(&v91 + 1) + 8 * i) view];
        [view setTranslatesAutoresizingMaskIntoConstraints:0];
        clearColor = [MEMORY[0x1E69DC888] clearColor];
        [view setBackgroundColor:clearColor];

        [v19 addObject:view];
      }

      v22 = [v20 countByEnumeratingWithState:&v91 objects:v99 count:16];
    }

    while (v22);
  }

  v27 = [objc_alloc(MEMORY[0x1E69DCF90]) initWithArrangedSubviews:v19];
  v87 = 0u;
  v88 = 0u;
  v89 = 0u;
  v90 = 0u;
  v28 = v20;
  v29 = [v28 countByEnumeratingWithState:&v87 objects:v98 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v88;
    do
    {
      for (j = 0; j != v30; ++j)
      {
        if (*v88 != v31)
        {
          objc_enumerationMutation(v28);
        }

        v33 = *(*(&v87 + 1) + 8 * j);
        [(PREditingFontAndContentStylePickerViewController *)self addChildViewController:v33];
        [v33 didMoveToParentViewController:self];
      }

      v30 = [v28 countByEnumeratingWithState:&v87 objects:v98 count:16];
    }

    while (v30);
  }

  v69 = v19;
  v65 = topItem;

  [v27 setAxis:1];
  [v27 setSpacing:48.0];
  [v27 setTranslatesAutoresizingMaskIntoConstraints:0];
  clearColor2 = [MEMORY[0x1E69DC888] clearColor];
  [v27 setBackgroundColor:clearColor2];

  [(PREditingFontAndContentStylePickerViewController *)self setRootStackView:v27];
  v35 = objc_alloc_init(MEMORY[0x1E69DD250]);
  v36 = objc_opt_new();
  [v35 _setBackground:v36];

  [v35 addSubview:v27];
  [(PREditingFontAndContentStylePickerViewController *)self setView:v35];
  v73 = MEMORY[0x1E696ACD8];
  leadingAnchor = [v27 leadingAnchor];
  safeAreaLayoutGuide = [v35 safeAreaLayoutGuide];
  leadingAnchor2 = [safeAreaLayoutGuide leadingAnchor];
  v75 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v97[0] = v75;
  trailingAnchor = [v27 trailingAnchor];
  [v35 safeAreaLayoutGuide];
  v38 = v68 = v28;
  trailingAnchor2 = [v38 trailingAnchor];
  v40 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v97[1] = v40;
  v67 = v27;
  topAnchor = [v27 topAnchor];
  v66 = v35;
  safeAreaLayoutGuide2 = [v35 safeAreaLayoutGuide];
  topAnchor2 = [safeAreaLayoutGuide2 topAnchor];
  v44 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:7.0];
  v97[2] = v44;
  v45 = [MEMORY[0x1E695DEC8] arrayWithObjects:v97 count:3];
  [v73 activateConstraints:v45];

  if ([v68 count] == 1)
  {
    firstObject = [v68 firstObject];
    numberingSystemViewController = [(PREditingFontAndContentStylePickerViewController *)self numberingSystemViewController];

    if (firstObject == numberingSystemViewController)
    {
      bottomAnchor = [v67 bottomAnchor];
      safeAreaLayoutGuide3 = [v66 safeAreaLayoutGuide];
      bottomAnchor2 = [safeAreaLayoutGuide3 bottomAnchor];
      v51 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];

      [v51 setActive:1];
    }
  }

  if ([v69 count] < 2)
  {
    v52 = 0;
  }

  else
  {
    v52 = [v69 subarrayWithRange:{1, objc_msgSend(v69, "count") - 1}];
  }

  v85 = 0u;
  v86 = 0u;
  v83 = 0u;
  v84 = 0u;
  obj = v52;
  v72 = [obj countByEnumeratingWithState:&v83 objects:v96 count:16];
  if (v72)
  {
    v71 = *v84;
    do
    {
      for (k = 0; k != v72; ++k)
      {
        if (*v84 != v71)
        {
          objc_enumerationMutation(obj);
        }

        v54 = *(*(&v83 + 1) + 8 * k);
        v55 = objc_alloc_init(MEMORY[0x1E69DD250]);
        separatorColor = [MEMORY[0x1E69DC888] separatorColor];
        [v55 setBackgroundColor:separatorColor];

        [v55 setTranslatesAutoresizingMaskIntoConstraints:0];
        [v54 addSubview:v55];
        v74 = MEMORY[0x1E696ACD8];
        heightAnchor = [v55 heightAnchor];
        v80 = [heightAnchor constraintEqualToConstant:1.0];
        v95[0] = v80;
        leadingAnchor3 = [v55 leadingAnchor];
        leadingAnchor4 = [v54 leadingAnchor];
        v57 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
        v95[1] = v57;
        trailingAnchor3 = [v55 trailingAnchor];
        trailingAnchor4 = [v54 trailingAnchor];
        v60 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
        v95[2] = v60;
        bottomAnchor3 = [v55 bottomAnchor];
        topAnchor3 = [v54 topAnchor];
        v63 = [bottomAnchor3 constraintEqualToAnchor:topAnchor3 constant:-24.0];
        v95[3] = v63;
        v64 = [MEMORY[0x1E695DEC8] arrayWithObjects:v95 count:4];
        [v74 activateConstraints:v64];
      }

      v72 = [obj countByEnumeratingWithState:&v83 objects:v96 count:16];
    }

    while (v72);
  }
}

- (void)traitCollectionDidChange:(id)change
{
  v10.receiver = self;
  v10.super_class = PREditingFontAndContentStylePickerViewController;
  changeCopy = change;
  [(PREditingFontAndContentStylePickerViewController *)&v10 traitCollectionDidChange:changeCopy];
  userInterfaceStyle = [changeCopy userInterfaceStyle];

  traitCollection = [(PREditingFontAndContentStylePickerViewController *)self traitCollection];
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
  [(PREditingFontAndContentStylePickerViewController *)self loadComponentViewControllersIfNeeded];
  components = self->_components;
  v4 = (components & 1) != 0 && self->_fontPickerController != 0;
  v5 = (components & 8) != 0 && self->_titleLayoutPickerController != 0;
  v6 = (components & 4) != 0 && self->_contentStylePickerController != 0;
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
    [(PREditingContentStylePickerComponentViewController *)self->_contentStylePickerController estimatedHeight];
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
    extensionBundleURL = [(PREditingFontAndContentStylePickerViewController *)self extensionBundleURL];
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
  if ([(PREditingFontAndContentStylePickerViewController *)self isViewLoaded])
  {
    contentStylePickerController = self->_contentStylePickerController;

    [(PREditingContentStylePickerComponentViewController *)contentStylePickerController setContentsLuminance:luminance];
  }
}

- (void)_closeButtonTapped:(id)tapped
{
  [(PREditingFontAndContentStylePickerViewController *)self _signalDelegateDidFinish];

  [(PREditingFontAndContentStylePickerViewController *)self dismissViewControllerAnimated:1 completion:0];
}

- (void)_signalDelegateDidFinish
{
  delegate = [(PREditingFontAndContentStylePickerViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate fontAndContentStylePickerViewControllerDidFinish:self];
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
  delegate = [(PREditingFontAndContentStylePickerViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [(PREditingFontAndContentStylePickerViewController *)self desiredDetent];
    [delegate fontAndContentStylePickerViewController:self didUpdateDesiredDetent:?];
  }
}

- (void)fontPickerComponentViewController:(id)controller didChangeFontWeight:(double)weight
{
  timeFontConfiguration = [(PRPosterTitleStyleConfiguration *)self->_titleStyleConfiguration timeFontConfiguration];
  extensionBundleURL = [(PREditingFontAndContentStylePickerViewController *)self extensionBundleURL];
  v16 = [timeFontConfiguration timeFontConfigurationWithExtensionBundleURL:extensionBundleURL];

  v8 = [v16 effectiveFontForRole:self->_role ignoringWeight:1];
  pr_variantWeightRange = [v8 pr_variantWeightRange];
  v11 = v10;
  changeHandler = [(PREditingFontAndContentStylePickerViewController *)self changeHandler];
  if (changeHandler)
  {
    v13 = v11 * weight + (1.0 - weight) * pr_variantWeightRange;
    v14 = objc_alloc_init(PREditingFontAndContentStylePickerSelectionChange);
    v15 = [MEMORY[0x1E696AD98] numberWithDouble:v13];
    [(PREditingFontAndContentStylePickerSelectionChange *)v14 setFontWeight:v15];

    (changeHandler)[2](changeHandler, v14);
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
  changeHandler = [(PREditingFontAndContentStylePickerViewController *)self changeHandler];
  if (changeHandler)
  {
    additionalFontConfigurations = [(PREditingFontAndContentStylePickerViewController *)self additionalFontConfigurations];
    fontConfiguration2 = [itemCopy fontConfiguration];
    v13 = [additionalFontConfigurations containsObject:fontConfiguration2];

    fontConfiguration3 = [itemCopy fontConfiguration];
    timeFontIdentifier = [fontConfiguration3 timeFontIdentifier];

    if ((v13 & 1) != 0 || timeFontIdentifier == @"PRTimeFontIdentifierRail")
    {
      fontConfiguration4 = [itemCopy fontConfiguration];
      [fontConfiguration4 weight];
      v20 = v22;
    }

    else
    {
      pr_variantWeightRange = [v8 pr_variantWeightRange];
      v18 = v17;
      [controllerCopy fontWeight];
      v20 = v19 * v18 + (1.0 - v19) * pr_variantWeightRange;
    }

    if (v13)
    {
      v23 = v8;
    }

    else
    {
      v23 = 0;
    }

    v24 = v23;
    v25 = objc_alloc_init(PREditingFontAndContentStylePickerSelectionChange);
    [(PREditingFontAndContentStylePickerSelectionChange *)v25 setTimeFontIdentifier:timeFontIdentifier];
    v26 = [MEMORY[0x1E696AD98] numberWithDouble:v20];
    [(PREditingFontAndContentStylePickerSelectionChange *)v25 setFontWeight:v26];

    v27 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(itemCopy, "isSystemItem")}];
    [(PREditingFontAndContentStylePickerSelectionChange *)v25 setSystemItem:v27];

    [(PREditingFontAndContentStylePickerSelectionChange *)v25 setCustomFont:v24];
    (changeHandler)[2](changeHandler, v25);
  }
}

- (void)titleLayoutPickerComponentViewController:(id)controller didSelectTitleLayout:(unint64_t)layout userSelected:(BOOL)selected
{
  layoutCopy = layout;
  v7 = [PRIncomingCallMetricsProvider maxVerticalTextLength:controller];
  if (PRPosterTitleLayoutIsVertical(layoutCopy))
  {
    titleString = [(PREditingFontAndContentStylePickerViewController *)self titleString];
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
      [(PREditingFontAndContentStylePickerViewController *)self presentViewController:v17 animated:1 completion:0];

      layoutCopy = 0;
    }
  }

  titleLayoutPickerController = [(PREditingFontAndContentStylePickerViewController *)self titleLayoutPickerController];
  [titleLayoutPickerController setSelectedTitleLayout:layoutCopy];

  changeHandler = [(PREditingFontAndContentStylePickerViewController *)self changeHandler];
  if (changeHandler)
  {
    v26 = changeHandler;
    v24 = objc_alloc_init(PREditingFontAndContentStylePickerSelectionChange);
    v25 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:layoutCopy];
    [(PREditingFontAndContentStylePickerSelectionChange *)v24 setPreferredTitleLayout:v25];

    v26[2](v26, v24);
    changeHandler = v26;
  }
}

- (void)numberingSystemPickerController:(id)controller didSelectNumberingSystem:(id)system
{
  systemCopy = system;
  displayLocale = [controller displayLocale];
  [(PREditingFontAndContentStylePickerViewController *)self numberingSystemWasChanged:systemCopy locale:displayLocale];
}

- (void)numberingSystemViewController:(id)controller didSelectNumberingSystem:(id)system
{
  systemCopy = system;
  displayLocale = [controller displayLocale];
  [(PREditingFontAndContentStylePickerViewController *)self numberingSystemWasChanged:systemCopy locale:displayLocale];
}

- (void)numberingSystemWasChanged:(id)changed locale:(id)locale
{
  changedCopy = changed;
  localeCopy = locale;
  fontPickerController = [(PREditingFontAndContentStylePickerViewController *)self fontPickerController];
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

  changeHandler = [(PREditingFontAndContentStylePickerViewController *)self changeHandler];
  if (changeHandler)
  {
    v12 = objc_alloc_init(PREditingFontAndContentStylePickerSelectionChange);
    [(PREditingFontAndContentStylePickerSelectionChange *)v12 setNumberingSystem:changedCopy];
    (changeHandler)[2](changeHandler, v12);
  }
}

- (void)didPressTitleAlignmentBarButtonItem:(id)item
{
  toggle = [(PRTitleAlignmentBarButtonItem *)self->_titleAlignmentBarItem toggle];
  changeHandler = [(PREditingFontAndContentStylePickerViewController *)self changeHandler];
  if (changeHandler)
  {
    v8 = changeHandler;
    v6 = objc_alloc_init(PREditingFontAndContentStylePickerSelectionChange);
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:toggle];
    [(PREditingFontAndContentStylePickerSelectionChange *)v6 setPreferredTitleAlignment:v7];

    v8[2](v8, v6);
    changeHandler = v8;
  }
}

- (void)contentStylePickerComponentViewController:(id)controller didSelectStyle:(id)style isSuggestedStyle:(BOOL)suggestedStyle userSelected:(BOOL)selected
{
  selectedCopy = selected;
  suggestedStyleCopy = suggestedStyle;
  styleCopy = style;
  if (selectedCopy)
  {
    v13 = styleCopy;
    changeHandler = [(PREditingFontAndContentStylePickerViewController *)self changeHandler];
    if (changeHandler)
    {
      v11 = objc_alloc_init(PREditingFontAndContentStylePickerSelectionChange);
      [(PREditingFontAndContentStylePickerSelectionChange *)v11 setContentStyle:v13];
      v12 = [MEMORY[0x1E696AD98] numberWithBool:suggestedStyleCopy];
      [(PREditingFontAndContentStylePickerSelectionChange *)v11 setSuggestedContentStyle:v12];

      (changeHandler)[2](changeHandler, v11);
    }

    styleCopy = v13;
  }
}

- (void)contentStylePickerComponentViewControllerDidChangeHeight:(id)height
{
  delegate = [(PREditingFontAndContentStylePickerViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [(PREditingFontAndContentStylePickerViewController *)self desiredDetent];
    [delegate fontAndContentStylePickerViewController:self didUpdateDesiredDetent:?];
  }
}

- (id)contentStylePickerComponentViewController:(id)controller coordinatorForStyle:(id)style isSuggested:(BOOL)suggested
{
  suggestedCopy = suggested;
  styleCopy = style;
  delegate = [(PREditingFontAndContentStylePickerViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v9 = [delegate fontAndContentStylePickerViewController:self coordinatorForStyle:styleCopy isSuggested:suggestedCopy];
  }

  else
  {
    v9 = 0;
  }

  return v9;
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

- (PREditingFontAndContentStylePickerViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end