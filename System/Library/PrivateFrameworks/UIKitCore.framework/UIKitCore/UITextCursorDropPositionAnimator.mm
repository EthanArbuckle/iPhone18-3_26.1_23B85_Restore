@interface UITextCursorDropPositionAnimator
- (BOOL)_hasActiveCaretSelection;
- (CGRect)_currentCaretRect;
- (UITextCursorDropPositionAnimator)initWithTextCursorView:(id)view textInput:(id)input;
- (id)_cursorColor;
- (void)_performWithAnimation:(BOOL)animation :(id)a4 completion:(id)completion;
- (void)animateAlongsideChanges:(id)changes completion:(id)completion;
- (void)placeCursorAtPosition:(id)position animated:(BOOL)animated;
- (void)setCursorVisible:(BOOL)visible animated:(BOOL)animated;
@end

@implementation UITextCursorDropPositionAnimator

- (UITextCursorDropPositionAnimator)initWithTextCursorView:(id)view textInput:(id)input
{
  viewCopy = view;
  inputCopy = input;
  v12.receiver = self;
  v12.super_class = UITextCursorDropPositionAnimator;
  v9 = [(UITextCursorDropPositionAnimator *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_cursorView, view);
    objc_storeStrong(&v10->_textInput, input);
  }

  return v10;
}

- (void)_performWithAnimation:(BOOL)animation :(id)a4 completion:(id)completion
{
  animationCopy = animation;
  v8 = a4;
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __70__UITextCursorDropPositionAnimator__performWithAnimation::completion___block_invoke;
  aBlock[3] = &unk_1E70F3590;
  aBlock[4] = self;
  v10 = _Block_copy(aBlock);
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __70__UITextCursorDropPositionAnimator__performWithAnimation::completion___block_invoke_2;
  v21[3] = &unk_1E70F3590;
  v21[4] = self;
  v11 = _Block_copy(v21);
  if (animationCopy)
  {
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __70__UITextCursorDropPositionAnimator__performWithAnimation::completion___block_invoke_3;
    v18[3] = &unk_1E70F77D0;
    v19 = v8;
    v20 = v10;
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __70__UITextCursorDropPositionAnimator__performWithAnimation::completion___block_invoke_4;
    v15 = &unk_1E711FF40;
    v16 = completionCopy;
    v17 = v11;
    [UIView _animateUsingSpringWithTension:1 friction:v18 interactive:&v12 animations:400.0 completion:35.0];
  }

  else
  {
    v8[2](v8);
    v10[2](v10);
    v11[2](v11);
    if (completionCopy)
    {
      completionCopy[2](completionCopy);
    }
  }

  [(NSMutableArray *)self->_alongsideAnimations removeAllObjects:v12];
  [(NSMutableArray *)self->_alongsideCompletions removeAllObjects];
}

void __70__UITextCursorDropPositionAnimator__performWithAnimation::completion___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v6 = 0u;
  v7 = 0u;
  v1 = *(*(a1 + 32) + 16);
  v2 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v7;
    do
    {
      v5 = 0;
      do
      {
        if (*v7 != v4)
        {
          objc_enumerationMutation(v1);
        }

        (*(*(*(&v6 + 1) + 8 * v5) + 16))(*(*(&v6 + 1) + 8 * v5));
        ++v5;
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
    }

    while (v3);
  }
}

void __70__UITextCursorDropPositionAnimator__performWithAnimation::completion___block_invoke_2(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v6 = 0u;
  v7 = 0u;
  v1 = *(*(a1 + 32) + 24);
  v2 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v7;
    do
    {
      v5 = 0;
      do
      {
        if (*v7 != v4)
        {
          objc_enumerationMutation(v1);
        }

        (*(*(*(&v6 + 1) + 8 * v5) + 16))(*(*(&v6 + 1) + 8 * v5));
        ++v5;
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
    }

    while (v3);
  }
}

uint64_t __70__UITextCursorDropPositionAnimator__performWithAnimation::completion___block_invoke_3(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

uint64_t __70__UITextCursorDropPositionAnimator__performWithAnimation::completion___block_invoke_4(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(*(a1 + 40) + 16);

  return v3();
}

- (void)animateAlongsideChanges:(id)changes completion:(id)completion
{
  changesCopy = changes;
  completionCopy = completion;
  if (changesCopy)
  {
    alongsideAnimations = self->_alongsideAnimations;
    if (!alongsideAnimations)
    {
      v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v9 = self->_alongsideAnimations;
      self->_alongsideAnimations = v8;

      alongsideAnimations = self->_alongsideAnimations;
    }

    v10 = [changesCopy copy];
    v11 = _Block_copy(v10);
    [(NSMutableArray *)alongsideAnimations addObject:v11];
  }

  if (completionCopy)
  {
    alongsideCompletions = self->_alongsideCompletions;
    if (!alongsideCompletions)
    {
      v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v14 = self->_alongsideCompletions;
      self->_alongsideCompletions = v13;

      alongsideCompletions = self->_alongsideCompletions;
    }

    v15 = [completionCopy copy];
    v16 = _Block_copy(v15);
    [(NSMutableArray *)alongsideCompletions addObject:v16];
  }
}

- (void)placeCursorAtPosition:(id)position animated:(BOOL)animated
{
  animatedCopy = animated;
  positionCopy = position;
  if (![(UITextCursorDropPositionAnimator *)self _hasActiveCaretSelection])
  {
    animatedCopy &= self->_didPerformInitialUpdate;
  }

  self->_didPerformInitialUpdate = 1;
  [(UITextInput *)self->_textInput caretRectForPosition:positionCopy];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  _hostView = [(UITextCursorDropPositionAnimator *)self _hostView];
  textInputView = [(UITextInput *)self->_textInput textInputView];
  [_hostView convertRect:textInputView fromView:{v8, v10, v12, v14}];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;

  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __67__UITextCursorDropPositionAnimator_placeCursorAtPosition_animated___block_invoke;
  v25[3] = &unk_1E70F3B20;
  v25[4] = self;
  v25[5] = v18;
  v25[6] = v20;
  v25[7] = v22;
  v25[8] = v24;
  [(UITextCursorDropPositionAnimator *)self _performWithAnimation:animatedCopy];
}

- (void)setCursorVisible:(BOOL)visible animated:(BOOL)animated
{
  if (self->_isCursorVisible != visible)
  {
    v14 = v4;
    v15 = v5;
    self->_isCursorVisible = visible;
    if (animated)
    {
      if (visible)
      {
        [(UITextCursorView *)self->_cursorView setHidden:0];
        [(UITextCursorView *)self->_cursorView setAlpha:0.0];
        if ([(UITextCursorDropPositionAnimator *)self _hasActiveCaretSelection])
        {
          [(UITextCursorDropPositionAnimator *)self _currentCaretRect];
          [(UITextCursorView *)self->_cursorView setFrame:?];
        }

        CGAffineTransformMakeScale(&v13, 2.0, 2.0);
        cursorView = self->_cursorView;
        v12 = v13;
        [(UITextCursorView *)cursorView setTransform:&v12];
        v11[0] = MEMORY[0x1E69E9820];
        v11[1] = 3221225472;
        v11[2] = __62__UITextCursorDropPositionAnimator_setCursorVisible_animated___block_invoke;
        v11[3] = &unk_1E70F3590;
        v11[4] = self;
        [(UITextCursorDropPositionAnimator *)self _performWithAnimation:1];
        goto LABEL_8;
      }

      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __62__UITextCursorDropPositionAnimator_setCursorVisible_animated___block_invoke_2;
      v10[3] = &unk_1E70F3590;
      v10[4] = self;
      [(UITextCursorDropPositionAnimator *)self _performWithAnimation:1];
    }

    else
    {
      [(UITextCursorView *)self->_cursorView setHidden:!visible];
      if (visible)
      {
LABEL_8:
        _cursorColor = [(UITextCursorDropPositionAnimator *)self _cursorColor];
        [(UITextCursorView *)self->_cursorView setTintColor:_cursorColor];

        return;
      }
    }

    self->_didPerformInitialUpdate = 0;
  }
}

uint64_t __62__UITextCursorDropPositionAnimator_setCursorVisible_animated___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 32) setAlpha:1.0];
  v2 = *(*(a1 + 32) + 32);
  v3 = *(MEMORY[0x1E695EFD0] + 16);
  v5[0] = *MEMORY[0x1E695EFD0];
  v5[1] = v3;
  v5[2] = *(MEMORY[0x1E695EFD0] + 32);
  return [v2 setTransform:v5];
}

uint64_t __62__UITextCursorDropPositionAnimator_setCursorVisible_animated___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) _dismissalAnimatesBackToCurrentCursorPosition];
  v3 = *(a1 + 32);
  if (v2)
  {
    [v3 _currentCaretRect];
    v4 = *(*(a1 + 32) + 32);

    return [v4 setFrame:?];
  }

  else
  {
    [v3[4] setAlpha:0.0];
    CGAffineTransformMakeScale(&v8, 0.8, 0.8);
    v6 = *(*(a1 + 32) + 32);
    v7 = v8;
    return [v6 setTransform:&v7];
  }
}

- (CGRect)_currentCaretRect
{
  [(UITextInput *)self->_textInput _caretRect];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (BOOL)_hasActiveCaretSelection
{
  isFirstResponder = [(UITextInput *)self->_textInput isFirstResponder];
  if (isFirstResponder)
  {
    [(UITextCursorDropPositionAnimator *)self _currentCaretRect];
    LOBYTE(isFirstResponder) = !CGRectIsEmpty(v5);
  }

  return isFirstResponder;
}

- (id)_cursorColor
{
  if ((objc_opt_respondsToSelector() & 1) == 0 || ([(UITextInput *)self->_textInput insertionPointColor], (v3 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v3 = +[UIColor insertionPointColor];
  }

  return v3;
}

@end