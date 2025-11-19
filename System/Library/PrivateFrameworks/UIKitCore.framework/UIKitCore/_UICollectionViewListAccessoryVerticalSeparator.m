@interface _UICollectionViewListAccessoryVerticalSeparator
- (CGSize)sizeThatFits:(CGSize)a3;
- (_UICollectionViewListAccessoryVerticalSeparator)initWithFrame:(CGRect)a3;
@end

@implementation _UICollectionViewListAccessoryVerticalSeparator

- (_UICollectionViewListAccessoryVerticalSeparator)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = _UICollectionViewListAccessoryVerticalSeparator;
  v3 = [(UIView *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = [(UIView *)v3 layer];
    [v5 setAllowsEdgeAntialiasing:1];
  }

  return v4;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  v4 = [(UIView *)self traitCollection];
  v5 = _UISeparatorThicknessForTraitCollection(v4);

  v6 = v5;
  v7 = height;
  result.height = v7;
  result.width = v6;
  return result;
}

@end