@interface _PXPhotosSectionHeaderViewConfiguration
- (UIEdgeInsets)edgeInsets;
- (_PXAlbumSectionHeaderLayout)weakLayout;
@end

@implementation _PXPhotosSectionHeaderViewConfiguration

- (UIEdgeInsets)edgeInsets
{
  top = self->_edgeInsets.top;
  left = self->_edgeInsets.left;
  bottom = self->_edgeInsets.bottom;
  right = self->_edgeInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (_PXAlbumSectionHeaderLayout)weakLayout
{
  WeakRetained = objc_loadWeakRetained(&self->weakLayout);

  return WeakRetained;
}

@end