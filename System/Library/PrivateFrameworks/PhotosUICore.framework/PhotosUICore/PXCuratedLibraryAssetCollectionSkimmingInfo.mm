@interface PXCuratedLibraryAssetCollectionSkimmingInfo
- (PXSimpleIndexPath)currentChildCollectionIndexPath;
- (void)setCurrentChildCollectionIndexPath:(PXSimpleIndexPath *)path;
@end

@implementation PXCuratedLibraryAssetCollectionSkimmingInfo

- (void)setCurrentChildCollectionIndexPath:(PXSimpleIndexPath *)path
{
  v3 = *&path->dataSourceIdentifier;
  *&self->_currentChildCollectionIndexPath.item = *&path->item;
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