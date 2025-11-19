@interface SPUISearchHeader
+ (id)tokenFromSearchEntity:(id)a3;
+ (unint64_t)committedSearchQueryKind;
+ (void)logDismissalWithReason:(unint64_t)a3;
+ (void)logInvokeWithReason:(unint64_t)a3;
- (BOOL)cancelButtonIsVisible;
- (BOOL)completionResultIsPotentiallyPunchout;
- (BOOL)currentlyPresentingWebEntity;
- (BOOL)isFirstResponder;
- (BOOL)lastQueryKindSupportsOptionKey;
- (BOOL)optOutOfGoButton;
- (BOOL)textFieldShouldReturn;
- (NSString)currentQuery;
- (SPUIHeaderInteractionDelegate)interactionDelegate;
- (SPUISearchHeader)init;
- (SPUISearchHeaderDelegate)delegate;
- (UIResponder)responderForKeyboardInput;
- (UISearchToken)lastSearchToken;
- (double)bottomPadding;
- (double)topPadding;
- (id)_searchTextField:(id)a3 itemProviderForCopyingToken:(id)a4;
- (id)currentQueryContextWithString:(id)a3;
- (id)markedTextArray;
- (unint64_t)getClearTriggerEventForQueryContext:(id)a3;
- (unint64_t)queryId;
- (void)_searchWithSearchEntity:(id)a3 fromSuggestion:(BOOL)a4;
- (void)addInputMethodInformationToQueryContext:(id)a3;
- (void)backButtonPressed;
- (void)beginDictation;
- (void)cancelButtonClicked:(id)a3;
- (void)clearLastSearchedText;
- (void)commitSearch;
- (void)dictationButtonPressed;
- (void)didMoveToWindow;
- (void)enableDictationIfRequired;
- (void)escapeKeyPressed;
- (void)highlightResultAfterUnmarkingText;
- (void)performTestSearchWithQuery:(id)a3 event:(unint64_t)a4 queryKind:(unint64_t)a5;
- (void)performTransition:(int64_t)a3 willBeDisplayed:(BOOL)a4;
- (void)resignKeyboardForProcessState;
- (void)restoreSearchText:(id)a3 searchEntity:(id)a4;
- (void)returnKeyPressed;
- (void)searchForSuggestion:(id)a3 isBuildingQuery:(BOOL)a4;
- (void)setActiveInterfaceOrientation:(int64_t)a3;
- (void)setLegibilitySettings:(id)a3;
- (void)setQueryId:(unint64_t)a3;
- (void)setResponderForKeyboardInput:(id)a3;
- (void)setSearchEntity:(id)a3 fromSuggestion:(BOOL)a4;
- (void)setUseClearTokens:(BOOL)a3;
- (void)switchToSuggestions;
- (void)textDidChange:(id)a3;
- (void)textDidChange:(id)a3 whyQuery:(unint64_t)a4 allowZKW:(BOOL)a5 sourcePreference:(unint64_t)a6 searchEntities:(id)a7 queryKind:(unint64_t)a8;
- (void)textFieldDidBeginEditing;
- (void)textPasteConfigurationSupporting:(id)a3 transformPasteItem:(id)a4;
- (void)tlk_updateForAppearance:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)triggerSearchForUnlock;
- (void)updateDictationButtonEnabledStatus;
- (void)updateSearchFieldModel;
- (void)updateWithCommand:(id)a3;
@end

@implementation SPUISearchHeader

- (SPUISearchHeader)init
{
  v84.receiver = self;
  v84.super_class = SPUISearchHeader;
  v2 = [(SPUISearchHeader *)&v84 init];
  v3 = v2;
  if (v2)
  {
    [(_UINavigationBarTitleView *)v2 setDisallowNavigationBarMinimumTopPadding:1];
    v4 = objc_opt_new();
    [(SPUISearchHeader *)v3 addSubview:v4];
    v5 = objc_opt_new();
    LODWORD(v6) = 1148846080;
    [v5 setContentHuggingPriority:1 forAxis:v6];
    [v5 setDelegate:v3];
    [v5 addTarget:v3 action:sel_textDidChange_ forControlEvents:0x20000];
    LODWORD(v7) = 1144766464;
    [v5 setContentCompressionResistancePriority:0 forAxis:v7];
    if (_UISolariumEnabled())
    {
      v8 = objc_opt_new();
      [(SPUISearchHeader *)v3 setBlurView:v8];

      v9 = [(SPUISearchHeader *)v3 blurView];
      [v4 addSubview:v9];
      v10 = [(SPUISearchHeader *)v3 blurView];
      v11 = [v10 contentView];
      [v11 addSubview:v5];
    }

    else
    {
      v9 = objc_opt_new();
      [v4 addSubview:v9];
      [v9 addSubview:v5];
    }

    [MEMORY[0x277D4C828] constrainViewToContainer:v5];
    v12 = objc_opt_new();
    [v12 setProminence:2];
    v13 = MEMORY[0x277D74300];
    v14 = *MEMORY[0x277D76918];
    v15 = [MEMORY[0x277D75C80] traitCollectionWithPreferredContentSizeCategory:*MEMORY[0x277D76838]];
    v16 = [v13 preferredFontForTextStyle:v14 compatibleWithTraitCollection:v15];
    [v12 setFont:v16];

    v17 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v18 = [v17 localizedStringForKey:@"CANCEL" value:&stru_287C49600 table:0];
    [v12 setTitle:v18];

    [v12 addTarget:v3 action:sel_cancelButtonClicked_];
    LODWORD(v19) = 1148846080;
    [v12 setContentCompressionResistancePriority:0 forAxis:v19];
    LODWORD(v20) = 1144750080;
    [v12 setContentHuggingPriority:0 forAxis:v20];
    [v4 addSubview:v12];
    v21 = [v4 bottomAnchor];
    v22 = [v9 bottomAnchor];
    [(SPUISearchHeader *)v3 bottomPadding];
    v23 = [v21 constraintEqualToAnchor:v22 constant:?];

    LODWORD(v24) = 1132068864;
    [v23 setPriority:v24];
    [v23 setActive:1];
    v83 = v23;
    [(SPUISearchHeader *)v3 setBottomConstraint:v23];
    LODWORD(v25) = 1132068864;
    v26 = [MEMORY[0x277D4C828] alignView:v9 toView:v4 withAttribute:3 priority:v25];
    [(SPUISearchHeader *)v3 setTopConstraint:v26];

    v27 = [MEMORY[0x277D4C828] alignView:v9 toView:v12 withAttribute:10];
    v28 = [MEMORY[0x277D4C828] alignLeadingView:v4 toTrailingView:v9];
    [(SPUISearchHeader *)v3 setLeadingConstraint:v28];

    [(SPUISearchHeader *)v3 searchBarLeadingPadding];
    v30 = v29;
    v31 = [(SPUISearchHeader *)v3 leadingConstraint];
    [v31 setConstant:v30];

    v32 = [MEMORY[0x277D4C828] alignLeadingView:v9 toTrailingView:v12 spacing:11.0];
    LODWORD(v33) = 1148829696;
    v34 = [MEMORY[0x277D4C828] alignLeadingView:v12 toTrailingView:v4 priority:v33];
    [(SPUISearchHeader *)v3 setCancelButtonTrailingConstraint:v34];

    LODWORD(v35) = 1148829696;
    v36 = [MEMORY[0x277D4C828] alignLeadingView:v9 toTrailingView:v4 priority:v35];
    [(SPUISearchHeader *)v3 setSearchFieldTrailingConstraint:v36];

    [(SPUISearchHeader *)v3 searchBarTrailingPadding];
    v38 = v37;
    v39 = [(SPUISearchHeader *)v3 searchFieldTrailingConstraint];
    [v39 setConstant:v38];

    v40 = [(SPUISearchHeader *)v3 searchFieldTrailingConstraint];
    [v40 setActive:0];

    [MEMORY[0x277D4C828] constrainViewHeightContainer:v4];
    v41 = [MEMORY[0x277D4C828] alignView:v4 toView:v3 withAttribute:9];
    v42 = [v4 widthAnchor];
    [MEMORY[0x277D4C818] idealPlatterWidth];
    v43 = [v42 constraintLessThanOrEqualToConstant:?];

    [v43 setActive:1];
    [(SPUISearchHeader *)v3 setWidthConstraint:v43];
    v44 = [v4 widthAnchor];
    v45 = [(SPUISearchHeader *)v3 widthAnchor];
    v46 = [v44 constraintLessThanOrEqualToAnchor:v45 multiplier:1.0];
    [v46 setActive:1];

    [(SPUISearchHeader *)v3 setSearchField:v5];
    [(SPUISearchHeader *)v3 setCancelButton:v12];
    [(SPUISearchHeader *)v3 showCancelButton:0 animated:0];
    v47 = [MEMORY[0x277CCAB98] defaultCenter];
    [v47 addObserver:v3 selector:sel_enableDictationIfRequired name:*MEMORY[0x277D77200] object:0];

    v48 = [MEMORY[0x277CCAB98] defaultCenter];
    [v48 addObserver:v3 selector:sel_enableDictationIfRequired name:*MEMORY[0x277D76B80] object:0];

    [(SPUISearchHeader *)v3 enableDictationIfRequired];
    v49 = [MEMORY[0x277CCAB98] defaultCenter];
    [v49 addObserver:v3 selector:sel_resignKeyboardForProcessState name:*MEMORY[0x277D76660] object:0];

    v50 = [MEMORY[0x277CCAB98] defaultCenter];
    [v50 addObserver:v3 selector:sel_tlk_updateWithCurrentAppearance name:*MEMORY[0x277D764C8] object:0];

    v51 = [(SPUISearchHeader *)v3 searchField];
    [v51 addTarget:v3 action:sel_textFieldShouldReturn forControlEvents:0x80000];

    v52 = [(SPUISearchHeader *)v3 searchField];
    [v52 addTarget:v3 action:sel_textFieldDidBeginEditing forControlEvents:0x10000];

    v53 = [(SPUISearchHeader *)v3 searchField];
    [v53 setAllowsCopyingTokens:1];

    v54 = [(SPUISearchHeader *)v3 searchField];
    [v54 setPasteDelegate:v3];

    [(SPUISearchHeader *)v3 setAccessibilityIgnoresInvertColors:1];
    [(SPUISearchHeader *)v3 setOffersCompletions:1];
    if ([MEMORY[0x277D65D28] enableFloatingWindow])
    {
      [(SPUISearchHeader *)v3 bounds];
      [(SPUISearchHeader *)v3 systemLayoutSizeFittingSize:v55, 1000.0];
      [(_UINavigationBarTitleView *)v3 setHeight:v56];
    }

    else if ((_UISolariumEnabled() & 1) == 0)
    {
      v57 = objc_opt_new();
      [(SPUISearchHeader *)v3 setBlurView:v57];

      v58 = [(SPUISearchHeader *)v3 blurView];
      v59 = [(SPUISearchHeader *)v3 searchField];
      [v4 insertSubview:v58 belowSubview:v59];

      v60 = [(SPUISearchHeader *)v3 blurView];
      [v60 setTranslatesAutoresizingMaskIntoConstraints:0];

      v61 = [(SPUISearchHeader *)v3 blurView];
      v62 = [v61 leadingAnchor];
      v63 = [(SPUISearchHeader *)v3 searchField];
      v64 = [v63 leadingAnchor];
      [v62 constraintEqualToAnchor:v64];
      v65 = v82 = v43;
      [v65 setActive:1];

      v66 = [(SPUISearchHeader *)v3 blurView];
      v67 = [v66 trailingAnchor];
      v68 = [(SPUISearchHeader *)v3 searchField];
      v69 = [v68 trailingAnchor];
      v70 = [v67 constraintEqualToAnchor:v69];
      [v70 setActive:1];

      v71 = [(SPUISearchHeader *)v3 blurView];
      v72 = [v71 topAnchor];
      v73 = [(SPUISearchHeader *)v3 searchField];
      v74 = [v73 topAnchor];
      v75 = [v72 constraintEqualToAnchor:v74];
      [v75 setActive:1];

      v76 = [(SPUISearchHeader *)v3 blurView];
      v77 = [v76 bottomAnchor];
      v78 = [(SPUISearchHeader *)v3 searchField];
      v79 = [v78 bottomAnchor];
      v80 = [v77 constraintEqualToAnchor:v79];
      [v80 setActive:1];

      v43 = v82;
    }
  }

  return v3;
}

- (double)bottomPadding
{
  v3 = [MEMORY[0x277D65D28] bottomSearchFieldEnabled];
  v4 = MEMORY[0x277D65D28];
  if (v3)
  {

    [v4 bottomPaddingToKeyboard];
  }

  else
  {
    v6 = 0.0;
    if (([MEMORY[0x277D65D28] enableFloatingWindow] & 1) == 0)
    {
      v7 = [(SPUISearchHeader *)self searchField];
      if ([v7 needsLandscapeHeight])
      {
        v6 = 7.0;
      }

      else
      {
        v6 = 8.0;
      }
    }

    return v6;
  }

  return result;
}

- (void)enableDictationIfRequired
{
  v3 = [MEMORY[0x277D75678] sharedInstance];
  v4 = [MEMORY[0x277D75428] currentInputModeSupportsDictation];
  v5 = [(SPUISearchHeader *)self searchField];
  v6 = [v5 rightView];
  [v6 setHidden:v4 ^ 1u];

  [(SPUISearchHeader *)self updateDictationButtonEnabledStatus];
}

- (void)updateDictationButtonEnabledStatus
{
  v3 = [MEMORY[0x277D75688] dictationInputModeIsFunctional];
  v5 = [(SPUISearchHeader *)self searchField];
  v4 = [v5 rightView];
  [v4 setEnabled:v3];
}

- (void)didMoveToWindow
{
  v3.receiver = self;
  v3.super_class = SPUISearchHeader;
  [(SPUISearchHeader *)&v3 didMoveToWindow];
  [(SPUISearchHeader *)self tlk_updateWithCurrentAppearance];
}

- (double)topPadding
{
  v3 = [MEMORY[0x277D65D28] enableFloatingWindow];
  result = 0.0;
  if ((v3 & 1) == 0)
  {
    if ([MEMORY[0x277D65D28] bottomSearchFieldEnabled])
    {
      v5 = _UISolariumEnabled() == 0;
      result = 11.0;
      v6 = 0.0;
    }

    else if ([MEMORY[0x277D4C898] isIpad])
    {
      v5 = [MEMORY[0x277D4C898] isLargeIpad] == 0;
      result = 8.0;
      v6 = 4.0;
    }

    else
    {
      v7 = [(SPUISearchHeader *)self searchField];
      v8 = [v7 needsLandscapeHeight];

      v5 = v8 == 0;
      result = 4.0;
      v6 = 7.0;
    }

    if (!v5)
    {
      return v6;
    }
  }

  return result;
}

- (BOOL)currentlyPresentingWebEntity
{
  if ([MEMORY[0x277D65D28] bottomSearchFieldEnabled])
  {
    v3 = [(SPUISearchHeader *)self searchField];
    v4 = [v3 tokenBackgroundColor];
    v5 = [MEMORY[0x277D75348] clearColor];
    if ([v4 isEqual:v5])
    {
      v6 = [(SPUISearchHeader *)self searchField];
      v7 = [v6 tokens];
      v8 = [v7 count] != 0;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v3 = [(SPUISearchHeader *)self searchEntity];
    v4 = [SPUITextField webEntityStringForEntity:v3];
    v8 = [v4 length] != 0;
  }

  return v8;
}

- (NSString)currentQuery
{
  v2 = [(SPUISearchHeader *)self searchField];
  v3 = [v2 searchText];

  return v3;
}

- (id)markedTextArray
{
  v26[3] = *MEMORY[0x277D85DE8];
  v2 = [(SPUISearchHeader *)self searchField];
  v3 = [v2 markedTextRange];

  if (v3)
  {
    v4 = [v2 markedTextRange];
    v5 = [v2 textInRange:v4];

    if ([v5 length])
    {
      v6 = [v2 beginningOfDocument];
      v7 = [v2 markedTextRange];
      v8 = [v7 start];
      v9 = [v2 textRangeFromPosition:v6 toPosition:v8];

      v10 = [v2 textInRange:v9];
      v11 = v10;
      v12 = &stru_287C49600;
      if (v10)
      {
        v13 = v10;
      }

      else
      {
        v13 = &stru_287C49600;
      }

      v14 = v13;

      v15 = [v2 markedTextRange];
      v16 = [v15 end];
      v17 = [v2 positionFromPosition:v16 offset:1];

      if (v17)
      {
        v18 = [v2 endOfDocument];
        v19 = [v2 textRangeFromPosition:v17 toPosition:v18];

        v20 = [v2 textInRange:v19];
        v21 = v20;
        if (v20)
        {
          v22 = v20;
        }

        else
        {
          v22 = &stru_287C49600;
        }

        v12 = v22;
      }

      v26[0] = v14;
      v26[1] = v5;
      v26[2] = v12;
      v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:3];
    }

    else
    {
      v23 = 0;
    }
  }

  else
  {
    v23 = 0;
  }

  v24 = *MEMORY[0x277D85DE8];

  return v23;
}

- (SPUISearchHeaderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)updateSearchFieldModel
{
  v3 = [SPUICompletionStringModel alloc];
  v12 = [(SPUISearchHeader *)self searchField];
  v4 = [v12 text];
  v5 = [(SPUISearchHeader *)self searchField];
  v6 = [v5 tokens];
  v7 = [v6 count] != 0;
  v8 = [(SPUISearchHeader *)self previousQueryID];
  v9 = [(SPUISearchHeader *)self searchField];
  v10 = -[SPUICompletionStringModel initWithTypedString:hasTokens:queryId:hasMarkedText:](v3, "initWithTypedString:hasTokens:queryId:hasMarkedText:", v4, v7, v8, [v9 hasMarkedText]);
  v11 = [(SPUISearchHeader *)self searchField];
  [v11 setSearchFieldModel:v10];
}

- (void)textFieldDidBeginEditing
{
  v3 = [(SPUISearchHeader *)self delegate];
  [v3 didBeginEditing];

  v4 = [(SPUISearchHeader *)self interactionDelegate];
  [v4 didFocusHeader];
}

- (SPUIHeaderInteractionDelegate)interactionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_interactionDelegate);

  return WeakRetained;
}

- (unint64_t)queryId
{
  v2 = [(SPUISearchHeader *)self delegate];
  v3 = [v2 currentQueryId];

  return v3;
}

- (void)clearLastSearchedText
{
  [(SPUISearchHeader *)self setLastSearchText:0];

  [(SPUISearchHeader *)self setLastSearchEntity:0];
}

- (UISearchToken)lastSearchToken
{
  v3 = [(SPUISearchHeader *)self searchEntity];
  v4 = [v3 tokenText];
  if (v4)
  {
    v5 = objc_opt_class();
    v6 = [(SPUISearchHeader *)self searchEntity];
    v7 = [v5 tokenFromSearchEntity:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)setResponderForKeyboardInput:(id)a3
{
  v4 = a3;
  v5 = [(SPUISearchHeader *)self searchField];
  [v5 setResponderForKeyboardInput:v4];
}

- (UIResponder)responderForKeyboardInput
{
  v2 = [(SPUISearchHeader *)self searchField];
  v3 = [v2 responderForKeyboardInput];

  return v3;
}

+ (unint64_t)committedSearchQueryKind
{
  v2 = SPCommittedScreenMatchingBehavior();
  if ((v2 - 2) >= 3)
  {
    return 5;
  }

  else
  {
    return 10 - v2;
  }
}

- (void)backButtonPressed
{
  v2 = [(SPUISearchHeader *)self delegate];
  [v2 backButtonPressed];
}

- (void)returnKeyPressed
{
  v3 = [(SPUISearchHeader *)self searchField];
  if ([v3 optOutOfGoButton])
  {
    v4 = [(SPUISearchHeader *)self textFieldShouldReturn];

    if (v4)
    {
      v5 = MEMORY[0x277D65D40];
      v6 = *(MEMORY[0x277D65D40] + 8);
      if (!v6)
      {
        SPUIInitLogging();
        v6 = *(v5 + 8);
      }

      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_26B837000, v6, OS_LOG_TYPE_DEFAULT, "As typed suggestion hit", buf, 2u);
      }

      return;
    }
  }

  else
  {
  }

  v7 = [(SPUISearchHeader *)self delegate];
  [v7 returnKeyPressed];
}

- (void)highlightResultAfterUnmarkingText
{
  v2 = [(SPUISearchHeader *)self delegate];
  [v2 highlightResultAfterUnmarkingText];
}

- (BOOL)optOutOfGoButton
{
  v2 = [(SPUISearchHeader *)self searchField];
  v3 = [v2 optOutOfGoButton];

  return v3;
}

- (void)setActiveInterfaceOrientation:(int64_t)a3
{
  if (self->_activeInterfaceOrientation != a3)
  {
    self->_activeInterfaceOrientation = a3;
    v6 = [(SPUISearchHeader *)self searchField];
    [v6 setActiveInterfaceOrientation:a3];

    [MEMORY[0x277D4C818] idealPlatterWidthForOrientation:a3];
    v8 = v7;
    v9 = [(SPUISearchHeader *)self widthConstraint];
    [v9 setConstant:v8];

    [(SPUISearchHeader *)self topPadding];
    v11 = v10;
    v12 = [(SPUISearchHeader *)self topConstraint];
    [v12 setConstant:v11];

    [(SPUISearchHeader *)self bottomPadding];
    v14 = v13;
    v15 = [(SPUISearchHeader *)self bottomConstraint];
    [v15 setConstant:v14];

    v16 = [(SPUISearchHeader *)self searchField];
    [v16 invalidateIntrinsicContentSize];

    [(SPUISearchHeader *)self invalidateIntrinsicContentSize];
  }
}

- (void)dictationButtonPressed
{
  v3 = [(SPUISearchHeader *)self delegate];
  [v3 dictationButtonPressed];

  v4 = [(SPUISearchHeader *)self interactionDelegate];
  [v4 didFocusHeader];
}

- (void)addInputMethodInformationToQueryContext:(id)a3
{
  v13 = a3;
  v4 = [(SPUISearchHeader *)self textInputMode];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [v5 primaryLanguage];
    [v13 setKeyboardPrimaryLanguage:v6];

    v7 = [v5 identifier];
    if ([(__CFString *)v7 isEqualToString:@"dictation"])
    {
      v8 = v13;
      v9 = v7;
    }

    else
    {
      v10 = [v5 extension];

      if (!v10)
      {
        v11 = [v5 normalizedIdentifierLevels];
        v12 = [v11 firstObject];
        [v13 setKeyboardLanguage:v12];

        goto LABEL_7;
      }

      v9 = @"custom";
      v8 = v13;
    }

    [v8 setKeyboardLanguage:v9];
LABEL_7:
  }
}

- (void)setQueryId:(unint64_t)a3
{
  v5 = [(SPUISearchHeader *)self delegate];
  v4 = [v5 currentQueryContext];
  [v4 setQueryIdent:a3];
}

- (void)textDidChange:(id)a3
{
  v4 = a3;
  v5 = [(SPUISearchHeader *)self searchField];
  if (([v5 ignoreTokensUpdate] & 1) == 0 && !-[SPUISearchHeader searchTextScheduledForProcessing](self, "searchTextScheduledForProcessing"))
  {
    v6 = [v5 textIncludingTokens];
    v7 = [v6 length];

    if (v7 >= 0x3E9)
    {
      v8 = [v5 textIncludingTokens];
      v9 = [v8 length];
      v10 = [v5 text];
      v11 = v9 - [v10 length];

      v12 = [v5 textualRange];
      if (v11 > 0x3E7)
      {
        [v5 replaceRange:v12 withText:&stru_287C49600];
      }

      else
      {
        v13 = [v5 text];
        v14 = [v13 substringToIndex:1000 - v11];
        [v5 replaceRange:v12 withText:v14];
      }
    }

    v15 = [v5 searchText];
    v16 = [SPUITextField removeDictationCharacterInString:v15];

    if ([v16 length])
    {
      [MEMORY[0x277D65D48] donateSpotlightUsedSignal];
    }

    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __34__SPUISearchHeader_textDidChange___block_invoke;
    v18[3] = &unk_279D06CA0;
    v19 = v16;
    v20 = self;
    v21 = v5;
    v22 = v4;
    v17 = v16;
    dispatch_async(MEMORY[0x277D85CD0], v18);
  }
}

uint64_t __34__SPUISearchHeader_textDidChange___block_invoke(uint64_t a1)
{
  v28[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) lastSearchText];
  if (![v2 isEqualToString:v3])
  {
    goto LABEL_4;
  }

  v4 = [*(a1 + 48) searchEntity];
  v5 = [*(a1 + 40) lastSearchEntity];
  v6 = v5;
  if (v4 != v5)
  {

LABEL_4:
    goto LABEL_5;
  }

  v27 = [*(a1 + 32) length];

  if (v27)
  {
    goto LABEL_26;
  }

LABEL_5:
  [*(a1 + 40) setLastSearchText:*(a1 + 32)];
  v7 = [*(a1 + 48) searchEntity];
  [*(a1 + 40) setLastSearchEntity:v7];

  v8 = *(a1 + 48);
  if (*(a1 + 56) != v8)
  {
    v9 = 0;
LABEL_7:
    v10 = 1;
LABEL_8:
    v11 = *(a1 + 40);
    v12 = [objc_opt_class() asYouTypeSearchQueryKind];
    if (v10)
    {
      [*(a1 + 40) setOffersCompletions:1];
    }

    if (![*(a1 + 40) offersCompletions])
    {
      v12 = 9;
    }

    v13 = [*(a1 + 40) textInputMode];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v15 = [*(a1 + 40) searchField];
      if ([v15 isInDictationMode])
      {
        v16 = 4;
      }

      else
      {
        v16 = 5;
      }
    }

    else
    {
      v16 = 1;
    }

    v17 = [*(a1 + 40) searchField];
    v18 = [v17 searchEntity];

    v19 = [*(a1 + 40) delegate];
    v20 = [v19 currentQueryContext];

    v21 = [*(a1 + 40) previousQueryID];
    v22 = [MEMORY[0x277D65D70] updateQueryContext:v20 withSearchString:*(a1 + 32) showSuggestions:1 view:*(a1 + 56)];

    if (v18)
    {
      v28[0] = v18;
      v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:1];
      [v22 setSearchEntities:v23];
    }

    else
    {
      [v22 setSearchEntities:0];
    }

    [v22 setWhyQuery:v16];
    [v22 setQueryKind:v12];
    [*(a1 + 40) queryContextDidChange:v22 fromPreviousQueryId:v21 allowZKW:1];

    goto LABEL_25;
  }

  v9 = [v8 searchEntity];
  if (!v9)
  {
    goto LABEL_7;
  }

  v24 = [*(a1 + 40) searchEntity];

  if (v9 == v24)
  {
    v10 = 0;
    goto LABEL_8;
  }

  [*(a1 + 40) setSearchEntity:v9 fromSuggestion:0];
LABEL_25:
  [*(a1 + 48) setNeedsLayout];

LABEL_26:
  [*(a1 + 40) updateSearchFieldModel];
  result = [*(a1 + 40) setSearchTextScheduledForProcessing:0];
  v26 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)textDidChange:(id)a3 whyQuery:(unint64_t)a4 allowZKW:(BOOL)a5 sourcePreference:(unint64_t)a6 searchEntities:(id)a7 queryKind:(unint64_t)a8
{
  v26 = a5;
  v13 = a7;
  v14 = a3;
  v15 = [(SPUISearchHeader *)self searchEntity];
  v16 = [SPUITextField webEntityStringForEntity:v15];

  v27 = [SPUITextField removeDictationCharacterInString:v14];

  v17 = [(SPUISearchHeader *)self searchField];
  v18 = [v17 searchText];
  if ([v18 length])
  {
    v19 = [(SPUISearchHeader *)self searchField];
    v20 = [v19 searchText];
  }

  else
  {
    v20 = v27;
  }

  if (v16)
  {
    v21 = v16;
  }

  else
  {
    v21 = v20;
  }

  v22 = [(SPUISearchHeader *)self currentQueryContextWithString:v21];
  [v22 setSearchEntities:v13];

  [v22 setQueryKind:a8];
  if ([v27 length])
  {
    v23 = a4;
  }

  else
  {
    v23 = 9;
  }

  [v22 setWhyQuery:v23];
  v24 = [(SPUISearchHeader *)self currentQuery];
  v25 = [v24 isEqualToString:v20];

  if ((v25 & 1) == 0)
  {
    [v22 setSearchString:v20];
  }

  if (a6 - 1 <= 1)
  {
    [v22 setPromoteParsecResults:1];
  }

  [(SPUISearchHeader *)self queryContextDidChange:v22 fromPreviousQueryId:[(SPUISearchHeader *)self previousQueryID] allowZKW:v26];
}

- (void)cancelButtonClicked:(id)a3
{
  v3 = [(SPUISearchHeader *)self delegate];
  [v3 cancelButtonPressed];
}

- (void)escapeKeyPressed
{
  v2 = [(SPUISearchHeader *)self delegate];
  [v2 cancelButtonPressed];
}

- (BOOL)textFieldShouldReturn
{
  v3 = [(SPUISearchHeader *)self searchField];
  v4 = [v3 returnKeyType];

  if (v4 == 1)
  {
    [(SPUISearchHeader *)self setIsReturnKeyPressedInGoMode:1];
    v5 = [(SPUISearchHeader *)self delegate];
    [v5 returnKeyPressed];

    [(SPUISearchHeader *)self setIsReturnKeyPressedInGoMode:0];
  }

  else
  {
    v6 = objc_alloc(MEMORY[0x277D4C330]);
    v7 = [(SPUISearchHeader *)self searchField];
    v8 = [v7 text];
    v9 = [v6 initWithInput:v8 endpoint:6];

    v10 = +[SPUIFeedbackManager feedbackListener];
    [v10 reportFeedback:v9 queryId:{-[SPUISearchHeader queryId](self, "queryId")}];

    if (([MEMORY[0x277D75658] isInHardwareKeyboardMode] & 1) == 0)
    {
      [(SPUISearchHeader *)self unfocusSearchFieldWithReason:2];
    }

    [(SPUISearchHeader *)self commitSearch];
  }

  return 1;
}

- (void)triggerSearchForUnlock
{
  v4 = [(SPUISearchHeader *)self searchField];
  v3 = [v4 textIncludingTokens];
  -[SPUISearchHeader textDidChange:whyQuery:allowZKW:queryKind:](self, "textDidChange:whyQuery:allowZKW:queryKind:", v3, 17, 1, [objc_opt_class() asYouTypeSearchQueryKind]);
}

- (BOOL)lastQueryKindSupportsOptionKey
{
  v2 = [(SPUISearchHeader *)self delegate];
  v3 = [v2 currentQueryContext];
  v4 = [v3 queryKind];
  v5 = v4 == [objc_opt_class() asYouTypeSearchQueryKind];

  return v5;
}

- (void)commitSearch
{
  if (!self->_searchEntity)
  {
    v5 = [(SPUISearchHeader *)self searchField];
    v4 = [v5 textIncludingTokens];
    -[SPUISearchHeader textDidChange:whyQuery:allowZKW:queryKind:](self, "textDidChange:whyQuery:allowZKW:queryKind:", v4, 23, 1, [objc_opt_class() committedSearchQueryKind]);
  }
}

- (void)switchToSuggestions
{
  v3 = [objc_opt_class() asYouTypeSearchQueryKind];
  if (![(SPUISearchHeader *)self offersCompletions])
  {
    v3 = 9;
  }

  [(SPUISearchHeader *)self setSearchEntity:0];
  v4 = [(SPUISearchHeader *)self searchField];
  v5 = [v4 text];
  [(SPUISearchHeader *)self textDidChange:v5 whyQuery:1 allowZKW:1 queryKind:v3];

  [(SPUISearchHeader *)self setLastSearchEntity:0];
  v7 = [(SPUISearchHeader *)self searchField];
  v6 = [v7 searchText];
  [(SPUISearchHeader *)self setLastSearchText:v6];
}

- (id)currentQueryContextWithString:(id)a3
{
  v4 = MEMORY[0x277D65898];
  v5 = a3;
  v6 = [[v4 alloc] initWithSearchString:v5];
  [v6 setDeviceAuthenticationState:{objc_msgSend(MEMORY[0x277D65D88], "deviceAuthenticationStateForView:", self)}];
  v7 = [(SPUISearchHeader *)self markedTextArray];
  [v6 setMarkedTextArray:v7];

  v8 = MEMORY[0x277CC34D8];
  v9 = [MEMORY[0x277CC34D8] emptySuggestion];
  v10 = [v8 updatedSuggestionWithCurrentSuggestion:v9 userString:v5 tokens:MEMORY[0x277CBEBF8]];

  [v6 setBackingSearchModel:v10];
  [(SPUISearchHeader *)self addInputMethodInformationToQueryContext:v6];
  [(SPUISearchHeader *)self tlks_scale];
  [v6 setScaleFactor:?];

  return v6;
}

+ (id)tokenFromSearchEntity:(id)a3
{
  v3 = a3;
  v4 = [v3 symbolName];
  if (v4)
  {
    v5 = [MEMORY[0x277D4C890] uiImageWithSymbolName:v4];
  }

  else
  {
    v5 = 0;
  }

  v6 = MEMORY[0x277D75A00];
  v7 = [v3 tokenText];
  v8 = [v6 tokenWithIcon:v5 text:v7];

  [v8 setRepresentedObject:v3];

  return v8;
}

- (void)restoreSearchText:(id)a3 searchEntity:(id)a4
{
  v11 = a3;
  v6 = a4;
  [(SPUISearchHeader *)self setSearchEntity:v6];
  [(SPUISearchHeader *)self setLastSearchText:v11];
  v7 = [(SPUISearchHeader *)self searchField];
  v8 = v7;
  if (v6)
  {
    v9 = [v6 searchString];
    [v8 updateTextRange:v9];

    v8 = [(SPUISearchHeader *)self searchField];
    v10 = [SPUISearchHeader tokenFromSearchEntity:v6];
    [v8 updateToken:v10];
  }

  else
  {
    [v7 setText:v11];
  }
}

- (void)setSearchEntity:(id)a3 fromSuggestion:(BOOL)a4
{
  v6 = a3;
  searchEntity = self->_searchEntity;
  if (searchEntity != v6)
  {
    v17 = v6;
    if (([(SPSearchEntity *)searchEntity isEqual:v6]& 1) == 0)
    {
      objc_storeStrong(&self->_searchEntity, a3);
      if (v17)
      {
        v8 = [(SPSearchEntity *)v17 tokenText];
        if (!v8)
        {
          v11 = [(SPUISearchHeader *)self searchField];
          v13 = [(SPSearchEntity *)v17 searchString];
          [v11 updateTextRange:v13];
LABEL_10:

          goto LABEL_11;
        }

        [(SPUISearchHeader *)self setOffersCompletions:0];
        v9 = [(SPUISearchHeader *)self searchField];
        v10 = [v9 tokens];
        v11 = [v10 firstObject];

        v12 = [v11 representedObject];
        LOBYTE(v10) = [v12 isEqual:v17];

        if ((v10 & 1) == 0)
        {
          v13 = [objc_opt_class() tokenFromSearchEntity:v17];
          if (v13)
          {
            v14 = [(SPUISearchHeader *)self searchField];
            v15 = [(SPSearchEntity *)v17 searchString];
            [v14 updateTextRange:v15];

            v16 = [(SPUISearchHeader *)self searchField];
            [v16 updateToken:v13];
          }

          goto LABEL_10;
        }
      }

      else
      {
        v8 = [(SPUISearchHeader *)self currentQuery];
        v11 = [(SPUISearchHeader *)self searchField];
        [v11 setText:v8];
      }

LABEL_11:
    }
  }

  MEMORY[0x2821F96F8]();
}

- (void)_searchWithSearchEntity:(id)a3 fromSuggestion:(BOOL)a4
{
  if (a4)
  {
    v5 = 8;
  }

  else
  {
    v5 = 1;
  }

  v7 = [(SPUISearchHeader *)self searchField];
  v6 = [v7 textIncludingTokens];
  [(SPUISearchHeader *)self textDidChange:v6 whyQuery:v5 allowZKW:1 queryKind:9];
}

- (id)_searchTextField:(id)a3 itemProviderForCopyingToken:(id)a4
{
  v4 = [a4 representedObject];
  v5 = [objc_alloc(MEMORY[0x277CCAA88]) initWithItem:v4 typeIdentifier:@"com.apple.spotlight.searchEntity"];
  v6 = [v4 tokenText];
  [v5 registerObject:v6 visibility:0];

  return v5;
}

- (void)textPasteConfigurationSupporting:(id)a3 transformPasteItem:(id)a4
{
  v5 = a4;
  v6 = [v5 itemProvider];
  if ([v6 hasItemConformingToTypeIdentifier:@"com.apple.spotlight.searchEntity"])
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __72__SPUISearchHeader_textPasteConfigurationSupporting_transformPasteItem___block_invoke;
    v8[3] = &unk_279D06CF0;
    v8[4] = self;
    v9 = v5;
    v7 = [v6 loadDataRepresentationForTypeIdentifier:@"com.apple.spotlight.searchEntity" completionHandler:v8];
  }

  else
  {
    [v5 setDefaultResult];
  }
}

void __72__SPUISearchHeader_textPasteConfigurationSupporting_transformPasteItem___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x277D4C898];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __72__SPUISearchHeader_textPasteConfigurationSupporting_transformPasteItem___block_invoke_2;
  v8[3] = &unk_279D06CC8;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v9 = v3;
  v10 = v5;
  v11 = v6;
  v7 = v3;
  [v4 dispatchMainIfNecessary:v8];
}

void __72__SPUISearchHeader_textPasteConfigurationSupporting_transformPasteItem___block_invoke_2(uint64_t a1)
{
  v7 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:*(a1 + 32) error:0];
  v2 = [*(a1 + 40) searchField];
  v3 = *(a1 + 40);
  v4 = [objc_opt_class() tokenFromSearchEntity:v7];
  v5 = [*(a1 + 40) searchField];
  v6 = [v5 tokens];
  [v2 insertToken:v4 atIndex:{objc_msgSend(v6, "count")}];

  [*(a1 + 40) setLastSearchEntity:v7];
  [*(a1 + 40) commitSearch];
  [*(a1 + 48) setNoResult];
}

- (void)beginDictation
{
  v3 = [(SPUISearchHeader *)self searchField];
  [v3 updateRightView];

  v4 = [(SPUISearchHeader *)self searchField];
  v5 = [v4 isFirstResponder];

  if ((v5 & 1) == 0)
  {
    v6 = MEMORY[0x277D65D40];
    v7 = *(MEMORY[0x277D65D40] + 32);
    if (!v7)
    {
      SPUIInitLogging();
      v7 = *(v6 + 32);
    }

    if (os_signpost_enabled(v7))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_26B837000, v7, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "firstResponder", "", buf, 2u);
    }

    [(SPUISearchHeader *)self setInvokeReason:2];
  }

  v8 = [MEMORY[0x277D75688] sharedInputModeController];
  v9 = [(SPUISearchHeader *)self searchField];
  v10 = [MEMORY[0x277D75430] dictationInputModeOptionsWithInvocationSource:@"UIDictationInputModeInvocationSourceMicButtonMicButtonInFirstResponderSearchBar"];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __34__SPUISearchHeader_beginDictation__block_invoke;
  v11[3] = &unk_279D06C78;
  v11[4] = self;
  [v8 toggleDictationForResponder:v9 withOption:v10 firstResponderSetupCompletion:v11];
}

void __34__SPUISearchHeader_beginDictation__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) searchField];
  v3 = [v2 isFirstResponder];

  if (v3)
  {
    v4 = MEMORY[0x277D65D40];
    v5 = *(MEMORY[0x277D65D40] + 32);
    if (!v5)
    {
      SPUIInitLogging();
      v5 = *(v4 + 32);
    }

    if (os_signpost_enabled(v5))
    {
      *v14 = 0;
      _os_signpost_emit_with_name_impl(&dword_26B837000, v5, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "firstResponder", " enableTelemetry=YES ", v14, 2u);
    }

    v6 = [*(a1 + 32) searchField];
    v7 = [v6 tokens];
    if ([v7 count])
    {
    }

    else
    {
      v10 = [*(a1 + 32) searchField];
      v11 = [v10 text];
      v12 = [v11 length];

      if (!v12)
      {
        return;
      }
    }

    v13 = [*(a1 + 32) searchField];
    [v13 selectAll:0];
  }

  else
  {
    v8 = MEMORY[0x277D65D40];
    v9 = *(MEMORY[0x277D65D40] + 16);
    if (!v9)
    {
      SPUIInitLogging();
      v9 = *(v8 + 16);
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __34__SPUISearchHeader_beginDictation__block_invoke_cold_1(v9);
    }
  }
}

void __75__SPUISearchHeader_focusSearchFieldAndBeginDictation_selectAll_withReason___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277D756A8] activeKeyboardSceneDelegate];
  [v2 _beginDisablingAnimations];

  v3 = [*(a1 + 32) searchField];
  *(*(*(a1 + 40) + 8) + 24) = [v3 becomeFirstResponder];

  v4 = [MEMORY[0x277D756A8] activeKeyboardSceneDelegate];
  [v4 _endDisablingAnimations];
}

+ (void)logInvokeWithReason:(unint64_t)a3
{
  v9 = *MEMORY[0x277D85DE8];
  if (a3 > 5)
  {
    v3 = 0;
  }

  else
  {
    v3 = off_279D06D88[a3];
  }

  v4 = MEMORY[0x277D65D40];
  v5 = *(MEMORY[0x277D65D40] + 16);
  if (!v5)
  {
    SPUIInitLogging();
    v5 = *(v4 + 16);
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v3;
    _os_log_impl(&dword_26B837000, v5, OS_LOG_TYPE_DEFAULT, "invoke reason %@", &v7, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

+ (void)logDismissalWithReason:(unint64_t)a3
{
  v9 = *MEMORY[0x277D85DE8];
  if (a3 > 5)
  {
    v3 = 0;
  }

  else
  {
    v3 = off_279D06DB8[a3];
  }

  v4 = MEMORY[0x277D65D40];
  v5 = *(MEMORY[0x277D65D40] + 16);
  if (!v5)
  {
    SPUIInitLogging();
    v5 = *(v4 + 16);
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v3;
    _os_log_impl(&dword_26B837000, v5, OS_LOG_TYPE_DEFAULT, "dismissal reason %@", &v7, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (BOOL)isFirstResponder
{
  v2 = [(SPUISearchHeader *)self searchField];
  v3 = [v2 isFirstResponder];

  return v3;
}

- (void)resignKeyboardForProcessState
{
  if ([MEMORY[0x277D65D28] enableFloatingWindow])
  {

    [(SPUISearchHeader *)self unfocusSearchFieldWithReason:4];
  }
}

- (void)updateWithCommand:(id)a3
{
  v24[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  [(SPUISearchHeader *)self setLastSearchText:0];
  [(SPUISearchHeader *)self setLastSearchEntity:0];
  [(SPUISearchHeader *)self setUseClearTokens:0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [objc_opt_class() committedSearchQueryKind];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v5 queryKind];
      v8 = objc_opt_class();
      if (v7 == 1)
      {
        v9 = [v8 asYouTypeSearchQueryKind];
      }

      else
      {
        v9 = [v8 committedSearchQueryKind];
      }

      v6 = v9;
    }

    v16 = [v5 searchString];
    v17 = [v16 length];

    if (v17)
    {
      v18 = [(SPUISearchHeader *)self searchField];
      [v18 updateToken:0];

      v19 = [v5 searchString];
      v20 = [(SPUISearchHeader *)self searchField];
      [v20 setText:v19];

      v21 = [v5 searchString];
      [(SPUISearchHeader *)self setLastSearchText:v21];

      v22 = [v5 searchString];
      [(SPUISearchHeader *)self textDidChange:v22 whyQuery:8 allowZKW:1 sourcePreference:2 searchEntities:0 queryKind:v6];
    }
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v10 = [v5 person];
      v11 = [v10 contactIdentifier];

      if (v11)
      {
        v12 = MEMORY[0x277D65890];
        v13 = [v10 contactIdentifier];
        v11 = [v12 searchEntityWithContactIdentifier:v13 fromSuggestion:0];
      }

      [(SPUISearchHeader *)self setSearchEntity:v11 fromSuggestion:1];
      [(SPUISearchHeader *)self _searchWithSearchEntity:v11 fromSuggestion:1];
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_16;
      }

      v14 = MEMORY[0x277D65D70];
      v24[0] = v4;
      v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:1];
      v5 = [v14 queryContextWithPerformEntityQueryCommands:v15 view:self];

      [(SPUISearchHeader *)self queryContextDidChange:v5 fromPreviousQueryId:[(SPUISearchHeader *)self queryId] allowZKW:1];
    }
  }

LABEL_16:
  if (([MEMORY[0x277D75658] isInHardwareKeyboardMode] & 1) == 0)
  {
    [(SPUISearchHeader *)self unfocusSearchFieldWithReason:3];
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (unint64_t)getClearTriggerEventForQueryContext:(id)a3
{
  v4 = a3;
  v5 = [(SPUISearchHeader *)self willClear];
  [(SPUISearchHeader *)self setWillClear:0];
  v6 = [(SPUISearchHeader *)self textWasCut];
  [(SPUISearchHeader *)self setTextWasCut:0];
  v7 = [v4 searchEntities];
  if (v7)
  {

    v8 = 0;
  }

  else
  {
    v9 = [v4 searchString];
    v10 = [v9 length];
    v11 = v10 == 0;
    v12 = v10 != 0;

    v13 = v12 || v5 || v6;
    if (v12 || v5)
    {
      v8 = v11;
    }

    else
    {
      v8 = 2;
    }

    if (!v13)
    {
      if ([v4 whyQuery] == 1)
      {
        v8 = 3;
      }

      else
      {
        v8 = 0;
      }
    }
  }

  return v8;
}

- (void)setUseClearTokens:(BOOL)a3
{
  if (self->_useClearTokens != a3)
  {
    self->_useClearTokens = a3;
    [(SPUISearchHeader *)self tlk_updateWithCurrentAppearance];
  }
}

- (void)setLegibilitySettings:(id)a3
{
  objc_storeStrong(&self->_legibilitySettings, a3);

  [(SPUISearchHeader *)self tlk_updateWithCurrentAppearance];
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SPUISearchHeader;
  [(SPUISearchHeader *)&v9 traitCollectionDidChange:v4];
  v5 = [(SPUISearchHeader *)self traitCollection];
  if ([v5 hasDifferentColorAppearanceComparedToTraitCollection:v4])
  {

LABEL_4:
    [(SPUISearchHeader *)self tlk_updateWithCurrentAppearance];
    goto LABEL_5;
  }

  v6 = [(SPUISearchHeader *)self traitCollection];
  v7 = [v6 _vibrancy];
  v8 = [v4 _vibrancy];

  if (v7 != v8)
  {
    goto LABEL_4;
  }

LABEL_5:
}

- (void)tlk_updateForAppearance:(id)a3
{
  v4 = a3;
  v29.receiver = self;
  v29.super_class = SPUISearchHeader;
  [(SPUISearchHeader *)&v29 tlk_updateForAppearance:v4];
  v5 = _UISolariumEnabled();
  v6 = [(SPUISearchHeader *)self searchField];
  v7 = v6;
  if (v5)
  {
    [v6 bounds];
    v9 = v8 * 0.5;
  }

  else
  {
    [v6 backgroundCornerRadius];
    v9 = v10;
  }

  v11 = [(SPUISearchHeader *)self blurView];
  [v11 _setContinuousCornerRadius:v9];

  if ([(SPUISearchHeader *)self useClearTokens])
  {
    [MEMORY[0x277D75348] clearColor];
  }

  else
  {
    [v4 platterColor];
  }
  v12 = ;
  v13 = [(SPUISearchHeader *)self searchField];
  [v13 setTokenBackgroundColor:v12];

  v14 = [(SPUISearchHeader *)self useClearTokens];
  if (v14)
  {
    v15 = [MEMORY[0x277D75348] labelColor];
  }

  else
  {
    v15 = 0;
  }

  v16 = [(SPUISearchHeader *)self searchField];
  [v16 _setTokenForegroundColor:v15];

  if (v14)
  {
  }

  v17 = [v4 isDark];
  IsReduceTransparencyEnabled = UIAccessibilityIsReduceTransparencyEnabled();
  v19 = [(SPUISearchHeader *)self searchField];
  [v4 overrideAppearanceForView:v19];

  if (IsReduceTransparencyEnabled)
  {
    v20 = [(SPUISearchHeader *)self legibilitySettings];
    v21 = [v20 contentColor];

    v28 = 0.0;
    [v21 getHue:0 saturation:0 brightness:&v28 alpha:0];
    v22 = [MEMORY[0x277D75348] colorWithWhite:dbl_26B867100[v28 > 0.4] alpha:0.3];
    v23 = [(SPUISearchHeader *)self searchField];
    v24 = [v23 tintView];
    [v24 setBackgroundColor:v22];

    v25 = [(SPUISearchHeader *)self searchField];
    v26 = [v25 tintView];
    [v26 setAlpha:1.0];
  }

  else
  {
    if (v17)
    {
      v27 = 0.1;
    }

    else
    {
      v27 = 0.04;
    }

    v21 = [(SPUISearchHeader *)self searchField];
    v25 = [v21 tintView];
    [v25 setAlpha:v27];
  }
}

- (BOOL)cancelButtonIsVisible
{
  v2 = [(SPUISearchHeader *)self cancelButtonTrailingConstraint];
  v3 = [v2 isActive];

  return v3;
}

uint64_t __46__SPUISearchHeader_showCancelButton_animated___block_invoke(uint64_t a1, double a2)
{
  LOBYTE(a2) = *(a1 + 40);
  v3 = *&a2;
  v4 = [*(a1 + 32) cancelButton];
  [v4 setAlpha:v3];

  v5 = *(a1 + 32);

  return [v5 layoutIfNeeded];
}

- (void)searchForSuggestion:(id)a3 isBuildingQuery:(BOOL)a4
{
  v4 = a4;
  v20 = a3;
  if ([v20 type] == 17)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (v4)
  {
    v7 = 25;
  }

  else
  {
    v7 = 8;
  }

  v8 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v10 = 0;
    if (!v4)
    {
      goto LABEL_9;
    }

LABEL_13:
    v12 = [(SPUISearchHeader *)self searchField];
    [v12 becomeFirstResponder];

    v11 = @" ";
    goto LABEL_14;
  }

  v10 = [v20 searchEntities];
  v6 = 0;
  v7 = 22;
  if (v4)
  {
    goto LABEL_13;
  }

LABEL_9:
  if (([MEMORY[0x277D75658] isInHardwareKeyboardMode] & 1) == 0)
  {
    [(SPUISearchHeader *)self unfocusSearchFieldWithReason:3];
  }

  v11 = &stru_287C49600;
LABEL_14:
  v13 = [(SPUISearchHeader *)self searchField];
  [v13 updateToken:0];

  v14 = [v20 title];
  v15 = [v14 text];
  v16 = [v15 stringByAppendingString:v11];

  v17 = [(SPUISearchHeader *)self searchField];
  [v17 setText:v16];

  v18 = objc_opt_class();
  if (v4)
  {
    v19 = [v18 asYouTypeSearchQueryKind];
  }

  else
  {
    v19 = [v18 committedSearchQueryKind];
  }

  [(SPUISearchHeader *)self textDidChange:v16 whyQuery:v7 allowZKW:1 sourcePreference:v6 searchEntities:v10 queryKind:v19];
}

- (void)performTestSearchWithQuery:(id)a3 event:(unint64_t)a4 queryKind:(unint64_t)a5
{
  v8 = a3;
  [(SPUISearchHeader *)self textDidChange:v8 whyQuery:a4 allowZKW:1 sourcePreference:0 searchEntities:0 queryKind:a5];
  v9 = [(SPUISearchHeader *)self searchField];
  [v9 setText:v8];
}

- (BOOL)completionResultIsPotentiallyPunchout
{
  v2 = [(SPUISearchHeader *)self searchField];
  v3 = [v2 completionResultIsPotentiallyPunchout];

  return v3;
}

- (void)performTransition:(int64_t)a3 willBeDisplayed:(BOOL)a4
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __54__SPUISearchHeader_performTransition_willBeDisplayed___block_invoke;
  v4[3] = &unk_279D06D68;
  v5 = a4;
  v4[4] = self;
  v4[5] = a3;
  [MEMORY[0x277D75D18] performWithoutAnimation:v4];
}

id __54__SPUISearchHeader_performTransition_willBeDisplayed___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 48);
  v4.receiver = *(a1 + 32);
  v4.super_class = SPUISearchHeader;
  return objc_msgSendSuper2(&v4, sel_performTransition_willBeDisplayed_, v1, v2);
}

@end