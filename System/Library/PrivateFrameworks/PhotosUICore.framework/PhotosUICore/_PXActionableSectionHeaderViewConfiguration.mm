@interface _PXActionableSectionHeaderViewConfiguration
- (PXActionableSectionHeaderLayout)weakLayout;
- (PXSimpleIndexPath)sectionIndexPath;
- (UIEdgeInsets)edgeInsets;
- (void)setSectionIndexPath:(PXSimpleIndexPath *)a3;
@end

@implementation _PXActionableSectionHeaderViewConfiguration

- (PXActionableSectionHeaderLayout)weakLayout
{
  WeakRetained = objc_loadWeakRetained(&self->_weakLayout);

  return WeakRetained;
}

- (void)setSectionIndexPath:(PXSimpleIndexPath *)a3
{
  v3 = *&a3->item;
  *&self->_sectionIndexPath.dataSourceIdentifier = *&a3->dataSourceIdentifier;
  *&self->_sectionIndexPath.item = v3;
}

- (PXSimpleIndexPath)sectionIndexPath
{
  v3 = *&self[5].item;
  *&retstr->dataSourceIdentifier = *&self[5].dataSourceIdentifier;
  *&retstr->item = v3;
  return self;
}

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

@end