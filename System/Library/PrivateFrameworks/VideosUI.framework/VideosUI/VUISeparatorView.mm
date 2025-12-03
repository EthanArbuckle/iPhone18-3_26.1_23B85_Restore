@interface VUISeparatorView
- (CGSize)intrinsicContentSize;
- (CGSize)vui_layoutSubviews:(CGSize)subviews computationOnly:(BOOL)only;
- (VUISeparatorView)initWithFrame:(CGRect)frame;
- (void)_updateLineColor;
- (void)initializeVUISeparatorView;
- (void)setColor:(id)color;
- (void)setDarkColor:(id)color;
@end

@implementation VUISeparatorView

- (VUISeparatorView)initWithFrame:(CGRect)frame
{
  v11[1] = *MEMORY[0x1E69E9840];
  v10.receiver = self;
  v10.super_class = VUISeparatorView;
  v3 = [(VUISeparatorView *)&v10 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(VUISeparatorView *)v3 initializeVUISeparatorView];
    objc_initWeak(&location, v4);
    v11[0] = objc_opt_class();
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __34__VUISeparatorView_initWithFrame___block_invoke;
    v7[3] = &unk_1E872E760;
    objc_copyWeak(&v8, &location);
    [(VUISeparatorView *)v4 vui_registerForTraitChanges:v5 withHandler:v7];

    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }

  return v4;
}

void __34__VUISeparatorView_initWithFrame___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateLineColor];
}

- (void)initializeVUISeparatorView
{
  vui_main = [MEMORY[0x1E69DCEB0] vui_main];
  [vui_main vui_nativeScale];
  self->_lineHeight = 1.0 / v4;

  v5 = objc_alloc_init(MEMORY[0x1E69DD250]);
  line = self->_line;
  self->_line = v5;

  vui_separatorColor = [MEMORY[0x1E69DC888] vui_separatorColor];
  color = self->_color;
  self->_color = vui_separatorColor;

  [(VUISeparatorView *)self _updateLineColor];
  v9 = self->_line;

  [(VUISeparatorView *)self addSubview:v9];
}

- (void)setColor:(id)color
{
  colorCopy = color;
  if (self->_color != colorCopy)
  {
    v6 = colorCopy;
    objc_storeStrong(&self->_color, color);
    [(VUISeparatorView *)self _updateLineColor];
    colorCopy = v6;
  }
}

- (void)setDarkColor:(id)color
{
  colorCopy = color;
  if (self->_darkColor != colorCopy)
  {
    v6 = colorCopy;
    objc_storeStrong(&self->_darkColor, color);
    [(VUISeparatorView *)self _updateLineColor];
    colorCopy = v6;
  }
}

- (CGSize)intrinsicContentSize
{
  [(UIView *)self vui_sizeThatFits:*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)];
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGSize)vui_layoutSubviews:(CGSize)subviews computationOnly:(BOOL)only
{
  width = subviews.width;
  if (!only)
  {
    [(VUISeparatorView *)self bounds:subviews.width];
    [(UIView *)self->_line setFrame:0.0, 0.0];
  }

  lineHeight = self->_lineHeight;
  v7 = width;
  result.height = lineHeight;
  result.width = v7;
  return result;
}

- (void)_updateLineColor
{
  vuiTraitCollection = [(VUISeparatorView *)self vuiTraitCollection];
  if ([vuiTraitCollection userInterfaceStyle] == 2)
  {
    p_darkColor = &self->_darkColor;
    darkColor = self->_darkColor;

    if (darkColor)
    {
      goto LABEL_6;
    }
  }

  else
  {
  }

  p_darkColor = &self->_color;
LABEL_6:
  line = self->_line;
  v7 = *p_darkColor;

  [(UIView *)line setVuiBackgroundColor:v7];
}

@end