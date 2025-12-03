@interface PXEditorialLayoutMetrics
- (PXEditorialLayoutMetrics)init;
- (UIEdgeInsets)padding;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation PXEditorialLayoutMetrics

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

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = PXEditorialLayoutMetrics;
  result = [(PXLayoutMetrics *)&v6 copyWithZone:zone];
  *(result + 4) = self->_numberOfColumns;
  *(result + 5) = *&self->_interTileSpacing;
  *(result + 6) = *&self->_headerHeight;
  v5 = *&self->_padding.bottom;
  *(result + 4) = *&self->_padding.top;
  *(result + 5) = v5;
  *(result + 7) = self->_lowerItemCountThreshold;
  *(result + 24) = self->_useSaliency;
  *(result + 25) = self->_useNewImplementation;
  return result;
}

- (PXEditorialLayoutMetrics)init
{
  v4.receiver = self;
  v4.super_class = PXEditorialLayoutMetrics;
  result = [(PXEditorialLayoutMetrics *)&v4 init];
  if (result)
  {
    result->_numberOfColumns = 3;
    result->_interTileSpacing = 2.0;
    result->_headerHeight = 0.0;
    v3 = *(off_1E7721FA8 + 1);
    *&result->_padding.top = *off_1E7721FA8;
    *&result->_padding.bottom = v3;
    result->_lowerItemCountThreshold = 6;
  }

  return result;
}

@end