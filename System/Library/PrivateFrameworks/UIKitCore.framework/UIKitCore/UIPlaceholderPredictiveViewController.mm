@interface UIPlaceholderPredictiveViewController
- (BOOL)_isVisibleForAutocorrectionType:(int64_t)type;
- (BOOL)isVisibleForInputDelegate:(id)delegate inputViews:(id)views;
- (id)_currentTextSuggestions;
@end

@implementation UIPlaceholderPredictiveViewController

- (BOOL)_isVisibleForAutocorrectionType:(int64_t)type
{
  v4 = +[UIKeyboardImpl activeInstance];
  autocorrectionController = [v4 autocorrectionController];
  hasContinuousPathConversions = [autocorrectionController hasContinuousPathConversions];

  v7 = +[UIKeyboardImpl activeInstance];
  autocorrectionPreferenceForTraits = [v7 autocorrectionPreferenceForTraits];

  if (type == 1)
  {
    v9 = hasContinuousPathConversions;
  }

  else
  {
    v9 = 1;
  }

  return autocorrectionPreferenceForTraits == 2 || v9;
}

- (id)_currentTextSuggestions
{
  v2 = +[UIKeyboardImpl activeInstance];
  autocorrectionController = [v2 autocorrectionController];
  textSuggestionList = [autocorrectionController textSuggestionList];

  return textSuggestionList;
}

- (BOOL)isVisibleForInputDelegate:(id)delegate inputViews:(id)views
{
  delegateCopy = delegate;
  viewsCopy = views;
  if (![(UIPlaceholderPredictiveViewController *)self showsRemoteInputDashViewController])
  {
    if (!viewsCopy)
    {
      v9 = +[UIPeripheralHost activeInstance];
      viewsCopy = [v9 loadAwareInputViews];
    }

    if ([viewsCopy isCustomInputView])
    {
      LOBYTE(v8) = 0;
      goto LABEL_36;
    }

    _currentTextSuggestions = [(UIPlaceholderPredictiveViewController *)self _currentTextSuggestions];
    v11 = _currentTextSuggestions;
    if (_currentTextSuggestions)
    {
      predictions = [_currentTextSuggestions predictions];
      v13 = [predictions count];

      if (v13)
      {
        LOBYTE(v8) = 1;
LABEL_35:

        goto LABEL_36;
      }
    }

    v14 = +[UIKeyboardImpl activeInstance];
    _showsScribbleIconsInAssistantView = [v14 _showsScribbleIconsInAssistantView];

    if (_showsScribbleIconsInAssistantView)
    {
      LOBYTE(v8) = 0;
      goto LABEL_35;
    }

    v16 = +[UIKeyboardImpl activeInstance];
    textInputTraits = [v16 textInputTraits];

    if ([delegateCopy conformsToProtocolCached:&unk_1EFE8E9A0])
    {
      textInputTraits2 = [delegateCopy textInputTraits];
      v19 = [UITextInputTraits traitsByAdoptingTraits:textInputTraits2];

      textInputTraits = v19;
    }

    if (!textInputTraits)
    {
      if (!+[UIKBInputDelegateManager isAsyncTextInputEnabled](UIKBInputDelegateManager, "isAsyncTextInputEnabled") || ([delegateCopy conformsToProtocolCached:&unk_1F016C7B0] & 1) == 0 && !objc_msgSend(delegateCopy, "conformsToProtocolCached:", &unk_1F016C810) || (+[UITextInputTraits traitsByAdoptingTraits:](UITextInputTraits, "traitsByAdoptingTraits:", delegateCopy), (textInputTraits = objc_claimAutoreleasedReturnValue()) == 0))
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
    }

    if (UIKeyboardAlwaysShowCandidateBarForCurrentInputMode())
    {
      if (([textInputTraits disableInputBars] & 1) == 0)
      {
        v8 = [textInputTraits hidePrediction] ^ 1;
LABEL_34:

        goto LABEL_35;
      }
    }

    else if (([textInputTraits disablePrediction] & 1) == 0 && (objc_msgSend(textInputTraits, "hidePrediction") & 1) == 0)
    {
      v20 = +[UIKeyboardImpl activeInstance];
      if (([v20 disableInputBars] & 1) != 0 || !-[UIPlaceholderPredictiveViewController _isVisibleForAutocorrectionType:](self, "_isVisibleForAutocorrectionType:", objc_msgSend(textInputTraits, "autocorrectionType")))
      {
      }

      else
      {
        isSecureTextEntry = [textInputTraits isSecureTextEntry];

        if ((isSecureTextEntry & 1) == 0 && UIKeyboardPredictionEnabledForCurrentInputMode())
        {
          v22 = +[UIKeyboardPreferencesController sharedPreferencesController];
          preferencesActions = [v22 preferencesActions];
          LOBYTE(v8) = [preferencesActions predictionEnabled];

          goto LABEL_34;
        }
      }
    }

    LOBYTE(v8) = 0;
    goto LABEL_34;
  }

  LOBYTE(v8) = 1;
LABEL_36:

  return v8;
}

@end