@interface _UISelectionInteraction
- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4;
- (BOOL)gestureRecognizer:(id)a3 shouldRequireFailureOfGestureRecognizer:(id)a4;
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (BOOL)isHinting;
- (UITapGestureRecognizer)selectGestureRecognizer;
- (UIView)view;
- (_UIFocusSelectObserverGestureRecognizer)selectHighlightRecognizer;
- (_UISelectionInteraction)init;
- (_UISelectionInteractionDelegate)delegate;
- (void)didMoveToView:(id)a3;
- (void)highlightGestureHandler:(id)a3;
- (void)selectGestureHandler:(id)a3;
- (void)setDelegate:(id)a3;
- (void)setEnabled:(BOOL)a3;
- (void)willMoveToView:(id)a3;
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
  v3 = [(UIGestureRecognizer *)self->_selectHighlightRecognizer state];
  if (v3 != UIGestureRecognizerStateBegan)
  {
    LOBYTE(v3) = [(UIGestureRecognizer *)self->_selectHighlightRecognizer state]== UIGestureRecognizerStateChanged;
  }

  return v3;
}

- (void)setDelegate:(id)a3
{
  v4 = a3;
  objc_storeWeak(&self->_delegate, v4);
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

- (void)setEnabled:(BOOL)a3
{
  if (self->_enabled != a3)
  {
    v4 = a3;
    self->_enabled = a3;
    [(UIGestureRecognizer *)self->_selectGestureRecognizer setEnabled:?];
    selectHighlightRecognizer = self->_selectHighlightRecognizer;

    [(UIGestureRecognizer *)selectHighlightRecognizer setEnabled:v4];
  }
}

- (void)willMoveToView:(id)a3
{
  v4 = [(_UISelectionInteraction *)self view];
  if (v4)
  {
    if (self->_selectHighlightRecognizer)
    {
      [v4 removeGestureRecognizer:?];
    }

    if (self->_selectGestureRecognizer)
    {
      [v4 removeGestureRecognizer:?];
    }
  }

  [(_UISelectionInteraction *)self setView:0];
}

- (void)didMoveToView:(id)a3
{
  v6 = a3;
  if (v6)
  {
    v4 = [(_UISelectionInteraction *)self selectGestureRecognizer];
    [v6 addGestureRecognizer:v4];

    v5 = [(_UISelectionInteraction *)self selectHighlightRecognizer];
    [v6 addGestureRecognizer:v5];
  }

  [(_UISelectionInteraction *)self setView:v6];
}

- (void)selectGestureHandler:(id)a3
{
  v8 = a3;
  v4 = [(_UISelectionInteraction *)self selectGestureRecognizer];

  v5 = v8;
  if (v4 == v8)
  {
    v6 = [v8 state] == 3;
    v5 = v8;
    if (v6)
    {
      v7 = [(_UISelectionInteraction *)self delegate];
      [v7 _selectionInteractionDidSelect:self];

      v5 = v8;
    }
  }
}

- (void)highlightGestureHandler:(id)a3
{
  v11 = a3;
  v4 = [(_UISelectionInteraction *)self selectHighlightRecognizer];

  v5 = v11;
  if (v4 == v11)
  {
    v6 = [v11 state];
    if ((v6 - 3) >= 2)
    {
      v10 = v6 == 1;
      v5 = v11;
      if (!v10 || (*&self->_flags & 1) == 0)
      {
        goto LABEL_2;
      }

      v9 = [(_UISelectionInteraction *)self delegate];
      [v9 _selectionInteractionDidBeginHinting:self];
    }

    else
    {
      v5 = v11;
      if ((*&self->_flags & 2) == 0)
      {
        goto LABEL_2;
      }

      v7 = [(_UISelectionInteraction *)self selectGestureRecognizer];
      v8 = [v7 state];

      v5 = v11;
      if (v8 == 3)
      {
        goto LABEL_2;
      }

      v9 = [(_UISelectionInteraction *)self delegate];
      [v9 _selectionInteractionDidCancelHinting:self];
    }

    v5 = v11;
  }

LABEL_2:
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
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

  v7 = self->_selectGestureRecognizer;
  if ([(UIGestureRecognizer *)v7 state]== UIGestureRecognizerStateCancelled)
  {
    goto LABEL_7;
  }

  v9 = [(UIGestureRecognizer *)v7 state];

  if (v9 == 5)
  {
    return 0;
  }

  v7 = self->_selectHighlightRecognizer;
  if ([(UIGestureRecognizer *)v7 state]== UIGestureRecognizerStateCancelled)
  {
LABEL_7:
    v8 = 0;
  }

  else
  {
    v11 = [(UIGestureRecognizer *)v7 state];
    v8 = v11 != 5;
    v12 = v11 == 5;

    if (v12 || v5)
    {
      return v8;
    }

    if ((*&self->_flags & 4) == 0)
    {
      return 1;
    }

    v7 = [(_UISelectionInteraction *)self delegate];
    v8 = [(UITapGestureRecognizer *)v7 _selectionInteractionShouldBegin:self];
  }

  return v8;
}

- (BOOL)gestureRecognizer:(id)a3 shouldRequireFailureOfGestureRecognizer:(id)a4
{
  v6 = a4;
  if (self->_selectGestureRecognizer != a3)
  {
    goto LABEL_2;
  }

  v8 = self;
  v9 = v6;
  if ((dyld_program_sdk_at_least() & 1) != 0 || ![(_UISelectionInteraction *)v8 simulatePressesCallbacksForLegacyBehavior])
  {

    v7 = 0;
    goto LABEL_8;
  }

  v10 = [v9 cancelsTouchesInView];

  if (v10)
  {
    v8 = [v9 allowedPressTypes];
    v7 = [(_UISelectionInteraction *)v8 containsObject:&unk_1EFE30A18];
LABEL_8:

    goto LABEL_9;
  }

LABEL_2:
  v7 = 0;
LABEL_9:

  return v7;
}

- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4
{
  v6 = a4;
  if (self->_selectGestureRecognizer == a3 && ((dyld_program_sdk_at_least() & 1) != 0 || -[_UISelectionInteraction simulatePressesCallbacksForLegacyBehavior](self, "simulatePressesCallbacksForLegacyBehavior")) && [v6 _isGestureType:0])
  {
    v9 = [v6 allowedPressTypes];
    v7 = [v9 containsObject:&unk_1EFE30A18];
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