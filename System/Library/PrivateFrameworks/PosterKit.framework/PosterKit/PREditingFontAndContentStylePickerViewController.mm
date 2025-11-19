@interface PREditingFontAndContentStylePickerViewController
- (BOOL)_shouldShowWeightSliderForSelectedFont;
- (PREditingFontAndContentStylePickerViewController)initWithComponents:(unint64_t)a3 role:(id)a4 titleString:(id)a5;
- (PREditingFontAndContentStylePickerViewControllerDelegate)delegate;
- (double)desiredDetent;
- (id)contentStylePickerComponentViewController:(id)a3 coordinatorForStyle:(id)a4 isSuggested:(BOOL)a5;
- (id)localeWithNumberingSystem:(id)a3;
- (int64_t)adaptivePresentationStyleForPresentationController:(id)a3;
- (void)_closeButtonTapped:(id)a3;
- (void)_signalDelegateDidFinish;
- (void)contentStylePickerComponentViewController:(id)a3 didSelectStyle:(id)a4 isSuggestedStyle:(BOOL)a5 userSelected:(BOOL)a6;
- (void)contentStylePickerComponentViewControllerDidChangeHeight:(id)a3;
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
- (void)viewDidLayoutSubviews;
@end

@implementation PREditingFontAndContentStylePickerViewController

- (PREditingFontAndContentStylePickerViewController)initWithComponents:(unint64_t)a3 role:(id)a4 titleString:(id)a5
{
  v8 = a4;
  v9 = a5;
  v17.receiver = self;
  v17.super_class = PREditingFontAndContentStylePickerViewController;
  v10 = [(PREditingFontAndContentStylePickerViewController *)&v17 initWithNibName:0 bundle:0];
  v11 = v10;
  if (v10)
  {
    v10->_components = a3;
    v10->_contentsLuminance = 0.5;
    v12 = [v8 copy];
    role = v11->_role;
    v11->_role = v12;

    v14 = [v9 copy];
    titleString = v11->_titleString;
    v11->_titleString = v14;
  }

  return v11;
}

- (void)loadComponentViewControllersIfNeeded
{
  if (!self->_hasLoadedComponentViewControllers)
  {
    v3 = [(PREditingFontAndContentStylePickerViewController *)self components];
    v4 = [(PREditingFontAndContentStylePickerViewController *)self extensionBundleURL];
    v5 = &OBJC_IVAR___PREditorFixedTitleTransition__sourceTitleViewController;
    if (v4)
    {
      v6 = [(PRPosterTitleStyleConfiguration *)self->_titleStyleConfiguration effectiveTimeFontWithExtensionBundleURL:v4 forRole:self->_role];
    }

    else
    {
      v6 = 0;
    }

    v7 = [(PREditingFontAndContentStylePickerViewController *)self delegate];
    LOBYTE(v8) = v3;
    if (v3)
    {
      v62 = v6;
      v9 = [PREditingFontPickerComponentViewController defaultItemsForRole:self->_role titleString:self->_titleString];
      if (![(NSString *)self->_role isEqualToString:@"PRPosterRoleIncomingCall"]&& (objc_opt_respondsToSelector() & 1) != 0)
      {
        v10 = [v7 additionalFontConfigurationsForFontAndContentStylePickerViewController:self];
        if (v10)
        {
          [(PREditingFontAndContentStylePickerViewController *)self setAdditionalFontConfigurations:v10];
          v11 = [v10 bs_map:&__block_literal_global_28];
          [v9 arrayByAddingObjectsFromArray:v11];
          v13 = v12 = v7;

          v9 = v13;
          v7 = v12;
        }
      }

      if (objc_opt_respondsToSelector())
      {
        v72[0] = MEMORY[0x1E69E9820];
        v72[1] = 3221225472;
        v72[2] = __88__PREditingFontAndContentStylePickerViewController_loadComponentViewControllersIfNeeded__block_invoke_2;
        v72[3] = &unk_1E78439B8;
        v73 = v7;
        v74 = self;
        v14 = [v9 bs_filter:v72];

        v9 = v14;
      }

      v15 = [(PRPosterTitleStyleConfiguration *)self->_titleStyleConfiguration timeFontConfiguration];
      v63 = v4;
      v16 = [v15 timeFontConfigurationWithExtensionBundleURL:v4];
      v17 = [v16 customFont];

      v60 = v16;
      v61 = v15;
      if (v17)
      {
        v18 = [v16 customFont];
        v70[0] = MEMORY[0x1E69E9820];
        v70[1] = 3221225472;
        v70[2] = __88__PREditingFontAndContentStylePickerViewController_loadComponentViewControllersIfNeeded__block_invoke_3;
        v70[3] = &unk_1E78439E0;
        v71 = v18;
        v19 = v18;
        v20 = [v9 bs_firstObjectPassingTest:v70];
      }

      else
      {
        v58 = v7;
        v67[0] = MEMORY[0x1E69E9820];
        v67[1] = 3221225472;
        v67[2] = __88__PREditingFontAndContentStylePickerViewController_loadComponentViewControllersIfNeeded__block_invoke_4;
        v67[3] = &unk_1E78439B8;
        v21 = v16;
        v68 = v21;
        v22 = v15;
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
        v7 = v58;
      }

      v23 = [v9 count] > 1;
      v8 = v23 | [(PREditingFontAndContentStylePickerViewController *)self _shouldShowWeightSliderForSelectedFont];
      if (v8)
      {
        v59 = v7;
        v24 = [[PREditingFontPickerComponentViewController alloc] initWithItems:v9 selectedItem:v20 role:self->_role titleString:self->_titleString];
        v25 = [(PRPosterTitleStyleConfiguration *)self->_titleStyleConfiguration timeFontConfiguration];
        v26 = [(PREditingFontAndContentStylePickerViewController *)self extensionBundleURL];
        v27 = [v25 timeFontConfigurationWithExtensionBundleURL:v26];

        v28 = [v27 effectiveFontForRole:self->_role ignoringWeight:1];
        v29 = [v28 pr_variantWeightRange];
        v31 = v30;
        [v27 weight];
        [(PREditingFontPickerComponentViewController *)v24 setFontWeight:(v32 - v29) / (v31 - v29)];
        v33 = [(PRPosterTitleStyleConfiguration *)self->_titleStyleConfiguration timeNumberingSystem];
        if (v33)
        {
          v34 = [(PREditingFontAndContentStylePickerViewController *)self localeWithNumberingSystem:v33];
          [(PREditingFontPickerComponentViewController *)v24 setLocale:v34];
        }

        [(PREditingFontPickerComponentViewController *)v24 setDelegate:self];
        [(PREditingFontAndContentStylePickerViewController *)self setFontPickerController:v24];

        v7 = v59;
      }

      v4 = v63;
      v6 = v62;
      v5 = &OBJC_IVAR___PREditorFixedTitleTransition__sourceTitleViewController;
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

    v35 = [PRTitleAlignmentBarButtonItem alloc];
    v36 = [(PRPosterTitleStyleConfiguration *)self->_titleStyleConfiguration preferredTitleAlignment];
    v37 = v35;
    v5 = &OBJC_IVAR___PREditorFixedTitleTransition__sourceTitleViewController;
    v38 = [(PRTitleAlignmentBarButtonItem *)v37 initWithTitleAlignment:v36 target:self action:sel_didPressTitleAlignmentBarButtonItem_];
    titleAlignmentBarItem = self->_titleAlignmentBarItem;
    self->_titleAlignmentBarItem = v38;

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
    v40 = [PREditingTitleLayoutPickerComponentViewController defaultTitleLayoutsForRole:*(&self->super.super.super.isa + v5[268])];
    v41 = [[PREditingTitleLayoutPickerComponentViewController alloc] initWithTitleLayouts:v40 selectedLayout:[(PRPosterTitleStyleConfiguration *)self->_titleStyleConfiguration preferredTitleLayout]];
    [(PREditingTitleLayoutPickerComponentViewController *)v41 setDelegate:self];
    [(PREditingFontAndContentStylePickerViewController *)self setTitleLayoutPickerController:v41];

    v5 = &OBJC_IVAR___PREditorFixedTitleTransition__sourceTitleViewController;
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
    v42 = [[PREditingContentStylePickerComponentViewController alloc] initWithConfiguration:self->_contentStylePickerConfiguration role:*(&self->super.super.super.isa + v5[268])];
    [(PREditingContentStylePickerComponentViewController *)v42 setDelegate:self];
    [(PREditingContentStylePickerComponentViewController *)v42 setContentsLuminance:self->_contentsLuminance];
    [(PREditingFontAndContentStylePickerViewController *)self setContentStylePickerController:v42];

    if ((v3 & 2) == 0)
    {
LABEL_35:
      self->_hasLoadedComponentViewControllers = 1;

      return;
    }

LABEL_31:
    v43 = v7;
    if ((v3 >> 2) & 1 | v8 & 1)
    {
      v44 = [PREditorNumberingSystemPickerController alloc];
      v45 = [(PRPosterTitleStyleConfiguration *)self->_titleStyleConfiguration effectiveTimeNumberingSystem];
      v46 = [(PREditorNumberingSystemPickerController *)v44 initWithSelectedNumberingSystem:v45 selectedFont:v6];

      [(PREditorNumberingSystemPickerController *)v46 setDelegate:self];
      numberingSystemController = self->_numberingSystemController;
      self->_numberingSystemController = v46;
      v48 = v46;

      v49 = MEMORY[0x1E69DCAB8];
      v50 = [MEMORY[0x1E69DCAD8] configurationWithScale:3];
      v51 = [v49 systemImageNamed:@"globe" withConfiguration:v50];

      v52 = objc_alloc(MEMORY[0x1E69DC708]);
      v53 = [(PREditorNumberingSystemPickerController *)v48 menu];
      v54 = [v52 initWithImage:v51 menu:v53];

      [(UIBarButtonItem *)v54 setHidesSharedBackground:1];
      numberSystemBarItem = self->_numberSystemBarItem;
      self->_numberSystemBarItem = v54;
    }

    else
    {
      v56 = [PREditorNumberingSystemViewController alloc];
      v57 = [(PRPosterTitleStyleConfiguration *)self->_titleStyleConfiguration effectiveTimeNumberingSystem];
      v51 = [(PREditorNumberingSystemViewController *)v56 initWithSelectedNumberingSystem:v57 selectedFont:v6];

      [(PREditorNumberingSystemViewController *)v51 setDelegate:self];
      [(PREditingFontAndContentStylePickerViewController *)self setNumberingSystemViewController:v51];
    }

    v7 = v43;
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
  v3 = [(PREditingFontAndContentStylePickerViewController *)self navigationController];
  v4 = [v3 navigationBar];
  [v4 frame];
  v6 = v5;

  v7 = [(PREditingFontAndContentStylePickerViewController *)self rootStackView];
  [v7 bounds];
  [v3 setPreferredContentSize:{v9, v6 + v8 + -15.0}];
}

- (void)loadView
{
  v100 = *MEMORY[0x1E69E9840];
  [(PREditingFontAndContentStylePickerViewController *)self loadComponentViewControllersIfNeeded];
  v3 = [(PREditingFontAndContentStylePickerViewController *)self navigationController];
  v4 = [v3 navigationBar];
  v5 = [v4 topItem];

  [v5 _setManualScrollEdgeAppearanceProgress:0.0];
  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v7 = [(PREditingFontAndContentStylePickerViewController *)self components];
  if ((v7 & 1) != 0 && (fontPickerController = self->_fontPickerController) != 0)
  {
    v9 = [(PREditingFontPickerComponentViewController *)fontPickerController items];
    v10 = [v9 count];

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
    [v5 setLeftBarButtonItem:self->_titleAlignmentBarItem];
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

  if ((v7 & 2) != 0)
  {
    if (self->_numberingSystemViewController)
    {
      [v6 addObject:?];
    }

    else
    {
      [v5 setLeftBarButtonItem:self->_numberSystemBarItem];
    }
  }

  if ((v7 & 4) != 0)
  {
    [v6 addObject:self->_contentStylePickerController];
  }

  v14 = [(PREditingContentStylePickerComponentViewController *)self->_contentStylePickerController colorWell];
  if (v14)
  {
    numberSystemBarItem = self->_numberSystemBarItem;

    if (!numberSystemBarItem)
    {
      v16 = [(PREditingContentStylePickerComponentViewController *)self->_contentStylePickerController colorWellView];
      v17 = [v16 colorWell];
      [v17 setTranslatesAutoresizingMaskIntoConstraints:0];
      v18 = [objc_alloc(MEMORY[0x1E69DC708]) initWithCustomView:v16];
      [v18 setHidesSharedBackground:1];
      [v5 setLeftBarButtonItem:v18];
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

        v25 = [*(*(&v91 + 1) + 8 * i) view];
        [v25 setTranslatesAutoresizingMaskIntoConstraints:0];
        v26 = [MEMORY[0x1E69DC888] clearColor];
        [v25 setBackgroundColor:v26];

        [v19 addObject:v25];
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
  v65 = v5;

  [v27 setAxis:1];
  [v27 setSpacing:48.0];
  [v27 setTranslatesAutoresizingMaskIntoConstraints:0];
  v34 = [MEMORY[0x1E69DC888] clearColor];
  [v27 setBackgroundColor:v34];

  [(PREditingFontAndContentStylePickerViewController *)self setRootStackView:v27];
  v35 = objc_alloc_init(MEMORY[0x1E69DD250]);
  v36 = objc_opt_new();
  [v35 _setBackground:v36];

  [v35 addSubview:v27];
  [(PREditingFontAndContentStylePickerViewController *)self setView:v35];
  v73 = MEMORY[0x1E696ACD8];
  v79 = [v27 leadingAnchor];
  v81 = [v35 safeAreaLayoutGuide];
  v77 = [v81 leadingAnchor];
  v75 = [v79 constraintEqualToAnchor:v77];
  v97[0] = v75;
  v37 = [v27 trailingAnchor];
  [v35 safeAreaLayoutGuide];
  v38 = v68 = v28;
  v39 = [v38 trailingAnchor];
  v40 = [v37 constraintEqualToAnchor:v39];
  v97[1] = v40;
  v67 = v27;
  v41 = [v27 topAnchor];
  v66 = v35;
  v42 = [v35 safeAreaLayoutGuide];
  v43 = [v42 topAnchor];
  v44 = [v41 constraintEqualToAnchor:v43 constant:7.0];
  v97[2] = v44;
  v45 = [MEMORY[0x1E695DEC8] arrayWithObjects:v97 count:3];
  [v73 activateConstraints:v45];

  if ([v68 count] == 1)
  {
    v46 = [v68 firstObject];
    v47 = [(PREditingFontAndContentStylePickerViewController *)self numberingSystemViewController];

    if (v46 == v47)
    {
      v48 = [v67 bottomAnchor];
      v49 = [v66 safeAreaLayoutGuide];
      v50 = [v49 bottomAnchor];
      v51 = [v48 constraintEqualToAnchor:v50];

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
        v56 = [MEMORY[0x1E69DC888] separatorColor];
        [v55 setBackgroundColor:v56];

        [v55 setTranslatesAutoresizingMaskIntoConstraints:0];
        [v54 addSubview:v55];
        v74 = MEMORY[0x1E696ACD8];
        v82 = [v55 heightAnchor];
        v80 = [v82 constraintEqualToConstant:1.0];
        v95[0] = v80;
        v78 = [v55 leadingAnchor];
        v76 = [v54 leadingAnchor];
        v57 = [v78 constraintEqualToAnchor:v76];
        v95[1] = v57;
        v58 = [v55 trailingAnchor];
        v59 = [v54 trailingAnchor];
        v60 = [v58 constraintEqualToAnchor:v59];
        v95[2] = v60;
        v61 = [v55 bottomAnchor];
        v62 = [v54 topAnchor];
        v63 = [v61 constraintEqualToAnchor:v62 constant:-24.0];
        v95[3] = v63;
        v64 = [MEMORY[0x1E695DEC8] arrayWithObjects:v95 count:4];
        [v74 activateConstraints:v64];
      }

      v72 = [obj countByEnumeratingWithState:&v83 objects:v96 count:16];
    }

    while (v72);
  }
}

- (void)traitCollectionDidChange:(id)a3
{
  v10.receiver = self;
  v10.super_class = PREditingFontAndContentStylePickerViewController;
  v4 = a3;
  [(PREditingFontAndContentStylePickerViewController *)&v10 traitCollectionDidChange:v4];
  v5 = [v4 userInterfaceStyle];

  v6 = [(PREditingFontAndContentStylePickerViewController *)self traitCollection];
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
    v3 = [(PRPosterTitleStyleConfiguration *)self->_titleStyleConfiguration timeFontConfiguration];
    v4 = [(PREditingFontAndContentStylePickerViewController *)self extensionBundleURL];
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
  if ([(PREditingFontAndContentStylePickerViewController *)self isViewLoaded])
  {
    contentStylePickerController = self->_contentStylePickerController;

    [(PREditingContentStylePickerComponentViewController *)contentStylePickerController setContentsLuminance:a3];
  }
}

- (void)_closeButtonTapped:(id)a3
{
  [(PREditingFontAndContentStylePickerViewController *)self _signalDelegateDidFinish];

  [(PREditingFontAndContentStylePickerViewController *)self dismissViewControllerAnimated:1 completion:0];
}

- (void)_signalDelegateDidFinish
{
  v3 = [(PREditingFontAndContentStylePickerViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v3 fontAndContentStylePickerViewControllerDidFinish:self];
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
  v4 = [(PREditingFontAndContentStylePickerViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [(PREditingFontAndContentStylePickerViewController *)self desiredDetent];
    [v4 fontAndContentStylePickerViewController:self didUpdateDesiredDetent:?];
  }
}

- (void)fontPickerComponentViewController:(id)a3 didChangeFontWeight:(double)a4
{
  v6 = [(PRPosterTitleStyleConfiguration *)self->_titleStyleConfiguration timeFontConfiguration];
  v7 = [(PREditingFontAndContentStylePickerViewController *)self extensionBundleURL];
  v16 = [v6 timeFontConfigurationWithExtensionBundleURL:v7];

  v8 = [v16 effectiveFontForRole:self->_role ignoringWeight:1];
  v9 = [v8 pr_variantWeightRange];
  v11 = v10;
  v12 = [(PREditingFontAndContentStylePickerViewController *)self changeHandler];
  if (v12)
  {
    v13 = v11 * a4 + (1.0 - a4) * v9;
    v14 = objc_alloc_init(PREditingFontAndContentStylePickerSelectionChange);
    v15 = [MEMORY[0x1E696AD98] numberWithDouble:v13];
    [(PREditingFontAndContentStylePickerSelectionChange *)v14 setFontWeight:v15];

    (v12)[2](v12, v14);
  }
}

- (void)fontPickerComponentViewController:(id)a3 didSelectItem:(id)a4
{
  v28 = a3;
  v6 = a4;
  v7 = [v6 fontConfiguration];
  v8 = [v7 effectiveFontForRole:self->_role];

  [(PREditorNumberingSystemPickerController *)self->_numberingSystemController setFont:v8];
  v9 = [(PREditorNumberingSystemPickerController *)self->_numberingSystemController menu];
  [(UIBarButtonItem *)self->_numberSystemBarItem setMenu:v9];
  v10 = [(PREditingFontAndContentStylePickerViewController *)self changeHandler];
  if (v10)
  {
    v11 = [(PREditingFontAndContentStylePickerViewController *)self additionalFontConfigurations];
    v12 = [v6 fontConfiguration];
    v13 = [v11 containsObject:v12];

    v14 = [v6 fontConfiguration];
    v15 = [v14 timeFontIdentifier];

    if ((v13 & 1) != 0 || v15 == @"PRTimeFontIdentifierRail")
    {
      v21 = [v6 fontConfiguration];
      [v21 weight];
      v20 = v22;
    }

    else
    {
      v16 = [v8 pr_variantWeightRange];
      v18 = v17;
      [v28 fontWeight];
      v20 = v19 * v18 + (1.0 - v19) * v16;
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
    [(PREditingFontAndContentStylePickerSelectionChange *)v25 setTimeFontIdentifier:v15];
    v26 = [MEMORY[0x1E696AD98] numberWithDouble:v20];
    [(PREditingFontAndContentStylePickerSelectionChange *)v25 setFontWeight:v26];

    v27 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v6, "isSystemItem")}];
    [(PREditingFontAndContentStylePickerSelectionChange *)v25 setSystemItem:v27];

    [(PREditingFontAndContentStylePickerSelectionChange *)v25 setCustomFont:v24];
    (v10)[2](v10, v25);
  }
}

- (void)titleLayoutPickerComponentViewController:(id)a3 didSelectTitleLayout:(unint64_t)a4 userSelected:(BOOL)a5
{
  v5 = a4;
  v7 = [PRIncomingCallMetricsProvider maxVerticalTextLength:a3];
  if (PRPosterTitleLayoutIsVertical(v5))
  {
    v8 = [(PREditingFontAndContentStylePickerViewController *)self titleString];
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
      [(PREditingFontAndContentStylePickerViewController *)self presentViewController:v17 animated:1 completion:0];

      v5 = 0;
    }
  }

  v22 = [(PREditingFontAndContentStylePickerViewController *)self titleLayoutPickerController];
  [v22 setSelectedTitleLayout:v5];

  v23 = [(PREditingFontAndContentStylePickerViewController *)self changeHandler];
  if (v23)
  {
    v26 = v23;
    v24 = objc_alloc_init(PREditingFontAndContentStylePickerSelectionChange);
    v25 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v5];
    [(PREditingFontAndContentStylePickerSelectionChange *)v24 setPreferredTitleLayout:v25];

    v26[2](v26, v24);
    v23 = v26;
  }
}

- (void)numberingSystemPickerController:(id)a3 didSelectNumberingSystem:(id)a4
{
  v6 = a4;
  v7 = [a3 displayLocale];
  [(PREditingFontAndContentStylePickerViewController *)self numberingSystemWasChanged:v6 locale:v7];
}

- (void)numberingSystemViewController:(id)a3 didSelectNumberingSystem:(id)a4
{
  v6 = a4;
  v7 = [a3 displayLocale];
  [(PREditingFontAndContentStylePickerViewController *)self numberingSystemWasChanged:v6 locale:v7];
}

- (void)numberingSystemWasChanged:(id)a3 locale:(id)a4
{
  v13 = a3;
  v6 = a4;
  v7 = [(PREditingFontAndContentStylePickerViewController *)self fontPickerController];
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

  v11 = [(PREditingFontAndContentStylePickerViewController *)self changeHandler];
  if (v11)
  {
    v12 = objc_alloc_init(PREditingFontAndContentStylePickerSelectionChange);
    [(PREditingFontAndContentStylePickerSelectionChange *)v12 setNumberingSystem:v13];
    (v11)[2](v11, v12);
  }
}

- (void)didPressTitleAlignmentBarButtonItem:(id)a3
{
  v4 = [(PRTitleAlignmentBarButtonItem *)self->_titleAlignmentBarItem toggle];
  v5 = [(PREditingFontAndContentStylePickerViewController *)self changeHandler];
  if (v5)
  {
    v8 = v5;
    v6 = objc_alloc_init(PREditingFontAndContentStylePickerSelectionChange);
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v4];
    [(PREditingFontAndContentStylePickerSelectionChange *)v6 setPreferredTitleAlignment:v7];

    v8[2](v8, v6);
    v5 = v8;
  }
}

- (void)contentStylePickerComponentViewController:(id)a3 didSelectStyle:(id)a4 isSuggestedStyle:(BOOL)a5 userSelected:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v9 = a4;
  if (v6)
  {
    v13 = v9;
    v10 = [(PREditingFontAndContentStylePickerViewController *)self changeHandler];
    if (v10)
    {
      v11 = objc_alloc_init(PREditingFontAndContentStylePickerSelectionChange);
      [(PREditingFontAndContentStylePickerSelectionChange *)v11 setContentStyle:v13];
      v12 = [MEMORY[0x1E696AD98] numberWithBool:v7];
      [(PREditingFontAndContentStylePickerSelectionChange *)v11 setSuggestedContentStyle:v12];

      (v10)[2](v10, v11);
    }

    v9 = v13;
  }
}

- (void)contentStylePickerComponentViewControllerDidChangeHeight:(id)a3
{
  v4 = [(PREditingFontAndContentStylePickerViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [(PREditingFontAndContentStylePickerViewController *)self desiredDetent];
    [v4 fontAndContentStylePickerViewController:self didUpdateDesiredDetent:?];
  }
}

- (id)contentStylePickerComponentViewController:(id)a3 coordinatorForStyle:(id)a4 isSuggested:(BOOL)a5
{
  v5 = a5;
  v7 = a4;
  v8 = [(PREditingFontAndContentStylePickerViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v9 = [v8 fontAndContentStylePickerViewController:self coordinatorForStyle:v7 isSuggested:v5];
  }

  else
  {
    v9 = 0;
  }

  return v9;
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

- (PREditingFontAndContentStylePickerViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end