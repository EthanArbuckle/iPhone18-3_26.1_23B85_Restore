@interface _UITextSelectionRangeAdjustmentContainerView
- (CGRect)endEdge;
- (CGRect)startEdge;
- (_UITextSelectionRangeAdjustmentContainerView)initWithFrame:(CGRect)frame;
- (id)textInputView;
- (void)_getBounds:(CGRect *)bounds position:(CGPoint *)position fromPreferredFrame:(CGRect)frame;
- (void)_setPortalsLollipopDotsToContainerWindow:(BOOL)window;
- (void)layoutSubviews;
- (void)setHidden:(BOOL)hidden;
- (void)setSelectionGrabbers:(id)grabbers;
- (void)setShapeScale:(double)scale;
@end

@implementation _UITextSelectionRangeAdjustmentContainerView

- (void)layoutSubviews
{
  v49.receiver = self;
  v49.super_class = _UITextSelectionRangeAdjustmentContainerView;
  [(UIView *)&v49 layoutSubviews];
  if (self->_selectionGrabbersHidden)
  {
    leadingLollipopView = [(_UITextSelectionRangeAdjustmentContainerView *)self leadingLollipopView];
    [leadingLollipopView setHidden:1];

LABEL_10:
    trailingLollipopView = [(_UITextSelectionRangeAdjustmentContainerView *)self trailingLollipopView];
    [trailingLollipopView setHidden:1];
    goto LABEL_15;
  }

  [(_UITextSelectionRangeAdjustmentContainerView *)self startEdge];
  v4 = *MEMORY[0x1E695F058];
  v5 = *(MEMORY[0x1E695F058] + 8);
  v6 = *(MEMORY[0x1E695F058] + 16);
  v7 = *(MEMORY[0x1E695F058] + 24);
  v52.origin.x = *MEMORY[0x1E695F058];
  v52.origin.y = v5;
  v52.size.width = v6;
  v52.size.height = v7;
  v8 = CGRectEqualToRect(v50, v52);
  leadingLollipopView2 = [(_UITextSelectionRangeAdjustmentContainerView *)self leadingLollipopView];
  leadingLollipopView6 = leadingLollipopView2;
  if (v8)
  {
    [leadingLollipopView2 setHidden:1];
  }

  else
  {
    [leadingLollipopView2 setHidden:0];

    if ([(_UITextSelectionRangeAdjustmentContainerView *)self isVertical])
    {
      v11 = 1;
    }

    else
    {
      v11 = 2;
    }

    leadingLollipopView3 = [(_UITextSelectionRangeAdjustmentContainerView *)self leadingLollipopView];
    [leadingLollipopView3 setDirection:v11];

    v47 = 0u;
    v48 = 0u;
    v45 = 0.0;
    v46 = 0.0;
    leadingLollipopView4 = [(_UITextSelectionRangeAdjustmentContainerView *)self leadingLollipopView];
    [(_UITextSelectionRangeAdjustmentContainerView *)self startEdge];
    [leadingLollipopView4 preferredFrameForRect:?];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;

    [(_UITextSelectionRangeAdjustmentContainerView *)self _getBounds:&v47 position:&v45 fromPreferredFrame:v15, v17, v19, v21];
    v22 = v47;
    v23 = v48;
    leadingLollipopView5 = [(_UITextSelectionRangeAdjustmentContainerView *)self leadingLollipopView];
    [leadingLollipopView5 setBounds:{v22, v23}];

    v25 = v45;
    v26 = v46;
    leadingLollipopView6 = [(_UITextSelectionRangeAdjustmentContainerView *)self leadingLollipopView];
    [leadingLollipopView6 setCenter:{v25, v26}];
  }

  [(_UITextSelectionRangeAdjustmentContainerView *)self endEdge];
  v53.origin.x = v4;
  v53.origin.y = v5;
  v53.size.width = v6;
  v53.size.height = v7;
  if (CGRectEqualToRect(v51, v53))
  {
    goto LABEL_10;
  }

  trailingLollipopView2 = [(_UITextSelectionRangeAdjustmentContainerView *)self trailingLollipopView];
  [trailingLollipopView2 setHidden:0];

  if ([(_UITextSelectionRangeAdjustmentContainerView *)self isVertical])
  {
    v29 = 4;
  }

  else
  {
    v29 = 8;
  }

  trailingLollipopView3 = [(_UITextSelectionRangeAdjustmentContainerView *)self trailingLollipopView];
  [trailingLollipopView3 setDirection:v29];

  v47 = 0u;
  v48 = 0u;
  v45 = 0.0;
  v46 = 0.0;
  trailingLollipopView4 = [(_UITextSelectionRangeAdjustmentContainerView *)self trailingLollipopView];
  [(_UITextSelectionRangeAdjustmentContainerView *)self endEdge];
  [trailingLollipopView4 preferredFrameForRect:?];
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;

  [(_UITextSelectionRangeAdjustmentContainerView *)self _getBounds:&v47 position:&v45 fromPreferredFrame:v33, v35, v37, v39];
  v40 = v47;
  v41 = v48;
  trailingLollipopView5 = [(_UITextSelectionRangeAdjustmentContainerView *)self trailingLollipopView];
  [trailingLollipopView5 setBounds:{v40, v41}];

  v43 = v45;
  v44 = v46;
  trailingLollipopView = [(_UITextSelectionRangeAdjustmentContainerView *)self trailingLollipopView];
  [trailingLollipopView setCenter:{v43, v44}];
LABEL_15:
}

- (CGRect)startEdge
{
  x = self->_startEdge.origin.x;
  y = self->_startEdge.origin.y;
  width = self->_startEdge.size.width;
  height = self->_startEdge.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)endEdge
{
  x = self->_endEdge.origin.x;
  y = self->_endEdge.origin.y;
  width = self->_endEdge.size.width;
  height = self->_endEdge.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (_UITextSelectionRangeAdjustmentContainerView)initWithFrame:(CGRect)frame
{
  v26[2] = *MEMORY[0x1E69E9840];
  v24.receiver = self;
  v24.super_class = _UITextSelectionRangeAdjustmentContainerView;
  v3 = [(UIView *)&v24 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_shapeScale = 1.0;
    v3->_selectionGrabbersAreConcreteImpl = 1;
    v5 = [_UITextSelectionLollipopView alloc];
    v6 = *MEMORY[0x1E695F058];
    v7 = *(MEMORY[0x1E695F058] + 8);
    v8 = *(MEMORY[0x1E695F058] + 16);
    v9 = *(MEMORY[0x1E695F058] + 24);
    v10 = [(_UITextSelectionLollipopView *)v5 initWithFrame:*MEMORY[0x1E695F058], v7, v8, v9];
    v26[0] = v10;
    v11 = [[_UITextSelectionLollipopView alloc] initWithFrame:v6, v7, v8, v9];
    v26[1] = v11;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:2];
    selectionGrabbers = v4->_selectionGrabbers;
    v4->_selectionGrabbers = v12;

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v14 = v4->_selectionGrabbers;
    v15 = [(NSArray *)v14 countByEnumeratingWithState:&v20 objects:v25 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v21;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v21 != v17)
          {
            objc_enumerationMutation(v14);
          }

          [(UIView *)v4 addSubview:*(*(&v20 + 1) + 8 * i), v20];
        }

        v16 = [(NSArray *)v14 countByEnumeratingWithState:&v20 objects:v25 count:16];
      }

      while (v16);
    }
  }

  return v4;
}

- (void)setSelectionGrabbers:(id)grabbers
{
  v17 = *MEMORY[0x1E69E9840];
  grabbersCopy = grabbers;
  objc_storeStrong(&self->_selectionGrabbers, grabbers);
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = grabbersCopy;
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    while (2)
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v11 = 0;
          goto LABEL_11;
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v11 = 1;
LABEL_11:

  self->_selectionGrabbersAreConcreteImpl = v11;
}

- (void)setShapeScale:(double)scale
{
  v14 = *MEMORY[0x1E69E9840];
  self->_shapeScale = scale;
  if (self->_selectionGrabbersAreConcreteImpl)
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v4 = self->_selectionGrabbers;
    v5 = [(NSArray *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v10;
      do
      {
        v8 = 0;
        do
        {
          if (*v10 != v7)
          {
            objc_enumerationMutation(v4);
          }

          [*(*(&v9 + 1) + 8 * v8++) _setShapeScale:{scale, v9}];
        }

        while (v6 != v8);
        v6 = [(NSArray *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v6);
    }
  }
}

- (id)textInputView
{
  nextResponder = [(UIView *)self nextResponder];
  textInputView = [nextResponder textInputView];

  return textInputView;
}

- (void)setHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  v5.receiver = self;
  v5.super_class = _UITextSelectionRangeAdjustmentContainerView;
  [(UIView *)&v5 setHidden:?];
  if (hiddenCopy)
  {
    [(_UITextSelectionRangeAdjustmentContainerView *)self _setPortalsLollipopDotsToContainerWindow:0];
  }
}

- (void)_setPortalsLollipopDotsToContainerWindow:(BOOL)window
{
  v14 = *MEMORY[0x1E69E9840];
  if (self->_selectionGrabbersAreConcreteImpl)
  {
    windowCopy = window;
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v4 = self->_selectionGrabbers;
    v5 = [(NSArray *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v10;
      do
      {
        v8 = 0;
        do
        {
          if (*v10 != v7)
          {
            objc_enumerationMutation(v4);
          }

          [*(*(&v9 + 1) + 8 * v8++) setPortalsDotToContainerWindow:{windowCopy, v9}];
        }

        while (v6 != v8);
        v6 = [(NSArray *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v6);
    }
  }
}

- (void)_getBounds:(CGRect *)bounds position:(CGPoint *)position fromPreferredFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  bounds->origin = *MEMORY[0x1E695F058];
  bounds->size.width = frame.size.width;
  bounds->size.height = frame.size.height;
  layer = [(UIView *)self layer];
  [layer anchorPoint];
  v12 = v11;
  v14 = v13;

  position->x = x + width * v12;
  position->y = y + height * v14;
}

@end