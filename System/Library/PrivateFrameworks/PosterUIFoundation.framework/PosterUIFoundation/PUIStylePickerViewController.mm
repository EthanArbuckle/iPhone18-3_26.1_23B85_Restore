@interface PUIStylePickerViewController
- (BOOL)_shouldShowWeightSliderForSelectedFont;
- (PUIStylePickerViewController)initWithComponents:(id)a3 previewTextString:(id)a4;
- (PUIStylePickerViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (PUIStylePickerViewController)initWithStylePickerConfiguration:(id)a3;
- (PUIStylePickerViewControllerDelegate)delegate;
- (double)desiredDetent;
- (id)componentViewControllers;
- (id)stylePickerComponentViewController:(id)a3 coordinatorForStyle:(id)a4 isSuggested:(BOOL)a5;
- (void)_closeButtonTapped:(id)a3;
- (void)_didPressTextAlignmentBarButtonItem:(id)a3;
- (void)_notifyChangeHandlersOfChange:(id)a3;
- (void)_notifyClientsOfChangedNumberingSystem:(id)a3;
- (void)_notifyClientsOfPickerConfigurationUpdate:(id)a3;
- (void)_notifyDelegateRespondingToSelector:(SEL)a3 handler:(id)a4;
- (void)_notifyObserversOfChangedDesiredDetent;
- (void)_notifyObserversRespondingToSelector:(SEL)a3 enumerator:(id)a4;
- (void)_refreshBarButtonItems;
- (void)_refreshComponentViewControllers;
- (void)_setupComponentViewControllersIfNeeded;
- (void)_signalDelegateDidFinish;
- (void)_signalDelegateWillFinish;
- (void)_updatePreferredContentSize;
- (void)_updateViews;
- (void)addObserver:(id)a3;
- (void)fontPickerComponentViewController:(id)a3 didChangeFontWeight:(double)a4;
- (void)fontPickerComponentViewController:(id)a3 didSelectItem:(id)a4;
- (void)homeScreenComponentViewController:(id)a3 didBeginEyedropperSessionForHomeScreenConfiguration:(id)a4;
- (void)homeScreenComponentViewController:(id)a3 didUpdateHomeScreenConfiguration:(id)a4;
- (void)loadView;
- (void)removeObserver:(id)a3;
- (void)setCenterBarButtonItems:(id)a3;
- (void)setContentsLuminance:(double)a3;
- (void)setLeadingBarButtonItems:(id)a3;
- (void)setTrailingBarButtonItems:(id)a3;
- (void)stylePickerComponentViewController:(id)a3 didSelectStyle:(id)a4 isSuggestedStyle:(BOOL)a5 userSelected:(BOOL)a6;
- (void)textLayoutPickerComponentViewController:(id)a3 didSelectTextLayout:(unint64_t)a4 userSelected:(BOOL)a5;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewLayoutMarginsDidChange;
- (void)viewSafeAreaInsetsDidChange;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation PUIStylePickerViewController

- (PUIStylePickerViewController)initWithStylePickerConfiguration:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    [(PUIStylePickerViewController *)a2 initWithStylePickerConfiguration:?];
  }

  v6 = v5;
  v7 = [v5 components];
  if ([v7 numberOfComponents])
  {
    v16.receiver = self;
    v16.super_class = PUIStylePickerViewController;
    v8 = [(PUIStylePickerViewController *)&v16 initWithNibName:0 bundle:0];
    if (v8)
    {
      [v6 defaultContentsLuminance];
      v8->_contentsLuminance = v9;
      v10 = [v6 copy];
      stylePickerConfiguration = v8->_stylePickerConfiguration;
      v8->_stylePickerConfiguration = v10;

      v12 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
      observers = v8->_observers;
      v8->_observers = v12;
    }

    self = v8;
    v14 = self;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (PUIStylePickerViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v5 = [PUIStylePickerConfiguration defaultStylePickerConfigurationForRole:*MEMORY[0x1E69C5220], a4];
  v6 = [(PUIStylePickerViewController *)self initWithStylePickerConfiguration:v5];

  return v6;
}

- (PUIStylePickerViewController)initWithComponents:(id)a3 previewTextString:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [PUIStylePickerConfiguration alloc];
  v9 = [(PUIStylePickerConfiguration *)v8 initWithPreviewTextString:v6 defaultRole:*MEMORY[0x1E69C5220] components:v7 defaultPreferredTimeMaxY:0 defaultContentsLuminance:0 styleConfiguration:0.0 textLayoutConfiguration:0.5];

  v10 = [(PUIStylePickerViewController *)self initWithStylePickerConfiguration:v9];
  return v10;
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = PUIStylePickerViewController;
  [(PUIStylePickerViewController *)&v3 viewDidLayoutSubviews];
  [(PUIStylePickerViewController *)self _updatePreferredContentSize];
}

- (void)viewSafeAreaInsetsDidChange
{
  v3.receiver = self;
  v3.super_class = PUIStylePickerViewController;
  [(PUIStylePickerViewController *)&v3 viewSafeAreaInsetsDidChange];
  [(PUIStylePickerViewController *)self _updatePreferredContentSize];
}

- (void)viewLayoutMarginsDidChange
{
  v3.receiver = self;
  v3.super_class = PUIStylePickerViewController;
  [(PUIStylePickerViewController *)&v3 viewLayoutMarginsDidChange];
  [(PUIStylePickerViewController *)self _updatePreferredContentSize];
}

- (void)_updatePreferredContentSize
{
  v9 = [(PUIStylePickerViewController *)self navigationController];
  if (v9)
  {
    v3 = [v9 navigationBar];
    [v3 frame];
    v5 = v4;

    v6 = [(PUIStylePickerViewController *)self rootStackView];
    [v6 bounds];
    [v9 setPreferredContentSize:{v8, v5 + v7 + -15.0}];
  }

  [(PUIStylePickerViewController *)self _notifyObserversOfChangedDesiredDetent];
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = PUIStylePickerViewController;
  [(PUIStylePickerViewController *)&v4 viewWillAppear:a3];
  self->_hasNotifiedDelegateOfDismissal = 0;
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = PUIStylePickerViewController;
  [(PUIStylePickerViewController *)&v4 viewWillDisappear:a3];
  [(PUIStylePickerViewController *)self _signalDelegateWillFinish];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = PUIStylePickerViewController;
  [(PUIStylePickerViewController *)&v4 viewDidDisappear:a3];
  if (!self->_hasNotifiedDelegateOfDismissal)
  {
    [(PUIStylePickerViewController *)self _signalDelegateDidFinish];
  }
}

- (void)loadView
{
  v15[1] = *MEMORY[0x1E69E9840];
  [(PUIStylePickerViewController *)self _setupComponentViewControllersIfNeeded];
  v3 = [(PUIStylePickerViewController *)self rootStackView];
  if (!v3)
  {
    v4 = objc_alloc(MEMORY[0x1E69DCF90]);
    v3 = [v4 initWithArrangedSubviews:MEMORY[0x1E695E0F0]];
    [v3 setAxis:1];
    [v3 setSpacing:48.0];
    [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(PUIStylePickerViewController *)self setRootStackView:v3];
  }

  v5 = [(PUIStylePickerViewController *)self backgroundView];
  if ((PUIFeatureEnabled(11) & 1) == 0 && !v5)
  {
    v6 = objc_alloc(MEMORY[0x1E69DD298]);
    v7 = [MEMORY[0x1E69DC730] effectWithStyle:8];
    v5 = [v6 initWithEffect:v7];

    [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(PUIStylePickerViewController *)self setBackgroundView:v5];
  }

  if (![(PUIStylePickerViewController *)self isViewLoaded]|| ([(PUIStylePickerViewController *)self view], (v8 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v8 = objc_alloc_init(MEMORY[0x1E69DD250]);
    [(PUIStylePickerViewController *)self setView:v8];
  }

  if ((PUIFeatureEnabled(11) & 1) == 0)
  {
    [v8 addSubview:v5];
  }

  [v8 addSubview:v3];
  [(PUIStylePickerViewController *)self _updateViews];
  [(PUIStylePickerViewController *)self _refreshComponentViewControllers];
  [(PUIStylePickerViewController *)self _refreshBarButtonItems];
  objc_initWeak(&location, self);
  v9 = objc_opt_self();
  v15[0] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __40__PUIStylePickerViewController_loadView__block_invoke;
  v12[3] = &unk_1E7856598;
  objc_copyWeak(&v13, &location);
  v11 = [(PUIStylePickerViewController *)self registerForTraitChanges:v10 withHandler:v12];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

void __40__PUIStylePickerViewController_loadView__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v2 = [WeakRetained numberSystemBarItem];
    v3 = [v5 numberingSystemPickerMenuController];
    v4 = [v3 menu];
    [v2 setMenu:v4];

    WeakRetained = v5;
  }
}

- (double)desiredDetent
{
  [(PUIStylePickerViewController *)self _refreshComponentViewControllers];
  [(PUIStylePickerViewController *)self additionalSafeAreaInsets];
  v4 = v3;
  v6 = v5;
  v7 = [(PUIStylePickerViewController *)self stylePickerConfiguration];
  v8 = [v7 components];
  if ([v8 containsComponent:1])
  {
    v9 = [(PUIStylePickerViewController *)self fontPickerComponentViewController];
    v10 = v9 != 0;
  }

  else
  {
    v10 = 0;
  }

  if ([v8 containsComponent:8])
  {
    v11 = [(PUIStylePickerViewController *)self textLayoutPickerComponentViewController];
    v12 = v11 != 0;
  }

  else
  {
    v12 = 0;
  }

  if ([v8 containsComponent:4])
  {
    v13 = [(PUIStylePickerViewController *)self stylePickerComponentViewController];
    v14 = v13 != 0;
  }

  else
  {
    v14 = 0;
  }

  if ([v8 containsComponent:2])
  {
    v15 = [(PUIStylePickerViewController *)self numberingSystemPickerComponentViewController];
    v16 = v15 != 0;
  }

  else
  {
    v16 = 0;
  }

  if ([v8 containsComponent:32])
  {
    v17 = [(PUIStylePickerViewController *)self homeScreenComponentViewController];
    v18 = v17 != 0;
  }

  else
  {
    v18 = 0;
  }

  v19 = v4 + v6;
  if (v16)
  {
    v20 = [(PUIStylePickerViewController *)self numberingSystemPickerComponentViewController];
    [v20 estimatedHeight];
    v19 = v19 + v21;

    v22 = 1;
    if (!v10)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v22 = 0;
    if (!v10)
    {
      goto LABEL_22;
    }
  }

  v23 = [(PUIStylePickerViewController *)self fontPickerComponentViewController];
  [v23 estimatedHeight];
  v19 = v19 + v24;

  ++v22;
  if (v14)
  {
    v19 = v19 + 48.0;
  }

LABEL_22:
  if (!v12)
  {
    if (!v14)
    {
      goto LABEL_24;
    }

LABEL_27:
    v29 = [(PUIStylePickerViewController *)self stylePickerComponentViewController];
    [v29 estimatedHeight];
    v19 = v19 + v30;

    v22 = 1;
    if (v18)
    {
      goto LABEL_25;
    }

    goto LABEL_28;
  }

  v27 = [(PUIStylePickerViewController *)self textLayoutPickerComponentViewController];
  [v27 estimatedHeight];
  v19 = v19 + v28;

  ++v22;
  if (v14)
  {
    goto LABEL_27;
  }

LABEL_24:
  if (v18)
  {
LABEL_25:
    v25 = [(PUIStylePickerViewController *)self homeScreenComponentViewController];
    [v25 estimatedHeight];
    v19 = v19 + v26;

    goto LABEL_30;
  }

LABEL_28:
  if (!v22)
  {
    v19 = v19 + 100.0;
  }

LABEL_30:
  v31 = [(PUIStylePickerViewController *)self navigationController];

  if (v31)
  {
    v19 = v19 + 44.0;
  }

  [v7 edgeInsets];
  if (v35 == *(MEMORY[0x1E69DC5C0] + 8) && v32 == *MEMORY[0x1E69DC5C0] && v34 == *(MEMORY[0x1E69DC5C0] + 24))
  {
    v36 = v19 + v32 + v33;
    if (v33 != *(MEMORY[0x1E69DC5C0] + 16))
    {
      v19 = v36;
    }
  }

  else
  {
    v19 = v19 + v32 + v33;
  }

  return v19;
}

- (BOOL)_shouldShowWeightSliderForSelectedFont
{
  v3 = [(PUIStylePickerViewController *)self stylePickerConfiguration];
  v4 = [v3 textLayoutConfiguration];
  v5 = [v4 fontConfiguration];

  v6 = [(PUIStylePickerViewController *)self extensionBundleURL];
  v7 = [v5 PUIFontWithExtensionBundleURL:v6];

  if ([v5 isSystemItem])
  {
    v8 = [v7 fontIdentifier];
    v9 = [v8 isEqual:@"PRTimeFontIdentifierRail"] ^ 1;
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9;
}

- (void)setContentsLuminance:(double)a3
{
  if ((BSEqualDoubles() & 1) == 0)
  {
    self->_contentsLuminance = a3;
    v5 = [(PUIStylePickerViewController *)self stylePickerComponentViewController];

    if (v5)
    {
      v6 = [(PUIStylePickerViewController *)self stylePickerComponentViewController];
      [v6 setContentsLuminance:a3];
    }
  }
}

- (void)setTrailingBarButtonItems:(id)a3
{
  v6 = a3;
  if (([(NSArray *)self->_trailingBarButtonItems isEqual:?]& 1) == 0)
  {
    v4 = [v6 copy];
    trailingBarButtonItems = self->_trailingBarButtonItems;
    self->_trailingBarButtonItems = v4;

    [(PUIStylePickerViewController *)self _refreshBarButtonItems];
  }
}

- (void)setLeadingBarButtonItems:(id)a3
{
  v6 = a3;
  if (([(NSArray *)self->_leadingBarButtonItems isEqual:?]& 1) == 0)
  {
    v4 = [v6 copy];
    leadingBarButtonItems = self->_leadingBarButtonItems;
    self->_leadingBarButtonItems = v4;

    [(PUIStylePickerViewController *)self _refreshBarButtonItems];
  }
}

- (void)setCenterBarButtonItems:(id)a3
{
  v6 = a3;
  if (([(NSArray *)self->_centerBarButtonItems isEqual:?]& 1) == 0)
  {
    v4 = [v6 copy];
    centerBarButtonItems = self->_centerBarButtonItems;
    self->_centerBarButtonItems = v4;

    [(PUIStylePickerViewController *)self _refreshBarButtonItems];
  }
}

- (void)fontPickerComponentViewController:(id)a3 didChangeFontWeight:(double)a4
{
  v6 = [(PUIStylePickerViewController *)self stylePickerConfiguration];
  v7 = [v6 textLayoutConfiguration];
  v8 = [v7 fontConfiguration];
  v9 = [(PUIStylePickerViewController *)self extensionBundleURL];
  v10 = [v8 PUIFontWithExtensionBundleURL:v9];

  v11 = [v6 defaultRole];
  v12 = [v10 effectiveFontForRole:v11 ignoringWeight:1];

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __86__PUIStylePickerViewController_fontPickerComponentViewController_didChangeFontWeight___block_invoke;
  v14[3] = &unk_1E78565C0;
  v15 = v12;
  v16 = a4;
  v13 = v12;
  [(PUIStylePickerViewController *)self _notifyChangeHandlersOfChange:v14];
}

void __86__PUIStylePickerViewController_fontPickerComponentViewController_didChangeFontWeight___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 pui_variantWeightRange];
  v7 = [MEMORY[0x1E696AD98] numberWithDouble:*(a1 + 40) * v6 + (1.0 - *(a1 + 40)) * v5];
  [v4 setFontWeight:v7];
}

- (void)fontPickerComponentViewController:(id)a3 didSelectItem:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PUIStylePickerViewController *)self stylePickerConfiguration];
  v9 = [v8 defaultRole];
  v10 = [(PUIStylePickerViewController *)self numberingSystemPickerMenuController];
  v11 = [(PUIStylePickerViewController *)self numberSystemBarItem];
  v12 = [v7 font];
  v13 = [v12 effectiveFontForRole:v9];

  [v10 setFont:v13];
  v14 = [(PUIStylePickerViewController *)self numberingSystemPickerMenuController];
  v15 = [v14 menu];

  [v11 setMenu:v15];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __80__PUIStylePickerViewController_fontPickerComponentViewController_didSelectItem___block_invoke;
  v19[3] = &unk_1E78565E8;
  v19[4] = self;
  v20 = v7;
  v21 = v13;
  v22 = v6;
  v16 = v6;
  v17 = v13;
  v18 = v7;
  [(PUIStylePickerViewController *)self _notifyChangeHandlersOfChange:v19];
}

void __80__PUIStylePickerViewController_fontPickerComponentViewController_didSelectItem___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 additionalFonts];
  v6 = [*(a1 + 40) font];
  v7 = [v5 containsObject:v6];

  v8 = [*(a1 + 40) font];
  v20 = [v8 fontIdentifier];

  if ((v7 & 1) != 0 || v20 == @"PRTimeFontIdentifierRail")
  {
    v15 = [*(a1 + 40) font];
    [v15 weight];
    v13 = v16;

    if (!v7)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v9 = [*(a1 + 48) pui_variantWeightRange];
    v11 = v10;
    [*(a1 + 56) fontWeight];
    v13 = v12 * v11 + (1.0 - v12) * v9;
    if (!v7)
    {
LABEL_4:
      v14 = 0;
      goto LABEL_7;
    }
  }

  v14 = *(a1 + 48);
LABEL_7:
  v17 = v14;
  [v4 setFontIdentifier:v20];
  v18 = [MEMORY[0x1E696AD98] numberWithDouble:v13];
  [v4 setFontWeight:v18];

  v19 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(*(a1 + 40), "isSystemItem")}];
  [v4 setSystemItem:v19];

  [v4 setCustomFont:v17];
}

- (void)textLayoutPickerComponentViewController:(id)a3 didSelectTextLayout:(unint64_t)a4 userSelected:(BOOL)a5
{
  v5 = a4;
  v7 = [(PUIStylePickerViewController *)self stylePickerConfiguration:a3];
  v8 = [v7 previewTextString];

  v9 = +[PUITextLayoutConfiguration maximumVerticalTextCharacters];
  if (PUITextLayoutIsVertical(v5) && [v8 length] > v9)
  {
    v10 = MEMORY[0x1E696AEC0];
    v11 = PUIBundle();
    v12 = [v11 localizedStringForKey:@"CANNOT_CHANGE_LAYOUT_EXPLANATION" value:&stru_1F1C6DED8 table:0];
    v13 = [v10 stringWithFormat:v12, v9];

    v14 = MEMORY[0x1E69DC650];
    v15 = PUIBundle();
    v16 = [v15 localizedStringForKey:@"CANNOT_CHANGE_LAYOUT" value:&stru_1F1C6DED8 table:0];
    v17 = [v14 alertControllerWithTitle:v16 message:v13 preferredStyle:1];

    v18 = MEMORY[0x1E69DC648];
    v19 = PUIBundle();
    v20 = [v19 localizedStringForKey:@"CANNOT_CHANGE_LAYOUT_DISMISS_ACTION" value:&stru_1F1C6DED8 table:0];
    v21 = [v18 actionWithTitle:v20 style:0 handler:0];

    [v17 addAction:v21];
    [(PUIStylePickerViewController *)self presentViewController:v17 animated:1 completion:0];

    v5 = 0;
  }

  v22 = [(PUIStylePickerViewController *)self textLayoutPickerComponentViewController];
  [v22 setSelectedLayout:v5];

  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __105__PUIStylePickerViewController_textLayoutPickerComponentViewController_didSelectTextLayout_userSelected___block_invoke;
  v23[3] = &__block_descriptor_40_e39_v16__0__PUIStylePickerSelectionChange_8l;
  v23[4] = v5;
  [(PUIStylePickerViewController *)self _notifyChangeHandlersOfChange:v23];
}

void __105__PUIStylePickerViewController_textLayoutPickerComponentViewController_didSelectTextLayout_userSelected___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AD98];
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v2 numberWithUnsignedInteger:v3];
  [v4 setPreferredLayout:v5];
}

- (void)stylePickerComponentViewController:(id)a3 didSelectStyle:(id)a4 isSuggestedStyle:(BOOL)a5 userSelected:(BOOL)a6
{
  v6 = a6;
  v9 = a4;
  v10 = v9;
  if (v6)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __112__PUIStylePickerViewController_stylePickerComponentViewController_didSelectStyle_isSuggestedStyle_userSelected___block_invoke;
    v11[3] = &unk_1E7856630;
    v12 = v9;
    v13 = a5;
    [(PUIStylePickerViewController *)self _notifyChangeHandlersOfChange:v11];
  }
}

void __112__PUIStylePickerViewController_stylePickerComponentViewController_didSelectStyle_isSuggestedStyle_userSelected___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setStyle:v3];
  v5 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 40)];
  [v4 setSuggestedStyle:v5];
}

- (id)stylePickerComponentViewController:(id)a3 coordinatorForStyle:(id)a4 isSuggested:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__8;
  v21 = __Block_byref_object_dispose__8;
  v22 = 0;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __99__PUIStylePickerViewController_stylePickerComponentViewController_coordinatorForStyle_isSuggested___block_invoke;
  v13[3] = &unk_1E7856658;
  v15 = &v17;
  v13[4] = self;
  v10 = v9;
  v14 = v10;
  v16 = a5;
  [(PUIStylePickerViewController *)self _notifyDelegateRespondingToSelector:sel_stylePickerViewController_coordinatorForStyle_isSuggested_ handler:v13];
  v11 = v18[5];

  _Block_object_dispose(&v17, 8);

  return v11;
}

uint64_t __99__PUIStylePickerViewController_stylePickerComponentViewController_coordinatorForStyle_isSuggested___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 stylePickerViewController:*(a1 + 32) coordinatorForStyle:*(a1 + 40) isSuggested:*(a1 + 56)];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x1EEE66BB8](v3, v5);
}

- (void)homeScreenComponentViewController:(id)a3 didUpdateHomeScreenConfiguration:(id)a4
{
  v5 = a4;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __99__PUIStylePickerViewController_homeScreenComponentViewController_didUpdateHomeScreenConfiguration___block_invoke;
  v7[3] = &unk_1E7856680;
  v8 = v5;
  v6 = v5;
  [(PUIStylePickerViewController *)self _notifyClientsOfPickerConfigurationUpdate:v7];
}

- (void)homeScreenComponentViewController:(id)a3 didBeginEyedropperSessionForHomeScreenConfiguration:(id)a4
{
  v5 = a4;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __118__PUIStylePickerViewController_homeScreenComponentViewController_didBeginEyedropperSessionForHomeScreenConfiguration___block_invoke;
  v7[3] = &unk_1E78566A8;
  v7[4] = self;
  v8 = v5;
  v6 = v5;
  [(PUIStylePickerViewController *)self _notifyDelegateRespondingToSelector:sel_stylePickerViewController_startedMagnificationSessionForHomeScreenConfiguration_ handler:v7];
}

- (void)addObserver:(id)a3
{
  if (a3)
  {
    [(NSHashTable *)self->_observers addObject:?];
  }
}

- (void)removeObserver:(id)a3
{
  if (a3)
  {
    [(NSHashTable *)self->_observers removeObject:?];
  }
}

- (void)_notifyDelegateRespondingToSelector:(SEL)a3 handler:(id)a4
{
  v5 = a4;
  if (v5)
  {
    v7 = v5;
    v6 = [(PUIStylePickerViewController *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      v7[2](v7, v6);
    }

    v5 = v7;
  }
}

- (void)_notifyObserversRespondingToSelector:(SEL)a3 enumerator:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a4;
  if (v5)
  {
    v6 = [(PUIStylePickerViewController *)self delegate];
    if ((objc_opt_respondsToSelector() & 1) == 0 || (v17 = 0, v5[2](v5, v6, &v17), (v17 & 1) == 0))
    {
      v15 = 0u;
      v16 = 0u;
      v13 = 0u;
      v14 = 0u;
      v7 = [(PUIStylePickerViewController *)self observers];
      v8 = [v7 countByEnumeratingWithState:&v13 objects:v18 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v14;
LABEL_6:
        v11 = 0;
        while (1)
        {
          if (*v14 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v13 + 1) + 8 * v11);
          if (objc_opt_respondsToSelector())
          {
            v17 = 0;
            v5[2](v5, v12, &v17);
            if (v17)
            {
              break;
            }
          }

          if (v9 == ++v11)
          {
            v9 = [v7 countByEnumeratingWithState:&v13 objects:v18 count:16];
            if (v9)
            {
              goto LABEL_6;
            }

            break;
          }
        }
      }
    }
  }
}

- (void)_notifyChangeHandlersOfChange:(id)a3
{
  v4 = a3;
  v5 = [(PUIStylePickerViewController *)self changeHandler];
  v6 = objc_alloc_init(PUIStylePickerSelectionChange);
  v4[2](v4, v6);

  if ([(PUIStylePickerSelectionChange *)v6 hasChanges])
  {
    if (v5)
    {
      (v5)[2](v5, v6);
    }

    v7 = [(PUIStylePickerViewController *)self stylePickerConfiguration];
    v8 = [(PUIStylePickerSelectionChange *)v6 fontIdentifier];
    v9 = [(PUIStylePickerSelectionChange *)v6 preferredAlignment];
    v10 = [(PUIStylePickerSelectionChange *)v6 preferredLayout];
    v11 = [(PUIStylePickerSelectionChange *)v6 fontWeight];
    v12 = [(PUIStylePickerSelectionChange *)v6 customFont];
    v13 = [(PUIStylePickerSelectionChange *)v6 numberingSystem];
    v14 = [(PUIStylePickerSelectionChange *)v6 isSystemItem];
    v43 = v11;
    v44 = v10;
    v46 = v13;
    v47 = v12;
    v45 = v14;
    if (v9 || v10 || v13 || v8 || v11 || v12 || v14)
    {
      v16 = [v7 textLayoutConfiguration];
      v15 = [v16 mutableCopy];

      if (v8 || v11 || v47 || v45)
      {
        if (v47)
        {
          v41 = [PUICustomFontConfiguration alloc];
          v17 = MEMORY[0x1E696AAE8];
          v18 = [(PUIStylePickerViewController *)self extensionBundleURL];
          v19 = [v17 bundleWithURL:v18];
          v20 = [(PUICustomFontConfiguration *)v41 initWithFont:v47 extensionBundle:v19];

          v10 = v44;
        }

        else
        {
          v21 = [PUISystemFontConfiguration alloc];
          [v11 bs_CGFloatValue];
          v20 = -[PUISystemFontConfiguration initWithFontIdentifier:weight:systemItem:](v21, "initWithFontIdentifier:weight:systemItem:", v8, [v45 BOOLValue], v22);
        }

        [v15 setFontConfiguration:v20];
      }

      if (v10)
      {
        [v15 setPreferredLayout:{objc_msgSend(v10, "unsignedIntegerValue")}];
      }

      if (v9)
      {
        [v15 setPreferredAlignment:{objc_msgSend(v9, "unsignedIntegerValue")}];
      }

      if (v46)
      {
        v23 = [v46 type];
        [v15 setNumberingSystemType:v23];
      }
    }

    else
    {
      v15 = 0;
    }

    v24 = [(PUIStylePickerSelectionChange *)v6 style];
    v25 = [(PUIStylePickerSelectionChange *)v6 isSuggestedStyle];
    v26 = v25;
    if (!(v24 | v25))
    {
      v30 = 0;
LABEL_39:
      v48[0] = MEMORY[0x1E69E9820];
      v48[1] = 3221225472;
      v48[2] = __62__PUIStylePickerViewController__notifyChangeHandlersOfChange___block_invoke;
      v48[3] = &unk_1E78566D0;
      v49 = v30;
      v50 = v15;
      v37 = v15;
      v38 = v30;
      [(PUIStylePickerViewController *)self _notifyClientsOfPickerConfigurationUpdate:v48];

      goto LABEL_40;
    }

    v40 = v5;
    v42 = v9;
    v39 = v8;
    if (v25 && ([v7 styleConfiguration], v27 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v27, "suggestedStyle"), v28 = objc_claimAutoreleasedReturnValue(), v29 = objc_msgSend(v28, "isEqual:", v24), v28, v27, (v29 & 1) == 0))
    {
      v31 = [v7 styleConfiguration];
      v30 = [v31 mutableCopy];

      [v30 setSuggestedStyle:v24];
      if (!v24)
      {
LABEL_35:
        v8 = v39;
        v5 = v40;
        v9 = v42;
        goto LABEL_39;
      }
    }

    else
    {
      v30 = 0;
      if (!v24)
      {
        goto LABEL_35;
      }
    }

    v32 = v7;
    v33 = [v7 styleConfiguration];
    v34 = [v33 selectedStyle];
    v35 = [v34 isEqual:v24];

    if ((v35 & 1) == 0)
    {
      v7 = v32;
      v8 = v39;
      v9 = v42;
      if (!v30)
      {
        v36 = [v32 styleConfiguration];
        v30 = [v36 mutableCopy];

        v9 = v42;
      }

      [v30 setSelectedStyle:v24];
      v5 = v40;
      goto LABEL_39;
    }

    v7 = v32;
    goto LABEL_35;
  }

LABEL_40:
}

void __62__PUIStylePickerViewController__notifyChangeHandlersOfChange___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(a1 + 32))
  {
    [v3 setStyleConfiguration:?];
    v3 = v4;
  }

  if (*(a1 + 40))
  {
    [v4 setTextLayoutConfiguration:?];
    v3 = v4;
  }
}

- (void)_notifyClientsOfPickerConfigurationUpdate:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(PUIStylePickerViewController *)self stylePickerConfiguration];
    v6 = [v5 mutableCopy];
    v4[2](v4, v6);

    v7 = objc_opt_new();
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __74__PUIStylePickerViewController__notifyClientsOfPickerConfigurationUpdate___block_invoke;
    v32[3] = &unk_1E7854BC0;
    v8 = v7;
    v33 = v8;
    v34 = self;
    v9 = v6;
    v35 = v9;
    v10 = MEMORY[0x1AC5769F0](v32);
    v11 = [v5 textLayoutConfiguration];
    v12 = [v9 textLayoutConfiguration];
    v13 = [v11 isEqual:v12];

    if ((v13 & 1) == 0)
    {
      v10[2](v10);
      v14 = [v9 textLayoutConfiguration];
      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = __74__PUIStylePickerViewController__notifyClientsOfPickerConfigurationUpdate___block_invoke_2;
      v30[3] = &unk_1E78566F8;
      v30[4] = self;
      v31 = v14;
      v15 = v14;
      [(PUIStylePickerViewController *)self _notifyObserversRespondingToSelector:sel_stylePickerViewController_didUpdateStyleConfiguration_ enumerator:v30];
    }

    v16 = [v5 styleConfiguration];
    v17 = [v9 styleConfiguration];
    v18 = [v16 isEqual:v17];

    if ((v18 & 1) == 0)
    {
      v10[2](v10);
      v19 = [v9 styleConfiguration];
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __74__PUIStylePickerViewController__notifyClientsOfPickerConfigurationUpdate___block_invoke_3;
      v28[3] = &unk_1E78566F8;
      v28[4] = self;
      v29 = v19;
      v20 = v19;
      [(PUIStylePickerViewController *)self _notifyObserversRespondingToSelector:sel_stylePickerViewController_didUpdateStyleConfiguration_ enumerator:v28];
    }

    v21 = [v5 homeScreenConfiguration];
    v22 = [v9 homeScreenConfiguration];
    v23 = [v21 isEqual:v22];

    if ((v23 & 1) == 0)
    {
      v10[2](v10);
      v24 = [v9 homeScreenConfiguration];
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __74__PUIStylePickerViewController__notifyClientsOfPickerConfigurationUpdate___block_invoke_4;
      v26[3] = &unk_1E7856720;
      v26[4] = self;
      v27 = v24;
      v25 = v24;
      [(PUIStylePickerViewController *)self _notifyObserversRespondingToSelector:sel_stylePickerViewController_didUpdateHomeScreenConfiguration_ enumerator:v26];
    }
  }
}

void __74__PUIStylePickerViewController__notifyClientsOfPickerConfigurationUpdate___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) signal])
  {
    v2 = *(a1 + 40);
    v3 = [*(a1 + 48) copy];
    [v2 setStylePickerConfiguration:v3];
  }
}

- (void)_notifyObserversOfChangedDesiredDetent
{
  [(PUIStylePickerViewController *)self desiredDetent];
  if (v3 != self->_lastNotifiedDetent)
  {
    self->_lastNotifiedDetent = v3;
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __70__PUIStylePickerViewController__notifyObserversOfChangedDesiredDetent__block_invoke;
    v4[3] = &unk_1E7856748;
    v4[4] = self;
    *&v4[5] = v3;
    [(PUIStylePickerViewController *)self _notifyDelegateRespondingToSelector:sel_stylePickerViewController_didUpdateDesiredDetent_ handler:v4];
  }
}

- (void)_closeButtonTapped:(id)a3
{
  [(PUIStylePickerViewController *)self _signalDelegateDidFinish];

  [(PUIStylePickerViewController *)self dismissViewControllerAnimated:1 completion:0];
}

- (void)_signalDelegateWillFinish
{
  self->_hasNotifiedDelegateOfImpendingDismissal = 1;
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __57__PUIStylePickerViewController__signalDelegateWillFinish__block_invoke;
  v2[3] = &unk_1E7856770;
  v2[4] = self;
  [(PUIStylePickerViewController *)self _notifyDelegateRespondingToSelector:sel_stylePickerViewControllerWillFinish_ handler:v2];
}

- (void)_signalDelegateDidFinish
{
  if (!self->_hasNotifiedDelegateOfImpendingDismissal)
  {
    [(PUIStylePickerViewController *)self _signalDelegateWillFinish];
  }

  self->_hasNotifiedDelegateOfDismissal = 1;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __56__PUIStylePickerViewController__signalDelegateDidFinish__block_invoke;
  v3[3] = &unk_1E7856770;
  v3[4] = self;
  [(PUIStylePickerViewController *)self _notifyDelegateRespondingToSelector:sel_stylePickerViewControllerDidFinish_ handler:v3];
}

- (void)_didPressTextAlignmentBarButtonItem:(id)a3
{
  v4 = [(PUIStylePickerViewController *)self textAlignmentBarItem];
  v5 = [v4 toggle];

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __68__PUIStylePickerViewController__didPressTextAlignmentBarButtonItem___block_invoke;
  v6[3] = &__block_descriptor_40_e39_v16__0__PUIStylePickerSelectionChange_8l;
  v6[4] = v5;
  [(PUIStylePickerViewController *)self _notifyChangeHandlersOfChange:v6];
}

void __68__PUIStylePickerViewController__didPressTextAlignmentBarButtonItem___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AD98];
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v2 numberWithUnsignedInteger:v3];
  [v4 setPreferredAlignment:v5];
}

- (void)_notifyClientsOfChangedNumberingSystem:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v4 = +[PUINumberingSystem systemDefaultNumberingSystem];
  }

  v5 = [(PUIStylePickerViewController *)self fontPickerComponentViewController];
  if (v5)
  {
    v6 = [v4 locale];
    [v5 setLocale:v6];
  }

  v7 = [(PUIStylePickerViewController *)self numberingSystemPickerMenuController];
  v8 = [(PUIStylePickerViewController *)self numberSystemBarItem];
  v9 = v8;
  if (v7 && v8)
  {
    v10 = [v7 menu];
    [v9 setMenu:v10];
  }

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __71__PUIStylePickerViewController__notifyClientsOfChangedNumberingSystem___block_invoke;
  v12[3] = &unk_1E7856798;
  v13 = v4;
  v11 = v4;
  [(PUIStylePickerViewController *)self _notifyChangeHandlersOfChange:v12];
}

- (void)_setupComponentViewControllersIfNeeded
{
  v3 = [(PUIStylePickerViewController *)self stylePickerConfiguration];
  v4 = [v3 components];
  v5 = [v3 defaultRole];
  v6 = [v3 previewTextString];
  v7 = [v3 styleConfiguration];
  v8 = [v3 textLayoutConfiguration];
  [(PUIStylePickerViewController *)self contentsLuminance];
  v10 = v9;
  v11 = [v4 containsComponent:2];
  v79 = [v4 containsComponent:4];
  v12 = [v4 containsComponent:1];
  v76 = [v4 containsComponent:16];
  v13 = [v4 containsComponent:8];
  v77 = [v4 containsComponent:32];
  v14 = [(PUIStylePickerViewController *)self extensionBundleURL];
  v81 = v14;
  if (v14)
  {
    v78 = [v8 effectiveFontWithExtensionBundleURL:v14 forRole:v5];
  }

  else
  {
    v78 = 0;
  }

  v80 = [(PUIStylePickerViewController *)self delegate];
  if (v12)
  {
    v71 = v11;
    v74 = v8;
    v69 = v7;
    v15 = [PUIFontPickerComponentViewController defaultItemsForRole:v5 text:v6];
    v67 = v13;
    if (v5 && ([v5 isEqualToString:*MEMORY[0x1E69C5218]] & 1) == 0 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      v16 = [v80 additionalFontsForStylePickerViewController:self];
      [(PUIStylePickerViewController *)self setAdditionalFonts:v16];
      v17 = [v16 bs_map:&__block_literal_global_33];
      v18 = [v15 arrayByAddingObjectsFromArray:v17];

      v13 = v67;
      v15 = v18;
    }

    else
    {
      [(PUIStylePickerViewController *)self setAdditionalFonts:0];
    }

    v73 = v5;
    v19 = v6;
    if (objc_opt_respondsToSelector())
    {
      v90[0] = MEMORY[0x1E69E9820];
      v90[1] = 3221225472;
      v90[2] = __70__PUIStylePickerViewController__setupComponentViewControllersIfNeeded__block_invoke_2;
      v90[3] = &unk_1E78567E0;
      v91 = v80;
      v92 = self;
      v20 = [v15 bs_filter:v90];

      v15 = v20;
    }

    v21 = [v8 fontConfiguration];
    v22 = [v21 PUIFontWithExtensionBundleURL:v81];
    v23 = [v22 customFont];

    v66 = v22;
    if (v23)
    {
      v24 = [v22 customFont];
      v88[0] = MEMORY[0x1E69E9820];
      v88[1] = 3221225472;
      v88[2] = __70__PUIStylePickerViewController__setupComponentViewControllersIfNeeded__block_invoke_3;
      v88[3] = &unk_1E7856808;
      v89 = v24;
      v25 = v24;
      v68 = [v15 bs_firstObjectPassingTest:v88];

      v6 = v19;
    }

    else
    {
      v85[0] = MEMORY[0x1E69E9820];
      v85[1] = 3221225472;
      v85[2] = __70__PUIStylePickerViewController__setupComponentViewControllersIfNeeded__block_invoke_4;
      v85[3] = &unk_1E78567E0;
      v26 = v22;
      v86 = v26;
      v27 = v21;
      v87 = v27;
      v68 = [v15 bs_firstObjectPassingTest:v85];
      if (!v68)
      {
        v82[0] = MEMORY[0x1E69E9820];
        v82[1] = 3221225472;
        v82[2] = __70__PUIStylePickerViewController__setupComponentViewControllersIfNeeded__block_invoke_5;
        v82[3] = &unk_1E78567E0;
        v83 = v26;
        v84 = v27;
        v68 = [v15 bs_firstObjectPassingTest:v82];
      }

      v25 = v86;
      v6 = v19;
      v13 = v67;
    }

    v5 = v73;

    v28 = [v15 count] > 1;
    v11 = v71;
    v72 = v28 | [(PUIStylePickerViewController *)self _shouldShowWeightSliderForSelectedFont];
    if (v72)
    {
      v64 = v3;
      v29 = v5;
      v30 = [(PUIStylePickerViewController *)self fontPickerComponentViewController];
      if (!v30)
      {
        v30 = [[PUIFontPickerComponentViewController alloc] initWithItems:v15 selectedItem:v68 role:v29 titleString:v6];
        [(PUIFontPickerComponentViewController *)v30 setDelegate:self];
        [(PUIStylePickerViewController *)self setFontPickerComponentViewController:v30];
      }

      v31 = [v74 fontConfiguration];
      v32 = [(PUIStylePickerViewController *)self extensionBundleURL];
      [v31 PUIFontWithExtensionBundleURL:v32];
      v33 = v65 = v6;

      v34 = [v33 effectiveFontForRole:v29 ignoringWeight:1];
      v35 = [v34 pui_variantWeightRange];
      v36 = v15;
      v38 = v37;
      [v33 weight];
      [(PUIFontPickerComponentViewController *)v30 setFontWeight:(v39 - v35) / (v38 - v35)];
      v40 = [v74 numberingSystemType];
      v41 = [PUINumberingSystem numberingSystemForType:v40];

      v42 = [v41 locale];
      [(PUIFontPickerComponentViewController *)v30 setLocale:v42];

      v15 = v36;
      v6 = v65;

      v5 = v29;
      v11 = v71;
      v13 = v67;
      v3 = v64;
    }

    else
    {
      [(PUIStylePickerViewController *)self setFontPickerComponentViewController:0];
    }

    v7 = v69;
    v8 = v74;
  }

  else
  {
    v72 = 0;
  }

  if (v76)
  {
    v43 = [(PUIStylePickerViewController *)self textAlignmentBarItem];

    if (!v43)
    {
      v44 = -[PUITextAlignmentBarButtonItem initWithTextAlignment:target:action:]([PUITextAlignmentBarButtonItem alloc], "initWithTextAlignment:target:action:", [v8 preferredAlignment], self, sel__didPressTextAlignmentBarButtonItem_);
      [(PUIStylePickerViewController *)self setTextAlignmentBarItem:v44];
    }

    if (v13)
    {
      goto LABEL_28;
    }

LABEL_32:
    [(PUIStylePickerViewController *)self setTextLayoutPickerComponentViewController:0];
    goto LABEL_33;
  }

  [(PUIStylePickerViewController *)self setTextAlignmentBarItem:0];
  if (!v13)
  {
    goto LABEL_32;
  }

LABEL_28:
  v45 = [PUITextLayoutSet supportedTextLayoutSetForRole:v5];
  v46 = [(PUIStylePickerViewController *)self textLayoutPickerComponentViewController];
  if (!v46)
  {
    v46 = -[PUITextLayoutPickerComponentViewController initWithLayouts:selectedLayout:]([PUITextLayoutPickerComponentViewController alloc], "initWithLayouts:selectedLayout:", v45, [v8 preferredLayout]);
    [(PUITextLayoutPickerComponentViewController *)v46 setDelegate:self];
    [(PUIStylePickerViewController *)self setTextLayoutPickerComponentViewController:v46];
  }

LABEL_33:
  if (v79)
  {
    v47 = [(PUIStylePickerViewController *)self stylePickerComponentViewController];
    if (!v47)
    {
      v47 = [[PUIStylePickerComponentViewController alloc] initWithConfiguration:v7];
      [(PUIStylePickerComponentViewController *)v47 setDelegate:self];
      [(PUIStylePickerViewController *)self setStylePickerComponentViewController:v47];
    }

    [(PUIStylePickerComponentViewController *)v47 setContentsLuminance:v10];

    if (!v11)
    {
      goto LABEL_37;
    }
  }

  else
  {
    [(PUIStylePickerViewController *)self setStylePickerComponentViewController:0];
    if (!v11)
    {
LABEL_37:
      [(PUIStylePickerViewController *)self setNumberSystemBarItem:0];
      [(PUIStylePickerViewController *)self setNumberingSystemPickerMenuController:0];
      [(PUIStylePickerViewController *)self setNumberingSystemPickerComponentViewController:0];
      goto LABEL_48;
    }
  }

  v48 = [v8 effectiveNumberingSystemType];
  v49 = [PUINumberingSystem numberingSystemForType:v48];

  if ((v79 | v72))
  {
    v50 = [(PUIStylePickerViewController *)self numberingSystemPickerMenuController];
    if (!v50)
    {
      v50 = [[PUINumberingSystemPickerMenuController alloc] initWithNumberingSystem:v49 font:v78];
      [(PUINumberingSystemPickerMenuController *)v50 setDelegate:self];
      [(PUIStylePickerViewController *)self setNumberingSystemPickerMenuController:v50];
    }

    v51 = [(PUIStylePickerViewController *)self numberSystemBarItem];
    if (!v51)
    {
      v52 = MEMORY[0x1E69DCAB8];
      [MEMORY[0x1E69DCAD8] configurationWithScale:3];
      v75 = v8;
      v54 = v53 = v6;
      [v52 systemImageNamed:@"globe" withConfiguration:v54];
      v70 = v7;
      v56 = v55 = v5;

      v57 = objc_alloc(MEMORY[0x1E69DC708]);
      v58 = [(PUINumberingSystemPickerMenuController *)v50 menu];
      v51 = [v57 initWithImage:v56 menu:v58];

      v6 = v53;
      v8 = v75;
      [(PUIStylePickerViewController *)self setNumberSystemBarItem:v51];

      v5 = v55;
      v7 = v70;
    }
  }

  else
  {
    v50 = [(PUIStylePickerViewController *)self numberingSystemPickerComponentViewController];
    if (!v50)
    {
      v50 = [[PUINumberingSystemPickerComponentViewController alloc] initWithNumberingSystem:v49 font:v78];
      [(PUINumberingSystemPickerMenuController *)v50 setDelegate:self];
      [(PUIStylePickerViewController *)self setNumberingSystemPickerComponentViewController:v50];
    }
  }

LABEL_48:
  if (v77)
  {
    v59 = [v3 homeScreenConfiguration];
    v60 = v59;
    if (v59)
    {
      v61 = v59;
    }

    else
    {
      v61 = objc_opt_new();
    }

    v62 = v61;

    v63 = [(PUIStylePickerViewController *)self homeScreenComponentViewController];
    if (!v63)
    {
      v63 = [[PUIStylePickerHomeScreenComponentViewController alloc] initWithHomeScreenConfiguration:v62];
      [(PUIStylePickerHomeScreenComponentViewController *)v63 setDelegate:self];
      [(PUIStylePickerViewController *)self setHomeScreenComponentViewController:v63];
    }
  }

  else
  {
    [(PUIStylePickerViewController *)self setHomeScreenComponentViewController:0];
  }
}

PUIFontPickerItem *__70__PUIStylePickerViewController__setupComponentViewControllersIfNeeded__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[PUIFontPickerItem alloc] initWithFont:v2 systemItem:0];

  return v3;
}

uint64_t __70__PUIStylePickerViewController__setupComponentViewControllersIfNeeded__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isSystemItem])
  {
    v5 = *(a1 + 32);
    v4 = *(a1 + 40);
    v6 = [v3 font];
    v7 = [v5 stylePickerViewController:v4 shouldShowFont:v6];
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

uint64_t __70__PUIStylePickerViewController__setupComponentViewControllersIfNeeded__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 font];
  v4 = [v3 customFont];

  v5 = [v4 fontName];
  v6 = [*(a1 + 32) fontName];
  v7 = BSEqualObjects();

  return v7;
}

uint64_t __70__PUIStylePickerViewController__setupComponentViewControllersIfNeeded__block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 font];
  v5 = BSEqualObjects();

  [v3 isSystemItem];
  [*(a1 + 40) isSystemItem];
  return v5 & BSFloatEqualToFloat();
}

uint64_t __70__PUIStylePickerViewController__setupComponentViewControllersIfNeeded__block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 font];
  v5 = [v4 fontIdentifier];
  v6 = [*(a1 + 32) fontIdentifier];
  v7 = BSEqualObjects();

  [v3 isSystemItem];
  [*(a1 + 40) isSystemItem];
  return v7 & BSFloatEqualToFloat();
}

- (void)_refreshComponentViewControllers
{
  v20 = [(PUIStylePickerViewController *)self stylePickerConfiguration];
  v3 = [v20 components];
  v4 = [v3 containsComponent:2];
  v5 = [v3 containsComponent:4];
  LODWORD(v6) = [v3 containsComponent:16];
  v7 = [v3 containsComponent:8];
  v8 = [v3 containsComponent:32];
  v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (!v6 || ([(PUIStylePickerViewController *)self fontPickerComponentViewController], v6 = objc_claimAutoreleasedReturnValue(), v6, !v6))
  {
    v13 = 1;
    if (!v7)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v10 = [(PUIStylePickerViewController *)self fontPickerComponentViewController];
  v11 = [v10 items];
  v12 = [v11 count];

  if (v12 >= 2)
  {
    v6 = [(PUIStylePickerViewController *)self fontPickerComponentViewController];
    [v9 addObject:v6];

    v13 = 0;
    LODWORD(v6) = 1;
    if (!v7)
    {
      goto LABEL_8;
    }

LABEL_7:
    v14 = [(PUIStylePickerViewController *)self textLayoutPickerComponentViewController];
    [v9 bs_safeAddObject:v14];

    goto LABEL_8;
  }

  v13 = 0;
  LODWORD(v6) = 0;
  if (v7)
  {
    goto LABEL_7;
  }

LABEL_8:
  if (((v13 | v6) & 1) == 0)
  {
    v15 = [(PUIStylePickerViewController *)self fontPickerComponentViewController];
    [v9 bs_safeAddObject:v15];
  }

  if (v4)
  {
    v16 = [(PUIStylePickerViewController *)self numberingSystemPickerComponentViewController];

    if (v16)
    {
      v17 = [(PUIStylePickerViewController *)self numberingSystemPickerComponentViewController];
      [v9 addObject:v17];
    }
  }

  if (v5)
  {
    v18 = [(PUIStylePickerViewController *)self stylePickerComponentViewController];
    [v9 bs_safeAddObject:v18];
  }

  if (v8)
  {
    v19 = [(PUIStylePickerViewController *)self homeScreenComponentViewController];
    [v9 bs_safeAddObject:v19];
  }
}

- (void)_refreshBarButtonItems
{
  if (![(PUIStylePickerViewController *)self isViewLoaded])
  {
    return;
  }

  v42 = [(PUIStylePickerViewController *)self stylePickerConfiguration];
  v3 = [v42 components];
  v4 = [(PUIStylePickerViewController *)self leadingBarButtonItems];
  v46 = [(PUIStylePickerViewController *)self centerBarButtonItems];
  v5 = [(PUIStylePickerViewController *)self trailingBarButtonItems];
  v6 = objc_opt_new();
  v7 = objc_opt_new();
  v8 = objc_opt_new();
  v9 = [v3 containsComponent:2];
  v41 = v3;
  if ([v3 containsComponent:16])
  {
    v10 = [(PUIStylePickerViewController *)self textAlignmentBarItem];
    [v6 addObject:v10];
  }

  if (v9)
  {
    v11 = [(PUIStylePickerViewController *)self numberingSystemPickerComponentViewController];

    if (!v11)
    {
      v12 = [(PUIStylePickerViewController *)self numberSystemBarItem];
      [v6 addObject:v12];
    }
  }

  v13 = [(PUIStylePickerViewController *)self stylePickerComponentViewController];
  v14 = [v13 colorWell];
  if (!v14)
  {
    goto LABEL_10;
  }

  v15 = v14;
  v16 = [(PUIStylePickerViewController *)self numberSystemBarItem];

  v17 = v46;
  if (!v16)
  {
    v13 = [(PUIStylePickerComponentViewController *)self->_stylePickerComponentViewController colorWellView];
    v18 = [v13 colorWell];
    [v18 setTranslatesAutoresizingMaskIntoConstraints:0];
    v19 = [objc_alloc(MEMORY[0x1E69DC708]) initWithCustomView:v13];
    [v6 addObject:v19];

LABEL_10:
    v17 = v46;
  }

  if ([v4 count])
  {
    v45 = [objc_alloc(MEMORY[0x1E69DC720]) initWithBarButtonItems:v4 representativeItem:0];
  }

  else
  {
    v45 = 0;
  }

  if ([v6 count])
  {
    v44 = [objc_alloc(MEMORY[0x1E69DC720]) initWithBarButtonItems:v6 representativeItem:0];
  }

  else
  {
    v44 = 0;
  }

  if ([v17 count])
  {
    v20 = [objc_alloc(MEMORY[0x1E69DC720]) initWithBarButtonItems:v17 representativeItem:0];
  }

  else
  {
    v20 = 0;
  }

  if ([v7 count])
  {
    v43 = [objc_alloc(MEMORY[0x1E69DC720]) initWithBarButtonItems:v7 representativeItem:0];
  }

  else
  {
    v43 = 0;
  }

  v39 = v5;
  if ([v5 count])
  {
    v21 = [objc_alloc(MEMORY[0x1E69DC720]) initWithBarButtonItems:v5 representativeItem:0];
  }

  else
  {
    v21 = 0;
  }

  v38 = v6;
  v40 = v4;
  v36 = v8;
  v37 = v7;
  if ([v8 count])
  {
    v22 = [objc_alloc(MEMORY[0x1E69DC720]) initWithBarButtonItems:v8 representativeItem:0];
  }

  else
  {
    v22 = 0;
  }

  v23 = objc_opt_new();
  [v23 bs_safeAddObject:v45];
  [v23 bs_safeAddObject:v44];
  v24 = objc_opt_new();
  [v24 bs_safeAddObject:v21];
  [v24 bs_safeAddObject:v22];
  v25 = objc_opt_new();
  v26 = v20;
  [v25 bs_safeAddObject:v20];
  [v25 bs_safeAddObject:v43];
  v27 = [(PUIStylePickerViewController *)self navigationController];
  v28 = [v27 navigationBar];
  v29 = [v28 topItem];

  [v29 _setManualScrollEdgeAppearanceProgress:0.0];
  [v29 setLeadingItemGroups:v23];
  v30 = v46;
  if ([v46 count])
  {
    if ([v46 count] == 1 && (objc_msgSend(v46, "firstObject"), v31 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v31, "customView"), v32 = objc_claimAutoreleasedReturnValue(), v32, v31, v30 = v46, v32))
    {
      v33 = [v46 firstObject];
      v34 = [v33 customView];

      v30 = v46;
      [v34 sizeToFit];
      [v29 setTitleView:v34];
    }

    else
    {
      [v29 setCenterItemGroups:v25];
      [v29 setTitle:0];
    }
  }

  else
  {
    v35 = [(PUIStylePickerViewController *)self title];
    [v29 setTitle:v35];

    v30 = v46;
  }

  [v29 setTrailingItemGroups:v24];
}

- (id)componentViewControllers
{
  v3 = objc_opt_new();
  v4 = [(PUIStylePickerViewController *)self stylePickerConfiguration];
  v5 = [v4 components];
  v9 = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __56__PUIStylePickerViewController_componentViewControllers__block_invoke;
  v12 = &unk_1E7856830;
  v13 = v3;
  v14 = self;
  v6 = v3;
  [v5 enumerateComponents:&v9];

  v7 = [v6 copy];

  return v7;
}

void __56__PUIStylePickerViewController_componentViewControllers__block_invoke(uint64_t a1, uint64_t a2)
{
  switch(a2)
  {
    case 1:
      v2 = *(a1 + 32);
      v3 = [*(a1 + 40) fontPickerComponentViewController];
      break;
    case 2:
      v2 = *(a1 + 32);
      v3 = [*(a1 + 40) numberingSystemPickerComponentViewController];
      break;
    case 4:
      v2 = *(a1 + 32);
      v3 = [*(a1 + 40) stylePickerComponentViewController];
      break;
    case 8:
      v2 = *(a1 + 32);
      v3 = [*(a1 + 40) textLayoutPickerComponentViewController];
      break;
    case 32:
      v2 = *(a1 + 32);
      v3 = [*(a1 + 40) homeScreenComponentViewController];
      break;
    default:
      return;
  }

  v4 = v3;
  [v2 bs_safeAddObject:?];
}

- (void)_updateViews
{
  v2 = self;
  v119 = *MEMORY[0x1E69E9840];
  v3 = [(PUIStylePickerViewController *)self view];
  v4 = [(PUIStylePickerViewController *)v2 rootStackView];
  v74 = [(PUIStylePickerViewController *)v2 backgroundView];
  v5 = [(PUIStylePickerViewController *)v2 componentViewControllers];
  v85 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v108 = 0u;
  v109 = 0u;
  v110 = 0u;
  v111 = 0u;
  obj = v5;
  v6 = [obj countByEnumeratingWithState:&v108 objects:v118 count:16];
  v84 = v2;
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v109;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v109 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v108 + 1) + 8 * i);
        v12 = [v11 view];
        [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
        [v85 addObject:v12];
        v13 = [v11 parentViewController];

        v14 = v13 == v84;
        v2 = v84;
        if (!v14)
        {
          [v11 willMoveToParentViewController:v84];
          [(PUIStylePickerViewController *)v84 addChildViewController:v11];
          [v11 didMoveToParentViewController:v84];
          v8 = 1;
        }
      }

      v7 = [obj countByEnumeratingWithState:&v108 objects:v118 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  v15 = [v4 arrangedSubviews];
  v16 = v85;
  v17 = [v85 isEqualToArray:v15];

  v73 = v4;
  if (v17)
  {
    if ((v8 & 1) == 0)
    {
      goto LABEL_41;
    }
  }

  else
  {
    v106 = 0u;
    v107 = 0u;
    v104 = 0u;
    v105 = 0u;
    v18 = [v4 arrangedSubviews];
    v19 = [v18 copy];

    v20 = [v19 countByEnumeratingWithState:&v104 objects:v117 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v105;
      do
      {
        for (j = 0; j != v21; ++j)
        {
          if (*v105 != v22)
          {
            objc_enumerationMutation(v19);
          }

          [v4 removeArrangedSubview:*(*(&v104 + 1) + 8 * j)];
        }

        v21 = [v19 countByEnumeratingWithState:&v104 objects:v117 count:16];
      }

      while (v21);
    }

    v102 = 0u;
    v103 = 0u;
    v100 = 0u;
    v101 = 0u;
    v24 = v85;
    v25 = [v24 countByEnumeratingWithState:&v100 objects:v116 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v101;
      do
      {
        for (k = 0; k != v26; ++k)
        {
          if (*v101 != v27)
          {
            objc_enumerationMutation(v24);
          }

          [v4 addArrangedSubview:*(*(&v100 + 1) + 8 * k)];
        }

        v26 = [v24 countByEnumeratingWithState:&v100 objects:v116 count:16];
      }

      while (v26);
    }

    v2 = v84;
  }

  v29 = [(PUIStylePickerViewController *)v2 dividerViews];
  [v29 makeObjectsPerformSelector:sel_removeFromSuperview];

  v80 = objc_opt_new();
  v72 = v3;
  if ([v85 count] < 2)
  {
    v30 = 0;
  }

  else
  {
    v30 = [v85 subarrayWithRange:{1, objc_msgSend(v85, "count") - 1}];
  }

  v98 = 0u;
  v99 = 0u;
  v96 = 0u;
  v97 = 0u;
  v75 = v30;
  v82 = [v75 countByEnumeratingWithState:&v96 objects:v115 count:16];
  if (v82)
  {
    v78 = *v97;
    do
    {
      for (m = 0; m != v82; ++m)
      {
        if (*v97 != v78)
        {
          objc_enumerationMutation(v75);
        }

        v32 = *(*(&v96 + 1) + 8 * m);
        v33 = objc_alloc_init(MEMORY[0x1E69DD250]);
        v34 = [MEMORY[0x1E69DC888] separatorColor];
        [v33 setBackgroundColor:v34];

        [v33 setTranslatesAutoresizingMaskIntoConstraints:0];
        [v32 addSubview:v33];
        [v80 addObject:v33];
        v86 = MEMORY[0x1E696ACD8];
        v94 = [v33 heightAnchor];
        v92 = [v94 constraintEqualToConstant:1.0];
        v114[0] = v92;
        v90 = [v33 leadingAnchor];
        v88 = [v32 leadingAnchor];
        v35 = [v90 constraintEqualToAnchor:v88];
        v114[1] = v35;
        v36 = [v33 trailingAnchor];
        v37 = [v32 trailingAnchor];
        v38 = [v36 constraintEqualToAnchor:v37];
        v114[2] = v38;
        v39 = [v33 bottomAnchor];
        v40 = [v32 topAnchor];
        v41 = [v39 constraintEqualToAnchor:v40 constant:-24.0];
        v114[3] = v41;
        v42 = [MEMORY[0x1E695DEC8] arrayWithObjects:v114 count:4];
        [v86 activateConstraints:v42];
      }

      v82 = [v75 countByEnumeratingWithState:&v96 objects:v115 count:16];
    }

    while (v82);
  }

  v2 = v84;
  [(PUIStylePickerViewController *)v84 setDividerViews:v80];

  v3 = v72;
  v4 = v73;
  v16 = v85;
LABEL_41:
  v43 = [v3 safeAreaLayoutGuide];
  v44 = PUIFeatureEnabled(11);
  v45 = [v4 leadingAnchor];
  v46 = [v43 leadingAnchor];
  v47 = [v45 constraintEqualToAnchor:v46];
  v48 = v47;
  if (v44)
  {
    v113[0] = v47;
    v49 = [v4 trailingAnchor];
    v95 = [v43 trailingAnchor];
    v93 = [v49 constraintEqualToAnchor:?];
    v113[1] = v93;
    v50 = [v4 topAnchor];
    v89 = [v3 safeAreaLayoutGuide];
    [v89 topAnchor];
    v87 = v91 = v50;
    v83 = [v50 constraintEqualToAnchor:7.0 constant:?];
    v113[2] = v83;
    v51 = [MEMORY[0x1E695DEC8] arrayWithObjects:v113 count:3];
  }

  else
  {
    v112[0] = v47;
    v76 = [v4 trailingAnchor];
    v95 = [v43 trailingAnchor];
    v93 = [v76 constraintEqualToAnchor:?];
    v112[1] = v93;
    v52 = [v4 topAnchor];
    v89 = [v3 safeAreaLayoutGuide];
    [v89 topAnchor];
    v87 = v91 = v52;
    v83 = [v52 constraintEqualToAnchor:7.0 constant:?];
    v112[2] = v83;
    v71 = [v74 leadingAnchor];
    v70 = [v3 leadingAnchor];
    v69 = [v71 constraintEqualToAnchor:v70];
    v112[3] = v69;
    v68 = [v74 trailingAnchor];
    v67 = [v3 trailingAnchor];
    v66 = [v68 constraintEqualToAnchor:v67];
    v112[4] = v66;
    v53 = [v74 bottomAnchor];
    v54 = [v3 bottomAnchor];
    [v53 constraintEqualToAnchor:v54];
    v81 = v45;
    v56 = v55 = v3;
    v112[5] = v56;
    [v74 topAnchor];
    v57 = v79 = v46;
    [v55 topAnchor];
    v58 = v48;
    v60 = v59 = v43;
    v61 = [v57 constraintEqualToAnchor:v60];
    v112[6] = v61;
    v51 = [MEMORY[0x1E695DEC8] arrayWithObjects:v112 count:7];

    v16 = v85;
    v43 = v59;
    v48 = v58;

    v4 = v73;
    v46 = v79;

    v3 = v55;
    v45 = v81;

    v49 = v76;
    v2 = v84;
  }

  v62 = [(PUIStylePickerViewController *)v2 layoutConstraints];
  v63 = [v62 isEqualToArray:v51];

  if ((v63 & 1) == 0)
  {
    v64 = MEMORY[0x1E696ACD8];
    v65 = [(PUIStylePickerViewController *)v2 layoutConstraints];
    [v64 deactivateConstraints:v65];

    [(PUIStylePickerViewController *)v2 setLayoutConstraints:v51];
    [MEMORY[0x1E696ACD8] activateConstraints:v51];
  }
}

- (PUIStylePickerViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)initWithStylePickerConfiguration:(const char *)a1 .cold.1(const char *a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"stylePickerConfiguration"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a1);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    *buf = 138544642;
    v9 = v5;
    v10 = 2114;
    v11 = v7;
    v12 = 2048;
    v13 = a2;
    v14 = 2114;
    v15 = @"PUIStylePickerViewController.m";
    v16 = 1024;
    v17 = 108;
    v18 = 2114;
    v19 = v4;
    _os_log_error_impl(&dword_1A8C85000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end