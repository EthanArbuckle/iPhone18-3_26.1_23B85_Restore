@interface UIDictationTipDeletionHandler
- (UIDictationTipDeletionHandler)initWithDelegate:(id)delegate;
- (UIDictationTipHandlerDelegate)delegate;
- (_NSRange)lastSelectedDeletionRange;
- (void)addDeletionEventCount:(id)count deletedTextRange:(_NSRange)range;
- (void)finalizeRecordedText;
- (void)recordDictationTipText:(id)text;
- (void)resetDeletionEventCount;
- (void)resetHandler;
- (void)resetRecorder;
- (void)setlastDeletionRange:(_NSRange)range;
- (void)startRecodingText:(id)text;
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

- (UIDictationTipDeletionHandler)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v10.receiver = self;
  v10.super_class = UIDictationTipDeletionHandler;
  v5 = [(UIDictationTipDeletionHandler *)&v10 init];
  v6 = v5;
  if (v5)
  {
    [(UIDictationTipDeletionHandler *)v5 setDelegate:delegateCopy];
    [(UIDictationTipDeletionHandler *)v6 resetDeletionEventCount];
    v7 = [[UIDelayedAction alloc] initWithTarget:v6 action:sel_finalizeRecordedText userInfo:0 delay:1.0];
    finalizeAction = v6->_finalizeAction;
    v6->_finalizeAction = v7;

    [(UIDictationTipDeletionHandler *)v6 resetHandler];
  }

  return v6;
}

- (void)setlastDeletionRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v6 = LODWORD(range.location) - LODWORD(self->_lastSelectedDeletionRange.location);
  if (v6 < 0)
  {
    v6 = LODWORD(self->_lastSelectedDeletionRange.location) - LODWORD(range.location);
  }

  if (v6 >= 2)
  {
    [(UIDictationTipDeletionHandler *)self resetDeletionEventCount];
  }

  self->_lastSelectedDeletionRange.location = location;
  self->_lastSelectedDeletionRange.length = length;
}

- (void)addDeletionEventCount:(id)count deletedTextRange:(_NSRange)range
{
  if (count)
  {
    length = range.length;
    location = range.location;
    countCopy = count;
    [(UIDictationTipDeletionHandler *)self setlastDeletionRange:location, length];
    cachedDeletedText = self->_cachedDeletedText;
    ++self->_deletionEventCount;
    [(NSMutableString *)cachedDeletedText insertString:countCopy atIndex:0];
  }
}

- (void)startRecodingText:(id)text
{
  textCopy = text;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  getDictationTipSignaled = [WeakRetained getDictationTipSignaled];

  if (getDictationTipSignaled == 1)
  {
    [(UIDictationTipDeletionHandler *)self resetRecorder];
    v6 = [MEMORY[0x1E696AD60] stringWithString:self->_cachedDeletedText];
    deletionText = self->_deletionText;
    self->_deletionText = v6;

    if ([textCopy length] >= 2)
    {
      [(UIDictationTipDeletionHandler *)self recordDictationTipText:textCopy];
    }
  }
}

- (void)recordDictationTipText:(id)text
{
  textCopy = text;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if ([WeakRetained getDictationTipSignaled] == 1)
  {
    textRecorderStatus = self->_textRecorderStatus;

    if (textRecorderStatus != 2)
    {
      [(UIDelayedAction *)self->_finalizeAction unschedule];
      [(NSMutableString *)self->_deletionText insertString:textCopy atIndex:0];
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
    _containsEmojiOnly = [(NSMutableString *)self->_deletionText _containsEmojiOnly];

    if ((_containsEmojiOnly & 1) == 0)
    {
      goto LABEL_5;
    }
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = [WeakRetained replaceEmojiInStringWithEmojiDictationCommand:self->_deletionText];
  v12 = _UILocalizedFormat(@"Dictation Deletion Tip Body Contextual", @"Contextual Description of the deletion tip", @"While you dictate, say Delete ‘%@’", v7, v8, v9, v10, v11, v6);

  v15 = v12;
LABEL_5:
  delegate = [(UIDictationTipDeletionHandler *)self delegate];
  v14 = _UILocalizedString(@"Dictation Deletion Tip Title", @"Title of the deletion tip", @"Delete Text");
  [delegate finalizeTextWithTipType:1 title:v14 andTipDescription:v15];

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