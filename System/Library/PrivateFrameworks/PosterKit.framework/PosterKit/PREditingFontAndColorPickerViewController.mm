@interface PREditingFontAndColorPickerViewController
- (BOOL)_shouldShowWeightSliderForSelectedFont;
- (PREditingFontAndColorPickerViewController)initWithComponents:(unint64_t)a3 role:(id)a4 titleString:(id)a5;
- (PREditingFontAndColorPickerViewControllerDelegate)delegate;
- (double)desiredDetent;
- (id)localeWithNumberingSystem:(id)a3;
- (int64_t)adaptivePresentationStyleForPresentationController:(id)a3;
- (void)_closeButtonTapped:(id)a3;
- (void)_signalDelegateDidFinish;
- (void)colorPickerComponentViewController:(id)a3 didSelectColorItem:(id)a4 userSelected:(BOOL)a5;
- (void)colorPickerComponentViewControllerDidChangeHeight:(id)a3;
- (void)colorWellDidUpdateColor:(id)a3;
- (void)didPressTitleAlignmentBarButtonItem:(id)a3;
- (void)fontPickerComponentViewController:(id)a3 didChangeFontWeight:(double)a4;
- (void)fontPickerComponentViewController:(id)a3 didSelectItem:(id)a4;
- (void)fontPickerComponentViewControllerDidChangeHeight:(id)a3;
- (void)loadComponentViewControllersIfNeeded;
- (void)loadView;
- (void)numberingSystemPickerController:(id)a3 didSelectNumberingSystem:(id)a4;
- (void)numberingSystemViewController:(id)a3 didSelectNumberingSystem:(id)a4;
- (void)numberingSystemWasChanged:(id)a3 locale:(id)a4;
- (void)setContentsLuminance:(double)a3;
- (void)titleLayoutPickerComponentViewController:(id)a3 didSelectTitleLayout:(unint64_t)a4 userSelected:(BOOL)a5;
- (void)traitCollectionDidChange:(id)a3;
- (void)updatePopoverContentSize;
- (void)viewDidLayoutSubviews;
@end

@implementation PREditingFontAndColorPickerViewController

- (PREditingFontAndColorPickerViewController)initWithComponents:(unint64_t)a3 role:(id)a4 titleString:(id)a5
{
  v9 = a4;
  v10 = a5;
  v16.receiver = self;
  v16.super_class = PREditingFontAndColorPickerViewController;
  v11 = [(PREditingFontAndColorPickerViewController *)&v16 initWithNibName:0 bundle:0];
  v12 = v11;
  if (v11)
  {
    v11->_components = a3;
    v11->_contentsLuminance = 0.5;
    objc_storeStrong(&v11->_role, a4);
    v13 = [v10 copy];
    titleString = v12->_titleString;
    v12->_titleString = v13;
  }

  return v12;
}

- (void)loadComponentViewControllersIfNeeded
{
  if (!self->_hasLoadedComponentViewControllers)
  {
    v3 = [(PREditingFontAndColorPickerViewController *)self components];
    v4 = [(PREditingFontAndColorPickerViewController *)self extensionBundleURL];
    if (v4)
    {
      v5 = [(PRPosterTitleStyleConfiguration *)self->_titleStyleConfiguration effectiveTimeFontWithExtensionBundleURL:v4 forRole:self->_role];
    }

    else
    {
      v5 = 0;
    }

    v6 = [(PREditingFontAndColorPickerViewController *)self delegate];
    v74 = v3;
    v75 = v5;
    v76 = v6;
    if (v3)
    {
      v7 = [PREditingFontPickerComponentViewController defaultItemsForRole:self->_role titleString:self->_titleString];
      if (![(NSString *)self->_role isEqualToString:@"PRPosterRoleIncomingCall"]&& (objc_opt_respondsToSelector() & 1) != 0)
      {
        v8 = [v6 additionalFontConfigurationsForFontAndColorPickerViewController:self];
        if (v8)
        {
          [(PREditingFontAndColorPickerViewController *)self setAdditionalFontConfigurations:v8];
          v9 = [v8 bs_map:&__block_literal_global_14];
          v10 = [v7 arrayByAddingObjectsFromArray:v9];

          v7 = v10;
          v6 = v76;
        }
      }

      if (objc_opt_respondsToSelector())
      {
        v85[0] = MEMORY[0x1E69E9820];
        v85[1] = 3221225472;
        v85[2] = __81__PREditingFontAndColorPickerViewController_loadComponentViewControllersIfNeeded__block_invoke_2;
        v85[3] = &unk_1E78439B8;
        v86 = v6;
        v87 = self;
        v11 = [v7 bs_filter:v85];

        v7 = v11;
      }

      v12 = [(PRPosterTitleStyleConfiguration *)self->_titleStyleConfiguration timeFontConfiguration];
      v73 = v4;
      v13 = [v12 timeFontConfigurationWithExtensionBundleURL:v4];
      v14 = [v13 customFont];

      v72 = v12;
      if (v14)
      {
        v15 = [v13 customFont];
        v83[0] = MEMORY[0x1E69E9820];
        v83[1] = 3221225472;
        v83[2] = __81__PREditingFontAndColorPickerViewController_loadComponentViewControllersIfNeeded__block_invoke_3;
        v83[3] = &unk_1E78439E0;
        v84 = v15;
        v16 = v15;
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
        v19 = v12;
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
        v6 = v76;
      }

      v20 = [v7 count];
      v74 = v20 != 0;
      if (v20)
      {
        v21 = [[PREditingFontPickerComponentViewController alloc] initWithItems:v7 selectedItem:v17 role:self->_role titleString:self->_titleString];
        v22 = [(PRPosterTitleStyleConfiguration *)self->_titleStyleConfiguration timeFontConfiguration];
        v23 = [(PREditingFontAndColorPickerViewController *)self extensionBundleURL];
        v24 = [v22 timeFontConfigurationWithExtensionBundleURL:v23];

        v25 = [v24 effectiveFontForRole:self->_role ignoringWeight:1];
        v26 = [v25 pr_variantWeightRange];
        v28 = v27;
        [v24 weight];
        [(PREditingFontPickerComponentViewController *)v21 setFontWeight:(v29 - v26) / (v28 - v26)];
        v30 = [(PRPosterTitleStyleConfiguration *)self->_titleStyleConfiguration timeNumberingSystem];
        if (v30)
        {
          v31 = [(PREditingFontAndColorPickerViewController *)self localeWithNumberingSystem:v30];
          [(PREditingFontPickerComponentViewController *)v21 setLocale:v31];
        }

        [(PREditingFontPickerComponentViewController *)v21 setDelegate:self, v13];
        [(PREditingFontAndColorPickerViewController *)self setFontPickerController:v21];

        v6 = v76;
        v13 = v71;
      }

      v4 = v73;
      v5 = v75;
      if ((v3 & 0x10) == 0)
      {
LABEL_7:
        if ((v3 & 8) == 0)
        {
          goto LABEL_8;
        }

        goto LABEL_29;
      }
    }

    else if ((v3 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    titleStyleConfiguration = self->_titleStyleConfiguration;
    v33 = [(PREditingFontAndColorPickerViewController *)self titleString];
    v34 = [(PRPosterTitleStyleConfiguration *)titleStyleConfiguration effectiveTitleLayoutForText:v33];

    v35 = [(PREditingFontAndColorPickerViewController *)self fontPickerController];
    v36 = [v35 selectedItem];
    v37 = [v36 fontConfiguration];
    v38 = [v37 effectiveFontForRole:self->_role];

    v39 = [(PREditingFontAndColorPickerViewController *)self titleString];
    [PRIncomingCallFontsProvider idealEmphasizedFontSizeForName:v39 usingLayout:v34];
    v41 = v40;

    v42 = [v38 fontWithSize:v41];
    v43 = [PRTitleAlignmentBarButtonItem alloc];
    v44 = self->_titleStyleConfiguration;
    v45 = [(PREditingFontAndColorPickerViewController *)self titleString];
    v46 = [(PRTitleAlignmentBarButtonItem *)v43 initWithTitleAlignment:[(PRPosterTitleStyleConfiguration *)v44 effectiveTitleAlignmentForText:v45 withFont:v42] target:self action:sel_didPressTitleAlignmentBarButtonItem_];
    titleAlignmentBarItem = self->_titleAlignmentBarItem;
    self->_titleAlignmentBarItem = v46;

    v48 = self->_titleAlignmentBarItem;
    v49 = [(PREditingFontAndColorPickerViewController *)self titleString];
    v6 = v76;
    [(PRTitleAlignmentBarButtonItem *)v48 setEnabled:[PRIncomingCallMetricsProvider canApplyKashidaToText:v49 withFont:v42]];

    v5 = v75;
    if ((v3 & 8) == 0)
    {
LABEL_8:
      if ((v3 & 4) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_30;
    }

LABEL_29:
    v50 = [PREditingTitleLayoutPickerComponentViewController defaultTitleLayoutsForRole:self->_role];
    v51 = [PREditingTitleLayoutPickerComponentViewController alloc];
    v52 = self->_titleStyleConfiguration;
    v53 = [(PREditingFontAndColorPickerViewController *)self titleString];
    v54 = v52;
    v6 = v76;
    v55 = [(PREditingTitleLayoutPickerComponentViewController *)v51 initWithTitleLayouts:v50 selectedLayout:[(PRPosterTitleStyleConfiguration *)v54 effectiveTitleLayoutForText:v53]];

    [(PREditingTitleLayoutPickerComponentViewController *)v55 setDelegate:self];
    [(PREditingFontAndColorPickerViewController *)self setTitleLayoutPickerController:v55];

    if ((v3 & 4) == 0)
    {
LABEL_9:
      if ((v3 & 2) == 0)
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

    if ((v3 & 2) == 0)
    {
LABEL_35:
      self->_hasLoadedComponentViewControllers = 1;

      return;
    }

LABEL_31:
    if ((v3 >> 2) & 1 | v74)
    {
      v57 = [PREditorNumberingSystemPickerController alloc];
      v58 = [(PRPosterTitleStyleConfiguration *)self->_titleStyleConfiguration effectiveTimeNumberingSystem];
      v59 = [(PREditorNumberingSystemPickerController *)v57 initWithSelectedNumberingSystem:v58 selectedFont:v5];

      [(PREditorNumberingSystemPickerController *)v59 setDelegate:self];
      numberingSystemController = self->_numberingSystemController;
      self->_numberingSystemController = v59;
      v61 = v59;

      v62 = MEMORY[0x1E69DCAB8];
      v63 = [MEMORY[0x1E69DCAD8] configurationWithScale:3];
      v64 = [v62 systemImageNamed:@"globe" withConfiguration:v63];

      v65 = objc_alloc(MEMORY[0x1E69DC708]);
      v66 = [(PREditorNumberingSystemPickerController *)v61 menu];
      v67 = [v65 initWithImage:v64 menu:v66];

      numberSystemBarItem = self->_numberSystemBarItem;
      self->_numberSystemBarItem = v67;
    }

    else
    {
      v69 = [PREditorNumberingSystemViewController alloc];
      v70 = [(PRPosterTitleStyleConfiguration *)self->_titleStyleConfiguration effectiveTimeNumberingSystem];
      v64 = [(PREditorNumberingSystemViewController *)v69 initWithSelectedNumberingSystem:v70 selectedFont:v5];

      [(PREditorNumberingSystemViewController *)v64 setDelegate:self];
      [(PREditingFontAndColorPickerViewController *)self setNumberingSystemViewController:v64];
    }

    v6 = v76;
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
  v3 = [(PREditingFontAndColorPickerViewController *)self navigationController];
  v4 = [v3 navigationBar];
  v5 = [v4 topItem];

  [v5 _setManualScrollEdgeAppearanceProgress:0.0];
  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v7 = [(PREditingFontAndColorPickerViewController *)self components];
  if ((self->_components & 8) != 0 && self->_titleLayoutPickerController)
  {
    [v6 addObject:?];
  }

  if ((v7 & 1) != 0 && self->_fontPickerController)
  {
    [v6 addObject:?];
  }

  if ((self->_components & 0x10) == 0)
  {
    if ((v7 & 2) == 0)
    {
      goto LABEL_9;
    }

LABEL_31:
    if (self->_numberingSystemViewController)
    {
      [v6 addObject:?];
      if ((v7 & 4) == 0)
      {
        goto LABEL_11;
      }
    }

    else
    {
      [v5 setLeftBarButtonItem:self->_numberSystemBarItem];
      if ((v7 & 4) == 0)
      {
        goto LABEL_11;
      }
    }

    goto LABEL_10;
  }

  [v5 setLeftBarButtonItem:self->_titleAlignmentBarItem];
  if ((v7 & 2) != 0)
  {
    goto LABEL_31;
  }

LABEL_9:
  if ((v7 & 4) != 0)
  {
LABEL_10:
    [v6 addObject:self->_colorPickerController];
  }

LABEL_11:
  if ([(PREditorColorPickerConfiguration *)self->_colorPickerConfiguration colorWellDisplayMode]== 2 && !self->_numberSystemBarItem)
  {
    v8 = objc_alloc(MEMORY[0x1E69C5548]);
    v9 = [v8 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    v10 = [v9 colorWell];
    [v10 addTarget:self action:sel_colorWellDidUpdateColor_ forControlEvents:4096];
    [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
    v11 = [objc_alloc(MEMORY[0x1E69DC708]) initWithCustomView:v9];
    [v11 setHidesSharedBackground:1];
    [v5 setLeftBarButtonItem:v11];
    colorWell = self->_colorWell;
    self->_colorWell = v10;
    v13 = v10;

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

        v21 = [*(*(&v78 + 1) + 8 * i) view];
        [v21 setTranslatesAutoresizingMaskIntoConstraints:0];
        [v15 addObject:v21];
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

  v56 = v5;
  v54 = v23;

  [v22 setAxis:1];
  [v22 setSpacing:48.0];
  [v22 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(PREditingFontAndColorPickerViewController *)self setRootStackView:v22];
  v29 = objc_alloc_init(MEMORY[0x1E69DD250]);
  [v29 addSubview:v22];
  [(PREditingFontAndColorPickerViewController *)self setView:v29];
  v62 = MEMORY[0x1E696ACD8];
  v66 = [v22 leadingAnchor];
  v68 = [v29 safeAreaLayoutGuide];
  v64 = [v68 leadingAnchor];
  v30 = [v66 constraintEqualToAnchor:v64];
  v84[0] = v30;
  v31 = [v22 trailingAnchor];
  v32 = [v29 safeAreaLayoutGuide];
  v33 = [v32 trailingAnchor];
  v34 = [v31 constraintEqualToAnchor:v33];
  v84[1] = v34;
  v55 = v22;
  v35 = [v22 topAnchor];
  v53 = v29;
  v36 = [v29 safeAreaLayoutGuide];
  v37 = [v36 topAnchor];
  v38 = [v35 constraintEqualToAnchor:v37 constant:7.0];
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
        v44 = [MEMORY[0x1E69DC888] separatorColor];
        [v43 setBackgroundColor:v44];

        [v43 setTranslatesAutoresizingMaskIntoConstraints:0];
        [v42 addSubview:v43];
        v61 = MEMORY[0x1E696ACD8];
        v69 = [v43 heightAnchor];
        v67 = [v69 constraintEqualToConstant:1.0];
        v82[0] = v67;
        v65 = [v43 leadingAnchor];
        v63 = [v42 leadingAnchor];
        v45 = [v65 constraintEqualToAnchor:v63];
        v82[1] = v45;
        v46 = [v43 trailingAnchor];
        v47 = [v42 trailingAnchor];
        v48 = [v46 constraintEqualToAnchor:v47];
        v82[2] = v48;
        v49 = [v43 bottomAnchor];
        v50 = [v42 topAnchor];
        v51 = [v49 constraintEqualToAnchor:v50 constant:-24.0];
        v82[3] = v51;
        v52 = [MEMORY[0x1E695DEC8] arrayWithObjects:v82 count:4];
        [v61 activateConstraints:v52];
      }

      v60 = [obj countByEnumeratingWithState:&v70 objects:v83 count:16];
    }

    while (v60);
  }
}

- (void)traitCollectionDidChange:(id)a3
{
  v10.receiver = self;
  v10.super_class = PREditingFontAndColorPickerViewController;
  v4 = a3;
  [(PREditingFontAndColorPickerViewController *)&v10 traitCollectionDidChange:v4];
  v5 = [v4 userInterfaceStyle];

  v6 = [(PREditingFontAndColorPickerViewController *)self traitCollection];
  v7 = [v6 userInterfaceStyle];

  if (v5 != v7)
  {
    numberSystemBarItem = self->_numberSystemBarItem;
    v9 = [(PREditorNumberingSystemPickerController *)self->_numberingSystemController menu];
    [(UIBarButtonItem *)numberSystemBarItem setMenu:v9];
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
    v3 = [(PRPosterTitleStyleConfiguration *)self->_titleStyleConfiguration timeFontConfiguration];
    v4 = [(PREditingFontAndColorPickerViewController *)self extensionBundleURL];
    v5 = [v3 timeFontConfigurationWithExtensionBundleURL:v4];

    if ([v3 isSystemItem])
    {
      v6 = [v5 timeFontIdentifier];
      v7 = [v6 isEqual:@"PRTimeFontIdentifierRail"] ^ 1;
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

- (void)setContentsLuminance:(double)a3
{
  self->_contentsLuminance = a3;
  if ([(PREditingFontAndColorPickerViewController *)self isViewLoaded])
  {
    colorPickerController = self->_colorPickerController;

    [(PREditingColorPickerComponentViewController *)colorPickerController setContentsLuminance:a3];
  }
}

- (void)_closeButtonTapped:(id)a3
{
  [(PREditingFontAndColorPickerViewController *)self _signalDelegateDidFinish];

  [(PREditingFontAndColorPickerViewController *)self dismissViewControllerAnimated:1 completion:0];
}

- (void)_signalDelegateDidFinish
{
  v3 = [(PREditingFontAndColorPickerViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v3 fontAndColorPickerViewControllerDidFinish:self];
  }
}

- (id)localeWithNumberingSystem:(id)a3
{
  v3 = MEMORY[0x1E695DF58];
  v4 = a3;
  v5 = [v3 currentLocale];
  v6 = [v5 localeIdentifier];

  v7 = [MEMORY[0x1E695DF58] componentsFromLocaleIdentifier:v6];
  v8 = [v7 mutableCopy];

  [v8 setObject:v4 forKey:@"numbers"];
  v9 = [MEMORY[0x1E695DF58] localeIdentifierFromComponents:v8];
  v10 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:v9];

  return v10;
}

- (void)fontPickerComponentViewControllerDidChangeHeight:(id)a3
{
  v4 = [(PREditingFontAndColorPickerViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [(PREditingFontAndColorPickerViewController *)self desiredDetent];
    [v4 fontAndColorPickerViewController:self didUpdateDesiredDetent:?];
  }
}

- (void)fontPickerComponentViewController:(id)a3 didChangeFontWeight:(double)a4
{
  v6 = [(PRPosterTitleStyleConfiguration *)self->_titleStyleConfiguration timeFontConfiguration];
  v7 = [(PREditingFontAndColorPickerViewController *)self extensionBundleURL];
  v14 = [v6 timeFontConfigurationWithExtensionBundleURL:v7];

  v8 = [v14 effectiveFontForRole:self->_role ignoringWeight:1];
  v9 = [v8 pr_variantWeightRange];
  v11 = v10;
  v12 = [(PREditingFontAndColorPickerViewController *)self changeHandler];
  if (v12)
  {
    v13 = [MEMORY[0x1E696AD98] numberWithDouble:v11 * a4 + (1.0 - a4) * v9];
    (v12)[2](v12, 0, 0, 0, v13, 0, 0, 0, 0);
  }
}

- (void)fontPickerComponentViewController:(id)a3 didSelectItem:(id)a4
{
  v30 = a3;
  v6 = a4;
  v7 = [v6 fontConfiguration];
  v8 = [v7 effectiveFontForRole:self->_role];

  [(PREditorNumberingSystemPickerController *)self->_numberingSystemController setFont:v8];
  v9 = [(PREditorNumberingSystemPickerController *)self->_numberingSystemController menu];
  [(UIBarButtonItem *)self->_numberSystemBarItem setMenu:v9];
  v10 = [v6 fontConfiguration];
  v11 = [v10 effectiveFontForRole:self->_role ignoringWeight:1];

  v12 = [(PREditingFontAndColorPickerViewController *)self changeHandler];
  if (v12)
  {
    v13 = [(PREditingFontAndColorPickerViewController *)self additionalFontConfigurations];
    v14 = [v6 fontConfiguration];
    v15 = [v13 containsObject:v14];

    v16 = [v6 fontConfiguration];
    v17 = [v16 timeFontIdentifier];

    if ((v15 & 1) != 0 || v17 == @"PRTimeFontIdentifierRail")
    {
      v23 = [v6 fontConfiguration];
      [v23 weight];
      v22 = v24;
    }

    else
    {
      v18 = [v11 pr_variantWeightRange];
      v20 = v19;
      [v30 fontWeight];
      v22 = v21 * v20 + (1.0 - v21) * v18;
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
    v29 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v6, "isSystemItem")}];
    (v12)[2](v12, v17, 0, 0, v28, v29, v27, 0, 0);
  }
}

- (void)titleLayoutPickerComponentViewController:(id)a3 didSelectTitleLayout:(unint64_t)a4 userSelected:(BOOL)a5
{
  v5 = a4;
  v7 = [PRIncomingCallMetricsProvider maxVerticalTextLength:a3];
  if (PRPosterTitleLayoutIsVertical(v5))
  {
    v8 = [(PREditingFontAndColorPickerViewController *)self titleString];
    v9 = [v8 length];

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

      v5 = 0;
    }
  }

  v22 = [(PREditingFontAndColorPickerViewController *)self titleLayoutPickerController];

  if (v22)
  {
    v23 = [(PREditingFontAndColorPickerViewController *)self titleLayoutPickerController];
    [v23 setSelectedTitleLayout:v5];
  }

  v24 = [(PREditingFontAndColorPickerViewController *)self changeHandler];
  if (v24)
  {
    v26 = v24;
    v25 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v5];
    (*(v26 + 2))(v26, 0, 0, v25, 0, 0, 0, 0, 0);

    v24 = v26;
  }
}

- (void)numberingSystemPickerController:(id)a3 didSelectNumberingSystem:(id)a4
{
  v6 = a4;
  v7 = [a3 displayLocale];
  [(PREditingFontAndColorPickerViewController *)self numberingSystemWasChanged:v6 locale:v7];
}

- (void)numberingSystemViewController:(id)a3 didSelectNumberingSystem:(id)a4
{
  v6 = a4;
  v7 = [a3 displayLocale];
  [(PREditingFontAndColorPickerViewController *)self numberingSystemWasChanged:v6 locale:v7];
}

- (void)numberingSystemWasChanged:(id)a3 locale:(id)a4
{
  v13 = a3;
  v6 = a4;
  v7 = [(PREditingFontAndColorPickerViewController *)self fontPickerController];
  v8 = v7;
  if (v7)
  {
    [v7 setLocale:v6];
  }

  numberingSystemController = self->_numberingSystemController;
  if (numberingSystemController)
  {
    v10 = [(PREditorNumberingSystemPickerController *)numberingSystemController menu];
    [(UIBarButtonItem *)self->_numberSystemBarItem setMenu:v10];
  }

  v11 = [(PREditingFontAndColorPickerViewController *)self changeHandler];
  v12 = v11;
  if (v11)
  {
    (*(v11 + 16))(v11, 0, 0, 0, 0, 0, 0, v13, 0);
  }
}

- (void)didPressTitleAlignmentBarButtonItem:(id)a3
{
  v4 = [(PRTitleAlignmentBarButtonItem *)self->_titleAlignmentBarItem toggle];
  v5 = [(PREditingFontAndColorPickerViewController *)self changeHandler];
  if (v5)
  {
    v7 = v5;
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v4];
    (*(v7 + 2))(v7, 0, v6, 0, 0, 0, 0, 0, 0);

    v5 = v7;
  }
}

- (void)updatePopoverContentSize
{
  v8 = [(PREditingFontAndColorPickerViewController *)self navigationController];
  v3 = [v8 navigationBar];
  [v3 frame];
  v5 = v4;

  v6 = [(PREditingFontAndColorPickerViewController *)self rootStackView];
  [v6 bounds];
  [v8 setPreferredContentSize:{370.0, v5 + v7 + -15.0}];
}

- (void)colorPickerComponentViewController:(id)a3 didSelectColorItem:(id)a4 userSelected:(BOOL)a5
{
  v5 = a5;
  v12 = a4;
  if ([v12 isFromUIKitColorPicker])
  {
    colorWell = self->_colorWell;
    if (colorWell)
    {
      v8 = [v12 color];
      v9 = [v8 color];
      [(PUIColorWell *)colorWell setSelectedColor:v9];
    }
  }

  if (v5)
  {
    v10 = [(PREditingFontAndColorPickerViewController *)self changeHandler];
    v11 = v10;
    if (v10)
    {
      (*(v10 + 16))(v10, 0, 0, 0, 0, 0, 0, 0, v12);
    }
  }
}

- (void)colorPickerComponentViewControllerDidChangeHeight:(id)a3
{
  v4 = [(PREditingFontAndColorPickerViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [(PREditingFontAndColorPickerViewController *)self desiredDetent];
    [v4 fontAndColorPickerViewController:self didUpdateDesiredDetent:?];
  }
}

- (void)colorWellDidUpdateColor:(id)a3
{
  v4 = a3;
  v5 = [(PREditingFontAndColorPickerViewController *)self colorWell];
  [v5 invalidateIntrinsicContentSize];

  v6 = [(PREditingFontAndColorPickerViewController *)self colorWellView];
  [v6 setNeedsLayout];

  v12 = [v4 selectedColor];

  v7 = [[PRPosterColor alloc] initWithColor:v12];
  v8 = [[PREditorColorPickerConstantColor alloc] initWithColor:v7 initialVariation:0.0];
  v9 = [[PREditingColorItem alloc] initWithPickerColor:v8 variation:[(PREditorColorPickerConfiguration *)self->_colorPickerConfiguration context] context:0.0];
  [(PREditingColorItem *)v9 setFromUIKitColorPicker:1];
  [(PREditingColorPickerComponentViewController *)self->_colorPickerController updateForColorWellSelectedItem:v9];
  v10 = [(PREditingFontAndColorPickerViewController *)self changeHandler];
  v11 = v10;
  if (v10)
  {
    (*(v10 + 16))(v10, 0, 0, 0, 0, 0, 0, 0, v9);
  }
}

- (int64_t)adaptivePresentationStyleForPresentationController:(id)a3
{
  v3 = a3;
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