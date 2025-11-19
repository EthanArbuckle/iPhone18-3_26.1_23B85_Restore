@interface VUIFavoriteBannerLayout
- (UIEdgeInsets)margin;
- (_VUICornerRadii)borderRadii;
- (unint64_t)bannerStyleForSizeClass:(int64_t)a3;
@end

@implementation VUIFavoriteBannerLayout

- (unint64_t)bannerStyleForSizeClass:(int64_t)a3
{
  if (self->_isPreModeBanner)
  {
    return a3 > 1;
  }

  if (a3 < 2)
  {
    return 0;
  }

  if (a3 != 2)
  {
    return 2;
  }

  v4 = [MEMORY[0x1E69DC938] currentDevice];
  v5 = [v4 userInterfaceIdiom] != 1;

  return 2 * v5;
}

- (_VUICornerRadii)borderRadii
{
  topLeft = self->_borderRadii.topLeft;
  topRight = self->_borderRadii.topRight;
  bottomLeft = self->_borderRadii.bottomLeft;
  bottomRight = self->_borderRadii.bottomRight;
  result.bottomRight = bottomRight;
  result.bottomLeft = bottomLeft;
  result.topRight = topRight;
  result.topLeft = topLeft;
  return result;
}

- (UIEdgeInsets)margin
{
  top = self->_margin.top;
  left = self->_margin.left;
  bottom = self->_margin.bottom;
  right = self->_margin.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end