@interface PXSharedAlbumsActivityEntryViewController
- (CGSize)layout:(id)layout estimatedContentSizeForSublayoutAtIndex:(int64_t)index referenceSize:(CGSize)result;
- (PXSharedAlbumsActivityEntryViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)layout:(id)layout createSublayoutAtIndex:(int64_t)index;
- (void)_itemListManagerDidChange:(id)change;
- (void)loadView;
@end

@implementation PXSharedAlbumsActivityEntryViewController

- (void)_itemListManagerDidChange:(id)change
{
  createAnchorForVisibleArea = [(PXGStackLayout *)self->_layout createAnchorForVisibleArea];
  autoInvalidate = [createAnchorForVisibleArea autoInvalidate];

  layout = self->_layout;
  v7 = self->_itemList;
  [(PXGStackLayout *)layout applySublayoutChangeDetails:0 countAfterChanges:[(PXSharedAlbumsActivityEntryItemList *)v7 count] sublayoutProvider:self];
}

- (id)layout:(id)layout createSublayoutAtIndex:(int64_t)index
{
  v4 = [(PXSharedAlbumsActivityEntryItemList *)self->_itemList itemAtIndex:index];
  v5 = [[PXSharedAlbumsActivityEntryLayout alloc] initWithItem:v4];

  return v5;
}

- (CGSize)layout:(id)layout estimatedContentSizeForSublayoutAtIndex:(int64_t)index referenceSize:(CGSize)result
{
  v5 = (100 * index + 100);
  result.height = v5;
  return result;
}

- (void)loadView
{
  v3 = self->_itemList;
  v4 = objc_alloc_init(off_1E77216D8);
  layout = self->_layout;
  self->_layout = v4;

  [(PXGStackLayout *)self->_layout setAxis:1];
  [(PXGStackLayout *)self->_layout setInterlayoutSpacing:20.0];
  [(PXGStackLayout *)self->_layout insertSublayoutProvider:self inRange:0, [(PXSharedAlbumsActivityEntryItemList *)v3 count]];
  v6 = [(PXGStackLayout *)self->_layout createAnchorForScrollingToContentEdges:4 padding:*off_1E7721FA8, *(off_1E7721FA8 + 1), *(off_1E7721FA8 + 2), *(off_1E7721FA8 + 3)];
  autoInvalidate = [v6 autoInvalidate];

  v11 = objc_alloc_init(MEMORY[0x1E6978860]);
  v8 = [[PXPhotoKitUIMediaProvider alloc] initWithImageManager:v11];
  mediaProvider = self->_mediaProvider;
  self->_mediaProvider = &v8->super.super;

  v10 = objc_alloc_init(off_1E7721708);
  [v10 setRootLayout:self->_layout];
  [v10 registerAllTextureProvidersWithMediaProvider:self->_mediaProvider];

  [(PXSharedAlbumsActivityEntryViewController *)self setView:v10];
}

- (PXSharedAlbumsActivityEntryViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v13.receiver = self;
  v13.super_class = PXSharedAlbumsActivityEntryViewController;
  v4 = [(PXSharedAlbumsActivityEntryViewController *)&v13 initWithNibName:name bundle:bundle];
  if (v4)
  {
    px_deprecated_appPhotoLibrary = [MEMORY[0x1E69789A8] px_deprecated_appPhotoLibrary];
    px_standardLibrarySpecificFetchOptions = [px_deprecated_appPhotoLibrary px_standardLibrarySpecificFetchOptions];
    v7 = [PXSharedAlbumsActivityEntry fetchActivitiesWithOptions:px_standardLibrarySpecificFetchOptions];

    v8 = [PXSharedAlbumsActivityEntryItemList alloc];
    fetchedObjects = [v7 fetchedObjects];
    v10 = [(PXSharedAlbumsActivityEntryItemList *)v8 initWithActivities:fetchedObjects];

    itemList = v4->_itemList;
    v4->_itemList = v10;
  }

  return v4;
}

@end