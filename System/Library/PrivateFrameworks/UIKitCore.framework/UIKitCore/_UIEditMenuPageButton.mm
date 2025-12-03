@interface _UIEditMenuPageButton
- (UIEdgeInsets)arrowEdgeInsets;
- (_UIEditMenuPageButton)initWithDirection:(int64_t)direction backgroundGroupName:(id)name;
- (id)_imageNameForCurrentDirection;
- (void)_configureButtonWithGroupName:(id)name;
- (void)layoutSubviews;
- (void)setArrowEdgeInsets:(UIEdgeInsets)insets;
@end

@implementation _UIEditMenuPageButton

- (_UIEditMenuPageButton)initWithDirection:(int64_t)direction backgroundGroupName:(id)name
{
  nameCopy = name;
  v10.receiver = self;
  v10.super_class = _UIEditMenuPageButton;
  v7 = [(UIButton *)&v10 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v8 = v7;
  if (v7)
  {
    v7->_direction = direction;
    [(_UIEditMenuPageButton *)v7 _configureButtonWithGroupName:nameCopy];
  }

  return v8;
}

- (void)setArrowEdgeInsets:(UIEdgeInsets)insets
{
  v3.f64[0] = insets.top;
  v3.f64[1] = insets.left;
  v4.f64[0] = insets.bottom;
  v4.f64[1] = insets.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_arrowEdgeInsets.top, v3), vceqq_f64(*&self->_arrowEdgeInsets.bottom, v4)))) & 1) == 0)
  {
    self->_arrowEdgeInsets = insets;
    top = insets.top;
    bottom = insets.bottom;
    traitCollection = [(UIView *)self traitCollection];
    v19 = _UIEditMenuGetPlatformMetrics([traitCollection userInterfaceIdiom]);

    configuration = [(UIButton *)self configuration];
    pageButtonConfiguration = [v19 pageButtonConfiguration];
    [pageButtonConfiguration contentInsets];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;

    [configuration setContentInsets:{top + v10, v12, bottom + v14, v16}];
    [(UIButton *)self setConfiguration:configuration];
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

- (void)_configureButtonWithGroupName:(id)name
{
  nameCopy = name;
  traitCollection = [(UIView *)self traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  v7 = _UIEditMenuGetPlatformMetrics(userInterfaceIdiom);
  if ([v7 pageButtonHasInlineAppearance])
  {
    v8 = _UIEditMenuGetPlatformMetrics(userInterfaceIdiom);
    v9 = [UIVisualEffectView alloc];
    separatorEffect = [v8 separatorEffect];
    v11 = [(UIVisualEffectView *)v9 initWithEffect:separatorEffect];

    separatorEffectColor = [v8 separatorEffectColor];
    contentView = [(UIVisualEffectView *)v11 contentView];
    [contentView setBackgroundColor:separatorEffectColor];

    contentView2 = [(UIVisualEffectView *)v11 contentView];
    layer = [contentView2 layer];
    [layer setAllowsEdgeAntialiasing:1];

    contentView3 = [(UIVisualEffectView *)v11 contentView];
    [contentView3 setClipsToBounds:0];

    separatorView = self->_separatorView;
    self->_separatorView = v11;

    [(UIView *)self addSubview:self->_separatorView];
  }

  pageButtonConfiguration = [v7 pageButtonConfiguration];
  traitCollection2 = [(UIView *)self traitCollection];
  v20 = _UIEditMenuGetPlatformMetrics([traitCollection2 userInterfaceIdiom]);
  pageButtonFont = [v20 pageButtonFont];
  v22 = [pageButtonFont _fontAdjustedForContentSizeCategoryCompatibleWithTraitCollection:traitCollection2];

  v23 = +[UIImageSymbolConfiguration configurationWithFont:scale:](UIImageSymbolConfiguration, "configurationWithFont:scale:", v22, [v7 pageButtonSymbolScale]);

  _imageNameForCurrentDirection = [(_UIEditMenuPageButton *)self _imageNameForCurrentDirection];
  v25 = [UIImage systemImageNamed:_imageNameForCurrentDirection withConfiguration:v23];

  [pageButtonConfiguration setImage:v25];
  [(UIButton *)self setConfiguration:pageButtonConfiguration];
  [pageButtonConfiguration contentInsets];
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
    v32 = nameCopy;
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
  direction = [(_UIEditMenuPageButton *)self direction];
  if (direction == 1)
  {
    [(UIView *)self bounds];
    Height = CGRectGetHeight(v11);
    v6 = 0.0;
  }

  else
  {
    if (direction)
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