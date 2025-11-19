@interface SPUIResultsViewController
- (BOOL)_hasRealSuggestions;
- (BOOL)isResultOriginalSearchSuggestion:(id)a3;
- (BOOL)searchAgentHasWindow:(id)a3;
- (CGSize)contentSize;
- (CGSize)oldContentSize;
- (SFSearchResult)actualSearchSuggestionResult;
- (SPUIResultsViewController)initWithSearchModel:(id)a3 searchEntity:(id)a4;
- (SearchUIBackgroundColorDelegate)backgroundColorDelegate;
- (UISearchToken)searchToken;
- (id)asTypedSearchResult;
- (id)makeAsYouTypeSuggestionSearchResultWithSearchString:(id)a3 detailText:(id)a4 suggestionIdentifier:(id)a5 queryContext:(id)a6;
- (id)restorationContext;
- (id)searchUIBackgroundColor;
- (unint64_t)currentDeviceAuthenticationState;
- (void)_pushSectionsUpdate;
- (void)changeTextFieldsReturnKeyType:(int64_t)a3 withGoTakeoverResult:(id)a4;
- (void)forceHighlightForResult:(id)a3;
- (void)highlightResultAfterUnmarkingText;
- (void)invalidateContentHeight;
- (void)purgeMemory;
- (void)removeCompletionAndHighlightAsTyped:(BOOL)a3;
- (void)reportFinalResults:(id)a3;
- (void)searchAgentClearedResults:(id)a3;
- (void)searchAgentUpdatedResults:(id)a3;
- (void)searchUpdatedWithString:(id)a3 tokenEntity:(id)a4 queryId:(unint64_t)a5 wantsCompletions:(BOOL)a6 keyboardLanguage:(id)a7;
- (void)setRestorationContext:(id)a3;
- (void)setUseLoadingView:(BOOL)a3;
- (void)unhideLoadingView;
@end

@implementation SPUIResultsViewController

- (id)searchUIBackgroundColor
{
  v2 = [(SPUIResultsViewController *)self searchEntity];
  v3 = [v2 entityBackgroundColor];

  return v3;
}

- (void)purgeMemory
{
  v3.receiver = self;
  v3.super_class = SPUIResultsViewController;
  [(SearchUIResultsViewController *)&v3 purgeMemory];
  [(SPUIResultsViewController *)self setResultSections:0];
  [(SPUIResultsViewController *)self setSuggestionsSection:0];
}

- (unint64_t)currentDeviceAuthenticationState
{
  v2 = MEMORY[0x277D65D88];
  v3 = [(SPUIResultsViewController *)self view];
  v4 = [v2 deviceAuthenticationStateForView:v3];

  return v4;
}

- (void)_pushSectionsUpdate
{
  v79 = *MEMORY[0x277D85DE8];
  v3 = [(SPUIResultsViewController *)self resultSections];
  v4 = [v3 firstObject];

  v5 = [v4 results];
  v6 = [v5 firstObject];

  v7 = SPBlueButtonBehavior();
  v8 = [v4 bundleIdentifier];
  v9 = [v8 isEqualToString:*MEMORY[0x277D65CC8]];

  v10 = [v4 results];
  if ([v10 count] == 1)
  {
    v11 = 1;
  }

  else
  {
    v11 = [v6 renderHorizontallyWithOtherResultsInCategory];
  }

  v12 = [v6 noGoTakeover];
  if (v7 != 1 && ((v7 == 0) & v11) == 0)
  {
    if (v7 == 2)
    {
      goto LABEL_22;
    }

    goto LABEL_12;
  }

  if (!v9)
  {
LABEL_12:
    v14 = 0;
    v13 = 0;
    goto LABEL_13;
  }

  v7 = [(SearchUIResultsViewController *)self delegate];
  v13 = objc_opt_respondsToSelector();
  if (v13 & 1) != 0 && (-[SearchUIResultsViewController delegate](self, "delegate"), v9 = objc_claimAutoreleasedReturnValue(), ([v9 optOutOfGoButton]))
  {
    v14 = 1;
    v13 = 1;
  }

  else
  {
    if ((v12 & 1) == 0)
    {
      if (v13)
      {
      }

      goto LABEL_28;
    }

    v14 = 1;
  }

LABEL_13:
  v15 = [(SPUIResultsViewController *)self asTypedSearchResult];
  v16 = v6 == v15 && [v6 type] == 29;

  if (v13)
  {
  }

  if (v14)
  {

    if (v16)
    {
      goto LABEL_28;
    }

LABEL_22:
    v17 = [(SPUIResultsViewController *)self asTypedSearchResult];
    v18 = self;
    v19 = 6;
    v20 = 0;
    goto LABEL_29;
  }

  if (!v16)
  {
    goto LABEL_22;
  }

LABEL_28:
  v17 = v6;
  v18 = self;
  v19 = 1;
  v20 = v17;
LABEL_29:
  [(SPUIResultsViewController *)v18 changeTextFieldsReturnKeyType:v19 withGoTakeoverResult:v20];
  if ([(SPUIResultsViewController *)self hasResultsWaitingToUpdate])
  {
    v21 = [(SearchUIResultsViewController *)self delegate];
    [v21 willUpdateFromResultsWithHighlightedResult:v17 viewController:self];

    [(SPUIResultsViewController *)self setHasResultsWaitingToUpdate:0];
  }

  v22 = [(SPUIResultsViewController *)self resultSections];
  v23 = v22;
  v24 = MEMORY[0x277CBEBF8];
  if (v22)
  {
    v24 = v22;
  }

  v25 = v24;

  v26 = [(SearchUIResultsViewController *)self searchField];
  v27 = [v26 searchText];

  v62 = v6;
  v63 = v4;
  v60 = v17;
  v61 = self;
  v59 = v27;
  if (v6)
  {
    v28 = [v6 queryId];
    if ([v27 length])
    {
      v29 = v28 != [(SPUIResultsViewController *)self previousQueryId];
    }

    else
    {
      v29 = 1;
    }

    v58 = v29;
    [(SPUIResultsViewController *)self setPreviousQueryId:v28];
  }

  else
  {
    v58 = 1;
  }

  v30 = SPSuggestionDetailTextBehavior();
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  obj = v25;
  v66 = [obj countByEnumeratingWithState:&v71 objects:v78 count:16];
  if (v66)
  {
    v65 = *v72;
    do
    {
      for (i = 0; i != v66; ++i)
      {
        if (*v72 != v65)
        {
          objc_enumerationMutation(obj);
        }

        v32 = *(*(&v71 + 1) + 8 * i);
        v67 = 0u;
        v68 = 0u;
        v69 = 0u;
        v70 = 0u;
        v33 = [v32 results];
        v34 = [v33 countByEnumeratingWithState:&v67 objects:v77 count:16];
        if (v34)
        {
          v35 = v34;
          v36 = *v68;
          do
          {
            for (j = 0; j != v35; ++j)
            {
              if (*v68 != v36)
              {
                objc_enumerationMutation(v33);
              }

              v38 = [MEMORY[0x277D4C898] cardSectionsForRenderingResult:*(*(&v67 + 1) + 8 * j)];
              v39 = [v38 firstObject];

              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v40 = [v39 suggestionType];
                v41 = v30 != 1 || v40 == 0;
                v42 = !v41;
                if (!v30 || v42)
                {
                  [v39 setDetailText:0];
                }
              }
            }

            v35 = [v33 countByEnumeratingWithState:&v67 objects:v77 count:16];
          }

          while (v35);
        }
      }

      v66 = [obj countByEnumeratingWithState:&v71 objects:v78 count:16];
    }

    while (v66);
  }

  v43 = [MEMORY[0x277D4C898] cardForRenderingResult:v62];
  v44 = [v43 backgroundColor];

  if (v44)
  {
    v45 = [(SPUIResultsViewController *)v61 searchEntity];
    v46 = [v45 entityBackgroundColor];

    if (!v46)
    {
      v47 = [(SPUIResultsViewController *)v61 searchEntity];
      [v47 setEntityBackgroundColor:v44];

      v48 = [(SPUIResultsViewController *)v61 backgroundColorDelegate];
      [v48 didUpdateBackgroundColorForViewController:v61];
    }
  }

  [(SearchUIResultsViewController *)v61 updateWithResultSections:obj resetScrollPoint:v58 animated:[(SPUIResultsViewController *)v61 shouldAnimateUpdates]];
  v49 = [(SearchUIResultsViewController *)v61 searchField];
  v50 = [v49 isFirstResponder];

  v51 = v60;
  if ((v50 & 1) == 0)
  {

    v51 = 0;
  }

  [(SPUIResultsViewController *)v61 forceHighlightForResult:v51];
  v52 = [obj count];
  v53 = MEMORY[0x277D65D40];
  v54 = *(MEMORY[0x277D65D40] + 40);
  if (v52)
  {
    if (!v54)
    {
      SPUIInitLogging();
      v54 = *(v53 + 40);
    }

    if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
    {
      v55 = v54;
      v56 = [obj count];
      *buf = 134217984;
      v76 = v56;
      _os_log_impl(&dword_26B837000, v55, OS_LOG_TYPE_DEFAULT, "update with section count %lu", buf, 0xCu);
    }
  }

  else
  {
    if (!v54)
    {
      SPUIInitLogging();
      v54 = *(v53 + 40);
    }

    if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_26B837000, v54, OS_LOG_TYPE_DEFAULT, "no results", buf, 2u);
    }
  }

  v57 = *MEMORY[0x277D85DE8];
}

- (id)asTypedSearchResult
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [(SPUIResultsViewController *)self suggestionsSection];
  v3 = [v2 results];

  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = *v11;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        if ([v7 type] == 30)
        {
          v4 = v7;
          goto LABEL_11;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v8 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)unhideLoadingView
{
  v3 = [(SPUIResultsViewController *)self loadingView];
  v4 = [v3 loadingState];

  if (!v4)
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __46__SPUIResultsViewController_unhideLoadingView__block_invoke;
    v5[3] = &unk_279D06C78;
    v5[4] = self;
    [MEMORY[0x277D4C898] performAnimatableChanges:v5];
  }
}

void __46__SPUIResultsViewController_unhideLoadingView__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) loadingView];
  [v1 setAlpha:1.0];
}

- (SPUIResultsViewController)initWithSearchModel:(id)a3 searchEntity:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = SPUIResultsViewController;
  v9 = [(SPUIResultsViewController *)&v14 init];
  v10 = v9;
  if (v9)
  {
    v11 = [(SPUIResultsViewController *)v9 view];
    v12 = [v11 layer];
    [v12 setAllowsGroupOpacity:0];

    [(SearchUIResultsViewController *)v10 setShouldUseInsetRoundedSections:0];
    [(SPUIResultsViewController *)v10 setHasResultsWaitingToUpdate:0];
    [v7 setDelegate:v10];
    [v7 setMaxUISuggestions:0x7FFFFFFFFFFFFFFFLL];
    objc_storeStrong(&v10->_model, a3);
    [(SPUIResultsViewController *)v10 setSearchEntity:v8];
    [(SearchUIResultsViewController *)v10 setRestorationContextClass:objc_opt_class()];
  }

  return v10;
}

- (void)setUseLoadingView:(BOOL)a3
{
  self->_useLoadingView = a3;
  if (a3 && ([(SPUIResultsViewController *)self loadingView], v4 = objc_claimAutoreleasedReturnValue(), v4, !v4))
  {
    v6 = objc_opt_new();
    [(SPUIResultsViewController *)self setLoadingView:v6];

    v7 = [(SPUIResultsViewController *)self view];
    v8 = [(SPUIResultsViewController *)self loadingView];
    [v7 insertSubview:v8 atIndex:0];

    v9 = MEMORY[0x277D4C828];
    v10 = [(SPUIResultsViewController *)self loadingView];
    [v9 fillContainerWithView:v10];

    v11 = [(SearchUIResultsViewController *)self contentScrollView];
    [v11 setAlpha:0.0];
  }

  else
  {
    v5 = [(SPUIResultsViewController *)self loadingView];
    [v5 removeFromSuperview];

    [(SPUIResultsViewController *)self setLoadingView:0];
  }
}

- (UISearchToken)searchToken
{
  v3 = [(SPUIResultsViewController *)self searchEntity];
  v4 = [SPUISearchHeader tokenFromSearchEntity:v3];

  v5 = [(SPUIResultsViewController *)self searchEntity];
  v6 = [v5 tokenText];
  [v4 setRepresentedObject:v6];

  return v4;
}

- (BOOL)isResultOriginalSearchSuggestion:(id)a3
{
  v4 = a3;
  v5 = [(SPUIResultsViewController *)self actualSearchSuggestionResult];

  return v5 == v4;
}

- (BOOL)searchAgentHasWindow:(id)a3
{
  v3 = [(SPUIResultsViewController *)self view];
  v4 = [v3 window];
  v5 = v4 != 0;

  return v5;
}

- (void)searchAgentUpdatedResults:(id)a3
{
  v36 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = MEMORY[0x277D65D40];
  v6 = *(MEMORY[0x277D65D40] + 32);
  if (!v6)
  {
    SPUIInitLogging();
    v6 = *(v5 + 32);
  }

  v7 = os_signpost_id_generate(v6);
  v8 = *(v5 + 32);
  if (!v8)
  {
    SPUIInitLogging();
    v8 = *(v5 + 32);
  }

  v9 = v8;
  v10 = v9;
  v11 = v7 - 1;
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_26B837000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v7, "tableUpdate", "", buf, 2u);
  }

  if ([v4 queryPartiallyComplete])
  {
    if (self->_startTime)
    {
      sp_analytics_log_timing();
    }

    self->_startTime = 0;
  }

  else if ([v4 queryComplete])
  {
    [(SPUIResultsViewController *)self finishedGettingResults:1];
  }

  else if (self->_startTime)
  {
    sp_analytics_log_timing();
  }

  v12 = [v4 sections];
  if ([v4 wantsCompletions])
  {
    v28 = v7 - 1;
    v29 = v7;
    [(SPUIResultsViewController *)self setSuggestionsSection:0];
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v27 = v12;
    v13 = v12;
    v14 = [v13 countByEnumeratingWithState:&v30 objects:v35 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v31;
      v17 = *MEMORY[0x277D65C88];
      while (2)
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v31 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v19 = *(*(&v30 + 1) + 8 * i);
          v20 = [v19 bundleIdentifier];
          v21 = [v20 isEqualToString:v17];

          if (v21)
          {
            [(SPUIResultsViewController *)self setSuggestionsSection:v19];
            goto LABEL_28;
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v30 objects:v35 count:16];
        if (v15)
        {
          continue;
        }

        break;
      }
    }

LABEL_28:

    v11 = v28;
    v7 = v29;
    v5 = MEMORY[0x277D65D40];
    v12 = v27;
  }

  else
  {
    [(SPUIResultsViewController *)self clearSuggestionSection];
  }

  -[SPUIResultsViewController setQueryJustHasTopHits:](self, "setQueryJustHasTopHits:", [v4 queryJustHasTopHits]);
  if ([v4 queryPartiallyComplete] & 1) != 0 || (objc_msgSend(v4, "queryComplete"))
  {
    v22 = [v4 searchThroughSection];
    [(SPUIResultsViewController *)self setSearchThroughSection:v22];
  }

  else
  {
    [(SPUIResultsViewController *)self setSearchThroughSection:0];
  }

  [(SPUIResultsViewController *)self setResultSections:v12];
  [(SPUIResultsViewController *)self setHasResultsWaitingToUpdate:1];
  [(SPUIResultsViewController *)self _pushSectionsUpdate];
  if ([v4 queryComplete])
  {
    [(SPUIResultsViewController *)self reportFinalResults:v4];
  }

  v23 = *(v5 + 32);
  if (!v23)
  {
    SPUIInitLogging();
    v23 = *(v5 + 32);
  }

  v24 = v23;
  v25 = v24;
  if (v11 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v24))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_26B837000, v25, OS_SIGNPOST_INTERVAL_END, v7, "tableUpdate", " enableTelemetry=YES ", buf, 2u);
  }

  v26 = *MEMORY[0x277D85DE8];
}

void __52__SPUIResultsViewController_finishedGettingResults___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) contentScrollView];
  [v1 setAlpha:1.0];
}

uint64_t __52__SPUIResultsViewController_finishedGettingResults___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) loadingView];
  [v2 removeFromSuperview];

  v3 = *(a1 + 32);

  return [v3 setLoadingView:0];
}

- (void)reportFinalResults:(id)a3
{
  v4 = a3;
  v7 = [(SearchUIResultsViewController *)self sections];
  v5 = [v4 queryTask];

  v6 = [v5 searchString];
  [SPUIFeedbackManager resultsDidFinishWithSections:v7 withQueryString:v6];
}

- (void)invalidateContentHeight
{
  [(SPUIResultsViewController *)self setQueryJustHasTopHits:0];
  v3 = *MEMORY[0x277CBF3A8];
  v4 = *(MEMORY[0x277CBF3A8] + 8);

  [(SPUIResultsViewController *)self setOldContentSize:v3, v4];
}

- (void)searchAgentClearedResults:(id)a3
{
  [(SearchUIResultsViewController *)self updateWithResultSections:MEMORY[0x277CBEBF8] resetScrollPoint:1];
  [(SPUIResultsViewController *)self setSuggestionsSection:0];
  [(SPUIResultsViewController *)self setResultSections:0];
  [(SPUIResultsViewController *)self setSearchThroughSection:0];
  v4 = *MEMORY[0x277CBF3A8];
  v5 = *(MEMORY[0x277CBF3A8] + 8);

  [(SPUIResultsViewController *)self setOldContentSize:v4, v5];
}

- (SFSearchResult)actualSearchSuggestionResult
{
  v2 = [(SPUIResultsViewController *)self suggestionsSection];
  v3 = [v2 results];
  v4 = [v3 firstObject];

  return v4;
}

- (id)makeAsYouTypeSuggestionSearchResultWithSearchString:(id)a3 detailText:(id)a4 suggestionIdentifier:(id)a5 queryContext:(id)a6
{
  v9 = *MEMORY[0x277D4BF28];
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  if ([v11 isEqualToString:v9])
  {
    v14 = 6;
  }

  else
  {
    v14 = 14;
  }

  v15 = [objc_alloc(MEMORY[0x277D4C5D8]) initWithIdentifier:v11 suggestion:v13 query:v13 score:v14 type:1.0];

  [v15 setDetailText:v12];
  v16 = [MEMORY[0x277D65D58] buildResultWithSuggestion:v15 queryContext:v10];

  return v16;
}

- (void)searchUpdatedWithString:(id)a3 tokenEntity:(id)a4 queryId:(unint64_t)a5 wantsCompletions:(BOOL)a6 keyboardLanguage:(id)a7
{
  v8 = a6;
  v82 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a7;
  self->_startTime = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
  [(SearchUIResultsViewController *)self setQueryString:v12];
  if (![v12 length])
  {
    v15 = [v13 tokenText];
    v16 = [v15 length];

    if (!v16)
    {
      [(SPUIResultsViewController *)self clearSuggestionSection];
      [(SPUIResultsViewController *)self setResultSections:0];
      [(SPUIResultsViewController *)self setSearchThroughSection:0];
      [(SPUIResultsViewController *)self _pushSectionsUpdate];
      goto LABEL_43;
    }
  }

  if (!v8)
  {
    [(SPUIResultsViewController *)self clearSuggestionSection];
    goto LABEL_43;
  }

  v17 = objc_opt_new();
  [v17 setSearchString:v12];
  [v17 setKeyboardLanguage:v14];
  [v17 setQueryIdent:a5];
  v18 = [(SPUIResultsViewController *)self makeAsYouTypeSuggestionSearchResultWithSearchString:v12 detailText:0 suggestionIdentifier:*MEMORY[0x277D4BF28] queryContext:v17];
  v19 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v20 = [v19 localizedStringForKey:@"SUGGESTION_DETAIL_WEB" value:&stru_287C49600 table:@"Search"];

  v75 = [(SPUIResultsViewController *)self makeAsYouTypeSuggestionSearchResultWithSearchString:v12 detailText:v20 suggestionIdentifier:*MEMORY[0x277D4BF30] queryContext:v17];
  v21 = [(SPUIResultsViewController *)self suggestionsSection];

  if (!v21)
  {
    v49 = 1;
    goto LABEL_39;
  }

  v22 = [(SPUIResultsViewController *)self suggestionsSection];
  v23 = [v22 results];
  v24 = [v23 mutableCopy];

  v25 = [v24 count];
  v73 = v18;
  v72 = v25 == 0;
  v71 = v24;
  if (!v25)
  {
    [v24 addObject:v18];
    [v24 addObject:v75];
    goto LABEL_35;
  }

  v70 = v17;
  v79 = 0u;
  v80 = 0u;
  v77 = 0u;
  v78 = 0u;
  v26 = v24;
  v27 = [v26 countByEnumeratingWithState:&v77 objects:v81 count:16];
  if (!v27)
  {

    goto LABEL_35;
  }

  v28 = v27;
  obj = v26;
  v65 = v20;
  v66 = self;
  v67 = v14;
  v68 = v13;
  v64 = v12;
  v29 = 0;
  v30 = *v78;
  v31 = *MEMORY[0x277D4BF00];
  v74 = *MEMORY[0x277D4BF08];
  v32 = -1;
  v33 = -1;
  while (2)
  {
    v34 = 0;
    v69 = v29 + v28;
    do
    {
      if (*v78 != v30)
      {
        objc_enumerationMutation(obj);
      }

      v35 = *(*(&v77 + 1) + 8 * v34);
      v36 = [v35 resultBundleId];
      v37 = [v36 isEqualToString:v31];

      if (v37)
      {
        v33 = v29;
      }

      else
      {
        v38 = [v35 resultBundleId];
        v39 = [v38 isEqualToString:v74];

        if (v39)
        {
          v40 = [MEMORY[0x277D4C898] cardSectionsForRenderingResult:v35];
          v41 = [v40 firstObject];

          v42 = [MEMORY[0x277D4C898] cardSectionsForRenderingResult:v75];
          v43 = [v42 firstObject];

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v44 = [v41 detailText];
              v45 = [v44 text];

              v46 = [v43 detailText];
              [v46 setText:v45];
            }
          }

          v32 = v29;
        }
      }

      if ((v33 & 0x8000000000000000) == 0 && (v32 & 0x8000000000000000) == 0)
      {
        v47 = obj;

        self = v66;
        v14 = v67;
        v17 = v70;
        v48 = v73;
        v20 = v65;
LABEL_28:
        v50 = [v47 objectAtIndexedSubscript:v33];
        [(SearchUIResultsViewController *)self replaceResult:v50 withResult:v48];

        v51 = [(SPUIResultsViewController *)self highlightedResult];
        [v47 objectAtIndexedSubscript:v33];
        v53 = v52 = v48;

        if (v51 == v53)
        {
          [(SPUIResultsViewController *)self forceHighlightForResult:v52];
        }

        [v47 replaceObjectAtIndex:v33 withObject:v52];
        v13 = v68;
        goto LABEL_31;
      }

      ++v29;
      ++v34;
    }

    while (v28 != v34);
    v28 = [obj countByEnumeratingWithState:&v77 objects:v81 count:16];
    v29 = v69;
    if (v28)
    {
      continue;
    }

    break;
  }

  v47 = obj;

  v14 = v67;
  v13 = v68;
  v20 = v65;
  self = v66;
  v17 = v70;
  v48 = v73;
  if ((v33 & 0x8000000000000000) == 0)
  {
    goto LABEL_28;
  }

LABEL_31:
  v12 = v64;
  if ((v32 & 0x8000000000000000) == 0)
  {
    v54 = [obj objectAtIndexedSubscript:v32];
    [(SearchUIResultsViewController *)self replaceResult:v54 withResult:v75];

    [obj replaceObjectAtIndex:v32 withObject:v75];
  }

LABEL_35:
  v55 = v20;
  v56 = [(SPUIResultsViewController *)self suggestionsSection];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v57 = [(SPUIResultsViewController *)self suggestionsSection];
    v58 = [v57 mutableDeepCopy];
  }

  else
  {
    v59 = objc_alloc(MEMORY[0x277D65848]);
    v57 = [(SPUIResultsViewController *)self suggestionsSection];
    v58 = [v59 initWithSection:v57];
  }

  v60 = v58;

  [v60 setResults:v71];
  [(SPUIResultsViewController *)self setSuggestionsSection:v60];

  v18 = v73;
  v20 = v55;
  v49 = v72;
LABEL_39:
  v61 = [MEMORY[0x277D75128] sharedApplication];
  v62 = [v61 isRunningTest];

  if (v49 && !v62)
  {
    [(SPUIResultsViewController *)self _pushSectionsUpdate];
  }

LABEL_43:
  v63 = *MEMORY[0x277D85DE8];
}

- (CGSize)contentSize
{
  if ([(SPUIResultsViewController *)self queryJustHasTopHits])
  {

    [(SPUIResultsViewController *)self oldContentSize];
  }

  else
  {
    v5 = [(SearchUIResultsViewController *)self sections];
    v6 = [v5 count];

    if (v6)
    {
      v9.receiver = self;
      v9.super_class = SPUIResultsViewController;
      [(SearchUIResultsViewController *)&v9 contentSize];
    }

    else
    {
      v7 = *MEMORY[0x277CBF3A8];
      v8 = *(MEMORY[0x277CBF3A8] + 8);
    }

    [(SPUIResultsViewController *)self setOldContentSize:v7, v8];
    [(SPUIResultsViewController *)self oldContentSize];
  }

  result.height = v4;
  result.width = v3;
  return result;
}

- (BOOL)_hasRealSuggestions
{
  v2 = [(SPUIResultsViewController *)self suggestionsSection];
  v3 = [v2 results];
  v4 = [v3 count] != 0;

  return v4;
}

- (void)removeCompletionAndHighlightAsTyped:(BOOL)a3
{
  if (a3)
  {
    v4 = [(SPUIResultsViewController *)self asTypedSearchResult];
    [(SPUIResultsViewController *)self forceHighlightForResult:v4];
  }

  else
  {
    [(SPUIResultsViewController *)self forceHighlightForResult:0];
  }

  [(SPUIResultsViewController *)self changeTextFieldsReturnKeyType:6 withGoTakeoverResult:0];
}

- (void)setRestorationContext:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = SPUIResultsViewController;
  [(SearchUIResultsViewController *)&v8 setRestorationContext:v4];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 sections];
    [(SearchUIResultsViewController *)self setSections:v5];

    v6 = [v4 searchEntity];
    [(SPUIResultsViewController *)self setSearchEntity:v6];

    v7 = [v4 searchString];
    [(SearchUIResultsViewController *)self setQueryString:v7];
  }
}

- (id)restorationContext
{
  v8.receiver = self;
  v8.super_class = SPUIResultsViewController;
  v3 = [(SearchUIResultsViewController *)&v8 restorationContext];
  v4 = [(SearchUIResultsViewController *)self sections];
  [v3 setSections:v4];

  v5 = [(SPUIResultsViewController *)self searchEntity];
  [v3 setSearchEntity:v5];

  v6 = [(SearchUIResultsViewController *)self queryString];
  [v3 setSearchString:v6];

  return v3;
}

- (void)highlightResultAfterUnmarkingText
{
  v3 = [(SPUIResultsViewController *)self highlightedResult];
  [(SPUIResultsViewController *)self forceHighlightForResult:v3];
}

- (void)forceHighlightForResult:(id)a3
{
  v8 = a3;
  if (-[SPUIResultsViewController allowHighlightingWhenInactive](self, "allowHighlightingWhenInactive") || (-[SearchUIResultsViewController delegate](self, "delegate"), v4 = objc_claimAutoreleasedReturnValue(), v5 = [v4 isActiveViewController:self], v4, v5))
  {
    self->_isHighlighting = 1;
    v6 = [(SearchUIResultsViewController *)self searchField];
    v7 = [v6 hasMarkedText];

    if ((v7 & 1) == 0)
    {
      [(SearchUIResultsViewController *)self highlightResult:v8];
    }

    [(SPUIResultsViewController *)self setHighlightedResult:v8];
    self->_isHighlighting = 0;
  }
}

- (void)changeTextFieldsReturnKeyType:(int64_t)a3 withGoTakeoverResult:(id)a4
{
  v12 = a4;
  if (-[SPUIResultsViewController allowHighlightingWhenInactive](self, "allowHighlightingWhenInactive") || (-[SearchUIResultsViewController delegate](self, "delegate"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 isActiveViewController:self], v6, v7))
  {
    v8 = a3 == 1 ? v12 : 0;
    [(SPUIResultsViewController *)self setGoTakeoverResult:v8];
    v9 = [(SearchUIResultsViewController *)self searchField];
    v10 = [v9 returnKeyType];

    if (v10 != a3)
    {
      v11 = [(SearchUIResultsViewController *)self searchField];
      [v11 setReturnKeyType:a3];

      +[SPUITextField updateBlueButton];
    }
  }
}

- (SearchUIBackgroundColorDelegate)backgroundColorDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_backgroundColorDelegate);

  return WeakRetained;
}

- (CGSize)oldContentSize
{
  objc_copyStruct(v4, &self->_oldContentSize, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.height = v3;
  result.width = v2;
  return result;
}

@end