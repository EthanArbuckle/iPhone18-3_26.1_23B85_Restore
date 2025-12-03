@interface _UISelectionInteraction
- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer;
- (BOOL)gestureRecognizer:(id)recognizer shouldRequireFailureOfGestureRecognizer:(id)gestureRecognizer;
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (BOOL)isHinting;
- (UITapGestureRecognizer)selectGestureRecognizer;
- (UIView)view;
- (_UIFocusSelectObserverGestureRecognizer)selectHighlightRecognizer;
- (_UISelectionInteraction)init;
- (_UISelectionInteractionDelegate)delegate;
- (void)didMoveToView:(id)view;
- (void)highlightGestureHandler:(id)handler;
- (void)selectGestureHandler:(id)handler;
- (void)setDelegate:(id)delegate;
- (void)setEnabled:(BOOL)enabled;
- (void)willMoveToView:(id)view;
@end

@implementation _UISelectionInteraction

- (_UISelectionInteraction)init
{
  v3.receiver = self;
  v3.super_class = _UISelectionInteraction;
  result = [(_UISelectionInteraction *)&v3 init];
  if (result)
  {
    result->_enabled = 1;
  }

  return result;
}

- (UIView)view
{
  WeakRetained = objc_loadWeakRetained(&self->_view);

  return WeakRetained;
}

- (UITapGestureRecognizer)selectGestureRecognizer
{
  selectGestureRecognizer = self->_selectGestureRecognizer;
  if (!selectGestureRecognizer)
  {
    v4 = [[UITapGestureRecognizer alloc] initWithTarget:self action:sel_selectGestureHandler_];
    [(UITapGestureRecognizer *)v4 setAllowedPressTypes:&unk_1EFE2BF98];
    [(UIGestureRecognizer *)v4 setAllowedTouchTypes:MEMORY[0x1E695E0F0]];
    [(UIGestureRecognizer *)v4 setEnabled:[(_UISelectionInteraction *)self isEnabled]];
    [(UIGestureRecognizer *)v4 setCancelsTouchesInView:0];
    [(UIGestureRecognizer *)v4 setDelegate:self];
    v5 = self->_selectGestureRecognizer;
    self->_selectGestureRecognizer = v4;

    selectGestureRecognizer = self->_selectGestureRecognizer;
  }

  return selectGestureRecognizer;
}

- (_UIFocusSelectObserverGestureRecognizer)selectHighlightRecognizer
{
  selectHighlightRecognizer = self->_selectHighlightRecognizer;
  if (!selectHighlightRecognizer)
  {
    v4 = [[_UIFocusSelectObserverGestureRecognizer alloc] initWithTarget:self action:sel_highlightGestureHandler_];
    [(UIGestureRecognizer *)v4 setDelegate:self];
    v5 = self->_selectHighlightRecognizer;
    self->_selectHighlightRecognizer = v4;

    selectHighlightRecognizer = self->_selectHighlightRecognizer;
  }

  return selectHighlightRecognizer;
}

- (BOOL)isHinting
{
  state = [(UIGestureRecognizer *)self->_selectHighlightRecognizer state];
  if (state != UIGestureRecognizerStateBegan)
  {
    LOBYTE(state) = [(UIGestureRecognizer *)self->_selectHighlightRecognizer state]== UIGestureRecognizerStateChanged;
  }

  return state;
}

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  objc_storeWeak(&self->_delegate, delegateCopy);
  *&self->_flags = *&self->_flags & 0xFE | objc_opt_respondsToSelector() & 1;
  if (objc_opt_respondsToSelector())
  {
    v5 = 2;
  }

  else
  {
    v5 = 0;
  }

  *&self->_flags = *&self->_flags & 0xFD | v5;
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = 4;
  }

  else
  {
    v7 = 0;
  }

  *&self->_flags = *&self->_flags & 0xFB | v7;
}

- (void)setEnabled:(BOOL)enabled
{
  if (self->_enabled != enabled)
  {
    enabledCopy = enabled;
    self->_enabled = enabled;
    [(UIGestureRecognizer *)self->_selectGestureRecognizer setEnabled:?];
    selectHighlightRecognizer = self->_selectHighlightRecognizer;

    [(UIGestureRecognizer *)selectHighlightRecognizer setEnabled:enabledCopy];
  }
}

- (void)willMoveToView:(id)view
{
  view = [(_UISelectionInteraction *)self view];
  if (view)
  {
    if (self->_selectHighlightRecognizer)
    {
      [view removeGestureRecognizer:?];
    }

    if (self->_selectGestureRecognizer)
    {
      [view removeGestureRecognizer:?];
    }
  }

  [(_UISelectionInteraction *)self setView:0];
}

- (void)didMoveToView:(id)view
{
  viewCopy = view;
  if (viewCopy)
  {
    selectGestureRecognizer = [(_UISelectionInteraction *)self selectGestureRecognizer];
    [viewCopy addGestureRecognizer:selectGestureRecognizer];

    selectHighlightRecognizer = [(_UISelectionInteraction *)self selectHighlightRecognizer];
    [viewCopy addGestureRecognizer:selectHighlightRecognizer];
  }

  [(_UISelectionInteraction *)self setView:viewCopy];
}

- (void)selectGestureHandler:(id)handler
{
  handlerCopy = handler;
  selectGestureRecognizer = [(_UISelectionInteraction *)self selectGestureRecognizer];

  v5 = handlerCopy;
  if (selectGestureRecognizer == handlerCopy)
  {
    v6 = [handlerCopy state] == 3;
    v5 = handlerCopy;
    if (v6)
    {
      delegate = [(_UISelectionInteraction *)self delegate];
      [delegate _selectionInteractionDidSelect:self];

      v5 = handlerCopy;
    }
  }
}

- (void)highlightGestureHandler:(id)handler
{
  handlerCopy = handler;
  selectHighlightRecognizer = [(_UISelectionInteraction *)self selectHighlightRecognizer];

  v5 = handlerCopy;
  if (selectHighlightRecognizer == handlerCopy)
  {
    state = [handlerCopy state];
    if ((state - 3) >= 2)
    {
      v10 = state == 1;
      v5 = handlerCopy;
      if (!v10 || (*&self->_flags & 1) == 0)
      {
        goto LABEL_2;
      }

      delegate = [(_UISelectionInteraction *)self delegate];
      [delegate _selectionInteractionDidBeginHinting:self];
    }

    else
    {
      v5 = handlerCopy;
      if ((*&self->_flags & 2) == 0)
      {
        goto LABEL_2;
      }

      selectGestureRecognizer = [(_UISelectionInteraction *)self selectGestureRecognizer];
      state2 = [selectGestureRecognizer state];

      v5 = handlerCopy;
      if (state2 == 3)
      {
        goto LABEL_2;
      }

      delegate = [(_UISelectionInteraction *)self delegate];
      [delegate _selectionInteractionDidCancelHinting:self];
    }

    v5 = handlerCopy;
  }

LABEL_2:
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  selectGestureRecognizer = self->_selectGestureRecognizer;
  if (selectGestureRecognizer && ([(UIGestureRecognizer *)selectGestureRecognizer _state]- 1) < 3)
  {
    v5 = 1;
  }

  else
  {
    selectHighlightRecognizer = self->_selectHighlightRecognizer;
    if (selectHighlightRecognizer)
    {
      v5 = ([(UIGestureRecognizer *)selectHighlightRecognizer _state]- 1) < 3;
    }

    else
    {
      v5 = 0;
    }
  }

  delegate = self->_selectGestureRecognizer;
  if ([(UIGestureRecognizer *)delegate state]== UIGestureRecognizerStateCancelled)
  {
    goto LABEL_7;
  }

  state = [(UIGestureRecognizer *)delegate state];

  if (state == 5)
  {
    return 0;
  }

  delegate = self->_selectHighlightRecognizer;
  if ([(UIGestureRecognizer *)delegate state]== UIGestureRecognizerStateCancelled)
  {
LABEL_7:
    v8 = 0;
  }

  else
  {
    state2 = [(UIGestureRecognizer *)delegate state];
    v8 = state2 != 5;
    v12 = state2 == 5;

    if (v12 || v5)
    {
      return v8;
    }

    if ((*&self->_flags & 4) == 0)
    {
      return 1;
    }

    delegate = [(_UISelectionInteraction *)self delegate];
    v8 = [(UITapGestureRecognizer *)delegate _selectionInteractionShouldBegin:self];
  }

  return v8;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldRequireFailureOfGestureRecognizer:(id)gestureRecognizer
{
  gestureRecognizerCopy = gestureRecognizer;
  if (self->_selectGestureRecognizer != recognizer)
  {
    goto LABEL_2;
  }

  selfCopy = self;
  v9 = gestureRecognizerCopy;
  if ((dyld_program_sdk_at_least() & 1) != 0 || ![(_UISelectionInteraction *)selfCopy simulatePressesCallbacksForLegacyBehavior])
  {

    v7 = 0;
    goto LABEL_8;
  }

  cancelsTouchesInView = [v9 cancelsTouchesInView];

  if (cancelsTouchesInView)
  {
    selfCopy = [v9 allowedPressTypes];
    v7 = [(_UISelectionInteraction *)selfCopy containsObject:&unk_1EFE30A18];
LABEL_8:

    goto LABEL_9;
  }

LABEL_2:
  v7 = 0;
LABEL_9:

  return v7;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer
{
  gestureRecognizerCopy = gestureRecognizer;
  if (self->_selectGestureRecognizer == recognizer && ((dyld_program_sdk_at_least() & 1) != 0 || -[_UISelectionInteraction simulatePressesCallbacksForLegacyBehavior](self, "simulatePressesCallbacksForLegacyBehavior")) && [gestureRecognizerCopy _isGestureType:0])
  {
    allowedPressTypes = [gestureRecognizerCopy allowedPressTypes];
    v7 = [allowedPressTypes containsObject:&unk_1EFE30A18];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (_UISelectionInteractionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end