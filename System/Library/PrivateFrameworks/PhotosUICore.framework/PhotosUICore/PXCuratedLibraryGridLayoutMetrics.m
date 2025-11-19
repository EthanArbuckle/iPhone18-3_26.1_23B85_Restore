@interface PXCuratedLibraryGridLayoutMetrics
- (PXCuratedLibraryGridLayoutMetrics)init;
- (UIEdgeInsets)padding;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation PXCuratedLibraryGridLayoutMetrics

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

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = PXCuratedLibraryGridLayoutMetrics;
  result = [(PXLayoutMetrics *)&v6 copyWithZone:a3];
  *(result + 3) = self->_numberOfColumns;
  v5 = *&self->_padding.bottom;
  *(result + 5) = *&self->_padding.top;
  *(result + 6) = v5;
  *(result + 4) = *&self->_itemAspectRatio;
  *(result + 9) = self->_numberOfPrecedingAssets;
  *(result + 5) = *&self->_headerAspectRatio;
  *(result + 6) = *&self->_screenScale;
  *(result + 7) = *&self->_interitemSpacing;
  *(result + 8) = self->_style;
  return result;
}

- (PXCuratedLibraryGridLayoutMetrics)init
{
  v3.receiver = self;
  v3.super_class = PXCuratedLibraryGridLayoutMetrics;
  result = [(PXCuratedLibraryGridLayoutMetrics *)&v3 init];
  if (result)
  {
    result->_numberOfColumns = 4;
    result->_itemAspectRatio = 1.0;
    result->_screenScale = 1.0;
    result->_interitemSpacing = 1.0;
    result->_headerAspectRatio = 1.0;
  }

  return result;
}

@end