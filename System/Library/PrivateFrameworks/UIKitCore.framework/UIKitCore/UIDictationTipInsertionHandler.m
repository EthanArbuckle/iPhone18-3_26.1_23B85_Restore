@interface UIDictationTipInsertionHandler
- (UIDictationTipHandlerDelegate)delegate;
- (UIDictationTipInsertionHandler)initWithDelegate:(id)a3;
- (void)finalizeRecordedText;
- (void)recordDictationTipText:(id)a3;
- (void)resetHandler;
- (void)startRecodingText:(id)a3;
@end

@implementation UIDictationTipInsertionHandler

- (void)resetHandler
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  insertionText = self->_insertionText;
  self->_insertionText = v3;

  self->_textRecorderStatus = 0;
  finalizeAction = self->_finalizeAction;

  [(UIDelayedAction *)finalizeAction cancel];
}

- (UIDictationTipInsertionHandler)initWithDelegate:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = UIDictationTipInsertionHandler;
  v5 = [(UIDictationTipInsertionHandler *)&v10 init];
  v6 = v5;
  if (v5)
  {
    [(UIDictationTipInsertionHandler *)v5 setDelegate:v4];
    v7 = [[UIDelayedAction alloc] initWithTarget:v6 action:sel_finalizeRecordedText userInfo:0 delay:1.0];
    finalizeAction = v6->_finalizeAction;
    v6->_finalizeAction = v7;

    [(UIDictationTipInsertionHandler *)v6 resetHandler];
  }

  return v6;
}

- (void)finalizeRecordedText
{
  self->_textRecorderStatus = 2;
  v15 = _UILocalizedString(@"Dictation Insertion Tip Body Standard", @"Standard description of the Insertion tip", @"While you dictate, say something like Insert ”’super’ before 'happy'“");
  v3 = +[UIKeyboardPreferencesController sharedPreferencesController];
  if ([v3 BOOLForPreferenceKey:@"DictationTipContextual"])
  {
  }

  else
  {
    v4 = [(NSMutableString *)self->_insertionText _containsEmojiOnly];

    if ((v4 & 1) == 0)
    {
      goto LABEL_5;
    }
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = [WeakRetained replaceEmojiInStringWithEmojiDictationCommand:self->_insertionText];
  v12 = _UILocalizedFormat(@"Dictation Insertion Tip Body Contextual", @"Contextual description of the Insertion tip", @"While you dictate, say Insert '%@'", v7, v8, v9, v10, v11, v6);

  v15 = v12;
LABEL_5:
  v13 = [(UIDictationTipInsertionHandler *)self delegate];
  v14 = _UILocalizedString(@"Dictation Insertion Tip Title", @"Title of the Insertion tip", @"Insert Text");
  [v13 finalizeTextWithTipType:2 title:v14 andTipDescription:v15];
}

- (void)recordDictationTipText:(id)a3
{
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if ([WeakRetained getDictationTipSignaled] == 2)
  {
    textRecorderStatus = self->_textRecorderStatus;

    if (textRecorderStatus != 2)
    {
      [(UIDelayedAction *)self->_finalizeAction unschedule];
      [(NSMutableString *)self->_insertionText appendString:v6];
      self->_textRecorderStatus = 1;
      [(UIDelayedAction *)self->_finalizeAction touch];
    }
  }

  else
  {
  }
}

- (void)startRecodingText:(id)a3
{
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = [WeakRetained getDictationTipSignaled];

  if (v5 == 2)
  {
    [(UIDictationTipInsertionHandler *)self resetHandler];
    [(UIDictationTipInsertionHandler *)self recordDictationTipText:v6];
  }
}

- (UIDictationTipHandlerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end