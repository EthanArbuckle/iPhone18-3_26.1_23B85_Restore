@interface _UIEditMenuListSeparatorView
- (_UIEditMenuListSeparatorView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation _UIEditMenuListSeparatorView

- (_UIEditMenuListSeparatorView)initWithFrame:(CGRect)frame
{
  v17.receiver = self;
  v17.super_class = _UIEditMenuListSeparatorView;
  v3 = [(UICollectionReusableView *)&v17 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    traitCollection = [(UIView *)v3 traitCollection];
    v6 = _UIEditMenuGetPlatformMetrics([traitCollection userInterfaceIdiom]);
    v7 = [UIVisualEffectView alloc];
    separatorEffect = [v6 separatorEffect];
    v9 = [(UIVisualEffectView *)v7 initWithEffect:separatorEffect];

    separatorEffectColor = [v6 separatorEffectColor];
    contentView = [(UIVisualEffectView *)v9 contentView];
    [contentView setBackgroundColor:separatorEffectColor];

    contentView2 = [(UIVisualEffectView *)v9 contentView];
    layer = [contentView2 layer];
    [layer setAllowsEdgeAntialiasing:1];

    contentView3 = [(UIVisualEffectView *)v9 contentView];
    [contentView3 setClipsToBounds:0];

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
  separatorView = [(_UIEditMenuListSeparatorView *)self separatorView];
  traitCollection = [(UIView *)self traitCollection];
  v5 = _UIEditMenuGetPlatformMetrics([traitCollection userInterfaceIdiom]);
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

  [separatorView setFrame:{v14, v15, v16, v17}];
}

@end