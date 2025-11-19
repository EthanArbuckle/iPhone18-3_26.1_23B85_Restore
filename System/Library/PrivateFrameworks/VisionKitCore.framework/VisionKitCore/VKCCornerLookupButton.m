@interface VKCCornerLookupButton
- (BOOL)gestureRecognizer:(id)a3 shouldBeRequiredToFailByGestureRecognizer:(id)a4;
- (VKCCornerLookupButton)initWithFrame:(CGRect)a3 resultItem:(id)a4;
- (VKCCornerLookupButtonDelegate)delegate;
- (double)contentSizeScaleFactor;
- (double)cornerButtonSize;
- (id)_queryString;
- (id)_symbolNameForItem;
- (id)imageForButton;
- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4;
- (id)queryForProcessingResult;
- (void)_didDismissVisualResultsPane:(id)a3;
- (void)_setupButton;
- (void)_setupGestures;
- (void)_updateImage;
- (void)dealloc;
- (void)didDismissVisualResultsPane;
- (void)didMoveToWindow;
- (void)didTap;
- (void)setShouldShowResultWhenVisible:(BOOL)a3;
- (void)showLookupUIPaneForResultItem;
- (void)showVisualSearchResultView;
- (void)updateIndicatorDotForState;
@end

@implementation VKCCornerLookupButton

- (void)dealloc
{
  if (!self->_observingInteractionDidFinish)
  {
    v3 = [MEMORY[0x1E696AD88] defaultCenter];
    v4 = getkDDRVInteractionDidFinishNotification();
    [v3 removeObserver:self name:v4 object:0];
  }

  v5.receiver = self;
  v5.super_class = VKCCornerLookupButton;
  [(VKCCornerLookupButton *)&v5 dealloc];
}

- (VKCCornerLookupButton)initWithFrame:(CGRect)a3 resultItem:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = a4;
  v16.receiver = self;
  v16.super_class = VKCCornerLookupButton;
  v10 = [(VKCCornerLookupButton *)&v16 initWithFrame:x, y, width, height];
  v11 = v10;
  if (v10)
  {
    [(VKCCornerLookupButton *)v10 setResultItem:v9];
    [(VKCCornerLookupButton *)v11 _setupGestures];
    [(VKCCornerLookupButton *)v11 setAccessibilityIdentifier:@"com.apple.visionkit.visualSearchCornerIndicator"];
    if ([MEMORY[0x1E69DC938] vk_isiPad])
    {
      v12 = [(VKCCornerLookupButton *)v11 traitCollection];
      if ([v12 vk_hasCompactWidth])
      {
        v13 = 32.0;
      }

      else
      {
        v13 = 40.0;
      }
    }

    else
    {
      v13 = 32.0;
    }

    v11->_buttonWidth = v13;
    v11->_buttonHeight = v13;
    [(VKCCornerLookupButton *)v11 cornerButtonSize];
    [(VKCCornerLookupButton *)v11 setFrame:0.0, 0.0, v14, v14];
    [(VKCCornerLookupButton *)v11 _setupButton];
  }

  return v11;
}

- (void)didMoveToWindow
{
  v3 = [(VKCCornerLookupButton *)self window];
  if (v3 && (v12 = v3, v4 = [(VKCCornerLookupButton *)self shouldShowResultWhenVisible], v3 = v12, v4))
  {
    isShowingVisualResultsPane = self->_isShowingVisualResultsPane;

    if (!isShowingVisualResultsPane)
    {
      [(VKCCornerLookupButton *)self bounds];
      [(VKCCornerLookupButton *)self convertPoint:0 toView:?];
      v7 = v6;
      v9 = v8;
      v10 = [(VKCCornerLookupButton *)self window];
      [v10 bounds];
      v14.x = v7;
      v14.y = v9;
      v11 = CGRectContainsPoint(v15, v14);

      if (v11)
      {

        [(VKCCornerLookupButton *)self showVisualSearchResultView];
      }
    }
  }

  else
  {
  }
}

- (BOOL)gestureRecognizer:(id)a3 shouldBeRequiredToFailByGestureRecognizer:(id)a4
{
  v5 = a3;
  v6 = [(VKCCornerLookupButton *)self tapGestureRecognizer];

  return v6 == v5;
}

- (void)_setupGestures
{
  v3 = [objc_alloc(MEMORY[0x1E69DCDB0]) initWithDelegate:self];
  [(VKCCornerLookupButton *)self addInteraction:v3];
}

- (id)imageForButton
{
  v3 = MEMORY[0x1E69DCAB8];
  v4 = [(VKCCornerLookupButton *)self _symbolNameForItem];
  v5 = [v3 vk_symbolImageWithName:v4];

  if (!v5)
  {
    v6 = MEMORY[0x1E69DCAB8];
    v7 = [(VKCCornerLookupButton *)self _defaultSymbolName];
    v5 = [v6 vk_symbolImageWithName:v7];
  }

  v8 = [v5 imageWithRenderingMode:2];

  return v8;
}

- (id)_symbolNameForItem
{
  v2 = [(VKCCornerLookupButton *)self resultItem];
  v3 = [v2 glyphName];

  return v3;
}

- (void)_setupButton
{
  v12 = [(VKCCornerLookupButton *)self imageForButton];
  v3 = [MEMORY[0x1E69DC738] buttonWithType:0];
  button = self->_button;
  self->_button = v3;

  [(UIButton *)self->_button addTarget:self action:sel_didTap forControlEvents:64];
  v5 = [MEMORY[0x1E69DC740] plainButtonConfiguration];
  [(UIButton *)self->_button setConfiguration:v5];
  if ([MEMORY[0x1E69DC938] vk_isiPhone])
  {
    v6 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD10]];
    v7 = [MEMORY[0x1E69DCAD8] configurationWithFont:v6];
    [(UIButton *)self->_button setPreferredSymbolConfiguration:v7 forImageInState:0];
  }

  [(UIButton *)self->_button setImage:v12 forState:0];
  [(VKCCornerLookupButton *)self cornerButtonSize];
  v9 = v8;
  [(UIButton *)self->_button setFrame:0.0, 0.0, v9, v9];
  [(VKCCornerLookupButton *)self addSubview:self->_button];
  [(VKCCornerLookupButton *)self updateIndicatorDotForState];
  v10 = [(VKCCornerLookupButton *)self layer];
  [v10 setMasksToBounds:1];

  v11 = [(VKCCornerLookupButton *)self layer];
  [v11 setCornerRadius:v9 * 0.5];
}

- (double)cornerButtonSize
{
  [(VKCCornerLookupButton *)self contentSizeScaleFactor];
  v4 = v3;
  [(VKCCornerLookupButton *)self buttonWidth];
  return v4 * v5;
}

- (double)contentSizeScaleFactor
{
  v2 = [(VKCCornerLookupButton *)self traitCollection];
  [v2 vk_contentSizeScaleFactor];
  v4 = v3;

  return fmax(v4, 1.0);
}

- (void)_updateImage
{
  if (self->_isShowingVisualResultsPane)
  {
    [(VKCCornerLookupButton *)self _backgroundColorBehindText];
  }

  else
  {
    [MEMORY[0x1E69DC888] labelColor];
  }
  v3 = ;
  [(UIButton *)self->_button vk_setTintColor:v3];
}

- (void)updateIndicatorDotForState
{
  [(VKCCornerLookupButton *)self _updateImage];
  if (self->_isShowingVisualResultsPane)
  {
    [MEMORY[0x1E69DC888] colorWithRed:0.0 green:0.569 blue:1.0 alpha:1.0];
  }

  else
  {
    [(VKCCornerLookupButton *)self _backgroundColorBehindText];
  }
  v3 = ;
  [(UIView *)self setVk_backgroundColor:v3];
}

- (void)didTap
{
  if (!self->_isShowingVisualResultsPane)
  {
    v4 = [(VKCCornerLookupButton *)self resultItem];
    [v4 setCurrentInvocationType:1];

    [(VKCCornerLookupButton *)self showVisualSearchResultView];
  }
}

- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4
{
  v4 = [objc_alloc(MEMORY[0x1E69DD070]) initWithView:self];
  v5 = [MEMORY[0x1E69DCDB8] effectWithPreview:v4];
  v6 = [MEMORY[0x1E69DCDD0] styleWithEffect:v5 shape:0];

  return v6;
}

- (void)setShouldShowResultWhenVisible:(BOOL)a3
{
  v3 = a3;
  self->_shouldShowResultWhenVisible = a3;
  v5 = [(VKCCornerLookupButton *)self window];
  if (v5 && v3)
  {
    isShowingVisualResultsPane = self->_isShowingVisualResultsPane;

    if (!isShowingVisualResultsPane)
    {

      [(VKCCornerLookupButton *)self showVisualSearchResultView];
    }
  }

  else
  {
  }
}

- (void)showVisualSearchResultView
{
  self->_isShowingVisualResultsPane = 1;
  [(VKCCornerLookupButton *)self showLookupUIPaneForResultItem];
  v3 = [(VKCCornerLookupButton *)self delegate];
  [v3 lookupButton:self didTapVisualSearchIndicatorWithNormalizedBoundingBox:{0.0, 0.0, 1.0, 1.0}];

  [(VKCCornerLookupButton *)self updateIndicatorDotForState];
}

- (void)didDismissVisualResultsPane
{
  self->_isShowingVisualResultsPane = 0;
  v3 = [(VKCCornerLookupButton *)self delegate];
  [v3 lookupButtonDidDismissController:self];

  [(VKCCornerLookupButton *)self updateIndicatorDotForState];
}

- (id)_queryString
{
  v2 = VKBundle();
  v3 = [v2 localizedStringForKey:@"VK_RESULTS_LOOKUP_PANEL_TITLE" value:@"VK_RESULTS_LOOKUP_PANEL_TITLE" table:@"Localizable"];

  return v3;
}

- (id)queryForProcessingResult
{
  objc_initWeak(&location, self);
  v3 = +[VKCImageAnalyzerRequest newQueryIDForParsec];
  v4 = objc_alloc(MEMORY[0x1E69C7520]);
  v5 = [(VKCCornerLookupButton *)self _queryString];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __49__VKCCornerLookupButton_queryForProcessingResult__block_invoke;
  v8[3] = &unk_1E7BE3ED0;
  objc_copyWeak(v9, &location);
  v8[4] = self;
  v9[1] = v3;
  v6 = [v4 initWithTitle:v5 clientIdentifier:@"com.apple.mediaanalysisd" userAgent:@"VisualIntelligence/1" queryID:v3 queryProvider:v8];

  objc_destroyWeak(v9);
  objc_destroyWeak(&location);

  return v6;
}

void __49__VKCCornerLookupButton_queryForProcessingResult__block_invoke(uint64_t a1, int a2, int a3, void *a4)
{
  v30[1] = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = v7;
  if (a2 && a3)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    if (WeakRetained)
    {
      v10 = [MEMORY[0x1E695DF00] now];
      if (([WeakRetained didProcessResult]& 1) != 0)
      {
        v11 = [WeakRetained resultItem];
        v12 = [v11 searchItem];
        v13 = [v12 searchSections];
        (v8)[2](v8, v13, 0);

        v14 = [WeakRetained delegate];
        [v14 lookupButton:WeakRetained didProcessResultWithDuration:0.0];

        v15 = +[VKImageAnalyzerMadInterface sharedInterface];
        v16 = *(a1 + 48);
        v17 = [WeakRetained resultItem];
        v18 = [v17 queryID];
        v19 = [WeakRetained resultItem];
        [v15 didShowVisualSearchCachedResultsForQueryID:v16 cachedResultQueryID:v18 item:v19];
      }

      else
      {
        v20 = [*(a1 + 32) delegate];
        v21 = [WeakRetained resultItem];
        v30[0] = v21;
        v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:1];
        v23 = *(a1 + 48);
        v25[0] = MEMORY[0x1E69E9820];
        v25[1] = 3221225472;
        v25[2] = __49__VKCCornerLookupButton_queryForProcessingResult__block_invoke_2;
        v25[3] = &unk_1E7BE3EA8;
        v26 = v10;
        v27 = WeakRetained;
        v29 = *(a1 + 48);
        v28 = v8;
        [v20 generateVisualSearchResultForItems:v22 queryID:v23 completionHandler:v25];
      }
    }
  }

  else
  {
    (*(v7 + 2))(v7, 0, 0);
    WeakRetained = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.visualSearch");
    if (os_log_type_enabled(WeakRetained, OS_LOG_TYPE_INFO))
    {
      *v24 = 0;
      _os_log_impl(&dword_1B4335000, WeakRetained, OS_LOG_TYPE_INFO, "Server access was not permitted", v24, 2u);
    }
  }
}

void __49__VKCCornerLookupButton_queryForProcessingResult__block_invoke_2(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __49__VKCCornerLookupButton_queryForProcessingResult__block_invoke_3;
  v14[3] = &unk_1E7BE3E80;
  v15 = v7;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  v16 = v8;
  v17 = v9;
  v11 = *(a1 + 56);
  v18 = v6;
  v20 = v11;
  v19 = v10;
  v12 = v6;
  v13 = v7;
  vk_performBlockOnMainThread(v14);
}

void __49__VKCCornerLookupButton_queryForProcessingResult__block_invoke_3(uint64_t a1)
{
  v2 = (a1 + 32);
  if (*(a1 + 32))
  {
    (*(*(a1 + 64) + 16))();
    v3 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.visualSearch");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __49__VKCCornerLookupButton_queryForProcessingResult__block_invoke_3_cold_1(v2, v3);
    }
  }

  else
  {
    v4 = [MEMORY[0x1E695DF00] now];
    [v4 timeIntervalSinceDate:*(a1 + 40)];
    v6 = v5;

    [*(a1 + 48) setDidProcessResult:1];
    [*(a1 + 48) setResult:*(a1 + 56)];
    v7 = [*(a1 + 56) resultItems];
    v8 = [v7 firstObject];
    v9 = [v8 searchItem];
    v10 = [*(a1 + 48) resultItem];
    [v10 setSearchItem:v9];

    v11 = *(a1 + 72);
    v12 = [*(a1 + 48) resultItem];
    [v12 setQueryID:v11];

    v13 = *(a1 + 64);
    v14 = [*(a1 + 48) resultItem];
    v15 = [v14 searchItem];
    v16 = [v15 searchSections];
    (*(v13 + 16))(v13, v16, 0);

    v17 = [*(a1 + 48) delegate];
    [v17 lookupButton:*(a1 + 48) didProcessResultWithDuration:v6];
  }
}

- (void)showLookupUIPaneForResultItem
{
  v3 = [(VKCCornerLookupButton *)self queryForProcessingResult];
  v4 = objc_alloc(MEMORY[0x1E69C7518]);
  v5 = [(VKCCornerLookupButton *)self _queryString];
  v6 = [v4 initWithSearchQuery:v3 rangeInContext:{0x7FFFFFFFFFFFFFFFLL, objc_msgSend(v5, "length")}];

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __54__VKCCornerLookupButton_showLookupUIPaneForResultItem__block_invoke;
  v14[3] = &unk_1E7BE3EF8;
  v14[4] = self;
  [v6 setReportAnIssueExtendedBlock:v14];
  v7 = [MEMORY[0x1E696AFB0] UUID];
  v8 = [v7 UUIDString];

  [(VKCCornerLookupButton *)self setCurrentRVItemID:v8];
  [v6 setClientHints:v8];
  v9 = [(VKCCornerLookupButton *)self delegate];
  [v9 addMetadataToVSFeedbackItem:v6];

  if (![(VKCCornerLookupButton *)self observingInteractionDidFinish])
  {
    v10 = [MEMORY[0x1E696AD88] defaultCenter];
    v11 = getkDDRVInteractionDidFinishNotification();
    [v10 addObserver:self selector:sel__didDismissVisualResultsPane_ name:v11 object:0];

    [(VKCCornerLookupButton *)self setObservingInteractionDidFinish:1];
  }

  v16 = 0;
  v17 = &v16;
  v18 = 0x2050000000;
  v12 = getDDRevealBridgeClass_softClass;
  v19 = getDDRevealBridgeClass_softClass;
  if (!getDDRevealBridgeClass_softClass)
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __getDDRevealBridgeClass_block_invoke;
    v15[3] = &unk_1E7BE3F48;
    v15[4] = &v16;
    __getDDRevealBridgeClass_block_invoke(v15);
    v12 = v17[3];
  }

  v13 = v12;
  _Block_object_dispose(&v16, 8);
  [v12 performDefaultActionForRVItem:v6 view:self location:0 fallbackMenuInteraction:MEMORY[0x1E695E0F8] context:{*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)}];
}

void __54__VKCCornerLookupButton_showLookupUIPaneForResultItem__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  v10 = [v5 delegate];
  v8 = [*(a1 + 32) result];
  v9 = [v8 userFeedbackPayload];
  [v10 submitVisualSearchUserFeedbackForReportIdentifier:v7 userFeedbackPayload:v9 sfReportData:v6];
}

- (void)_didDismissVisualResultsPane:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = [v4 object];

  v15 = VKDynamicCast(v5, v6);

  v7 = objc_opt_class();
  v8 = [v15 clientHints];
  v9 = VKDynamicCast(v7, v8);

  if (v9)
  {
    v10 = [(VKCCornerLookupButton *)self currentRVItemID];
    v11 = [v9 isEqualToString:v10];

    if (v11)
    {
      v12 = [MEMORY[0x1E696AD88] defaultCenter];
      v13 = getkDDRVInteractionDidFinishNotification();
      [v12 removeObserver:self name:v13 object:0];

      [(VKCCornerLookupButton *)self setObservingInteractionDidFinish:0];
      [(VKCCornerLookupButton *)self setCurrentRVItemID:0];
      self->_isShowingVisualResultsPane = 0;
      v14 = [(VKCCornerLookupButton *)self delegate];
      [v14 lookupButtonDidDismissController:self];

      [(VKCCornerLookupButton *)self updateIndicatorDotForState];
    }
  }
}

- (VKCCornerLookupButtonDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __49__VKCCornerLookupButton_queryForProcessingResult__block_invoke_3_cold_1(uint64_t *a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&dword_1B4335000, a2, OS_LOG_TYPE_ERROR, "Could not process analysis result with error: %@", &v3, 0xCu);
}

@end