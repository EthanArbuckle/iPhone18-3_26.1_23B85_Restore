@interface UITextInteractionInputDelegate
- (UITextInteraction)rootInteraction;
- (void)selectionDidChange:(id)change;
- (void)selectionWillChange:(id)change;
- (void)textDidChange:(id)change;
- (void)textWillChange:(id)change;
@end

@implementation UITextInteractionInputDelegate

- (void)selectionWillChange:(id)change
{
  changeCopy = change;
  v3 = +[UIKeyboardImpl activeInstance];
  delegate = [v3 delegate];

  if (delegate == changeCopy)
  {
    v5 = +[UIKeyboardImpl activeInstance];
    [v5 selectionWillChange:changeCopy];
  }
}

- (void)selectionDidChange:(id)change
{
  changeCopy = change;
  rootInteraction = [(UITextInteractionInputDelegate *)self rootInteraction];
  v5 = +[UIKeyboardImpl activeInstance];
  delegate = [v5 delegate];

  if (delegate == changeCopy)
  {
    v7 = +[UIKeyboardImpl activeInstance];
    [v7 selectionDidChange:changeCopy];
  }

  assistantDelegate = [rootInteraction assistantDelegate];
  [assistantDelegate selectionChanged];
}

- (void)textWillChange:(id)change
{
  changeCopy = change;
  v4 = +[UIKeyboardImpl activeInstance];
  delegate = [v4 delegate];

  if (delegate == changeCopy)
  {
    v6 = +[UIKeyboardImpl activeInstance];
    [v6 textWillChange:changeCopy];
  }

  else
  {
    [(UITextInteractionInputDelegate *)self selectionWillChange:changeCopy];
  }
}

- (void)textDidChange:(id)change
{
  changeCopy = change;
  v4 = +[UIKeyboardImpl activeInstance];
  delegate = [v4 delegate];

  if (delegate == changeCopy)
  {
    v6 = +[UIKeyboardImpl activeInstance];
    [v6 textDidChange:changeCopy];
  }

  else
  {
    [(UITextInteractionInputDelegate *)self selectionDidChange:changeCopy];
  }
}

- (UITextInteraction)rootInteraction
{
  WeakRetained = objc_loadWeakRetained(&self->_rootInteraction);

  return WeakRetained;
}

@end