@interface UICollectionViewTableSeparatorView
- (void)applyLayoutAttributes:(id)attributes;
- (void)layoutSubviews;
@end

@implementation UICollectionViewTableSeparatorView

- (void)applyLayoutAttributes:(id)attributes
{
  attributesCopy = attributes;
  separatorView = [(UICollectionViewTableSeparatorView *)self separatorView];
  if (!separatorView)
  {
    v5 = [_UITableViewCellSeparatorView alloc];
    [(UIView *)self bounds];
    separatorView = [(_UITableViewCellSeparatorView *)v5 initWithFrame:?];
    [(UICollectionViewTableSeparatorView *)self setSeparatorView:separatorView];
    [(UIView *)self addSubview:separatorView];
    [(UIView *)self setNeedsLayout];
  }

  separatorColor = [attributesCopy separatorColor];
  [(UIView *)separatorView setBackgroundColor:separatorColor];

  separatorEffect = [attributesCopy separatorEffect];

  [(_UITableViewCellSeparatorView *)separatorView setSeparatorEffect:separatorEffect];
}

- (void)layoutSubviews
{
  [(UIView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  separatorView = [(UICollectionViewTableSeparatorView *)self separatorView];
  [separatorView setFrame:{v4, v6, v8, v10}];
}

@end