@interface UIDictationTipSelectionHandler
- (UIDictationTipHandlerDelegate)delegate;
- (UIDictationTipSelectionHandler)initWithDelegate:(id)delegate;
- (void)finalizeSelectionTip;
- (void)signalSelectedText:(id)text;
@end

@implementation UIDictationTipSelectionHandler

- (UIDictationTipSelectionHandler)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v8.receiver = self;
  v8.super_class = UIDictationTipSelectionHandler;
  v5 = [(UIDictationTipSelectionHandler *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(UIDictationTipSelectionHandler *)v5 setDelegate:delegateCopy];
  }

  return v6;
}

- (void)signalSelectedText:(id)text
{
  textCopy = text;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  getDictationTipSignaled = [WeakRetained getDictationTipSignaled];

  if (getDictationTipSignaled == 4)
  {
    v6 = _UILocalizedString(@"Dictation Selection Tip Body Standard", @"Standard description of selection tip", @"While you dictate, say something like “Select 'see you later.'”");
    v7 = +[UIKeyboardPreferencesController sharedPreferencesController];
    if ([v7 BOOLForPreferenceKey:@"DictationTipContextual"])
    {
    }

    else
    {
      _containsEmojiOnly = [textCopy _containsEmojiOnly];

      if ((_containsEmojiOnly & 1) == 0)
      {
LABEL_6:
        [(UIDictationTipSelectionHandler *)self setSelectionText:v6];

        goto LABEL_7;
      }
    }

    v9 = objc_loadWeakRetained(&self->_delegate);
    v10 = [v9 replaceEmojiInStringWithEmojiDictationCommand:textCopy];
    v16 = _UILocalizedFormat(@"Dictation Selection Tip Body Contextual", @"Contexual description of selection tip", @"While you dictate, say Select ‘%@’", v11, v12, v13, v14, v15, v10);

    v6 = v16;
    goto LABEL_6;
  }

LABEL_7:
}

- (void)finalizeSelectionTip
{
  delegate = [(UIDictationTipSelectionHandler *)self delegate];
  v3 = _UILocalizedString(@"Dictation Selection Tip Title", @"Title of the selection tip", @"Select Text");
  [delegate finalizeTextWithTipType:4 title:v3 andTipDescription:self->_selectionText];
}

- (UIDictationTipHandlerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end