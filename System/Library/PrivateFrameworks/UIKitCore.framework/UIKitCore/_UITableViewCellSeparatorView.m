@interface _UITableViewCellSeparatorView
- (_UITableViewCellSeparatorView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)setDrawsWithVibrantLightMode:(BOOL)a3;
- (void)setSeparatorEffect:(id)a3;
@end

@implementation _UITableViewCellSeparatorView

- (void)layoutSubviews
{
  v11.receiver = self;
  v11.super_class = _UITableViewCellSeparatorView;
  [(UIView *)&v11 layoutSubviews];
  [(UIView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(UIView *)self->_backgroundView setFrame:?];
  [(UIView *)self->_overlayView setFrame:v4, v6, v8, v10];
  [(UIView *)self->_effectView setFrame:v4, v6, v8, v10];
}

- (_UITableViewCellSeparatorView)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = _UITableViewCellSeparatorView;
  v3 = [(UIView *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = [(UIView *)v3 layer];
    [v5 setAllowsEdgeAntialiasing:1];
  }

  return v4;
}

- (void)setDrawsWithVibrantLightMode:(BOOL)a3
{
  self->_drawsWithVibrantLightMode = a3;
  backgroundView = self->_backgroundView;
  if (a3)
  {
    if (!backgroundView)
    {
      v5 = [UIView alloc];
      [(UIView *)self bounds];
      v6 = [(UIView *)v5 initWithFrame:?];
      v7 = self->_backgroundView;
      self->_backgroundView = v6;

      v8 = [UIColor colorWithWhite:0.250980392 alpha:0.3];
      [(UIView *)self->_backgroundView setBackgroundColor:v8];

      v9 = *MEMORY[0x1E6979850];
      v10 = [(UIView *)self->_backgroundView layer];
      [v10 setCompositingFilter:v9];

      v11 = [(UIView *)self->_backgroundView layer];
      [v11 setAllowsEdgeAntialiasing:1];
    }

    if (!self->_overlayView)
    {
      v12 = [UIView alloc];
      [(UIView *)self bounds];
      v13 = [(UIView *)v12 initWithFrame:?];
      overlayView = self->_overlayView;
      self->_overlayView = v13;

      v15 = [UIColor colorWithRed:0.0 green:0.0 blue:0.31372549 alpha:0.1];
      [(UIView *)self->_overlayView setBackgroundColor:v15];

      v16 = *MEMORY[0x1E6979CE8];
      v17 = [(UIView *)self->_overlayView layer];
      [v17 setCompositingFilter:v16];

      v18 = [(UIView *)self->_overlayView layer];
      [v18 setAllowsEdgeAntialiasing:1];
    }

    [(UIView *)self addSubview:self->_backgroundView];
    [(UIView *)self addSubview:self->_overlayView];
    v20 = [(UIView *)self layer];
    [v20 setAllowsGroupBlending:0];
  }

  else
  {
    [(UIView *)backgroundView removeFromSuperview];
    v19 = self->_overlayView;

    [(UIView *)v19 removeFromSuperview];
  }
}

- (void)setSeparatorEffect:(id)a3
{
  v5 = a3;
  if (self->_separatorEffect != v5)
  {
    objc_storeStrong(&self->_separatorEffect, a3);
    [(UIView *)self->_effectView removeFromSuperview];
    effectView = self->_effectView;
    self->_effectView = 0;

    if (self->_separatorEffect)
    {
      v7 = [[UIVisualEffectView alloc] initWithEffect:self->_separatorEffect];
      v8 = self->_effectView;
      self->_effectView = v7;

      v9 = [(UIView *)self->_effectView layer];
      [v9 setAllowsEdgeAntialiasing:1];

      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __52___UITableViewCellSeparatorView_setSeparatorEffect___block_invoke;
      v16[3] = &unk_1E70F3590;
      v16[4] = self;
      [UIView performWithoutAnimation:v16];
      [(UIView *)self addSubview:self->_effectView];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = [(UIVisualEffectView *)self->_effectView contentView];
        v11 = [v10 tintColor];
        v12 = [(UIVisualEffectView *)self->_effectView contentView];
        [v12 setBackgroundColor:v11];

        v13 = [(UIVisualEffectView *)self->_effectView contentView];
        v14 = [v13 layer];
        [v14 setAllowsEdgeAntialiasing:1];

        v15 = [(UIVisualEffectView *)self->_effectView contentView];
        [v15 setClipsToBounds:0];
      }
    }
  }
}

@end