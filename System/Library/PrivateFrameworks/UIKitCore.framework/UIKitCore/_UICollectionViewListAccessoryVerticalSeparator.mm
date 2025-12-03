@interface _UICollectionViewListAccessoryVerticalSeparator
- (CGSize)sizeThatFits:(CGSize)fits;
- (_UICollectionViewListAccessoryVerticalSeparator)initWithFrame:(CGRect)frame;
@end

@implementation _UICollectionViewListAccessoryVerticalSeparator

- (_UICollectionViewListAccessoryVerticalSeparator)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = _UICollectionViewListAccessoryVerticalSeparator;
  v3 = [(UIView *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    layer = [(UIView *)v3 layer];
    [layer setAllowsEdgeAntialiasing:1];
  }

  return v4;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  traitCollection = [(UIView *)self traitCollection];
  v5 = _UISeparatorThicknessForTraitCollection(traitCollection);

  v6 = v5;
  v7 = height;
  result.height = v7;
  result.width = v6;
  return result;
}

@end