@interface UIDictationTipInsertionHandler
- (UIDictationTipHandlerDelegate)delegate;
- (UIDictationTipInsertionHandler)initWithDelegate:(id)delegate;
- (void)finalizeRecordedText;
- (void)recordDictationTipText:(id)text;
- (void)resetHandler;
- (void)startRecodingText:(id)text;
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

- (UIDictationTipInsertionHandler)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v10.receiver = self;
  v10.super_class = UIDictationTipInsertionHandler;
  v5 = [(UIDictationTipInsertionHandler *)&v10 init];
  v6 = v5;
  if (v5)
  {
    [(UIDictationTipInsertionHandler *)v5 setDelegate:delegateCopy];
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
    _containsEmojiOnly = [(NSMutableString *)self->_insertionText _containsEmojiOnly];

    if ((_containsEmojiOnly & 1) == 0)
    {
      goto LABEL_5;
    }
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = [WeakRetained replaceEmojiInStringWithEmojiDictationCommand:self->_insertionText];
  v12 = _UILocalizedFormat(@"Dictation Insertion Tip Body Contextual", @"Contextual description of the Insertion tip", @"While you dictate, say Insert '%@'", v7, v8, v9, v10, v11, v6);

  v15 = v12;
LABEL_5:
  delegate = [(UIDictationTipInsertionHandler *)self delegate];
  v14 = _UILocalizedString(@"Dictation Insertion Tip Title", @"Title of the Insertion tip", @"Insert Text");
  [delegate finalizeTextWithTipType:2 title:v14 andTipDescription:v15];
}

- (void)recordDictationTipText:(id)text
{
  textCopy = text;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if ([WeakRetained getDictationTipSignaled] == 2)
  {
    textRecorderStatus = self->_textRecorderStatus;

    if (textRecorderStatus != 2)
    {
      [(UIDelayedAction *)self->_finalizeAction unschedule];
      [(NSMutableString *)self->_insertionText appendString:textCopy];
      self->_textRecorderStatus = 1;
      [(UIDelayedAction *)self->_finalizeAction touch];
    }
  }

  else
  {
  }
}

- (void)startRecodingText:(id)text
{
  textCopy = text;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  getDictationTipSignaled = [WeakRetained getDictationTipSignaled];

  if (getDictationTipSignaled == 2)
  {
    [(UIDictationTipInsertionHandler *)self resetHandler];
    [(UIDictationTipInsertionHandler *)self recordDictationTipText:textCopy];
  }
}

- (UIDictationTipHandlerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end