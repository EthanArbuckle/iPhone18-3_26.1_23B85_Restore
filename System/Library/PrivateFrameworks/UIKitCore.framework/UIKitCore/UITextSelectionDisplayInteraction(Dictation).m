@interface UITextSelectionDisplayInteraction(Dictation)
- (UIDictationDeleteButton)_deleteButton;
- (void)setWantsDeleteButtonVisible:()Dictation;
@end

@implementation UITextSelectionDisplayInteraction(Dictation)

- (UIDictationDeleteButton)_deleteButton
{
  deleteButton = self->__deleteButton;
  if (!deleteButton)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __61__UITextSelectionDisplayInteraction_Dictation___deleteButton__block_invoke;
    aBlock[3] = &unk_1E70F3590;
    aBlock[4] = self;
    v4 = _Block_copy(aBlock);
    v5 = [UIDictationDeleteButton alloc];
    v6 = [(UITextSelectionDisplayInteraction *)self _cursorTintColor];
    v7 = [(UIDictationDeleteButton *)v5 initWithFrame:v4 actionHandler:v6 tintColor:0.0, 0.0, 60.0, 45.0];
    v8 = self->__deleteButton;
    self->__deleteButton = v7;

    v9 = [(UITextSelectionDisplayInteraction *)self view];
    [v9 addSubview:self->__deleteButton];

    v10 = [(UITextSelectionDisplayInteraction *)self view];
    [v10 bringSubviewToFront:self->__deleteButton];

    [(UIView *)self->__deleteButton setAlpha:0.0];
    deleteButton = self->__deleteButton;
  }

  return deleteButton;
}

- (void)setWantsDeleteButtonVisible:()Dictation
{
  v3 = a3;
  if ([(UITextSelectionDisplayInteraction *)self _supportDeleteButton])
  {
    if (v3)
    {
      if ([(UITextSelectionDisplayInteraction *)self _isDictationRunning])
      {
        v5 = [(UITextSelectionDisplayInteraction *)self textInput];
        v6 = [v5 hasText];

        if (v6)
        {
          deleteButton = self->__deleteButton;
          if (deleteButton && ![(UIView *)deleteButton isHidden])
          {
            [(UITextSelectionDisplayInteraction *)self _applyDeleteHiddenState];
          }

          [(UITextSelectionDisplayInteraction *)self set_isDeleteButtonVisible:1];
        }
      }
    }

    else
    {

      [(UITextSelectionDisplayInteraction *)self _applyDeleteHiddenState];
    }
  }
}

@end