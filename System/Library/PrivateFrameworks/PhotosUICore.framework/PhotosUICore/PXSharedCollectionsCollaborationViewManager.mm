@interface PXSharedCollectionsCollaborationViewManager
+ (id)sharedInstance;
- (PXSharedCollectionsCollaborationViewManager)init;
- (id)cachedCollaborationViewFor:(id)a3;
- (id)collaborationViewForAssetCollection:(id)a3;
- (id)createCollaborationViewFor:(id)a3;
- (void)cacheCollaborationView:(id)a3 for:(id)a4;
- (void)dealloc;
- (void)photoLibraryDidChange:(id)a3;
- (void)setObservedPhotoLibraries:(id)a3;
- (void)startObservingChangesFor:(id)a3;
- (void)updateCollaborationView:(id)a3 with:(id)a4;
@end

@implementation PXSharedCollectionsCollaborationViewManager

+ (id)sharedInstance
{
  swift_getObjCClassMetadata();
  v2 = static PXSharedCollectionsCollaborationViewManager.sharedInstance()();

  return v2;
}

- (PXSharedCollectionsCollaborationViewManager)init
{
  *(self + OBJC_IVAR___PXSharedCollectionsCollaborationViewManager_observedPhotoLibraries) = MEMORY[0x1E69E7CC0];
  v3 = [objc_opt_self() mapTableWithKeyOptions:0x10000 valueOptions:5];
  *(self + OBJC_IVAR___PXSharedCollectionsCollaborationViewManager_collaborationViewsById) = v3;
  v5.receiver = self;
  v5.super_class = PXSharedCollectionsCollaborationViewManager;
  return [(PXSharedCollectionsCollaborationViewManager *)&v5 init];
}

- (void)dealloc
{
  v2 = *(self + OBJC_IVAR___PXSharedCollectionsCollaborationViewManager_collaborationViewsById);
  v3 = self;
  [v2 removeAllObjects];
  *(v3 + OBJC_IVAR___PXSharedCollectionsCollaborationViewManager_observedPhotoLibraries) = MEMORY[0x1E69E7CC0];

  v4.receiver = v3;
  v4.super_class = PXSharedCollectionsCollaborationViewManager;
  [(PXSharedCollectionsCollaborationViewManager *)&v4 dealloc];
}

- (id)collaborationViewForAssetCollection:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = [(PXSharedCollectionsCollaborationViewManager *)v5 cachedCollaborationViewFor:v4];
  if (!v6)
  {
    v7 = [(PXSharedCollectionsCollaborationViewManager *)v5 createCollaborationViewFor:v4];
    if (v7)
    {
      v6 = v7;
      [(PXSharedCollectionsCollaborationViewManager *)v5 cacheCollaborationView:v6 for:v4];
      [(PXSharedCollectionsCollaborationViewManager *)v5 startObservingChangesFor:v4];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (id)createCollaborationViewFor:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_1A4892CD8(v4);

  return v6;
}

- (void)updateCollaborationView:(id)a3 with:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1A48950F8(v6, v7);
}

- (void)setObservedPhotoLibraries:(id)a3
{
  sub_1A3C52C70(0, &qword_1EB144298);
  *(self + OBJC_IVAR___PXSharedCollectionsCollaborationViewManager_observedPhotoLibraries) = sub_1A524CA34();
}

- (id)cachedCollaborationViewFor:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_1A4893710(v4);

  return v6;
}

- (void)cacheCollaborationView:(id)a3 for:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1A4893D64(v6, v7);
}

- (void)startObservingChangesFor:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1A4894040(v4);
}

- (void)photoLibraryDidChange:(id)a3
{
  v4 = a3;
  v5 = self;
  PXSharedCollectionsCollaborationViewManager.photoLibraryDidChange(_:)(v4);
}

@end