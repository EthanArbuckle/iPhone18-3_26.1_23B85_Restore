@interface _UISplitViewControllerPanelPrimaryViewControllerPromiseItem
- (CGRect)frame;
- (UICoordinateSpace)coordinateSpace;
- (UISplitViewControllerPanelImpl)impl;
- (UIView)parentView;
- (_UISplitViewControllerPanelPrimaryViewControllerPromiseItem)initWithParentView:(id)a3 impl:(id)a4;
- (id)focusItemsInRect:(CGRect)a3;
- (void)setNeedsFocusUpdate;
- (void)updateFocusIfNeeded;
@end

@implementation _UISplitViewControllerPanelPrimaryViewControllerPromiseItem

- (_UISplitViewControllerPanelPrimaryViewControllerPromiseItem)initWithParentView:(id)a3 impl:(id)a4
{
  v6 = a3;
  v7 = a4;
  v27.receiver = self;
  v27.super_class = _UISplitViewControllerPanelPrimaryViewControllerPromiseItem;
  v8 = [(_UISplitViewControllerPanelPrimaryViewControllerPromiseItem *)&v27 init];
  v9 = v8;
  if (!v8)
  {
LABEL_8:
    v10 = v9;
    goto LABEL_9;
  }

  v10 = 0;
  if (v6 && v7)
  {
    objc_storeWeak(&v8->_parentView, v6);
    objc_storeWeak(&v9->_impl, v7);
    [v6 bounds];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v19 = *(MEMORY[0x1E695EFF8] + 8);
    v20 = [v7 _layoutPrimaryOnRight];
    v21 = v12;
    v22 = v14;
    v23 = v16;
    v24 = v18;
    if (v20)
    {
      MaxX = CGRectGetMaxX(*&v21);
    }

    else
    {
      MaxX = CGRectGetMinX(*&v21) + -100.0;
    }

    v9->_frame.origin.x = MaxX;
    v9->_frame.origin.y = v19;
    v9->_frame.size.width = 100.0;
    v9->_frame.size.height = v18;
    goto LABEL_8;
  }

LABEL_9:

  return v10;
}

- (CGRect)frame
{
  x = self->_frame.origin.x;
  y = self->_frame.origin.y;
  width = self->_frame.size.width;
  height = self->_frame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)setNeedsFocusUpdate
{
  v3 = [UIFocusSystem focusSystemForEnvironment:self];
  [v3 requestFocusUpdateToEnvironment:self];
}

- (void)updateFocusIfNeeded
{
  v2 = [UIFocusSystem focusSystemForEnvironment:self];
  [v2 updateFocusIfNeeded];
}

- (id)focusItemsInRect:(CGRect)a3
{
  v12[1] = *MEMORY[0x1E69E9840];
  v3 = [(_UISplitViewControllerPanelPrimaryViewControllerPromiseItem *)self impl:a3.origin.x];
  [v3 _triggerDisplayModeAction:v3];
  v4 = [v3 panelController];
  [v4 setNeedsUpdate];

  v5 = [v3 panelController];
  v6 = [v5 view];
  [v6 layoutIfNeeded];

  v7 = [v3 splitViewController];
  v8 = [v7 masterViewController];
  v9 = [v8 view];

  if (v9)
  {
    v12[0] = v9;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
  }

  else
  {
    v10 = MEMORY[0x1E695E0F0];
  }

  return v10;
}

- (UICoordinateSpace)coordinateSpace
{
  v2 = [(_UISplitViewControllerPanelPrimaryViewControllerPromiseItem *)self parentView];
  v3 = [v2 coordinateSpace];

  return v3;
}

- (UIView)parentView
{
  WeakRetained = objc_loadWeakRetained(&self->_parentView);

  return WeakRetained;
}

- (UISplitViewControllerPanelImpl)impl
{
  WeakRetained = objc_loadWeakRetained(&self->_impl);

  return WeakRetained;
}

@end