@interface UIDictationTipModelessInputHandler
- (BOOL)shouldShowModelessInputTip;
- (UIDictationTipHandlerDelegate)delegate;
- (UIDictationTipModelessInputHandler)initWithDelegate:(id)delegate;
- (void)processSoftwareKeyboardInteraction;
- (void)processUserInteractionEnded;
- (void)resetDictationTipModelessHandlerSignalFlags;
- (void)showModelessInputTip;
- (void)triggerAttemptToShowModelessTipFlag;
- (void)userInteractionEndedDuringModelessInputTipDictationStoppedSignal;
@end

@implementation UIDictationTipModelessInputHandler

- (void)resetDictationTipModelessHandlerSignalFlags
{
  [(UIDictationTipModelessInputHandler *)self setModelessInputTipDictationStoppedSignal:0];
  [(UIDictationTipModelessInputHandler *)self setSoftwareKeyboardInteractionAfterDictationStoppedSignal:0];

  [(UIDictationTipModelessInputHandler *)self setShouldAttemptToShowModelessTip:0];
}

- (UIDictationTipModelessInputHandler)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v8.receiver = self;
  v8.super_class = UIDictationTipModelessInputHandler;
  v5 = [(UIDictationTipModelessInputHandler *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(UIDictationTipModelessInputHandler *)v5 setDelegate:delegateCopy];
  }

  [(UIDictationTipModelessInputHandler *)v6 resetDictationTipModelessHandlerSignalFlags];

  return v6;
}

- (void)processSoftwareKeyboardInteraction
{
  delegate = [(UIDictationTipModelessInputHandler *)self delegate];
  v4 = [delegate dictationTipShown:6];

  if ((v4 & 1) == 0 && [(UIDictationTipModelessInputHandler *)self modelessInputTipDictationStoppedSignal])
  {

    [(UIDictationTipModelessInputHandler *)self setSoftwareKeyboardInteractionAfterDictationStoppedSignal:1];
  }
}

- (void)processUserInteractionEnded
{
  delegate = [(UIDictationTipModelessInputHandler *)self delegate];
  v4 = [delegate dictationTipShown:6];

  if ((v4 & 1) == 0 && [(UIDictationTipModelessInputHandler *)self modelessInputTipDictationStoppedSignal])
  {

    [(UIDictationTipModelessInputHandler *)self userInteractionEndedDuringModelessInputTipDictationStoppedSignal];
  }
}

- (void)userInteractionEndedDuringModelessInputTipDictationStoppedSignal
{
  [(UIDictationTipModelessInputHandler *)self triggerAttemptToShowModelessTipFlag];
  if ([(UIDictationTipModelessInputHandler *)self shouldShowModelessInputTip])
  {

    [(UIDictationTipModelessInputHandler *)self showModelessInputTip];
  }
}

- (void)triggerAttemptToShowModelessTipFlag
{
  if ([(UIDictationTipModelessInputHandler *)self softwareKeyboardInteractionAfterDictationStoppedSignal]&& [(UIDictationTipModelessInputHandler *)self modelessInputTipDictationStoppedSignal])
  {

    [(UIDictationTipModelessInputHandler *)self setShouldAttemptToShowModelessTip:1];
  }

  else
  {

    [(UIDictationTipModelessInputHandler *)self resetDictationTipModelessHandlerSignalFlags];
  }
}

- (BOOL)shouldShowModelessInputTip
{
  if (+[UIKeyboard isModelessActive](UIKeyboard, "isModelessActive") && (+[UIKeyboardPreferencesController sharedPreferencesController](UIKeyboardPreferencesController, "sharedPreferencesController"), v3 = objc_claimAutoreleasedReturnValue(), v4 = [v3 BOOLForPreferenceKey:@"DictationCommandTipsEnabled"], v3, v4))
  {
    v5 = +[UIDictationController activeInstance];
    shouldSuppressSoftwareKeyboard = [v5 shouldSuppressSoftwareKeyboard];

    v7 = shouldSuppressSoftwareKeyboard ^ 1;
  }

  else
  {
    v7 = 0;
  }

  return v7 & [(UIDictationTipModelessInputHandler *)self shouldAttemptToShowModelessTip];
}

- (void)showModelessInputTip
{
  v5 = _UILocalizedString(@"ModelessInputTipTitle", @"Type and Speak", @"Type and Speak");
  v3 = _UILocalizedString(@"ModelessInputTipDescription", @"You can edit text with the keyboard while you dictate.", @"You can edit text with the keyboard while you dictate.");
  delegate = [(UIDictationTipModelessInputHandler *)self delegate];
  [delegate finalizeTextWithTipType:6 title:v5 andTipDescription:v3];

  [(UIDictationTipModelessInputHandler *)self resetDictationTipModelessHandlerSignalFlags];
}

- (UIDictationTipHandlerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end