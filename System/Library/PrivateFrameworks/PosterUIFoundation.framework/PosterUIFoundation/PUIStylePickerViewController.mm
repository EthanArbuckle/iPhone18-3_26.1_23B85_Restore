@interface PUIStylePickerViewController
- (BOOL)_shouldShowWeightSliderForSelectedFont;
- (PUIStylePickerViewController)initWithComponents:(id)components previewTextString:(id)string;
- (PUIStylePickerViewController)initWithNibName:(id)name bundle:(id)bundle;
- (PUIStylePickerViewController)initWithStylePickerConfiguration:(id)configuration;
- (PUIStylePickerViewControllerDelegate)delegate;
- (double)desiredDetent;
- (id)componentViewControllers;
- (id)stylePickerComponentViewController:(id)controller coordinatorForStyle:(id)style isSuggested:(BOOL)suggested;
- (void)_closeButtonTapped:(id)tapped;
- (void)_didPressTextAlignmentBarButtonItem:(id)item;
- (void)_notifyChangeHandlersOfChange:(id)change;
- (void)_notifyClientsOfChangedNumberingSystem:(id)system;
- (void)_notifyClientsOfPickerConfigurationUpdate:(id)update;
- (void)_notifyDelegateRespondingToSelector:(SEL)selector handler:(id)handler;
- (void)_notifyObserversOfChangedDesiredDetent;
- (void)_notifyObserversRespondingToSelector:(SEL)selector enumerator:(id)enumerator;
- (void)_refreshBarButtonItems;
- (void)_refreshComponentViewControllers;
- (void)_setupComponentViewControllersIfNeeded;
- (void)_signalDelegateDidFinish;
- (void)_signalDelegateWillFinish;
- (void)_updatePreferredContentSize;
- (void)_updateViews;
- (void)addObserver:(id)observer;
- (void)fontPickerComponentViewController:(id)controller didChangeFontWeight:(double)weight;
- (void)fontPickerComponentViewController:(id)controller didSelectItem:(id)item;
- (void)homeScreenComponentViewController:(id)controller didBeginEyedropperSessionForHomeScreenConfiguration:(id)configuration;
- (void)homeScreenComponentViewController:(id)controller didUpdateHomeScreenConfiguration:(id)configuration;
- (void)loadView;
- (void)removeObserver:(id)observer;
- (void)setCenterBarButtonItems:(id)items;
- (void)setContentsLuminance:(double)luminance;
- (void)setLeadingBarButtonItems:(id)items;
- (void)setTrailingBarButtonItems:(id)items;
- (void)stylePickerComponentViewController:(id)controller didSelectStyle:(id)style isSuggestedStyle:(BOOL)suggestedStyle userSelected:(BOOL)selected;
- (void)textLayoutPickerComponentViewController:(id)controller didSelectTextLayout:(unint64_t)layout userSelected:(BOOL)selected;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewLayoutMarginsDidChange;
- (void)viewSafeAreaInsetsDidChange;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation PUIStylePickerViewController

- (PUIStylePickerViewController)initWithStylePickerConfiguration:(id)configuration
{
  configurationCopy = configuration;
  if (!configurationCopy)
  {
    [(PUIStylePickerViewController *)a2 initWithStylePickerConfiguration:?];
  }

  v6 = configurationCopy;
  components = [configurationCopy components];
  if ([components numberOfComponents])
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

      weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
      observers = v8->_observers;
      v8->_observers = weakObjectsHashTable;
    }

    self = v8;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (PUIStylePickerViewController)initWithNibName:(id)name bundle:(id)bundle
{
  bundle = [PUIStylePickerConfiguration defaultStylePickerConfigurationForRole:*MEMORY[0x1E69C5220], bundle];
  v6 = [(PUIStylePickerViewController *)self initWithStylePickerConfiguration:bundle];

  return v6;
}

- (PUIStylePickerViewController)initWithComponents:(id)components previewTextString:(id)string
{
  stringCopy = string;
  componentsCopy = components;
  v8 = [PUIStylePickerConfiguration alloc];
  v9 = [(PUIStylePickerConfiguration *)v8 initWithPreviewTextString:stringCopy defaultRole:*MEMORY[0x1E69C5220] components:componentsCopy defaultPreferredTimeMaxY:0 defaultContentsLuminance:0 styleConfiguration:0.0 textLayoutConfiguration:0.5];

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
  navigationController = [(PUIStylePickerViewController *)self navigationController];
  if (navigationController)
  {
    navigationBar = [navigationController navigationBar];
    [navigationBar frame];
    v5 = v4;

    rootStackView = [(PUIStylePickerViewController *)self rootStackView];
    [rootStackView bounds];
    [navigationController setPreferredContentSize:{v8, v5 + v7 + -15.0}];
  }

  [(PUIStylePickerViewController *)self _notifyObserversOfChangedDesiredDetent];
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = PUIStylePickerViewController;
  [(PUIStylePickerViewController *)&v4 viewWillAppear:appear];
  self->_hasNotifiedDelegateOfDismissal = 0;
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = PUIStylePickerViewController;
  [(PUIStylePickerViewController *)&v4 viewWillDisappear:disappear];
  [(PUIStylePickerViewController *)self _signalDelegateWillFinish];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = PUIStylePickerViewController;
  [(PUIStylePickerViewController *)&v4 viewDidDisappear:disappear];
  if (!self->_hasNotifiedDelegateOfDismissal)
  {
    [(PUIStylePickerViewController *)self _signalDelegateDidFinish];
  }
}

- (void)loadView
{
  v15[1] = *MEMORY[0x1E69E9840];
  [(PUIStylePickerViewController *)self _setupComponentViewControllersIfNeeded];
  rootStackView = [(PUIStylePickerViewController *)self rootStackView];
  if (!rootStackView)
  {
    v4 = objc_alloc(MEMORY[0x1E69DCF90]);
    rootStackView = [v4 initWithArrangedSubviews:MEMORY[0x1E695E0F0]];
    [rootStackView setAxis:1];
    [rootStackView setSpacing:48.0];
    [rootStackView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(PUIStylePickerViewController *)self setRootStackView:rootStackView];
  }

  backgroundView = [(PUIStylePickerViewController *)self backgroundView];
  if ((PUIFeatureEnabled(11) & 1) == 0 && !backgroundView)
  {
    v6 = objc_alloc(MEMORY[0x1E69DD298]);
    v7 = [MEMORY[0x1E69DC730] effectWithStyle:8];
    backgroundView = [v6 initWithEffect:v7];

    [backgroundView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(PUIStylePickerViewController *)self setBackgroundView:backgroundView];
  }

  if (![(PUIStylePickerViewController *)self isViewLoaded]|| ([(PUIStylePickerViewController *)self view], (v8 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v8 = objc_alloc_init(MEMORY[0x1E69DD250]);
    [(PUIStylePickerViewController *)self setView:v8];
  }

  if ((PUIFeatureEnabled(11) & 1) == 0)
  {
    [v8 addSubview:backgroundView];
  }

  [v8 addSubview:rootStackView];
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
  stylePickerConfiguration = [(PUIStylePickerViewController *)self stylePickerConfiguration];
  components = [stylePickerConfiguration components];
  if ([components containsComponent:1])
  {
    fontPickerComponentViewController = [(PUIStylePickerViewController *)self fontPickerComponentViewController];
    v10 = fontPickerComponentViewController != 0;
  }

  else
  {
    v10 = 0;
  }

  if ([components containsComponent:8])
  {
    textLayoutPickerComponentViewController = [(PUIStylePickerViewController *)self textLayoutPickerComponentViewController];
    v12 = textLayoutPickerComponentViewController != 0;
  }

  else
  {
    v12 = 0;
  }

  if ([components containsComponent:4])
  {
    stylePickerComponentViewController = [(PUIStylePickerViewController *)self stylePickerComponentViewController];
    v14 = stylePickerComponentViewController != 0;
  }

  else
  {
    v14 = 0;
  }

  if ([components containsComponent:2])
  {
    numberingSystemPickerComponentViewController = [(PUIStylePickerViewController *)self numberingSystemPickerComponentViewController];
    v16 = numberingSystemPickerComponentViewController != 0;
  }

  else
  {
    v16 = 0;
  }

  if ([components containsComponent:32])
  {
    homeScreenComponentViewController = [(PUIStylePickerViewController *)self homeScreenComponentViewController];
    v18 = homeScreenComponentViewController != 0;
  }

  else
  {
    v18 = 0;
  }

  v19 = v4 + v6;
  if (v16)
  {
    numberingSystemPickerComponentViewController2 = [(PUIStylePickerViewController *)self numberingSystemPickerComponentViewController];
    [numberingSystemPickerComponentViewController2 estimatedHeight];
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

  fontPickerComponentViewController2 = [(PUIStylePickerViewController *)self fontPickerComponentViewController];
  [fontPickerComponentViewController2 estimatedHeight];
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
    stylePickerComponentViewController2 = [(PUIStylePickerViewController *)self stylePickerComponentViewController];
    [stylePickerComponentViewController2 estimatedHeight];
    v19 = v19 + v30;

    v22 = 1;
    if (v18)
    {
      goto LABEL_25;
    }

    goto LABEL_28;
  }

  textLayoutPickerComponentViewController2 = [(PUIStylePickerViewController *)self textLayoutPickerComponentViewController];
  [textLayoutPickerComponentViewController2 estimatedHeight];
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
    homeScreenComponentViewController2 = [(PUIStylePickerViewController *)self homeScreenComponentViewController];
    [homeScreenComponentViewController2 estimatedHeight];
    v19 = v19 + v26;

    goto LABEL_30;
  }

LABEL_28:
  if (!v22)
  {
    v19 = v19 + 100.0;
  }

LABEL_30:
  navigationController = [(PUIStylePickerViewController *)self navigationController];

  if (navigationController)
  {
    v19 = v19 + 44.0;
  }

  [stylePickerConfiguration edgeInsets];
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
  stylePickerConfiguration = [(PUIStylePickerViewController *)self stylePickerConfiguration];
  textLayoutConfiguration = [stylePickerConfiguration textLayoutConfiguration];
  fontConfiguration = [textLayoutConfiguration fontConfiguration];

  extensionBundleURL = [(PUIStylePickerViewController *)self extensionBundleURL];
  v7 = [fontConfiguration PUIFontWithExtensionBundleURL:extensionBundleURL];

  if ([fontConfiguration isSystemItem])
  {
    fontIdentifier = [v7 fontIdentifier];
    v9 = [fontIdentifier isEqual:@"PRTimeFontIdentifierRail"] ^ 1;
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9;
}

- (void)setContentsLuminance:(double)luminance
{
  if ((BSEqualDoubles() & 1) == 0)
  {
    self->_contentsLuminance = luminance;
    stylePickerComponentViewController = [(PUIStylePickerViewController *)self stylePickerComponentViewController];

    if (stylePickerComponentViewController)
    {
      stylePickerComponentViewController2 = [(PUIStylePickerViewController *)self stylePickerComponentViewController];
      [stylePickerComponentViewController2 setContentsLuminance:luminance];
    }
  }
}

- (void)setTrailingBarButtonItems:(id)items
{
  itemsCopy = items;
  if (([(NSArray *)self->_trailingBarButtonItems isEqual:?]& 1) == 0)
  {
    v4 = [itemsCopy copy];
    trailingBarButtonItems = self->_trailingBarButtonItems;
    self->_trailingBarButtonItems = v4;

    [(PUIStylePickerViewController *)self _refreshBarButtonItems];
  }
}

- (void)setLeadingBarButtonItems:(id)items
{
  itemsCopy = items;
  if (([(NSArray *)self->_leadingBarButtonItems isEqual:?]& 1) == 0)
  {
    v4 = [itemsCopy copy];
    leadingBarButtonItems = self->_leadingBarButtonItems;
    self->_leadingBarButtonItems = v4;

    [(PUIStylePickerViewController *)self _refreshBarButtonItems];
  }
}

- (void)setCenterBarButtonItems:(id)items
{
  itemsCopy = items;
  if (([(NSArray *)self->_centerBarButtonItems isEqual:?]& 1) == 0)
  {
    v4 = [itemsCopy copy];
    centerBarButtonItems = self->_centerBarButtonItems;
    self->_centerBarButtonItems = v4;

    [(PUIStylePickerViewController *)self _refreshBarButtonItems];
  }
}

- (void)fontPickerComponentViewController:(id)controller didChangeFontWeight:(double)weight
{
  stylePickerConfiguration = [(PUIStylePickerViewController *)self stylePickerConfiguration];
  textLayoutConfiguration = [stylePickerConfiguration textLayoutConfiguration];
  fontConfiguration = [textLayoutConfiguration fontConfiguration];
  extensionBundleURL = [(PUIStylePickerViewController *)self extensionBundleURL];
  v10 = [fontConfiguration PUIFontWithExtensionBundleURL:extensionBundleURL];

  defaultRole = [stylePickerConfiguration defaultRole];
  v12 = [v10 effectiveFontForRole:defaultRole ignoringWeight:1];

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __86__PUIStylePickerViewController_fontPickerComponentViewController_didChangeFontWeight___block_invoke;
  v14[3] = &unk_1E78565C0;
  v15 = v12;
  weightCopy = weight;
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

- (void)fontPickerComponentViewController:(id)controller didSelectItem:(id)item
{
  controllerCopy = controller;
  itemCopy = item;
  stylePickerConfiguration = [(PUIStylePickerViewController *)self stylePickerConfiguration];
  defaultRole = [stylePickerConfiguration defaultRole];
  numberingSystemPickerMenuController = [(PUIStylePickerViewController *)self numberingSystemPickerMenuController];
  numberSystemBarItem = [(PUIStylePickerViewController *)self numberSystemBarItem];
  font = [itemCopy font];
  v13 = [font effectiveFontForRole:defaultRole];

  [numberingSystemPickerMenuController setFont:v13];
  numberingSystemPickerMenuController2 = [(PUIStylePickerViewController *)self numberingSystemPickerMenuController];
  menu = [numberingSystemPickerMenuController2 menu];

  [numberSystemBarItem setMenu:menu];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __80__PUIStylePickerViewController_fontPickerComponentViewController_didSelectItem___block_invoke;
  v19[3] = &unk_1E78565E8;
  v19[4] = self;
  v20 = itemCopy;
  v21 = v13;
  v22 = controllerCopy;
  v16 = controllerCopy;
  v17 = v13;
  v18 = itemCopy;
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

- (void)textLayoutPickerComponentViewController:(id)controller didSelectTextLayout:(unint64_t)layout userSelected:(BOOL)selected
{
  layoutCopy = layout;
  v7 = [(PUIStylePickerViewController *)self stylePickerConfiguration:controller];
  previewTextString = [v7 previewTextString];

  v9 = +[PUITextLayoutConfiguration maximumVerticalTextCharacters];
  if (PUITextLayoutIsVertical(layoutCopy) && [previewTextString length] > v9)
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

    layoutCopy = 0;
  }

  textLayoutPickerComponentViewController = [(PUIStylePickerViewController *)self textLayoutPickerComponentViewController];
  [textLayoutPickerComponentViewController setSelectedLayout:layoutCopy];

  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __105__PUIStylePickerViewController_textLayoutPickerComponentViewController_didSelectTextLayout_userSelected___block_invoke;
  v23[3] = &__block_descriptor_40_e39_v16__0__PUIStylePickerSelectionChange_8l;
  v23[4] = layoutCopy;
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

- (void)stylePickerComponentViewController:(id)controller didSelectStyle:(id)style isSuggestedStyle:(BOOL)suggestedStyle userSelected:(BOOL)selected
{
  selectedCopy = selected;
  styleCopy = style;
  v10 = styleCopy;
  if (selectedCopy)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __112__PUIStylePickerViewController_stylePickerComponentViewController_didSelectStyle_isSuggestedStyle_userSelected___block_invoke;
    v11[3] = &unk_1E7856630;
    v12 = styleCopy;
    suggestedStyleCopy = suggestedStyle;
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

- (id)stylePickerComponentViewController:(id)controller coordinatorForStyle:(id)style isSuggested:(BOOL)suggested
{
  controllerCopy = controller;
  styleCopy = style;
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
  v10 = styleCopy;
  v14 = v10;
  suggestedCopy = suggested;
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

- (void)homeScreenComponentViewController:(id)controller didUpdateHomeScreenConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __99__PUIStylePickerViewController_homeScreenComponentViewController_didUpdateHomeScreenConfiguration___block_invoke;
  v7[3] = &unk_1E7856680;
  v8 = configurationCopy;
  v6 = configurationCopy;
  [(PUIStylePickerViewController *)self _notifyClientsOfPickerConfigurationUpdate:v7];
}

- (void)homeScreenComponentViewController:(id)controller didBeginEyedropperSessionForHomeScreenConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __118__PUIStylePickerViewController_homeScreenComponentViewController_didBeginEyedropperSessionForHomeScreenConfiguration___block_invoke;
  v7[3] = &unk_1E78566A8;
  v7[4] = self;
  v8 = configurationCopy;
  v6 = configurationCopy;
  [(PUIStylePickerViewController *)self _notifyDelegateRespondingToSelector:sel_stylePickerViewController_startedMagnificationSessionForHomeScreenConfiguration_ handler:v7];
}

- (void)addObserver:(id)observer
{
  if (observer)
  {
    [(NSHashTable *)self->_observers addObject:?];
  }
}

- (void)removeObserver:(id)observer
{
  if (observer)
  {
    [(NSHashTable *)self->_observers removeObject:?];
  }
}

- (void)_notifyDelegateRespondingToSelector:(SEL)selector handler:(id)handler
{
  handlerCopy = handler;
  if (handlerCopy)
  {
    v7 = handlerCopy;
    delegate = [(PUIStylePickerViewController *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      v7[2](v7, delegate);
    }

    handlerCopy = v7;
  }
}

- (void)_notifyObserversRespondingToSelector:(SEL)selector enumerator:(id)enumerator
{
  v19 = *MEMORY[0x1E69E9840];
  enumeratorCopy = enumerator;
  if (enumeratorCopy)
  {
    delegate = [(PUIStylePickerViewController *)self delegate];
    if ((objc_opt_respondsToSelector() & 1) == 0 || (v17 = 0, enumeratorCopy[2](enumeratorCopy, delegate, &v17), (v17 & 1) == 0))
    {
      v15 = 0u;
      v16 = 0u;
      v13 = 0u;
      v14 = 0u;
      observers = [(PUIStylePickerViewController *)self observers];
      v8 = [observers countByEnumeratingWithState:&v13 objects:v18 count:16];
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
            objc_enumerationMutation(observers);
          }

          v12 = *(*(&v13 + 1) + 8 * v11);
          if (objc_opt_respondsToSelector())
          {
            v17 = 0;
            enumeratorCopy[2](enumeratorCopy, v12, &v17);
            if (v17)
            {
              break;
            }
          }

          if (v9 == ++v11)
          {
            v9 = [observers countByEnumeratingWithState:&v13 objects:v18 count:16];
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

- (void)_notifyChangeHandlersOfChange:(id)change
{
  changeCopy = change;
  changeHandler = [(PUIStylePickerViewController *)self changeHandler];
  v6 = objc_alloc_init(PUIStylePickerSelectionChange);
  changeCopy[2](changeCopy, v6);

  if ([(PUIStylePickerSelectionChange *)v6 hasChanges])
  {
    if (changeHandler)
    {
      (changeHandler)[2](changeHandler, v6);
    }

    stylePickerConfiguration = [(PUIStylePickerViewController *)self stylePickerConfiguration];
    fontIdentifier = [(PUIStylePickerSelectionChange *)v6 fontIdentifier];
    preferredAlignment = [(PUIStylePickerSelectionChange *)v6 preferredAlignment];
    preferredLayout = [(PUIStylePickerSelectionChange *)v6 preferredLayout];
    fontWeight = [(PUIStylePickerSelectionChange *)v6 fontWeight];
    customFont = [(PUIStylePickerSelectionChange *)v6 customFont];
    numberingSystem = [(PUIStylePickerSelectionChange *)v6 numberingSystem];
    isSystemItem = [(PUIStylePickerSelectionChange *)v6 isSystemItem];
    v43 = fontWeight;
    v44 = preferredLayout;
    v46 = numberingSystem;
    v47 = customFont;
    v45 = isSystemItem;
    if (preferredAlignment || preferredLayout || numberingSystem || fontIdentifier || fontWeight || customFont || isSystemItem)
    {
      textLayoutConfiguration = [stylePickerConfiguration textLayoutConfiguration];
      v15 = [textLayoutConfiguration mutableCopy];

      if (fontIdentifier || fontWeight || v47 || v45)
      {
        if (v47)
        {
          v41 = [PUICustomFontConfiguration alloc];
          v17 = MEMORY[0x1E696AAE8];
          extensionBundleURL = [(PUIStylePickerViewController *)self extensionBundleURL];
          v19 = [v17 bundleWithURL:extensionBundleURL];
          v20 = [(PUICustomFontConfiguration *)v41 initWithFont:v47 extensionBundle:v19];

          preferredLayout = v44;
        }

        else
        {
          v21 = [PUISystemFontConfiguration alloc];
          [fontWeight bs_CGFloatValue];
          v20 = -[PUISystemFontConfiguration initWithFontIdentifier:weight:systemItem:](v21, "initWithFontIdentifier:weight:systemItem:", fontIdentifier, [v45 BOOLValue], v22);
        }

        [v15 setFontConfiguration:v20];
      }

      if (preferredLayout)
      {
        [v15 setPreferredLayout:{objc_msgSend(preferredLayout, "unsignedIntegerValue")}];
      }

      if (preferredAlignment)
      {
        [v15 setPreferredAlignment:{objc_msgSend(preferredAlignment, "unsignedIntegerValue")}];
      }

      if (v46)
      {
        type = [v46 type];
        [v15 setNumberingSystemType:type];
      }
    }

    else
    {
      v15 = 0;
    }

    style = [(PUIStylePickerSelectionChange *)v6 style];
    isSuggestedStyle = [(PUIStylePickerSelectionChange *)v6 isSuggestedStyle];
    v26 = isSuggestedStyle;
    if (!(style | isSuggestedStyle))
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

    v40 = changeHandler;
    v42 = preferredAlignment;
    v39 = fontIdentifier;
    if (isSuggestedStyle && ([stylePickerConfiguration styleConfiguration], v27 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v27, "suggestedStyle"), v28 = objc_claimAutoreleasedReturnValue(), v29 = objc_msgSend(v28, "isEqual:", style), v28, v27, (v29 & 1) == 0))
    {
      styleConfiguration = [stylePickerConfiguration styleConfiguration];
      v30 = [styleConfiguration mutableCopy];

      [v30 setSuggestedStyle:style];
      if (!style)
      {
LABEL_35:
        fontIdentifier = v39;
        changeHandler = v40;
        preferredAlignment = v42;
        goto LABEL_39;
      }
    }

    else
    {
      v30 = 0;
      if (!style)
      {
        goto LABEL_35;
      }
    }

    v32 = stylePickerConfiguration;
    styleConfiguration2 = [stylePickerConfiguration styleConfiguration];
    selectedStyle = [styleConfiguration2 selectedStyle];
    v35 = [selectedStyle isEqual:style];

    if ((v35 & 1) == 0)
    {
      stylePickerConfiguration = v32;
      fontIdentifier = v39;
      preferredAlignment = v42;
      if (!v30)
      {
        styleConfiguration3 = [v32 styleConfiguration];
        v30 = [styleConfiguration3 mutableCopy];

        preferredAlignment = v42;
      }

      [v30 setSelectedStyle:style];
      changeHandler = v40;
      goto LABEL_39;
    }

    stylePickerConfiguration = v32;
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

- (void)_notifyClientsOfPickerConfigurationUpdate:(id)update
{
  if (update)
  {
    updateCopy = update;
    stylePickerConfiguration = [(PUIStylePickerViewController *)self stylePickerConfiguration];
    v6 = [stylePickerConfiguration mutableCopy];
    updateCopy[2](updateCopy, v6);

    v7 = objc_opt_new();
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __74__PUIStylePickerViewController__notifyClientsOfPickerConfigurationUpdate___block_invoke;
    v32[3] = &unk_1E7854BC0;
    v8 = v7;
    v33 = v8;
    selfCopy = self;
    v9 = v6;
    v35 = v9;
    v10 = MEMORY[0x1AC5769F0](v32);
    textLayoutConfiguration = [stylePickerConfiguration textLayoutConfiguration];
    textLayoutConfiguration2 = [v9 textLayoutConfiguration];
    v13 = [textLayoutConfiguration isEqual:textLayoutConfiguration2];

    if ((v13 & 1) == 0)
    {
      v10[2](v10);
      textLayoutConfiguration3 = [v9 textLayoutConfiguration];
      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = __74__PUIStylePickerViewController__notifyClientsOfPickerConfigurationUpdate___block_invoke_2;
      v30[3] = &unk_1E78566F8;
      v30[4] = self;
      v31 = textLayoutConfiguration3;
      v15 = textLayoutConfiguration3;
      [(PUIStylePickerViewController *)self _notifyObserversRespondingToSelector:sel_stylePickerViewController_didUpdateStyleConfiguration_ enumerator:v30];
    }

    styleConfiguration = [stylePickerConfiguration styleConfiguration];
    styleConfiguration2 = [v9 styleConfiguration];
    v18 = [styleConfiguration isEqual:styleConfiguration2];

    if ((v18 & 1) == 0)
    {
      v10[2](v10);
      styleConfiguration3 = [v9 styleConfiguration];
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __74__PUIStylePickerViewController__notifyClientsOfPickerConfigurationUpdate___block_invoke_3;
      v28[3] = &unk_1E78566F8;
      v28[4] = self;
      v29 = styleConfiguration3;
      v20 = styleConfiguration3;
      [(PUIStylePickerViewController *)self _notifyObserversRespondingToSelector:sel_stylePickerViewController_didUpdateStyleConfiguration_ enumerator:v28];
    }

    homeScreenConfiguration = [stylePickerConfiguration homeScreenConfiguration];
    homeScreenConfiguration2 = [v9 homeScreenConfiguration];
    v23 = [homeScreenConfiguration isEqual:homeScreenConfiguration2];

    if ((v23 & 1) == 0)
    {
      v10[2](v10);
      homeScreenConfiguration3 = [v9 homeScreenConfiguration];
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __74__PUIStylePickerViewController__notifyClientsOfPickerConfigurationUpdate___block_invoke_4;
      v26[3] = &unk_1E7856720;
      v26[4] = self;
      v27 = homeScreenConfiguration3;
      v25 = homeScreenConfiguration3;
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

- (void)_closeButtonTapped:(id)tapped
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

- (void)_didPressTextAlignmentBarButtonItem:(id)item
{
  textAlignmentBarItem = [(PUIStylePickerViewController *)self textAlignmentBarItem];
  toggle = [textAlignmentBarItem toggle];

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __68__PUIStylePickerViewController__didPressTextAlignmentBarButtonItem___block_invoke;
  v6[3] = &__block_descriptor_40_e39_v16__0__PUIStylePickerSelectionChange_8l;
  v6[4] = toggle;
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

- (void)_notifyClientsOfChangedNumberingSystem:(id)system
{
  systemCopy = system;
  if (!systemCopy)
  {
    systemCopy = +[PUINumberingSystem systemDefaultNumberingSystem];
  }

  fontPickerComponentViewController = [(PUIStylePickerViewController *)self fontPickerComponentViewController];
  if (fontPickerComponentViewController)
  {
    locale = [systemCopy locale];
    [fontPickerComponentViewController setLocale:locale];
  }

  numberingSystemPickerMenuController = [(PUIStylePickerViewController *)self numberingSystemPickerMenuController];
  numberSystemBarItem = [(PUIStylePickerViewController *)self numberSystemBarItem];
  v9 = numberSystemBarItem;
  if (numberingSystemPickerMenuController && numberSystemBarItem)
  {
    menu = [numberingSystemPickerMenuController menu];
    [v9 setMenu:menu];
  }

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __71__PUIStylePickerViewController__notifyClientsOfChangedNumberingSystem___block_invoke;
  v12[3] = &unk_1E7856798;
  v13 = systemCopy;
  v11 = systemCopy;
  [(PUIStylePickerViewController *)self _notifyChangeHandlersOfChange:v12];
}

- (void)_setupComponentViewControllersIfNeeded
{
  stylePickerConfiguration = [(PUIStylePickerViewController *)self stylePickerConfiguration];
  components = [stylePickerConfiguration components];
  defaultRole = [stylePickerConfiguration defaultRole];
  previewTextString = [stylePickerConfiguration previewTextString];
  styleConfiguration = [stylePickerConfiguration styleConfiguration];
  textLayoutConfiguration = [stylePickerConfiguration textLayoutConfiguration];
  [(PUIStylePickerViewController *)self contentsLuminance];
  v10 = v9;
  v11 = [components containsComponent:2];
  v79 = [components containsComponent:4];
  v12 = [components containsComponent:1];
  v76 = [components containsComponent:16];
  v13 = [components containsComponent:8];
  v77 = [components containsComponent:32];
  extensionBundleURL = [(PUIStylePickerViewController *)self extensionBundleURL];
  v81 = extensionBundleURL;
  if (extensionBundleURL)
  {
    v78 = [textLayoutConfiguration effectiveFontWithExtensionBundleURL:extensionBundleURL forRole:defaultRole];
  }

  else
  {
    v78 = 0;
  }

  delegate = [(PUIStylePickerViewController *)self delegate];
  if (v12)
  {
    v71 = v11;
    v74 = textLayoutConfiguration;
    v69 = styleConfiguration;
    v15 = [PUIFontPickerComponentViewController defaultItemsForRole:defaultRole text:previewTextString];
    v67 = v13;
    if (defaultRole && ([defaultRole isEqualToString:*MEMORY[0x1E69C5218]] & 1) == 0 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      v16 = [delegate additionalFontsForStylePickerViewController:self];
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

    v73 = defaultRole;
    v19 = previewTextString;
    if (objc_opt_respondsToSelector())
    {
      v90[0] = MEMORY[0x1E69E9820];
      v90[1] = 3221225472;
      v90[2] = __70__PUIStylePickerViewController__setupComponentViewControllersIfNeeded__block_invoke_2;
      v90[3] = &unk_1E78567E0;
      v91 = delegate;
      selfCopy = self;
      v20 = [v15 bs_filter:v90];

      v15 = v20;
    }

    fontConfiguration = [textLayoutConfiguration fontConfiguration];
    v22 = [fontConfiguration PUIFontWithExtensionBundleURL:v81];
    customFont = [v22 customFont];

    v66 = v22;
    if (customFont)
    {
      customFont2 = [v22 customFont];
      v88[0] = MEMORY[0x1E69E9820];
      v88[1] = 3221225472;
      v88[2] = __70__PUIStylePickerViewController__setupComponentViewControllersIfNeeded__block_invoke_3;
      v88[3] = &unk_1E7856808;
      v89 = customFont2;
      v25 = customFont2;
      v68 = [v15 bs_firstObjectPassingTest:v88];

      previewTextString = v19;
    }

    else
    {
      v85[0] = MEMORY[0x1E69E9820];
      v85[1] = 3221225472;
      v85[2] = __70__PUIStylePickerViewController__setupComponentViewControllersIfNeeded__block_invoke_4;
      v85[3] = &unk_1E78567E0;
      v26 = v22;
      v86 = v26;
      v27 = fontConfiguration;
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
      previewTextString = v19;
      v13 = v67;
    }

    defaultRole = v73;

    v28 = [v15 count] > 1;
    v11 = v71;
    v72 = v28 | [(PUIStylePickerViewController *)self _shouldShowWeightSliderForSelectedFont];
    if (v72)
    {
      v64 = stylePickerConfiguration;
      v29 = defaultRole;
      fontPickerComponentViewController = [(PUIStylePickerViewController *)self fontPickerComponentViewController];
      if (!fontPickerComponentViewController)
      {
        fontPickerComponentViewController = [[PUIFontPickerComponentViewController alloc] initWithItems:v15 selectedItem:v68 role:v29 titleString:previewTextString];
        [(PUIFontPickerComponentViewController *)fontPickerComponentViewController setDelegate:self];
        [(PUIStylePickerViewController *)self setFontPickerComponentViewController:fontPickerComponentViewController];
      }

      fontConfiguration2 = [v74 fontConfiguration];
      extensionBundleURL2 = [(PUIStylePickerViewController *)self extensionBundleURL];
      [fontConfiguration2 PUIFontWithExtensionBundleURL:extensionBundleURL2];
      v33 = v65 = previewTextString;

      v34 = [v33 effectiveFontForRole:v29 ignoringWeight:1];
      pui_variantWeightRange = [v34 pui_variantWeightRange];
      v36 = v15;
      v38 = v37;
      [v33 weight];
      [(PUIFontPickerComponentViewController *)fontPickerComponentViewController setFontWeight:(v39 - pui_variantWeightRange) / (v38 - pui_variantWeightRange)];
      numberingSystemType = [v74 numberingSystemType];
      v41 = [PUINumberingSystem numberingSystemForType:numberingSystemType];

      locale = [v41 locale];
      [(PUIFontPickerComponentViewController *)fontPickerComponentViewController setLocale:locale];

      v15 = v36;
      previewTextString = v65;

      defaultRole = v29;
      v11 = v71;
      v13 = v67;
      stylePickerConfiguration = v64;
    }

    else
    {
      [(PUIStylePickerViewController *)self setFontPickerComponentViewController:0];
    }

    styleConfiguration = v69;
    textLayoutConfiguration = v74;
  }

  else
  {
    v72 = 0;
  }

  if (v76)
  {
    textAlignmentBarItem = [(PUIStylePickerViewController *)self textAlignmentBarItem];

    if (!textAlignmentBarItem)
    {
      v44 = -[PUITextAlignmentBarButtonItem initWithTextAlignment:target:action:]([PUITextAlignmentBarButtonItem alloc], "initWithTextAlignment:target:action:", [textLayoutConfiguration preferredAlignment], self, sel__didPressTextAlignmentBarButtonItem_);
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
  v45 = [PUITextLayoutSet supportedTextLayoutSetForRole:defaultRole];
  textLayoutPickerComponentViewController = [(PUIStylePickerViewController *)self textLayoutPickerComponentViewController];
  if (!textLayoutPickerComponentViewController)
  {
    textLayoutPickerComponentViewController = -[PUITextLayoutPickerComponentViewController initWithLayouts:selectedLayout:]([PUITextLayoutPickerComponentViewController alloc], "initWithLayouts:selectedLayout:", v45, [textLayoutConfiguration preferredLayout]);
    [(PUITextLayoutPickerComponentViewController *)textLayoutPickerComponentViewController setDelegate:self];
    [(PUIStylePickerViewController *)self setTextLayoutPickerComponentViewController:textLayoutPickerComponentViewController];
  }

LABEL_33:
  if (v79)
  {
    stylePickerComponentViewController = [(PUIStylePickerViewController *)self stylePickerComponentViewController];
    if (!stylePickerComponentViewController)
    {
      stylePickerComponentViewController = [[PUIStylePickerComponentViewController alloc] initWithConfiguration:styleConfiguration];
      [(PUIStylePickerComponentViewController *)stylePickerComponentViewController setDelegate:self];
      [(PUIStylePickerViewController *)self setStylePickerComponentViewController:stylePickerComponentViewController];
    }

    [(PUIStylePickerComponentViewController *)stylePickerComponentViewController setContentsLuminance:v10];

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

  effectiveNumberingSystemType = [textLayoutConfiguration effectiveNumberingSystemType];
  v49 = [PUINumberingSystem numberingSystemForType:effectiveNumberingSystemType];

  if ((v79 | v72))
  {
    numberingSystemPickerMenuController = [(PUIStylePickerViewController *)self numberingSystemPickerMenuController];
    if (!numberingSystemPickerMenuController)
    {
      numberingSystemPickerMenuController = [[PUINumberingSystemPickerMenuController alloc] initWithNumberingSystem:v49 font:v78];
      [(PUINumberingSystemPickerMenuController *)numberingSystemPickerMenuController setDelegate:self];
      [(PUIStylePickerViewController *)self setNumberingSystemPickerMenuController:numberingSystemPickerMenuController];
    }

    numberSystemBarItem = [(PUIStylePickerViewController *)self numberSystemBarItem];
    if (!numberSystemBarItem)
    {
      v52 = MEMORY[0x1E69DCAB8];
      [MEMORY[0x1E69DCAD8] configurationWithScale:3];
      v75 = textLayoutConfiguration;
      v54 = v53 = previewTextString;
      [v52 systemImageNamed:@"globe" withConfiguration:v54];
      v70 = styleConfiguration;
      v56 = v55 = defaultRole;

      v57 = objc_alloc(MEMORY[0x1E69DC708]);
      menu = [(PUINumberingSystemPickerMenuController *)numberingSystemPickerMenuController menu];
      numberSystemBarItem = [v57 initWithImage:v56 menu:menu];

      previewTextString = v53;
      textLayoutConfiguration = v75;
      [(PUIStylePickerViewController *)self setNumberSystemBarItem:numberSystemBarItem];

      defaultRole = v55;
      styleConfiguration = v70;
    }
  }

  else
  {
    numberingSystemPickerMenuController = [(PUIStylePickerViewController *)self numberingSystemPickerComponentViewController];
    if (!numberingSystemPickerMenuController)
    {
      numberingSystemPickerMenuController = [[PUINumberingSystemPickerComponentViewController alloc] initWithNumberingSystem:v49 font:v78];
      [(PUINumberingSystemPickerMenuController *)numberingSystemPickerMenuController setDelegate:self];
      [(PUIStylePickerViewController *)self setNumberingSystemPickerComponentViewController:numberingSystemPickerMenuController];
    }
  }

LABEL_48:
  if (v77)
  {
    homeScreenConfiguration = [stylePickerConfiguration homeScreenConfiguration];
    v60 = homeScreenConfiguration;
    if (homeScreenConfiguration)
    {
      v61 = homeScreenConfiguration;
    }

    else
    {
      v61 = objc_opt_new();
    }

    v62 = v61;

    homeScreenComponentViewController = [(PUIStylePickerViewController *)self homeScreenComponentViewController];
    if (!homeScreenComponentViewController)
    {
      homeScreenComponentViewController = [[PUIStylePickerHomeScreenComponentViewController alloc] initWithHomeScreenConfiguration:v62];
      [(PUIStylePickerHomeScreenComponentViewController *)homeScreenComponentViewController setDelegate:self];
      [(PUIStylePickerViewController *)self setHomeScreenComponentViewController:homeScreenComponentViewController];
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
  stylePickerConfiguration = [(PUIStylePickerViewController *)self stylePickerConfiguration];
  components = [stylePickerConfiguration components];
  v4 = [components containsComponent:2];
  v5 = [components containsComponent:4];
  LODWORD(fontPickerComponentViewController2) = [components containsComponent:16];
  v7 = [components containsComponent:8];
  v8 = [components containsComponent:32];
  v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (!fontPickerComponentViewController2 || ([(PUIStylePickerViewController *)self fontPickerComponentViewController], fontPickerComponentViewController2 = objc_claimAutoreleasedReturnValue(), fontPickerComponentViewController2, !fontPickerComponentViewController2))
  {
    v13 = 1;
    if (!v7)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  fontPickerComponentViewController = [(PUIStylePickerViewController *)self fontPickerComponentViewController];
  items = [fontPickerComponentViewController items];
  v12 = [items count];

  if (v12 >= 2)
  {
    fontPickerComponentViewController2 = [(PUIStylePickerViewController *)self fontPickerComponentViewController];
    [v9 addObject:fontPickerComponentViewController2];

    v13 = 0;
    LODWORD(fontPickerComponentViewController2) = 1;
    if (!v7)
    {
      goto LABEL_8;
    }

LABEL_7:
    textLayoutPickerComponentViewController = [(PUIStylePickerViewController *)self textLayoutPickerComponentViewController];
    [v9 bs_safeAddObject:textLayoutPickerComponentViewController];

    goto LABEL_8;
  }

  v13 = 0;
  LODWORD(fontPickerComponentViewController2) = 0;
  if (v7)
  {
    goto LABEL_7;
  }

LABEL_8:
  if (((v13 | fontPickerComponentViewController2) & 1) == 0)
  {
    fontPickerComponentViewController3 = [(PUIStylePickerViewController *)self fontPickerComponentViewController];
    [v9 bs_safeAddObject:fontPickerComponentViewController3];
  }

  if (v4)
  {
    numberingSystemPickerComponentViewController = [(PUIStylePickerViewController *)self numberingSystemPickerComponentViewController];

    if (numberingSystemPickerComponentViewController)
    {
      numberingSystemPickerComponentViewController2 = [(PUIStylePickerViewController *)self numberingSystemPickerComponentViewController];
      [v9 addObject:numberingSystemPickerComponentViewController2];
    }
  }

  if (v5)
  {
    stylePickerComponentViewController = [(PUIStylePickerViewController *)self stylePickerComponentViewController];
    [v9 bs_safeAddObject:stylePickerComponentViewController];
  }

  if (v8)
  {
    homeScreenComponentViewController = [(PUIStylePickerViewController *)self homeScreenComponentViewController];
    [v9 bs_safeAddObject:homeScreenComponentViewController];
  }
}

- (void)_refreshBarButtonItems
{
  if (![(PUIStylePickerViewController *)self isViewLoaded])
  {
    return;
  }

  stylePickerConfiguration = [(PUIStylePickerViewController *)self stylePickerConfiguration];
  components = [stylePickerConfiguration components];
  leadingBarButtonItems = [(PUIStylePickerViewController *)self leadingBarButtonItems];
  centerBarButtonItems = [(PUIStylePickerViewController *)self centerBarButtonItems];
  trailingBarButtonItems = [(PUIStylePickerViewController *)self trailingBarButtonItems];
  v6 = objc_opt_new();
  v7 = objc_opt_new();
  v8 = objc_opt_new();
  v9 = [components containsComponent:2];
  v41 = components;
  if ([components containsComponent:16])
  {
    textAlignmentBarItem = [(PUIStylePickerViewController *)self textAlignmentBarItem];
    [v6 addObject:textAlignmentBarItem];
  }

  if (v9)
  {
    numberingSystemPickerComponentViewController = [(PUIStylePickerViewController *)self numberingSystemPickerComponentViewController];

    if (!numberingSystemPickerComponentViewController)
    {
      numberSystemBarItem = [(PUIStylePickerViewController *)self numberSystemBarItem];
      [v6 addObject:numberSystemBarItem];
    }
  }

  stylePickerComponentViewController = [(PUIStylePickerViewController *)self stylePickerComponentViewController];
  colorWell = [stylePickerComponentViewController colorWell];
  if (!colorWell)
  {
    goto LABEL_10;
  }

  v15 = colorWell;
  numberSystemBarItem2 = [(PUIStylePickerViewController *)self numberSystemBarItem];

  v17 = centerBarButtonItems;
  if (!numberSystemBarItem2)
  {
    stylePickerComponentViewController = [(PUIStylePickerComponentViewController *)self->_stylePickerComponentViewController colorWellView];
    colorWell2 = [stylePickerComponentViewController colorWell];
    [colorWell2 setTranslatesAutoresizingMaskIntoConstraints:0];
    v19 = [objc_alloc(MEMORY[0x1E69DC708]) initWithCustomView:stylePickerComponentViewController];
    [v6 addObject:v19];

LABEL_10:
    v17 = centerBarButtonItems;
  }

  if ([leadingBarButtonItems count])
  {
    v45 = [objc_alloc(MEMORY[0x1E69DC720]) initWithBarButtonItems:leadingBarButtonItems representativeItem:0];
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

  v39 = trailingBarButtonItems;
  if ([trailingBarButtonItems count])
  {
    v21 = [objc_alloc(MEMORY[0x1E69DC720]) initWithBarButtonItems:trailingBarButtonItems representativeItem:0];
  }

  else
  {
    v21 = 0;
  }

  v38 = v6;
  v40 = leadingBarButtonItems;
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
  navigationController = [(PUIStylePickerViewController *)self navigationController];
  navigationBar = [navigationController navigationBar];
  topItem = [navigationBar topItem];

  [topItem _setManualScrollEdgeAppearanceProgress:0.0];
  [topItem setLeadingItemGroups:v23];
  v30 = centerBarButtonItems;
  if ([centerBarButtonItems count])
  {
    if ([centerBarButtonItems count] == 1 && (objc_msgSend(centerBarButtonItems, "firstObject"), v31 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v31, "customView"), v32 = objc_claimAutoreleasedReturnValue(), v32, v31, v30 = centerBarButtonItems, v32))
    {
      firstObject = [centerBarButtonItems firstObject];
      customView = [firstObject customView];

      v30 = centerBarButtonItems;
      [customView sizeToFit];
      [topItem setTitleView:customView];
    }

    else
    {
      [topItem setCenterItemGroups:v25];
      [topItem setTitle:0];
    }
  }

  else
  {
    title = [(PUIStylePickerViewController *)self title];
    [topItem setTitle:title];

    v30 = centerBarButtonItems;
  }

  [topItem setTrailingItemGroups:v24];
}

- (id)componentViewControllers
{
  v3 = objc_opt_new();
  stylePickerConfiguration = [(PUIStylePickerViewController *)self stylePickerConfiguration];
  components = [stylePickerConfiguration components];
  v9 = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __56__PUIStylePickerViewController_componentViewControllers__block_invoke;
  v12 = &unk_1E7856830;
  v13 = v3;
  selfCopy = self;
  v6 = v3;
  [components enumerateComponents:&v9];

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
  selfCopy = self;
  v119 = *MEMORY[0x1E69E9840];
  view = [(PUIStylePickerViewController *)self view];
  rootStackView = [(PUIStylePickerViewController *)selfCopy rootStackView];
  backgroundView = [(PUIStylePickerViewController *)selfCopy backgroundView];
  componentViewControllers = [(PUIStylePickerViewController *)selfCopy componentViewControllers];
  v85 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v108 = 0u;
  v109 = 0u;
  v110 = 0u;
  v111 = 0u;
  obj = componentViewControllers;
  v6 = [obj countByEnumeratingWithState:&v108 objects:v118 count:16];
  v84 = selfCopy;
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
        view2 = [v11 view];
        [view2 setTranslatesAutoresizingMaskIntoConstraints:0];
        [v85 addObject:view2];
        parentViewController = [v11 parentViewController];

        v14 = parentViewController == v84;
        selfCopy = v84;
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

  arrangedSubviews = [rootStackView arrangedSubviews];
  v16 = v85;
  v17 = [v85 isEqualToArray:arrangedSubviews];

  v73 = rootStackView;
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
    arrangedSubviews2 = [rootStackView arrangedSubviews];
    v19 = [arrangedSubviews2 copy];

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

          [rootStackView removeArrangedSubview:*(*(&v104 + 1) + 8 * j)];
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

          [rootStackView addArrangedSubview:*(*(&v100 + 1) + 8 * k)];
        }

        v26 = [v24 countByEnumeratingWithState:&v100 objects:v116 count:16];
      }

      while (v26);
    }

    selfCopy = v84;
  }

  dividerViews = [(PUIStylePickerViewController *)selfCopy dividerViews];
  [dividerViews makeObjectsPerformSelector:sel_removeFromSuperview];

  v80 = objc_opt_new();
  v72 = view;
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
        separatorColor = [MEMORY[0x1E69DC888] separatorColor];
        [v33 setBackgroundColor:separatorColor];

        [v33 setTranslatesAutoresizingMaskIntoConstraints:0];
        [v32 addSubview:v33];
        [v80 addObject:v33];
        v86 = MEMORY[0x1E696ACD8];
        heightAnchor = [v33 heightAnchor];
        v92 = [heightAnchor constraintEqualToConstant:1.0];
        v114[0] = v92;
        leadingAnchor = [v33 leadingAnchor];
        leadingAnchor2 = [v32 leadingAnchor];
        v35 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
        v114[1] = v35;
        trailingAnchor = [v33 trailingAnchor];
        trailingAnchor2 = [v32 trailingAnchor];
        v38 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
        v114[2] = v38;
        bottomAnchor = [v33 bottomAnchor];
        topAnchor = [v32 topAnchor];
        v41 = [bottomAnchor constraintEqualToAnchor:topAnchor constant:-24.0];
        v114[3] = v41;
        v42 = [MEMORY[0x1E695DEC8] arrayWithObjects:v114 count:4];
        [v86 activateConstraints:v42];
      }

      v82 = [v75 countByEnumeratingWithState:&v96 objects:v115 count:16];
    }

    while (v82);
  }

  selfCopy = v84;
  [(PUIStylePickerViewController *)v84 setDividerViews:v80];

  view = v72;
  rootStackView = v73;
  v16 = v85;
LABEL_41:
  safeAreaLayoutGuide = [view safeAreaLayoutGuide];
  v44 = PUIFeatureEnabled(11);
  leadingAnchor3 = [rootStackView leadingAnchor];
  leadingAnchor4 = [safeAreaLayoutGuide leadingAnchor];
  v47 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  v48 = v47;
  if (v44)
  {
    v113[0] = v47;
    trailingAnchor3 = [rootStackView trailingAnchor];
    trailingAnchor4 = [safeAreaLayoutGuide trailingAnchor];
    v93 = [trailingAnchor3 constraintEqualToAnchor:?];
    v113[1] = v93;
    topAnchor2 = [rootStackView topAnchor];
    safeAreaLayoutGuide2 = [view safeAreaLayoutGuide];
    [safeAreaLayoutGuide2 topAnchor];
    v87 = v91 = topAnchor2;
    v83 = [topAnchor2 constraintEqualToAnchor:7.0 constant:?];
    v113[2] = v83;
    v51 = [MEMORY[0x1E695DEC8] arrayWithObjects:v113 count:3];
  }

  else
  {
    v112[0] = v47;
    trailingAnchor5 = [rootStackView trailingAnchor];
    trailingAnchor4 = [safeAreaLayoutGuide trailingAnchor];
    v93 = [trailingAnchor5 constraintEqualToAnchor:?];
    v112[1] = v93;
    topAnchor3 = [rootStackView topAnchor];
    safeAreaLayoutGuide2 = [view safeAreaLayoutGuide];
    [safeAreaLayoutGuide2 topAnchor];
    v87 = v91 = topAnchor3;
    v83 = [topAnchor3 constraintEqualToAnchor:7.0 constant:?];
    v112[2] = v83;
    leadingAnchor5 = [backgroundView leadingAnchor];
    leadingAnchor6 = [view leadingAnchor];
    v69 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
    v112[3] = v69;
    trailingAnchor6 = [backgroundView trailingAnchor];
    trailingAnchor7 = [view trailingAnchor];
    v66 = [trailingAnchor6 constraintEqualToAnchor:trailingAnchor7];
    v112[4] = v66;
    bottomAnchor2 = [backgroundView bottomAnchor];
    bottomAnchor3 = [view bottomAnchor];
    [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3];
    v81 = leadingAnchor3;
    v56 = v55 = view;
    v112[5] = v56;
    [backgroundView topAnchor];
    v57 = v79 = leadingAnchor4;
    [v55 topAnchor];
    v58 = v48;
    v60 = v59 = safeAreaLayoutGuide;
    v61 = [v57 constraintEqualToAnchor:v60];
    v112[6] = v61;
    v51 = [MEMORY[0x1E695DEC8] arrayWithObjects:v112 count:7];

    v16 = v85;
    safeAreaLayoutGuide = v59;
    v48 = v58;

    rootStackView = v73;
    leadingAnchor4 = v79;

    view = v55;
    leadingAnchor3 = v81;

    trailingAnchor3 = trailingAnchor5;
    selfCopy = v84;
  }

  layoutConstraints = [(PUIStylePickerViewController *)selfCopy layoutConstraints];
  v63 = [layoutConstraints isEqualToArray:v51];

  if ((v63 & 1) == 0)
  {
    v64 = MEMORY[0x1E696ACD8];
    layoutConstraints2 = [(PUIStylePickerViewController *)selfCopy layoutConstraints];
    [v64 deactivateConstraints:layoutConstraints2];

    [(PUIStylePickerViewController *)selfCopy setLayoutConstraints:v51];
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