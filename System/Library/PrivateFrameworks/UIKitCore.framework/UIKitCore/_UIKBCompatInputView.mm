@interface _UIKBCompatInputView
- (BOOL)_hasAutolayoutHeightConstraint;
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (CGRect)_compatibleBounds;
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (UIView)touchableView;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)_didChangeKeyplaneWithContext:(id)context;
- (void)addSubview:(id)subview;
- (void)dealloc;
- (void)setBounds:(CGRect)bounds;
- (void)setFrame:(CGRect)frame;
@end

@implementation _UIKBCompatInputView

- (UIView)touchableView
{
  touchableView = self->_touchableView;
  if (touchableView)
  {
    firstObject = touchableView;
  }

  else
  {
    subviews = [(UIView *)self subviews];
    firstObject = [subviews firstObject];
  }

  return firstObject;
}

- (CGSize)intrinsicContentSize
{
  _rootInputWindowController = [(UIView *)self _rootInputWindowController];
  if (![_rootInputWindowController isRotating])
  {
    goto LABEL_13;
  }

  v4 = +[UIKeyboardInputModeController sharedInputModeController];
  currentInputMode = [v4 currentInputMode];
  isExtensionInputMode = [currentInputMode isExtensionInputMode];

  if (isExtensionInputMode)
  {
    v7 = +[UIKeyboardSceneDelegate interfaceOrientation];
    v8 = +[UIKeyboardInputModeController sharedInputModeController];
    currentInputMode2 = [v8 currentInputMode];
    _rootInputWindowController = [UICompatibilityInputViewController inputSnapshotViewForInputMode:currentInputMode2 orientation:1];

    v10 = +[UIKeyboardInputModeController sharedInputModeController];
    currentInputMode3 = [v10 currentInputMode];
    v12 = [UICompatibilityInputViewController inputSnapshotViewForInputMode:currentInputMode3 orientation:4];

    if (!_rootInputWindowController || !v12)
    {
      goto LABEL_12;
    }

    v13 = v7 - 3;
    touchableView = [(_UIKBCompatInputView *)self touchableView];
    [touchableView bounds];
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

      v23 = _rootInputWindowController;
      if (v18 != v27)
      {
        goto LABEL_12;
      }
    }

    else
    {
      [_rootInputWindowController bounds];
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
  snapshotView = [(_UIKBCompatInputView *)self snapshotView];

  if (snapshotView)
  {
    snapshotView2 = [(_UIKBCompatInputView *)self snapshotView];
    [snapshotView2 bounds];
    v29 = v34;
    v31 = v35;
  }

  else
  {
    touchableView2 = [(_UIKBCompatInputView *)self touchableView];

    if (!touchableView2)
    {
      v43.receiver = self;
      v43.super_class = _UIKBCompatInputView;
      [(UIView *)&v43 intrinsicContentSize];
      v29 = v41;
      v31 = v42;
      goto LABEL_19;
    }

    snapshotView2 = [(_UIKBCompatInputView *)self touchableView];
    [snapshotView2 intrinsicContentSize];
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
  touchableView = [(_UIKBCompatInputView *)self touchableView];
  v4 = touchableView;
  if (touchableView)
  {
    [touchableView _compatibleBounds];
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

- (void)addSubview:(id)subview
{
  v4.receiver = self;
  v4.super_class = _UIKBCompatInputView;
  [(UIView *)&v4 addSubview:subview];
  [(UIView *)self invalidateIntrinsicContentSize];
}

- (void)setFrame:(CGRect)frame
{
  v13.receiver = self;
  v13.super_class = _UIKBCompatInputView;
  [(UIView *)&v13 setFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  [(UIView *)self bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  touchableView = [(_UIKBCompatInputView *)self touchableView];
  [touchableView setFrame:{v5, v7, v9, v11}];
}

- (void)setBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v9.receiver = self;
  v9.super_class = _UIKBCompatInputView;
  [(UIView *)&v9 setBounds:?];
  touchableView = [(_UIKBCompatInputView *)self touchableView];
  [touchableView setFrame:{x, y, width, height}];
}

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  eventCopy = event;
  touchableView = [(_UIKBCompatInputView *)self touchableView];
  if (touchableView)
  {
    [(UIView *)self convertPoint:touchableView toView:x, y];
    v9 = [touchableView pointInside:eventCopy withEvent:?];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  touchableView = [(_UIKBCompatInputView *)self touchableView];
  if (touchableView)
  {
    v9 = +[_UIRemoteKeyboards sharedRemoteKeyboards];
    [v9 userTapsOnKeyboard];

    [(UIView *)self convertPoint:touchableView toView:x, y];
    v10 = [touchableView hitTest:eventCopy withEvent:?];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  touchableView = [(_UIKBCompatInputView *)self touchableView];
  v7 = touchableView;
  if (touchableView)
  {
    [touchableView sizeThatFits:{width, height}];
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

- (void)_didChangeKeyplaneWithContext:(id)context
{
  contextCopy = context;
  if ([contextCopy sizeDidChange])
  {
    [(UIView *)self invalidateIntrinsicContentSize];
  }

  v5.receiver = self;
  v5.super_class = _UIKBCompatInputView;
  [(UIView *)&v5 _didChangeKeyplaneWithContext:contextCopy];
}

- (BOOL)_hasAutolayoutHeightConstraint
{
  touchableView = [(_UIKBCompatInputView *)self touchableView];

  if (!touchableView)
  {
    return 1;
  }

  touchableView2 = [(_UIKBCompatInputView *)self touchableView];
  _hasAutolayoutHeightConstraint = [touchableView2 _hasAutolayoutHeightConstraint];

  return _hasAutolayoutHeightConstraint;
}

@end