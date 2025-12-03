@interface _PUVideoHighlightBarView
- (UIEdgeInsets)expandedOutsets;
- (_PUVideoHighlightBarView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)setExpanded:(BOOL)expanded animated:(BOOL)animated;
- (void)setExpandedOutsets:(UIEdgeInsets)outsets;
- (void)setHighlightColor:(id)color;
@end

@implementation _PUVideoHighlightBarView

- (UIEdgeInsets)expandedOutsets
{
  top = self->_expandedOutsets.top;
  left = self->_expandedOutsets.left;
  bottom = self->_expandedOutsets.bottom;
  right = self->_expandedOutsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (void)layoutSubviews
{
  v18.receiver = self;
  v18.super_class = _PUVideoHighlightBarView;
  [(_PUVideoHighlightBarView *)&v18 layoutSubviews];
  [(_PUVideoHighlightBarView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  expanded = [(_PUVideoHighlightBarView *)self expanded];
  [(_PUVideoHighlightBarView *)self expandedOutsets];
  v12 = 1.0;
  if (expanded)
  {
    PXEdgeInsetsInvert();
    PXEdgeInsetsInsetRect();
    v4 = v13;
    v6 = v14;
    v8 = v15;
    v10 = v16;
    v12 = 1.5;
  }

  layer = [(UIView *)self->_barView layer];
  [layer setCornerRadius:v12];

  [(UIView *)self->_barView setFrame:v4, v6, v8, v10];
}

- (void)setExpanded:(BOOL)expanded animated:(BOOL)animated
{
  if (self->_expanded != expanded)
  {
    v10[9] = v4;
    v10[10] = v5;
    animatedCopy = animated;
    expandedCopy = expanded;
    self->_expanded = expanded;
    [(_PUVideoHighlightBarView *)self setNeedsLayout];
    if (animatedCopy)
    {
      if (expandedCopy)
      {
        v10[0] = MEMORY[0x1E69E9820];
        v10[1] = 3221225472;
        v10[2] = __49___PUVideoHighlightBarView_setExpanded_animated___block_invoke;
        v10[3] = &unk_1E7B80DD0;
        v10[4] = self;
        [MEMORY[0x1E69DD250] animateWithDuration:4 delay:v10 usingSpringWithDamping:0 initialSpringVelocity:0.95 options:0.0 animations:0.45 completion:0.0];
      }

      else
      {
        v9[0] = MEMORY[0x1E69E9820];
        v9[1] = 3221225472;
        v9[2] = __49___PUVideoHighlightBarView_setExpanded_animated___block_invoke_2;
        v9[3] = &unk_1E7B80DD0;
        v9[4] = self;
        [MEMORY[0x1E69DD250] animateWithDuration:v9 animations:0.15];
      }
    }
  }
}

- (void)setExpandedOutsets:(UIEdgeInsets)outsets
{
  right = outsets.right;
  bottom = outsets.bottom;
  left = outsets.left;
  top = outsets.top;
  p_expandedOutsets = &self->_expandedOutsets;
  if ((PXEdgeInsetsEqualToEdgeInsets() & 1) == 0)
  {
    p_expandedOutsets->top = top;
    p_expandedOutsets->left = left;
    p_expandedOutsets->bottom = bottom;
    p_expandedOutsets->right = right;

    [(_PUVideoHighlightBarView *)self setNeedsLayout];
  }
}

- (void)setHighlightColor:(id)color
{
  colorCopy = color;
  v6 = colorCopy;
  if (self->_highlightColor != colorCopy)
  {
    v7 = colorCopy;
    colorCopy = [colorCopy isEqual:?];
    v6 = v7;
    if ((colorCopy & 1) == 0)
    {
      objc_storeStrong(&self->_highlightColor, color);
      colorCopy = [(UIView *)self->_barView setBackgroundColor:v7];
      v6 = v7;
    }
  }

  MEMORY[0x1EEE66BB8](colorCopy, v6);
}

- (_PUVideoHighlightBarView)initWithFrame:(CGRect)frame
{
  v9.receiver = self;
  v9.super_class = _PUVideoHighlightBarView;
  v3 = [(_PUVideoHighlightBarView *)&v9 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x1E69DD250]);
    [(_PUVideoHighlightBarView *)v3 bounds];
    v5 = [v4 initWithFrame:?];
    barView = v3->_barView;
    v3->_barView = v5;

    systemBlueColor = [MEMORY[0x1E69DC888] systemBlueColor];
    [(UIView *)v3->_barView setBackgroundColor:systemBlueColor];

    [(_PUVideoHighlightBarView *)v3 setClipsToBounds:0];
    [(_PUVideoHighlightBarView *)v3 setUserInteractionEnabled:0];
    [(_PUVideoHighlightBarView *)v3 addSubview:v3->_barView];
  }

  return v3;
}

@end