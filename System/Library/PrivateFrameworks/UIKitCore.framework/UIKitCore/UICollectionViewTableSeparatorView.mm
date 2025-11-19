@interface UICollectionViewTableSeparatorView
- (void)applyLayoutAttributes:(id)a3;
- (void)layoutSubviews;
@end

@implementation UICollectionViewTableSeparatorView

- (void)applyLayoutAttributes:(id)a3
{
  v4 = a3;
  v8 = [(UICollectionViewTableSeparatorView *)self separatorView];
  if (!v8)
  {
    v5 = [_UITableViewCellSeparatorView alloc];
    [(UIView *)self bounds];
    v8 = [(_UITableViewCellSeparatorView *)v5 initWithFrame:?];
    [(UICollectionViewTableSeparatorView *)self setSeparatorView:v8];
    [(UIView *)self addSubview:v8];
    [(UIView *)self setNeedsLayout];
  }

  v6 = [v4 separatorColor];
  [(UIView *)v8 setBackgroundColor:v6];

  v7 = [v4 separatorEffect];

  [(_UITableViewCellSeparatorView *)v8 setSeparatorEffect:v7];
}

- (void)layoutSubviews
{
  [(UIView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(UICollectionViewTableSeparatorView *)self separatorView];
  [v11 setFrame:{v4, v6, v8, v10}];
}

@end