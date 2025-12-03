@interface PXPeopleConfirmationViewController
- (BOOL)isSummaryViewShowing;
- (PXPeopleConfirmationViewController)initWithPerson:(id)person;
- (id)personForSummaryViewController:(id)controller;
- (unint64_t)autoConfirmedCountForSummaryViewController:(id)controller;
- (unint64_t)userConfirmedCountForSummaryViewController:(id)controller;
- (void)_handleSuggestionCompletionWithSuggestion:(id)suggestion success:(BOOL)success;
- (void)cancelOperation:(id)operation;
- (void)confirmTapped:(id)tapped;
- (void)confirmationCountUpdatedForSuggestionManager:(id)manager undoing:(BOOL)undoing;
- (void)denyTapped:(id)tapped;
- (void)dismissSummary;
- (void)displaySummary;
- (void)doneTapped:(id)tapped;
- (void)noMoreSuggestionsAvailableForSuggestionManager:(id)manager;
- (void)performUndo:(id)undo;
- (void)presentSuggestion:(id)suggestion animated:(BOOL)animated;
- (void)setViewState:(unint64_t)state;
- (void)suggestionDidDisplay;
- (void)suggestionManager:(id)manager hasNewSuggestionsAvailable:(id)available;
- (void)undoConfirm:(id)confirm;
- (void)undoDeny:(id)deny;
- (void)updateViewWithViewState:(unint64_t)state;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)willLoadMoreSuggestionsForSuggestionManager:(id)manager;
@end

@implementation PXPeopleConfirmationViewController

- (unint64_t)autoConfirmedCountForSummaryViewController:(id)controller
{
  suggestionManager = [(PXPeopleConfirmationViewController *)self suggestionManager];
  autoConfirmationsCount = [suggestionManager autoConfirmationsCount];

  return autoConfirmationsCount;
}

- (unint64_t)userConfirmedCountForSummaryViewController:(id)controller
{
  suggestionManager = [(PXPeopleConfirmationViewController *)self suggestionManager];
  userConfirmationsCount = [suggestionManager userConfirmationsCount];

  return userConfirmationsCount;
}

- (id)personForSummaryViewController:(id)controller
{
  suggestionManager = [(PXPeopleConfirmationViewController *)self suggestionManager];
  person = [suggestionManager person];

  return person;
}

- (void)willLoadMoreSuggestionsForSuggestionManager:(id)manager
{
  v18 = *MEMORY[0x1E69E9840];
  managerCopy = manager;
  loadingDelayTimer = [(PXPeopleConfirmationViewController *)self loadingDelayTimer];
  v6 = loadingDelayTimer;
  if (loadingDelayTimer)
  {
    [loadingDelayTimer invalidate];
  }

  objc_initWeak(&location, self);
  v7 = PLUIGetLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v17 = "[PXPeopleConfirmationViewController willLoadMoreSuggestionsForSuggestionManager:]";
    _os_log_impl(&dword_1A3C1C000, v7, OS_LOG_TYPE_DEBUG, "Suggestions UI: %s", buf, 0xCu);
  }

  v8 = MEMORY[0x1E695DFF0];
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __82__PXPeopleConfirmationViewController_willLoadMoreSuggestionsForSuggestionManager___block_invoke;
  v13 = &unk_1E7747228;
  objc_copyWeak(&v14, &location);
  v9 = [v8 scheduledTimerWithTimeInterval:0 repeats:&v10 block:0.5];

  [(PXPeopleConfirmationViewController *)self setLoadingDelayTimer:v9, v10, v11, v12, v13];
  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __82__PXPeopleConfirmationViewController_willLoadMoreSuggestionsForSuggestionManager___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __82__PXPeopleConfirmationViewController_willLoadMoreSuggestionsForSuggestionManager___block_invoke_2;
  v5[3] = &unk_1E774B248;
  objc_copyWeak(&v7, (a1 + 32));
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v5);

  objc_destroyWeak(&v7);
}

void __82__PXPeopleConfirmationViewController_willLoadMoreSuggestionsForSuggestionManager___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained loadingDelayTimer];
  v4 = *(a1 + 32);

  v5 = PLUIGetLog();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG);
  if (v3 == v4)
  {
    if (v6)
    {
      *buf = 0;
      _os_log_impl(&dword_1A3C1C000, v5, OS_LOG_TYPE_DEBUG, "Suggestions UI: Display loading UI (Timer Valid)", buf, 2u);
    }

    v7 = objc_loadWeakRetained((a1 + 40));
    if ([v7 suggestionsPresented])
    {
      v8 = 3;
    }

    else
    {
      v8 = 2;
    }

    v5 = objc_loadWeakRetained((a1 + 40));
    [v5 setViewState:v8];
  }

  else if (v6)
  {
    *v9 = 0;
    _os_log_impl(&dword_1A3C1C000, v5, OS_LOG_TYPE_DEBUG, "Suggestions UI: Do not display loading UI (Timer Invalid)", v9, 2u);
  }
}

- (void)noMoreSuggestionsAvailableForSuggestionManager:(id)manager
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __85__PXPeopleConfirmationViewController_noMoreSuggestionsAvailableForSuggestionManager___block_invoke;
  block[3] = &unk_1E774C648;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __85__PXPeopleConfirmationViewController_noMoreSuggestionsAvailableForSuggestionManager___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = PLUIGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v5 = 136315138;
    v6 = "[PXPeopleConfirmationViewController noMoreSuggestionsAvailableForSuggestionManager:]_block_invoke";
    _os_log_impl(&dword_1A3C1C000, v2, OS_LOG_TYPE_DEBUG, "Suggestions UI: %s", &v5, 0xCu);
  }

  v3 = [*(a1 + 32) loadingDelayTimer];
  [v3 invalidate];

  [*(a1 + 32) setLoadingDelayTimer:0];
  return [*(a1 + 32) displaySummary];
}

- (void)suggestionManager:(id)manager hasNewSuggestionsAvailable:(id)available
{
  availableCopy = available;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __83__PXPeopleConfirmationViewController_suggestionManager_hasNewSuggestionsAvailable___block_invoke;
  v7[3] = &unk_1E774C620;
  v8 = availableCopy;
  selfCopy = self;
  v6 = availableCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v7);
}

void __83__PXPeopleConfirmationViewController_suggestionManager_hasNewSuggestionsAvailable___block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) firstObject];
  v3 = PLUIGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&dword_1A3C1C000, v3, OS_LOG_TYPE_DEBUG, "Suggestions UI: Present Suggestion: %@", &v4, 0xCu);
  }

  [*(a1 + 40) presentSuggestion:v2 animated:1];
}

- (void)confirmationCountUpdatedForSuggestionManager:(id)manager undoing:(BOOL)undoing
{
  undoingCopy = undoing;
  managerCopy = manager;
  autoConfirmationsCount = [managerCopy autoConfirmationsCount];
  v7 = [managerCopy userConfirmationsCount] + autoConfirmationsCount;
  countView = [(PXPeopleConfirmationViewController *)self countView];
  if (!undoingCopy || [managerCopy canUndo] && v7)
  {
    PXLocalizedStringFromTable(@"PXPeopleConfirmAdditionalCountToBeAdded", @"PhotosUICore");
    objc_claimAutoreleasedReturnValue();
    PXLocalizedStringWithValidatedFormat();
  }

  text = [countView text];
  v10 = [@" " isEqualToString:text];

  if (v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = 2;
  }

  [countView setText:@" " withAnimationStyle:v11];
}

- (void)cancelOperation:(id)operation
{
  undoManager = [(PXPeopleConfirmationViewController *)self undoManager];
  [undoManager removeAllActionsWithTarget:self];

  navigationController = [(PXPeopleConfirmationViewController *)self navigationController];
  v5 = [navigationController popViewControllerAnimated:1];
}

- (void)doneTapped:(id)tapped
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = PLUIGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v7 = 136315138;
    v8 = "[PXPeopleConfirmationViewController doneTapped:]";
    _os_log_impl(&dword_1A3C1C000, v4, OS_LOG_TYPE_DEBUG, "Suggestions UI: %s", &v7, 0xCu);
  }

  suggestionManager = [(PXPeopleConfirmationViewController *)self suggestionManager];
  [suggestionManager commitUserResponses];

  undoManager = [(PXPeopleConfirmationViewController *)self undoManager];
  [undoManager removeAllActionsWithTarget:self];

  [(PXPeopleConfirmationViewController *)self dismissViewControllerAnimated:1 completion:0];
}

- (void)performUndo:(id)undo
{
  suggestionManager = [(PXPeopleConfirmationViewController *)self suggestionManager];
  if ([suggestionManager canUndo])
  {
    if ([(PXPeopleConfirmationViewController *)self isSummaryViewShowing])
    {
      [(PXPeopleConfirmationViewController *)self dismissSummary];
      [(PXPeopleConfirmationViewController *)self setViewState:1];
    }

    [suggestionManager undo];
  }
}

- (void)undoDeny:(id)deny
{
  v12 = *MEMORY[0x1E69E9840];
  denyCopy = deny;
  v5 = PLUIGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v10 = 136315138;
    v11 = "[PXPeopleConfirmationViewController undoDeny:]";
    _os_log_impl(&dword_1A3C1C000, v5, OS_LOG_TYPE_DEBUG, "Suggestions UI: %s", &v10, 0xCu);
  }

  undoManager = [(PXPeopleConfirmationViewController *)self undoManager];
  [undoManager registerUndoWithTarget:self selector:sel_denyTapped_ object:denyCopy];
  suggestionManager = [(PXPeopleConfirmationViewController *)self suggestionManager];
  person = [suggestionManager person];
  v9 = PXLocalizedStringForPersonOrPetAndVisibility(person, 0, @"PXPeopleUndoRedoDenyTitle");
  [undoManager setActionName:v9];

  [(PXPeopleConfirmationViewController *)self performUndo:denyCopy];
}

- (void)undoConfirm:(id)confirm
{
  v12 = *MEMORY[0x1E69E9840];
  confirmCopy = confirm;
  v5 = PLUIGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v10 = 136315138;
    v11 = "[PXPeopleConfirmationViewController undoConfirm:]";
    _os_log_impl(&dword_1A3C1C000, v5, OS_LOG_TYPE_DEBUG, "Suggestions UI: %s", &v10, 0xCu);
  }

  undoManager = [(PXPeopleConfirmationViewController *)self undoManager];
  [undoManager registerUndoWithTarget:self selector:sel_confirmTapped_ object:confirmCopy];
  suggestionManager = [(PXPeopleConfirmationViewController *)self suggestionManager];
  person = [suggestionManager person];
  v9 = PXLocalizedStringForPersonOrPetAndVisibility(person, 0, @"PXPeopleUndoRedoConfirmTitle");
  [undoManager setActionName:v9];

  [(PXPeopleConfirmationViewController *)self performUndo:confirmCopy];
}

- (void)denyTapped:(id)tapped
{
  v14 = *MEMORY[0x1E69E9840];
  tappedCopy = tapped;
  v5 = PLUIGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v12 = 136315138;
    v13 = "[PXPeopleConfirmationViewController denyTapped:]";
    _os_log_impl(&dword_1A3C1C000, v5, OS_LOG_TYPE_DEBUG, "Suggestions UI: %s", &v12, 0xCu);
  }

  undoManager = [(PXPeopleConfirmationViewController *)self undoManager];
  [undoManager registerUndoWithTarget:self selector:sel_undoDeny_ object:tappedCopy];

  suggestionManager = [(PXPeopleConfirmationViewController *)self suggestionManager];
  person = [suggestionManager person];
  v9 = PXLocalizedStringForPersonOrPetAndVisibility(person, 0, @"PXPeopleUndoRedoDenyTitle");
  [undoManager setActionName:v9];

  suggestionManager2 = [(PXPeopleConfirmationViewController *)self suggestionManager];
  currentSuggestions = [suggestionManager2 currentSuggestions];
  [suggestionManager2 markSuggestions:currentSuggestions confirmed:0 wantsSound:1];

  [suggestionManager2 requestNextSuggestion];
}

- (void)confirmTapped:(id)tapped
{
  v14 = *MEMORY[0x1E69E9840];
  tappedCopy = tapped;
  v5 = PLUIGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v12 = 136315138;
    v13 = "[PXPeopleConfirmationViewController confirmTapped:]";
    _os_log_impl(&dword_1A3C1C000, v5, OS_LOG_TYPE_DEBUG, "Suggestions UI: %s", &v12, 0xCu);
  }

  undoManager = [(PXPeopleConfirmationViewController *)self undoManager];
  [undoManager registerUndoWithTarget:self selector:sel_undoConfirm_ object:tappedCopy];

  suggestionManager = [(PXPeopleConfirmationViewController *)self suggestionManager];
  person = [suggestionManager person];
  v9 = PXLocalizedStringForPersonOrPetAndVisibility(person, 0, @"PXPeopleUndoRedoConfirmTitle");
  [undoManager setActionName:v9];

  suggestionManager2 = [(PXPeopleConfirmationViewController *)self suggestionManager];
  currentSuggestions = [suggestionManager2 currentSuggestions];
  [suggestionManager2 markSuggestions:currentSuggestions confirmed:1 wantsSound:1];

  [suggestionManager2 requestNextSuggestion];
}

- (void)_handleSuggestionCompletionWithSuggestion:(id)suggestion success:(BOOL)success
{
  successCopy = success;
  v12[1] = *MEMORY[0x1E69E9840];
  suggestionCopy = suggestion;
  if (!successCopy)
  {
    suggestionManager = [(PXPeopleConfirmationViewController *)self suggestionManager];
    v12[0] = suggestionCopy;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
    [suggestionManager markSuggestionsAsSkipped:v8];

    [suggestionManager requestNextSuggestion];
    goto LABEL_5;
  }

  [(PXPeopleConfirmationViewController *)self suggestionDidDisplay];
  if ([(PXPeopleConfirmationViewController *)self showTypeDebugColor])
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __88__PXPeopleConfirmationViewController__handleSuggestionCompletionWithSuggestion_success___block_invoke;
    v9[3] = &unk_1E774C620;
    v10 = suggestionCopy;
    selfCopy = self;
    dispatch_async(MEMORY[0x1E69E96A0], v9);
    suggestionManager = v10;
LABEL_5:
  }
}

void __88__PXPeopleConfirmationViewController__handleSuggestionCompletionWithSuggestion_success___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) isPersonModel])
  {
    [MEMORY[0x1E69DC888] greenColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] redColor];
  }
  v3 = ;
  v2 = [*(a1 + 40) view];
  [v2 setBackgroundColor:v3];
}

- (void)suggestionDidDisplay
{
  [(PXPeopleConfirmationViewController *)self setSuggestionsPresented:1];
  loadingDelayTimer = [(PXPeopleConfirmationViewController *)self loadingDelayTimer];
  [loadingDelayTimer invalidate];

  [(PXPeopleConfirmationViewController *)self setLoadingDelayTimer:0];

  [(PXPeopleConfirmationViewController *)self setViewState:1];
}

- (BOOL)isSummaryViewShowing
{
  summaryViewController = [(PXPeopleConfirmationViewController *)self summaryViewController];
  view = [summaryViewController view];
  superview = [view superview];
  v5 = superview != 0;

  return v5;
}

- (void)updateViewWithViewState:(unint64_t)state
{
  loadingView = [(PXPeopleConfirmationViewController *)self loadingView];
  v6 = loadingView;
  if ((state & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __62__PXPeopleConfirmationViewController_updateViewWithViewState___block_invoke;
    aBlock[3] = &unk_1E774C648;
    v14 = loadingView;
    v7 = _Block_copy(aBlock);
    v7[2]();

    v8 = v14;
  }

  else
  {
    interimLoadingIndicator = [(PXPeopleConfirmationViewController *)self interimLoadingIndicator];
    [interimLoadingIndicator stopAnimating];

    if (state != 5)
    {
      [v6 setAlpha:0.0];
      [v6 setLoadingState:0];
      goto LABEL_7;
    }

    [v6 setLoadingState:2];
    v10 = MEMORY[0x1E69DD250];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __62__PXPeopleConfirmationViewController_updateViewWithViewState___block_invoke_3;
    v11[3] = &unk_1E774C648;
    v12 = v6;
    [v10 animateWithDuration:v11 animations:0.33];
    v8 = v12;
  }

LABEL_7:
}

void __62__PXPeopleConfirmationViewController_updateViewWithViewState___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setLoadingState:1];
  v2 = MEMORY[0x1E69DD250];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __62__PXPeopleConfirmationViewController_updateViewWithViewState___block_invoke_2;
  v3[3] = &unk_1E774C648;
  v4 = *(a1 + 32);
  [v2 animateWithDuration:v3 animations:0.33];
}

- (void)setViewState:(unint64_t)state
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __51__PXPeopleConfirmationViewController_setViewState___block_invoke;
  aBlock[3] = &unk_1E77498A0;
  aBlock[4] = self;
  aBlock[5] = state;
  v4 = _Block_copy(aBlock);
  v5 = +[PXPeopleUISettings sharedInstance];
  forceReviewMorePhotosInterimLoading = [v5 forceReviewMorePhotosInterimLoading];

  if (forceReviewMorePhotosInterimLoading)
  {
    self->_viewState = 3;
    [(PXPeopleConfirmationViewController *)self updateViewWithViewState:3];
    v7 = dispatch_time(0, 2000000000);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __51__PXPeopleConfirmationViewController_setViewState___block_invoke_2;
    block[3] = &unk_1E774C250;
    v9 = v4;
    dispatch_after(v7, MEMORY[0x1E69E96A0], block);
  }

  else
  {
    v4[2](v4);
  }
}

uint64_t __51__PXPeopleConfirmationViewController_setViewState___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) viewState];
  v3 = *(a1 + 40);
  if (result != v3)
  {
    *(*(a1 + 32) + 1048) = v3;
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);

    return [v4 updateViewWithViewState:v5];
  }

  return result;
}

- (void)dismissSummary
{
  summaryViewController = [(PXPeopleConfirmationViewController *)self summaryViewController];
  view = [summaryViewController view];
  v4 = MEMORY[0x1E69DD250];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __52__PXPeopleConfirmationViewController_dismissSummary__block_invoke;
  v10[3] = &unk_1E774C648;
  v11 = view;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __52__PXPeopleConfirmationViewController_dismissSummary__block_invoke_2;
  v7[3] = &unk_1E7749628;
  v8 = summaryViewController;
  v9 = v11;
  v5 = v11;
  v6 = summaryViewController;
  [v4 animateWithDuration:0 delay:v10 options:v7 animations:0.4 completion:0.0];
}

uint64_t __52__PXPeopleConfirmationViewController_dismissSummary__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) willMoveToParentViewController:0];
  [*(a1 + 40) removeFromSuperview];
  [*(a1 + 32) removeFromParentViewController];
  v2 = *(a1 + 32);

  return [v2 didMoveToParentViewController:0];
}

- (void)displaySummary
{
  if ([(PXPeopleConfirmationViewController *)self suggestionsPresented])
  {
    view = [(PXPeopleConfirmationViewController *)self view];
    summaryViewController = [(PXPeopleConfirmationViewController *)self summaryViewController];
    if (!summaryViewController)
    {
      summaryViewController = [[PXPeopleConfirmationSummaryViewController alloc] initWithDelegate:self];
      [(PXPeopleConfirmationViewController *)self setSummaryViewController:summaryViewController];
    }

    view2 = [(PXPeopleConfirmationSummaryViewController *)summaryViewController view];
    [view bounds];
    [view2 setFrame:?];
    [view2 setAlpha:0.0];
    [(PXPeopleConfirmationViewController *)self addChildViewController:summaryViewController];
    [view addSubview:view2];
    [(PXPeopleConfirmationSummaryViewController *)summaryViewController didMoveToParentViewController:self];
    countView = [(PXPeopleConfirmationViewController *)self countView];
    [countView setText:@" " withAnimationStyle:1];

    v7 = MEMORY[0x1E69DD250];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __52__PXPeopleConfirmationViewController_displaySummary__block_invoke;
    v9[3] = &unk_1E774C648;
    v10 = view2;
    v8 = view2;
    [v7 animateWithDuration:0 delay:v9 options:0 animations:0.4 completion:0.0];
  }

  else
  {

    [(PXPeopleConfirmationViewController *)self setViewState:5];
  }
}

- (void)presentSuggestion:(id)suggestion animated:(BOOL)animated
{
  animatedCopy = animated;
  suggestionCopy = suggestion;
  [(PXPeopleConfirmationViewController *)self view];

  v7 = suggestionCopy;
  v8 = v7;
  if (v7 || (-[PXPeopleConfirmationViewController suggestionManager](self, "suggestionManager"), v9 = objc_claimAutoreleasedReturnValue(), [v9 currentSuggestions], v10 = objc_claimAutoreleasedReturnValue(), v9, objc_msgSend(v10, "firstObject"), v8 = objc_claimAutoreleasedReturnValue(), v10, v8))
  {
    objc_initWeak(&location, self);
    suggestionView = [(PXPeopleConfirmationViewController *)self suggestionView];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __65__PXPeopleConfirmationViewController_presentSuggestion_animated___block_invoke;
    v14[3] = &unk_1E774B330;
    objc_copyWeak(&v16, &location);
    v12 = v8;
    v15 = v12;
    [suggestionView setSuggestion:v12 animated:animatedCopy withCompletion:v14];

    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }

  else
  {
    [(PXPeopleConfirmationViewController *)self displaySummary];
    if ([(PXPeopleConfirmationViewController *)self showTypeDebugColor])
    {
      view = [(PXPeopleConfirmationViewController *)self view];
      [view setBackgroundColor:0];
    }
  }
}

void __65__PXPeopleConfirmationViewController_presentSuggestion_animated___block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _handleSuggestionCompletionWithSuggestion:*(a1 + 32) success:a2];
}

- (void)viewDidAppear:(BOOL)appear
{
  v3.receiver = self;
  v3.super_class = PXPeopleConfirmationViewController;
  [(PXPeopleConfirmationViewController *)&v3 viewDidAppear:appear];
}

- (void)viewDidLoad
{
  v41[4] = *MEMORY[0x1E69E9840];
  v40.receiver = self;
  v40.super_class = PXPeopleConfirmationViewController;
  [(PXPeopleConfirmationViewController *)&v40 viewDidLoad];
  suggestionManager = [(PXPeopleConfirmationViewController *)self suggestionManager];
  [suggestionManager preloadSounds];

  view = [(PXPeopleConfirmationViewController *)self view];
  v5 = objc_alloc_init(PXPeopleSuggestionView);
  suggestionView = self->_suggestionView;
  self->_suggestionView = v5;

  [(PXPeopleSuggestionView *)self->_suggestionView setTranslatesAutoresizingMaskIntoConstraints:0];
  [view addSubview:self->_suggestionView];
  v7 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  descriptionLabel = self->_descriptionLabel;
  self->_descriptionLabel = v7;

  suggestionManager2 = [(PXPeopleConfirmationViewController *)self suggestionManager];
  person = [suggestionManager2 person];

  px_longStyleLocalizedName = [person px_longStyleLocalizedName];
  if ([px_longStyleLocalizedName length])
  {
    PXLocalizedStringForPersonOrPetAndVisibility(person, 0, @"PXPeopleConfirmMessage");
    objc_claimAutoreleasedReturnValue();
    PXStringWithValidatedFormat();
  }

  v11 = PXLocalizedStringForPersonOrPetAndVisibility(person, 0, @"PXPeopleConfirmUnnamedReplacementMessage");
  [(UILabel *)self->_descriptionLabel setText:v11];

  [(UILabel *)self->_descriptionLabel setTextAlignment:1];
  v12 = [PXPeopleConfirmationLoadingView alloc];
  [view bounds];
  v38 = person;
  v13 = [(PXPeopleConfirmationLoadingView *)v12 initWithFrame:person person:?];
  loadingView = self->_loadingView;
  self->_loadingView = v13;

  [(PXPeopleConfirmationLoadingView *)self->_loadingView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(PXPeopleConfirmationLoadingView *)self->_loadingView setAlpha:0.0];
  [view addSubview:self->_loadingView];
  v15 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  interimLoadingLabel = self->_interimLoadingLabel;
  self->_interimLoadingLabel = v15;

  v17 = PXLocalizedStringFromTable(@"PXPeopleConfirmationLoadingMessageiOS", @"PhotosUICore");
  [(UILabel *)self->_interimLoadingLabel setText:v17];

  [(UILabel *)self->_interimLoadingLabel setTextAlignment:1];
  [(UILabel *)self->_interimLoadingLabel setLineBreakMode:4];
  v18 = objc_alloc_init(MEMORY[0x1E69DC638]);
  interimLoadingIndicator = self->_interimLoadingIndicator;
  self->_interimLoadingIndicator = v18;

  secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [(UIActivityIndicatorView *)self->_interimLoadingIndicator setActivityIndicatorViewStyle:100];
  v36 = secondaryLabelColor;
  [(UILabel *)self->_interimLoadingLabel setTextColor:secondaryLabelColor];
  v31 = MEMORY[0x1E696ACD8];
  leadingAnchor = [(PXPeopleConfirmationLoadingView *)self->_loadingView leadingAnchor];
  leadingAnchor2 = [view leadingAnchor];
  v33 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v41[0] = v33;
  trailingAnchor = [(PXPeopleConfirmationLoadingView *)self->_loadingView trailingAnchor];
  trailingAnchor2 = [view trailingAnchor];
  v22 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v41[1] = v22;
  topAnchor = [(PXPeopleConfirmationLoadingView *)self->_loadingView topAnchor];
  topAnchor2 = [view topAnchor];
  v25 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v41[2] = v25;
  bottomAnchor = [(PXPeopleConfirmationLoadingView *)self->_loadingView bottomAnchor];
  v39 = view;
  bottomAnchor2 = [view bottomAnchor];
  v28 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v41[3] = v28;
  v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:v41 count:4];
  [v31 activateConstraints:v29];

  viewState = [(PXPeopleConfirmationViewController *)self viewState];
  if (viewState)
  {
    [(PXPeopleConfirmationViewController *)self updateViewWithViewState:viewState];
  }
}

- (PXPeopleConfirmationViewController)initWithPerson:(id)person
{
  personCopy = person;
  v13.receiver = self;
  v13.super_class = PXPeopleConfirmationViewController;
  v5 = [(PXPeopleConfirmationViewController *)&v13 init];
  if (v5)
  {
    v6 = [[PXPeopleSuggestionManager alloc] initWithPerson:personCopy];
    suggestionManager = v5->_suggestionManager;
    v5->_suggestionManager = v6;

    [(PXPeopleSuggestionManager *)v5->_suggestionManager setDelegate:v5];
    v8 = PXLocalizedStringFromTable(@"PXPeopleConfirmScreenTitle", @"PhotosUICore");
    v9 = [[PXPeopleSuggestionDataSource alloc] initWithFlowType:0];
    [(PXPeopleSuggestionManager *)v5->_suggestionManager setDataSource:v9];
    navigationItem = [(PXPeopleConfirmationViewController *)v5 navigationItem];
    [navigationItem setTitle:v8];

    v11 = +[PXPeopleUISettings sharedInstance];
    v5->_showTypeDebugColor = [v11 displayReviewMorePhotosSuggestionType];
  }

  return v5;
}

@end