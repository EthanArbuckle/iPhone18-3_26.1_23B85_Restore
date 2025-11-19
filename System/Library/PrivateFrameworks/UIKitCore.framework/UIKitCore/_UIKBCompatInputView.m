@interface _UIKBCompatInputView
- (BOOL)_hasAutolayoutHeightConstraint;
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (CGRect)_compatibleBounds;
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (UIView)touchableView;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)_didChangeKeyplaneWithContext:(id)a3;
- (void)addSubview:(id)a3;
- (void)dealloc;
- (void)setBounds:(CGRect)a3;
- (void)setFrame:(CGRect)a3;
@end

@implementation _UIKBCompatInputView

- (UIView)touchableView
{
  touchableView = self->_touchableView;
  if (touchableView)
  {
    v3 = touchableView;
  }

  else
  {
    v4 = [(UIView *)self subviews];
    v3 = [v4 firstObject];
  }

  return v3;
}

- (CGSize)intrinsicContentSize
{
  v3 = [(UIView *)self _rootInputWindowController];
  if (![v3 isRotating])
  {
    goto LABEL_13;
  }

  v4 = +[UIKeyboardInputModeController sharedInputModeController];
  v5 = [v4 currentInputMode];
  v6 = [v5 isExtensionInputMode];

  if (v6)
  {
    v7 = +[UIKeyboardSceneDelegate interfaceOrientation];
    v8 = +[UIKeyboardInputModeController sharedInputModeController];
    v9 = [v8 currentInputMode];
    v3 = [UICompatibilityInputViewController inputSnapshotViewForInputMode:v9 orientation:1];

    v10 = +[UIKeyboardInputModeController sharedInputModeController];
    v11 = [v10 currentInputMode];
    v12 = [UICompatibilityInputViewController inputSnapshotViewForInputMode:v11 orientation:4];

    if (!v3 || !v12)
    {
      goto LABEL_12;
    }

    v13 = v7 - 3;
    v14 = [(_UIKBCompatInputView *)self touchableView];
    [v14 bounds];
    v16 = v15;
    v18 = v17;
    if (v13 > 1)
    {
      [v12 bounds];
      v25 = v24;
      v27 = v26;

      if (v16 != v25)
      {
        goto LABEL_12;
      }

      v23 = v3;
      if (v18 != v27)
      {
        goto LABEL_12;
      }
    }

    else
    {
      [v3 bounds];
      v20 = v19;
      v22 = v21;

      if (v16 != v20 || (v23 = v12, v18 != v22))
      {
LABEL_12:

LABEL_13:
        goto LABEL_14;
      }
    }

    [v23 bounds];
    v29 = v28;
    v31 = v30;

    goto LABEL_19;
  }

LABEL_14:
  v32 = [(_UIKBCompatInputView *)self snapshotView];

  if (v32)
  {
    v33 = [(_UIKBCompatInputView *)self snapshotView];
    [v33 bounds];
    v29 = v34;
    v31 = v35;
  }

  else
  {
    v36 = [(_UIKBCompatInputView *)self touchableView];

    if (!v36)
    {
      v43.receiver = self;
      v43.super_class = _UIKBCompatInputView;
      [(UIView *)&v43 intrinsicContentSize];
      v29 = v41;
      v31 = v42;
      goto LABEL_19;
    }

    v33 = [(_UIKBCompatInputView *)self touchableView];
    [v33 intrinsicContentSize];
    v29 = v37;
    v31 = v38;
  }

LABEL_19:
  v39 = v29;
  v40 = v31;
  result.height = v40;
  result.width = v39;
  return result;
}

- (CGRect)_compatibleBounds
{
  v3 = [(_UIKBCompatInputView *)self touchableView];
  v4 = v3;
  if (v3)
  {
    [v3 _compatibleBounds];
  }

  else
  {
    v17.receiver = self;
    v17.super_class = _UIKBCompatInputView;
    [(UIView *)&v17 _compatibleBounds];
  }

  v9 = v5;
  v10 = v6;
  v11 = v7;
  v12 = v8;

  v13 = v9;
  v14 = v10;
  v15 = v11;
  v16 = v12;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (void)dealloc
{
  snapshotView = self->_snapshotView;
  self->_snapshotView = 0;

  touchableView = self->_touchableView;
  self->_touchableView = 0;

  v5.receiver = self;
  v5.super_class = _UIKBCompatInputView;
  [(UIView *)&v5 dealloc];
}

- (void)addSubview:(id)a3
{
  v4.receiver = self;
  v4.super_class = _UIKBCompatInputView;
  [(UIView *)&v4 addSubview:a3];
  [(UIView *)self invalidateIntrinsicContentSize];
}

- (void)setFrame:(CGRect)a3
{
  v13.receiver = self;
  v13.super_class = _UIKBCompatInputView;
  [(UIView *)&v13 setFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  [(UIView *)self bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [(_UIKBCompatInputView *)self touchableView];
  [v12 setFrame:{v5, v7, v9, v11}];
}

- (void)setBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9.receiver = self;
  v9.super_class = _UIKBCompatInputView;
  [(UIView *)&v9 setBounds:?];
  v8 = [(_UIKBCompatInputView *)self touchableView];
  [v8 setFrame:{x, y, width, height}];
}

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = [(_UIKBCompatInputView *)self touchableView];
  if (v8)
  {
    [(UIView *)self convertPoint:v8 toView:x, y];
    v9 = [v8 pointInside:v7 withEvent:?];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = [(_UIKBCompatInputView *)self touchableView];
  if (v8)
  {
    v9 = +[_UIRemoteKeyboards sharedRemoteKeyboards];
    [v9 userTapsOnKeyboard];

    [(UIView *)self convertPoint:v8 toView:x, y];
    v10 = [v8 hitTest:v7 withEvent:?];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = [(_UIKBCompatInputView *)self touchableView];
  v7 = v6;
  if (v6)
  {
    [v6 sizeThatFits:{width, height}];
  }

  else
  {
    v14.receiver = self;
    v14.super_class = _UIKBCompatInputView;
    [(UIView *)&v14 sizeThatFits:width, height];
  }

  v10 = v8;
  v11 = v9;

  v12 = v10;
  v13 = v11;
  result.height = v13;
  result.width = v12;
  return result;
}

- (void)_didChangeKeyplaneWithContext:(id)a3
{
  v4 = a3;
  if ([v4 sizeDidChange])
  {
    [(UIView *)self invalidateIntrinsicContentSize];
  }

  v5.receiver = self;
  v5.super_class = _UIKBCompatInputView;
  [(UIView *)&v5 _didChangeKeyplaneWithContext:v4];
}

- (BOOL)_hasAutolayoutHeightConstraint
{
  v3 = [(_UIKBCompatInputView *)self touchableView];

  if (!v3)
  {
    return 1;
  }

  v4 = [(_UIKBCompatInputView *)self touchableView];
  v5 = [v4 _hasAutolayoutHeightConstraint];

  return v5;
}

@end