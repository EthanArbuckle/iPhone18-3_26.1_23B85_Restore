@interface _UIEditMenuListSeparatorView
- (_UIEditMenuListSeparatorView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation _UIEditMenuListSeparatorView

- (_UIEditMenuListSeparatorView)initWithFrame:(CGRect)a3
{
  v17.receiver = self;
  v17.super_class = _UIEditMenuListSeparatorView;
  v3 = [(UICollectionReusableView *)&v17 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = [(UIView *)v3 traitCollection];
    v6 = _UIEditMenuGetPlatformMetrics([v5 userInterfaceIdiom]);
    v7 = [UIVisualEffectView alloc];
    v8 = [v6 separatorEffect];
    v9 = [(UIVisualEffectView *)v7 initWithEffect:v8];

    v10 = [v6 separatorEffectColor];
    v11 = [(UIVisualEffectView *)v9 contentView];
    [v11 setBackgroundColor:v10];

    v12 = [(UIVisualEffectView *)v9 contentView];
    v13 = [v12 layer];
    [v13 setAllowsEdgeAntialiasing:1];

    v14 = [(UIVisualEffectView *)v9 contentView];
    [v14 setClipsToBounds:0];

    [(UIView *)v4 addSubview:v9];
    separatorView = v4->_separatorView;
    v4->_separatorView = &v9->super;
  }

  return v4;
}

- (void)layoutSubviews
{
  v18.receiver = self;
  v18.super_class = _UIEditMenuListSeparatorView;
  [(UIView *)&v18 layoutSubviews];
  v3 = [(_UIEditMenuListSeparatorView *)self separatorView];
  v4 = [(UIView *)self traitCollection];
  v5 = _UIEditMenuGetPlatformMetrics([v4 userInterfaceIdiom]);
  [v5 additionalSeparatorInsets];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  [(UIView *)self bounds];
  if (v9 != 0.0 || v7 != 0.0 || v13 != 0.0 || v11 != 0.0)
  {
    v14 = v9 + v14;
    v15 = v7 + v15;
    v16 = v16 - (v9 + v13);
    v17 = v17 - (v7 + v11);
  }

  [v3 setFrame:{v14, v15, v16, v17}];
}

@end