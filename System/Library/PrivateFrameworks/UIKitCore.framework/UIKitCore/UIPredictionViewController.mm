@interface UIPredictionViewController
+ (BOOL)_currentInputModeShowsMultiscriptOrTransliterationCandidates;
- (BOOL)_autocorrectionListContainsContinuousPathConversions:(id)a3;
- (BOOL)_autocorrectionListMayCausePredictionViewToReappear:(id)a3;
- (BOOL)_isVisibleForAutocorrectionType:(int64_t)a3;
- (BOOL)isVisibleForInputDelegate:(id)a3 inputViews:(id)a4;
- (NSArray)displayedCandidates;
- (UIPredictionViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)_currentTextSuggestions;
- (void)_clearTextSuggestions;
- (void)_inputModeDidChange;
- (void)_performThrottledUpdateUIWithAutocorrectionList:(id)a3;
- (void)_registerAsAutocorrectionObserver;
- (void)_registerForNotifications;
- (void)_throttledUpdateUIWithAutocorrectionList:(id)a3;
- (void)_updateAutocorrectionList:(id)a3;
- (void)dealloc;
- (void)loadView;
- (void)predictionView:(id)a3 didSelectCandidate:(id)a4;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation UIPredictionViewController

- (id)_currentTextSuggestions
{
  v2 = +[UIKeyboardImpl activeInstance];
  v3 = [v2 autocorrectionController];
  v4 = [v3 textSuggestionList];

  return v4;
}

- (void)_registerAsAutocorrectionObserver
{
  v4 = +[UIKeyboardImpl activeInstance];
  v3 = [v4 autocorrectionController];
  [v3 addAutocorrectionObserver:self];
}

- (void)_registerForNotifications
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 addObserver:self selector:sel__inputModeDidChange name:@"UITextInputCurrentInputModeDidChangeNotification" object:0];

  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 addObserver:self selector:sel__inputResponderDidChangeNotification_ name:@"UITextInputResponderDidChangeNotification" object:0];
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

  v4 = [v5 locale];
  [(TUIPredictionView *)self->_predictionView setCurrentLocale:v4];
}

+ (BOOL)_currentInputModeShowsMultiscriptOrTransliterationCandidates
{
  if (_os_feature_enabled_impl())
  {
    v2 = +[UIKeyboardInputModeController sharedInputModeController];
    v3 = [v2 currentInputMode];
    if ([v3 isMultiscript])
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

- (UIPredictionViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v7.receiver = self;
  v7.super_class = UIPredictionViewController;
  v4 = [(UIViewController *)&v7 initWithNibName:a3 bundle:a4];
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
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  v8[0] = @"UITextInputCurrentInputModeDidChangeNotification";
  v8[1] = @"UITextInputResponderDidChangeNotification";
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:2];
  [(NSNotificationCenter *)v3 _uiRemoveObserver:v4 names:?];

  v5 = +[UIKeyboardImpl activeInstance];
  v6 = [v5 autocorrectionController];
  [v6 removeAutocorrectionObserver:self];

  v7.receiver = self;
  v7.super_class = UIPredictionViewController;
  [(UIViewController *)&v7 dealloc];
}

- (BOOL)_isVisibleForAutocorrectionType:(int64_t)a3
{
  v4 = +[UIKeyboardImpl activeInstance];
  v5 = [v4 autocorrectionController];
  v6 = [v5 hasContinuousPathConversions];

  v7 = [objc_opt_class() _currentInputModeShowsMultiscriptOrTransliterationCandidates];
  v8 = +[UIKeyboardImpl activeInstance];
  LOBYTE(v5) = [v8 autocorrectionPreferenceForTraits] == 2;

  return v6 & 1 | (a3 != 1) | v7 & 1 | v5 & 1;
}

- (BOOL)isVisibleForInputDelegate:(id)a3 inputViews:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v7)
  {
    v8 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    v7 = [v8 inputViews];
  }

  if (([v7 isCustomInputView] & 1) == 0)
  {
    v10 = [(UIPredictionViewController *)self _currentTextSuggestions];
    v11 = v10;
    if (v10)
    {
      v12 = [v10 predictions];
      v13 = [v12 count];

      if (v13)
      {
        goto LABEL_14;
      }
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = v6;
      v15 = +[UIKeyboardCameraSession shouldShowTextSuggestionForResponder:](UIKeyboardCameraSession, "shouldShowTextSuggestionForResponder:", v14) ? [v14 hasText] ^ 1 : 0;
      v16 = +[UIKeyboardImpl activeInstance];
      v17 = [v16 _showsScribbleIconsInAssistantView];

      v9 = v17 ^ 1;
      if (v17 & 1) != 0 || (v15)
      {
        goto LABEL_46;
      }
    }

    v18 = +[UIKeyboardImpl activeInstance];
    v19 = [v18 autocorrectionController];
    v20 = [v19 hasAutofillCandidates];

    if (v20)
    {
LABEL_14:
      v9 = 1;
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
        v29 = [v28 textInputTraitsNeedContactAutoFill];

        if ((v29 & 1) == 0)
        {
          v9 = 0;
          goto LABEL_46;
        }

LABEL_19:
        v23 = +[UIKeyboardImpl activeInstance];
        v24 = [v23 textInputTraits];

        if ([v6 conformsToProtocolCached:&unk_1EFE8E9A0])
        {
          v25 = [v6 textInputTraits];
          v26 = [UITextInputTraits traitsByAdoptingTraits:v25];

          v24 = v26;
        }

        if (!v24 && +[UIKBInputDelegateManager isAsyncTextInputEnabled](UIKBInputDelegateManager, "isAsyncTextInputEnabled") && ([v6 conformsToProtocolCached:&unk_1F016C7B0] & 1) != 0 || objc_msgSend(v6, "conformsToProtocolCached:", &unk_1F016C810))
        {
          v27 = [UITextInputTraits traitsByAdoptingTraits:v6];

          v24 = v27;
        }

        if (!v24)
        {
          if ([v6 conformsToProtocolCached:&unk_1EFE8B2D0])
          {
            v24 = [UITextInputTraits traitsByAdoptingTraits:v6];
          }

          else
          {
            v24 = 0;
          }
        }

        if ([v24 hidePrediction])
        {
          v9 = 0;
LABEL_45:

          goto LABEL_46;
        }

        v30 = +[UIKeyboardImpl activeInstance];
        v31 = [v30 autocorrectionController];
        v32 = [v31 hasProactiveCandidates];

        if (v32)
        {
          v9 = 1;
          goto LABEL_45;
        }

        v33 = [(UIViewController *)self view];
        v34 = [v33 _rootInputWindowController];

        if (!v34)
        {
          v35 = +[_UIRemoteKeyboards sharedRemoteKeyboards];
          v36 = [v35 keyboardWindow];
          v34 = [v36 rootViewController];
        }

        v37 = [v34 placement];
        if (([v37 isFloatingAssistantView] & 1) == 0 && +[UIKeyboardImpl isSplit](UIKeyboardImpl, "isSplit"))
        {
          goto LABEL_40;
        }

        v38 = [v24 keyboardType];
        v9 = 0;
        if (v38 <= 0xB && ((1 << v38) & 0x930) != 0 || v38 == 127)
        {
          goto LABEL_44;
        }

        v40 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
        v41 = [v40 visualModeManager];
        if ([v41 windowingModeEnabled])
        {
          [(UIViewController *)self traitCollection];
          v42 = v51 = v40;
          v50 = [v42 userInterfaceIdiom];

          if (v50 != 6)
          {
            v43 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
            v44 = [v43 visualModeManager];
            v52 = [v44 useVisualModeWindowed];

            if (v52)
            {
              v45 = [v37 isFloatingAssistantView];
              v46 = 0;
              if (!v37 || (v45 & 1) != 0)
              {
LABEL_57:
                if (([v24 disablePrediction] & 1) == 0 && (objc_msgSend(v24, "hidePrediction") & 1) == 0)
                {
                  v47 = +[UIKeyboardImpl activeInstance];
                  if (([v47 disableInputBars] & 1) != 0 || !-[UIPredictionViewController _isVisibleForAutocorrectionType:](self, "_isVisibleForAutocorrectionType:", objc_msgSend(v24, "autocorrectionType")))
                  {
                    v9 = 0;
LABEL_65:

                    goto LABEL_44;
                  }

                  v48 = ([v24 isSecureTextEntry] ^ 1) & v46;

                  if (v48 == 1)
                  {
                    if ([objc_opt_class() _currentInputModeShowsMultiscriptOrTransliterationCandidates])
                    {
                      v9 = 1;
                      goto LABEL_44;
                    }

                    if (UIKeyboardPredictionEnabledForCurrentInputMode())
                    {
                      v47 = +[UIKeyboardPreferencesController sharedPreferencesController];
                      v49 = [v47 preferencesActions];
                      v9 = [v49 predictionEnabled];

                      goto LABEL_65;
                    }
                  }
                }

LABEL_40:
                v9 = 0;
LABEL_44:

                goto LABEL_45;
              }

              if (([v37 isFloating] & 1) == 0)
              {
                v46 = [v37 showsInputOrAssistantViews];
                goto LABEL_57;
              }
            }
          }
        }

        else
        {
        }

        v46 = 1;
        goto LABEL_57;
      }
    }

    goto LABEL_19;
  }

  v9 = 0;
LABEL_47:

  return v9;
}

- (void)_clearTextSuggestions
{
  v3 = +[UIKeyboardImpl activeInstance];
  v2 = [v3 autocorrectionController];
  [v2 setTextSuggestionList:0];
}

- (void)viewWillAppear:(BOOL)a3
{
  [(UIPredictionViewController *)self _registerAsAutocorrectionObserver];
  v4 = +[UIKeyboardImpl activeInstance];
  v11 = [v4 autocorrectionController];

  v5 = [v11 hasAutocorrection];
  v6 = v11;
  if (v5)
  {
    v7 = [v11 autocorrectionList];
    v8 = v7;
    if (v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = objc_alloc_init(MEMORY[0x1E69D9570]);
    }

    v10 = v9;

    [(UIPredictionViewController *)self _updateAutocorrectionList:v10];
    v6 = v11;
  }
}

- (NSArray)displayedCandidates
{
  if (objc_opt_respondsToSelector())
  {
    v3 = [(TUIPredictionView *)self->_predictionView displayedCandidates];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)_autocorrectionListContainsContinuousPathConversions:(id)a3
{
  v3 = a3;
  v4 = [v3 autocorrection];
  if ([v4 isContinuousPathConversion])
  {
    v5 = 1;
  }

  else
  {
    v6 = [v3 predictions];
    v7 = [v6 indexesOfObjectsPassingTest:&__block_literal_global_723];
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

- (void)_performThrottledUpdateUIWithAutocorrectionList:(id)a3
{
  v34[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DF00] date];
  lastUIUpdateTime = self->_lastUIUpdateTime;
  self->_lastUIUpdateTime = v5;

  [(NSTimer *)self->_updateUITimer invalidate];
  updateUITimer = self->_updateUITimer;
  self->_updateUITimer = 0;

  v8 = +[UIKeyboardImpl activeInstance];
  v9 = [v8 autocorrectionPreferenceForTraits];

  v10 = +[UIKeyboardImpl activeInstance];
  v11 = [v10 delegateAsResponder];
  v12 = [v11 _trailingPredictiveCandidateForWritingTools];

  if (v12)
  {
    v13 = [v4 predictions];
    if (v13)
    {
      v14 = [v4 predictions];
      v15 = [v14 arrayByAddingObject:v12];
    }

    else
    {
      v34[0] = v12;
      v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:1];
    }

    v16 = MEMORY[0x1E69D9570];
    v17 = [v4 corrections];
    v18 = [v4 emojiList];
    v19 = [v16 listWithCorrections:v17 predictions:v15 emojiList:v18];

    v4 = v19;
  }

  if (([objc_opt_class() _currentInputModeShowsMultiscriptOrTransliterationCandidates] & 1) == 0)
  {
    v20 = [MEMORY[0x1E69D95D8] textEffectsButtonCandidate];
    if (v20)
    {
      v21 = [v4 predictions];
      if (v21)
      {
        v22 = [v4 predictions];
        v23 = [v22 arrayByAddingObject:v20];
      }

      else
      {
        v33 = v20;
        v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v33 count:1];
      }

      v24 = MEMORY[0x1E69D9570];
      v25 = [v4 corrections];
      v26 = [v4 emojiList];
      v27 = [v24 listWithCorrections:v25 predictions:v23 emojiList:v26];

      v4 = v27;
    }
  }

  if (v9 == 2)
  {
    v28 = [v4 autocorrection];
    if ([v28 isContinuousPathConversion])
    {
      v29 = 0;
    }

    else
    {
      v30 = [v4 autocorrection];
      v29 = [v30 isForShortcutConversion] ^ 1;
    }
  }

  else
  {
    v29 = 0;
  }

  v31 = [(UIPredictionViewController *)self predictionView];
  [v31 setDisablesHighlight:v29];

  v32 = [(UIPredictionViewController *)self predictionView];
  [v32 setAutocorrectionList:v4 animated:1];
}

- (void)_throttledUpdateUIWithAutocorrectionList:(id)a3
{
  v4 = a3;
  if (([v4 containsAutofillCandidates] & 1) == 0 && (objc_msgSend(v4, "containsProactiveTriggers") & 1) == 0 && objc_msgSend(v4, "notEmpty") && -[TIAutocorrectionList notEmpty](self->_cachedAutocorrectionList, "notEmpty"))
  {
    v5 = [MEMORY[0x1E695DF00] date];
    v6 = v5;
    if (self->_lastUIUpdateTime)
    {
      [v5 timeIntervalSinceDate:?];
      v8 = v7;
    }

    else
    {
      v8 = 1.79769313e308;
    }

    if ([(UIPredictionViewController *)self _autocorrectionListContainsContinuousPathConversions:v4])
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

    v12 = [v4 predictions];
    v13 = [v12 count];

    v9 = 0.22;
    if (!v13 || v8 < 0.22)
    {
      goto LABEL_10;
    }
  }

  [(UIPredictionViewController *)self _performThrottledUpdateUIWithAutocorrectionList:v4];
  v14 = +[UIDevice currentDevice];
  v15 = [v14 userInterfaceIdiom];

  if (!v15)
  {
    v16 = +[UIKeyboardImpl activeInstance];
    v17 = [v16 isMinimized];

    if (v17)
    {
      v18 = +[UIKeyboardImpl activeInstance];
      v19 = [v18 _textChoicesAssistant];
      v20 = [v4 predictions];
      [v19 showChoicesForCandidates:v20];
    }
  }

LABEL_16:
}

- (BOOL)_autocorrectionListMayCausePredictionViewToReappear:(id)a3
{
  v4 = a3;
  v5 = +[UIKeyboardImpl activeInstance];
  v6 = [v5 textInputTraits];

  if ([v4 containsAutofillCandidates] & 1) != 0 || (objc_msgSend(v4, "containsSlottedCandidates"))
  {
    goto LABEL_3;
  }

  if ([v6 autocorrectionType] != 1)
  {
LABEL_9:
    v7 = 0;
    goto LABEL_4;
  }

  v9 = [(TIAutocorrectionList *)self->_cachedAutocorrectionList containsContinuousPathConversions];
  if (v9 == [v4 containsContinuousPathConversions])
  {
    if ([v4 containsContinuousPathConversions])
    {
      v10 = [(UIPredictionViewController *)self predictionView];
      v7 = [v10 isHidden];

      goto LABEL_4;
    }

    goto LABEL_9;
  }

LABEL_3:
  v7 = 1;
LABEL_4:

  return v7;
}

- (void)_updateAutocorrectionList:(id)a3
{
  obj = a3;
  v4 = [(UIPredictionViewController *)self _currentTextSuggestions];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 predictions];
    if ([v6 count])
    {
      v7 = [obj containsAlternativeInputCandidates];

      if ((v7 & 1) == 0)
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
  v10 = [(UIViewController *)self view];
  v11 = [v10 _rootInputWindowController];
  v12 = [v11 placement];
  v13 = [v12 isMemberOfClass:objc_opt_class()];

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
      v16 = [(UIViewController *)self view];
      v17 = [v16 _rootInputWindowController];
      v18 = [v17 isTransitioning];

      if (v18)
      {
LABEL_15:
        v23 = [(UIPredictionViewController *)self predictionView];
        [v23 _didChangeKeyplaneWithContext:v14];

        [UIView performWithoutAnimation:&__block_literal_global_872_0];
        goto LABEL_20;
      }

      v19 = [(UIViewController *)self view];
      v20 = [v19 _rootInputWindowController];
      v21 = [v20 placement];
      savedPlacement = self->_savedPlacement;
      self->_savedPlacement = v21;

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
    v25 = [(UIPredictionViewController *)self predictionView];
    [v25 _didChangeKeyplaneWithContext:v24];

    v14 = self->_savedPlacement;
  }

  self->_savedPlacement = 0;
LABEL_20:

LABEL_21:
}

- (void)predictionView:(id)a3 didSelectCandidate:(id)a4
{
  v23 = a3;
  v5 = a4;
  v6 = +[UIKeyboardImpl activeInstance];
  [v6 updateIdleDetection:0];

  v7 = +[UIKeyboardImpl activeInstance];
  v8 = [v7 feedbackGenerator];

  if (objc_opt_respondsToSelector())
  {
    v9 = [v5 candidate];
    v10 = [v9 length];
    v11 = [v23 allVisibleCells];
    v12 = [v11 objectAtIndex:{objc_msgSend(v23, "selectedIndex")}];
    [v12 center];
    [v8 actionOccurred:10 textLength:v10 atLocation:?];
  }

  else
  {
    v9 = [v23 allVisibleCells];
    v11 = [v9 objectAtIndex:{objc_msgSend(v23, "selectedIndex")}];
    [v11 center];
    [v8 actionOccurred:10 atLocation:?];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = [v5 replacement];
    if (!v13)
    {
LABEL_13:

      goto LABEL_14;
    }

    v14 = +[UIKeyboardImpl activeInstance];
    v15 = [v14 delegateAsResponder];
    v16 = [v15 _responderForEditing];

    v17 = [v16 targetForAction:sel_replace_ withSender:v13];

    [v17 performSelector:sel_replace_ withObject:v13];
LABEL_12:

    goto LABEL_13;
  }

  v18 = +[UIKeyboardImpl activeInstance];
  [v18 acceptPredictiveInput:v5];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v19 = [v23 autocorrectionList];
    v20 = [v19 autocorrection];
    v21 = v20 == v5;

    +[_UIKeyboardUsageTracking selectedPredictiveInputCandidate:isAutocorrection:index:](_UIKeyboardUsageTracking, "selectedPredictiveInputCandidate:isAutocorrection:index:", v5, v21, [v23 selectedIndex]);
  }

  if ((objc_opt_respondsToSelector() & 1) != 0 && ([v5 candidateProperty] & 0x20) != 0)
  {
    v13 = +[UIDictationController activeInstance];
    v17 = [v5 input];
    v22 = [v23 displayedCandidates];
    [v13 logEuclidSelection:v17 suggestedTokens:v22 correctedToken:v5 selectedIndex:{objc_msgSend(v23, "selectedIndex")}];

    goto LABEL_12;
  }

LABEL_14:
}

@end