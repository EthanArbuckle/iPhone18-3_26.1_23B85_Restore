@interface PXGridLayoutMetrics
- (CGSize)footerSize;
- (CGSize)headerSize;
- (CGSize)headerSpacing;
- (CGSize)interItemSpacing;
- (CGSize)itemSize;
- (UIEdgeInsets)contentInsets;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation PXGridLayoutMetrics

- (CGSize)footerSize
{
  width = self->_footerSize.width;
  height = self->_footerSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)headerSpacing
{
  width = self->_headerSpacing.width;
  height = self->_headerSpacing.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)headerSize
{
  width = self->_headerSize.width;
  height = self->_headerSize.height;
  result.height = height;
  result.width = width;
  return result;
}

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

- (CGSize)interItemSpacing
{
  width = self->_interItemSpacing.width;
  height = self->_interItemSpacing.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)itemSize
{
  width = self->_itemSize.width;
  height = self->_itemSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = PXGridLayoutMetrics;
  result = [(PXLayoutMetrics *)&v6 copyWithZone:a3];
  *(result + 4) = self->_axis;
  *(result + 3) = self->_itemSize;
  *(result + 7) = self->_footerSize;
  *(result + 24) = self->_displaysHeaderTile;
  *(result + 5) = self->_headerSize;
  *(result + 6) = self->_headerSpacing;
  v5 = *&self->_contentInsets.bottom;
  *(result + 8) = *&self->_contentInsets.top;
  *(result + 9) = v5;
  *(result + 4) = self->_interItemSpacing;
  *(result + 5) = self->_additionalTileCount;
  return result;
}

@end