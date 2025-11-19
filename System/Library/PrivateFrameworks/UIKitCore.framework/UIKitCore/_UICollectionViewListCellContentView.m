@interface _UICollectionViewListCellContentView
- (UIEdgeInsets)_concreteDefaultLayoutMargins;
@end

@implementation _UICollectionViewListCellContentView

- (UIEdgeInsets)_concreteDefaultLayoutMargins
{
  v15.receiver = self;
  v15.super_class = _UICollectionViewListCellContentView;
  [(UIView *)&v15 _concreteDefaultLayoutMargins];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = _UIShouldApplyVerticalLayoutMarginsToListHeaderFooterViews();
  v11 = 0.0;
  if (v10)
  {
    v12 = 0.0;
  }

  else
  {
    v12 = v7;
  }

  if (!v10)
  {
    v11 = v3;
  }

  v13 = v5;
  v14 = v9;
  result.right = v14;
  result.bottom = v12;
  result.left = v13;
  result.top = v11;
  return result;
}

@end