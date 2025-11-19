@interface TUIButtonBarItemView
- (BOOL)_isPad;
- (UIView)contentView;
- (void)layoutSubviews;
- (void)setBarButtonView:(id)a3;
- (void)setCustomView:(id)a3;
@end

@implementation TUIButtonBarItemView

- (void)layoutSubviews
{
  v16.receiver = self;
  v16.super_class = TUIButtonBarItemView;
  [(TUIButtonBarItemView *)&v16 layoutSubviews];
  [(TUIButtonBarItemView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  if (![(TUIButtonBarItemView *)self _isPad])
  {
    UIRectInsetEdges();
    v4 = v11;
    v6 = v12;
    v8 = v13;
    v10 = v14;
  }

  v15 = [(TUIButtonBarItemView *)self contentView];
  [v15 setFrame:{v4, v6, v8, v10}];
}

- (BOOL)_isPad
{
  v2 = [MEMORY[0x1E69DC938] currentDevice];
  v3 = [v2 userInterfaceIdiom];

  if ((v3 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    return [MEMORY[0x1E69DCBE0] isFloating] ^ 1;
  }

  else
  {
    return 0;
  }
}

- (void)setBarButtonView:(id)a3
{
  v5 = a3;
  [(_UIButtonBarButton *)self->_barButtonView removeFromSuperview];
  objc_storeStrong(&self->_barButtonView, a3);
  if (self->_barButtonView)
  {
    [(TUIButtonBarItemView *)self addSubview:?];
    [(UIView *)self->_customView setHidden:1];
    [(_UIButtonBarButton *)self->_barButtonView setHidden:0];
  }
}

- (void)setCustomView:(id)a3
{
  v7 = a3;
  v5 = [(UIView *)self->_customView superview];

  if (v5 == self)
  {
    [(UIView *)self->_customView removeFromSuperview];
  }

  objc_storeStrong(&self->_customView, a3);
  customView = self->_customView;
  if (customView)
  {
    [(UIView *)customView setTranslatesAutoresizingMaskIntoConstraints:1];
    [(TUIButtonBarItemView *)self addSubview:self->_customView];
    [(_UIButtonBarButton *)self->_barButtonView setHidden:1];
  }
}

- (UIView)contentView
{
  customView = self->_customView;
  if (!customView)
  {
    customView = self->_barButtonView;
  }

  v3 = customView;

  return v3;
}

@end