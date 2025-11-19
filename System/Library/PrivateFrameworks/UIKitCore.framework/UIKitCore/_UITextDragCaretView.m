@interface _UITextDragCaretView
- (BOOL)_isRemoveAnimatesBackToCaret;
- (CGRect)_configureMask:(id)a3 withPath:(id)a4;
- (_UITextDragCaretView)initWithTextInputView:(id)a3;
- (id)_caretColor;
- (id)_maskForRects:(id)a3;
- (id)_rangeColor;
- (id)_rectsForRange:(id)a3;
- (void)_insertAtRangeOrPosition:(id)a3 animations:(id)a4 completion:(id)a5 animated:(BOOL)a6;
- (void)_performUpdate:(id)a3;
- (void)_updateToRangeOrPosition:(id)a3 animations:(id)a4 completion:(id)a5 animated:(BOOL)a6;
- (void)removeWithAnimations:(id)a3 completion:(id)a4 animated:(BOOL)a5;
@end

@implementation _UITextDragCaretView

- (_UITextDragCaretView)initWithTextInputView:(id)a3
{
  objc_initWeak(&location, a3);
  v9.receiver = self;
  v9.super_class = _UITextDragCaretView;
  v4 = [(UIView *)&v9 init];
  if (v4)
  {
    v5 = objc_loadWeakRetained(&location);
    objc_storeWeak(&v4->_view, v5);

    v6 = [MEMORY[0x1E69794A0] layer];
    mask = v4->_mask;
    v4->_mask = v6;

    [(UIView *)v4 setUserInteractionEnabled:0];
  }

  objc_destroyWeak(&location);
  return v4;
}

- (void)_insertAtRangeOrPosition:(id)a3 animations:(id)a4 completion:(id)a5 animated:(BOOL)a6
{
  v61 = a6;
  v9 = a3;
  v60 = a4;
  v10 = a5;
  WeakRetained = objc_loadWeakRetained(&self->_view);
  [WeakRetained addSubview:self];

  v12 = v9;
  v13 = objc_opt_respondsToSelector();
  if (objc_opt_respondsToSelector())
  {
    v14 = [v12 isEmpty];
    if (v13)
    {
      if (v14)
      {
        v15 = [v12 start];
        v16 = v15;
        v17 = 0;
        goto LABEL_8;
      }

      goto LABEL_6;
    }
  }

  else if (v13)
  {
LABEL_6:
    v18 = v12;
    v15 = 0;
    v17 = v12;
    goto LABEL_8;
  }

  v19 = v12;
  v17 = 0;
  v15 = v12;
LABEL_8:

  v20 = v17;
  v21 = v15;
  if (v21)
  {
    v22 = [(_UITextDragCaretView *)self _caretColor];
    [(UIView *)self setBackgroundColor:v22];

    v23 = objc_loadWeakRetained(&self->_view);
    [v23 caretRectForPosition:v21];
    v25 = v24;
    v27 = v26;
    v29 = v28;
    v31 = v30;
    v32 = objc_loadWeakRetained(&self->_view);
    v33 = [v32 textInputView];
    [v23 convertRect:v33 fromView:{v25, v27, v29, v31}];
    v35 = v34;
    v37 = v36;
    v39 = v38;
    v41 = v40;

    v42 = 0;
  }

  else
  {
    v43 = [(_UITextDragCaretView *)self _rangeColor];
    [(UIView *)self setBackgroundColor:v43];

    mask = self->_mask;
    v45 = [(_UITextDragCaretView *)self _rectsForRange:v20];
    v46 = [(_UITextDragCaretView *)self _maskForRects:v45];
    [(_UITextDragCaretView *)self _configureMask:mask withPath:v46];
    v35 = v47;
    v37 = v48;
    v39 = v49;
    v41 = v50;

    v42 = self->_mask;
  }

  v51 = objc_loadWeakRetained(&self->_view);
  if ([v51 isFirstResponder])
  {
    v52 = objc_loadWeakRetained(&self->_view);
    [v52 _caretRect];
    IsEmpty = CGRectIsEmpty(v73);

    if (!IsEmpty)
    {
      v54 = objc_loadWeakRetained(&self->_view);
      [v54 _caretRect];
      [(UIView *)self setFrame:?];

      v55 = [(UIView *)self layer];
      [v55 setMask:0];

      goto LABEL_16;
    }
  }

  else
  {
  }

  [(UIView *)self setAlpha:0.0, v60];
  CGAffineTransformMakeScale(&v72, 2.0, 2.0);
  v71 = v72;
  [(UIView *)self setTransform:&v71];
  [(UIView *)self setFrame:v35, v37, v39, v41];
LABEL_16:
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __80___UITextDragCaretView__insertAtRangeOrPosition_animations_completion_animated___block_invoke;
  aBlock[3] = &unk_1E7124A18;
  aBlock[4] = self;
  v67 = v35;
  v68 = v37;
  v69 = v39;
  v70 = v41;
  v56 = v42;
  v65 = v56;
  v57 = v60;
  v66 = v57;
  v58 = _Block_copy(aBlock);
  v59 = v58;
  if (!v10)
  {
    v10 = &__block_literal_global_591;
  }

  if (v61)
  {
    v62[0] = MEMORY[0x1E69E9820];
    v62[1] = 3221225472;
    v62[2] = __80___UITextDragCaretView__insertAtRangeOrPosition_animations_completion_animated___block_invoke_3;
    v62[3] = &unk_1E7103030;
    v63 = v10;
    [UIView _animateUsingSpringWithTension:0 friction:v59 interactive:v62 animations:400.0 completion:35.0];
  }

  else
  {
    (*(v58 + 2))(v58);
    v10[2](v10);
  }
}

- (void)_updateToRangeOrPosition:(id)a3 animations:(id)a4 completion:(id)a5 animated:(BOOL)a6
{
  v65 = a6;
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = &__block_literal_global_18_6;
  }

  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = &__block_literal_global_20_9;
  }

  v66 = v9;
  v14 = objc_opt_respondsToSelector();
  if (objc_opt_respondsToSelector())
  {
    v15 = [v66 isEmpty];
    if (v14)
    {
      if (v15)
      {
        v16 = [v66 start];
        v17 = v16;
        v18 = v66;
        v19 = 0;
        goto LABEL_14;
      }

      goto LABEL_12;
    }
  }

  else if (v14)
  {
LABEL_12:
    v18 = v66;
    v16 = 0;
    v19 = v18;
    goto LABEL_14;
  }

  v18 = v66;
  v19 = 0;
  v16 = v18;
LABEL_14:

  v20 = v19;
  v21 = v16;
  if (v21)
  {
    v64 = v16;
    v22 = v19;
    v23 = objc_opt_new();
    v24 = objc_loadWeakRetained(&self->_view);
    [v24 caretRectForPosition:v21];
    v26 = v25;
    v28 = v27;
    v30 = v29;
    v32 = v31;
    v33 = v20;
    v34 = v13;
    v35 = v12;
    WeakRetained = objc_loadWeakRetained(&self->_view);
    v37 = [WeakRetained textInputView];
    [v24 convertRect:v37 fromView:{v26, v28, v30, v32}];
    v39 = v38;
    v41 = v40;
    v43 = v42;
    v45 = v44;

    v12 = v35;
    v13 = v34;
    v20 = v33;
    v46 = v23;
    v19 = v22;
    v16 = v64;
  }

  else
  {
    v47 = [(_UITextDragCaretView *)self _rectsForRange:v20];
    v46 = [(_UITextDragCaretView *)self _maskForRects:v47];

    [v46 bounds];
    v39 = v48;
    v41 = v49;
    v43 = v50;
    v45 = v51;
  }

  [(UIView *)self frame];
  v69.origin.x = v39;
  v69.origin.y = v41;
  v69.size.width = v43;
  v69.size.height = v45;
  if (!CGRectEqualToRect(v68, v69))
  {
    v52 = objc_opt_new();
    objc_storeStrong((v52 + 8), v16);
    objc_storeStrong((v52 + 16), v19);
    objc_storeStrong((v52 + 24), v46);
    v53 = _Block_copy(v12);
    v54 = *(v52 + 32);
    *(v52 + 32) = v53;

    v55 = _Block_copy(v13);
    v56 = *(v52 + 40);
    *(v52 + 40) = v55;

    *(v52 + 48) = v65;
    if (v21 && v65 && (v57 = objc_loadWeakRetained(&self->_view), [v57 tokenizer], v58 = v46, v59 = v20, v60 = v13, v61 = v12, v62 = objc_claimAutoreleasedReturnValue(), v63 = objc_msgSend(v62, "isPosition:atBoundary:inDirection:", v21, 4, 1), v62, v12 = v61, v13 = v60, v20 = v59, v46 = v58, v57, v63))
    {
      [(_UITextDragCaretView *)self performSelector:sel__performUpdate_ withObject:v52 afterDelay:0.5];
    }

    else
    {
      [(_UITextDragCaretView *)self _performUpdate:v52];
    }
  }
}

- (void)_performUpdate:(id)a3
{
  v4 = a3;
  [objc_opt_class() cancelPreviousPerformRequestsWithTarget:self];
  v5 = *(v4 + 1);
  v6 = *(v4 + 3);
  v7 = _Block_copy(*(v4 + 4));
  v8 = _Block_copy(*(v4 + 5));
  v9 = v4[48];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __39___UITextDragCaretView__performUpdate___block_invoke;
  aBlock[3] = &unk_1E70FCE50;
  aBlock[4] = self;
  v10 = v5;
  v18 = v10;
  v11 = v6;
  v19 = v11;
  v21 = v9;
  v12 = v7;
  v20 = v12;
  v13 = _Block_copy(aBlock);
  v14 = v13;
  if (v9 == 1)
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __39___UITextDragCaretView__performUpdate___block_invoke_2;
    v15[3] = &unk_1E7103030;
    v16 = v8;
    [UIView _animateUsingSpringWithTension:1 friction:v14 interactive:v15 animations:400.0 completion:35.0];
  }

  else
  {
    (*(v13 + 2))(v13);
    v8[2](v8);
  }
}

- (void)removeWithAnimations:(id)a3 completion:(id)a4 animated:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  if ([(_UITextDragCaretView *)self _isRemoveAnimatesBackToCaret])
  {
    v10 = v23;
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v11 = __65___UITextDragCaretView_removeWithAnimations_completion_animated___block_invoke;
  }

  else
  {
    v10 = v22;
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v11 = __65___UITextDragCaretView_removeWithAnimations_completion_animated___block_invoke_2;
  }

  v10[2] = v11;
  v10[3] = &unk_1E70F37C0;
  v10[4] = self;
  v12 = v8;
  v10[5] = v12;
  v13 = _Block_copy(v10);

  v16 = MEMORY[0x1E69E9820];
  v17 = 3221225472;
  v18 = __65___UITextDragCaretView_removeWithAnimations_completion_animated___block_invoke_3;
  v19 = &unk_1E711F7E0;
  v20 = self;
  v14 = v9;
  v21 = v14;
  v15 = _Block_copy(&v16);
  if (v5)
  {
    [UIView _animateUsingSpringWithTension:0 friction:v13 interactive:v15 animations:400.0 completion:35.0, v16, v17, v18, v19, v20];
  }

  else
  {
    v13[2](v13);
    v15[2](v15, 1, 0);
  }
}

- (BOOL)_isRemoveAnimatesBackToCaret
{
  WeakRetained = objc_loadWeakRetained(&self->_view);
  if ([WeakRetained isFirstResponder])
  {
    v4 = objc_loadWeakRetained(&self->_view);
    [v4 _caretRect];
    v5 = !CGRectIsEmpty(v7);
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (id)_caretColor
{
  WeakRetained = objc_loadWeakRetained(&self->_view);
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0 || (v5 = objc_loadWeakRetained(&self->_view), [v5 insertionPointColor], v6 = objc_claimAutoreleasedReturnValue(), v5, !v6))
  {
    v6 = +[UIColor insertionPointColor];
  }

  return v6;
}

- (id)_rangeColor
{
  WeakRetained = objc_loadWeakRetained(&self->_view);
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0 || (v5 = objc_loadWeakRetained(&self->_view), [v5 selectionHighlightColor], v6 = objc_claimAutoreleasedReturnValue(), v5, !v6))
  {
    v6 = +[UIColor selectionHighlightColor];
  }

  return v6;
}

- (id)_rectsForRange:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_view);
  v6 = [WeakRetained selectionRectsForRange:v4];

  return v6;
}

- (id)_maskForRects:(id)a3
{
  v53 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_opt_new();
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v47 objects:v52 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v48;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v48 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v47 + 1) + 8 * i);
        [v11 rect];
        if (!CGRectIsEmpty(v55))
        {
          [v11 rect];
          v12 = [UIBezierPath bezierPathWithRect:?];
          [v5 appendPath:v12];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v47 objects:v52 count:16];
    }

    while (v8);
  }

  if ([(_UITextDragCaretView *)self rangesExcludeSelection])
  {
    WeakRetained = objc_loadWeakRetained(&self->_view);
    v14 = [WeakRetained selectedTextRange];
    if (!v14)
    {
LABEL_14:

      goto LABEL_15;
    }

    v15 = v14;
    v16 = objc_loadWeakRetained(&self->_view);
    v17 = [v16 selectedTextRange];
    if ([v17 _isCaret])
    {

      goto LABEL_14;
    }

    v41 = objc_loadWeakRetained(&self->_view);
    v19 = [v41 selectedTextRange];
    v42 = [v19 isEmpty];

    if ((v42 & 1) == 0)
    {
      WeakRetained = objc_opt_new();
      v20 = objc_loadWeakRetained(&self->_view);
      v21 = [v20 selectedTextRange];
      v22 = [v20 selectionRectsForRange:v21];

      v45 = 0u;
      v46 = 0u;
      v43 = 0u;
      v44 = 0u;
      v6 = v22;
      v23 = [v6 countByEnumeratingWithState:&v43 objects:v51 count:16];
      if (v23)
      {
        v24 = v23;
        v25 = *v44;
        do
        {
          for (j = 0; j != v24; ++j)
          {
            if (*v44 != v25)
            {
              objc_enumerationMutation(v6);
            }

            v27 = *(*(&v43 + 1) + 8 * j);
            [v27 rect];
            if (!CGRectIsEmpty(v56))
            {
              [v27 rect];
              v28 = [UIBezierPath bezierPathWithRect:?];
              [WeakRetained appendPath:v28];
            }
          }

          v24 = [v6 countByEnumeratingWithState:&v43 objects:v51 count:16];
        }

        while (v24);
      }

      [v5 bounds];
      v30 = v29;
      v32 = v31;
      v34 = v33;
      v36 = v35;
      [WeakRetained bounds];
      v58.origin.x = v37;
      v58.origin.y = v38;
      v58.size.width = v39;
      v58.size.height = v40;
      v57.origin.x = v30;
      v57.origin.y = v32;
      v57.size.width = v34;
      v57.size.height = v36;
      if (CGRectIntersectsRect(v57, v58))
      {
        [v5 setUsesEvenOddFillRule:1];
        [v5 appendPath:WeakRetained];
      }

      goto LABEL_14;
    }
  }

LABEL_15:

  return v5;
}

- (CGRect)_configureMask:(id)a3 withPath:(id)a4
{
  v5 = a4;
  v6 = a3;
  [v5 bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  CGAffineTransformMakeTranslation(&v27, -v7, -v9);
  [v5 applyTransform:&v27];
  [v6 setPath:{objc_msgSend(v5, "CGPath")}];
  [v5 bounds];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;

  [v6 setFrame:{v16, v18, v20, v22}];
  v23 = v8;
  v24 = v10;
  v25 = v12;
  v26 = v14;
  result.size.height = v26;
  result.size.width = v25;
  result.origin.y = v24;
  result.origin.x = v23;
  return result;
}

@end