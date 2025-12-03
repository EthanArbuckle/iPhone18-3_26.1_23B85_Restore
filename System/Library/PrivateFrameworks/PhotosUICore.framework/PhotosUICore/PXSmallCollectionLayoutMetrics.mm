@interface PXSmallCollectionLayoutMetrics
- (UIEdgeInsets)padding;
- (UIEdgeInsets)safeAreaInsets;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation PXSmallCollectionLayoutMetrics

- (UIEdgeInsets)padding
{
  top = self->_padding.top;
  left = self->_padding.left;
  bottom = self->_padding.bottom;
  right = self->_padding.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (UIEdgeInsets)safeAreaInsets
{
  top = self->_safeAreaInsets.top;
  left = self->_safeAreaInsets.left;
  bottom = self->_safeAreaInsets.bottom;
  right = self->_safeAreaInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v7.receiver = self;
  v7.super_class = PXSmallCollectionLayoutMetrics;
  result = [(PXLayoutMetrics *)&v7 copyWithZone:zone];
  if (result)
  {
    *(result + 3) = self->_style;
    *(result + 4) = *&self->_interitemSpacing;
    v5 = *&self->_safeAreaInsets.bottom;
    *(result + 56) = *&self->_safeAreaInsets.top;
    *(result + 72) = v5;
    *(result + 5) = self->_edgesForExtendedLayout;
    v6 = *&self->_padding.bottom;
    *(result + 88) = *&self->_padding.top;
    *(result + 104) = v6;
    *(result + 6) = *&self->_headerAspectRatio;
  }

  return result;
}

@end