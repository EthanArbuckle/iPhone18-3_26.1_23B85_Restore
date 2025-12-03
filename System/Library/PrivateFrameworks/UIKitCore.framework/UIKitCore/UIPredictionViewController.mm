@interface UIPredictionViewController
+ (BOOL)_currentInputModeShowsMultiscriptOrTransliterationCandidates;
- (BOOL)_autocorrectionListContainsContinuousPathConversions:(id)conversions;
- (BOOL)_autocorrectionListMayCausePredictionViewToReappear:(id)reappear;
- (BOOL)_isVisibleForAutocorrectionType:(int64_t)type;
- (BOOL)isVisibleForInputDelegate:(id)delegate inputViews:(id)views;
- (NSArray)displayedCandidates;
- (UIPredictionViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)_currentTextSuggestions;
- (void)_clearTextSuggestions;
- (void)_inputModeDidChange;
- (void)_performThrottledUpdateUIWithAutocorrectionList:(id)list;
- (void)_registerAsAutocorrectionObserver;
- (void)_registerForNotifications;
- (void)_throttledUpdateUIWithAutocorrectionList:(id)list;
- (void)_updateAutocorrectionList:(id)list;
- (void)dealloc;
- (void)loadView;
- (void)predictionView:(id)view didSelectCandidate:(id)candidate;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation UIPredictionViewController

- (id)_currentTextSuggestions
{
  v2 = +[UIKeyboardImpl activeInstance];
  autocorrectionController = [v2 autocorrectionController];
  textSuggestionList = [autocorrectionController textSuggestionList];

  return textSuggestionList;
}

- (void)_registerAsAutocorrectionObserver
{
  v4 = +[UIKeyboardImpl activeInstance];
  autocorrectionController = [v4 autocorrectionController];
  [autocorrectionController addAutocorrectionObserver:self];
}

- (void)_registerForNotifications
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel__inputModeDidChange name:@"UITextInputCurrentInputModeDidChangeNotification" object:0];

  defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter2 addObserver:self selector:sel__inputResponderDidChangeNotification_ name:@"UITextInputResponderDidChangeNotification" object:0];
}

- (void)loadView
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2050000000;
  v3 = _MergedGlobals_9_16;
  v12 = _MergedGlobals_9_16;
  if (!_MergedGlobals_9_16)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __getTUIPredictionViewClass_block_invoke_0;
    v8[3] = &unk_1E70F2F20;
    v8[4] = &v9;
    __getTUIPredictionViewClass_block_invoke_0(v8);
    v3 = v10[3];
  }

  v4 = v3;
  _Block_object_dispose(&v9, 8);
  v5 = [v3 alloc];
  v6 = [v5 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  predictionView = self->_predictionView;
  self->_predictionView = v6;

  [(TUIPredictionView *)self->_predictionView setDelegate:self];
  [(UIPredictionViewController *)self _inputModeDidChange];
  [(UIViewController *)self setView:self->_predictionView];
}

- (void)_inputModeDidChange
{
  v3 = UIKeyboardGetCurrentInputMode();
  v5 = [UIKeyboardInputMode keyboardInputModeWithIdentifier:v3];

  locale = [v5 locale];
  [(TUIPredictionView *)self->_predictionView setCurrentLocale:locale];
}

+ (BOOL)_currentInputModeShowsMultiscriptOrTransliterationCandidates
{
  if (_os_feature_enabled_impl())
  {
    v2 = +[UIKeyboardInputModeController sharedInputModeController];
    currentInputMode = [v2 currentInputMode];
    if ([currentInputMode isMultiscript])
    {

      return 1;
    }

    v5 = UIKeyboardShowsTransliterationCandidatesForCurrentInputMode();

    if (v5)
    {
      return 1;
    }
  }

  else if (UIKeyboardShowsTransliterationCandidatesForCurrentInputMode())
  {
    return 1;
  }

  return UIKeyboardCurrentInputModeIsMultiscript();
}

- (UIPredictionViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v7.receiver = self;
  v7.super_class = UIPredictionViewController;
  v4 = [(UIViewController *)&v7 initWithNibName:name bundle:bundle];
  v5 = v4;
  if (v4)
  {
    [(UIPredictionViewController *)v4 _registerForNotifications];
  }

  return v5;
}

- (void)dealloc
{
  v8[2] = *MEMORY[0x1E69E9840];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v8[0] = @"UITextInputCurrentInputModeDidChangeNotification";
  v8[1] = @"UITextInputResponderDidChangeNotification";
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:2];
  [(NSNotificationCenter *)defaultCenter _uiRemoveObserver:v4 names:?];

  v5 = +[UIKeyboardImpl activeInstance];
  autocorrectionController = [v5 autocorrectionController];
  [autocorrectionController removeAutocorrectionObserver:self];

  v7.receiver = self;
  v7.super_class = UIPredictionViewController;
  [(UIViewController *)&v7 dealloc];
}

- (BOOL)_isVisibleForAutocorrectionType:(int64_t)type
{
  v4 = +[UIKeyboardImpl activeInstance];
  autocorrectionController = [v4 autocorrectionController];
  hasContinuousPathConversions = [autocorrectionController hasContinuousPathConversions];

  _currentInputModeShowsMultiscriptOrTransliterationCandidates = [objc_opt_class() _currentInputModeShowsMultiscriptOrTransliterationCandidates];
  v8 = +[UIKeyboardImpl activeInstance];
  LOBYTE(autocorrectionController) = [v8 autocorrectionPreferenceForTraits] == 2;

  return hasContinuousPathConversions & 1 | (type != 1) | _currentInputModeShowsMultiscriptOrTransliterationCandidates & 1 | autocorrectionController & 1;
}

- (BOOL)isVisibleForInputDelegate:(id)delegate inputViews:(id)views
{
  delegateCopy = delegate;
  viewsCopy = views;
  if (!viewsCopy)
  {
    v8 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    viewsCopy = [v8 inputViews];
  }

  if (([viewsCopy isCustomInputView] & 1) == 0)
  {
    _currentTextSuggestions = [(UIPredictionViewController *)self _currentTextSuggestions];
    v11 = _currentTextSuggestions;
    if (_currentTextSuggestions)
    {
      predictions = [_currentTextSuggestions predictions];
      v13 = [predictions count];

      if (v13)
      {
        goto LABEL_14;
      }
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = delegateCopy;
      v15 = +[UIKeyboardCameraSession shouldShowTextSuggestionForResponder:](UIKeyboardCameraSession, "shouldShowTextSuggestionForResponder:", v14) ? [v14 hasText] ^ 1 : 0;
      v16 = +[UIKeyboardImpl activeInstance];
      _showsScribbleIconsInAssistantView = [v16 _showsScribbleIconsInAssistantView];

      predictionEnabled = _showsScribbleIconsInAssistantView ^ 1;
      if (_showsScribbleIconsInAssistantView & 1) != 0 || (v15)
      {
        goto LABEL_46;
      }
    }

    v18 = +[UIKeyboardImpl activeInstance];
    autocorrectionController = [v18 autocorrectionController];
    hasAutofillCandidates = [autocorrectionController hasAutofillCandidates];

    if (hasAutofillCandidates)
    {
LABEL_14:
      predictionEnabled = 1;
LABEL_46:

      goto LABEL_47;
    }

    v21 = +[UIKeyboardImpl activeInstance];
    if ([v21 textInputTraitsNeedAutofill])
    {
      v22 = +[UIKeyboardImpl activeInstance];
      if (![v22 textInputTraitsNeedOneTimeCode])
      {
        v28 = +[UIKeyboardImpl activeInstance];
        textInputTraitsNeedContactAutoFill = [v28 textInputTraitsNeedContactAutoFill];

        if ((textInputTraitsNeedContactAutoFill & 1) == 0)
        {
          predictionEnabled = 0;
          goto LABEL_46;
        }

LABEL_19:
        v23 = +[UIKeyboardImpl activeInstance];
        textInputTraits = [v23 textInputTraits];

        if ([delegateCopy conformsToProtocolCached:&unk_1EFE8E9A0])
        {
          textInputTraits2 = [delegateCopy textInputTraits];
          v26 = [UITextInputTraits traitsByAdoptingTraits:textInputTraits2];

          textInputTraits = v26;
        }

        if (!textInputTraits && +[UIKBInputDelegateManager isAsyncTextInputEnabled](UIKBInputDelegateManager, "isAsyncTextInputEnabled") && ([delegateCopy conformsToProtocolCached:&unk_1F016C7B0] & 1) != 0 || objc_msgSend(delegateCopy, "conformsToProtocolCached:", &unk_1F016C810))
        {
          v27 = [UITextInputTraits traitsByAdoptingTraits:delegateCopy];

          textInputTraits = v27;
        }

        if (!textInputTraits)
        {
          if ([delegateCopy conformsToProtocolCached:&unk_1EFE8B2D0])
          {
            textInputTraits = [UITextInputTraits traitsByAdoptingTraits:delegateCopy];
          }

          else
          {
            textInputTraits = 0;
          }
        }

        if ([textInputTraits hidePrediction])
        {
          predictionEnabled = 0;
LABEL_45:

          goto LABEL_46;
        }

        v30 = +[UIKeyboardImpl activeInstance];
        autocorrectionController2 = [v30 autocorrectionController];
        hasProactiveCandidates = [autocorrectionController2 hasProactiveCandidates];

        if (hasProactiveCandidates)
        {
          predictionEnabled = 1;
          goto LABEL_45;
        }

        view = [(UIViewController *)self view];
        _rootInputWindowController = [view _rootInputWindowController];

        if (!_rootInputWindowController)
        {
          v35 = +[_UIRemoteKeyboards sharedRemoteKeyboards];
          keyboardWindow = [v35 keyboardWindow];
          _rootInputWindowController = [keyboardWindow rootViewController];
        }

        placement = [_rootInputWindowController placement];
        if (([placement isFloatingAssistantView] & 1) == 0 && +[UIKeyboardImpl isSplit](UIKeyboardImpl, "isSplit"))
        {
          goto LABEL_40;
        }

        keyboardType = [textInputTraits keyboardType];
        predictionEnabled = 0;
        if (keyboardType <= 0xB && ((1 << keyboardType) & 0x930) != 0 || keyboardType == 127)
        {
          goto LABEL_44;
        }

        v40 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
        visualModeManager = [v40 visualModeManager];
        if ([visualModeManager windowingModeEnabled])
        {
          [(UIViewController *)self traitCollection];
          v42 = v51 = v40;
          userInterfaceIdiom = [v42 userInterfaceIdiom];

          if (userInterfaceIdiom != 6)
          {
            v43 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
            visualModeManager2 = [v43 visualModeManager];
            useVisualModeWindowed = [visualModeManager2 useVisualModeWindowed];

            if (useVisualModeWindowed)
            {
              isFloatingAssistantView = [placement isFloatingAssistantView];
              showsInputOrAssistantViews = 0;
              if (!placement || (isFloatingAssistantView & 1) != 0)
              {
LABEL_57:
                if (([textInputTraits disablePrediction] & 1) == 0 && (objc_msgSend(textInputTraits, "hidePrediction") & 1) == 0)
                {
                  v47 = +[UIKeyboardImpl activeInstance];
                  if (([v47 disableInputBars] & 1) != 0 || !-[UIPredictionViewController _isVisibleForAutocorrectionType:](self, "_isVisibleForAutocorrectionType:", objc_msgSend(textInputTraits, "autocorrectionType")))
                  {
                    predictionEnabled = 0;
LABEL_65:

                    goto LABEL_44;
                  }

                  v48 = ([textInputTraits isSecureTextEntry] ^ 1) & showsInputOrAssistantViews;

                  if (v48 == 1)
                  {
                    if ([objc_opt_class() _currentInputModeShowsMultiscriptOrTransliterationCandidates])
                    {
                      predictionEnabled = 1;
                      goto LABEL_44;
                    }

                    if (UIKeyboardPredictionEnabledForCurrentInputMode())
                    {
                      v47 = +[UIKeyboardPreferencesController sharedPreferencesController];
                      preferencesActions = [v47 preferencesActions];
                      predictionEnabled = [preferencesActions predictionEnabled];

                      goto LABEL_65;
                    }
                  }
                }

LABEL_40:
                predictionEnabled = 0;
LABEL_44:

                goto LABEL_45;
              }

              if (([placement isFloating] & 1) == 0)
              {
                showsInputOrAssistantViews = [placement showsInputOrAssistantViews];
                goto LABEL_57;
              }
            }
          }
        }

        else
        {
        }

        showsInputOrAssistantViews = 1;
        goto LABEL_57;
      }
    }

    goto LABEL_19;
  }

  predictionEnabled = 0;
LABEL_47:

  return predictionEnabled;
}

- (void)_clearTextSuggestions
{
  v3 = +[UIKeyboardImpl activeInstance];
  autocorrectionController = [v3 autocorrectionController];
  [autocorrectionController setTextSuggestionList:0];
}

- (void)viewWillAppear:(BOOL)appear
{
  [(UIPredictionViewController *)self _registerAsAutocorrectionObserver];
  v4 = +[UIKeyboardImpl activeInstance];
  autocorrectionController = [v4 autocorrectionController];

  hasAutocorrection = [autocorrectionController hasAutocorrection];
  v6 = autocorrectionController;
  if (hasAutocorrection)
  {
    autocorrectionList = [autocorrectionController autocorrectionList];
    v8 = autocorrectionList;
    if (autocorrectionList)
    {
      v9 = autocorrectionList;
    }

    else
    {
      v9 = objc_alloc_init(MEMORY[0x1E69D9570]);
    }

    v10 = v9;

    [(UIPredictionViewController *)self _updateAutocorrectionList:v10];
    v6 = autocorrectionController;
  }
}

- (NSArray)displayedCandidates
{
  if (objc_opt_respondsToSelector())
  {
    displayedCandidates = [(TUIPredictionView *)self->_predictionView displayedCandidates];
  }

  else
  {
    displayedCandidates = 0;
  }

  return displayedCandidates;
}

- (BOOL)_autocorrectionListContainsContinuousPathConversions:(id)conversions
{
  conversionsCopy = conversions;
  autocorrection = [conversionsCopy autocorrection];
  if ([autocorrection isContinuousPathConversion])
  {
    v5 = 1;
  }

  else
  {
    predictions = [conversionsCopy predictions];
    v7 = [predictions indexesOfObjectsPassingTest:&__block_literal_global_723];
    v5 = [v7 count] != 0;
  }

  return v5;
}

uint64_t __83__UIPredictionViewController__autocorrectionListContainsContinuousPathConversions___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 isContinuousPathConversion];
  *a4 = result;
  return result;
}

- (void)_performThrottledUpdateUIWithAutocorrectionList:(id)list
{
  v34[1] = *MEMORY[0x1E69E9840];
  listCopy = list;
  date = [MEMORY[0x1E695DF00] date];
  lastUIUpdateTime = self->_lastUIUpdateTime;
  self->_lastUIUpdateTime = date;

  [(NSTimer *)self->_updateUITimer invalidate];
  updateUITimer = self->_updateUITimer;
  self->_updateUITimer = 0;

  v8 = +[UIKeyboardImpl activeInstance];
  autocorrectionPreferenceForTraits = [v8 autocorrectionPreferenceForTraits];

  v10 = +[UIKeyboardImpl activeInstance];
  delegateAsResponder = [v10 delegateAsResponder];
  _trailingPredictiveCandidateForWritingTools = [delegateAsResponder _trailingPredictiveCandidateForWritingTools];

  if (_trailingPredictiveCandidateForWritingTools)
  {
    predictions = [listCopy predictions];
    if (predictions)
    {
      predictions2 = [listCopy predictions];
      v15 = [predictions2 arrayByAddingObject:_trailingPredictiveCandidateForWritingTools];
    }

    else
    {
      v34[0] = _trailingPredictiveCandidateForWritingTools;
      v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:1];
    }

    v16 = MEMORY[0x1E69D9570];
    corrections = [listCopy corrections];
    emojiList = [listCopy emojiList];
    v19 = [v16 listWithCorrections:corrections predictions:v15 emojiList:emojiList];

    listCopy = v19;
  }

  if (([objc_opt_class() _currentInputModeShowsMultiscriptOrTransliterationCandidates] & 1) == 0)
  {
    textEffectsButtonCandidate = [MEMORY[0x1E69D95D8] textEffectsButtonCandidate];
    if (textEffectsButtonCandidate)
    {
      predictions3 = [listCopy predictions];
      if (predictions3)
      {
        predictions4 = [listCopy predictions];
        v23 = [predictions4 arrayByAddingObject:textEffectsButtonCandidate];
      }

      else
      {
        v33 = textEffectsButtonCandidate;
        v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v33 count:1];
      }

      v24 = MEMORY[0x1E69D9570];
      corrections2 = [listCopy corrections];
      emojiList2 = [listCopy emojiList];
      v27 = [v24 listWithCorrections:corrections2 predictions:v23 emojiList:emojiList2];

      listCopy = v27;
    }
  }

  if (autocorrectionPreferenceForTraits == 2)
  {
    autocorrection = [listCopy autocorrection];
    if ([autocorrection isContinuousPathConversion])
    {
      v29 = 0;
    }

    else
    {
      autocorrection2 = [listCopy autocorrection];
      v29 = [autocorrection2 isForShortcutConversion] ^ 1;
    }
  }

  else
  {
    v29 = 0;
  }

  predictionView = [(UIPredictionViewController *)self predictionView];
  [predictionView setDisablesHighlight:v29];

  predictionView2 = [(UIPredictionViewController *)self predictionView];
  [predictionView2 setAutocorrectionList:listCopy animated:1];
}

- (void)_throttledUpdateUIWithAutocorrectionList:(id)list
{
  listCopy = list;
  if (([listCopy containsAutofillCandidates] & 1) == 0 && (objc_msgSend(listCopy, "containsProactiveTriggers") & 1) == 0 && objc_msgSend(listCopy, "notEmpty") && -[TIAutocorrectionList notEmpty](self->_cachedAutocorrectionList, "notEmpty"))
  {
    date = [MEMORY[0x1E695DF00] date];
    v6 = date;
    if (self->_lastUIUpdateTime)
    {
      [date timeIntervalSinceDate:?];
      v8 = v7;
    }

    else
    {
      v8 = 1.79769313e308;
    }

    if ([(UIPredictionViewController *)self _autocorrectionListContainsContinuousPathConversions:listCopy])
    {
      v9 = 0.05 - v8;

LABEL_10:
      [(NSTimer *)self->_updateUITimer invalidate];
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __71__UIPredictionViewController__throttledUpdateUIWithAutocorrectionList___block_invoke;
      v21[3] = &unk_1E7106478;
      v21[4] = self;
      v10 = [MEMORY[0x1E695DFF0] scheduledTimerWithTimeInterval:0 repeats:v21 block:v9];
      updateUITimer = self->_updateUITimer;
      self->_updateUITimer = v10;

      goto LABEL_16;
    }

    predictions = [listCopy predictions];
    v13 = [predictions count];

    v9 = 0.22;
    if (!v13 || v8 < 0.22)
    {
      goto LABEL_10;
    }
  }

  [(UIPredictionViewController *)self _performThrottledUpdateUIWithAutocorrectionList:listCopy];
  v14 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v14 userInterfaceIdiom];

  if (!userInterfaceIdiom)
  {
    v16 = +[UIKeyboardImpl activeInstance];
    isMinimized = [v16 isMinimized];

    if (isMinimized)
    {
      v18 = +[UIKeyboardImpl activeInstance];
      _textChoicesAssistant = [v18 _textChoicesAssistant];
      predictions2 = [listCopy predictions];
      [_textChoicesAssistant showChoicesForCandidates:predictions2];
    }
  }

LABEL_16:
}

- (BOOL)_autocorrectionListMayCausePredictionViewToReappear:(id)reappear
{
  reappearCopy = reappear;
  v5 = +[UIKeyboardImpl activeInstance];
  textInputTraits = [v5 textInputTraits];

  if ([reappearCopy containsAutofillCandidates] & 1) != 0 || (objc_msgSend(reappearCopy, "containsSlottedCandidates"))
  {
    goto LABEL_3;
  }

  if ([textInputTraits autocorrectionType] != 1)
  {
LABEL_9:
    isHidden = 0;
    goto LABEL_4;
  }

  containsContinuousPathConversions = [(TIAutocorrectionList *)self->_cachedAutocorrectionList containsContinuousPathConversions];
  if (containsContinuousPathConversions == [reappearCopy containsContinuousPathConversions])
  {
    if ([reappearCopy containsContinuousPathConversions])
    {
      predictionView = [(UIPredictionViewController *)self predictionView];
      isHidden = [predictionView isHidden];

      goto LABEL_4;
    }

    goto LABEL_9;
  }

LABEL_3:
  isHidden = 1;
LABEL_4:

  return isHidden;
}

- (void)_updateAutocorrectionList:(id)list
{
  obj = list;
  _currentTextSuggestions = [(UIPredictionViewController *)self _currentTextSuggestions];
  v5 = _currentTextSuggestions;
  if (_currentTextSuggestions)
  {
    predictions = [_currentTextSuggestions predictions];
    if ([predictions count])
    {
      containsAlternativeInputCandidates = [obj containsAlternativeInputCandidates];

      if ((containsAlternativeInputCandidates & 1) == 0)
      {
        if ([v5 isShowingSuggestionForKeyboardCamera])
        {
          [(UIPredictionViewController *)self _clearTextSuggestions];
        }

        else
        {
          v8 = v5;

          obj = v8;
        }
      }
    }

    else
    {
    }
  }

  v9 = [(UIPredictionViewController *)self _autocorrectionListMayCausePredictionViewToReappear:obj];
  [(UIPredictionViewController *)self _throttledUpdateUIWithAutocorrectionList:obj];
  objc_storeStrong(&self->_cachedAutocorrectionList, obj);
  view = [(UIViewController *)self view];
  _rootInputWindowController = [view _rootInputWindowController];
  placement = [_rootInputWindowController placement];
  v13 = [placement isMemberOfClass:objc_opt_class()];

  if (v9)
  {
    v14 = +[UIKBKeyplaneChangeContext keyplaneChangeContext];
    [v14 setUpdateAssistantView:1];
    if ((self->_savedPlacement != 0) | v13 & 1 || (UIKeyboardGetSafeDeviceIdiom() & 0xFFFFFFFFFFFFFFFBLL) != 1)
    {
      goto LABEL_15;
    }

    v15 = +[UIKeyboardImpl activeInstance];
    if ([v15 isMinimized])
    {
      view2 = [(UIViewController *)self view];
      _rootInputWindowController2 = [view2 _rootInputWindowController];
      isTransitioning = [_rootInputWindowController2 isTransitioning];

      if (isTransitioning)
      {
LABEL_15:
        predictionView = [(UIPredictionViewController *)self predictionView];
        [predictionView _didChangeKeyplaneWithContext:v14];

        [UIView performWithoutAnimation:&__block_literal_global_872_0];
        goto LABEL_20;
      }

      view3 = [(UIViewController *)self view];
      _rootInputWindowController3 = [view3 _rootInputWindowController];
      placement2 = [_rootInputWindowController3 placement];
      savedPlacement = self->_savedPlacement;
      self->_savedPlacement = placement2;

      v15 = +[UIInputViewSetPlacementAssistantOnScreen placement];
      [v14 setTargetPlacement:v15];
    }

    goto LABEL_15;
  }

  v14 = self->_savedPlacement;
  if (!v14)
  {
    goto LABEL_21;
  }

  if (v13)
  {
    v24 = +[UIKBKeyplaneChangeContext keyplaneChangeContext];
    [v24 setTargetPlacement:self->_savedPlacement];
    [v24 setUpdatePlacementOnly:1];
    predictionView2 = [(UIPredictionViewController *)self predictionView];
    [predictionView2 _didChangeKeyplaneWithContext:v24];

    v14 = self->_savedPlacement;
  }

  self->_savedPlacement = 0;
LABEL_20:

LABEL_21:
}

- (void)predictionView:(id)view didSelectCandidate:(id)candidate
{
  viewCopy = view;
  candidateCopy = candidate;
  v6 = +[UIKeyboardImpl activeInstance];
  [v6 updateIdleDetection:0];

  v7 = +[UIKeyboardImpl activeInstance];
  feedbackGenerator = [v7 feedbackGenerator];

  if (objc_opt_respondsToSelector())
  {
    candidate = [candidateCopy candidate];
    v10 = [candidate length];
    allVisibleCells = [viewCopy allVisibleCells];
    v12 = [allVisibleCells objectAtIndex:{objc_msgSend(viewCopy, "selectedIndex")}];
    [v12 center];
    [feedbackGenerator actionOccurred:10 textLength:v10 atLocation:?];
  }

  else
  {
    candidate = [viewCopy allVisibleCells];
    allVisibleCells = [candidate objectAtIndex:{objc_msgSend(viewCopy, "selectedIndex")}];
    [allVisibleCells center];
    [feedbackGenerator actionOccurred:10 atLocation:?];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    replacement = [candidateCopy replacement];
    if (!replacement)
    {
LABEL_13:

      goto LABEL_14;
    }

    v14 = +[UIKeyboardImpl activeInstance];
    delegateAsResponder = [v14 delegateAsResponder];
    _responderForEditing = [delegateAsResponder _responderForEditing];

    input = [_responderForEditing targetForAction:sel_replace_ withSender:replacement];

    [input performSelector:sel_replace_ withObject:replacement];
LABEL_12:

    goto LABEL_13;
  }

  v18 = +[UIKeyboardImpl activeInstance];
  [v18 acceptPredictiveInput:candidateCopy];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    autocorrectionList = [viewCopy autocorrectionList];
    autocorrection = [autocorrectionList autocorrection];
    v21 = autocorrection == candidateCopy;

    +[_UIKeyboardUsageTracking selectedPredictiveInputCandidate:isAutocorrection:index:](_UIKeyboardUsageTracking, "selectedPredictiveInputCandidate:isAutocorrection:index:", candidateCopy, v21, [viewCopy selectedIndex]);
  }

  if ((objc_opt_respondsToSelector() & 1) != 0 && ([candidateCopy candidateProperty] & 0x20) != 0)
  {
    replacement = +[UIDictationController activeInstance];
    input = [candidateCopy input];
    displayedCandidates = [viewCopy displayedCandidates];
    [replacement logEuclidSelection:input suggestedTokens:displayedCandidates correctedToken:candidateCopy selectedIndex:{objc_msgSend(viewCopy, "selectedIndex")}];

    goto LABEL_12;
  }

LABEL_14:
}

@end