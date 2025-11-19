@interface SPUITextField
+ (double)lineHeightMultiplierForCurrentLanguage;
+ (id)webEntityStringForEntity:(id)a3;
+ (void)updateBlueButton;
- (BOOL)becomeFirstResponder;
- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4;
- (BOOL)completionResultIsPotentiallyPunchout;
- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4;
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (BOOL)hasContent;
- (BOOL)keyboardInputShouldDelete:(id)a3;
- (BOOL)needsLandscapeHeight;
- (BOOL)optOutOfGoButton;
- (BOOL)resignFirstResponder;
- (BOOL)shouldPromoteCompletion;
- (CGRect)_shiftedBoundsForText:(CGRect)a3;
- (CGRect)clearButtonRectForBounds:(CGRect)a3;
- (CGRect)editingRectForBounds:(CGRect)a3;
- (CGRect)leftViewRectForBounds:(CGRect)a3;
- (CGRect)rightViewRectForBounds:(CGRect)a3;
- (CGRect)textRectForBounds:(CGRect)a3;
- (CGSize)intrinsicContentSize;
- (NSString)textIncludingTokens;
- (SPSearchEntity)searchEntity;
- (SPUITextField)init;
- (UIResponder)responderForKeyboardInput;
- (UIView)canvasView;
- (_NSRange)insertFilteredText:(id)a3;
- (double)backgroundCornerRadius;
- (double)textFieldHeight;
- (id)accessoryIconWithSymbolName:(id)a3;
- (id)accessoryIconWithSymbolName:(id)a3 scale:(int64_t)a4 font:(id)a5;
- (id)currentQueryContext;
- (id)keyCommands;
- (id)nextResponder;
- (id)preferredFocusEnvironments;
- (void)_promoteCompletionAndMoveForward:(BOOL)a3;
- (void)applyMetrics;
- (void)beginFloatingCursorAtPoint:(CGPoint)a3;
- (void)buildMenuWithBuilder:(id)a3;
- (void)clearAllTokens;
- (void)commitToCommitedSearch;
- (void)cut:(id)a3;
- (void)detokenizeIfNeededAndSearch:(BOOL)a3;
- (void)didMoveToWindow;
- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4;
- (void)enterKeyPressed;
- (void)escapeKeyCommand;
- (void)insertText:(id)a3;
- (void)keyboardFrameChanged:(id)a3;
- (void)layoutSubviews;
- (void)pressesEnded:(id)a3 withEvent:(id)a4;
- (void)removeCaretAssertion;
- (void)removeCompletionAndHighlight;
- (void)removeCompletionsOrEntitiesAndGoToSuggestions:(BOOL)a3;
- (void)resetClearButton;
- (void)resetDeletion;
- (void)resetMicrophoneButton;
- (void)resetPhoneClearButton;
- (void)selectAll:(id)a3;
- (void)setAppearance:(id)a3 tintColor:(id)a4 forViews:(id)a5;
- (void)setFont:(id)a3;
- (void)setIsInDictationMode:(BOOL)a3;
- (void)setSearchFieldModel:(id)a3;
- (void)setSelectionGrabbersHiddenSafe:(BOOL)a3;
- (void)setShowsBackButton:(BOOL)a3;
- (void)setTextColor:(id)a3;
- (void)textFieldWasTapped;
- (void)tintColorDidChange;
- (void)tlk_updateForAppearance:(id)a3;
- (void)toggleBackToCommittedSearch;
- (void)toggleCommitedSearch;
- (void)traitCollectionDidChange:(id)a3;
- (void)unmarkText;
- (void)updateCaretVisibility;
- (void)updateCaretVisibility:(BOOL)a3;
- (void)updateRightView;
- (void)updateTextRange:(id)a3;
- (void)updateToken:(id)a3;
- (void)updateWithAppearance:(id)a3 isOnDarkBackground:(BOOL)a4;
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

  v4 = [(SPUITextField *)self tintView];
  [v4 _setContinuousCornerRadius:v3];

  [(SPUITextField *)self invalidateIntrinsicContentSize];
  LODWORD(v4) = _UISolariumEnabled();
  v5 = [MEMORY[0x277D65D28] bottomSearchFieldEnabled];
  if (v4)
  {
    if (v5)
    {
      v6 = [MEMORY[0x277D6F1A8] cachedFontForTextStyle:*MEMORY[0x277D76918] isShort:0 fontWeight:*MEMORY[0x277D74410]];
LABEL_9:
      v7 = v6;
      [(SPUITextField *)self setFont:v6];

      v8 = [(SPUITextField *)self font];
      [(SPUITextField *)self setAccessoryIconFont:v8];
      goto LABEL_13;
    }

    v9 = [MEMORY[0x277D74300] systemFontOfSize:22.0];
    [(SPUITextField *)self setAccessoryIconFont:v9];

    v10 = [MEMORY[0x277D74300] systemFontOfSize:26.0 weight:*MEMORY[0x277D74410]];
  }

  else
  {
    if (v5)
    {
      v6 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76A28]];
      goto LABEL_9;
    }

    v11 = [MEMORY[0x277D74300] boldSystemFontOfSize:23.0];
    [(SPUITextField *)self setAccessoryIconFont:v11];

    v10 = [MEMORY[0x277D74300] systemFontOfSize:26.0];
  }

  v8 = v10;
  [(SPUITextField *)self setFont:v10];
LABEL_13:

  [(SPUITextField *)self resetPhoneClearButton];
  [(SPUITextField *)self resetMicrophoneButton];
  v12 = [(SPUITextField *)self delegate];
  [v12 enableDictationIfRequired];
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
      v7 = [(SPUITextField *)v3 rightView];
      [v7 setContentMode:4];

      objc_initWeak(&location, v3);
      v8 = MEMORY[0x277D750C8];
      v34 = MEMORY[0x277D85DD0];
      v35 = 3221225472;
      v36 = __21__SPUITextField_init__block_invoke;
      v37 = &unk_279D06DF0;
      objc_copyWeak(&v38, &location);
      v9 = [v8 actionWithHandler:&v34];
      v10 = [MEMORY[0x277D75230] plainButtonConfiguration];
      [v10 setImagePlacement:15];
      v11 = [MEMORY[0x277D75220] buttonWithConfiguration:v10 primaryAction:v9];
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
      v14 = [(SPUITextField *)v3 subviews];
      v15 = [v14 lastObject];
      [(SPUITextField *)v3 insertSubview:v13 belowSubview:v15];

      [MEMORY[0x277D4C828] constrainViewToContainer:v13];
      [(SPUITextField *)v3 setTintView:v13];
      if ([MEMORY[0x277D65D28] bottomSearchFieldEnabled])
      {
        v16 = [(SPUITextField *)v3 tintView];
        [v16 removeFromSuperview];
      }

      [(SPUITextField *)v3 applyMetrics];
      v17 = [MEMORY[0x277CCAB98] defaultCenter];
      [v17 addObserver:v3 selector:sel_applyMetrics name:*MEMORY[0x277D76810] object:0];

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

    v20 = [(SPUITextField *)v3 font];
    v21 = [(SPUITextField *)v3 hintingView];
    [v21 setFontForCompletionLabel:v20];

    v22 = [(SPUITextField *)v3 hintingView];
    v23 = [(SPUITextField *)v3 subviews];
    v24 = [v23 lastObject];
    [(SPUITextField *)v3 insertSubview:v22 below:v24];

    v25 = [(SPUITextField *)v3 layer];
    [v25 setAllowsGroupBlending:0];

    v26 = [(SPUITextField *)v3 leftView];
    [v26 setTintColor:0];

    [(SPUITextField *)v3 setTextDragOptions:1];
    v27 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:v3 action:sel_textFieldWasTapped];
    [v27 setDelegate:v3];
    [(SPUITextField *)v3 addGestureRecognizer:v27];
    [(SPUITextField *)v3 setCompletionTapGestureRecognizer:v27];
    v28 = [MEMORY[0x277CCAB98] defaultCenter];
    [v28 addObserver:v3 selector:sel_didBeginDictation name:@"UIKeyboardDidBeginDictationNotification" object:0];

    v29 = [MEMORY[0x277CCAB98] defaultCenter];
    [v29 addObserver:v3 selector:sel_didEndDictation name:*MEMORY[0x277D76890] object:0];

    v30 = [MEMORY[0x277CCAB98] defaultCenter];
    [v30 addObserver:v3 selector:sel_didBeginDictation name:*MEMORY[0x277D76898] object:0];

    v31 = [MEMORY[0x277CCAB98] defaultCenter];
    [v31 addObserver:v3 selector:sel_didEndDictation name:*MEMORY[0x277D76888] object:0];

    if ([MEMORY[0x277D65D28] bottomSearchFieldEnabled])
    {
      v32 = [MEMORY[0x277CCAB98] defaultCenter];
      [v32 addObserver:v3 selector:sel_keyboardFrameChanged_ name:*MEMORY[0x277D76C48] object:0];
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
  v3 = [(SPUITextField *)self responderForKeyboardInput];
  if (v3 && ([MEMORY[0x277D75658] isInHardwareKeyboardMode] & 1) != 0)
  {
    v4 = [(SPUITextField *)self responderForKeyboardInput];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = SPUITextField;
    v4 = [(SPUITextField *)&v7 nextResponder];
  }

  v5 = v4;

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
    v6 = [(SPUITextField *)self font];
    [v3 scaledValueForValue:v6 withFont:self view:v5];
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
  v3 = [MEMORY[0x277D75688] sharedInputModeController];
  v4 = [v3 currentInputMode];
  v5 = [v4 primaryLanguage];
  v6 = [v2 localeWithLocaleIdentifier:v5];

  v7 = [v6 languageCode];
  LOBYTE(v4) = [&unk_287C4F818 containsObject:v7];

  if (v4)
  {
    v8 = 1.18;
  }

  else
  {
    v9 = [v6 languageCode];
    v10 = [&unk_287C4F830 containsObject:v9];

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
  v3 = [(SPUITextField *)self _fieldEditor];
  [v3 frame];
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

  v16 = [(SPUITextField *)self hintingView];
  [v16 setFrame:{v5, v7, v9, v11}];

  v17 = [(SPUITextField *)self hintingView];
  v18 = 1.0;
  if ([v17 hasPrefix])
  {
    v18 = [(SPUITextField *)self isInDictationMode];
  }

  v19 = [(SPUITextField *)self _fieldEditor];
  [v19 setAlpha:v18];

  v20 = [(SPUITextField *)self _fieldEditor];
  [v20 alpha];
  v22 = v21;

  if (v22 == 1.0)
  {
    v23 = [(SPUITextField *)self hintingView];
    v24 = [v23 hasContent];
    v25 = [(SPUITextField *)self _placeholderLabel];
    [v25 setHidden:v24];
  }
}

- (void)tintColorDidChange
{
  v5.receiver = self;
  v5.super_class = SPUITextField;
  [(UISearchTextField *)&v5 tintColorDidChange];
  v3 = [(SPUITextField *)self selectionHighlightColor];
  v4 = [(SPUITextField *)self hintingView];
  [v4 setSelectionHighlightColor:v3];
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
  v2 = [(SPUITextField *)self subviews];
  v3 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(v2);
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

      v4 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
    v3 = [(UISearchTextField *)self tokens];
    v4 = [v3 count];

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
  v4 = [(UISearchTextField *)self tokens];
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v15 + 1) + 8 * i) representedObject];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v10 = [v9 tokenText];
          [v3 appendString:v10];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  v11 = [(UISearchTextField *)self text];
  [v3 appendString:v11];

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
  v2 = [(UISearchTextField *)self tokens];
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = *v12;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v12 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v11 + 1) + 8 * i);
        v7 = [v6 representedObject];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          v3 = [v6 representedObject];
          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v9 = *MEMORY[0x277D85DE8];

  return v3;
}

- (void)updateRightView
{
  v3 = [(SPUITextField *)self hasContent];
  if (v3)
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  if (v3)
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
  v3 = [(UISearchTextField *)self text];
  if ([v3 length])
  {
    v4 = 1;
  }

  else
  {
    v5 = [(UISearchTextField *)self tokens];
    v4 = [v5 count] != 0;
  }

  return v4;
}

- (BOOL)becomeFirstResponder
{
  v3 = [(SPUITextField *)self animateAssertion];

  if (!v3)
  {
    v4 = [(SPUITextField *)self keyboardSceneDelegate];
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      v6 = [(SPUITextField *)self keyboardSceneDelegate];
      v7 = [v6 requestAnimationAssertionWithDirection:6];
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

  v10 = [(SPUITextField *)self delegate];
  [v10 updateDictationButtonEnabledStatus];

  v11 = [(SPUITextField *)self delegate];
  v12 = [v11 currentlyPresentingWebEntity];

  [(SPUITextField *)self detokenizeIfNeededAndSearch:0];
  [(SPUITextField *)self setDidShowWebEntityBeforeTap:v12];
  v14.receiver = self;
  v14.super_class = SPUITextField;
  return [(UISearchTextField *)&v14 becomeFirstResponder];
}

- (void)updateCaretVisibility
{
  v3 = [(SPUITextField *)self hintingView];
  -[SPUITextField updateCaretVisibility:](self, "updateCaretVisibility:", [v3 hasContent] ^ 1);
}

- (void)removeCaretAssertion
{
  v3 = [(SPUITextField *)self caretAssertion];
  [v3 invalidate];

  [(SPUITextField *)self setCaretAssertion:0];
}

void __21__SPUITextField_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained delegate];
  [v1 backButtonPressed];
}

- (void)setSelectionGrabbersHiddenSafe:(BOOL)a3
{
  if (a3)
  {
    v4 = [(SPUITextField *)self obtainSelectionGrabberSuppressionAssertion];
    [(SPUITextField *)self setAssertionForGrabbers:v4];
  }

  else
  {

    [(SPUITextField *)self setAssertionForGrabbers:0];
  }
}

- (void)keyboardFrameChanged:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKeyedSubscript:*MEMORY[0x277D76BB8]];
  [v5 CGRectValue];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = [(SPUITextField *)self tlks_screen];
  [v14 bounds];
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
    v3 = [(SPUITextField *)self delegate];
    v4 = [v3 currentlyPresentingWebEntity];

    v5 = [(SPUITextField *)self searchEntity];

    if (v5 || (v4 & 1) == 0)
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

      v8 = [(SPUITextField *)self delegate];
      [v8 switchToSuggestions];
    }
  }

  [(SPUITextField *)self detokenizeIfNeededAndSearch:1];
}

- (void)detokenizeIfNeededAndSearch:(BOOL)a3
{
  v3 = a3;
  if (![MEMORY[0x277D65D28] bottomSearchFieldEnabled])
  {
    goto LABEL_18;
  }

  v5 = [(SPUITextField *)self delegate];
  if ([v5 currentlyPresentingWebEntity])
  {

    goto LABEL_5;
  }

  v6 = [(SPUITextField *)self didShowWebEntityBeforeTap];

  if (v6)
  {
LABEL_5:
    v7 = [(UISearchTextField *)self tokens];
    v8 = [v7 firstObject];
    v9 = [v8 representedObject];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v11 = objc_opt_class();
      v12 = [(UISearchTextField *)self tokens];
      v13 = [v12 firstObject];
      v14 = [v13 representedObject];
      v15 = [v11 webEntityStringForEntity:v14];
    }

    else
    {
      v16 = [(UISearchTextField *)self tokens];
      v17 = [v16 firstObject];
      v18 = [v17 representedObject];
      objc_opt_class();
      v19 = objc_opt_isKindOfClass();

      if ((v19 & 1) == 0)
      {
        v15 = 0;
        goto LABEL_11;
      }

      v12 = [(UISearchTextField *)self tokens];
      v13 = [v12 firstObject];
      v15 = [v13 representedObject];
    }

LABEL_11:
    if ([v15 length])
    {
      [(SPUITextField *)self clearAllTokens];
      [(UISearchTextField *)self setText:v15];
      [(SPUITextField *)self setNeedsLayout];
      v20 = [(SPUITextField *)self delegate];
      [v20 textFieldDidReplaceTokensWithStringEquivalent:self];
    }

    if (v3)
    {
      v21 = [(SPUITextField *)self delegate];
      [v21 switchToSuggestions];
    }
  }

  if (v3)
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
  v23 = [(SPUITextField *)self canvasView];
  [v23 setAlpha:1.0];
}

- (void)removeCompletionsOrEntitiesAndGoToSuggestions:(BOOL)a3
{
  v3 = a3;
  v5 = objc_opt_class();
  v6 = [(SPUITextField *)self searchEntity];
  v7 = [v5 webEntityStringForEntity:v6];

  if ([v7 length])
  {
    [(SPUITextField *)self clearAllTokens];
    [(UISearchTextField *)self setText:v7];
    v8 = [(SPUITextField *)self delegate];
    [v8 textFieldDidReplaceTokensWithStringEquivalent:self];

    if (v3)
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

      v11 = [(SPUITextField *)self delegate];
      [v11 switchToSuggestions];
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

+ (id)webEntityStringForEntity:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
    v5 = [v4 command];
    v6 = [v5 entityType];

    if (v6 == 3)
    {
      v7 = [v4 command];
      v8 = [v7 tokenString];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)setFont:(id)a3
{
  v6.receiver = self;
  v6.super_class = SPUITextField;
  [(SPUITextField *)&v6 setFont:a3];
  v4 = [(SPUITextField *)self font];
  v5 = [(SPUITextField *)self hintingView];
  [v5 setFontForCompletionLabel:v4];
}

- (BOOL)optOutOfGoButton
{
  if ([(SPUITextField *)self lastUpdateWasDeletion]&& [(SPUITextField *)self hasContent])
  {
    return 1;
  }

  v4 = [(SPUITextField *)self restorationStringOnKBMovement];
  v3 = v4 != 0;

  return v3;
}

- (void)setSearchFieldModel:(id)a3
{
  v4 = a3;
  v5 = [(SPUITextField *)self hintingView];
  [v5 setSearchFieldModel:v4];

  [(SPUITextField *)self updateCaretVisibility];
}

- (id)currentQueryContext
{
  v2 = [(SPUITextField *)self hintingView];
  v3 = [v2 searchFieldModel];

  return v3;
}

- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4
{
  v5 = a3;
  v6 = [(SPUITextField *)self completionTapGestureRecognizer];

  if (v6 == v5)
  {
    v9 = [(SPUITextField *)self delegate];
    v10 = [v9 currentlyPresentingWebEntity];

    if ([MEMORY[0x277D65D28] bottomSearchFieldEnabled])
    {
      if (v10)
      {
        return [(SPUITextField *)self isFirstResponder]^ 1;
      }
    }

    else if (v10 && [(SPUITextField *)self isEditing])
    {
      v11 = [(SPUITextField *)self selectedTextRange];
      v7 = [v11 isEmpty] ^ 1;

      return v7;
    }
  }

  LOBYTE(v7) = 1;
  return v7;
}

- (void)beginFloatingCursorAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  [(SPUITextField *)self removeCompletionAndHighlight];
  v6.receiver = self;
  v6.super_class = SPUITextField;
  [(SPUITextField *)&v6 beginFloatingCursorAtPoint:x, y];
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v4 = a3;
  v5 = [(SPUITextField *)self completionTapGestureRecognizer];

  if (v5 == v4)
  {
    v7 = [(SPUITextField *)self firstResponder];
    v6 = v7 == 0;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = SPUITextField;
    if ([(UISearchTextField *)&v9 gestureRecognizerShouldBegin:v4])
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

- (void)pressesEnded:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SPUITextField *)self responderForKeyboardInput];
  if (v8 && (v9 = v8, v10 = [MEMORY[0x277D75658] isInHardwareKeyboardMode], v9, v10))
  {
    v11 = [(SPUITextField *)self responderForKeyboardInput];
    [v11 pressesEnded:v6 withEvent:v7];
  }

  else
  {
    v12.receiver = self;
    v12.super_class = SPUITextField;
    [(SPUITextField *)&v12 pressesEnded:v6 withEvent:v7];
  }
}

- (BOOL)keyboardInputShouldDelete:(id)a3
{
  v4 = a3;
  v5 = [(SPUITextField *)self hintingView];
  v6 = [v5 hasContent];

  v10.receiver = self;
  v10.super_class = SPUITextField;
  LODWORD(v5) = [(SPUITextField *)&v10 keyboardInputShouldDelete:v4];

  if (!v5)
  {
    return 0;
  }

  if (!(v6 & 1 | ![(SPUITextField *)self lastUpdateWasDeletion]))
  {
    return 1;
  }

  [(SPUITextField *)self setLastUpdateWasDeletion:1];
  v7 = [(SPUITextField *)self hintingView];
  [v7 updateWithResult:0 cardSection:0 focusIsOnFirstResult:1];

  if ([(SPUITextField *)self returnKeyType]!= 6)
  {
    [(SPUITextField *)self setReturnKeyType:6];
    [objc_opt_class() updateBlueButton];
  }

  [(SPUITextField *)self updateCaretVisibility:1];
  v8 = [(SPUITextField *)self delegate];
  [v8 removeCompletionAndHighlightAsTyped:1];

  return v6 ^ 1;
}

- (void)insertText:(id)a3
{
  v4 = a3;
  [(SPUITextField *)self resetDeletion];
  v5.receiver = self;
  v5.super_class = SPUITextField;
  [(UISearchTextField *)&v5 insertText:v4];
}

- (_NSRange)insertFilteredText:(id)a3
{
  v9.receiver = self;
  v9.super_class = SPUITextField;
  v4 = [(UISearchTextField *)&v9 insertFilteredText:a3];
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
  v3 = [(SPUITextField *)self hintingView];
  v4 = [v3 focusIsOnFirstResult];

  v5 = [(SPUITextField *)self hintingView];
  [v5 updateWithResult:0 cardSection:0 focusIsOnFirstResult:0];

  if (v4)
  {
    v6 = [(SPUITextField *)self delegate];
    [v6 removeCompletionAndHighlightAsTyped:0];
  }

  [(SPUITextField *)self updateCaretVisibility];
}

- (void)selectAll:(id)a3
{
  v4.receiver = self;
  v4.super_class = SPUITextField;
  [(SPUITextField *)&v4 selectAll:a3];
  [(SPUITextField *)self removeCompletionsOrEntitiesAndGoToSuggestions:0];
  [(SPUITextField *)self removeCaretAssertion];
}

- (BOOL)shouldPromoteCompletion
{
  if (([(SPUITextField *)self hasMarkedText]& 1) != 0)
  {
    return 0;
  }

  v4 = [(SPUITextField *)self hintingView];
  v5 = [v4 completionText];
  v3 = v5 != 0;

  return v3;
}

- (void)setTextColor:(id)a3
{
  v6.receiver = self;
  v6.super_class = SPUITextField;
  v4 = a3;
  [(SPUITextField *)&v6 setTextColor:v4];
  v5 = [(SPUITextField *)self hintingView:v6.receiver];
  [v5 setTextColorForCompletionLabel:v4];
}

- (void)buildMenuWithBuilder:(id)a3
{
  v4.receiver = self;
  v4.super_class = SPUITextField;
  v3 = a3;
  [(SPUITextField *)&v4 buildMenuWithBuilder:v3];
  [v3 removeMenuForIdentifier:{@"com.apple.menu.insert-from-external-sources", v4.receiver, v4.super_class}];
}

- (void)resetClearButton
{
  v3 = [(SPUITextField *)self accessoryIconWithSymbolName:@"xmark.circle.fill"];
  [(UISearchTextField *)self _setClearButtonImage:v3 forState:0];
}

- (id)preferredFocusEnvironments
{
  v12[2] = *MEMORY[0x277D85DE8];
  v3 = [(SPUITextField *)self responderForKeyboardInput];
  if (!v3)
  {
    goto LABEL_4;
  }

  v4 = v3;
  v5 = [(SPUITextField *)self hintingView];
  v6 = [v5 result];

  if (v6)
  {
    v7 = [(SPUITextField *)self responderForKeyboardInput];
    v12[0] = v7;
    v12[1] = self;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:2];
  }

  else
  {
LABEL_4:
    v11.receiver = self;
    v11.super_class = SPUITextField;
    v8 = [(SPUITextField *)&v11 preferredFocusEnvironments];
  }

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (CGRect)_shiftedBoundsForText:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if ([MEMORY[0x277D65D28] enableFloatingWindow])
  {
    [(SPUITextField *)self textFieldHeight];
    v9 = v8;
    v10 = [(UISearchTextField *)self tokens];
    v11 = [v10 count];
    v12 = 12.0;
    if (!v11)
    {
      v12 = 4.0;
    }

    x = v9 - v12;

    [(SPUITextField *)self bounds];
    width = CGRectGetWidth(v26) - (v9 + v9);
    v13 = [MEMORY[0x277D75128] sharedApplication];
    v14 = [v13 userInterfaceLayoutDirection];

    if (!v14)
    {
      v15 = [(SPUITextField *)self hintingView];
      [v15 trailingPaddingForFieldEditor];
      width = width - v16;
    }
  }

  else if ([MEMORY[0x277D65D28] bottomSearchFieldEnabled])
  {
    v17 = [MEMORY[0x277D75128] sharedApplication];
    v18 = [v17 userInterfaceLayoutDirection];

    if (!v18)
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

- (CGRect)textRectForBounds:(CGRect)a3
{
  v8.receiver = self;
  v8.super_class = SPUITextField;
  [(UISearchTextField *)&v8 textRectForBounds:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  [(SPUITextField *)self _shiftedBoundsForText:?];
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (CGRect)editingRectForBounds:(CGRect)a3
{
  v8.receiver = self;
  v8.super_class = SPUITextField;
  [(UISearchTextField *)&v8 editingRectForBounds:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  [(SPUITextField *)self _shiftedBoundsForText:?];
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (CGRect)clearButtonRectForBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
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
  v21 = [(SPUITextField *)self effectiveUserInterfaceLayoutDirection];
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

  if (!v21)
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

- (CGRect)leftViewRectForBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
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

- (CGRect)rightViewRectForBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
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

- (void)updateToken:(id)a3
{
  v4 = a3;
  [(SPUITextField *)self setIgnoreTokensUpdate:1];
  [(SPUITextField *)self clearAllTokens];
  if (v4)
  {
    [(UISearchTextField *)self insertToken:v4 atIndex:0];
  }

  [(SPUITextField *)self setIgnoreTokensUpdate:0];
  [(SPUITextField *)self updateRightView];
}

- (void)updateTextRange:(id)a3
{
  v5 = &stru_287C49600;
  if (a3)
  {
    v5 = a3;
  }

  v6 = v5;
  v8 = a3;
  [(SPUITextField *)self setIgnoreTokensUpdate:1];
  v7 = [(UISearchTextField *)self textualRange];
  [(UISearchTextField *)self replaceRange:v7 withText:v6];

  [(SPUITextField *)self setIgnoreTokensUpdate:0];
  [(SPUITextField *)self updateRightView];
}

- (void)setShowsBackButton:(BOOL)a3
{
  v3 = a3;
  self->_showsBackButton = a3;
  v15 = [(SPUITextField *)self leftView];
  v5 = [v15 configuration];
  if (_UISolariumEnabled())
  {
    v6 = [MEMORY[0x277D65D28] enableFloatingWindow];
    if (v3)
    {
      if (v6)
      {
        v7 = 2;
      }

      else
      {
        v7 = 3;
      }

      v8 = [(SPUITextField *)self accessoryIconFont];
      v9 = @"chevron.backward";
      v10 = self;
      v11 = v7;
    }

    else
    {
      if (v6)
      {
        [MEMORY[0x277D74300] systemFontOfSize:24.0];
      }

      else
      {
        [(SPUITextField *)self accessoryIconFont];
      }
      v8 = ;
      v9 = @"magnifyingglass";
      v10 = self;
      v11 = 2;
    }

    v14 = [(SPUITextField *)v10 accessoryIconWithSymbolName:v9 scale:v11 font:v8];
    [v5 setImage:v14];

    v13 = [(SPUITextField *)self secondaryColor];
    [v5 setBaseForegroundColor:v13];
  }

  else
  {
    if (v3)
    {
      v12 = @"chevron.backward";
    }

    else
    {
      v12 = @"magnifyingglass";
    }

    v13 = [(SPUITextField *)self accessoryIconWithSymbolName:v12];
    [v5 setImage:v13];
  }

  [v15 setConfiguration:v5];
}

- (id)accessoryIconWithSymbolName:(id)a3
{
  v4 = a3;
  if (_UISolariumEnabled())
  {
    v5 = 2;
  }

  else
  {
    v5 = -1;
  }

  v6 = [(SPUITextField *)self accessoryIconFont];
  v7 = [(SPUITextField *)self accessoryIconWithSymbolName:v4 scale:v5 font:v6];

  return v7;
}

- (id)accessoryIconWithSymbolName:(id)a3 scale:(int64_t)a4 font:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = [MEMORY[0x277D65D28] enableFloatingWindow];
  v10 = MEMORY[0x277D4C890];
  if (v9)
  {
    if (_UISolariumEnabled())
    {
      v11 = 5;
    }

    else
    {
      v11 = 6;
    }

    v12 = [v10 uiImageWithSymbolName:v7 font:v8 scale:a4 weight:v11 isTemplate:1];
  }

  else
  {
    v12 = [MEMORY[0x277D4C890] uiImageWithSymbolName:v7 font:v8 scale:a4];
  }

  v13 = v12;

  return v13;
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SPUITextField;
  [(SPUITextField *)&v9 traitCollectionDidChange:v4];
  v5 = [(SPUITextField *)self traitCollection];
  if ([v5 hasDifferentColorAppearanceComparedToTraitCollection:v4])
  {

LABEL_4:
    [(SPUITextField *)self tlk_updateWithCurrentAppearance];
    goto LABEL_5;
  }

  v6 = [(SPUITextField *)self traitCollection];
  v7 = [v6 _vibrancy];
  v8 = [v4 _vibrancy];

  if (v7 != v8)
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

- (void)tlk_updateForAppearance:(id)a3
{
  v4 = a3;
  [(SPUITextField *)self resetPhoneClearButton];
  -[SPUITextField updateWithAppearance:isOnDarkBackground:](self, "updateWithAppearance:isOnDarkBackground:", v4, [v4 isDark]);
}

- (void)updateWithAppearance:(id)a3 isOnDarkBackground:(BOOL)a4
{
  v4 = a4;
  v61[2] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [v6 primaryColor];
  primaryColor = self->_primaryColor;
  self->_primaryColor = v7;

  v9 = [v6 secondaryColor];
  secondaryColor = self->_secondaryColor;
  self->_secondaryColor = v9;

  v11 = [v6 tertiaryColor];
  tertiaryColor = self->_tertiaryColor;
  self->_tertiaryColor = v11;

  self->_isOnDarkBackground = v4;
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
      if (v4)
      {
        [MEMORY[0x277D75348] whiteColor];
      }

      else
      {
        [MEMORY[0x277D75348] blackColor];
      }
      v16 = ;
      v15 = !v4;
      v14 = v4;
    }

    v17 = [(SPUITextField *)self tintView];
    [v17 setBackgroundColor:v16];

    if (v15)
    {
    }

    if (v14)
    {
    }

    v18 = MEMORY[0x277CDA5E8];
    if (!v4)
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

    v21 = [(SPUITextField *)self tintView];
    v22 = [v21 layer];
    [v22 setCompositingFilter:v20];
  }

  v23 = [(SPUITextField *)self primaryColor];
  [(SPUITextField *)self setTintColor:v23];

  v24 = [(SPUITextField *)self primaryColor];
  [(SPUITextField *)self setTextColor:v24];

  if (_UISolariumEnabled())
  {
    v25 = [MEMORY[0x277D65D28] bottomSearchFieldEnabled];
    v26 = [(SPUITextField *)self leftView];
    v27 = v26;
    if (v25)
    {
      v61[0] = v26;
      v28 = [(SPUITextField *)self _clearButton];
      v61[1] = v28;
      v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v61 count:2];

      v30 = [(SPUITextField *)self _placeholderLabel];
      v60 = v30;
      v31 = [MEMORY[0x277CBEA60] arrayWithObjects:&v60 count:1];

      v32 = [(SPUITextField *)self rightView];

      if (v32)
      {
        v33 = [(SPUITextField *)self rightView];
        v34 = [v31 arrayByAddingObject:v33];
        v35 = MEMORY[0x277CBEBF8];
LABEL_26:

        v29 = v34;
        goto LABEL_30;
      }

      v35 = MEMORY[0x277CBEBF8];
    }

    else
    {
      v59[0] = v26;
      v41 = [(SPUITextField *)self _clearButton];
      v59[1] = v41;
      v31 = [MEMORY[0x277CBEA60] arrayWithObjects:v59 count:2];

      v42 = [(SPUITextField *)self _placeholderLabel];
      v58 = v42;
      v35 = [MEMORY[0x277CBEA60] arrayWithObjects:&v58 count:1];

      v43 = [(SPUITextField *)self rightView];

      if (v43)
      {
        v33 = [(SPUITextField *)self rightView];
        v44 = [v31 arrayByAddingObject:v33];
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
    v36 = [(SPUITextField *)self leftView];
    v57[0] = v36;
    v37 = [(SPUITextField *)self _clearButton];
    v57[1] = v37;
    v38 = [(SPUITextField *)self _placeholderLabel];
    v57[2] = v38;
    v31 = [MEMORY[0x277CBEA60] arrayWithObjects:v57 count:3];

    v39 = [(SPUITextField *)self rightView];

    if (v39)
    {
      v33 = [(SPUITextField *)self rightView];
      v40 = [v31 arrayByAddingObject:v33];
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
  v45 = [(SPUITextField *)self primaryColor];
  [(SPUITextField *)self setAppearance:v6 tintColor:v45 forViews:v29];

  v46 = [(SPUITextField *)self secondaryColor];
  [(SPUITextField *)self setAppearance:v6 tintColor:v46 forViews:v31];

  v47 = [(SPUITextField *)self tertiaryColor];
  [(SPUITextField *)self setAppearance:v6 tintColor:v47 forViews:v35];

  if (_UISolariumEnabled())
  {
    v48 = [(SPUITextField *)self tertiaryColor];
  }

  else
  {
    v49 = [(SPUITextField *)self primaryColor];
    v48 = [v49 colorWithAlphaComponent:0.36];
  }

  v50 = [(SPUITextField *)self placeholder];

  if (v50)
  {
    v51 = objc_alloc(MEMORY[0x277CCA898]);
    v52 = [(SPUITextField *)self placeholder];
    v55 = *MEMORY[0x277D740C0];
    v56 = v48;
    v53 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v56 forKeys:&v55 count:1];
    v50 = [v51 initWithString:v52 attributes:v53];
  }

  [(SPUITextField *)self setAttributedPlaceholder:v50];
  if ([MEMORY[0x277D65D28] enableFloatingWindow])
  {
    [(SPUITextField *)self setShowsBackButton:self->_showsBackButton];
  }

  v54 = *MEMORY[0x277D85DE8];
}

- (void)setAppearance:(id)a3 tintColor:(id)a4 forViews:(id)a5
{
  v22 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v17 + 1) + 8 * v13);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v15 = [v14 configuration];
          [v15 setBaseForegroundColor:v8];
        }

        [v14 setTintColor:v8];
        [v7 enableAppearanceForView:v14];
        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4
{
  v6 = a4;
  if (NSSelectorFromString(&cfstr_Define.isa) == a3 || NSSelectorFromString(&cfstr_Lookup.isa) == a3 || NSSelectorFromString(&cfstr_Share.isa) == a3 || NSSelectorFromString(&cfstr_Translate.isa) == a3)
  {
    LOBYTE(v8) = 0;
  }

  else
  {
    v14.receiver = self;
    v14.super_class = SPUITextField;
    v7 = [(UISearchTextField *)&v14 canPerformAction:a3 withSender:v6];
    if (sel_enterKeyPressed == a3)
    {
      v8 = [(SPUITextField *)self hasMarkedText]^ 1;
    }

    else if (sel_commitToCommitedSearch == a3 || (LOBYTE(v8) = v7, sel_toggleCommitedSearch == a3))
    {
      if (([(SPUITextField *)self hasMarkedText]& 1) != 0)
      {
        v8 = 0;
      }

      else
      {
        v10 = [(UISearchTextField *)self text];
        if ([v10 length])
        {
          v11 = [(UISearchTextField *)self tokens];
          v8 = [v11 count] == 0;
        }

        else
        {
          v8 = 0;
        }
      }

      if (sel_toggleCommitedSearch == a3)
      {
        v12 = [(SPUITextField *)self switchBackToSuggestionsTimer];
        if (([v12 isValid] & 1) == 0)
        {
          v13 = [(SPUITextField *)self delegate];
          v8 &= [v13 lastQueryKindSupportsOptionKey];
        }
      }
    }
  }

  return v8;
}

- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4
{
  v8.receiver = self;
  v8.super_class = SPUITextField;
  v6 = a3;
  [(SPUITextField *)&v8 didUpdateFocusInContext:v6 withAnimationCoordinator:a4];
  v7 = [v6 nextFocusedView];

  if (v7 == self)
  {
    [(SPUITextField *)self removeCompletionAndHighlight];
  }
}

- (id)keyCommands
{
  v14[4] = *MEMORY[0x277D85DE8];
  v13.receiver = self;
  v13.super_class = SPUITextField;
  v2 = [(SPUITextField *)&v13 keyCommands];
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

  if (v2)
  {
    v9 = [v2 arrayByAddingObjectsFromArray:keyCommands_spotlightKeyCommands];
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
  v3 = [(SPUITextField *)self switchBackToSuggestionsTimer];
  v4 = [v3 isValid];

  if ((v4 & 1) == 0)
  {
    v5 = [(SPUITextField *)self delegate];
    [v5 commitSearch];
  }

  v6 = [(SPUITextField *)self switchBackToSuggestionsTimer];
  [v6 invalidate];

  v7 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:self target:sel_toggleBackToCommittedSearch selector:0 userInfo:0 repeats:0.25];
  [(SPUITextField *)self setSwitchBackToSuggestionsTimer:v7];
}

- (void)commitToCommitedSearch
{
  v3 = [(SPUITextField *)self switchBackToSuggestionsTimer];
  [v3 invalidate];

  [(SPUITextField *)self setSwitchBackToSuggestionsTimer:0];
}

- (void)toggleBackToCommittedSearch
{
  v2 = [(SPUITextField *)self delegate];
  [v2 switchToSuggestions];
}

- (void)enterKeyPressed
{
  v3 = [(SPUITextField *)self delegate];
  [v3 returnKeyPressed];

  [(SPUITextField *)self setLastUpdateWasDeletion:0];
}

- (void)escapeKeyCommand
{
  if (([(SPUITextField *)self hasMarkedText]& 1) != 0)
  {
    return;
  }

  v3 = [(UISearchTextField *)self text];
  if ([v3 length])
  {
  }

  else
  {
    v4 = [(UISearchTextField *)self tokens];
    v5 = [v4 count];

    if (!v5)
    {
      v7 = [(SPUITextField *)self delegate];
      [v7 escapeKeyPressed];
      goto LABEL_6;
    }
  }

  [(UISearchTextField *)self setText:&stru_287C49600];
  v6 = objc_opt_new();
  [(UISearchTextField *)self setTokens:v6];

  v7 = [(UISearchTextField *)self textualRange];
  [UISearchTextField replaceRange:"replaceRange:withText:" withText:?];
LABEL_6:
}

- (void)updateCaretVisibility:(BOOL)a3
{
  if (a3)
  {

    [(SPUITextField *)self removeCaretAssertion];
  }

  else
  {
    v4 = [(SPUITextField *)self caretAssertion];

    if (!v4)
    {
      v7 = [(SPUITextField *)self _textInteraction];
      v5 = [v7 _assertionController];
      v6 = [v5 nonVisibleAssertionWithReason:@"spotlightHasCompletion"];
      [(SPUITextField *)self setCaretAssertion:v6];
    }
  }
}

- (void)_promoteCompletionAndMoveForward:(BOOL)a3
{
  v18 = [(UISearchTextField *)self text];
  v5 = [(UISearchTextField *)self text];
  v6 = [v5 length];

  v7 = [(SPUITextField *)self hintingView];
  v8 = [v7 completionText];
  [(UISearchTextField *)self setText:v8];

  if (!a3)
  {
    v9 = [(SPUITextField *)self beginningOfDocument];
    v10 = [(SPUITextField *)self positionFromPosition:v9 inDirection:2 offset:v6];

    v11 = [(SPUITextField *)self textRangeFromPosition:v10 toPosition:v10];
    [(SPUITextField *)self setSelectedTextRange:v11];
  }

  v12 = [SPUICompletionStringModel alloc];
  v13 = [(UISearchTextField *)self text];
  v14 = [(SPUITextField *)self hintingView];
  v15 = [v14 searchFieldModel];
  v16 = -[SPUICompletionStringModel initWithTypedString:hasTokens:queryId:hasMarkedText:](v12, "initWithTypedString:hasTokens:queryId:hasMarkedText:", v13, 0, [v15 queryId], 0);
  v17 = [(SPUITextField *)self hintingView];
  [v17 setSearchFieldModel:v16];

  [(SPUITextField *)self updateFocusResult:0 cardSection:0 focusIsOnFirstResult:1];
  [(SPUITextField *)self setRestorationStringOnKBMovement:v18];
}

- (void)unmarkText
{
  v4.receiver = self;
  v4.super_class = SPUITextField;
  [(SPUITextField *)&v4 unmarkText];
  [(SPUITextField *)self setLastUpdateWasDeletion:0];
  v3 = [(SPUITextField *)self delegate];
  [v3 highlightResultAfterUnmarkingText];
}

- (void)setIsInDictationMode:(BOOL)a3
{
  v3 = a3;
  self->_isInDictationMode = a3;
  v7 = [(SPUITextField *)self hintingView];
  v5 = ([v7 hasPrefix] ^ 1 | v3);
  v6 = [(SPUITextField *)self _fieldEditor];
  [v6 setAlpha:v5];
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
  v5 = [(SPUITextField *)self microphoneImage];
  v6 = [v5 isEqual:v4];

  if ((v6 & 1) == 0)
  {
    [(SPUITextField *)self setMicrophoneImage:v4];
    v7 = [(SPUITextField *)self delegate];
    v8 = [SPUIDictationButton systemButtonWithImage:v4 target:v7 action:sel_dictationButtonPressed];
    [(SPUITextField *)self setRightView:v8];

    if (_UISolariumEnabled() && ([MEMORY[0x277D65D28] bottomSearchFieldEnabled] & 1) != 0)
    {
      v9 = [(SPUITextField *)self primaryColor];
    }

    else
    {
      v9 = [(SPUITextField *)self secondaryColor];
    }

    v10 = v9;
    v11 = [MEMORY[0x277D6F1A0] bestAppearanceForView:self];
    v12 = [(SPUITextField *)self rightView];
    v15[0] = v12;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
    [(SPUITextField *)self setAppearance:v11 tintColor:v10 forViews:v13];
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (BOOL)completionResultIsPotentiallyPunchout
{
  v2 = [(SPUITextField *)self hintingView];
  v3 = [v2 completionResultIsPotentiallyPunchout];

  return v3;
}

+ (void)updateBlueButton
{
  if (([MEMORY[0x277D75658] isInHardwareKeyboardMode] & 1) == 0)
  {
    v2 = [MEMORY[0x277D75658] activeKeyboard];
    [v2 textInputTraitsDidChange];

    v3 = [MEMORY[0x277D75678] activeInstance];
    [v3 updateReturnKey:1];
  }
}

- (void)cut:(id)a3
{
  v4 = a3;
  v5 = [(SPUITextField *)self delegate];
  [v5 textWasCutFromTextField:self];

  v6.receiver = self;
  v6.super_class = SPUITextField;
  [(UISearchTextField *)&v6 cut:v4];
}

@end