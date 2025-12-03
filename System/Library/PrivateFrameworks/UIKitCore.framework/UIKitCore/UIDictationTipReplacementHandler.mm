@interface UIDictationTipReplacementHandler
- (UIDictationTipHandlerDelegate)delegate;
- (UIDictationTipReplacementHandler)initWithDelegate:(id)delegate;
- (void)finalizeRecordedText;
- (void)recordDictationTipText:(id)text;
- (void)resetHandler;
- (void)startRecodingText:(id)text;
@end

@implementation UIDictationTipReplacementHandler

- (void)resetHandler
{
  replacementTargetText = self->_replacementTargetText;
  self->_replacementTargetText = &stru_1EFB14550;

  v4 = objc_alloc_init(MEMORY[0x1E696AD60]);
  replacementText = self->_replacementText;
  self->_replacementText = v4;

  [(UIDelayedAction *)self->_finalizeAction cancel];
  self->_textRecorderStatus = 0;
}

- (UIDictationTipReplacementHandler)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v10.receiver = self;
  v10.super_class = UIDictationTipReplacementHandler;
  v5 = [(UIDictationTipReplacementHandler *)&v10 init];
  v6 = v5;
  if (v5)
  {
    [(UIDictationTipReplacementHandler *)v5 setDelegate:delegateCopy];
    v7 = [[UIDelayedAction alloc] initWithTarget:v6 action:sel_finalizeRecordedText userInfo:0 delay:1.0];
    finalizeAction = v6->_finalizeAction;
    v6->_finalizeAction = v7;

    [(UIDictationTipReplacementHandler *)v6 resetHandler];
  }

  return v6;
}

- (void)startRecodingText:(id)text
{
  textCopy = text;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  getDictationTipSignaled = [WeakRetained getDictationTipSignaled];

  if (!getDictationTipSignaled)
  {
    [(UIDictationTipReplacementHandler *)self resetHandler];
    v6 = objc_loadWeakRetained(&self->_delegate);
    v7 = [v6 replaceEmojiInStringWithEmojiDictationCommand:textCopy];
    replacementTargetText = self->_replacementTargetText;
    self->_replacementTargetText = v7;

    self->_textRecorderStatus = 1;
  }
}

- (void)recordDictationTipText:(id)text
{
  textCopy = text;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if ([WeakRetained getDictationTipSignaled])
  {
  }

  else
  {
    textRecorderStatus = self->_textRecorderStatus;

    if (textRecorderStatus != 2)
    {
      [(UIDelayedAction *)self->_finalizeAction unschedule];
      [(NSMutableString *)self->_replacementText appendString:textCopy];
      self->_textRecorderStatus = 1;
      [(UIDelayedAction *)self->_finalizeAction touch];
    }
  }
}

- (void)finalizeRecordedText
{
  self->_textRecorderStatus = 2;
  v16 = _UILocalizedString(@"Dictation Replacement Tip Body Standard", @"Standard description of the Replacement tip", @"To edit text while dictating, just say 'Change... to...'");
  v3 = +[UIKeyboardPreferencesController sharedPreferencesController];
  v4 = [v3 BOOLForPreferenceKey:@"DictationTipContextual"];

  if (v4)
  {
    replacementTargetText = self->_replacementTargetText;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v15 = [WeakRetained replaceEmojiInStringWithEmojiDictationCommand:self->_replacementText];
    v12 = _UILocalizedFormat(@"Dictation Replacement Tip Body Contextual", @"Contextual description of the Replacement tip", @"To edit your message while you dictate, say “Replace ‘%@’ with ‘%@'", v7, v8, v9, v10, v11, replacementTargetText);
  }

  delegate = [(UIDictationTipReplacementHandler *)self delegate];
  v14 = _UILocalizedString(@"Dictation Replacement Tip Title", @"Title of the Replacement tip", @"Replace Text");
  [delegate finalizeTextWithTipType:0 title:v14 andTipDescription:v16];
}

- (UIDictationTipHandlerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end