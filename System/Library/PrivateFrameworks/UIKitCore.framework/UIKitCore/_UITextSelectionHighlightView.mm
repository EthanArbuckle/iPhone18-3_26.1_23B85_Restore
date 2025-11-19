@interface _UITextSelectionHighlightView
- (UIEdgeInsets)_selectionEdgeInsets;
- (_UITextSelectionHighlightView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)setSelectionRects:(id)a3;
- (void)tintColorDidChange;
@end

@implementation _UITextSelectionHighlightView

- (void)layoutSubviews
{
  v16 = *MEMORY[0x1E69E9840];
  v14.receiver = self;
  v14.super_class = _UITextSelectionHighlightView;
  [(UIView *)&v14 layoutSubviews];
  Mutable = CGPathCreateMutable();
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = self->_selectionRects;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v10 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v10 + 1) + 8 * v8++) _appendToPath:Mutable cornerRadius:self->_selectionCornerRadius edgeInsets:{self->_selectionEdgeInsets.top, self->_selectionEdgeInsets.left, self->_selectionEdgeInsets.bottom, self->_selectionEdgeInsets.right, v10}];
      }

      while (v6 != v8);
      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v10 objects:v15 count:16];
    }

    while (v6);
  }

  v9 = [(UIView *)self tintColor];
  [(_UITextSelectionRangeView *)self->_rangeView setSelectionColor:v9];

  [(UIView *)self bounds];
  [(UIView *)self->_rangeView setFrame:?];
  [(_UITextSelectionRangeView *)self->_rangeView setPath:Mutable];
  if (Mutable)
  {
    CFRelease(Mutable);
  }
}

- (void)tintColorDidChange
{
  v4.receiver = self;
  v4.super_class = _UITextSelectionHighlightView;
  [(UIView *)&v4 tintColorDidChange];
  v3 = [(UIView *)self tintColor];
  [(_UITextSelectionRangeView *)self->_rangeView setSelectionColor:v3];
}

- (_UITextSelectionHighlightView)initWithFrame:(CGRect)a3
{
  v9.receiver = self;
  v9.super_class = _UITextSelectionHighlightView;
  v3 = [(UIView *)&v9 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(UIView *)v3 setUserInteractionEnabled:0];
    v5 = [_UITextSelectionRangeView alloc];
    v6 = [(UIView *)v5 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    rangeView = v4->_rangeView;
    v4->_rangeView = v6;

    [(UIView *)v4 addSubview:v4->_rangeView];
  }

  return v4;
}

- (void)setSelectionRects:(id)a3
{
  v5 = a3;
  if (![(NSArray *)self->_selectionRects isEqualToArray:?])
  {
    objc_storeStrong(&self->_selectionRects, a3);
    [(UIView *)self setNeedsLayout];
  }
}

- (UIEdgeInsets)_selectionEdgeInsets
{
  top = self->_selectionEdgeInsets.top;
  left = self->_selectionEdgeInsets.left;
  bottom = self->_selectionEdgeInsets.bottom;
  right = self->_selectionEdgeInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end