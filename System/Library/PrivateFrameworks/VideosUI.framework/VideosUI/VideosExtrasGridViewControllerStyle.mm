@interface VideosExtrasGridViewControllerStyle
- (UIEdgeInsets)collectionViewInsets;
- (UIEdgeInsets)defaultCellSectionInsets;
- (UIEdgeInsets)detailInsets;
- (UIEdgeInsets)imageCellSectionInsets;
- (UIEdgeInsets)productCellSectionInsets;
- (UIEdgeInsets)videoCellSectionInsets;
@end

@implementation VideosExtrasGridViewControllerStyle

- (UIEdgeInsets)collectionViewInsets
{
  top = self->_collectionViewInsets.top;
  left = self->_collectionViewInsets.left;
  bottom = self->_collectionViewInsets.bottom;
  right = self->_collectionViewInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (UIEdgeInsets)detailInsets
{
  top = self->_detailInsets.top;
  left = self->_detailInsets.left;
  bottom = self->_detailInsets.bottom;
  right = self->_detailInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (UIEdgeInsets)defaultCellSectionInsets
{
  top = self->_defaultCellSectionInsets.top;
  left = self->_defaultCellSectionInsets.left;
  bottom = self->_defaultCellSectionInsets.bottom;
  right = self->_defaultCellSectionInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (UIEdgeInsets)imageCellSectionInsets
{
  top = self->_imageCellSectionInsets.top;
  left = self->_imageCellSectionInsets.left;
  bottom = self->_imageCellSectionInsets.bottom;
  right = self->_imageCellSectionInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (UIEdgeInsets)videoCellSectionInsets
{
  top = self->_videoCellSectionInsets.top;
  left = self->_videoCellSectionInsets.left;
  bottom = self->_videoCellSectionInsets.bottom;
  right = self->_videoCellSectionInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (UIEdgeInsets)productCellSectionInsets
{
  top = self->_productCellSectionInsets.top;
  left = self->_productCellSectionInsets.left;
  bottom = self->_productCellSectionInsets.bottom;
  right = self->_productCellSectionInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end