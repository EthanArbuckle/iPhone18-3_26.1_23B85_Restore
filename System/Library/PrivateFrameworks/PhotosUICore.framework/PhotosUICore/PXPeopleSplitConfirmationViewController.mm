@interface PXPeopleSplitConfirmationViewController
- (NSArray)commonConstraints;
- (NSArray)landscapeConstraints;
- (NSArray)portraitConstraints;
- (PXPeopleSplitConfirmationViewController)initWithPerson:(id)person;
- (id)_buttonWithTitle:(id)title action:(SEL)action andColor:(id)color;
- (void)_disableActionButtonsWithSelectedButton:(id)button;
- (void)_enableActionButtons;
- (void)_updateUndoButton;
- (void)confirmTapped:(id)tapped;
- (void)contentSizeCategoryDidChangeNotification:(id)notification;
- (void)dealloc;
- (void)denyTapped:(id)tapped;
- (void)noMoreSuggestionsAvailableForSuggestionManager:(id)manager;
- (void)suggestionDidDisplay;
- (void)suggestionManager:(id)manager hasNewSuggestionsAvailable:(id)available;
- (void)traitEnvironment:(id)environment didChangeTraitCollection:(id)collection;
- (void)undoButtonTapped:(id)tapped;
- (void)updateViewConstraints;
- (void)updateViewWithViewState:(unint64_t)state;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation PXPeopleSplitConfirmationViewController

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v9.receiver = self;
  v9.super_class = PXPeopleSplitConfirmationViewController;
  coordinatorCopy = coordinator;
  [(PXPeopleSplitConfirmationViewController *)&v9 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __94__PXPeopleSplitConfirmationViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v8[3] = &unk_1E774BC60;
  v8[4] = self;
  [coordinatorCopy animateAlongsideTransition:v8 completion:0];
}

void __94__PXPeopleSplitConfirmationViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) view];
  [v1 setNeedsUpdateConstraints];
}

- (void)traitEnvironment:(id)environment didChangeTraitCollection:(id)collection
{
  environmentCopy = environment;
  collectionCopy = collection;
  v7 = collectionCopy;
  if (collectionCopy)
  {
    [collectionCopy displayScale];
    v9 = v8;
  }

  else
  {
    px_screen = [(PXPeopleSplitConfirmationViewController *)self px_screen];
    [px_screen scale];
    v9 = v11;
  }

  traitCollection = [(PXPeopleSplitConfirmationViewController *)self traitCollection];
  [traitCollection displayScale];
  v14 = v13;

  if (v14 != v9)
  {
    view = [(PXPeopleSplitConfirmationViewController *)self view];
    [view setNeedsUpdateConstraints];
  }
}

- (void)contentSizeCategoryDidChangeNotification:(id)notification
{
  view = [(PXPeopleSplitConfirmationViewController *)self view];
  [view setNeedsUpdateConstraints];
}

- (void)noMoreSuggestionsAvailableForSuggestionManager:(id)manager
{
  v5.receiver = self;
  v5.super_class = PXPeopleSplitConfirmationViewController;
  [(PXPeopleConfirmationViewController *)&v5 noMoreSuggestionsAvailableForSuggestionManager:manager];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __90__PXPeopleSplitConfirmationViewController_noMoreSuggestionsAvailableForSuggestionManager___block_invoke;
  block[3] = &unk_1E774C648;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)suggestionManager:(id)manager hasNewSuggestionsAvailable:(id)available
{
  v6.receiver = self;
  v6.super_class = PXPeopleSplitConfirmationViewController;
  [(PXPeopleConfirmationViewController *)&v6 suggestionManager:manager hasNewSuggestionsAvailable:available];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __88__PXPeopleSplitConfirmationViewController_suggestionManager_hasNewSuggestionsAvailable___block_invoke;
  block[3] = &unk_1E774C648;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)_updateUndoButton
{
  suggestionManager = [(PXPeopleConfirmationViewController *)self suggestionManager];
  canUndo = [suggestionManager canUndo];

  navigationItem = [(PXPeopleSplitConfirmationViewController *)self navigationItem];
  if (canUndo)
  {
    undoButton = [(PXPeopleSplitConfirmationViewController *)self undoButton];
    [navigationItem setLeftBarButtonItem:undoButton];
  }

  else
  {
    [navigationItem setLeftBarButtonItem:0];
  }
}

- (void)_disableActionButtonsWithSelectedButton:(id)button
{
  buttonCopy = button;
  confirmButton = [(PXPeopleSplitConfirmationViewController *)self confirmButton];
  denyButton = [(PXPeopleSplitConfirmationViewController *)self denyButton];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [buttonCopy titleColorForState:1];
    v7 = [buttonCopy backgroundImageForState:1];
    [buttonCopy setTitleColor:v6 forState:2];
    [buttonCopy setBackgroundImage:v7 forState:2];
  }

  [confirmButton setEnabled:0];
  [denyButton setEnabled:0];
}

- (void)_enableActionButtons
{
  confirmButton = [(PXPeopleSplitConfirmationViewController *)self confirmButton];
  denyButton = [(PXPeopleSplitConfirmationViewController *)self denyButton];
  [confirmButton setEnabled:1];
  [denyButton setEnabled:1];
  [confirmButton setBackgroundImage:0 forState:2];
  [denyButton setBackgroundImage:0 forState:2];
  v4 = [confirmButton titleColorForState:0];
  [confirmButton setTitleColor:v4 forState:2];
  v5 = [denyButton titleColorForState:0];
  [denyButton setTitleColor:v5 forState:2];
}

- (id)_buttonWithTitle:(id)title action:(SEL)action andColor:(id)color
{
  v8 = MEMORY[0x1E69DC738];
  colorCopy = color;
  titleCopy = title;
  v11 = [v8 buttonWithType:1];
  [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v11 setTitle:titleCopy forState:0];

  [v11 setTitleColor:colorCopy forState:0];
  secondarySystemBackgroundColor = [MEMORY[0x1E69DC888] secondarySystemBackgroundColor];
  [v11 setBackgroundColor:secondarySystemBackgroundColor];

  layer = [v11 layer];
  [layer setCornerRadius:15.0];

  titleLabel = [v11 titleLabel];
  v15 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD40]];
  [titleLabel setFont:v15];

  [titleLabel setAdjustsFontForContentSizeCategory:1];
  [v11 setClipsToBounds:1];
  [v11 addTarget:self action:action forControlEvents:64];

  return v11;
}

- (void)undoButtonTapped:(id)tapped
{
  [(PXPeopleSplitConfirmationViewController *)self _disableActionButtonsWithSelectedButton:tapped];
  undoManager = [(PXPeopleSplitConfirmationViewController *)self undoManager];
  if ([undoManager canUndo])
  {
    [undoManager undo];
  }
}

- (void)denyTapped:(id)tapped
{
  tappedCopy = tapped;
  [(PXPeopleSplitConfirmationViewController *)self _disableActionButtonsWithSelectedButton:tappedCopy];
  v8.receiver = self;
  v8.super_class = PXPeopleSplitConfirmationViewController;
  [(PXPeopleConfirmationViewController *)&v8 denyTapped:tappedCopy];

  v5 = MEMORY[0x1E69DD250];
  denyButton = [(PXPeopleSplitConfirmationViewController *)self denyButton];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __54__PXPeopleSplitConfirmationViewController_denyTapped___block_invoke;
  v7[3] = &unk_1E774C648;
  v7[4] = self;
  [v5 transitionWithView:denyButton duration:5242880 options:v7 animations:0 completion:0.33];
}

void __54__PXPeopleSplitConfirmationViewController_denyTapped___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) denyButton];
  [v1 setHighlighted:1];
}

- (void)confirmTapped:(id)tapped
{
  tappedCopy = tapped;
  [(PXPeopleSplitConfirmationViewController *)self _disableActionButtonsWithSelectedButton:tappedCopy];
  v8.receiver = self;
  v8.super_class = PXPeopleSplitConfirmationViewController;
  [(PXPeopleConfirmationViewController *)&v8 confirmTapped:tappedCopy];

  v5 = MEMORY[0x1E69DD250];
  confirmButton = [(PXPeopleSplitConfirmationViewController *)self confirmButton];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __57__PXPeopleSplitConfirmationViewController_confirmTapped___block_invoke;
  v7[3] = &unk_1E774C648;
  v7[4] = self;
  [v5 transitionWithView:confirmButton duration:5242880 options:v7 animations:0 completion:0.33];
}

void __57__PXPeopleSplitConfirmationViewController_confirmTapped___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) confirmButton];
  [v1 setHighlighted:1];
}

- (void)suggestionDidDisplay
{
  v3.receiver = self;
  v3.super_class = PXPeopleSplitConfirmationViewController;
  [(PXPeopleConfirmationViewController *)&v3 suggestionDidDisplay];
  [(PXPeopleSplitConfirmationViewController *)self _enableActionButtons];
}

- (void)updateViewWithViewState:(unint64_t)state
{
  v11.receiver = self;
  v11.super_class = PXPeopleSplitConfirmationViewController;
  [(PXPeopleConfirmationViewController *)&v11 updateViewWithViewState:?];
  v5 = state < 6;
  v6 = 0x2Cu >> state;
  descriptionLabel = [(PXPeopleConfirmationViewController *)self descriptionLabel];
  [descriptionLabel setHidden:v5 & v6];

  confirmButton = [(PXPeopleSplitConfirmationViewController *)self confirmButton];
  [confirmButton setHidden:v5 & v6];

  denyButton = [(PXPeopleSplitConfirmationViewController *)self denyButton];
  [denyButton setHidden:v5 & v6];

  countView = [(PXPeopleConfirmationViewController *)self countView];
  [countView setHidden:v5 & v6];
}

- (NSArray)commonConstraints
{
  v74[17] = *MEMORY[0x1E69E9840];
  commonConstraints = self->_commonConstraints;
  if (!commonConstraints)
  {
    confirmButton = [(PXPeopleSplitConfirmationViewController *)self confirmButton];
    denyButton = [(PXPeopleSplitConfirmationViewController *)self denyButton];
    suggestionView = [(PXPeopleConfirmationViewController *)self suggestionView];
    descriptionLabel = [(PXPeopleConfirmationViewController *)self descriptionLabel];
    countView = [(PXPeopleConfirmationViewController *)self countView];
    view = [(PXPeopleSplitConfirmationViewController *)self view];
    safeAreaLayoutGuide = [view safeAreaLayoutGuide];

    controlLayoutGuide = [(PXPeopleSplitConfirmationViewController *)self controlLayoutGuide];
    bottomAnchor = [denyButton bottomAnchor];
    bottomAnchor2 = [controlLayoutGuide bottomAnchor];
    v13 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];

    denyButtonBottomConstraint = self->_denyButtonBottomConstraint;
    self->_denyButtonBottomConstraint = v13;
    v15 = v13;

    topAnchor = [descriptionLabel topAnchor];
    topAnchor2 = [controlLayoutGuide topAnchor];
    v69 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:15.0];
    v74[0] = v69;
    topAnchor3 = [countView topAnchor];
    bottomAnchor3 = [descriptionLabel bottomAnchor];
    v66 = [topAnchor3 constraintEqualToAnchor:bottomAnchor3 constant:5.0];
    v74[1] = v66;
    heightAnchor = [confirmButton heightAnchor];
    v64 = [heightAnchor constraintEqualToConstant:50.0];
    v74[2] = v64;
    heightAnchor2 = [denyButton heightAnchor];
    heightAnchor3 = [confirmButton heightAnchor];
    v61 = [heightAnchor2 constraintEqualToAnchor:heightAnchor3];
    v74[3] = v61;
    v73 = denyButton;
    widthAnchor = [denyButton widthAnchor];
    widthAnchor2 = [confirmButton widthAnchor];
    v57 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
    v74[4] = v57;
    v60 = descriptionLabel;
    widthAnchor3 = [descriptionLabel widthAnchor];
    widthAnchor4 = [controlLayoutGuide widthAnchor];
    v53 = [widthAnchor3 constraintEqualToAnchor:widthAnchor4];
    v74[5] = v53;
    v56 = countView;
    widthAnchor5 = [countView widthAnchor];
    widthAnchor6 = [controlLayoutGuide widthAnchor];
    v50 = [widthAnchor5 constraintEqualToAnchor:widthAnchor6];
    v74[6] = v50;
    centerXAnchor = [denyButton centerXAnchor];
    centerXAnchor2 = [confirmButton centerXAnchor];
    v46 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v74[7] = v46;
    centerXAnchor3 = [descriptionLabel centerXAnchor];
    centerXAnchor4 = [confirmButton centerXAnchor];
    v41 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
    v74[8] = v41;
    centerXAnchor5 = [countView centerXAnchor];
    centerXAnchor6 = [confirmButton centerXAnchor];
    v38 = [centerXAnchor5 constraintEqualToAnchor:centerXAnchor6];
    v74[9] = v38;
    topAnchor4 = [suggestionView topAnchor];
    topAnchor5 = [safeAreaLayoutGuide topAnchor];
    v35 = [topAnchor4 constraintEqualToAnchor:topAnchor5];
    v74[10] = v35;
    leadingAnchor = [suggestionView leadingAnchor];
    leadingAnchor2 = [safeAreaLayoutGuide leadingAnchor];
    v32 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v74[11] = v32;
    trailingAnchor = [controlLayoutGuide trailingAnchor];
    v47 = safeAreaLayoutGuide;
    trailingAnchor2 = [safeAreaLayoutGuide trailingAnchor];
    v29 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v74[12] = v29;
    v43 = controlLayoutGuide;
    bottomAnchor4 = [controlLayoutGuide bottomAnchor];
    bottomAnchor5 = [safeAreaLayoutGuide bottomAnchor];
    v17 = [bottomAnchor4 constraintEqualToAnchor:bottomAnchor5];
    v74[13] = v17;
    v18 = confirmButton;
    v45 = confirmButton;
    centerXAnchor7 = [confirmButton centerXAnchor];
    centerXAnchor8 = [controlLayoutGuide centerXAnchor];
    v21 = [centerXAnchor7 constraintEqualToAnchor:centerXAnchor8];
    v74[14] = v21;
    bottomAnchor6 = [v18 bottomAnchor];
    topAnchor6 = [v73 topAnchor];
    v24 = [bottomAnchor6 constraintEqualToAnchor:topAnchor6 constant:-5.0];
    v74[15] = v24;
    v74[16] = v15;
    v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v74 count:17];
    v26 = self->_commonConstraints;
    self->_commonConstraints = v25;

    commonConstraints = self->_commonConstraints;
  }

  return commonConstraints;
}

- (NSArray)landscapeConstraints
{
  v36[6] = *MEMORY[0x1E69E9840];
  landscapeConstraints = self->_landscapeConstraints;
  if (!landscapeConstraints)
  {
    confirmButton = [(PXPeopleSplitConfirmationViewController *)self confirmButton];
    suggestionView = [(PXPeopleConfirmationViewController *)self suggestionView];
    controlLayoutGuide = [(PXPeopleSplitConfirmationViewController *)self controlLayoutGuide];
    view = [(PXPeopleSplitConfirmationViewController *)self view];
    safeAreaLayoutGuide = [view safeAreaLayoutGuide];

    topAnchor = [controlLayoutGuide topAnchor];
    v9 = safeAreaLayoutGuide;
    topAnchor2 = [safeAreaLayoutGuide topAnchor];
    v33 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v36[0] = v33;
    leadingAnchor = [controlLayoutGuide leadingAnchor];
    v28 = suggestionView;
    trailingAnchor = [suggestionView trailingAnchor];
    v29 = [leadingAnchor constraintEqualToAnchor:trailingAnchor];
    v36[1] = v29;
    leadingAnchor2 = [confirmButton leadingAnchor];
    v30 = controlLayoutGuide;
    leadingAnchor3 = [controlLayoutGuide leadingAnchor];
    v24 = [leadingAnchor2 constraintEqualToAnchor:leadingAnchor3 constant:42.0];
    v36[2] = v24;
    v26 = confirmButton;
    trailingAnchor2 = [confirmButton trailingAnchor];
    trailingAnchor3 = [controlLayoutGuide trailingAnchor];
    v11 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3 constant:-42.0];
    v36[3] = v11;
    bottomAnchor = [suggestionView bottomAnchor];
    v13 = v9;
    v23 = v9;
    bottomAnchor2 = [v9 bottomAnchor];
    v15 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v36[4] = v15;
    widthAnchor = [confirmButton widthAnchor];
    widthAnchor2 = [v13 widthAnchor];
    v18 = [widthAnchor constraintEqualToAnchor:widthAnchor2 multiplier:0.33];
    v36[5] = v18;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:6];
    v20 = self->_landscapeConstraints;
    self->_landscapeConstraints = v19;

    landscapeConstraints = self->_landscapeConstraints;
  }

  return landscapeConstraints;
}

- (NSArray)portraitConstraints
{
  v34[7] = *MEMORY[0x1E69E9840];
  portraitConstraints = self->_portraitConstraints;
  if (!portraitConstraints)
  {
    suggestionView = [(PXPeopleConfirmationViewController *)self suggestionView];
    controlLayoutGuide = [(PXPeopleSplitConfirmationViewController *)self controlLayoutGuide];
    confirmButton = [(PXPeopleSplitConfirmationViewController *)self confirmButton];
    view = [(PXPeopleSplitConfirmationViewController *)self view];
    safeAreaLayoutGuide = [view safeAreaLayoutGuide];

    [(PXPeopleSplitConfirmationViewController *)self controlGuideHeightConstraint];
    v33 = v32 = controlLayoutGuide;
    topAnchor = [controlLayoutGuide topAnchor];
    bottomAnchor = [suggestionView bottomAnchor];
    v29 = [topAnchor constraintEqualToAnchor:bottomAnchor];
    v34[0] = v29;
    leadingAnchor = [controlLayoutGuide leadingAnchor];
    leadingAnchor2 = [safeAreaLayoutGuide leadingAnchor];
    v26 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v34[1] = v26;
    trailingAnchor = [suggestionView trailingAnchor];
    v8 = safeAreaLayoutGuide;
    v21 = safeAreaLayoutGuide;
    trailingAnchor2 = [safeAreaLayoutGuide trailingAnchor];
    v22 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v34[2] = v22;
    heightAnchor = [suggestionView heightAnchor];
    widthAnchor = [suggestionView widthAnchor];
    v9 = [heightAnchor constraintGreaterThanOrEqualToAnchor:widthAnchor multiplier:0.5];
    v34[3] = v9;
    heightAnchor2 = [suggestionView heightAnchor];
    widthAnchor2 = [suggestionView widthAnchor];
    v12 = [heightAnchor2 constraintLessThanOrEqualToAnchor:widthAnchor2];
    v34[4] = v12;
    widthAnchor3 = [confirmButton widthAnchor];
    widthAnchor4 = [v8 widthAnchor];
    v15 = [widthAnchor3 constraintEqualToAnchor:widthAnchor4 multiplier:0.8];
    v34[5] = v15;
    v34[6] = v33;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:7];
    v17 = self->_portraitConstraints;
    self->_portraitConstraints = v16;

    portraitConstraints = self->_portraitConstraints;
  }

  return portraitConstraints;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E69DDC48] object:0];

  v4.receiver = self;
  v4.super_class = PXPeopleSplitConfirmationViewController;
  [(PXPeopleSplitConfirmationViewController *)&v4 dealloc];
}

- (void)updateViewConstraints
{
  view = [(PXPeopleSplitConfirmationViewController *)self view];
  [view bounds];
  x = v41.origin.x;
  y = v41.origin.y;
  width = v41.size.width;
  height = v41.size.height;
  v8 = CGRectGetWidth(v41);
  v42.origin.x = x;
  v42.origin.y = y;
  v42.size.width = width;
  v42.size.height = height;
  v9 = CGRectGetHeight(v42);
  v10 = MEMORY[0x1E696ACD8];
  if (v8 >= v9)
  {
    [(PXPeopleSplitConfirmationViewController *)self portraitConstraints];
  }

  else
  {
    [(PXPeopleSplitConfirmationViewController *)self landscapeConstraints];
  }
  v11 = ;
  [v10 deactivateConstraints:v11];

  traitCollection = [(PXPeopleSplitConfirmationViewController *)self traitCollection];
  horizontalSizeClass = [traitCollection horizontalSizeClass];
  verticalSizeClass = [traitCollection verticalSizeClass];
  descriptionLabel = [(PXPeopleConfirmationViewController *)self descriptionLabel];
  font = [descriptionLabel font];

  confirmButton = [(PXPeopleSplitConfirmationViewController *)self confirmButton];
  titleLabel = [confirmButton titleLabel];
  font2 = [titleLabel font];

  denyButton = [(PXPeopleSplitConfirmationViewController *)self denyButton];
  titleLabel2 = [denyButton titleLabel];
  font3 = [titleLabel2 font];

  if (v8 < v9 && horizontalSizeClass == 1)
  {
    v23 = 40.0;
    v24 = 66.0;
    v25 = 66.0;
  }

  else
  {
    v26 = v8 < v9;
    if (verticalSizeClass == 1)
    {
      v26 = 1;
    }

    v27 = 74.0;
    if (v8 >= v9 && verticalSizeClass == 1)
    {
      v27 = 86.0;
    }

    if (v26)
    {
      v24 = v27;
    }

    else
    {
      v24 = 75.0;
    }

    if (v8 >= v9 && verticalSizeClass == 1 && v26)
    {
      v25 = 86.0;
    }

    else
    {
      v25 = 71.0;
    }

    v23 = 81.0;
  }

  [font _scaledValueForValue:v23];
  v29 = v28;
  [font2 _scaledValueForValue:v24];
  v31 = v30;
  [font3 _scaledValueForValue:v25];
  v33 = v29 + v31 + v32 * 2.0;
  controlGuideHeightConstraint = [(PXPeopleSplitConfirmationViewController *)self controlGuideHeightConstraint];
  [controlGuideHeightConstraint setConstant:v33];

  [view safeAreaInsets];
  if (v35 == 0.0)
  {
    v36 = -15.0;
  }

  else
  {
    v36 = 0.0;
  }

  denyButtonBottomConstraint = [(PXPeopleSplitConfirmationViewController *)self denyButtonBottomConstraint];
  [denyButtonBottomConstraint setConstant:v36];

  v38 = MEMORY[0x1E696ACD8];
  if (v8 >= v9)
  {
    [(PXPeopleSplitConfirmationViewController *)self landscapeConstraints];
  }

  else
  {
    [(PXPeopleSplitConfirmationViewController *)self portraitConstraints];
  }
  v39 = ;
  [v38 activateConstraints:v39];

  v40.receiver = self;
  v40.super_class = PXPeopleSplitConfirmationViewController;
  [(PXPeopleSplitConfirmationViewController *)&v40 updateViewConstraints];
}

- (void)viewDidLoad
{
  v34.receiver = self;
  v34.super_class = PXPeopleSplitConfirmationViewController;
  [(PXPeopleConfirmationViewController *)&v34 viewDidLoad];
  view = [(PXPeopleSplitConfirmationViewController *)self view];
  systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
  [view setBackgroundColor:systemBackgroundColor];

  v5 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:0 target:self action:sel_doneTapped_];
  navigationItem = [(PXPeopleSplitConfirmationViewController *)self navigationItem];
  v33 = v5;
  [navigationItem setRightBarButtonItem:v5];

  v32 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:21 target:self action:sel_undoButtonTapped_];
  [(PXPeopleSplitConfirmationViewController *)self setUndoButton:?];
  v7 = objc_alloc_init(MEMORY[0x1E69DCC20]);
  [view addLayoutGuide:v7];
  v29 = v7;
  [(PXPeopleSplitConfirmationViewController *)self setControlLayoutGuide:v7];
  descriptionLabel = [(PXPeopleConfirmationViewController *)self descriptionLabel];
  [descriptionLabel setAdjustsFontForContentSizeCategory:1];
  [descriptionLabel setHidden:1];
  [descriptionLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  v9 = *MEMORY[0x1E69DDDC0];
  v10 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDDC0]];
  v11 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:v9 addingSymbolicTraits:2 options:0];
  v12 = MEMORY[0x1E69DB878];
  [v10 pointSize];
  v31 = v11;
  v13 = [v12 fontWithDescriptor:v11 size:?];

  v30 = v13;
  [descriptionLabel setFont:v13];
  [view addSubview:descriptionLabel];
  v14 = [[PXAnimatedCountView alloc] initWithFrame:0.0, 0.0, 200.0, 44.0];
  [(PXAnimatedCountView *)v14 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(PXPeopleConfirmationViewController *)self setCountView:v14];
  v15 = view;
  [view addSubview:v14];
  person = [(PXPeopleSplitConfirmationViewController *)self person];
  px_localizedName = [person px_localizedName];
  if ([px_localizedName length])
  {
    PXLocalizedStringForPersonOrPetAndVisibility(person, 0, @"PXPeopleConfirmButtonThisIsPerson");
    objc_claimAutoreleasedReturnValue();
    PXStringWithValidatedFormat();
  }

  v17 = PXLocalizedStringForPersonOrPetAndVisibility(person, 0, @"PXPeopleConfirmButtonUnnamed");
  v18 = PXLocalizedStringForPersonOrPetAndVisibility(person, 0, @"PXPeopleDenyButtonUnnamed");
  v27 = v17;
  tintColor = [v15 tintColor];
  v20 = [(PXPeopleSplitConfirmationViewController *)self _buttonWithTitle:v17 action:sel_confirmTapped_ andColor:tintColor];

  [v15 addSubview:v20];
  [(PXPeopleSplitConfirmationViewController *)self setConfirmButton:v20];
  [v20 setHidden:1];
  systemRedColor = [MEMORY[0x1E69DC888] systemRedColor];
  v22 = [(PXPeopleSplitConfirmationViewController *)self _buttonWithTitle:v18 action:sel_denyTapped_ andColor:systemRedColor];

  [v15 addSubview:v22];
  [(PXPeopleSplitConfirmationViewController *)self setDenyButton:v22];
  [v22 setHidden:1];
  heightAnchor = [v29 heightAnchor];
  v24 = [heightAnchor constraintGreaterThanOrEqualToConstant:100.0];

  [(PXPeopleSplitConfirmationViewController *)self setControlGuideHeightConstraint:v24];
  v25 = MEMORY[0x1E696ACD8];
  commonConstraints = [(PXPeopleSplitConfirmationViewController *)self commonConstraints];
  [v25 activateConstraints:commonConstraints];
}

- (PXPeopleSplitConfirmationViewController)initWithPerson:(id)person
{
  v13[2] = *MEMORY[0x1E69E9840];
  personCopy = person;
  v12.receiver = self;
  v12.super_class = PXPeopleSplitConfirmationViewController;
  v6 = [(PXPeopleConfirmationViewController *)&v12 initWithPerson:personCopy];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_person, person);
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v7 selector:sel_contentSizeCategoryDidChangeNotification_ name:*MEMORY[0x1E69DDC48] object:0];

    v13[0] = objc_opt_class();
    v13[1] = objc_opt_class();
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:2];
    v10 = [(PXPeopleSplitConfirmationViewController *)v7 registerForTraitChanges:v9 withAction:sel_traitEnvironment_didChangeTraitCollection_];
  }

  return v7;
}

@end