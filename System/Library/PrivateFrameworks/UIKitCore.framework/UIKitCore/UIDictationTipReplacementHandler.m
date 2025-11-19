@interface UIDictationTipReplacementHandler
- (UIDictationTipHandlerDelegate)delegate;
- (UIDictationTipReplacementHandler)initWithDelegate:(id)a3;
- (void)finalizeRecordedText;
- (void)recordDictationTipText:(id)a3;
- (void)resetHandler;
- (void)startRecodingText:(id)a3;
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

- (UIDictationTipReplacementHandler)initWithDelegate:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = UIDictationTipReplacementHandler;
  v5 = [(UIDictationTipReplacementHandler *)&v10 init];
  v6 = v5;
  if (v5)
  {
    [(UIDictationTipReplacementHandler *)v5 setDelegate:v4];
    v7 = [[UIDelayedAction alloc] initWithTarget:v6 action:sel_finalizeRecordedText userInfo:0 delay:1.0];
    finalizeAction = v6->_finalizeAction;
    v6->_finalizeAction = v7;

    [(UIDictationTipReplacementHandler *)v6 resetHandler];
  }

  return v6;
}

- (void)startRecodingText:(id)a3
{
  v9 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = [WeakRetained getDictationTipSignaled];

  if (!v5)
  {
    [(UIDictationTipReplacementHandler *)self resetHandler];
    v6 = objc_loadWeakRetained(&self->_delegate);
    v7 = [v6 replaceEmojiInStringWithEmojiDictationCommand:v9];
    replacementTargetText = self->_replacementTargetText;
    self->_replacementTargetText = v7;

    self->_textRecorderStatus = 1;
  }
}

- (void)recordDictationTipText:(id)a3
{
  v6 = a3;
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
      [(NSMutableString *)self->_replacementText appendString:v6];
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

  v13 = [(UIDictationTipReplacementHandler *)self delegate];
  v14 = _UILocalizedString(@"Dictation Replacement Tip Title", @"Title of the Replacement tip", @"Replace Text");
  [v13 finalizeTextWithTipType:0 title:v14 andTipDescription:v16];
}

- (UIDictationTipHandlerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end