@interface PXSharedCollectionsCollaborationViewManager
+ (id)sharedInstance;
- (PXSharedCollectionsCollaborationViewManager)init;
- (id)cachedCollaborationViewFor:(id)for;
- (id)collaborationViewForAssetCollection:(id)collection;
- (id)createCollaborationViewFor:(id)for;
- (void)cacheCollaborationView:(id)view for:(id)for;
- (void)dealloc;
- (void)photoLibraryDidChange:(id)change;
- (void)setObservedPhotoLibraries:(id)libraries;
- (void)startObservingChangesFor:(id)for;
- (void)updateCollaborationView:(id)view with:(id)with;
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
  selfCopy = self;
  [v2 removeAllObjects];
  *(selfCopy + OBJC_IVAR___PXSharedCollectionsCollaborationViewManager_observedPhotoLibraries) = MEMORY[0x1E69E7CC0];

  v4.receiver = selfCopy;
  v4.super_class = PXSharedCollectionsCollaborationViewManager;
  [(PXSharedCollectionsCollaborationViewManager *)&v4 dealloc];
}

- (id)collaborationViewForAssetCollection:(id)collection
{
  collectionCopy = collection;
  selfCopy = self;
  v6 = [(PXSharedCollectionsCollaborationViewManager *)selfCopy cachedCollaborationViewFor:collectionCopy];
  if (!v6)
  {
    v7 = [(PXSharedCollectionsCollaborationViewManager *)selfCopy createCollaborationViewFor:collectionCopy];
    if (v7)
    {
      v6 = v7;
      [(PXSharedCollectionsCollaborationViewManager *)selfCopy cacheCollaborationView:v6 for:collectionCopy];
      [(PXSharedCollectionsCollaborationViewManager *)selfCopy startObservingChangesFor:collectionCopy];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (id)createCollaborationViewFor:(id)for
{
  forCopy = for;
  selfCopy = self;
  v6 = sub_1A4892CD8(forCopy);

  return v6;
}

- (void)updateCollaborationView:(id)view with:(id)with
{
  viewCopy = view;
  withCopy = with;
  selfCopy = self;
  sub_1A48950F8(viewCopy, withCopy);
}

- (void)setObservedPhotoLibraries:(id)libraries
{
  sub_1A3C52C70(0, &qword_1EB144298);
  *(self + OBJC_IVAR___PXSharedCollectionsCollaborationViewManager_observedPhotoLibraries) = sub_1A524CA34();
}

- (id)cachedCollaborationViewFor:(id)for
{
  forCopy = for;
  selfCopy = self;
  v6 = sub_1A4893710(forCopy);

  return v6;
}

- (void)cacheCollaborationView:(id)view for:(id)for
{
  viewCopy = view;
  forCopy = for;
  selfCopy = self;
  sub_1A4893D64(viewCopy, forCopy);
}

- (void)startObservingChangesFor:(id)for
{
  forCopy = for;
  selfCopy = self;
  sub_1A4894040(forCopy);
}

- (void)photoLibraryDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  PXSharedCollectionsCollaborationViewManager.photoLibraryDidChange(_:)(changeCopy);
}

@end