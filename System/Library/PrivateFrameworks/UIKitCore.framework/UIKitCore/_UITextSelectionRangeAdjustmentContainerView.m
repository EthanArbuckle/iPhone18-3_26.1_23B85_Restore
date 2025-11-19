@interface _UITextSelectionRangeAdjustmentContainerView
- (CGRect)endEdge;
- (CGRect)startEdge;
- (_UITextSelectionRangeAdjustmentContainerView)initWithFrame:(CGRect)a3;
- (id)textInputView;
- (void)_getBounds:(CGRect *)a3 position:(CGPoint *)a4 fromPreferredFrame:(CGRect)a5;
- (void)_setPortalsLollipopDotsToContainerWindow:(BOOL)a3;
- (void)layoutSubviews;
- (void)setHidden:(BOOL)a3;
- (void)setSelectionGrabbers:(id)a3;
- (void)setShapeScale:(double)a3;
@end

@implementation _UITextSelectionRangeAdjustmentContainerView

- (void)layoutSubviews
{
  v49.receiver = self;
  v49.super_class = _UITextSelectionRangeAdjustmentContainerView;
  [(UIView *)&v49 layoutSubviews];
  if (self->_selectionGrabbersHidden)
  {
    v3 = [(_UITextSelectionRangeAdjustmentContainerView *)self leadingLollipopView];
    [v3 setHidden:1];

LABEL_10:
    v27 = [(_UITextSelectionRangeAdjustmentContainerView *)self trailingLollipopView];
    [v27 setHidden:1];
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
  v9 = [(_UITextSelectionRangeAdjustmentContainerView *)self leadingLollipopView];
  v10 = v9;
  if (v8)
  {
    [v9 setHidden:1];
  }

  else
  {
    [v9 setHidden:0];

    if ([(_UITextSelectionRangeAdjustmentContainerView *)self isVertical])
    {
      v11 = 1;
    }

    else
    {
      v11 = 2;
    }

    v12 = [(_UITextSelectionRangeAdjustmentContainerView *)self leadingLollipopView];
    [v12 setDirection:v11];

    v47 = 0u;
    v48 = 0u;
    v45 = 0.0;
    v46 = 0.0;
    v13 = [(_UITextSelectionRangeAdjustmentContainerView *)self leadingLollipopView];
    [(_UITextSelectionRangeAdjustmentContainerView *)self startEdge];
    [v13 preferredFrameForRect:?];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;

    [(_UITextSelectionRangeAdjustmentContainerView *)self _getBounds:&v47 position:&v45 fromPreferredFrame:v15, v17, v19, v21];
    v22 = v47;
    v23 = v48;
    v24 = [(_UITextSelectionRangeAdjustmentContainerView *)self leadingLollipopView];
    [v24 setBounds:{v22, v23}];

    v25 = v45;
    v26 = v46;
    v10 = [(_UITextSelectionRangeAdjustmentContainerView *)self leadingLollipopView];
    [v10 setCenter:{v25, v26}];
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

  v28 = [(_UITextSelectionRangeAdjustmentContainerView *)self trailingLollipopView];
  [v28 setHidden:0];

  if ([(_UITextSelectionRangeAdjustmentContainerView *)self isVertical])
  {
    v29 = 4;
  }

  else
  {
    v29 = 8;
  }

  v30 = [(_UITextSelectionRangeAdjustmentContainerView *)self trailingLollipopView];
  [v30 setDirection:v29];

  v47 = 0u;
  v48 = 0u;
  v45 = 0.0;
  v46 = 0.0;
  v31 = [(_UITextSelectionRangeAdjustmentContainerView *)self trailingLollipopView];
  [(_UITextSelectionRangeAdjustmentContainerView *)self endEdge];
  [v31 preferredFrameForRect:?];
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;

  [(_UITextSelectionRangeAdjustmentContainerView *)self _getBounds:&v47 position:&v45 fromPreferredFrame:v33, v35, v37, v39];
  v40 = v47;
  v41 = v48;
  v42 = [(_UITextSelectionRangeAdjustmentContainerView *)self trailingLollipopView];
  [v42 setBounds:{v40, v41}];

  v43 = v45;
  v44 = v46;
  v27 = [(_UITextSelectionRangeAdjustmentContainerView *)self trailingLollipopView];
  [v27 setCenter:{v43, v44}];
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

- (_UITextSelectionRangeAdjustmentContainerView)initWithFrame:(CGRect)a3
{
  v26[2] = *MEMORY[0x1E69E9840];
  v24.receiver = self;
  v24.super_class = _UITextSelectionRangeAdjustmentContainerView;
  v3 = [(UIView *)&v24 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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

- (void)setSelectionGrabbers:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a3;
  objc_storeStrong(&self->_selectionGrabbers, a3);
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = v5;
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

- (void)setShapeScale:(double)a3
{
  v14 = *MEMORY[0x1E69E9840];
  self->_shapeScale = a3;
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

          [*(*(&v9 + 1) + 8 * v8++) _setShapeScale:{a3, v9}];
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
  v2 = [(UIView *)self nextResponder];
  v3 = [v2 textInputView];

  return v3;
}

- (void)setHidden:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = _UITextSelectionRangeAdjustmentContainerView;
  [(UIView *)&v5 setHidden:?];
  if (v3)
  {
    [(_UITextSelectionRangeAdjustmentContainerView *)self _setPortalsLollipopDotsToContainerWindow:0];
  }
}

- (void)_setPortalsLollipopDotsToContainerWindow:(BOOL)a3
{
  v14 = *MEMORY[0x1E69E9840];
  if (self->_selectionGrabbersAreConcreteImpl)
  {
    v3 = a3;
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

          [*(*(&v9 + 1) + 8 * v8++) setPortalsDotToContainerWindow:{v3, v9}];
        }

        while (v6 != v8);
        v6 = [(NSArray *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v6);
    }
  }
}

- (void)_getBounds:(CGRect *)a3 position:(CGPoint *)a4 fromPreferredFrame:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  a3->origin = *MEMORY[0x1E695F058];
  a3->size.width = a5.size.width;
  a3->size.height = a5.size.height;
  v10 = [(UIView *)self layer];
  [v10 anchorPoint];
  v12 = v11;
  v14 = v13;

  a4->x = x + width * v12;
  a4->y = y + height * v14;
}

@end