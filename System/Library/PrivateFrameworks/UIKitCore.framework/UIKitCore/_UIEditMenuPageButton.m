@interface _UIEditMenuPageButton
- (UIEdgeInsets)arrowEdgeInsets;
- (_UIEditMenuPageButton)initWithDirection:(int64_t)a3 backgroundGroupName:(id)a4;
- (id)_imageNameForCurrentDirection;
- (void)_configureButtonWithGroupName:(id)a3;
- (void)layoutSubviews;
- (void)setArrowEdgeInsets:(UIEdgeInsets)a3;
@end

@implementation _UIEditMenuPageButton

- (_UIEditMenuPageButton)initWithDirection:(int64_t)a3 backgroundGroupName:(id)a4
{
  v6 = a4;
  v10.receiver = self;
  v10.super_class = _UIEditMenuPageButton;
  v7 = [(UIButton *)&v10 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v8 = v7;
  if (v7)
  {
    v7->_direction = a3;
    [(_UIEditMenuPageButton *)v7 _configureButtonWithGroupName:v6];
  }

  return v8;
}

- (void)setArrowEdgeInsets:(UIEdgeInsets)a3
{
  v3.f64[0] = a3.top;
  v3.f64[1] = a3.left;
  v4.f64[0] = a3.bottom;
  v4.f64[1] = a3.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_arrowEdgeInsets.top, v3), vceqq_f64(*&self->_arrowEdgeInsets.bottom, v4)))) & 1) == 0)
  {
    self->_arrowEdgeInsets = a3;
    top = a3.top;
    bottom = a3.bottom;
    v6 = [(UIView *)self traitCollection];
    v19 = _UIEditMenuGetPlatformMetrics([v6 userInterfaceIdiom]);

    v7 = [(UIButton *)self configuration];
    v8 = [v19 pageButtonConfiguration];
    [v8 contentInsets];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;

    [v7 setContentInsets:{top + v10, v12, bottom + v14, v16}];
    [(UIButton *)self setConfiguration:v7];
  }
}

- (id)_imageNameForCurrentDirection
{
  if ([(_UIEditMenuPageButton *)self direction])
  {
    return @"chevron.right";
  }

  else
  {
    return @"chevron.left";
  }
}

- (void)_configureButtonWithGroupName:(id)a3
{
  v4 = a3;
  v5 = [(UIView *)self traitCollection];
  v6 = [v5 userInterfaceIdiom];

  v7 = _UIEditMenuGetPlatformMetrics(v6);
  if ([v7 pageButtonHasInlineAppearance])
  {
    v8 = _UIEditMenuGetPlatformMetrics(v6);
    v9 = [UIVisualEffectView alloc];
    v10 = [v8 separatorEffect];
    v11 = [(UIVisualEffectView *)v9 initWithEffect:v10];

    v12 = [v8 separatorEffectColor];
    v13 = [(UIVisualEffectView *)v11 contentView];
    [v13 setBackgroundColor:v12];

    v14 = [(UIVisualEffectView *)v11 contentView];
    v15 = [v14 layer];
    [v15 setAllowsEdgeAntialiasing:1];

    v16 = [(UIVisualEffectView *)v11 contentView];
    [v16 setClipsToBounds:0];

    separatorView = self->_separatorView;
    self->_separatorView = v11;

    [(UIView *)self addSubview:self->_separatorView];
  }

  v18 = [v7 pageButtonConfiguration];
  v19 = [(UIView *)self traitCollection];
  v20 = _UIEditMenuGetPlatformMetrics([v19 userInterfaceIdiom]);
  v21 = [v20 pageButtonFont];
  v22 = [v21 _fontAdjustedForContentSizeCategoryCompatibleWithTraitCollection:v19];

  v23 = +[UIImageSymbolConfiguration configurationWithFont:scale:](UIImageSymbolConfiguration, "configurationWithFont:scale:", v22, [v7 pageButtonSymbolScale]);

  v24 = [(_UIEditMenuPageButton *)self _imageNameForCurrentDirection];
  v25 = [UIImage systemImageNamed:v24 withConfiguration:v23];

  [v18 setImage:v25];
  [(UIButton *)self setConfiguration:v18];
  [v18 contentInsets];
  self->_defaultInsets.top = v26;
  self->_defaultInsets.leading = v27;
  self->_defaultInsets.bottom = v28;
  self->_defaultInsets.trailing = v29;
  if ([v7 pageButtonHasInlineAppearance])
  {
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __55___UIEditMenuPageButton__configureButtonWithGroupName___block_invoke;
    v30[3] = &unk_1E7119BB0;
    v31 = v7;
    v32 = v4;
    [(UIButton *)self setConfigurationUpdateHandler:v30];
  }
}

- (void)layoutSubviews
{
  v8.receiver = self;
  v8.super_class = _UIEditMenuPageButton;
  [(UIButton *)&v8 layoutSubviews];
  [(UIView *)self _currentScreenScale];
  v4 = 1.0 / v3;
  v5 = [(_UIEditMenuPageButton *)self direction];
  if (v5 == 1)
  {
    [(UIView *)self bounds];
    Height = CGRectGetHeight(v11);
    v6 = 0.0;
  }

  else
  {
    if (v5)
    {
      return;
    }

    [(UIView *)self bounds];
    v6 = CGRectGetMaxX(v9) - v4;
    [(UIView *)self bounds];
    Height = CGRectGetHeight(v10);
  }

  [(UIView *)self->_separatorView setFrame:v6, 0.0, v4, Height];
}

- (UIEdgeInsets)arrowEdgeInsets
{
  top = self->_arrowEdgeInsets.top;
  left = self->_arrowEdgeInsets.left;
  bottom = self->_arrowEdgeInsets.bottom;
  right = self->_arrowEdgeInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end