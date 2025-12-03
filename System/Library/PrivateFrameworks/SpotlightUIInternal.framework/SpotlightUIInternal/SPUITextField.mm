@interface SPUITextField
+ (double)lineHeightMultiplierForCurrentLanguage;
+ (id)webEntityStringForEntity:(id)entity;
+ (void)updateBlueButton;
- (BOOL)becomeFirstResponder;
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
- (BOOL)completionResultIsPotentiallyPunchout;
- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer;
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (BOOL)hasContent;
- (BOOL)keyboardInputShouldDelete:(id)delete;
- (BOOL)needsLandscapeHeight;
- (BOOL)optOutOfGoButton;
- (BOOL)resignFirstResponder;
- (BOOL)shouldPromoteCompletion;
- (CGRect)_shiftedBoundsForText:(CGRect)text;
- (CGRect)clearButtonRectForBounds:(CGRect)bounds;
- (CGRect)editingRectForBounds:(CGRect)bounds;
- (CGRect)leftViewRectForBounds:(CGRect)bounds;
- (CGRect)rightViewRectForBounds:(CGRect)bounds;
- (CGRect)textRectForBounds:(CGRect)bounds;
- (CGSize)intrinsicContentSize;
- (NSString)textIncludingTokens;
- (SPSearchEntity)searchEntity;
- (SPUITextField)init;
- (UIResponder)responderForKeyboardInput;
- (UIView)canvasView;
- (_NSRange)insertFilteredText:(id)text;
- (double)backgroundCornerRadius;
- (double)textFieldHeight;
- (id)accessoryIconWithSymbolName:(id)name;
- (id)accessoryIconWithSymbolName:(id)name scale:(int64_t)scale font:(id)font;
- (id)currentQueryContext;
- (id)keyCommands;
- (id)nextResponder;
- (id)preferredFocusEnvironments;
- (void)_promoteCompletionAndMoveForward:(BOOL)forward;
- (void)applyMetrics;
- (void)beginFloatingCursorAtPoint:(CGPoint)point;
- (void)buildMenuWithBuilder:(id)builder;
- (void)clearAllTokens;
- (void)commitToCommitedSearch;
- (void)cut:(id)cut;
- (void)detokenizeIfNeededAndSearch:(BOOL)search;
- (void)didMoveToWindow;
- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator;
- (void)enterKeyPressed;
- (void)escapeKeyCommand;
- (void)insertText:(id)text;
- (void)keyboardFrameChanged:(id)changed;
- (void)layoutSubviews;
- (void)pressesEnded:(id)ended withEvent:(id)event;
- (void)removeCaretAssertion;
- (void)removeCompletionAndHighlight;
- (void)removeCompletionsOrEntitiesAndGoToSuggestions:(BOOL)suggestions;
- (void)resetClearButton;
- (void)resetDeletion;
- (void)resetMicrophoneButton;
- (void)resetPhoneClearButton;
- (void)selectAll:(id)all;
- (void)setAppearance:(id)appearance tintColor:(id)color forViews:(id)views;
- (void)setFont:(id)font;
- (void)setIsInDictationMode:(BOOL)mode;
- (void)setSearchFieldModel:(id)model;
- (void)setSelectionGrabbersHiddenSafe:(BOOL)safe;
- (void)setShowsBackButton:(BOOL)button;
- (void)setTextColor:(id)color;
- (void)textFieldWasTapped;
- (void)tintColorDidChange;
- (void)tlk_updateForAppearance:(id)appearance;
- (void)toggleBackToCommittedSearch;
- (void)toggleCommitedSearch;
- (void)traitCollectionDidChange:(id)change;
- (void)unmarkText;
- (void)updateCaretVisibility;
- (void)updateCaretVisibility:(BOOL)visibility;
- (void)updateRightView;
- (void)updateTextRange:(id)range;
- (void)updateToken:(id)token;
- (void)updateWithAppearance:(id)appearance isOnDarkBackground:(BOOL)background;
@end

@implementation SPUITextField

- (void)applyMetrics
{
  if ([MEMORY[0x277D65D28] bottomSearchFieldEnabled])
  {
    v3 = 16.0;
  }

  else
  {
    v3 = 10.0;
  }

  tintView = [(SPUITextField *)self tintView];
  [tintView _setContinuousCornerRadius:v3];

  [(SPUITextField *)self invalidateIntrinsicContentSize];
  LODWORD(tintView) = _UISolariumEnabled();
  bottomSearchFieldEnabled = [MEMORY[0x277D65D28] bottomSearchFieldEnabled];
  if (tintView)
  {
    if (bottomSearchFieldEnabled)
    {
      v6 = [MEMORY[0x277D6F1A8] cachedFontForTextStyle:*MEMORY[0x277D76918] isShort:0 fontWeight:*MEMORY[0x277D74410]];
LABEL_9:
      v7 = v6;
      [(SPUITextField *)self setFont:v6];

      font = [(SPUITextField *)self font];
      [(SPUITextField *)self setAccessoryIconFont:font];
      goto LABEL_13;
    }

    v9 = [MEMORY[0x277D74300] systemFontOfSize:22.0];
    [(SPUITextField *)self setAccessoryIconFont:v9];

    v10 = [MEMORY[0x277D74300] systemFontOfSize:26.0 weight:*MEMORY[0x277D74410]];
  }

  else
  {
    if (bottomSearchFieldEnabled)
    {
      v6 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76A28]];
      goto LABEL_9;
    }

    v11 = [MEMORY[0x277D74300] boldSystemFontOfSize:23.0];
    [(SPUITextField *)self setAccessoryIconFont:v11];

    v10 = [MEMORY[0x277D74300] systemFontOfSize:26.0];
  }

  font = v10;
  [(SPUITextField *)self setFont:v10];
LABEL_13:

  [(SPUITextField *)self resetPhoneClearButton];
  [(SPUITextField *)self resetMicrophoneButton];
  delegate = [(SPUITextField *)self delegate];
  [delegate enableDictationIfRequired];
}

- (SPUITextField)init
{
  v40.receiver = self;
  v40.super_class = SPUITextField;
  v2 = [(SPUITextField *)&v40 init];
  v3 = v2;
  if (v2)
  {
    [(SPUITextField *)v2 setSymbolAnimationEnabled:0];
    [(UISearchTextField *)v3 setBorderStyle:0];
    v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v5 = [v4 localizedStringForKey:@"SEARCH_BAR_PLACEHOLDER" value:&stru_287C49600 table:0];
    [(SPUITextField *)v3 setPlaceholder:v5];

    [(SPUITextField *)v3 setAutocapitalizationType:0];
    [(SPUITextField *)v3 setAutocorrectionType:1];
    [(SPUITextField *)v3 setReturnKeyType:6];
    [(SPUITextField *)v3 setEnablesReturnKeyAutomatically:1];
    [(UISearchTextField *)v3 setAccessibilityIdentifier:@"SpotlightSearchField"];
    [(SPUITextField *)v3 setAcceptsDictationSearchResults:1];
    v6 = [MEMORY[0x277D74300] boldSystemFontOfSize:23.0];
    [(SPUITextField *)v3 setAccessoryIconFont:v6];

    if ([MEMORY[0x277D65D28] enableFloatingWindow])
    {
      [(SPUITextField *)v3 applyMetrics];
      [(SPUITextField *)v3 resetMicrophoneButton];
      rightView = [(SPUITextField *)v3 rightView];
      [rightView setContentMode:4];

      objc_initWeak(&location, v3);
      v8 = MEMORY[0x277D750C8];
      v34 = MEMORY[0x277D85DD0];
      v35 = 3221225472;
      v36 = __21__SPUITextField_init__block_invoke;
      v37 = &unk_279D06DF0;
      objc_copyWeak(&v38, &location);
      v9 = [v8 actionWithHandler:&v34];
      plainButtonConfiguration = [MEMORY[0x277D75230] plainButtonConfiguration];
      [plainButtonConfiguration setImagePlacement:15];
      v11 = [MEMORY[0x277D75220] buttonWithConfiguration:plainButtonConfiguration primaryAction:v9];
      [(SPUITextField *)v3 setLeftView:v11];

      [(SPUITextField *)v3 setShowsBackButton:0];
      v12 = [objc_alloc(MEMORY[0x277D759B0]) initWithDelegate:v3];
      [(SPUITextField *)v3 setScribbleInteraction:v12];
      [(SPUITextField *)v3 addInteraction:v12];
      [(SPUITextField *)v3 resetClearButton];

      objc_destroyWeak(&v38);
      objc_destroyWeak(&location);
    }

    else
    {
      [(SPUITextField *)v3 setCanAcquireFieldEditor:1];
      v13 = objc_opt_new();
      [v13 setUserInteractionEnabled:0];
      subviews = [(SPUITextField *)v3 subviews];
      lastObject = [subviews lastObject];
      [(SPUITextField *)v3 insertSubview:v13 belowSubview:lastObject];

      [MEMORY[0x277D4C828] constrainViewToContainer:v13];
      [(SPUITextField *)v3 setTintView:v13];
      if ([MEMORY[0x277D65D28] bottomSearchFieldEnabled])
      {
        tintView = [(SPUITextField *)v3 tintView];
        [tintView removeFromSuperview];
      }

      [(SPUITextField *)v3 applyMetrics];
      defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
      [defaultCenter addObserver:v3 selector:sel_applyMetrics name:*MEMORY[0x277D76810] object:0];

      if (_UISolariumEnabled())
      {
        v18 = 1;
      }

      else
      {
        v18 = 11;
      }

      [(SPUITextField *)v3 setKeyboardAppearance:v18];
    }

    v19 = objc_opt_new();
    [(SPUITextField *)v3 setHintingView:v19];

    font = [(SPUITextField *)v3 font];
    hintingView = [(SPUITextField *)v3 hintingView];
    [hintingView setFontForCompletionLabel:font];

    hintingView2 = [(SPUITextField *)v3 hintingView];
    subviews2 = [(SPUITextField *)v3 subviews];
    lastObject2 = [subviews2 lastObject];
    [(SPUITextField *)v3 insertSubview:hintingView2 below:lastObject2];

    layer = [(SPUITextField *)v3 layer];
    [layer setAllowsGroupBlending:0];

    leftView = [(SPUITextField *)v3 leftView];
    [leftView setTintColor:0];

    [(SPUITextField *)v3 setTextDragOptions:1];
    v27 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:v3 action:sel_textFieldWasTapped];
    [v27 setDelegate:v3];
    [(SPUITextField *)v3 addGestureRecognizer:v27];
    [(SPUITextField *)v3 setCompletionTapGestureRecognizer:v27];
    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 addObserver:v3 selector:sel_didBeginDictation name:@"UIKeyboardDidBeginDictationNotification" object:0];

    defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter3 addObserver:v3 selector:sel_didEndDictation name:*MEMORY[0x277D76890] object:0];

    defaultCenter4 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter4 addObserver:v3 selector:sel_didBeginDictation name:*MEMORY[0x277D76898] object:0];

    defaultCenter5 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter5 addObserver:v3 selector:sel_didEndDictation name:*MEMORY[0x277D76888] object:0];

    if ([MEMORY[0x277D65D28] bottomSearchFieldEnabled])
    {
      defaultCenter6 = [MEMORY[0x277CCAB98] defaultCenter];
      [defaultCenter6 addObserver:v3 selector:sel_keyboardFrameChanged_ name:*MEMORY[0x277D76C48] object:0];
    }

    else
    {
      [(SPUITextField *)v3 updateTextAlignmentShouldCenter:0 animated:1];
    }

    [(SPUITextField *)v3 setSymbolAnimationEnabled:0];
  }

  return v3;
}

- (void)resetPhoneClearButton
{
  if (([MEMORY[0x277D65D28] enableFloatingWindow] & 1) == 0)
  {

    [(SPUITextField *)self resetClearButton];
  }
}

- (id)nextResponder
{
  responderForKeyboardInput = [(SPUITextField *)self responderForKeyboardInput];
  if (responderForKeyboardInput && ([MEMORY[0x277D75658] isInHardwareKeyboardMode] & 1) != 0)
  {
    responderForKeyboardInput2 = [(SPUITextField *)self responderForKeyboardInput];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = SPUITextField;
    responderForKeyboardInput2 = [(SPUITextField *)&v7 nextResponder];
  }

  v5 = responderForKeyboardInput2;

  return v5;
}

- (UIResponder)responderForKeyboardInput
{
  WeakRetained = objc_loadWeakRetained(&self->_responderForKeyboardInput);

  return WeakRetained;
}

- (CGSize)intrinsicContentSize
{
  [MEMORY[0x277D4C818] idealPlatterWidth];
  v4 = v3;
  [(SPUITextField *)self textFieldHeight];
  v6 = v5;
  v7 = v4;
  result.height = v6;
  result.width = v7;
  return result;
}

- (double)textFieldHeight
{
  if ([MEMORY[0x277D65D28] bottomSearchFieldEnabled])
  {
    v3 = MEMORY[0x277D6F1B8];
    [objc_opt_class() lineHeightMultiplierForCurrentLanguage];
    v5 = v4 * 48.0;
    font = [(SPUITextField *)self font];
    [v3 scaledValueForValue:font withFont:self view:v5];
    v8 = v7;

    return v8;
  }

  else if ([MEMORY[0x277D65D28] enableFloatingWindow])
  {
    return 61.0;
  }

  else
  {
    v11.receiver = self;
    v11.super_class = SPUITextField;
    [(UISearchTextField *)&v11 intrinsicContentSize];
    return v10;
  }
}

+ (double)lineHeightMultiplierForCurrentLanguage
{
  v2 = MEMORY[0x277CBEAF8];
  mEMORY[0x277D75688] = [MEMORY[0x277D75688] sharedInputModeController];
  currentInputMode = [mEMORY[0x277D75688] currentInputMode];
  primaryLanguage = [currentInputMode primaryLanguage];
  v6 = [v2 localeWithLocaleIdentifier:primaryLanguage];

  languageCode = [v6 languageCode];
  LOBYTE(currentInputMode) = [&unk_287C4F818 containsObject:languageCode];

  if (currentInputMode)
  {
    v8 = 1.18;
  }

  else
  {
    languageCode2 = [v6 languageCode];
    v10 = [&unk_287C4F830 containsObject:languageCode2];

    if (v10)
    {
      v8 = 1.27;
    }

    else
    {
      v8 = 1.0;
    }
  }

  return v8;
}

- (void)layoutSubviews
{
  v26.receiver = self;
  v26.super_class = SPUITextField;
  [(UISearchTextField *)&v26 layoutSubviews];
  _fieldEditor = [(SPUITextField *)self _fieldEditor];
  [_fieldEditor frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  if (![(SPUITextField *)self effectiveUserInterfaceLayoutDirection])
  {
    [(SPUITextField *)self bounds];
    [(SPUITextField *)self textRectForBounds:?];
    v13 = v12;
    v11 = v14;
    [(SPUITextField *)self bounds];
    [(SPUITextField *)self clearButtonRectForBounds:?];
    v9 = v13 + v15 + -16.0;
  }

  hintingView = [(SPUITextField *)self hintingView];
  [hintingView setFrame:{v5, v7, v9, v11}];

  hintingView2 = [(SPUITextField *)self hintingView];
  isInDictationMode = 1.0;
  if ([hintingView2 hasPrefix])
  {
    isInDictationMode = [(SPUITextField *)self isInDictationMode];
  }

  _fieldEditor2 = [(SPUITextField *)self _fieldEditor];
  [_fieldEditor2 setAlpha:isInDictationMode];

  _fieldEditor3 = [(SPUITextField *)self _fieldEditor];
  [_fieldEditor3 alpha];
  v22 = v21;

  if (v22 == 1.0)
  {
    hintingView3 = [(SPUITextField *)self hintingView];
    hasContent = [hintingView3 hasContent];
    _placeholderLabel = [(SPUITextField *)self _placeholderLabel];
    [_placeholderLabel setHidden:hasContent];
  }
}

- (void)tintColorDidChange
{
  v5.receiver = self;
  v5.super_class = SPUITextField;
  [(UISearchTextField *)&v5 tintColorDidChange];
  selectionHighlightColor = [(SPUITextField *)self selectionHighlightColor];
  hintingView = [(SPUITextField *)self hintingView];
  [hintingView setSelectionHighlightColor:selectionHighlightColor];
}

- (double)backgroundCornerRadius
{
  v3 = 10.0;
  if ([MEMORY[0x277D65D28] bottomSearchFieldEnabled])
  {
    v3 = 16.0;
    if (_UISolariumEnabled())
    {
      [(SPUITextField *)self bounds];
      return v4 * 0.5;
    }
  }

  return v3;
}

- (UIView)canvasView
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  subviews = [(SPUITextField *)self subviews];
  v3 = [subviews countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v15;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v15 != v5)
        {
          objc_enumerationMutation(subviews);
        }

        v7 = *(*(&v14 + 1) + 8 * i);
        v8 = objc_opt_class();
        v9 = NSStringFromClass(v8);
        v10 = [v9 isEqualToString:@"_UITextLayoutCanvasView"];

        if (v10)
        {
          v11 = v7;
          goto LABEL_11;
        }
      }

      v4 = [subviews countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_11:

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (void)clearAllTokens
{
  for (i = self; ; self = i)
  {
    tokens = [(UISearchTextField *)self tokens];
    v4 = [tokens count];

    if (!v4)
    {
      break;
    }

    [(UISearchTextField *)i removeTokenAtIndex:0];
  }
}

- (NSString)textIncludingTokens
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  tokens = [(UISearchTextField *)self tokens];
  v5 = [tokens countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(tokens);
        }

        representedObject = [*(*(&v15 + 1) + 8 * i) representedObject];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          tokenText = [representedObject tokenText];
          [v3 appendString:tokenText];
        }
      }

      v6 = [tokens countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  text = [(UISearchTextField *)self text];
  [v3 appendString:text];

  v12 = [objc_opt_class() removeDictationCharacterInString:v3];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (SPSearchEntity)searchEntity
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  tokens = [(UISearchTextField *)self tokens];
  representedObject2 = [tokens countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (representedObject2)
  {
    v4 = *v12;
    while (2)
    {
      for (i = 0; i != representedObject2; i = i + 1)
      {
        if (*v12 != v4)
        {
          objc_enumerationMutation(tokens);
        }

        v6 = *(*(&v11 + 1) + 8 * i);
        representedObject = [v6 representedObject];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          representedObject2 = [v6 representedObject];
          goto LABEL_11;
        }
      }

      representedObject2 = [tokens countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (representedObject2)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v9 = *MEMORY[0x277D85DE8];

  return representedObject2;
}

- (void)updateRightView
{
  hasContent = [(SPUITextField *)self hasContent];
  if (hasContent)
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  if (hasContent)
  {
    v5 = 0;
  }

  else
  {
    v5 = 3;
  }

  [(SPUITextField *)self setClearButtonMode:v4];
  [(SPUITextField *)self setRightViewMode:v5];

  [(SPUITextField *)self layoutIfNeeded];
}

- (BOOL)hasContent
{
  text = [(UISearchTextField *)self text];
  if ([text length])
  {
    v4 = 1;
  }

  else
  {
    tokens = [(UISearchTextField *)self tokens];
    v4 = [tokens count] != 0;
  }

  return v4;
}

- (BOOL)becomeFirstResponder
{
  animateAssertion = [(SPUITextField *)self animateAssertion];

  if (!animateAssertion)
  {
    keyboardSceneDelegate = [(SPUITextField *)self keyboardSceneDelegate];
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      keyboardSceneDelegate2 = [(SPUITextField *)self keyboardSceneDelegate];
      v7 = [keyboardSceneDelegate2 requestAnimationAssertionWithDirection:6];
      [(SPUITextField *)self setAnimateAssertion:v7];
    }
  }

  v8 = MEMORY[0x277D65D40];
  v9 = *(MEMORY[0x277D65D40] + 16);
  if (!v9)
  {
    SPUIInitLogging();
    v9 = *(v8 + 16);
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_26B837000, v9, OS_LOG_TYPE_DEFAULT, "becomeFirstResponder", buf, 2u);
  }

  delegate = [(SPUITextField *)self delegate];
  [delegate updateDictationButtonEnabledStatus];

  delegate2 = [(SPUITextField *)self delegate];
  currentlyPresentingWebEntity = [delegate2 currentlyPresentingWebEntity];

  [(SPUITextField *)self detokenizeIfNeededAndSearch:0];
  [(SPUITextField *)self setDidShowWebEntityBeforeTap:currentlyPresentingWebEntity];
  v14.receiver = self;
  v14.super_class = SPUITextField;
  return [(UISearchTextField *)&v14 becomeFirstResponder];
}

- (void)updateCaretVisibility
{
  hintingView = [(SPUITextField *)self hintingView];
  -[SPUITextField updateCaretVisibility:](self, "updateCaretVisibility:", [hintingView hasContent] ^ 1);
}

- (void)removeCaretAssertion
{
  caretAssertion = [(SPUITextField *)self caretAssertion];
  [caretAssertion invalidate];

  [(SPUITextField *)self setCaretAssertion:0];
}

void __21__SPUITextField_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained delegate];
  [v1 backButtonPressed];
}

- (void)setSelectionGrabbersHiddenSafe:(BOOL)safe
{
  if (safe)
  {
    obtainSelectionGrabberSuppressionAssertion = [(SPUITextField *)self obtainSelectionGrabberSuppressionAssertion];
    [(SPUITextField *)self setAssertionForGrabbers:obtainSelectionGrabberSuppressionAssertion];
  }

  else
  {

    [(SPUITextField *)self setAssertionForGrabbers:0];
  }
}

- (void)keyboardFrameChanged:(id)changed
{
  userInfo = [changed userInfo];
  v5 = [userInfo objectForKeyedSubscript:*MEMORY[0x277D76BB8]];
  [v5 CGRectValue];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  tlks_screen = [(SPUITextField *)self tlks_screen];
  [tlks_screen bounds];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;

  v25.origin.x = v7;
  v25.origin.y = v9;
  v25.size.width = v11;
  v25.size.height = v13;
  v27.origin.x = v16;
  v27.origin.y = v18;
  v27.size.width = v20;
  v27.size.height = v22;
  v26 = CGRectIntersection(v25, v27);
  v23 = CGRectGetHeight(v26) <= 0.0;

  [(SPUITextField *)self updateTextAlignmentShouldCenter:v23 animated:1];
}

- (void)textFieldWasTapped
{
  if (([MEMORY[0x277D65D28] bottomSearchFieldEnabled] & 1) == 0)
  {
    delegate = [(SPUITextField *)self delegate];
    currentlyPresentingWebEntity = [delegate currentlyPresentingWebEntity];

    searchEntity = [(SPUITextField *)self searchEntity];

    if (searchEntity || (currentlyPresentingWebEntity & 1) == 0)
    {
      [(SPUITextField *)self removeCompletionsOrEntitiesAndGoToSuggestions:1];
    }

    else
    {
      v6 = MEMORY[0x277D65D40];
      v7 = *(MEMORY[0x277D65D40] + 8);
      if (!v7)
      {
        SPUIInitLogging();
        v7 = *(v6 + 8);
      }

      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *v9 = 0;
        _os_log_impl(&dword_26B837000, v7, OS_LOG_TYPE_DEFAULT, "Search field was tapped while showing web entity results, switching to suggestions.", v9, 2u);
      }

      delegate2 = [(SPUITextField *)self delegate];
      [delegate2 switchToSuggestions];
    }
  }

  [(SPUITextField *)self detokenizeIfNeededAndSearch:1];
}

- (void)detokenizeIfNeededAndSearch:(BOOL)search
{
  searchCopy = search;
  if (![MEMORY[0x277D65D28] bottomSearchFieldEnabled])
  {
    goto LABEL_18;
  }

  delegate = [(SPUITextField *)self delegate];
  if ([delegate currentlyPresentingWebEntity])
  {

    goto LABEL_5;
  }

  didShowWebEntityBeforeTap = [(SPUITextField *)self didShowWebEntityBeforeTap];

  if (didShowWebEntityBeforeTap)
  {
LABEL_5:
    tokens = [(UISearchTextField *)self tokens];
    firstObject = [tokens firstObject];
    representedObject = [firstObject representedObject];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v11 = objc_opt_class();
      tokens2 = [(UISearchTextField *)self tokens];
      firstObject2 = [tokens2 firstObject];
      representedObject2 = [firstObject2 representedObject];
      representedObject4 = [v11 webEntityStringForEntity:representedObject2];
    }

    else
    {
      tokens3 = [(UISearchTextField *)self tokens];
      firstObject3 = [tokens3 firstObject];
      representedObject3 = [firstObject3 representedObject];
      objc_opt_class();
      v19 = objc_opt_isKindOfClass();

      if ((v19 & 1) == 0)
      {
        representedObject4 = 0;
        goto LABEL_11;
      }

      tokens2 = [(UISearchTextField *)self tokens];
      firstObject2 = [tokens2 firstObject];
      representedObject4 = [firstObject2 representedObject];
    }

LABEL_11:
    if ([representedObject4 length])
    {
      [(SPUITextField *)self clearAllTokens];
      [(UISearchTextField *)self setText:representedObject4];
      [(SPUITextField *)self setNeedsLayout];
      delegate2 = [(SPUITextField *)self delegate];
      [delegate2 textFieldDidReplaceTokensWithStringEquivalent:self];
    }

    if (searchCopy)
    {
      delegate3 = [(SPUITextField *)self delegate];
      [delegate3 switchToSuggestions];
    }
  }

  if (searchCopy)
  {
    [(SPUITextField *)self becomeFirstResponder];
    v22 = dispatch_time(0, 250000000);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __45__SPUITextField_detokenizeIfNeededAndSearch___block_invoke;
    block[3] = &unk_279D06C78;
    block[4] = self;
    dispatch_after(v22, MEMORY[0x277D85CD0], block);
  }

LABEL_18:
  canvasView = [(SPUITextField *)self canvasView];
  [canvasView setAlpha:1.0];
}

- (void)removeCompletionsOrEntitiesAndGoToSuggestions:(BOOL)suggestions
{
  suggestionsCopy = suggestions;
  v5 = objc_opt_class();
  searchEntity = [(SPUITextField *)self searchEntity];
  v7 = [v5 webEntityStringForEntity:searchEntity];

  if ([v7 length])
  {
    [(SPUITextField *)self clearAllTokens];
    [(UISearchTextField *)self setText:v7];
    delegate = [(SPUITextField *)self delegate];
    [delegate textFieldDidReplaceTokensWithStringEquivalent:self];

    if (suggestionsCopy)
    {
      v9 = MEMORY[0x277D65D40];
      v10 = *(MEMORY[0x277D65D40] + 8);
      if (!v10)
      {
        SPUIInitLogging();
        v10 = *(v9 + 8);
      }

      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *v12 = 0;
        _os_log_impl(&dword_26B837000, v10, OS_LOG_TYPE_DEFAULT, "Search field was tapped while showing web entity results, switching to suggestions.", v12, 2u);
      }

      delegate2 = [(SPUITextField *)self delegate];
      [delegate2 switchToSuggestions];
    }

    else
    {
      [(SPUITextField *)self setNeedsLayout];
    }
  }

  else
  {
    [(SPUITextField *)self removeCompletionAndHighlight];
  }
}

+ (id)webEntityStringForEntity:(id)entity
{
  entityCopy = entity;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = entityCopy;
    command = [v4 command];
    entityType = [command entityType];

    if (entityType == 3)
    {
      command2 = [v4 command];
      tokenString = [command2 tokenString];
    }

    else
    {
      tokenString = 0;
    }
  }

  else
  {
    tokenString = 0;
  }

  return tokenString;
}

- (void)setFont:(id)font
{
  v6.receiver = self;
  v6.super_class = SPUITextField;
  [(SPUITextField *)&v6 setFont:font];
  font = [(SPUITextField *)self font];
  hintingView = [(SPUITextField *)self hintingView];
  [hintingView setFontForCompletionLabel:font];
}

- (BOOL)optOutOfGoButton
{
  if ([(SPUITextField *)self lastUpdateWasDeletion]&& [(SPUITextField *)self hasContent])
  {
    return 1;
  }

  restorationStringOnKBMovement = [(SPUITextField *)self restorationStringOnKBMovement];
  v3 = restorationStringOnKBMovement != 0;

  return v3;
}

- (void)setSearchFieldModel:(id)model
{
  modelCopy = model;
  hintingView = [(SPUITextField *)self hintingView];
  [hintingView setSearchFieldModel:modelCopy];

  [(SPUITextField *)self updateCaretVisibility];
}

- (id)currentQueryContext
{
  hintingView = [(SPUITextField *)self hintingView];
  searchFieldModel = [hintingView searchFieldModel];

  return searchFieldModel;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer
{
  recognizerCopy = recognizer;
  completionTapGestureRecognizer = [(SPUITextField *)self completionTapGestureRecognizer];

  if (completionTapGestureRecognizer == recognizerCopy)
  {
    delegate = [(SPUITextField *)self delegate];
    currentlyPresentingWebEntity = [delegate currentlyPresentingWebEntity];

    if ([MEMORY[0x277D65D28] bottomSearchFieldEnabled])
    {
      if (currentlyPresentingWebEntity)
      {
        return [(SPUITextField *)self isFirstResponder]^ 1;
      }
    }

    else if (currentlyPresentingWebEntity && [(SPUITextField *)self isEditing])
    {
      selectedTextRange = [(SPUITextField *)self selectedTextRange];
      v7 = [selectedTextRange isEmpty] ^ 1;

      return v7;
    }
  }

  LOBYTE(v7) = 1;
  return v7;
}

- (void)beginFloatingCursorAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  [(SPUITextField *)self removeCompletionAndHighlight];
  v6.receiver = self;
  v6.super_class = SPUITextField;
  [(SPUITextField *)&v6 beginFloatingCursorAtPoint:x, y];
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  beginCopy = begin;
  completionTapGestureRecognizer = [(SPUITextField *)self completionTapGestureRecognizer];

  if (completionTapGestureRecognizer == beginCopy)
  {
    firstResponder = [(SPUITextField *)self firstResponder];
    v6 = firstResponder == 0;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = SPUITextField;
    if ([(UISearchTextField *)&v9 gestureRecognizerShouldBegin:beginCopy])
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(SPUITextField *)self removeCompletionAndHighlight];
      }

      v6 = 1;
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (void)pressesEnded:(id)ended withEvent:(id)event
{
  endedCopy = ended;
  eventCopy = event;
  responderForKeyboardInput = [(SPUITextField *)self responderForKeyboardInput];
  if (responderForKeyboardInput && (v9 = responderForKeyboardInput, v10 = [MEMORY[0x277D75658] isInHardwareKeyboardMode], v9, v10))
  {
    responderForKeyboardInput2 = [(SPUITextField *)self responderForKeyboardInput];
    [responderForKeyboardInput2 pressesEnded:endedCopy withEvent:eventCopy];
  }

  else
  {
    v12.receiver = self;
    v12.super_class = SPUITextField;
    [(SPUITextField *)&v12 pressesEnded:endedCopy withEvent:eventCopy];
  }
}

- (BOOL)keyboardInputShouldDelete:(id)delete
{
  deleteCopy = delete;
  hintingView = [(SPUITextField *)self hintingView];
  hasContent = [hintingView hasContent];

  v10.receiver = self;
  v10.super_class = SPUITextField;
  LODWORD(hintingView) = [(SPUITextField *)&v10 keyboardInputShouldDelete:deleteCopy];

  if (!hintingView)
  {
    return 0;
  }

  if (!(hasContent & 1 | ![(SPUITextField *)self lastUpdateWasDeletion]))
  {
    return 1;
  }

  [(SPUITextField *)self setLastUpdateWasDeletion:1];
  hintingView2 = [(SPUITextField *)self hintingView];
  [hintingView2 updateWithResult:0 cardSection:0 focusIsOnFirstResult:1];

  if ([(SPUITextField *)self returnKeyType]!= 6)
  {
    [(SPUITextField *)self setReturnKeyType:6];
    [objc_opt_class() updateBlueButton];
  }

  [(SPUITextField *)self updateCaretVisibility:1];
  delegate = [(SPUITextField *)self delegate];
  [delegate removeCompletionAndHighlightAsTyped:1];

  return hasContent ^ 1;
}

- (void)insertText:(id)text
{
  textCopy = text;
  [(SPUITextField *)self resetDeletion];
  v5.receiver = self;
  v5.super_class = SPUITextField;
  [(UISearchTextField *)&v5 insertText:textCopy];
}

- (_NSRange)insertFilteredText:(id)text
{
  v9.receiver = self;
  v9.super_class = SPUITextField;
  v4 = [(UISearchTextField *)&v9 insertFilteredText:text];
  v6 = v5;
  [(SPUITextField *)self resetDeletion];
  v7 = v4;
  v8 = v6;
  result.length = v8;
  result.location = v7;
  return result;
}

- (void)resetDeletion
{
  [(SPUITextField *)self setLastUpdateWasDeletion:0];

  [(SPUITextField *)self setRestorationStringOnKBMovement:0];
}

- (BOOL)resignFirstResponder
{
  [(SPUITextField *)self removeCompletionAndHighlight];
  v3 = MEMORY[0x277D65D40];
  v4 = *(MEMORY[0x277D65D40] + 16);
  if (!v4)
  {
    SPUIInitLogging();
    v4 = *(v3 + 16);
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_26B837000, v4, OS_LOG_TYPE_DEFAULT, "resignFirstResponder", buf, 2u);
  }

  v6.receiver = self;
  v6.super_class = SPUITextField;
  return [(UISearchTextField *)&v6 resignFirstResponder];
}

- (void)removeCompletionAndHighlight
{
  hintingView = [(SPUITextField *)self hintingView];
  focusIsOnFirstResult = [hintingView focusIsOnFirstResult];

  hintingView2 = [(SPUITextField *)self hintingView];
  [hintingView2 updateWithResult:0 cardSection:0 focusIsOnFirstResult:0];

  if (focusIsOnFirstResult)
  {
    delegate = [(SPUITextField *)self delegate];
    [delegate removeCompletionAndHighlightAsTyped:0];
  }

  [(SPUITextField *)self updateCaretVisibility];
}

- (void)selectAll:(id)all
{
  v4.receiver = self;
  v4.super_class = SPUITextField;
  [(SPUITextField *)&v4 selectAll:all];
  [(SPUITextField *)self removeCompletionsOrEntitiesAndGoToSuggestions:0];
  [(SPUITextField *)self removeCaretAssertion];
}

- (BOOL)shouldPromoteCompletion
{
  if (([(SPUITextField *)self hasMarkedText]& 1) != 0)
  {
    return 0;
  }

  hintingView = [(SPUITextField *)self hintingView];
  completionText = [hintingView completionText];
  v3 = completionText != 0;

  return v3;
}

- (void)setTextColor:(id)color
{
  v6.receiver = self;
  v6.super_class = SPUITextField;
  colorCopy = color;
  [(SPUITextField *)&v6 setTextColor:colorCopy];
  v5 = [(SPUITextField *)self hintingView:v6.receiver];
  [v5 setTextColorForCompletionLabel:colorCopy];
}

- (void)buildMenuWithBuilder:(id)builder
{
  v4.receiver = self;
  v4.super_class = SPUITextField;
  builderCopy = builder;
  [(SPUITextField *)&v4 buildMenuWithBuilder:builderCopy];
  [builderCopy removeMenuForIdentifier:{@"com.apple.menu.insert-from-external-sources", v4.receiver, v4.super_class}];
}

- (void)resetClearButton
{
  v3 = [(SPUITextField *)self accessoryIconWithSymbolName:@"xmark.circle.fill"];
  [(UISearchTextField *)self _setClearButtonImage:v3 forState:0];
}

- (id)preferredFocusEnvironments
{
  v12[2] = *MEMORY[0x277D85DE8];
  responderForKeyboardInput = [(SPUITextField *)self responderForKeyboardInput];
  if (!responderForKeyboardInput)
  {
    goto LABEL_4;
  }

  v4 = responderForKeyboardInput;
  hintingView = [(SPUITextField *)self hintingView];
  result = [hintingView result];

  if (result)
  {
    responderForKeyboardInput2 = [(SPUITextField *)self responderForKeyboardInput];
    v12[0] = responderForKeyboardInput2;
    v12[1] = self;
    preferredFocusEnvironments = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:2];
  }

  else
  {
LABEL_4:
    v11.receiver = self;
    v11.super_class = SPUITextField;
    preferredFocusEnvironments = [(SPUITextField *)&v11 preferredFocusEnvironments];
  }

  v9 = *MEMORY[0x277D85DE8];

  return preferredFocusEnvironments;
}

- (CGRect)_shiftedBoundsForText:(CGRect)text
{
  height = text.size.height;
  width = text.size.width;
  y = text.origin.y;
  x = text.origin.x;
  if ([MEMORY[0x277D65D28] enableFloatingWindow])
  {
    [(SPUITextField *)self textFieldHeight];
    v9 = v8;
    tokens = [(UISearchTextField *)self tokens];
    v11 = [tokens count];
    v12 = 12.0;
    if (!v11)
    {
      v12 = 4.0;
    }

    x = v9 - v12;

    [(SPUITextField *)self bounds];
    width = CGRectGetWidth(v26) - (v9 + v9);
    mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
    userInterfaceLayoutDirection = [mEMORY[0x277D75128] userInterfaceLayoutDirection];

    if (!userInterfaceLayoutDirection)
    {
      hintingView = [(SPUITextField *)self hintingView];
      [hintingView trailingPaddingForFieldEditor];
      width = width - v16;
    }
  }

  else if ([MEMORY[0x277D65D28] bottomSearchFieldEnabled])
  {
    mEMORY[0x277D75128]2 = [MEMORY[0x277D75128] sharedApplication];
    userInterfaceLayoutDirection2 = [mEMORY[0x277D75128]2 userInterfaceLayoutDirection];

    if (!userInterfaceLayoutDirection2)
    {
      if (_UISolariumEnabled())
      {
        [MEMORY[0x277D6F1B8] deviceScaledRoundedValue:self forView:1.0];
        x = x + v19;
        v20 = -2.0;
      }

      else
      {
        [MEMORY[0x277D6F1B8] deviceScaledRoundedValue:self forView:7.5];
        x = x + v21;
        v20 = -16.0;
      }

      width = width + v20;
    }
  }

  v22 = x;
  v23 = y;
  v24 = width;
  v25 = height;
  result.size.height = v25;
  result.size.width = v24;
  result.origin.y = v23;
  result.origin.x = v22;
  return result;
}

- (CGRect)textRectForBounds:(CGRect)bounds
{
  v8.receiver = self;
  v8.super_class = SPUITextField;
  [(UISearchTextField *)&v8 textRectForBounds:bounds.origin.x, bounds.origin.y, bounds.size.width, bounds.size.height];
  [(SPUITextField *)self _shiftedBoundsForText:?];
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (CGRect)editingRectForBounds:(CGRect)bounds
{
  v8.receiver = self;
  v8.super_class = SPUITextField;
  [(UISearchTextField *)&v8 editingRectForBounds:bounds.origin.x, bounds.origin.y, bounds.size.width, bounds.size.height];
  [(SPUITextField *)self _shiftedBoundsForText:?];
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (CGRect)clearButtonRectForBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  if ([MEMORY[0x277D65D28] enableFloatingWindow])
  {
    if ([(SPUITextField *)self effectiveUserInterfaceLayoutDirection])
    {
      [(SPUITextField *)self leftViewRectForBounds:x, y, width, height];
    }

    else
    {
      [(SPUITextField *)self rightViewRectForBounds:x, y, width, height];
    }

    goto LABEL_9;
  }

  if (![MEMORY[0x277D65D28] bottomSearchFieldEnabled])
  {
    v27.receiver = self;
    v27.super_class = SPUITextField;
    [(UISearchTextField *)&v27 clearButtonRectForBounds:x, y, width, height];
LABEL_9:
    v15 = v9;
    v17 = v10;
    v19 = v11;
    goto LABEL_14;
  }

  v28.receiver = self;
  v28.super_class = SPUITextField;
  [(UISearchTextField *)&v28 clearButtonRectForBounds:x, y, width, height];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = _UISolariumEnabled();
  effectiveUserInterfaceLayoutDirection = [(SPUITextField *)self effectiveUserInterfaceLayoutDirection];
  if (v20)
  {
    v22 = -3.0;
    v23 = 3.0;
  }

  else
  {
    v22 = -3.5;
    v23 = 7.5;
  }

  if (!effectiveUserInterfaceLayoutDirection)
  {
    v22 = v23;
  }

  v8 = v13 - v22;
LABEL_14:
  v24 = v15;
  v25 = v17;
  v26 = v19;
  result.size.height = v26;
  result.size.width = v25;
  result.origin.y = v24;
  result.origin.x = v8;
  return result;
}

- (CGRect)leftViewRectForBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  if ([MEMORY[0x277D65D28] enableFloatingWindow])
  {
    [(SPUITextField *)self textFieldHeight];
    v9 = v8;
    v10 = v8 + 1.0;
    v11 = _UISolariumEnabled();
    v12 = -1.0;
    if (v11)
    {
      v12 = 1.0;
    }

    v13 = x + v12;
  }

  else if ([MEMORY[0x277D65D28] bottomSearchFieldEnabled])
  {
    v27.receiver = self;
    v27.super_class = SPUITextField;
    [(UISearchTextField *)&v27 leftViewRectForBounds:x, y, width, height];
    v15 = v14;
    y = v16;
    v10 = v17;
    v9 = v18;
    v19 = _UISolariumEnabled();
    v13 = v15 + 7.0;
    if (v19)
    {
      v13 = v15;
    }
  }

  else
  {
    v26.receiver = self;
    v26.super_class = SPUITextField;
    [(UISearchTextField *)&v26 leftViewRectForBounds:x, y, width, height];
    y = v20;
    v10 = v21;
    v9 = v22;
  }

  v23 = y;
  v24 = v10;
  v25 = v9;
  result.size.height = v25;
  result.size.width = v24;
  result.origin.y = v23;
  result.origin.x = v13;
  return result;
}

- (CGRect)rightViewRectForBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  if ([MEMORY[0x277D65D28] enableFloatingWindow])
  {
    [(SPUITextField *)self textFieldHeight];
    v9 = v8;
    v24.origin.x = x;
    v24.origin.y = y;
    v24.size.width = width;
    v24.size.height = height;
    v10 = CGRectGetMaxX(v24) - v9;
    v11 = _UISolariumEnabled();
    v12 = 2.0;
    if (v11)
    {
      v12 = 3.0;
    }

    v13 = v10 - v12;
    v14 = v9;
  }

  else if ([MEMORY[0x277D65D28] bottomSearchFieldEnabled])
  {
    v23.receiver = self;
    v23.super_class = SPUITextField;
    [(UISearchTextField *)&v23 rightViewRectForBounds:x, y, width, height];
    y = v15;
    v9 = v16;
    v13 = v17 + -3.5;
  }

  else
  {
    v22.receiver = self;
    v22.super_class = SPUITextField;
    [(UISearchTextField *)&v22 rightViewRectForBounds:x, y, width, height];
    y = v18;
    v9 = v19;
  }

  v20 = y;
  v21 = v9;
  result.size.height = v14;
  result.size.width = v21;
  result.origin.y = v20;
  result.origin.x = v13;
  return result;
}

- (BOOL)needsLandscapeHeight
{
  if (([(SPUITextField *)self activeInterfaceOrientation]- 3) > 1)
  {
    return 0;
  }

  else
  {
    return [MEMORY[0x277D4C898] isIpad] ^ 1;
  }
}

- (void)updateToken:(id)token
{
  tokenCopy = token;
  [(SPUITextField *)self setIgnoreTokensUpdate:1];
  [(SPUITextField *)self clearAllTokens];
  if (tokenCopy)
  {
    [(UISearchTextField *)self insertToken:tokenCopy atIndex:0];
  }

  [(SPUITextField *)self setIgnoreTokensUpdate:0];
  [(SPUITextField *)self updateRightView];
}

- (void)updateTextRange:(id)range
{
  rangeCopy = &stru_287C49600;
  if (range)
  {
    rangeCopy = range;
  }

  v6 = rangeCopy;
  rangeCopy2 = range;
  [(SPUITextField *)self setIgnoreTokensUpdate:1];
  textualRange = [(UISearchTextField *)self textualRange];
  [(UISearchTextField *)self replaceRange:textualRange withText:v6];

  [(SPUITextField *)self setIgnoreTokensUpdate:0];
  [(SPUITextField *)self updateRightView];
}

- (void)setShowsBackButton:(BOOL)button
{
  buttonCopy = button;
  self->_showsBackButton = button;
  leftView = [(SPUITextField *)self leftView];
  configuration = [leftView configuration];
  if (_UISolariumEnabled())
  {
    enableFloatingWindow = [MEMORY[0x277D65D28] enableFloatingWindow];
    if (buttonCopy)
    {
      if (enableFloatingWindow)
      {
        v7 = 2;
      }

      else
      {
        v7 = 3;
      }

      accessoryIconFont = [(SPUITextField *)self accessoryIconFont];
      v9 = @"chevron.backward";
      selfCopy2 = self;
      v11 = v7;
    }

    else
    {
      if (enableFloatingWindow)
      {
        [MEMORY[0x277D74300] systemFontOfSize:24.0];
      }

      else
      {
        [(SPUITextField *)self accessoryIconFont];
      }
      accessoryIconFont = ;
      v9 = @"magnifyingglass";
      selfCopy2 = self;
      v11 = 2;
    }

    v14 = [(SPUITextField *)selfCopy2 accessoryIconWithSymbolName:v9 scale:v11 font:accessoryIconFont];
    [configuration setImage:v14];

    secondaryColor = [(SPUITextField *)self secondaryColor];
    [configuration setBaseForegroundColor:secondaryColor];
  }

  else
  {
    if (buttonCopy)
    {
      v12 = @"chevron.backward";
    }

    else
    {
      v12 = @"magnifyingglass";
    }

    secondaryColor = [(SPUITextField *)self accessoryIconWithSymbolName:v12];
    [configuration setImage:secondaryColor];
  }

  [leftView setConfiguration:configuration];
}

- (id)accessoryIconWithSymbolName:(id)name
{
  nameCopy = name;
  if (_UISolariumEnabled())
  {
    v5 = 2;
  }

  else
  {
    v5 = -1;
  }

  accessoryIconFont = [(SPUITextField *)self accessoryIconFont];
  v7 = [(SPUITextField *)self accessoryIconWithSymbolName:nameCopy scale:v5 font:accessoryIconFont];

  return v7;
}

- (id)accessoryIconWithSymbolName:(id)name scale:(int64_t)scale font:(id)font
{
  nameCopy = name;
  fontCopy = font;
  enableFloatingWindow = [MEMORY[0x277D65D28] enableFloatingWindow];
  v10 = MEMORY[0x277D4C890];
  if (enableFloatingWindow)
  {
    if (_UISolariumEnabled())
    {
      v11 = 5;
    }

    else
    {
      v11 = 6;
    }

    v12 = [v10 uiImageWithSymbolName:nameCopy font:fontCopy scale:scale weight:v11 isTemplate:1];
  }

  else
  {
    v12 = [MEMORY[0x277D4C890] uiImageWithSymbolName:nameCopy font:fontCopy scale:scale];
  }

  v13 = v12;

  return v13;
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v9.receiver = self;
  v9.super_class = SPUITextField;
  [(SPUITextField *)&v9 traitCollectionDidChange:changeCopy];
  traitCollection = [(SPUITextField *)self traitCollection];
  if ([traitCollection hasDifferentColorAppearanceComparedToTraitCollection:changeCopy])
  {

LABEL_4:
    [(SPUITextField *)self tlk_updateWithCurrentAppearance];
    goto LABEL_5;
  }

  traitCollection2 = [(SPUITextField *)self traitCollection];
  _vibrancy = [traitCollection2 _vibrancy];
  _vibrancy2 = [changeCopy _vibrancy];

  if (_vibrancy != _vibrancy2)
  {
    goto LABEL_4;
  }

LABEL_5:
}

- (void)didMoveToWindow
{
  v3.receiver = self;
  v3.super_class = SPUITextField;
  [(SPUITextField *)&v3 didMoveToWindow];
  [(SPUITextField *)self tlk_updateWithCurrentAppearance];
}

- (void)tlk_updateForAppearance:(id)appearance
{
  appearanceCopy = appearance;
  [(SPUITextField *)self resetPhoneClearButton];
  -[SPUITextField updateWithAppearance:isOnDarkBackground:](self, "updateWithAppearance:isOnDarkBackground:", appearanceCopy, [appearanceCopy isDark]);
}

- (void)updateWithAppearance:(id)appearance isOnDarkBackground:(BOOL)background
{
  backgroundCopy = background;
  v61[2] = *MEMORY[0x277D85DE8];
  appearanceCopy = appearance;
  primaryColor = [appearanceCopy primaryColor];
  primaryColor = self->_primaryColor;
  self->_primaryColor = primaryColor;

  secondaryColor = [appearanceCopy secondaryColor];
  secondaryColor = self->_secondaryColor;
  self->_secondaryColor = secondaryColor;

  tertiaryColor = [appearanceCopy tertiaryColor];
  tertiaryColor = self->_tertiaryColor;
  self->_tertiaryColor = tertiaryColor;

  self->_isOnDarkBackground = backgroundCopy;
  if (([MEMORY[0x277D65D28] enableFloatingWindow] & 1) == 0)
  {
    IsReduceTransparencyEnabled = UIAccessibilityIsReduceTransparencyEnabled();
    if (IsReduceTransparencyEnabled)
    {
      v14 = 0;
      v15 = 0;
      v16 = 0;
    }

    else
    {
      if (backgroundCopy)
      {
        [MEMORY[0x277D75348] whiteColor];
      }

      else
      {
        [MEMORY[0x277D75348] blackColor];
      }
      v16 = ;
      v15 = !backgroundCopy;
      v14 = backgroundCopy;
    }

    tintView = [(SPUITextField *)self tintView];
    [tintView setBackgroundColor:v16];

    if (v15)
    {
    }

    if (v14)
    {
    }

    v18 = MEMORY[0x277CDA5E8];
    if (!backgroundCopy)
    {
      v18 = MEMORY[0x277CDA5D8];
    }

    v19 = *v18;
    if (IsReduceTransparencyEnabled)
    {
      v20 = 0;
    }

    else
    {
      v20 = v19;
    }

    tintView2 = [(SPUITextField *)self tintView];
    layer = [tintView2 layer];
    [layer setCompositingFilter:v20];
  }

  primaryColor2 = [(SPUITextField *)self primaryColor];
  [(SPUITextField *)self setTintColor:primaryColor2];

  primaryColor3 = [(SPUITextField *)self primaryColor];
  [(SPUITextField *)self setTextColor:primaryColor3];

  if (_UISolariumEnabled())
  {
    bottomSearchFieldEnabled = [MEMORY[0x277D65D28] bottomSearchFieldEnabled];
    leftView = [(SPUITextField *)self leftView];
    v27 = leftView;
    if (bottomSearchFieldEnabled)
    {
      v61[0] = leftView;
      _clearButton = [(SPUITextField *)self _clearButton];
      v61[1] = _clearButton;
      v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v61 count:2];

      _placeholderLabel = [(SPUITextField *)self _placeholderLabel];
      v60 = _placeholderLabel;
      v31 = [MEMORY[0x277CBEA60] arrayWithObjects:&v60 count:1];

      rightView = [(SPUITextField *)self rightView];

      if (rightView)
      {
        rightView2 = [(SPUITextField *)self rightView];
        v34 = [v31 arrayByAddingObject:rightView2];
        v35 = MEMORY[0x277CBEBF8];
LABEL_26:

        v29 = v34;
        goto LABEL_30;
      }

      v35 = MEMORY[0x277CBEBF8];
    }

    else
    {
      v59[0] = leftView;
      _clearButton2 = [(SPUITextField *)self _clearButton];
      v59[1] = _clearButton2;
      v31 = [MEMORY[0x277CBEA60] arrayWithObjects:v59 count:2];

      _placeholderLabel2 = [(SPUITextField *)self _placeholderLabel];
      v58 = _placeholderLabel2;
      v35 = [MEMORY[0x277CBEA60] arrayWithObjects:&v58 count:1];

      rightView3 = [(SPUITextField *)self rightView];

      if (rightView3)
      {
        rightView2 = [(SPUITextField *)self rightView];
        v44 = [v31 arrayByAddingObject:rightView2];
        v29 = v31;
        v34 = MEMORY[0x277CBEBF8];
        v31 = v44;
        goto LABEL_26;
      }

      v29 = MEMORY[0x277CBEBF8];
    }
  }

  else
  {
    leftView2 = [(SPUITextField *)self leftView];
    v57[0] = leftView2;
    _clearButton3 = [(SPUITextField *)self _clearButton];
    v57[1] = _clearButton3;
    _placeholderLabel3 = [(SPUITextField *)self _placeholderLabel];
    v57[2] = _placeholderLabel3;
    v31 = [MEMORY[0x277CBEA60] arrayWithObjects:v57 count:3];

    rightView4 = [(SPUITextField *)self rightView];

    if (rightView4)
    {
      rightView2 = [(SPUITextField *)self rightView];
      v40 = [v31 arrayByAddingObject:rightView2];
      v29 = v31;
      v34 = MEMORY[0x277CBEBF8];
      v31 = v40;
      v35 = MEMORY[0x277CBEBF8];
      goto LABEL_26;
    }

    v29 = MEMORY[0x277CBEBF8];
    v35 = MEMORY[0x277CBEBF8];
  }

LABEL_30:
  primaryColor4 = [(SPUITextField *)self primaryColor];
  [(SPUITextField *)self setAppearance:appearanceCopy tintColor:primaryColor4 forViews:v29];

  secondaryColor2 = [(SPUITextField *)self secondaryColor];
  [(SPUITextField *)self setAppearance:appearanceCopy tintColor:secondaryColor2 forViews:v31];

  tertiaryColor2 = [(SPUITextField *)self tertiaryColor];
  [(SPUITextField *)self setAppearance:appearanceCopy tintColor:tertiaryColor2 forViews:v35];

  if (_UISolariumEnabled())
  {
    tertiaryColor3 = [(SPUITextField *)self tertiaryColor];
  }

  else
  {
    primaryColor5 = [(SPUITextField *)self primaryColor];
    tertiaryColor3 = [primaryColor5 colorWithAlphaComponent:0.36];
  }

  placeholder = [(SPUITextField *)self placeholder];

  if (placeholder)
  {
    v51 = objc_alloc(MEMORY[0x277CCA898]);
    placeholder2 = [(SPUITextField *)self placeholder];
    v55 = *MEMORY[0x277D740C0];
    v56 = tertiaryColor3;
    v53 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v56 forKeys:&v55 count:1];
    placeholder = [v51 initWithString:placeholder2 attributes:v53];
  }

  [(SPUITextField *)self setAttributedPlaceholder:placeholder];
  if ([MEMORY[0x277D65D28] enableFloatingWindow])
  {
    [(SPUITextField *)self setShowsBackButton:self->_showsBackButton];
  }

  v54 = *MEMORY[0x277D85DE8];
}

- (void)setAppearance:(id)appearance tintColor:(id)color forViews:(id)views
{
  v22 = *MEMORY[0x277D85DE8];
  appearanceCopy = appearance;
  colorCopy = color;
  viewsCopy = views;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v10 = [viewsCopy countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    do
    {
      v13 = 0;
      do
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(viewsCopy);
        }

        v14 = *(*(&v17 + 1) + 8 * v13);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          configuration = [v14 configuration];
          [configuration setBaseForegroundColor:colorCopy];
        }

        [v14 setTintColor:colorCopy];
        [appearanceCopy enableAppearanceForView:v14];
        ++v13;
      }

      while (v11 != v13);
      v11 = [viewsCopy countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
  senderCopy = sender;
  if (NSSelectorFromString(&cfstr_Define.isa) == action || NSSelectorFromString(&cfstr_Lookup.isa) == action || NSSelectorFromString(&cfstr_Share.isa) == action || NSSelectorFromString(&cfstr_Translate.isa) == action)
  {
    LOBYTE(v8) = 0;
  }

  else
  {
    v14.receiver = self;
    v14.super_class = SPUITextField;
    v7 = [(UISearchTextField *)&v14 canPerformAction:action withSender:senderCopy];
    if (sel_enterKeyPressed == action)
    {
      v8 = [(SPUITextField *)self hasMarkedText]^ 1;
    }

    else if (sel_commitToCommitedSearch == action || (LOBYTE(v8) = v7, sel_toggleCommitedSearch == action))
    {
      if (([(SPUITextField *)self hasMarkedText]& 1) != 0)
      {
        v8 = 0;
      }

      else
      {
        text = [(UISearchTextField *)self text];
        if ([text length])
        {
          tokens = [(UISearchTextField *)self tokens];
          v8 = [tokens count] == 0;
        }

        else
        {
          v8 = 0;
        }
      }

      if (sel_toggleCommitedSearch == action)
      {
        switchBackToSuggestionsTimer = [(SPUITextField *)self switchBackToSuggestionsTimer];
        if (([switchBackToSuggestionsTimer isValid] & 1) == 0)
        {
          delegate = [(SPUITextField *)self delegate];
          v8 &= [delegate lastQueryKindSupportsOptionKey];
        }
      }
    }
  }

  return v8;
}

- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator
{
  v8.receiver = self;
  v8.super_class = SPUITextField;
  contextCopy = context;
  [(SPUITextField *)&v8 didUpdateFocusInContext:contextCopy withAnimationCoordinator:coordinator];
  nextFocusedView = [contextCopy nextFocusedView];

  if (nextFocusedView == self)
  {
    [(SPUITextField *)self removeCompletionAndHighlight];
  }
}

- (id)keyCommands
{
  v14[4] = *MEMORY[0x277D85DE8];
  v13.receiver = self;
  v13.super_class = SPUITextField;
  keyCommands = [(SPUITextField *)&v13 keyCommands];
  if (!keyCommands_spotlightKeyCommands)
  {
    v3 = [MEMORY[0x277D75650] keyCommandWithInput:*MEMORY[0x277D76AD8] modifierFlags:0 action:sel_escapeKeyCommand];
    v4 = [MEMORY[0x277D75650] keyCommandWithInput:@"\r" modifierFlags:0 action:sel_enterKeyPressed];
    v5 = [MEMORY[0x277D75650] keyCommandWithInput:&stru_287C49600 modifierFlags:0x80000 action:sel_toggleCommitedSearch];
    v6 = [MEMORY[0x277D75650] keyCommandWithInput:@"\r" modifierFlags:0x80000 action:sel_commitToCommitedSearch];
    v14[0] = v3;
    v14[1] = v4;
    v14[2] = v5;
    v14[3] = v6;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:4];
    v8 = keyCommands_spotlightKeyCommands;
    keyCommands_spotlightKeyCommands = v7;
  }

  if (keyCommands)
  {
    v9 = [keyCommands arrayByAddingObjectsFromArray:keyCommands_spotlightKeyCommands];
  }

  else
  {
    v9 = keyCommands_spotlightKeyCommands;
  }

  v10 = v9;

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (void)toggleCommitedSearch
{
  switchBackToSuggestionsTimer = [(SPUITextField *)self switchBackToSuggestionsTimer];
  isValid = [switchBackToSuggestionsTimer isValid];

  if ((isValid & 1) == 0)
  {
    delegate = [(SPUITextField *)self delegate];
    [delegate commitSearch];
  }

  switchBackToSuggestionsTimer2 = [(SPUITextField *)self switchBackToSuggestionsTimer];
  [switchBackToSuggestionsTimer2 invalidate];

  v7 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:self target:sel_toggleBackToCommittedSearch selector:0 userInfo:0 repeats:0.25];
  [(SPUITextField *)self setSwitchBackToSuggestionsTimer:v7];
}

- (void)commitToCommitedSearch
{
  switchBackToSuggestionsTimer = [(SPUITextField *)self switchBackToSuggestionsTimer];
  [switchBackToSuggestionsTimer invalidate];

  [(SPUITextField *)self setSwitchBackToSuggestionsTimer:0];
}

- (void)toggleBackToCommittedSearch
{
  delegate = [(SPUITextField *)self delegate];
  [delegate switchToSuggestions];
}

- (void)enterKeyPressed
{
  delegate = [(SPUITextField *)self delegate];
  [delegate returnKeyPressed];

  [(SPUITextField *)self setLastUpdateWasDeletion:0];
}

- (void)escapeKeyCommand
{
  if (([(SPUITextField *)self hasMarkedText]& 1) != 0)
  {
    return;
  }

  text = [(UISearchTextField *)self text];
  if ([text length])
  {
  }

  else
  {
    tokens = [(UISearchTextField *)self tokens];
    v5 = [tokens count];

    if (!v5)
    {
      delegate = [(SPUITextField *)self delegate];
      [delegate escapeKeyPressed];
      goto LABEL_6;
    }
  }

  [(UISearchTextField *)self setText:&stru_287C49600];
  v6 = objc_opt_new();
  [(UISearchTextField *)self setTokens:v6];

  delegate = [(UISearchTextField *)self textualRange];
  [UISearchTextField replaceRange:"replaceRange:withText:" withText:?];
LABEL_6:
}

- (void)updateCaretVisibility:(BOOL)visibility
{
  if (visibility)
  {

    [(SPUITextField *)self removeCaretAssertion];
  }

  else
  {
    caretAssertion = [(SPUITextField *)self caretAssertion];

    if (!caretAssertion)
    {
      _textInteraction = [(SPUITextField *)self _textInteraction];
      _assertionController = [_textInteraction _assertionController];
      v6 = [_assertionController nonVisibleAssertionWithReason:@"spotlightHasCompletion"];
      [(SPUITextField *)self setCaretAssertion:v6];
    }
  }
}

- (void)_promoteCompletionAndMoveForward:(BOOL)forward
{
  text = [(UISearchTextField *)self text];
  text2 = [(UISearchTextField *)self text];
  v6 = [text2 length];

  hintingView = [(SPUITextField *)self hintingView];
  completionText = [hintingView completionText];
  [(UISearchTextField *)self setText:completionText];

  if (!forward)
  {
    beginningOfDocument = [(SPUITextField *)self beginningOfDocument];
    v10 = [(SPUITextField *)self positionFromPosition:beginningOfDocument inDirection:2 offset:v6];

    v11 = [(SPUITextField *)self textRangeFromPosition:v10 toPosition:v10];
    [(SPUITextField *)self setSelectedTextRange:v11];
  }

  v12 = [SPUICompletionStringModel alloc];
  text3 = [(UISearchTextField *)self text];
  hintingView2 = [(SPUITextField *)self hintingView];
  searchFieldModel = [hintingView2 searchFieldModel];
  v16 = -[SPUICompletionStringModel initWithTypedString:hasTokens:queryId:hasMarkedText:](v12, "initWithTypedString:hasTokens:queryId:hasMarkedText:", text3, 0, [searchFieldModel queryId], 0);
  hintingView3 = [(SPUITextField *)self hintingView];
  [hintingView3 setSearchFieldModel:v16];

  [(SPUITextField *)self updateFocusResult:0 cardSection:0 focusIsOnFirstResult:1];
  [(SPUITextField *)self setRestorationStringOnKBMovement:text];
}

- (void)unmarkText
{
  v4.receiver = self;
  v4.super_class = SPUITextField;
  [(SPUITextField *)&v4 unmarkText];
  [(SPUITextField *)self setLastUpdateWasDeletion:0];
  delegate = [(SPUITextField *)self delegate];
  [delegate highlightResultAfterUnmarkingText];
}

- (void)setIsInDictationMode:(BOOL)mode
{
  modeCopy = mode;
  self->_isInDictationMode = mode;
  hintingView = [(SPUITextField *)self hintingView];
  v5 = ([hintingView hasPrefix] ^ 1 | modeCopy);
  _fieldEditor = [(SPUITextField *)self _fieldEditor];
  [_fieldEditor setAlpha:v5];
}

- (void)resetMicrophoneButton
{
  v15[1] = *MEMORY[0x277D85DE8];
  if (_UISolariumEnabled())
  {
    v3 = @"mic";
  }

  else
  {
    v3 = @"mic.fill";
  }

  v4 = [(SPUITextField *)self accessoryIconWithSymbolName:v3];
  microphoneImage = [(SPUITextField *)self microphoneImage];
  v6 = [microphoneImage isEqual:v4];

  if ((v6 & 1) == 0)
  {
    [(SPUITextField *)self setMicrophoneImage:v4];
    delegate = [(SPUITextField *)self delegate];
    v8 = [SPUIDictationButton systemButtonWithImage:v4 target:delegate action:sel_dictationButtonPressed];
    [(SPUITextField *)self setRightView:v8];

    if (_UISolariumEnabled() && ([MEMORY[0x277D65D28] bottomSearchFieldEnabled] & 1) != 0)
    {
      primaryColor = [(SPUITextField *)self primaryColor];
    }

    else
    {
      primaryColor = [(SPUITextField *)self secondaryColor];
    }

    v10 = primaryColor;
    v11 = [MEMORY[0x277D6F1A0] bestAppearanceForView:self];
    rightView = [(SPUITextField *)self rightView];
    v15[0] = rightView;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
    [(SPUITextField *)self setAppearance:v11 tintColor:v10 forViews:v13];
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (BOOL)completionResultIsPotentiallyPunchout
{
  hintingView = [(SPUITextField *)self hintingView];
  completionResultIsPotentiallyPunchout = [hintingView completionResultIsPotentiallyPunchout];

  return completionResultIsPotentiallyPunchout;
}

+ (void)updateBlueButton
{
  if (([MEMORY[0x277D75658] isInHardwareKeyboardMode] & 1) == 0)
  {
    activeKeyboard = [MEMORY[0x277D75658] activeKeyboard];
    [activeKeyboard textInputTraitsDidChange];

    activeInstance = [MEMORY[0x277D75678] activeInstance];
    [activeInstance updateReturnKey:1];
  }
}

- (void)cut:(id)cut
{
  cutCopy = cut;
  delegate = [(SPUITextField *)self delegate];
  [delegate textWasCutFromTextField:self];

  v6.receiver = self;
  v6.super_class = SPUITextField;
  [(UISearchTextField *)&v6 cut:cutCopy];
}

@end