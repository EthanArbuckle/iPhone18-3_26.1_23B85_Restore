@interface SPUISearchHeader
+ (id)tokenFromSearchEntity:(id)entity;
+ (unint64_t)committedSearchQueryKind;
+ (void)logDismissalWithReason:(unint64_t)reason;
+ (void)logInvokeWithReason:(unint64_t)reason;
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
- (id)_searchTextField:(id)field itemProviderForCopyingToken:(id)token;
- (id)currentQueryContextWithString:(id)string;
- (id)markedTextArray;
- (unint64_t)getClearTriggerEventForQueryContext:(id)context;
- (unint64_t)queryId;
- (void)_searchWithSearchEntity:(id)entity fromSuggestion:(BOOL)suggestion;
- (void)addInputMethodInformationToQueryContext:(id)context;
- (void)backButtonPressed;
- (void)beginDictation;
- (void)cancelButtonClicked:(id)clicked;
- (void)clearLastSearchedText;
- (void)commitSearch;
- (void)dictationButtonPressed;
- (void)didMoveToWindow;
- (void)enableDictationIfRequired;
- (void)escapeKeyPressed;
- (void)highlightResultAfterUnmarkingText;
- (void)performTestSearchWithQuery:(id)query event:(unint64_t)event queryKind:(unint64_t)kind;
- (void)performTransition:(int64_t)transition willBeDisplayed:(BOOL)displayed;
- (void)resignKeyboardForProcessState;
- (void)restoreSearchText:(id)text searchEntity:(id)entity;
- (void)returnKeyPressed;
- (void)searchForSuggestion:(id)suggestion isBuildingQuery:(BOOL)query;
- (void)setActiveInterfaceOrientation:(int64_t)orientation;
- (void)setLegibilitySettings:(id)settings;
- (void)setQueryId:(unint64_t)id;
- (void)setResponderForKeyboardInput:(id)input;
- (void)setSearchEntity:(id)entity fromSuggestion:(BOOL)suggestion;
- (void)setUseClearTokens:(BOOL)tokens;
- (void)switchToSuggestions;
- (void)textDidChange:(id)change;
- (void)textDidChange:(id)change whyQuery:(unint64_t)query allowZKW:(BOOL)w sourcePreference:(unint64_t)preference searchEntities:(id)entities queryKind:(unint64_t)kind;
- (void)textFieldDidBeginEditing;
- (void)textPasteConfigurationSupporting:(id)supporting transformPasteItem:(id)item;
- (void)tlk_updateForAppearance:(id)appearance;
- (void)traitCollectionDidChange:(id)change;
- (void)triggerSearchForUnlock;
- (void)updateDictationButtonEnabledStatus;
- (void)updateSearchFieldModel;
- (void)updateWithCommand:(id)command;
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

      blurView = [(SPUISearchHeader *)v3 blurView];
      [v4 addSubview:blurView];
      blurView2 = [(SPUISearchHeader *)v3 blurView];
      contentView = [blurView2 contentView];
      [contentView addSubview:v5];
    }

    else
    {
      blurView = objc_opt_new();
      [v4 addSubview:blurView];
      [blurView addSubview:v5];
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
    bottomAnchor = [v4 bottomAnchor];
    bottomAnchor2 = [blurView bottomAnchor];
    [(SPUISearchHeader *)v3 bottomPadding];
    v23 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:?];

    LODWORD(v24) = 1132068864;
    [v23 setPriority:v24];
    [v23 setActive:1];
    v83 = v23;
    [(SPUISearchHeader *)v3 setBottomConstraint:v23];
    LODWORD(v25) = 1132068864;
    v26 = [MEMORY[0x277D4C828] alignView:blurView toView:v4 withAttribute:3 priority:v25];
    [(SPUISearchHeader *)v3 setTopConstraint:v26];

    v27 = [MEMORY[0x277D4C828] alignView:blurView toView:v12 withAttribute:10];
    v28 = [MEMORY[0x277D4C828] alignLeadingView:v4 toTrailingView:blurView];
    [(SPUISearchHeader *)v3 setLeadingConstraint:v28];

    [(SPUISearchHeader *)v3 searchBarLeadingPadding];
    v30 = v29;
    leadingConstraint = [(SPUISearchHeader *)v3 leadingConstraint];
    [leadingConstraint setConstant:v30];

    v32 = [MEMORY[0x277D4C828] alignLeadingView:blurView toTrailingView:v12 spacing:11.0];
    LODWORD(v33) = 1148829696;
    v34 = [MEMORY[0x277D4C828] alignLeadingView:v12 toTrailingView:v4 priority:v33];
    [(SPUISearchHeader *)v3 setCancelButtonTrailingConstraint:v34];

    LODWORD(v35) = 1148829696;
    v36 = [MEMORY[0x277D4C828] alignLeadingView:blurView toTrailingView:v4 priority:v35];
    [(SPUISearchHeader *)v3 setSearchFieldTrailingConstraint:v36];

    [(SPUISearchHeader *)v3 searchBarTrailingPadding];
    v38 = v37;
    searchFieldTrailingConstraint = [(SPUISearchHeader *)v3 searchFieldTrailingConstraint];
    [searchFieldTrailingConstraint setConstant:v38];

    searchFieldTrailingConstraint2 = [(SPUISearchHeader *)v3 searchFieldTrailingConstraint];
    [searchFieldTrailingConstraint2 setActive:0];

    [MEMORY[0x277D4C828] constrainViewHeightContainer:v4];
    v41 = [MEMORY[0x277D4C828] alignView:v4 toView:v3 withAttribute:9];
    widthAnchor = [v4 widthAnchor];
    [MEMORY[0x277D4C818] idealPlatterWidth];
    v43 = [widthAnchor constraintLessThanOrEqualToConstant:?];

    [v43 setActive:1];
    [(SPUISearchHeader *)v3 setWidthConstraint:v43];
    widthAnchor2 = [v4 widthAnchor];
    widthAnchor3 = [(SPUISearchHeader *)v3 widthAnchor];
    v46 = [widthAnchor2 constraintLessThanOrEqualToAnchor:widthAnchor3 multiplier:1.0];
    [v46 setActive:1];

    [(SPUISearchHeader *)v3 setSearchField:v5];
    [(SPUISearchHeader *)v3 setCancelButton:v12];
    [(SPUISearchHeader *)v3 showCancelButton:0 animated:0];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v3 selector:sel_enableDictationIfRequired name:*MEMORY[0x277D77200] object:0];

    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 addObserver:v3 selector:sel_enableDictationIfRequired name:*MEMORY[0x277D76B80] object:0];

    [(SPUISearchHeader *)v3 enableDictationIfRequired];
    defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter3 addObserver:v3 selector:sel_resignKeyboardForProcessState name:*MEMORY[0x277D76660] object:0];

    defaultCenter4 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter4 addObserver:v3 selector:sel_tlk_updateWithCurrentAppearance name:*MEMORY[0x277D764C8] object:0];

    searchField = [(SPUISearchHeader *)v3 searchField];
    [searchField addTarget:v3 action:sel_textFieldShouldReturn forControlEvents:0x80000];

    searchField2 = [(SPUISearchHeader *)v3 searchField];
    [searchField2 addTarget:v3 action:sel_textFieldDidBeginEditing forControlEvents:0x10000];

    searchField3 = [(SPUISearchHeader *)v3 searchField];
    [searchField3 setAllowsCopyingTokens:1];

    searchField4 = [(SPUISearchHeader *)v3 searchField];
    [searchField4 setPasteDelegate:v3];

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

      blurView3 = [(SPUISearchHeader *)v3 blurView];
      searchField5 = [(SPUISearchHeader *)v3 searchField];
      [v4 insertSubview:blurView3 belowSubview:searchField5];

      blurView4 = [(SPUISearchHeader *)v3 blurView];
      [blurView4 setTranslatesAutoresizingMaskIntoConstraints:0];

      blurView5 = [(SPUISearchHeader *)v3 blurView];
      leadingAnchor = [blurView5 leadingAnchor];
      searchField6 = [(SPUISearchHeader *)v3 searchField];
      leadingAnchor2 = [searchField6 leadingAnchor];
      [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
      v65 = v82 = v43;
      [v65 setActive:1];

      blurView6 = [(SPUISearchHeader *)v3 blurView];
      trailingAnchor = [blurView6 trailingAnchor];
      searchField7 = [(SPUISearchHeader *)v3 searchField];
      trailingAnchor2 = [searchField7 trailingAnchor];
      v70 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
      [v70 setActive:1];

      blurView7 = [(SPUISearchHeader *)v3 blurView];
      topAnchor = [blurView7 topAnchor];
      searchField8 = [(SPUISearchHeader *)v3 searchField];
      topAnchor2 = [searchField8 topAnchor];
      v75 = [topAnchor constraintEqualToAnchor:topAnchor2];
      [v75 setActive:1];

      blurView8 = [(SPUISearchHeader *)v3 blurView];
      bottomAnchor3 = [blurView8 bottomAnchor];
      searchField9 = [(SPUISearchHeader *)v3 searchField];
      bottomAnchor4 = [searchField9 bottomAnchor];
      v80 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
      [v80 setActive:1];

      v43 = v82;
    }
  }

  return v3;
}

- (double)bottomPadding
{
  bottomSearchFieldEnabled = [MEMORY[0x277D65D28] bottomSearchFieldEnabled];
  v4 = MEMORY[0x277D65D28];
  if (bottomSearchFieldEnabled)
  {

    [v4 bottomPaddingToKeyboard];
  }

  else
  {
    v6 = 0.0;
    if (([MEMORY[0x277D65D28] enableFloatingWindow] & 1) == 0)
    {
      searchField = [(SPUISearchHeader *)self searchField];
      if ([searchField needsLandscapeHeight])
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
  mEMORY[0x277D75678] = [MEMORY[0x277D75678] sharedInstance];
  currentInputModeSupportsDictation = [MEMORY[0x277D75428] currentInputModeSupportsDictation];
  searchField = [(SPUISearchHeader *)self searchField];
  rightView = [searchField rightView];
  [rightView setHidden:currentInputModeSupportsDictation ^ 1u];

  [(SPUISearchHeader *)self updateDictationButtonEnabledStatus];
}

- (void)updateDictationButtonEnabledStatus
{
  dictationInputModeIsFunctional = [MEMORY[0x277D75688] dictationInputModeIsFunctional];
  searchField = [(SPUISearchHeader *)self searchField];
  rightView = [searchField rightView];
  [rightView setEnabled:dictationInputModeIsFunctional];
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
  enableFloatingWindow = [MEMORY[0x277D65D28] enableFloatingWindow];
  result = 0.0;
  if ((enableFloatingWindow & 1) == 0)
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
      searchField = [(SPUISearchHeader *)self searchField];
      needsLandscapeHeight = [searchField needsLandscapeHeight];

      v5 = needsLandscapeHeight == 0;
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
    searchField = [(SPUISearchHeader *)self searchField];
    tokenBackgroundColor = [searchField tokenBackgroundColor];
    clearColor = [MEMORY[0x277D75348] clearColor];
    if ([tokenBackgroundColor isEqual:clearColor])
    {
      searchField2 = [(SPUISearchHeader *)self searchField];
      tokens = [searchField2 tokens];
      v8 = [tokens count] != 0;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    searchField = [(SPUISearchHeader *)self searchEntity];
    tokenBackgroundColor = [SPUITextField webEntityStringForEntity:searchField];
    v8 = [tokenBackgroundColor length] != 0;
  }

  return v8;
}

- (NSString)currentQuery
{
  searchField = [(SPUISearchHeader *)self searchField];
  searchText = [searchField searchText];

  return searchText;
}

- (id)markedTextArray
{
  v26[3] = *MEMORY[0x277D85DE8];
  searchField = [(SPUISearchHeader *)self searchField];
  markedTextRange = [searchField markedTextRange];

  if (markedTextRange)
  {
    markedTextRange2 = [searchField markedTextRange];
    v5 = [searchField textInRange:markedTextRange2];

    if ([v5 length])
    {
      beginningOfDocument = [searchField beginningOfDocument];
      markedTextRange3 = [searchField markedTextRange];
      start = [markedTextRange3 start];
      v9 = [searchField textRangeFromPosition:beginningOfDocument toPosition:start];

      v10 = [searchField textInRange:v9];
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

      markedTextRange4 = [searchField markedTextRange];
      v16 = [markedTextRange4 end];
      v17 = [searchField positionFromPosition:v16 offset:1];

      if (v17)
      {
        endOfDocument = [searchField endOfDocument];
        v19 = [searchField textRangeFromPosition:v17 toPosition:endOfDocument];

        v20 = [searchField textInRange:v19];
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
  searchField = [(SPUISearchHeader *)self searchField];
  text = [searchField text];
  searchField2 = [(SPUISearchHeader *)self searchField];
  tokens = [searchField2 tokens];
  v7 = [tokens count] != 0;
  previousQueryID = [(SPUISearchHeader *)self previousQueryID];
  searchField3 = [(SPUISearchHeader *)self searchField];
  v10 = -[SPUICompletionStringModel initWithTypedString:hasTokens:queryId:hasMarkedText:](v3, "initWithTypedString:hasTokens:queryId:hasMarkedText:", text, v7, previousQueryID, [searchField3 hasMarkedText]);
  searchField4 = [(SPUISearchHeader *)self searchField];
  [searchField4 setSearchFieldModel:v10];
}

- (void)textFieldDidBeginEditing
{
  delegate = [(SPUISearchHeader *)self delegate];
  [delegate didBeginEditing];

  interactionDelegate = [(SPUISearchHeader *)self interactionDelegate];
  [interactionDelegate didFocusHeader];
}

- (SPUIHeaderInteractionDelegate)interactionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_interactionDelegate);

  return WeakRetained;
}

- (unint64_t)queryId
{
  delegate = [(SPUISearchHeader *)self delegate];
  currentQueryId = [delegate currentQueryId];

  return currentQueryId;
}

- (void)clearLastSearchedText
{
  [(SPUISearchHeader *)self setLastSearchText:0];

  [(SPUISearchHeader *)self setLastSearchEntity:0];
}

- (UISearchToken)lastSearchToken
{
  searchEntity = [(SPUISearchHeader *)self searchEntity];
  tokenText = [searchEntity tokenText];
  if (tokenText)
  {
    v5 = objc_opt_class();
    searchEntity2 = [(SPUISearchHeader *)self searchEntity];
    v7 = [v5 tokenFromSearchEntity:searchEntity2];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)setResponderForKeyboardInput:(id)input
{
  inputCopy = input;
  searchField = [(SPUISearchHeader *)self searchField];
  [searchField setResponderForKeyboardInput:inputCopy];
}

- (UIResponder)responderForKeyboardInput
{
  searchField = [(SPUISearchHeader *)self searchField];
  responderForKeyboardInput = [searchField responderForKeyboardInput];

  return responderForKeyboardInput;
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
  delegate = [(SPUISearchHeader *)self delegate];
  [delegate backButtonPressed];
}

- (void)returnKeyPressed
{
  searchField = [(SPUISearchHeader *)self searchField];
  if ([searchField optOutOfGoButton])
  {
    textFieldShouldReturn = [(SPUISearchHeader *)self textFieldShouldReturn];

    if (textFieldShouldReturn)
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

  delegate = [(SPUISearchHeader *)self delegate];
  [delegate returnKeyPressed];
}

- (void)highlightResultAfterUnmarkingText
{
  delegate = [(SPUISearchHeader *)self delegate];
  [delegate highlightResultAfterUnmarkingText];
}

- (BOOL)optOutOfGoButton
{
  searchField = [(SPUISearchHeader *)self searchField];
  optOutOfGoButton = [searchField optOutOfGoButton];

  return optOutOfGoButton;
}

- (void)setActiveInterfaceOrientation:(int64_t)orientation
{
  if (self->_activeInterfaceOrientation != orientation)
  {
    self->_activeInterfaceOrientation = orientation;
    searchField = [(SPUISearchHeader *)self searchField];
    [searchField setActiveInterfaceOrientation:orientation];

    [MEMORY[0x277D4C818] idealPlatterWidthForOrientation:orientation];
    v8 = v7;
    widthConstraint = [(SPUISearchHeader *)self widthConstraint];
    [widthConstraint setConstant:v8];

    [(SPUISearchHeader *)self topPadding];
    v11 = v10;
    topConstraint = [(SPUISearchHeader *)self topConstraint];
    [topConstraint setConstant:v11];

    [(SPUISearchHeader *)self bottomPadding];
    v14 = v13;
    bottomConstraint = [(SPUISearchHeader *)self bottomConstraint];
    [bottomConstraint setConstant:v14];

    searchField2 = [(SPUISearchHeader *)self searchField];
    [searchField2 invalidateIntrinsicContentSize];

    [(SPUISearchHeader *)self invalidateIntrinsicContentSize];
  }
}

- (void)dictationButtonPressed
{
  delegate = [(SPUISearchHeader *)self delegate];
  [delegate dictationButtonPressed];

  interactionDelegate = [(SPUISearchHeader *)self interactionDelegate];
  [interactionDelegate didFocusHeader];
}

- (void)addInputMethodInformationToQueryContext:(id)context
{
  contextCopy = context;
  textInputMode = [(SPUISearchHeader *)self textInputMode];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = textInputMode;
    primaryLanguage = [v5 primaryLanguage];
    [contextCopy setKeyboardPrimaryLanguage:primaryLanguage];

    identifier = [v5 identifier];
    if ([(__CFString *)identifier isEqualToString:@"dictation"])
    {
      v8 = contextCopy;
      v9 = identifier;
    }

    else
    {
      extension = [v5 extension];

      if (!extension)
      {
        normalizedIdentifierLevels = [v5 normalizedIdentifierLevels];
        firstObject = [normalizedIdentifierLevels firstObject];
        [contextCopy setKeyboardLanguage:firstObject];

        goto LABEL_7;
      }

      v9 = @"custom";
      v8 = contextCopy;
    }

    [v8 setKeyboardLanguage:v9];
LABEL_7:
  }
}

- (void)setQueryId:(unint64_t)id
{
  delegate = [(SPUISearchHeader *)self delegate];
  currentQueryContext = [delegate currentQueryContext];
  [currentQueryContext setQueryIdent:id];
}

- (void)textDidChange:(id)change
{
  changeCopy = change;
  searchField = [(SPUISearchHeader *)self searchField];
  if (([searchField ignoreTokensUpdate] & 1) == 0 && !-[SPUISearchHeader searchTextScheduledForProcessing](self, "searchTextScheduledForProcessing"))
  {
    textIncludingTokens = [searchField textIncludingTokens];
    v7 = [textIncludingTokens length];

    if (v7 >= 0x3E9)
    {
      textIncludingTokens2 = [searchField textIncludingTokens];
      v9 = [textIncludingTokens2 length];
      text = [searchField text];
      v11 = v9 - [text length];

      textualRange = [searchField textualRange];
      if (v11 > 0x3E7)
      {
        [searchField replaceRange:textualRange withText:&stru_287C49600];
      }

      else
      {
        text2 = [searchField text];
        v14 = [text2 substringToIndex:1000 - v11];
        [searchField replaceRange:textualRange withText:v14];
      }
    }

    searchText = [searchField searchText];
    v16 = [SPUITextField removeDictationCharacterInString:searchText];

    if ([v16 length])
    {
      [MEMORY[0x277D65D48] donateSpotlightUsedSignal];
    }

    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __34__SPUISearchHeader_textDidChange___block_invoke;
    v18[3] = &unk_279D06CA0;
    v19 = v16;
    selfCopy = self;
    v21 = searchField;
    v22 = changeCopy;
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

- (void)textDidChange:(id)change whyQuery:(unint64_t)query allowZKW:(BOOL)w sourcePreference:(unint64_t)preference searchEntities:(id)entities queryKind:(unint64_t)kind
{
  wCopy = w;
  entitiesCopy = entities;
  changeCopy = change;
  searchEntity = [(SPUISearchHeader *)self searchEntity];
  v16 = [SPUITextField webEntityStringForEntity:searchEntity];

  v27 = [SPUITextField removeDictationCharacterInString:changeCopy];

  searchField = [(SPUISearchHeader *)self searchField];
  searchText = [searchField searchText];
  if ([searchText length])
  {
    searchField2 = [(SPUISearchHeader *)self searchField];
    searchText2 = [searchField2 searchText];
  }

  else
  {
    searchText2 = v27;
  }

  if (v16)
  {
    v21 = v16;
  }

  else
  {
    v21 = searchText2;
  }

  v22 = [(SPUISearchHeader *)self currentQueryContextWithString:v21];
  [v22 setSearchEntities:entitiesCopy];

  [v22 setQueryKind:kind];
  if ([v27 length])
  {
    queryCopy = query;
  }

  else
  {
    queryCopy = 9;
  }

  [v22 setWhyQuery:queryCopy];
  currentQuery = [(SPUISearchHeader *)self currentQuery];
  v25 = [currentQuery isEqualToString:searchText2];

  if ((v25 & 1) == 0)
  {
    [v22 setSearchString:searchText2];
  }

  if (preference - 1 <= 1)
  {
    [v22 setPromoteParsecResults:1];
  }

  [(SPUISearchHeader *)self queryContextDidChange:v22 fromPreviousQueryId:[(SPUISearchHeader *)self previousQueryID] allowZKW:wCopy];
}

- (void)cancelButtonClicked:(id)clicked
{
  delegate = [(SPUISearchHeader *)self delegate];
  [delegate cancelButtonPressed];
}

- (void)escapeKeyPressed
{
  delegate = [(SPUISearchHeader *)self delegate];
  [delegate cancelButtonPressed];
}

- (BOOL)textFieldShouldReturn
{
  searchField = [(SPUISearchHeader *)self searchField];
  returnKeyType = [searchField returnKeyType];

  if (returnKeyType == 1)
  {
    [(SPUISearchHeader *)self setIsReturnKeyPressedInGoMode:1];
    delegate = [(SPUISearchHeader *)self delegate];
    [delegate returnKeyPressed];

    [(SPUISearchHeader *)self setIsReturnKeyPressedInGoMode:0];
  }

  else
  {
    v6 = objc_alloc(MEMORY[0x277D4C330]);
    searchField2 = [(SPUISearchHeader *)self searchField];
    text = [searchField2 text];
    v9 = [v6 initWithInput:text endpoint:6];

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
  searchField = [(SPUISearchHeader *)self searchField];
  textIncludingTokens = [searchField textIncludingTokens];
  -[SPUISearchHeader textDidChange:whyQuery:allowZKW:queryKind:](self, "textDidChange:whyQuery:allowZKW:queryKind:", textIncludingTokens, 17, 1, [objc_opt_class() asYouTypeSearchQueryKind]);
}

- (BOOL)lastQueryKindSupportsOptionKey
{
  delegate = [(SPUISearchHeader *)self delegate];
  currentQueryContext = [delegate currentQueryContext];
  queryKind = [currentQueryContext queryKind];
  v5 = queryKind == [objc_opt_class() asYouTypeSearchQueryKind];

  return v5;
}

- (void)commitSearch
{
  if (!self->_searchEntity)
  {
    searchField = [(SPUISearchHeader *)self searchField];
    textIncludingTokens = [searchField textIncludingTokens];
    -[SPUISearchHeader textDidChange:whyQuery:allowZKW:queryKind:](self, "textDidChange:whyQuery:allowZKW:queryKind:", textIncludingTokens, 23, 1, [objc_opt_class() committedSearchQueryKind]);
  }
}

- (void)switchToSuggestions
{
  asYouTypeSearchQueryKind = [objc_opt_class() asYouTypeSearchQueryKind];
  if (![(SPUISearchHeader *)self offersCompletions])
  {
    asYouTypeSearchQueryKind = 9;
  }

  [(SPUISearchHeader *)self setSearchEntity:0];
  searchField = [(SPUISearchHeader *)self searchField];
  text = [searchField text];
  [(SPUISearchHeader *)self textDidChange:text whyQuery:1 allowZKW:1 queryKind:asYouTypeSearchQueryKind];

  [(SPUISearchHeader *)self setLastSearchEntity:0];
  searchField2 = [(SPUISearchHeader *)self searchField];
  searchText = [searchField2 searchText];
  [(SPUISearchHeader *)self setLastSearchText:searchText];
}

- (id)currentQueryContextWithString:(id)string
{
  v4 = MEMORY[0x277D65898];
  stringCopy = string;
  v6 = [[v4 alloc] initWithSearchString:stringCopy];
  [v6 setDeviceAuthenticationState:{objc_msgSend(MEMORY[0x277D65D88], "deviceAuthenticationStateForView:", self)}];
  markedTextArray = [(SPUISearchHeader *)self markedTextArray];
  [v6 setMarkedTextArray:markedTextArray];

  v8 = MEMORY[0x277CC34D8];
  emptySuggestion = [MEMORY[0x277CC34D8] emptySuggestion];
  v10 = [v8 updatedSuggestionWithCurrentSuggestion:emptySuggestion userString:stringCopy tokens:MEMORY[0x277CBEBF8]];

  [v6 setBackingSearchModel:v10];
  [(SPUISearchHeader *)self addInputMethodInformationToQueryContext:v6];
  [(SPUISearchHeader *)self tlks_scale];
  [v6 setScaleFactor:?];

  return v6;
}

+ (id)tokenFromSearchEntity:(id)entity
{
  entityCopy = entity;
  symbolName = [entityCopy symbolName];
  if (symbolName)
  {
    v5 = [MEMORY[0x277D4C890] uiImageWithSymbolName:symbolName];
  }

  else
  {
    v5 = 0;
  }

  v6 = MEMORY[0x277D75A00];
  tokenText = [entityCopy tokenText];
  v8 = [v6 tokenWithIcon:v5 text:tokenText];

  [v8 setRepresentedObject:entityCopy];

  return v8;
}

- (void)restoreSearchText:(id)text searchEntity:(id)entity
{
  textCopy = text;
  entityCopy = entity;
  [(SPUISearchHeader *)self setSearchEntity:entityCopy];
  [(SPUISearchHeader *)self setLastSearchText:textCopy];
  searchField = [(SPUISearchHeader *)self searchField];
  searchField2 = searchField;
  if (entityCopy)
  {
    searchString = [entityCopy searchString];
    [searchField2 updateTextRange:searchString];

    searchField2 = [(SPUISearchHeader *)self searchField];
    v10 = [SPUISearchHeader tokenFromSearchEntity:entityCopy];
    [searchField2 updateToken:v10];
  }

  else
  {
    [searchField setText:textCopy];
  }
}

- (void)setSearchEntity:(id)entity fromSuggestion:(BOOL)suggestion
{
  entityCopy = entity;
  searchEntity = self->_searchEntity;
  if (searchEntity != entityCopy)
  {
    v17 = entityCopy;
    if (([(SPSearchEntity *)searchEntity isEqual:entityCopy]& 1) == 0)
    {
      objc_storeStrong(&self->_searchEntity, entity);
      if (v17)
      {
        tokenText = [(SPSearchEntity *)v17 tokenText];
        if (!tokenText)
        {
          searchField = [(SPUISearchHeader *)self searchField];
          searchString = [(SPSearchEntity *)v17 searchString];
          [searchField updateTextRange:searchString];
LABEL_10:

          goto LABEL_11;
        }

        [(SPUISearchHeader *)self setOffersCompletions:0];
        searchField2 = [(SPUISearchHeader *)self searchField];
        tokens = [searchField2 tokens];
        searchField = [tokens firstObject];

        representedObject = [searchField representedObject];
        LOBYTE(tokens) = [representedObject isEqual:v17];

        if ((tokens & 1) == 0)
        {
          searchString = [objc_opt_class() tokenFromSearchEntity:v17];
          if (searchString)
          {
            searchField3 = [(SPUISearchHeader *)self searchField];
            searchString2 = [(SPSearchEntity *)v17 searchString];
            [searchField3 updateTextRange:searchString2];

            searchField4 = [(SPUISearchHeader *)self searchField];
            [searchField4 updateToken:searchString];
          }

          goto LABEL_10;
        }
      }

      else
      {
        tokenText = [(SPUISearchHeader *)self currentQuery];
        searchField = [(SPUISearchHeader *)self searchField];
        [searchField setText:tokenText];
      }

LABEL_11:
    }
  }

  MEMORY[0x2821F96F8]();
}

- (void)_searchWithSearchEntity:(id)entity fromSuggestion:(BOOL)suggestion
{
  if (suggestion)
  {
    v5 = 8;
  }

  else
  {
    v5 = 1;
  }

  searchField = [(SPUISearchHeader *)self searchField];
  textIncludingTokens = [searchField textIncludingTokens];
  [(SPUISearchHeader *)self textDidChange:textIncludingTokens whyQuery:v5 allowZKW:1 queryKind:9];
}

- (id)_searchTextField:(id)field itemProviderForCopyingToken:(id)token
{
  representedObject = [token representedObject];
  v5 = [objc_alloc(MEMORY[0x277CCAA88]) initWithItem:representedObject typeIdentifier:@"com.apple.spotlight.searchEntity"];
  tokenText = [representedObject tokenText];
  [v5 registerObject:tokenText visibility:0];

  return v5;
}

- (void)textPasteConfigurationSupporting:(id)supporting transformPasteItem:(id)item
{
  itemCopy = item;
  itemProvider = [itemCopy itemProvider];
  if ([itemProvider hasItemConformingToTypeIdentifier:@"com.apple.spotlight.searchEntity"])
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __72__SPUISearchHeader_textPasteConfigurationSupporting_transformPasteItem___block_invoke;
    v8[3] = &unk_279D06CF0;
    v8[4] = self;
    v9 = itemCopy;
    v7 = [itemProvider loadDataRepresentationForTypeIdentifier:@"com.apple.spotlight.searchEntity" completionHandler:v8];
  }

  else
  {
    [itemCopy setDefaultResult];
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
  searchField = [(SPUISearchHeader *)self searchField];
  [searchField updateRightView];

  searchField2 = [(SPUISearchHeader *)self searchField];
  isFirstResponder = [searchField2 isFirstResponder];

  if ((isFirstResponder & 1) == 0)
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

  mEMORY[0x277D75688] = [MEMORY[0x277D75688] sharedInputModeController];
  searchField3 = [(SPUISearchHeader *)self searchField];
  v10 = [MEMORY[0x277D75430] dictationInputModeOptionsWithInvocationSource:@"UIDictationInputModeInvocationSourceMicButtonMicButtonInFirstResponderSearchBar"];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __34__SPUISearchHeader_beginDictation__block_invoke;
  v11[3] = &unk_279D06C78;
  v11[4] = self;
  [mEMORY[0x277D75688] toggleDictationForResponder:searchField3 withOption:v10 firstResponderSetupCompletion:v11];
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

+ (void)logInvokeWithReason:(unint64_t)reason
{
  v9 = *MEMORY[0x277D85DE8];
  if (reason > 5)
  {
    v3 = 0;
  }

  else
  {
    v3 = off_279D06D88[reason];
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

+ (void)logDismissalWithReason:(unint64_t)reason
{
  v9 = *MEMORY[0x277D85DE8];
  if (reason > 5)
  {
    v3 = 0;
  }

  else
  {
    v3 = off_279D06DB8[reason];
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
  searchField = [(SPUISearchHeader *)self searchField];
  isFirstResponder = [searchField isFirstResponder];

  return isFirstResponder;
}

- (void)resignKeyboardForProcessState
{
  if ([MEMORY[0x277D65D28] enableFloatingWindow])
  {

    [(SPUISearchHeader *)self unfocusSearchFieldWithReason:4];
  }
}

- (void)updateWithCommand:(id)command
{
  v24[1] = *MEMORY[0x277D85DE8];
  commandCopy = command;
  [(SPUISearchHeader *)self setLastSearchText:0];
  [(SPUISearchHeader *)self setLastSearchEntity:0];
  [(SPUISearchHeader *)self setUseClearTokens:0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = commandCopy;
    committedSearchQueryKind = [objc_opt_class() committedSearchQueryKind];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      queryKind = [v5 queryKind];
      v8 = objc_opt_class();
      if (queryKind == 1)
      {
        asYouTypeSearchQueryKind = [v8 asYouTypeSearchQueryKind];
      }

      else
      {
        asYouTypeSearchQueryKind = [v8 committedSearchQueryKind];
      }

      committedSearchQueryKind = asYouTypeSearchQueryKind;
    }

    searchString = [v5 searchString];
    v17 = [searchString length];

    if (v17)
    {
      searchField = [(SPUISearchHeader *)self searchField];
      [searchField updateToken:0];

      searchString2 = [v5 searchString];
      searchField2 = [(SPUISearchHeader *)self searchField];
      [searchField2 setText:searchString2];

      searchString3 = [v5 searchString];
      [(SPUISearchHeader *)self setLastSearchText:searchString3];

      searchString4 = [v5 searchString];
      [(SPUISearchHeader *)self textDidChange:searchString4 whyQuery:8 allowZKW:1 sourcePreference:2 searchEntities:0 queryKind:committedSearchQueryKind];
    }
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = commandCopy;
      person = [v5 person];
      contactIdentifier = [person contactIdentifier];

      if (contactIdentifier)
      {
        v12 = MEMORY[0x277D65890];
        contactIdentifier2 = [person contactIdentifier];
        contactIdentifier = [v12 searchEntityWithContactIdentifier:contactIdentifier2 fromSuggestion:0];
      }

      [(SPUISearchHeader *)self setSearchEntity:contactIdentifier fromSuggestion:1];
      [(SPUISearchHeader *)self _searchWithSearchEntity:contactIdentifier fromSuggestion:1];
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_16;
      }

      v14 = MEMORY[0x277D65D70];
      v24[0] = commandCopy;
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

- (unint64_t)getClearTriggerEventForQueryContext:(id)context
{
  contextCopy = context;
  willClear = [(SPUISearchHeader *)self willClear];
  [(SPUISearchHeader *)self setWillClear:0];
  textWasCut = [(SPUISearchHeader *)self textWasCut];
  [(SPUISearchHeader *)self setTextWasCut:0];
  searchEntities = [contextCopy searchEntities];
  if (searchEntities)
  {

    v8 = 0;
  }

  else
  {
    searchString = [contextCopy searchString];
    v10 = [searchString length];
    v11 = v10 == 0;
    v12 = v10 != 0;

    v13 = v12 || willClear || textWasCut;
    if (v12 || willClear)
    {
      v8 = v11;
    }

    else
    {
      v8 = 2;
    }

    if (!v13)
    {
      if ([contextCopy whyQuery] == 1)
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

- (void)setUseClearTokens:(BOOL)tokens
{
  if (self->_useClearTokens != tokens)
  {
    self->_useClearTokens = tokens;
    [(SPUISearchHeader *)self tlk_updateWithCurrentAppearance];
  }
}

- (void)setLegibilitySettings:(id)settings
{
  objc_storeStrong(&self->_legibilitySettings, settings);

  [(SPUISearchHeader *)self tlk_updateWithCurrentAppearance];
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v9.receiver = self;
  v9.super_class = SPUISearchHeader;
  [(SPUISearchHeader *)&v9 traitCollectionDidChange:changeCopy];
  traitCollection = [(SPUISearchHeader *)self traitCollection];
  if ([traitCollection hasDifferentColorAppearanceComparedToTraitCollection:changeCopy])
  {

LABEL_4:
    [(SPUISearchHeader *)self tlk_updateWithCurrentAppearance];
    goto LABEL_5;
  }

  traitCollection2 = [(SPUISearchHeader *)self traitCollection];
  _vibrancy = [traitCollection2 _vibrancy];
  _vibrancy2 = [changeCopy _vibrancy];

  if (_vibrancy != _vibrancy2)
  {
    goto LABEL_4;
  }

LABEL_5:
}

- (void)tlk_updateForAppearance:(id)appearance
{
  appearanceCopy = appearance;
  v29.receiver = self;
  v29.super_class = SPUISearchHeader;
  [(SPUISearchHeader *)&v29 tlk_updateForAppearance:appearanceCopy];
  v5 = _UISolariumEnabled();
  searchField = [(SPUISearchHeader *)self searchField];
  v7 = searchField;
  if (v5)
  {
    [searchField bounds];
    v9 = v8 * 0.5;
  }

  else
  {
    [searchField backgroundCornerRadius];
    v9 = v10;
  }

  blurView = [(SPUISearchHeader *)self blurView];
  [blurView _setContinuousCornerRadius:v9];

  if ([(SPUISearchHeader *)self useClearTokens])
  {
    [MEMORY[0x277D75348] clearColor];
  }

  else
  {
    [appearanceCopy platterColor];
  }
  v12 = ;
  searchField2 = [(SPUISearchHeader *)self searchField];
  [searchField2 setTokenBackgroundColor:v12];

  useClearTokens = [(SPUISearchHeader *)self useClearTokens];
  if (useClearTokens)
  {
    labelColor = [MEMORY[0x277D75348] labelColor];
  }

  else
  {
    labelColor = 0;
  }

  searchField3 = [(SPUISearchHeader *)self searchField];
  [searchField3 _setTokenForegroundColor:labelColor];

  if (useClearTokens)
  {
  }

  isDark = [appearanceCopy isDark];
  IsReduceTransparencyEnabled = UIAccessibilityIsReduceTransparencyEnabled();
  searchField4 = [(SPUISearchHeader *)self searchField];
  [appearanceCopy overrideAppearanceForView:searchField4];

  if (IsReduceTransparencyEnabled)
  {
    legibilitySettings = [(SPUISearchHeader *)self legibilitySettings];
    contentColor = [legibilitySettings contentColor];

    v28 = 0.0;
    [contentColor getHue:0 saturation:0 brightness:&v28 alpha:0];
    v22 = [MEMORY[0x277D75348] colorWithWhite:dbl_26B867100[v28 > 0.4] alpha:0.3];
    searchField5 = [(SPUISearchHeader *)self searchField];
    tintView = [searchField5 tintView];
    [tintView setBackgroundColor:v22];

    searchField6 = [(SPUISearchHeader *)self searchField];
    tintView2 = [searchField6 tintView];
    [tintView2 setAlpha:1.0];
  }

  else
  {
    if (isDark)
    {
      v27 = 0.1;
    }

    else
    {
      v27 = 0.04;
    }

    contentColor = [(SPUISearchHeader *)self searchField];
    searchField6 = [contentColor tintView];
    [searchField6 setAlpha:v27];
  }
}

- (BOOL)cancelButtonIsVisible
{
  cancelButtonTrailingConstraint = [(SPUISearchHeader *)self cancelButtonTrailingConstraint];
  isActive = [cancelButtonTrailingConstraint isActive];

  return isActive;
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

- (void)searchForSuggestion:(id)suggestion isBuildingQuery:(BOOL)query
{
  queryCopy = query;
  suggestionCopy = suggestion;
  if ([suggestionCopy type] == 17)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (queryCopy)
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
    searchEntities = 0;
    if (!queryCopy)
    {
      goto LABEL_9;
    }

LABEL_13:
    searchField = [(SPUISearchHeader *)self searchField];
    [searchField becomeFirstResponder];

    v11 = @" ";
    goto LABEL_14;
  }

  searchEntities = [suggestionCopy searchEntities];
  v6 = 0;
  v7 = 22;
  if (queryCopy)
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
  searchField2 = [(SPUISearchHeader *)self searchField];
  [searchField2 updateToken:0];

  title = [suggestionCopy title];
  text = [title text];
  v16 = [text stringByAppendingString:v11];

  searchField3 = [(SPUISearchHeader *)self searchField];
  [searchField3 setText:v16];

  v18 = objc_opt_class();
  if (queryCopy)
  {
    asYouTypeSearchQueryKind = [v18 asYouTypeSearchQueryKind];
  }

  else
  {
    asYouTypeSearchQueryKind = [v18 committedSearchQueryKind];
  }

  [(SPUISearchHeader *)self textDidChange:v16 whyQuery:v7 allowZKW:1 sourcePreference:v6 searchEntities:searchEntities queryKind:asYouTypeSearchQueryKind];
}

- (void)performTestSearchWithQuery:(id)query event:(unint64_t)event queryKind:(unint64_t)kind
{
  queryCopy = query;
  [(SPUISearchHeader *)self textDidChange:queryCopy whyQuery:event allowZKW:1 sourcePreference:0 searchEntities:0 queryKind:kind];
  searchField = [(SPUISearchHeader *)self searchField];
  [searchField setText:queryCopy];
}

- (BOOL)completionResultIsPotentiallyPunchout
{
  searchField = [(SPUISearchHeader *)self searchField];
  completionResultIsPotentiallyPunchout = [searchField completionResultIsPotentiallyPunchout];

  return completionResultIsPotentiallyPunchout;
}

- (void)performTransition:(int64_t)transition willBeDisplayed:(BOOL)displayed
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __54__SPUISearchHeader_performTransition_willBeDisplayed___block_invoke;
  v4[3] = &unk_279D06D68;
  displayedCopy = displayed;
  v4[4] = self;
  v4[5] = transition;
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