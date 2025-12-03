@interface _UITextSelectionHighlightShimmerView
- (_UITextSelectionHighlightShimmerView)initWithFrame:(CGRect)frame effect:(id)effect;
- (void)layoutSubviews;
- (void)setSelectionRects:(id)rects;
@end

@implementation _UITextSelectionHighlightShimmerView

- (_UITextSelectionHighlightShimmerView)initWithFrame:(CGRect)frame effect:(id)effect
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  effectCopy = effect;
  v24.receiver = self;
  v24.super_class = _UITextSelectionHighlightShimmerView;
  height = [(UIView *)&v24 initWithFrame:x, y, width, height];
  v11 = height;
  if (height)
  {
    [(UIView *)height setUserInteractionEnabled:0];
    if (!effectCopy)
    {
      v12 = [_UIDirectionalLightConfiguration alloc];
      v13 = +[_UIColorPalette textAssistantPonderingFillPalette];
      v14 = [(_UIDirectionalLightConfiguration *)v12 initWithColorPalette:v13];

      [(_UIDirectionalLightConfiguration *)v14 setDirection:2];
      [(_UIDirectionalLightConfiguration *)v14 setDuration:3.0];
      v15 = [_UIIntelligenceLightSourceDescriptor directionalLightWithConfiguration:v14];
      effectCopy = [[_UIIntelligenceContentLightEffect alloc] initWithLightSource:v15];
    }

    v16 = [[UIVisualEffectView alloc] initWithEffect:effectCopy];
    shimmerView = v11->_shimmerView;
    v11->_shimmerView = v16;

    layer = [(UIView *)v11->_shimmerView layer];
    [layer setAllowsGroupOpacity:1];

    [(UIView *)v11 insertSubview:v11->_shimmerView atIndex:0];
    v19 = [_UITextSelectionRangeView alloc];
    v20 = [(UIView *)v19 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    rangeView = v11->_rangeView;
    v11->_rangeView = v20;

    contentView = [(UIVisualEffectView *)v11->_shimmerView contentView];
    [contentView addSubview:v11->_rangeView];
  }

  return v11;
}

- (void)setSelectionRects:(id)rects
{
  rectsCopy = rects;
  if (![(NSArray *)self->_selectionRects isEqualToArray:?])
  {
    objc_storeStrong(&self->_selectionRects, rects);
    [(UIView *)self setNeedsLayout];
  }
}

- (void)layoutSubviews
{
  v16 = *MEMORY[0x1E69E9840];
  v14.receiver = self;
  v14.super_class = _UITextSelectionHighlightShimmerView;
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

        [*(*(&v10 + 1) + 8 * v8++) _appendToPath:Mutable cornerRadius:self->_selectionCornerRadius edgeInsets:{0.0, 0.0, 0.0, 0.0, v10}];
      }

      while (v6 != v8);
      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v10 objects:v15 count:16];
    }

    while (v6);
  }

  tintColor = [(UIView *)self tintColor];
  [(_UITextSelectionRangeView *)self->_rangeView setSelectionColor:tintColor];

  [(UIView *)self bounds];
  [(UIView *)self->_shimmerView setFrame:?];
  [(UIView *)self bounds];
  [(UIView *)self->_rangeView setFrame:?];
  [(_UITextSelectionRangeView *)self->_rangeView setPath:Mutable];
  if (Mutable)
  {
    CFRelease(Mutable);
  }
}

@end