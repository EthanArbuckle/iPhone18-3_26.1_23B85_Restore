@interface PXAspectFitLayoutMetrics
- (PXAspectFitLayoutMetrics)init;
- (UIEdgeInsets)contentInsets;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation PXAspectFitLayoutMetrics

- (UIEdgeInsets)contentInsets
{
  top = self->_contentInsets.top;
  left = self->_contentInsets.left;
  bottom = self->_contentInsets.bottom;
  right = self->_contentInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = PXAspectFitLayoutMetrics;
  result = [(PXLayoutMetrics *)&v6 copyWithZone:zone];
  v5 = *&self->_contentInsets.bottom;
  *(result + 56) = *&self->_contentInsets.top;
  *(result + 72) = v5;
  *(result + 3) = *&self->_interTileSpacing;
  *(result + 4) = self->_minTilesPerRow;
  *(result + 5) = self->_maxTilesPerRow;
  *(result + 6) = *&self->_minRowAspectRatio;
  return result;
}

- (PXAspectFitLayoutMetrics)init
{
  v3.receiver = self;
  v3.super_class = PXAspectFitLayoutMetrics;
  result = [(PXAspectFitLayoutMetrics *)&v3 init];
  if (result)
  {
    result->_minTilesPerRow = 2;
    result->_maxTilesPerRow = 4;
    result->_minRowAspectRatio = 1.77777778;
  }

  return result;
}

@end