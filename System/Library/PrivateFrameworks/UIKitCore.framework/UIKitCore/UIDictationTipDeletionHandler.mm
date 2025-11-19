@interface UIDictationTipDeletionHandler
- (UIDictationTipDeletionHandler)initWithDelegate:(id)a3;
- (UIDictationTipHandlerDelegate)delegate;
- (_NSRange)lastSelectedDeletionRange;
- (void)addDeletionEventCount:(id)a3 deletedTextRange:(_NSRange)a4;
- (void)finalizeRecordedText;
- (void)recordDictationTipText:(id)a3;
- (void)resetDeletionEventCount;
- (void)resetHandler;
- (void)resetRecorder;
- (void)setlastDeletionRange:(_NSRange)a3;
- (void)startRecodingText:(id)a3;
@end

@implementation UIDictationTipDeletionHandler

- (void)resetRecorder
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  deletionText = self->_deletionText;
  self->_deletionText = v3;

  [(UIDelayedAction *)self->_finalizeAction cancel];
  self->_textRecorderStatus = 0;
}

- (void)resetDeletionEventCount
{
  self->_deletionEventCount = 0;
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  cachedDeletedText = self->_cachedDeletedText;
  self->_cachedDeletedText = v3;
}

- (void)resetHandler
{
  [(UIDictationTipDeletionHandler *)self resetDeletionEventCount];

  [(UIDictationTipDeletionHandler *)self resetRecorder];
}

- (UIDictationTipDeletionHandler)initWithDelegate:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = UIDictationTipDeletionHandler;
  v5 = [(UIDictationTipDeletionHandler *)&v10 init];
  v6 = v5;
  if (v5)
  {
    [(UIDictationTipDeletionHandler *)v5 setDelegate:v4];
    [(UIDictationTipDeletionHandler *)v6 resetDeletionEventCount];
    v7 = [[UIDelayedAction alloc] initWithTarget:v6 action:sel_finalizeRecordedText userInfo:0 delay:1.0];
    finalizeAction = v6->_finalizeAction;
    v6->_finalizeAction = v7;

    [(UIDictationTipDeletionHandler *)v6 resetHandler];
  }

  return v6;
}

- (void)setlastDeletionRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  v6 = LODWORD(a3.location) - LODWORD(self->_lastSelectedDeletionRange.location);
  if (v6 < 0)
  {
    v6 = LODWORD(self->_lastSelectedDeletionRange.location) - LODWORD(a3.location);
  }

  if (v6 >= 2)
  {
    [(UIDictationTipDeletionHandler *)self resetDeletionEventCount];
  }

  self->_lastSelectedDeletionRange.location = location;
  self->_lastSelectedDeletionRange.length = length;
}

- (void)addDeletionEventCount:(id)a3 deletedTextRange:(_NSRange)a4
{
  if (a3)
  {
    length = a4.length;
    location = a4.location;
    v8 = a3;
    [(UIDictationTipDeletionHandler *)self setlastDeletionRange:location, length];
    cachedDeletedText = self->_cachedDeletedText;
    ++self->_deletionEventCount;
    [(NSMutableString *)cachedDeletedText insertString:v8 atIndex:0];
  }
}

- (void)startRecodingText:(id)a3
{
  v8 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = [WeakRetained getDictationTipSignaled];

  if (v5 == 1)
  {
    [(UIDictationTipDeletionHandler *)self resetRecorder];
    v6 = [MEMORY[0x1E696AD60] stringWithString:self->_cachedDeletedText];
    deletionText = self->_deletionText;
    self->_deletionText = v6;

    if ([v8 length] >= 2)
    {
      [(UIDictationTipDeletionHandler *)self recordDictationTipText:v8];
    }
  }
}

- (void)recordDictationTipText:(id)a3
{
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if ([WeakRetained getDictationTipSignaled] == 1)
  {
    textRecorderStatus = self->_textRecorderStatus;

    if (textRecorderStatus != 2)
    {
      [(UIDelayedAction *)self->_finalizeAction unschedule];
      [(NSMutableString *)self->_deletionText insertString:v6 atIndex:0];
      self->_textRecorderStatus = 1;
      [(UIDelayedAction *)self->_finalizeAction touch];
    }
  }

  else
  {
  }
}

- (void)finalizeRecordedText
{
  self->_textRecorderStatus = 2;
  v15 = _UILocalizedString(@"Dictation Deletion Tip Body Standard", @"Standard Description of the deletion tip", @"While dictating, just say 'Delete...'");
  v3 = +[UIKeyboardPreferencesController sharedPreferencesController];
  if ([v3 BOOLForPreferenceKey:@"DictationTipContextual"])
  {
  }

  else
  {
    v4 = [(NSMutableString *)self->_deletionText _containsEmojiOnly];

    if ((v4 & 1) == 0)
    {
      goto LABEL_5;
    }
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = [WeakRetained replaceEmojiInStringWithEmojiDictationCommand:self->_deletionText];
  v12 = _UILocalizedFormat(@"Dictation Deletion Tip Body Contextual", @"Contextual Description of the deletion tip", @"While you dictate, say Delete ‘%@’", v7, v8, v9, v10, v11, v6);

  v15 = v12;
LABEL_5:
  v13 = [(UIDictationTipDeletionHandler *)self delegate];
  v14 = _UILocalizedString(@"Dictation Deletion Tip Title", @"Title of the deletion tip", @"Delete Text");
  [v13 finalizeTextWithTipType:1 title:v14 andTipDescription:v15];

  [(UIDictationTipDeletionHandler *)self resetDeletionEventCount];
}

- (UIDictationTipHandlerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (_NSRange)lastSelectedDeletionRange
{
  length = self->_lastSelectedDeletionRange.length;
  location = self->_lastSelectedDeletionRange.location;
  result.length = length;
  result.location = location;
  return result;
}

@end