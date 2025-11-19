@interface PXSharedAlbumsActivityEntryViewController
- (CGSize)layout:(id)a3 estimatedContentSizeForSublayoutAtIndex:(int64_t)a4 referenceSize:(CGSize)result;
- (PXSharedAlbumsActivityEntryViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)layout:(id)a3 createSublayoutAtIndex:(int64_t)a4;
- (void)_itemListManagerDidChange:(id)a3;
- (void)loadView;
@end

@implementation PXSharedAlbumsActivityEntryViewController

- (void)_itemListManagerDidChange:(id)a3
{
  v4 = [(PXGStackLayout *)self->_layout createAnchorForVisibleArea];
  v5 = [v4 autoInvalidate];

  layout = self->_layout;
  v7 = self->_itemList;
  [(PXGStackLayout *)layout applySublayoutChangeDetails:0 countAfterChanges:[(PXSharedAlbumsActivityEntryItemList *)v7 count] sublayoutProvider:self];
}

- (id)layout:(id)a3 createSublayoutAtIndex:(int64_t)a4
{
  v4 = [(PXSharedAlbumsActivityEntryItemList *)self->_itemList itemAtIndex:a4];
  v5 = [[PXSharedAlbumsActivityEntryLayout alloc] initWithItem:v4];

  return v5;
}

- (CGSize)layout:(id)a3 estimatedContentSizeForSublayoutAtIndex:(int64_t)a4 referenceSize:(CGSize)result
{
  v5 = (100 * a4 + 100);
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
  v7 = [v6 autoInvalidate];

  v11 = objc_alloc_init(MEMORY[0x1E6978860]);
  v8 = [[PXPhotoKitUIMediaProvider alloc] initWithImageManager:v11];
  mediaProvider = self->_mediaProvider;
  self->_mediaProvider = &v8->super.super;

  v10 = objc_alloc_init(off_1E7721708);
  [v10 setRootLayout:self->_layout];
  [v10 registerAllTextureProvidersWithMediaProvider:self->_mediaProvider];

  [(PXSharedAlbumsActivityEntryViewController *)self setView:v10];
}

- (PXSharedAlbumsActivityEntryViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v13.receiver = self;
  v13.super_class = PXSharedAlbumsActivityEntryViewController;
  v4 = [(PXSharedAlbumsActivityEntryViewController *)&v13 initWithNibName:a3 bundle:a4];
  if (v4)
  {
    v5 = [MEMORY[0x1E69789A8] px_deprecated_appPhotoLibrary];
    v6 = [v5 px_standardLibrarySpecificFetchOptions];
    v7 = [PXSharedAlbumsActivityEntry fetchActivitiesWithOptions:v6];

    v8 = [PXSharedAlbumsActivityEntryItemList alloc];
    v9 = [v7 fetchedObjects];
    v10 = [(PXSharedAlbumsActivityEntryItemList *)v8 initWithActivities:v9];

    itemList = v4->_itemList;
    v4->_itemList = v10;
  }

  return v4;
}

@end