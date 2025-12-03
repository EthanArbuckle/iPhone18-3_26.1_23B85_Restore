@interface _UITextFloatingCursorSession
- (CGPoint)floatingCursorPositionForPoint:(CGPoint)point lineSnapping:(BOOL)snapping;
- (UITextSelectionDisplayInteraction)manager;
- (_UITextFloatingCursorSession)initWithCursorView:(id)view selectionManager:(id)manager;
- (id)_selectionContainerView;
- (void)_invalidateAnimated:(BOOL)animated;
- (void)_updateCursorFadedHiddenForFloatingCursorAtPoint:(CGPoint)point;
- (void)dealloc;
- (void)updateWithPoint:(CGPoint)point inContainer:(id)container animated:(BOOL)animated;
@end

@implementation _UITextFloatingCursorSession

- (_UITextFloatingCursorSession)initWithCursorView:(id)view selectionManager:(id)manager
{
  viewCopy = view;
  managerCopy = manager;
  v23.receiver = self;
  v23.super_class = _UITextFloatingCursorSession;
  v8 = [(_UITextFloatingCursorSession *)&v23 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_manager, managerCopy);
    v9->_isValid = 1;
    _createFloatingCursorView = [viewCopy _createFloatingCursorView];
    floatingCursorView = v9->_floatingCursorView;
    v9->_floatingCursorView = _createFloatingCursorView;

    _selectionContainerView = [(_UITextFloatingCursorSession *)v9 _selectionContainerView];
    [_selectionContainerView addSubview:v9->_floatingCursorView];

    _obtainGhostCursorAssertion = [managerCopy _obtainGhostCursorAssertion];
    ghostCursorAssertion = v9->_ghostCursorAssertion;
    v9->_ghostCursorAssertion = _obtainGhostCursorAssertion;

    [viewCopy frame];
    v17 = v16 + v15 * 0.5;
    v20 = v19 + v18 * 0.5;
    superview = [viewCopy superview];
    [(_UITextFloatingCursorSession *)v9 updateWithPoint:superview inContainer:0 animated:v17, v20];
  }

  return v9;
}

- (void)updateWithPoint:(CGPoint)point inContainer:(id)container animated:(BOOL)animated
{
  if (self->_isValid)
  {
    v27[7] = v10;
    v27[8] = v9;
    v27[9] = v8;
    v27[10] = v7;
    v27[15] = v5;
    v27[16] = v6;
    animatedCopy = animated;
    y = point.y;
    x = point.x;
    containerCopy = container;
    _selectionContainerView = [(_UITextFloatingCursorSession *)self _selectionContainerView];
    [_selectionContainerView convertPoint:containerCopy fromCoordinateSpace:{x, y}];
    v18 = v17;
    v20 = v19;

    [(_UITextFloatingCursorSession *)self floatingCursorPositionForPoint:1 lineSnapping:v18, v20];
    v23 = v21;
    v24 = v22;
    if (animatedCopy)
    {
      _springAnimation = [(_UITextFloatingCursorSession *)self _springAnimation];
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __69___UITextFloatingCursorSession_updateWithPoint_inContainer_animated___block_invoke;
      v27[3] = &unk_1E70F6848;
      v27[4] = self;
      v27[5] = v23;
      v27[6] = v24;
      [UIView _animateUsingSpringBehavior:_springAnimation tracking:0 animations:v27 completion:0];
    }

    else
    {
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __69___UITextFloatingCursorSession_updateWithPoint_inContainer_animated___block_invoke_2;
      v26[3] = &unk_1E70F6848;
      v26[4] = self;
      v26[5] = v21;
      v26[6] = v22;
      [UIView _animateByRetargetingAnimations:v26 completion:0];
    }

    [(_UITextFloatingCursorSession *)self _updateCursorFadedHiddenForFloatingCursorAtPoint:x, y];
  }
}

- (void)_invalidateAnimated:(BOOL)animated
{
  animatedCopy = animated;
  self->_isValid = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __52___UITextFloatingCursorSession__invalidateAnimated___block_invoke;
  aBlock[3] = &unk_1E70F3590;
  aBlock[4] = self;
  v5 = _Block_copy(aBlock);
  v6 = v5;
  if (animatedCopy)
  {
    WeakRetained = objc_loadWeakRetained(&self->_manager);
    cursorView = [WeakRetained cursorView];

    _springAnimation = [(_UITextFloatingCursorSession *)self _springAnimation];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __52___UITextFloatingCursorSession__invalidateAnimated___block_invoke_2;
    v13[3] = &unk_1E70F35B8;
    v13[4] = self;
    v14 = cursorView;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __52___UITextFloatingCursorSession__invalidateAnimated___block_invoke_3;
    v11[3] = &unk_1E7103030;
    v12 = v6;
    v10 = cursorView;
    [UIView _animateUsingSpringBehavior:_springAnimation tracking:0 animations:v13 completion:v11];
  }

  else
  {
    (*(v5 + 2))(v5);
  }
}

- (void)dealloc
{
  if (self->_isValid)
  {
    [(_UITextFloatingCursorSession *)self _invalidateAnimated:0];
  }

  v3.receiver = self;
  v3.super_class = _UITextFloatingCursorSession;
  [(_UITextFloatingCursorSession *)&v3 dealloc];
}

- (void)_updateCursorFadedHiddenForFloatingCursorAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  WeakRetained = objc_loadWeakRetained(&self->_manager);
  cursorView = [WeakRetained cursorView];
  [cursorView frame];
  v10 = v9 + v8 * 0.5;
  v13 = v12 + v11 * 0.5;

  v14 = vabdd_f64(v10, x) < 15.0;
  v15 = vabdd_f64(v13, y) < 30.0 && v14;
  v16 = objc_loadWeakRetained(&self->_manager);
  [v16 _setCursorFadedHiddenForFloatingCursor:v15 animated:1];
}

- (id)_selectionContainerView
{
  WeakRetained = objc_loadWeakRetained(&self->_manager);
  _hostViewAboveText = [WeakRetained _hostViewAboveText];

  return _hostViewAboveText;
}

- (CGPoint)floatingCursorPositionForPoint:(CGPoint)point lineSnapping:(BOOL)snapping
{
  snappingCopy = snapping;
  y = point.y;
  x = point.x;
  WeakRetained = objc_loadWeakRetained(&self->_manager);
  textInput = [WeakRetained textInput];
  v10 = objc_opt_respondsToSelector();

  v11 = objc_loadWeakRetained(&self->_manager);
  textInput2 = [v11 textInput];
  textInput3 = textInput2;
  if (v10)
  {
    [textInput2 selectionClipRect];
LABEL_5:
    v19 = v14;
    v20 = v15;
    v21 = v16;
    v22 = v17;

    goto LABEL_7;
  }

  v18 = objc_opt_respondsToSelector();

  if (v18)
  {
    v11 = objc_loadWeakRetained(&self->_manager);
    textInput3 = [v11 textInput];
    [textInput3 _selectionClipRect];
    goto LABEL_5;
  }

  v19 = *MEMORY[0x1E695F050];
  v20 = *(MEMORY[0x1E695F050] + 8);
  v21 = *(MEMORY[0x1E695F050] + 16);
  v22 = *(MEMORY[0x1E695F050] + 24);
LABEL_7:
  v23 = objc_loadWeakRetained(&self->_manager);
  textInput4 = [v23 textInput];
  textInputView = [textInput4 textInputView];

  v55.origin.x = v19;
  v55.origin.y = v20;
  v55.size.width = v21;
  v55.size.height = v22;
  if (CGRectIsNull(v55))
  {
    [textInputView bounds];
    v19 = v26;
    v20 = v27;
    v21 = v28;
    v22 = v29;
  }

  _selectionContainerView = [(_UITextFloatingCursorSession *)self _selectionContainerView];
  [_selectionContainerView convertRect:textInputView fromView:{v19, v20, v21, v22}];
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;

  [(UIView *)self->_floatingCursorView bounds];
  v40 = v39 * 0.5;
  [(UIView *)self->_floatingCursorView bounds];
  v42 = v41 * 0.5;
  v43 = v36 - (v40 + v40);
  v44 = v38 - (v42 + v42);
  if (v43 >= 0.0)
  {
    if (x >= v32 + v40)
    {
      v45 = v32 + v40 + v43;
      if (x > v45)
      {
        x = v45;
      }
    }

    else
    {
      x = v32 + v40;
    }
  }

  if (v44 >= 0.0)
  {
    v46 = v34 + v42;
    if (y >= v46)
    {
      v47 = v46 + v44;
      if (y > v47)
      {
        y = v47;
      }
    }

    else
    {
      y = v46;
    }
  }

  if (snappingCopy)
  {
    v48 = objc_loadWeakRetained(&self->_manager);
    _cursorView = [v48 _cursorView];

    [_cursorView frame];
    y = v51 + v50 * 0.5 + (y - (v51 + v50 * 0.5)) * 0.3;
  }

  v52 = x;
  v53 = y;
  result.y = v53;
  result.x = v52;
  return result;
}

- (UITextSelectionDisplayInteraction)manager
{
  WeakRetained = objc_loadWeakRetained(&self->_manager);

  return WeakRetained;
}

@end