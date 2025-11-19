@interface PXPeopleSplitConfirmationViewController
- (NSArray)commonConstraints;
- (NSArray)landscapeConstraints;
- (NSArray)portraitConstraints;
- (PXPeopleSplitConfirmationViewController)initWithPerson:(id)a3;
- (id)_buttonWithTitle:(id)a3 action:(SEL)a4 andColor:(id)a5;
- (void)_disableActionButtonsWithSelectedButton:(id)a3;
- (void)_enableActionButtons;
- (void)_updateUndoButton;
- (void)confirmTapped:(id)a3;
- (void)contentSizeCategoryDidChangeNotification:(id)a3;
- (void)dealloc;
- (void)denyTapped:(id)a3;
- (void)noMoreSuggestionsAvailableForSuggestionManager:(id)a3;
- (void)suggestionDidDisplay;
- (void)suggestionManager:(id)a3 hasNewSuggestionsAvailable:(id)a4;
- (void)traitEnvironment:(id)a3 didChangeTraitCollection:(id)a4;
- (void)undoButtonTapped:(id)a3;
- (void)updateViewConstraints;
- (void)updateViewWithViewState:(unint64_t)a3;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation PXPeopleSplitConfirmationViewController

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v9.receiver = self;
  v9.super_class = PXPeopleSplitConfirmationViewController;
  v7 = a4;
  [(PXPeopleSplitConfirmationViewController *)&v9 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __94__PXPeopleSplitConfirmationViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v8[3] = &unk_1E774BC60;
  v8[4] = self;
  [v7 animateAlongsideTransition:v8 completion:0];
}

void __94__PXPeopleSplitConfirmationViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) view];
  [v1 setNeedsUpdateConstraints];
}

- (void)traitEnvironment:(id)a3 didChangeTraitCollection:(id)a4
{
  v16 = a3;
  v6 = a4;
  v7 = v6;
  if (v6)
  {
    [v6 displayScale];
    v9 = v8;
  }

  else
  {
    v10 = [(PXPeopleSplitConfirmationViewController *)self px_screen];
    [v10 scale];
    v9 = v11;
  }

  v12 = [(PXPeopleSplitConfirmationViewController *)self traitCollection];
  [v12 displayScale];
  v14 = v13;

  if (v14 != v9)
  {
    v15 = [(PXPeopleSplitConfirmationViewController *)self view];
    [v15 setNeedsUpdateConstraints];
  }
}

- (void)contentSizeCategoryDidChangeNotification:(id)a3
{
  v3 = [(PXPeopleSplitConfirmationViewController *)self view];
  [v3 setNeedsUpdateConstraints];
}

- (void)noMoreSuggestionsAvailableForSuggestionManager:(id)a3
{
  v5.receiver = self;
  v5.super_class = PXPeopleSplitConfirmationViewController;
  [(PXPeopleConfirmationViewController *)&v5 noMoreSuggestionsAvailableForSuggestionManager:a3];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __90__PXPeopleSplitConfirmationViewController_noMoreSuggestionsAvailableForSuggestionManager___block_invoke;
  block[3] = &unk_1E774C648;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)suggestionManager:(id)a3 hasNewSuggestionsAvailable:(id)a4
{
  v6.receiver = self;
  v6.super_class = PXPeopleSplitConfirmationViewController;
  [(PXPeopleConfirmationViewController *)&v6 suggestionManager:a3 hasNewSuggestionsAvailable:a4];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __88__PXPeopleSplitConfirmationViewController_suggestionManager_hasNewSuggestionsAvailable___block_invoke;
  block[3] = &unk_1E774C648;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)_updateUndoButton
{
  v3 = [(PXPeopleConfirmationViewController *)self suggestionManager];
  v4 = [v3 canUndo];

  v6 = [(PXPeopleSplitConfirmationViewController *)self navigationItem];
  if (v4)
  {
    v5 = [(PXPeopleSplitConfirmationViewController *)self undoButton];
    [v6 setLeftBarButtonItem:v5];
  }

  else
  {
    [v6 setLeftBarButtonItem:0];
  }
}

- (void)_disableActionButtonsWithSelectedButton:(id)a3
{
  v8 = a3;
  v4 = [(PXPeopleSplitConfirmationViewController *)self confirmButton];
  v5 = [(PXPeopleSplitConfirmationViewController *)self denyButton];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v8 titleColorForState:1];
    v7 = [v8 backgroundImageForState:1];
    [v8 setTitleColor:v6 forState:2];
    [v8 setBackgroundImage:v7 forState:2];
  }

  [v4 setEnabled:0];
  [v5 setEnabled:0];
}

- (void)_enableActionButtons
{
  v6 = [(PXPeopleSplitConfirmationViewController *)self confirmButton];
  v3 = [(PXPeopleSplitConfirmationViewController *)self denyButton];
  [v6 setEnabled:1];
  [v3 setEnabled:1];
  [v6 setBackgroundImage:0 forState:2];
  [v3 setBackgroundImage:0 forState:2];
  v4 = [v6 titleColorForState:0];
  [v6 setTitleColor:v4 forState:2];
  v5 = [v3 titleColorForState:0];
  [v3 setTitleColor:v5 forState:2];
}

- (id)_buttonWithTitle:(id)a3 action:(SEL)a4 andColor:(id)a5
{
  v8 = MEMORY[0x1E69DC738];
  v9 = a5;
  v10 = a3;
  v11 = [v8 buttonWithType:1];
  [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v11 setTitle:v10 forState:0];

  [v11 setTitleColor:v9 forState:0];
  v12 = [MEMORY[0x1E69DC888] secondarySystemBackgroundColor];
  [v11 setBackgroundColor:v12];

  v13 = [v11 layer];
  [v13 setCornerRadius:15.0];

  v14 = [v11 titleLabel];
  v15 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD40]];
  [v14 setFont:v15];

  [v14 setAdjustsFontForContentSizeCategory:1];
  [v11 setClipsToBounds:1];
  [v11 addTarget:self action:a4 forControlEvents:64];

  return v11;
}

- (void)undoButtonTapped:(id)a3
{
  [(PXPeopleSplitConfirmationViewController *)self _disableActionButtonsWithSelectedButton:a3];
  v4 = [(PXPeopleSplitConfirmationViewController *)self undoManager];
  if ([v4 canUndo])
  {
    [v4 undo];
  }
}

- (void)denyTapped:(id)a3
{
  v4 = a3;
  [(PXPeopleSplitConfirmationViewController *)self _disableActionButtonsWithSelectedButton:v4];
  v8.receiver = self;
  v8.super_class = PXPeopleSplitConfirmationViewController;
  [(PXPeopleConfirmationViewController *)&v8 denyTapped:v4];

  v5 = MEMORY[0x1E69DD250];
  v6 = [(PXPeopleSplitConfirmationViewController *)self denyButton];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __54__PXPeopleSplitConfirmationViewController_denyTapped___block_invoke;
  v7[3] = &unk_1E774C648;
  v7[4] = self;
  [v5 transitionWithView:v6 duration:5242880 options:v7 animations:0 completion:0.33];
}

void __54__PXPeopleSplitConfirmationViewController_denyTapped___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) denyButton];
  [v1 setHighlighted:1];
}

- (void)confirmTapped:(id)a3
{
  v4 = a3;
  [(PXPeopleSplitConfirmationViewController *)self _disableActionButtonsWithSelectedButton:v4];
  v8.receiver = self;
  v8.super_class = PXPeopleSplitConfirmationViewController;
  [(PXPeopleConfirmationViewController *)&v8 confirmTapped:v4];

  v5 = MEMORY[0x1E69DD250];
  v6 = [(PXPeopleSplitConfirmationViewController *)self confirmButton];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __57__PXPeopleSplitConfirmationViewController_confirmTapped___block_invoke;
  v7[3] = &unk_1E774C648;
  v7[4] = self;
  [v5 transitionWithView:v6 duration:5242880 options:v7 animations:0 completion:0.33];
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

- (void)updateViewWithViewState:(unint64_t)a3
{
  v11.receiver = self;
  v11.super_class = PXPeopleSplitConfirmationViewController;
  [(PXPeopleConfirmationViewController *)&v11 updateViewWithViewState:?];
  v5 = a3 < 6;
  v6 = 0x2Cu >> a3;
  v7 = [(PXPeopleConfirmationViewController *)self descriptionLabel];
  [v7 setHidden:v5 & v6];

  v8 = [(PXPeopleSplitConfirmationViewController *)self confirmButton];
  [v8 setHidden:v5 & v6];

  v9 = [(PXPeopleSplitConfirmationViewController *)self denyButton];
  [v9 setHidden:v5 & v6];

  v10 = [(PXPeopleConfirmationViewController *)self countView];
  [v10 setHidden:v5 & v6];
}

- (NSArray)commonConstraints
{
  v74[17] = *MEMORY[0x1E69E9840];
  commonConstraints = self->_commonConstraints;
  if (!commonConstraints)
  {
    v4 = [(PXPeopleSplitConfirmationViewController *)self confirmButton];
    v5 = [(PXPeopleSplitConfirmationViewController *)self denyButton];
    v72 = [(PXPeopleConfirmationViewController *)self suggestionView];
    v6 = [(PXPeopleConfirmationViewController *)self descriptionLabel];
    v7 = [(PXPeopleConfirmationViewController *)self countView];
    v8 = [(PXPeopleSplitConfirmationViewController *)self view];
    v9 = [v8 safeAreaLayoutGuide];

    v10 = [(PXPeopleSplitConfirmationViewController *)self controlLayoutGuide];
    v11 = [v5 bottomAnchor];
    v12 = [v10 bottomAnchor];
    v13 = [v11 constraintEqualToAnchor:v12];

    denyButtonBottomConstraint = self->_denyButtonBottomConstraint;
    self->_denyButtonBottomConstraint = v13;
    v15 = v13;

    v71 = [v6 topAnchor];
    v70 = [v10 topAnchor];
    v69 = [v71 constraintEqualToAnchor:v70 constant:15.0];
    v74[0] = v69;
    v68 = [v7 topAnchor];
    v67 = [v6 bottomAnchor];
    v66 = [v68 constraintEqualToAnchor:v67 constant:5.0];
    v74[1] = v66;
    v65 = [v4 heightAnchor];
    v64 = [v65 constraintEqualToConstant:50.0];
    v74[2] = v64;
    v63 = [v5 heightAnchor];
    v62 = [v4 heightAnchor];
    v61 = [v63 constraintEqualToAnchor:v62];
    v74[3] = v61;
    v73 = v5;
    v59 = [v5 widthAnchor];
    v58 = [v4 widthAnchor];
    v57 = [v59 constraintEqualToAnchor:v58];
    v74[4] = v57;
    v60 = v6;
    v55 = [v6 widthAnchor];
    v54 = [v10 widthAnchor];
    v53 = [v55 constraintEqualToAnchor:v54];
    v74[5] = v53;
    v56 = v7;
    v52 = [v7 widthAnchor];
    v51 = [v10 widthAnchor];
    v50 = [v52 constraintEqualToAnchor:v51];
    v74[6] = v50;
    v49 = [v5 centerXAnchor];
    v48 = [v4 centerXAnchor];
    v46 = [v49 constraintEqualToAnchor:v48];
    v74[7] = v46;
    v44 = [v6 centerXAnchor];
    v42 = [v4 centerXAnchor];
    v41 = [v44 constraintEqualToAnchor:v42];
    v74[8] = v41;
    v40 = [v7 centerXAnchor];
    v39 = [v4 centerXAnchor];
    v38 = [v40 constraintEqualToAnchor:v39];
    v74[9] = v38;
    v37 = [v72 topAnchor];
    v36 = [v9 topAnchor];
    v35 = [v37 constraintEqualToAnchor:v36];
    v74[10] = v35;
    v34 = [v72 leadingAnchor];
    v33 = [v9 leadingAnchor];
    v32 = [v34 constraintEqualToAnchor:v33];
    v74[11] = v32;
    v31 = [v10 trailingAnchor];
    v47 = v9;
    v30 = [v9 trailingAnchor];
    v29 = [v31 constraintEqualToAnchor:v30];
    v74[12] = v29;
    v43 = v10;
    v28 = [v10 bottomAnchor];
    v16 = [v9 bottomAnchor];
    v17 = [v28 constraintEqualToAnchor:v16];
    v74[13] = v17;
    v18 = v4;
    v45 = v4;
    v19 = [v4 centerXAnchor];
    v20 = [v10 centerXAnchor];
    v21 = [v19 constraintEqualToAnchor:v20];
    v74[14] = v21;
    v22 = [v18 bottomAnchor];
    v23 = [v73 topAnchor];
    v24 = [v22 constraintEqualToAnchor:v23 constant:-5.0];
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
    v4 = [(PXPeopleSplitConfirmationViewController *)self confirmButton];
    v5 = [(PXPeopleConfirmationViewController *)self suggestionView];
    v6 = [(PXPeopleSplitConfirmationViewController *)self controlLayoutGuide];
    v7 = [(PXPeopleSplitConfirmationViewController *)self view];
    v8 = [v7 safeAreaLayoutGuide];

    v35 = [v6 topAnchor];
    v9 = v8;
    v34 = [v8 topAnchor];
    v33 = [v35 constraintEqualToAnchor:v34];
    v36[0] = v33;
    v32 = [v6 leadingAnchor];
    v28 = v5;
    v31 = [v5 trailingAnchor];
    v29 = [v32 constraintEqualToAnchor:v31];
    v36[1] = v29;
    v27 = [v4 leadingAnchor];
    v30 = v6;
    v25 = [v6 leadingAnchor];
    v24 = [v27 constraintEqualToAnchor:v25 constant:42.0];
    v36[2] = v24;
    v26 = v4;
    v22 = [v4 trailingAnchor];
    v10 = [v6 trailingAnchor];
    v11 = [v22 constraintEqualToAnchor:v10 constant:-42.0];
    v36[3] = v11;
    v12 = [v5 bottomAnchor];
    v13 = v9;
    v23 = v9;
    v14 = [v9 bottomAnchor];
    v15 = [v12 constraintEqualToAnchor:v14];
    v36[4] = v15;
    v16 = [v4 widthAnchor];
    v17 = [v13 widthAnchor];
    v18 = [v16 constraintEqualToAnchor:v17 multiplier:0.33];
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
    v4 = [(PXPeopleConfirmationViewController *)self suggestionView];
    v5 = [(PXPeopleSplitConfirmationViewController *)self controlLayoutGuide];
    v23 = [(PXPeopleSplitConfirmationViewController *)self confirmButton];
    v6 = [(PXPeopleSplitConfirmationViewController *)self view];
    v7 = [v6 safeAreaLayoutGuide];

    [(PXPeopleSplitConfirmationViewController *)self controlGuideHeightConstraint];
    v33 = v32 = v5;
    v31 = [v5 topAnchor];
    v30 = [v4 bottomAnchor];
    v29 = [v31 constraintEqualToAnchor:v30];
    v34[0] = v29;
    v28 = [v5 leadingAnchor];
    v27 = [v7 leadingAnchor];
    v26 = [v28 constraintEqualToAnchor:v27];
    v34[1] = v26;
    v25 = [v4 trailingAnchor];
    v8 = v7;
    v21 = v7;
    v24 = [v7 trailingAnchor];
    v22 = [v25 constraintEqualToAnchor:v24];
    v34[2] = v22;
    v20 = [v4 heightAnchor];
    v19 = [v4 widthAnchor];
    v9 = [v20 constraintGreaterThanOrEqualToAnchor:v19 multiplier:0.5];
    v34[3] = v9;
    v10 = [v4 heightAnchor];
    v11 = [v4 widthAnchor];
    v12 = [v10 constraintLessThanOrEqualToAnchor:v11];
    v34[4] = v12;
    v13 = [v23 widthAnchor];
    v14 = [v8 widthAnchor];
    v15 = [v13 constraintEqualToAnchor:v14 multiplier:0.8];
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
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x1E69DDC48] object:0];

  v4.receiver = self;
  v4.super_class = PXPeopleSplitConfirmationViewController;
  [(PXPeopleSplitConfirmationViewController *)&v4 dealloc];
}

- (void)updateViewConstraints
{
  v3 = [(PXPeopleSplitConfirmationViewController *)self view];
  [v3 bounds];
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

  v12 = [(PXPeopleSplitConfirmationViewController *)self traitCollection];
  v13 = [v12 horizontalSizeClass];
  v14 = [v12 verticalSizeClass];
  v15 = [(PXPeopleConfirmationViewController *)self descriptionLabel];
  v16 = [v15 font];

  v17 = [(PXPeopleSplitConfirmationViewController *)self confirmButton];
  v18 = [v17 titleLabel];
  v19 = [v18 font];

  v20 = [(PXPeopleSplitConfirmationViewController *)self denyButton];
  v21 = [v20 titleLabel];
  v22 = [v21 font];

  if (v8 < v9 && v13 == 1)
  {
    v23 = 40.0;
    v24 = 66.0;
    v25 = 66.0;
  }

  else
  {
    v26 = v8 < v9;
    if (v14 == 1)
    {
      v26 = 1;
    }

    v27 = 74.0;
    if (v8 >= v9 && v14 == 1)
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

    if (v8 >= v9 && v14 == 1 && v26)
    {
      v25 = 86.0;
    }

    else
    {
      v25 = 71.0;
    }

    v23 = 81.0;
  }

  [v16 _scaledValueForValue:v23];
  v29 = v28;
  [v19 _scaledValueForValue:v24];
  v31 = v30;
  [v22 _scaledValueForValue:v25];
  v33 = v29 + v31 + v32 * 2.0;
  v34 = [(PXPeopleSplitConfirmationViewController *)self controlGuideHeightConstraint];
  [v34 setConstant:v33];

  [v3 safeAreaInsets];
  if (v35 == 0.0)
  {
    v36 = -15.0;
  }

  else
  {
    v36 = 0.0;
  }

  v37 = [(PXPeopleSplitConfirmationViewController *)self denyButtonBottomConstraint];
  [v37 setConstant:v36];

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
  v3 = [(PXPeopleSplitConfirmationViewController *)self view];
  v4 = [MEMORY[0x1E69DC888] systemBackgroundColor];
  [v3 setBackgroundColor:v4];

  v5 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:0 target:self action:sel_doneTapped_];
  v6 = [(PXPeopleSplitConfirmationViewController *)self navigationItem];
  v33 = v5;
  [v6 setRightBarButtonItem:v5];

  v32 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:21 target:self action:sel_undoButtonTapped_];
  [(PXPeopleSplitConfirmationViewController *)self setUndoButton:?];
  v7 = objc_alloc_init(MEMORY[0x1E69DCC20]);
  [v3 addLayoutGuide:v7];
  v29 = v7;
  [(PXPeopleSplitConfirmationViewController *)self setControlLayoutGuide:v7];
  v8 = [(PXPeopleConfirmationViewController *)self descriptionLabel];
  [v8 setAdjustsFontForContentSizeCategory:1];
  [v8 setHidden:1];
  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  v9 = *MEMORY[0x1E69DDDC0];
  v10 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDDC0]];
  v11 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:v9 addingSymbolicTraits:2 options:0];
  v12 = MEMORY[0x1E69DB878];
  [v10 pointSize];
  v31 = v11;
  v13 = [v12 fontWithDescriptor:v11 size:?];

  v30 = v13;
  [v8 setFont:v13];
  [v3 addSubview:v8];
  v14 = [[PXAnimatedCountView alloc] initWithFrame:0.0, 0.0, 200.0, 44.0];
  [(PXAnimatedCountView *)v14 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(PXPeopleConfirmationViewController *)self setCountView:v14];
  v15 = v3;
  [v3 addSubview:v14];
  v16 = [(PXPeopleSplitConfirmationViewController *)self person];
  v28 = [v16 px_localizedName];
  if ([v28 length])
  {
    PXLocalizedStringForPersonOrPetAndVisibility(v16, 0, @"PXPeopleConfirmButtonThisIsPerson");
    objc_claimAutoreleasedReturnValue();
    PXStringWithValidatedFormat();
  }

  v17 = PXLocalizedStringForPersonOrPetAndVisibility(v16, 0, @"PXPeopleConfirmButtonUnnamed");
  v18 = PXLocalizedStringForPersonOrPetAndVisibility(v16, 0, @"PXPeopleDenyButtonUnnamed");
  v27 = v17;
  v19 = [v15 tintColor];
  v20 = [(PXPeopleSplitConfirmationViewController *)self _buttonWithTitle:v17 action:sel_confirmTapped_ andColor:v19];

  [v15 addSubview:v20];
  [(PXPeopleSplitConfirmationViewController *)self setConfirmButton:v20];
  [v20 setHidden:1];
  v21 = [MEMORY[0x1E69DC888] systemRedColor];
  v22 = [(PXPeopleSplitConfirmationViewController *)self _buttonWithTitle:v18 action:sel_denyTapped_ andColor:v21];

  [v15 addSubview:v22];
  [(PXPeopleSplitConfirmationViewController *)self setDenyButton:v22];
  [v22 setHidden:1];
  v23 = [v29 heightAnchor];
  v24 = [v23 constraintGreaterThanOrEqualToConstant:100.0];

  [(PXPeopleSplitConfirmationViewController *)self setControlGuideHeightConstraint:v24];
  v25 = MEMORY[0x1E696ACD8];
  v26 = [(PXPeopleSplitConfirmationViewController *)self commonConstraints];
  [v25 activateConstraints:v26];
}

- (PXPeopleSplitConfirmationViewController)initWithPerson:(id)a3
{
  v13[2] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v12.receiver = self;
  v12.super_class = PXPeopleSplitConfirmationViewController;
  v6 = [(PXPeopleConfirmationViewController *)&v12 initWithPerson:v5];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_person, a3);
    v8 = [MEMORY[0x1E696AD88] defaultCenter];
    [v8 addObserver:v7 selector:sel_contentSizeCategoryDidChangeNotification_ name:*MEMORY[0x1E69DDC48] object:0];

    v13[0] = objc_opt_class();
    v13[1] = objc_opt_class();
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:2];
    v10 = [(PXPeopleSplitConfirmationViewController *)v7 registerForTraitChanges:v9 withAction:sel_traitEnvironment_didChangeTraitCollection_];
  }

  return v7;
}

@end