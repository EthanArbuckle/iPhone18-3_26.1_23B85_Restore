@interface _UIColorWelliOSVisualStyle
- (CGSize)intrinsicSizeWithinSize:(CGSize)a3;
- (_UIColorWelliOSVisualStyle)initWithColorWell:(id)a3;
- (double)_widthForTraitCollection:(id)a3;
- (id)dragPreviewParameters;
- (void)_invokeColorPicker:(id)a3;
- (void)layoutSubviews;
- (void)setMaxGain:(double)a3;
- (void)setSelectedColor:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation _UIColorWelliOSVisualStyle

- (_UIColorWelliOSVisualStyle)initWithColorWell:(id)a3
{
  v18.receiver = self;
  v18.super_class = _UIColorWelliOSVisualStyle;
  v3 = [(_UIColorWellVisualStyle *)&v18 initWithColorWell:a3];
  v4 = v3;
  if (v3)
  {
    [(_UIColorWellVisualStyle *)v3 setWantsSystemDragAndDrop:1];
    v5 = [UIButton buttonWithType:1];
    button = v4->_button;
    v4->_button = v5;

    v7 = [UIImageView alloc];
    v8 = [UIImage kitImageNamed:@"UIColorWell"];
    v9 = [(UIImageView *)v7 initWithImage:v8];
    gradientView = v4->_gradientView;
    v4->_gradientView = v9;

    v11 = objc_alloc_init(UIView);
    borderView = v4->_borderView;
    v4->_borderView = v11;

    v13 = v4->_borderView;
    v14 = +[UIColor systemBackgroundColor];
    [(UIView *)v13 setBackgroundColor:v14];

    v15 = v4->_button;
    v16 = [(_UIColorWellVisualStyle *)v4 selectedColor];
    [(UIView *)v15 setBackgroundColor:v16];

    [(UIView *)v4 addSubview:v4->_gradientView];
    [(UIView *)v4 addSubview:v4->_borderView];
    [(UIView *)v4 addSubview:v4->_button];
    [(UIView *)v4->_gradientView setAutoresizingMask:18];
    [(UIView *)v4->_button setAutoresizingMask:18];
    [(UIControl *)v4->_button addTarget:v4 action:sel__invokeColorPicker_ forControlEvents:64];
    [(UIControl *)v4->_button addTarget:v4 action:sel_touchDown_ forControlEvents:1];
    [(UIControl *)v4->_button addTarget:v4 action:sel_touchUp_ forControlEvents:480];
    [(_UIColorWellVisualStyle *)v4 setWantsExtraTouchInsets:1];
  }

  return v4;
}

- (void)setSelectedColor:(id)a3
{
  v4.receiver = self;
  v4.super_class = _UIColorWelliOSVisualStyle;
  [(_UIColorWellVisualStyle *)&v4 setSelectedColor:a3];
  [(UIView *)self setNeedsLayout];
}

- (void)setMaxGain:(double)a3
{
  v9.receiver = self;
  v9.super_class = _UIColorWelliOSVisualStyle;
  [(_UIColorWellVisualStyle *)&v9 setMaxGain:?];
  v5 = MEMORY[0x1E6979298];
  if (a3 <= 1.0)
  {
    v5 = MEMORY[0x1E6979290];
  }

  v6 = *v5;
  v7 = [(UIView *)self->_button layer];
  [v7 setPreferredDynamicRange:v6];

  v8 = [(UIView *)self->_button layer];
  [v8 setContentsMaximumDesiredEDR:a3];
}

- (void)layoutSubviews
{
  v39.receiver = self;
  v39.super_class = _UIColorWelliOSVisualStyle;
  [(UIView *)&v39 layoutSubviews];
  [(UIView *)self bounds];
  [(UIView *)self bounds];
  v4 = fmax(fmin(v3, 36.0), 28.0);
  [(UIView *)self bounds];
  v6 = fmax(fmin(v5, 36.0), 28.0);
  [(UIView *)self bounds];
  v9 = v8 + (v7 - v6) * 0.5;
  v12 = v11 + (v10 - v4) * 0.5;
  [(UIView *)self->_gradientView setFrame:v9, v12, v6, v4];
  v40.origin.x = v9;
  v40.origin.y = v12;
  v40.size.width = v6;
  v40.size.height = v4;
  v41 = CGRectInset(v40, 3.0, 3.0);
  x = v41.origin.x;
  y = v41.origin.y;
  width = v41.size.width;
  height = v41.size.height;
  v41.origin.x = v9;
  v41.origin.y = v12;
  v41.size.width = v6;
  v41.size.height = v4;
  v42 = CGRectInset(v41, 5.0, 5.0);
  v17 = v42.origin.x;
  v18 = v42.origin.y;
  v19 = v42.size.width;
  v20 = v42.size.height;
  [(UIButton *)self->_button setFrame:?];
  [(UIView *)self->_borderView setFrame:x, y, width, height];
  v21 = [(UIView *)self->_button layer];
  v43.origin.x = v17;
  v43.origin.y = v18;
  v43.size.width = v19;
  v43.size.height = v20;
  [v21 setCornerRadius:CGRectGetWidth(v43) * 0.5];

  button = self->_button;
  v23 = [(_UIColorWellVisualStyle *)self selectedColor];
  [(UIView *)button setBackgroundColor:v23];

  v24 = [(UIView *)self->_borderView layer];
  v44.origin.x = x;
  v44.origin.y = y;
  v44.size.width = width;
  v44.size.height = height;
  [v24 setCornerRadius:CGRectGetWidth(v44) * 0.5];

  borderView = self->_borderView;
  v26 = [(_UIColorWellVisualStyle *)self selectedColor];
  if (v26)
  {
    v27 = 1.0;
  }

  else
  {
    v27 = 0.0;
  }

  [(UIView *)borderView setAlpha:v27];

  if (self->_isSelected)
  {
    v28 = 0.5;
  }

  else
  {
    v28 = 1.0;
  }

  [(UIView *)self setAlpha:v28];
  [(UIView *)self->_button bounds];
  v31 = v30 + -44.0;
  if (v30 + -44.0 > 0.0)
  {
    v31 = 0.0;
  }

  v32 = v31 * 0.5;
  v33 = v29 + -44.0;
  if (v29 + -44.0 > 0.0)
  {
    v33 = 0.0;
  }

  [(UIView *)self->_button _setTouchInsets:v33 * 0.5, v32, v33 * 0.5, v32];
  [(UIView *)self bounds];
  v36 = v35 + -44.0;
  if (v35 + -44.0 > 0.0)
  {
    v36 = 0.0;
  }

  v37 = v36 * 0.5;
  v38 = v34 + -44.0;
  if (v34 + -44.0 > 0.0)
  {
    v38 = 0.0;
  }

  [(UIView *)self _setTouchInsets:v38 * 0.5, v37, v38 * 0.5, v37];
}

- (double)_widthForTraitCollection:(id)a3
{
  v3 = [a3 horizontalSizeClass];
  result = 36.0;
  if (v3 == 1)
  {
    return 28.0;
  }

  return result;
}

- (CGSize)intrinsicSizeWithinSize:(CGSize)a3
{
  v4 = [(UIView *)self traitCollection:a3.width];
  [(_UIColorWelliOSVisualStyle *)self _widthForTraitCollection:v4];
  v6 = v5;

  v7 = v6;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)traitCollectionDidChange:(id)a3
{
  v4.receiver = self;
  v4.super_class = _UIColorWelliOSVisualStyle;
  [(UIView *)&v4 traitCollectionDidChange:a3];
  [(UIView *)self invalidateIntrinsicContentSize];
  [(UIView *)self setNeedsLayout];
}

- (void)_invokeColorPicker:(id)a3
{
  v3 = [(_UIColorWellVisualStyle *)self colorWell];
  [v3 styleRequestedColorPickerPresentation];
}

- (id)dragPreviewParameters
{
  v3 = objc_alloc_init(UIDragPreviewParameters);
  v4 = [(_UIColorWellVisualStyle *)self selectedColor];

  if (v4)
  {
    [(UIView *)self->_button frame];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v13 = [(UIView *)self->_button layer];
    [v13 cornerRadius];
    v15 = [UIBezierPath bezierPathWithRoundedRect:v6 cornerRadius:v8, v10, v12, v14];
    [(UIPreviewParameters *)v3 setVisiblePath:v15];
  }

  else
  {
    [(UIView *)self->_gradientView frame];
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v23 = v22;
    [(UIView *)self->_gradientView frame];
    v13 = [UIBezierPath bezierPathWithRoundedRect:v17 cornerRadius:v19, v21, v23, CGRectGetWidth(v26) * 0.5];
    [(UIPreviewParameters *)v3 setVisiblePath:v13];
  }

  return v3;
}

@end