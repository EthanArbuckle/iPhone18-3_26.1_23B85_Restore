@interface UIDictationTipSelectionHandler
- (UIDictationTipHandlerDelegate)delegate;
- (UIDictationTipSelectionHandler)initWithDelegate:(id)a3;
- (void)finalizeSelectionTip;
- (void)signalSelectedText:(id)a3;
@end

@implementation UIDictationTipSelectionHandler

- (UIDictationTipSelectionHandler)initWithDelegate:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = UIDictationTipSelectionHandler;
  v5 = [(UIDictationTipSelectionHandler *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(UIDictationTipSelectionHandler *)v5 setDelegate:v4];
  }

  return v6;
}

- (void)signalSelectedText:(id)a3
{
  v17 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = [WeakRetained getDictationTipSignaled];

  if (v5 == 4)
  {
    v6 = _UILocalizedString(@"Dictation Selection Tip Body Standard", @"Standard description of selection tip", @"While you dictate, say something like “Select 'see you later.'”");
    v7 = +[UIKeyboardPreferencesController sharedPreferencesController];
    if ([v7 BOOLForPreferenceKey:@"DictationTipContextual"])
    {
    }

    else
    {
      v8 = [v17 _containsEmojiOnly];

      if ((v8 & 1) == 0)
      {
LABEL_6:
        [(UIDictationTipSelectionHandler *)self setSelectionText:v6];

        goto LABEL_7;
      }
    }

    v9 = objc_loadWeakRetained(&self->_delegate);
    v10 = [v9 replaceEmojiInStringWithEmojiDictationCommand:v17];
    v16 = _UILocalizedFormat(@"Dictation Selection Tip Body Contextual", @"Contexual description of selection tip", @"While you dictate, say Select ‘%@’", v11, v12, v13, v14, v15, v10);

    v6 = v16;
    goto LABEL_6;
  }

LABEL_7:
}

- (void)finalizeSelectionTip
{
  v4 = [(UIDictationTipSelectionHandler *)self delegate];
  v3 = _UILocalizedString(@"Dictation Selection Tip Title", @"Title of the selection tip", @"Select Text");
  [v4 finalizeTextWithTipType:4 title:v3 andTipDescription:self->_selectionText];
}

- (UIDictationTipHandlerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end