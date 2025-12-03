@interface UIPlaceholderCandidateViewController
- (BOOL)isVisibleForInputDelegate:(id)delegate inputViews:(id)views;
@end

@implementation UIPlaceholderCandidateViewController

- (BOOL)isVisibleForInputDelegate:(id)delegate inputViews:(id)views
{
  delegateCopy = delegate;
  if ([(UIPlaceholderPredictiveViewController *)self showsRemoteInputDashViewController])
  {
    goto LABEL_2;
  }

  v7 = +[UIKeyboardImpl activeInstance];
  _showsScribbleIconsInAssistantView = [v7 _showsScribbleIconsInAssistantView];

  if (_showsScribbleIconsInAssistantView)
  {
    goto LABEL_4;
  }

  v10 = +[UIKeyboardImpl activeInstance];
  showsCandidateBar = [v10 showsCandidateBar];

  if (showsCandidateBar)
  {
LABEL_2:
    LOBYTE(v6) = 1;
    goto LABEL_5;
  }

  if (!UIKeyboardAlwaysShowCandidateBarForCurrentInputMode())
  {
LABEL_4:
    LOBYTE(v6) = 0;
    goto LABEL_5;
  }

  v12 = +[UIKeyboardImpl activeInstance];
  textInputTraits = [v12 textInputTraits];

  if ([delegateCopy conformsToProtocolCached:&unk_1EFE8E9A0])
  {
    textInputTraits2 = [delegateCopy textInputTraits];
    v15 = [UITextInputTraits traitsByAdoptingTraits:textInputTraits2];

    textInputTraits = v15;
  }

  if (!textInputTraits)
  {
    if (!+[UIKBInputDelegateManager isAsyncTextInputEnabled](UIKBInputDelegateManager, "isAsyncTextInputEnabled") || ![delegateCopy conformsToProtocolCached:&unk_1F016C7B0] || (+[UITextInputTraits traitsByAdoptingTraits:](UITextInputTraits, "traitsByAdoptingTraits:", delegateCopy), (textInputTraits = objc_claimAutoreleasedReturnValue()) == 0))
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

  if ([textInputTraits disableInputBars])
  {
    LOBYTE(v6) = 0;
  }

  else
  {
    v6 = [textInputTraits hidePrediction] ^ 1;
  }

LABEL_5:
  return v6;
}

@end