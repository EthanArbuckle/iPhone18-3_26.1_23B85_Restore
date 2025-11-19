@interface PXCuratedLibraryAssetCollectionSkimmingInfo
- (PXSimpleIndexPath)currentChildCollectionIndexPath;
- (void)setCurrentChildCollectionIndexPath:(PXSimpleIndexPath *)a3;
@end

@implementation PXCuratedLibraryAssetCollectionSkimmingInfo

- (void)setCurrentChildCollectionIndexPath:(PXSimpleIndexPath *)a3
{
  v3 = *&a3->dataSourceIdentifier;
  *&self->_currentChildCollectionIndexPath.item = *&a3->item;
  *&self->_currentChildCollectionIndexPath.dataSourceIdentifier = v3;
}

- (PXSimpleIndexPath)currentChildCollectionIndexPath
{
  v3 = *&self[1].subitem;
  *&retstr->dataSourceIdentifier = *&self[1].section;
  *&retstr->item = v3;
  return self;
}

@end