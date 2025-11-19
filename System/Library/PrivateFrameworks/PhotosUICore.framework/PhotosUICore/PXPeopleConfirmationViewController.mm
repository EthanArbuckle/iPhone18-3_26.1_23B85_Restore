@interface PXPeopleConfirmationViewController
- (BOOL)isSummaryViewShowing;
- (PXPeopleConfirmationViewController)initWithPerson:(id)a3;
- (id)personForSummaryViewController:(id)a3;
- (unint64_t)autoConfirmedCountForSummaryViewController:(id)a3;
- (unint64_t)userConfirmedCountForSummaryViewController:(id)a3;
- (void)_handleSuggestionCompletionWithSuggestion:(id)a3 success:(BOOL)a4;
- (void)cancelOperation:(id)a3;
- (void)confirmTapped:(id)a3;
- (void)confirmationCountUpdatedForSuggestionManager:(id)a3 undoing:(BOOL)a4;
- (void)denyTapped:(id)a3;
- (void)dismissSummary;
- (void)displaySummary;
- (void)doneTapped:(id)a3;
- (void)noMoreSuggestionsAvailableForSuggestionManager:(id)a3;
- (void)performUndo:(id)a3;
- (void)presentSuggestion:(id)a3 animated:(BOOL)a4;
- (void)setViewState:(unint64_t)a3;
- (void)suggestionDidDisplay;
- (void)suggestionManager:(id)a3 hasNewSuggestionsAvailable:(id)a4;
- (void)undoConfirm:(id)a3;
- (void)undoDeny:(id)a3;
- (void)updateViewWithViewState:(unint64_t)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)willLoadMoreSuggestionsForSuggestionManager:(id)a3;
@end

@implementation PXPeopleConfirmationViewController

- (unint64_t)autoConfirmedCountForSummaryViewController:(id)a3
{
  v3 = [(PXPeopleConfirmationViewController *)self suggestionManager];
  v4 = [v3 autoConfirmationsCount];

  return v4;
}

- (unint64_t)userConfirmedCountForSummaryViewController:(id)a3
{
  v3 = [(PXPeopleConfirmationViewController *)self suggestionManager];
  v4 = [v3 userConfirmationsCount];

  return v4;
}

- (id)personForSummaryViewController:(id)a3
{
  v3 = [(PXPeopleConfirmationViewController *)self suggestionManager];
  v4 = [v3 person];

  return v4;
}

- (void)willLoadMoreSuggestionsForSuggestionManager:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PXPeopleConfirmationViewController *)self loadingDelayTimer];
  v6 = v5;
  if (v5)
  {
    [v5 invalidate];
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

- (void)noMoreSuggestionsAvailableForSuggestionManager:(id)a3
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

- (void)suggestionManager:(id)a3 hasNewSuggestionsAvailable:(id)a4
{
  v5 = a4;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __83__PXPeopleConfirmationViewController_suggestionManager_hasNewSuggestionsAvailable___block_invoke;
  v7[3] = &unk_1E774C620;
  v8 = v5;
  v9 = self;
  v6 = v5;
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

- (void)confirmationCountUpdatedForSuggestionManager:(id)a3 undoing:(BOOL)a4
{
  v4 = a4;
  v12 = a3;
  v6 = [v12 autoConfirmationsCount];
  v7 = [v12 userConfirmationsCount] + v6;
  v8 = [(PXPeopleConfirmationViewController *)self countView];
  if (!v4 || [v12 canUndo] && v7)
  {
    PXLocalizedStringFromTable(@"PXPeopleConfirmAdditionalCountToBeAdded", @"PhotosUICore");
    objc_claimAutoreleasedReturnValue();
    PXLocalizedStringWithValidatedFormat();
  }

  v9 = [v8 text];
  v10 = [@" " isEqualToString:v9];

  if (v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = 2;
  }

  [v8 setText:@" " withAnimationStyle:v11];
}

- (void)cancelOperation:(id)a3
{
  v4 = [(PXPeopleConfirmationViewController *)self undoManager];
  [v4 removeAllActionsWithTarget:self];

  v6 = [(PXPeopleConfirmationViewController *)self navigationController];
  v5 = [v6 popViewControllerAnimated:1];
}

- (void)doneTapped:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = PLUIGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v7 = 136315138;
    v8 = "[PXPeopleConfirmationViewController doneTapped:]";
    _os_log_impl(&dword_1A3C1C000, v4, OS_LOG_TYPE_DEBUG, "Suggestions UI: %s", &v7, 0xCu);
  }

  v5 = [(PXPeopleConfirmationViewController *)self suggestionManager];
  [v5 commitUserResponses];

  v6 = [(PXPeopleConfirmationViewController *)self undoManager];
  [v6 removeAllActionsWithTarget:self];

  [(PXPeopleConfirmationViewController *)self dismissViewControllerAnimated:1 completion:0];
}

- (void)performUndo:(id)a3
{
  v4 = [(PXPeopleConfirmationViewController *)self suggestionManager];
  if ([v4 canUndo])
  {
    if ([(PXPeopleConfirmationViewController *)self isSummaryViewShowing])
    {
      [(PXPeopleConfirmationViewController *)self dismissSummary];
      [(PXPeopleConfirmationViewController *)self setViewState:1];
    }

    [v4 undo];
  }
}

- (void)undoDeny:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = PLUIGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v10 = 136315138;
    v11 = "[PXPeopleConfirmationViewController undoDeny:]";
    _os_log_impl(&dword_1A3C1C000, v5, OS_LOG_TYPE_DEBUG, "Suggestions UI: %s", &v10, 0xCu);
  }

  v6 = [(PXPeopleConfirmationViewController *)self undoManager];
  [v6 registerUndoWithTarget:self selector:sel_denyTapped_ object:v4];
  v7 = [(PXPeopleConfirmationViewController *)self suggestionManager];
  v8 = [v7 person];
  v9 = PXLocalizedStringForPersonOrPetAndVisibility(v8, 0, @"PXPeopleUndoRedoDenyTitle");
  [v6 setActionName:v9];

  [(PXPeopleConfirmationViewController *)self performUndo:v4];
}

- (void)undoConfirm:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = PLUIGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v10 = 136315138;
    v11 = "[PXPeopleConfirmationViewController undoConfirm:]";
    _os_log_impl(&dword_1A3C1C000, v5, OS_LOG_TYPE_DEBUG, "Suggestions UI: %s", &v10, 0xCu);
  }

  v6 = [(PXPeopleConfirmationViewController *)self undoManager];
  [v6 registerUndoWithTarget:self selector:sel_confirmTapped_ object:v4];
  v7 = [(PXPeopleConfirmationViewController *)self suggestionManager];
  v8 = [v7 person];
  v9 = PXLocalizedStringForPersonOrPetAndVisibility(v8, 0, @"PXPeopleUndoRedoConfirmTitle");
  [v6 setActionName:v9];

  [(PXPeopleConfirmationViewController *)self performUndo:v4];
}

- (void)denyTapped:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = PLUIGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v12 = 136315138;
    v13 = "[PXPeopleConfirmationViewController denyTapped:]";
    _os_log_impl(&dword_1A3C1C000, v5, OS_LOG_TYPE_DEBUG, "Suggestions UI: %s", &v12, 0xCu);
  }

  v6 = [(PXPeopleConfirmationViewController *)self undoManager];
  [v6 registerUndoWithTarget:self selector:sel_undoDeny_ object:v4];

  v7 = [(PXPeopleConfirmationViewController *)self suggestionManager];
  v8 = [v7 person];
  v9 = PXLocalizedStringForPersonOrPetAndVisibility(v8, 0, @"PXPeopleUndoRedoDenyTitle");
  [v6 setActionName:v9];

  v10 = [(PXPeopleConfirmationViewController *)self suggestionManager];
  v11 = [v10 currentSuggestions];
  [v10 markSuggestions:v11 confirmed:0 wantsSound:1];

  [v10 requestNextSuggestion];
}

- (void)confirmTapped:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = PLUIGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v12 = 136315138;
    v13 = "[PXPeopleConfirmationViewController confirmTapped:]";
    _os_log_impl(&dword_1A3C1C000, v5, OS_LOG_TYPE_DEBUG, "Suggestions UI: %s", &v12, 0xCu);
  }

  v6 = [(PXPeopleConfirmationViewController *)self undoManager];
  [v6 registerUndoWithTarget:self selector:sel_undoConfirm_ object:v4];

  v7 = [(PXPeopleConfirmationViewController *)self suggestionManager];
  v8 = [v7 person];
  v9 = PXLocalizedStringForPersonOrPetAndVisibility(v8, 0, @"PXPeopleUndoRedoConfirmTitle");
  [v6 setActionName:v9];

  v10 = [(PXPeopleConfirmationViewController *)self suggestionManager];
  v11 = [v10 currentSuggestions];
  [v10 markSuggestions:v11 confirmed:1 wantsSound:1];

  [v10 requestNextSuggestion];
}

- (void)_handleSuggestionCompletionWithSuggestion:(id)a3 success:(BOOL)a4
{
  v4 = a4;
  v12[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (!v4)
  {
    v7 = [(PXPeopleConfirmationViewController *)self suggestionManager];
    v12[0] = v6;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
    [v7 markSuggestionsAsSkipped:v8];

    [v7 requestNextSuggestion];
    goto LABEL_5;
  }

  [(PXPeopleConfirmationViewController *)self suggestionDidDisplay];
  if ([(PXPeopleConfirmationViewController *)self showTypeDebugColor])
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __88__PXPeopleConfirmationViewController__handleSuggestionCompletionWithSuggestion_success___block_invoke;
    v9[3] = &unk_1E774C620;
    v10 = v6;
    v11 = self;
    dispatch_async(MEMORY[0x1E69E96A0], v9);
    v7 = v10;
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
  v3 = [(PXPeopleConfirmationViewController *)self loadingDelayTimer];
  [v3 invalidate];

  [(PXPeopleConfirmationViewController *)self setLoadingDelayTimer:0];

  [(PXPeopleConfirmationViewController *)self setViewState:1];
}

- (BOOL)isSummaryViewShowing
{
  v2 = [(PXPeopleConfirmationViewController *)self summaryViewController];
  v3 = [v2 view];
  v4 = [v3 superview];
  v5 = v4 != 0;

  return v5;
}

- (void)updateViewWithViewState:(unint64_t)a3
{
  v5 = [(PXPeopleConfirmationViewController *)self loadingView];
  v6 = v5;
  if ((a3 & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __62__PXPeopleConfirmationViewController_updateViewWithViewState___block_invoke;
    aBlock[3] = &unk_1E774C648;
    v14 = v5;
    v7 = _Block_copy(aBlock);
    v7[2]();

    v8 = v14;
  }

  else
  {
    v9 = [(PXPeopleConfirmationViewController *)self interimLoadingIndicator];
    [v9 stopAnimating];

    if (a3 != 5)
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

- (void)setViewState:(unint64_t)a3
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __51__PXPeopleConfirmationViewController_setViewState___block_invoke;
  aBlock[3] = &unk_1E77498A0;
  aBlock[4] = self;
  aBlock[5] = a3;
  v4 = _Block_copy(aBlock);
  v5 = +[PXPeopleUISettings sharedInstance];
  v6 = [v5 forceReviewMorePhotosInterimLoading];

  if (v6)
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
  v2 = [(PXPeopleConfirmationViewController *)self summaryViewController];
  v3 = [v2 view];
  v4 = MEMORY[0x1E69DD250];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __52__PXPeopleConfirmationViewController_dismissSummary__block_invoke;
  v10[3] = &unk_1E774C648;
  v11 = v3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __52__PXPeopleConfirmationViewController_dismissSummary__block_invoke_2;
  v7[3] = &unk_1E7749628;
  v8 = v2;
  v9 = v11;
  v5 = v11;
  v6 = v2;
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
    v3 = [(PXPeopleConfirmationViewController *)self view];
    v4 = [(PXPeopleConfirmationViewController *)self summaryViewController];
    if (!v4)
    {
      v4 = [[PXPeopleConfirmationSummaryViewController alloc] initWithDelegate:self];
      [(PXPeopleConfirmationViewController *)self setSummaryViewController:v4];
    }

    v5 = [(PXPeopleConfirmationSummaryViewController *)v4 view];
    [v3 bounds];
    [v5 setFrame:?];
    [v5 setAlpha:0.0];
    [(PXPeopleConfirmationViewController *)self addChildViewController:v4];
    [v3 addSubview:v5];
    [(PXPeopleConfirmationSummaryViewController *)v4 didMoveToParentViewController:self];
    v6 = [(PXPeopleConfirmationViewController *)self countView];
    [v6 setText:@" " withAnimationStyle:1];

    v7 = MEMORY[0x1E69DD250];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __52__PXPeopleConfirmationViewController_displaySummary__block_invoke;
    v9[3] = &unk_1E774C648;
    v10 = v5;
    v8 = v5;
    [v7 animateWithDuration:0 delay:v9 options:0 animations:0.4 completion:0.0];
  }

  else
  {

    [(PXPeopleConfirmationViewController *)self setViewState:5];
  }
}

- (void)presentSuggestion:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  [(PXPeopleConfirmationViewController *)self view];

  v7 = v6;
  v8 = v7;
  if (v7 || (-[PXPeopleConfirmationViewController suggestionManager](self, "suggestionManager"), v9 = objc_claimAutoreleasedReturnValue(), [v9 currentSuggestions], v10 = objc_claimAutoreleasedReturnValue(), v9, objc_msgSend(v10, "firstObject"), v8 = objc_claimAutoreleasedReturnValue(), v10, v8))
  {
    objc_initWeak(&location, self);
    v11 = [(PXPeopleConfirmationViewController *)self suggestionView];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __65__PXPeopleConfirmationViewController_presentSuggestion_animated___block_invoke;
    v14[3] = &unk_1E774B330;
    objc_copyWeak(&v16, &location);
    v12 = v8;
    v15 = v12;
    [v11 setSuggestion:v12 animated:v4 withCompletion:v14];

    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }

  else
  {
    [(PXPeopleConfirmationViewController *)self displaySummary];
    if ([(PXPeopleConfirmationViewController *)self showTypeDebugColor])
    {
      v13 = [(PXPeopleConfirmationViewController *)self view];
      [v13 setBackgroundColor:0];
    }
  }
}

void __65__PXPeopleConfirmationViewController_presentSuggestion_animated___block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _handleSuggestionCompletionWithSuggestion:*(a1 + 32) success:a2];
}

- (void)viewDidAppear:(BOOL)a3
{
  v3.receiver = self;
  v3.super_class = PXPeopleConfirmationViewController;
  [(PXPeopleConfirmationViewController *)&v3 viewDidAppear:a3];
}

- (void)viewDidLoad
{
  v41[4] = *MEMORY[0x1E69E9840];
  v40.receiver = self;
  v40.super_class = PXPeopleConfirmationViewController;
  [(PXPeopleConfirmationViewController *)&v40 viewDidLoad];
  v3 = [(PXPeopleConfirmationViewController *)self suggestionManager];
  [v3 preloadSounds];

  v4 = [(PXPeopleConfirmationViewController *)self view];
  v5 = objc_alloc_init(PXPeopleSuggestionView);
  suggestionView = self->_suggestionView;
  self->_suggestionView = v5;

  [(PXPeopleSuggestionView *)self->_suggestionView setTranslatesAutoresizingMaskIntoConstraints:0];
  [v4 addSubview:self->_suggestionView];
  v7 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  descriptionLabel = self->_descriptionLabel;
  self->_descriptionLabel = v7;

  v9 = [(PXPeopleConfirmationViewController *)self suggestionManager];
  v10 = [v9 person];

  v37 = [v10 px_longStyleLocalizedName];
  if ([v37 length])
  {
    PXLocalizedStringForPersonOrPetAndVisibility(v10, 0, @"PXPeopleConfirmMessage");
    objc_claimAutoreleasedReturnValue();
    PXStringWithValidatedFormat();
  }

  v11 = PXLocalizedStringForPersonOrPetAndVisibility(v10, 0, @"PXPeopleConfirmUnnamedReplacementMessage");
  [(UILabel *)self->_descriptionLabel setText:v11];

  [(UILabel *)self->_descriptionLabel setTextAlignment:1];
  v12 = [PXPeopleConfirmationLoadingView alloc];
  [v4 bounds];
  v38 = v10;
  v13 = [(PXPeopleConfirmationLoadingView *)v12 initWithFrame:v10 person:?];
  loadingView = self->_loadingView;
  self->_loadingView = v13;

  [(PXPeopleConfirmationLoadingView *)self->_loadingView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(PXPeopleConfirmationLoadingView *)self->_loadingView setAlpha:0.0];
  [v4 addSubview:self->_loadingView];
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

  v20 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [(UIActivityIndicatorView *)self->_interimLoadingIndicator setActivityIndicatorViewStyle:100];
  v36 = v20;
  [(UILabel *)self->_interimLoadingLabel setTextColor:v20];
  v31 = MEMORY[0x1E696ACD8];
  v35 = [(PXPeopleConfirmationLoadingView *)self->_loadingView leadingAnchor];
  v34 = [v4 leadingAnchor];
  v33 = [v35 constraintEqualToAnchor:v34];
  v41[0] = v33;
  v32 = [(PXPeopleConfirmationLoadingView *)self->_loadingView trailingAnchor];
  v21 = [v4 trailingAnchor];
  v22 = [v32 constraintEqualToAnchor:v21];
  v41[1] = v22;
  v23 = [(PXPeopleConfirmationLoadingView *)self->_loadingView topAnchor];
  v24 = [v4 topAnchor];
  v25 = [v23 constraintEqualToAnchor:v24];
  v41[2] = v25;
  v26 = [(PXPeopleConfirmationLoadingView *)self->_loadingView bottomAnchor];
  v39 = v4;
  v27 = [v4 bottomAnchor];
  v28 = [v26 constraintEqualToAnchor:v27];
  v41[3] = v28;
  v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:v41 count:4];
  [v31 activateConstraints:v29];

  v30 = [(PXPeopleConfirmationViewController *)self viewState];
  if (v30)
  {
    [(PXPeopleConfirmationViewController *)self updateViewWithViewState:v30];
  }
}

- (PXPeopleConfirmationViewController)initWithPerson:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = PXPeopleConfirmationViewController;
  v5 = [(PXPeopleConfirmationViewController *)&v13 init];
  if (v5)
  {
    v6 = [[PXPeopleSuggestionManager alloc] initWithPerson:v4];
    suggestionManager = v5->_suggestionManager;
    v5->_suggestionManager = v6;

    [(PXPeopleSuggestionManager *)v5->_suggestionManager setDelegate:v5];
    v8 = PXLocalizedStringFromTable(@"PXPeopleConfirmScreenTitle", @"PhotosUICore");
    v9 = [[PXPeopleSuggestionDataSource alloc] initWithFlowType:0];
    [(PXPeopleSuggestionManager *)v5->_suggestionManager setDataSource:v9];
    v10 = [(PXPeopleConfirmationViewController *)v5 navigationItem];
    [v10 setTitle:v8];

    v11 = +[PXPeopleUISettings sharedInstance];
    v5->_showTypeDebugColor = [v11 displayReviewMorePhotosSuggestionType];
  }

  return v5;
}

@end