@interface XBApplicationSnapshotManifest
+ (id)debugDescription;
+ (void)deleteAllSystemSnapshots;
+ (void)handleTrackingStateChange;
+ (void)initialize;
- (BOOL)_invalidate;
- (BOOL)snapshotsConsideredUnpurgableByAPFS;
- (NSString)bundleIdentifier;
- (NSString)containerPath;
- (NSString)defaultGroupIdentifier;
- (XBApplicationSnapshotManifest)initWithApplicationInfo:(id)a3;
- (XBApplicationSnapshotManifest)initWithContainerIdentity:(id)a3 store:(id)a4;
- (XBApplicationSnapshotManifestDelegate)delegate;
- (XBApplicationSnapshotManifestImpl)manifestImpl;
- (id)_allSnapshotGroups;
- (id)createSnapshotWithGroupID:(id)a3;
- (id)createVariantForSnapshot:(id)a3 withIdentifier:(id)a4;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)snapshotsForGroupID:(id)a3;
- (id)snapshotsForGroupID:(id)a3 fetchRequest:(id)a4;
- (id)snapshotsForGroupID:(id)a3 matchingPredicate:(id)a4;
- (id)snapshotsForGroupIDs:(id)a3;
- (id)snapshotsForGroupIDs:(id)a3 fetchRequest:(id)a4;
- (id)snapshotsForGroupIDs:(id)a3 matchingPredicate:(id)a4;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (void)archive;
- (void)beginSnapshotAccessTransaction:(id)a3 completion:(id)a4;
- (void)beginTrackingImageDeletions;
- (void)dealloc;
- (void)deleteAllSnapshots;
- (void)deleteSnapshot:(id)a3;
- (void)deleteSnapshots:(id)a3;
- (void)deleteSnapshotsForGroupID:(id)a3;
- (void)deleteSnapshotsForGroupID:(id)a3 matchingPredicate:(id)a4;
- (void)deleteSnapshotsForGroupID:(id)a3 predicateBuilder:(id)a4;
- (void)deleteSnapshotsMatchingPredicate:(id)a3;
- (void)deleteSnapshotsUsingPredicateBuilder:(id)a3;
- (void)endTrackingImageDeletions;
- (void)generateImageForSnapshot:(id)a3 dataProvider:(id)a4 options:(unint64_t)a5 imageGeneratedHandler:(id)a6 imageDataSavedHandler:(id)a7;
- (void)generateImageForSnapshot:(id)a3 dataProvider:(id)a4 writeToFile:(BOOL)a5 didGenerateImage:(id)a6 didSaveImage:(id)a7;
- (void)manifest:(id)a3 didPurgeProtectedContentSnapshotsWithGroupIdentifiers:(id)a4;
- (void)purgeSnapshotsWithProtectedContent;
- (void)saveSnapshot:(id)a3 atPath:(id)a4 withContext:(id)a5;
- (void)updateSnapshotsAPFSPurgability:(BOOL)a3;
@end

@implementation XBApplicationSnapshotManifest

- (NSString)defaultGroupIdentifier
{
  WeakRetained = objc_loadWeakRetained(&self->_manifestImpl);
  v3 = [WeakRetained defaultGroupIdentifier];

  return v3;
}

- (void)purgeSnapshotsWithProtectedContent
{
  WeakRetained = objc_loadWeakRetained(&self->_manifestImpl);
  [WeakRetained purgeSnapshotsWithProtectedContent];
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    v3 = dispatch_workloop_create("XBApplicationManifestWorkloop");
    v4 = __ManifestWorkloop;
    __ManifestWorkloop = v3;

    v5 = dispatch_queue_create_with_target_V2("XBApplicationManifestSerialWorkQueue", 0, __ManifestWorkloop);
    v6 = __ManifestSerialWorkQueue;
    __ManifestSerialWorkQueue = v5;

    v7 = BSDispatchQueueCreateWithQualityOfService();
    v8 = __ManifestImageAccessQueue;
    __ManifestImageAccessQueue = v7;

    v9 = BSDispatchQueueCreateWithQualityOfService();
    v10 = __ManifestArchiveSchedulingQueue;
    __ManifestArchiveSchedulingQueue = v9;

    v11 = BSDispatchQueueCreateWithQualityOfService();
    v12 = __ManifestCallOutQueue;
    __ManifestCallOutQueue = v11;

    v13 = BSDispatchQueueCreateWithQualityOfService();
    v14 = __ManifestFSEventsQueue;
    __ManifestFSEventsQueue = v13;

    v15 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v16 = __ManifestsByIdentity;
    __ManifestsByIdentity = v15;

    v17 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v18 = __trackersByIdentity;
    __trackersByIdentity = v17;

    v19 = MEMORY[0x277CCAAC8];
    v20 = objc_opt_class();
    v21 = objc_opt_class();
    v22 = NSStringFromClass(v21);
    [v19 setClass:v20 forClassName:v22];

    +[XBApplicationSnapshotManifest handleTrackingStateChange];
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

    CFNotificationCenterAddObserver(DarwinNotifyCenter, a1, _XBTrackDeletionPreferencesChangedHandler, @"com.apple.springboard.trackSplashBoardDeletionsPrefsChanged", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }
}

+ (void)handleTrackingStateChange
{
  v2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  __isTrackingDeletions = [v2 BOOLForKey:@"SBTrackSplashBoardDeletions"];

  v3 = __ManifestSerialWorkQueue;

  dispatch_async(v3, &__block_literal_global_6);
}

void __58__XBApplicationSnapshotManifest_handleTrackingStateChange__block_invoke()
{
  if (__isTrackingDeletions == 1)
  {
    v3 = objc_alloc_init(XBDefaultApplicationProvider);
    v0 = [(XBDefaultApplicationProvider *)v3 splashBoardSystemApplications];
    v1 = [v0 bs_compactMap:&__block_literal_global_24];
    v2 = __trackDenyList;
    __trackDenyList = v1;

    [__ManifestsByIdentity enumerateKeysAndObjectsUsingBlock:&__block_literal_global_27];
  }

  else
  {
    v3 = [__trackersByIdentity copy];
    [(XBDefaultApplicationProvider *)v3 enumerateKeysAndObjectsUsingBlock:&__block_literal_global_30];
  }
}

void __58__XBApplicationSnapshotManifest_handleTrackingStateChange__block_invoke_4(uint64_t a1, uint64_t a2)
{
  v2 = [__ManifestsByIdentity objectForKey:a2];
  [v2 endTrackingImageDeletions];
}

+ (id)debugDescription
{
  v2 = [MEMORY[0x277CF0C00] builderWithObject:a1];
  [v2 setUseDebugDescription:1];
  v3 = __ManifestSerialWorkQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__XBApplicationSnapshotManifest_debugDescription__block_invoke;
  block[3] = &unk_279CF9280;
  v8 = v2;
  v4 = v2;
  dispatch_sync(v3, block);
  v5 = [v4 build];

  return v5;
}

+ (void)deleteAllSystemSnapshots
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_6_0(&dword_26B5EF000, v0, v1, "Error deleting all system snapshots at path %{public}@: %{public}@");
}

- (XBApplicationSnapshotManifest)initWithContainerIdentity:(id)a3 store:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (!v6)
  {
    [XBApplicationSnapshotManifest initWithContainerIdentity:store:];
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_8:
    [XBApplicationSnapshotManifest initWithContainerIdentity:store:];
    goto LABEL_3;
  }

  if (!v7)
  {
    goto LABEL_8;
  }

LABEL_3:
  v14.receiver = self;
  v14.super_class = XBApplicationSnapshotManifest;
  v9 = [(XBApplicationSnapshotManifest *)&v14 init];
  if (v9)
  {
    v10 = [XBApplicationSnapshotManifestImpl acquireManifestForContainerIdentity:v6 store:v8 creatingIfNecessary:1];
    objc_storeWeak(&v9->_manifestImpl, v10);

    WeakRetained = objc_loadWeakRetained(&v9->_manifestImpl);
    [WeakRetained setDelegate:v9];

    if (__isTrackingDeletions == 1)
    {
      v12 = objc_loadWeakRetained(&v9->_manifestImpl);
      [v12 beginTrackingImageDeletions];
    }
  }

  return v9;
}

- (XBApplicationSnapshotManifest)initWithApplicationInfo:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    [XBApplicationSnapshotManifest initWithApplicationInfo:];
  }

  v5 = [XBSnapshotContainerIdentity identityForApplicationInfo:v4];
  v6 = +[XBApplicationDataStore sharedInstance];
  v7 = [(XBApplicationSnapshotManifest *)self initWithContainerIdentity:v5 store:v6];

  return v7;
}

- (void)dealloc
{
  WeakRetained = objc_loadWeakRetained(&self->_manifestImpl);
  [XBApplicationSnapshotManifestImpl relinquishManifest:WeakRetained];

  v4.receiver = self;
  v4.super_class = XBApplicationSnapshotManifest;
  [(XBApplicationSnapshotManifest *)&v4 dealloc];
}

- (NSString)bundleIdentifier
{
  WeakRetained = objc_loadWeakRetained(&self->_manifestImpl);
  v3 = [WeakRetained bundleIdentifier];

  return v3;
}

- (NSString)containerPath
{
  WeakRetained = objc_loadWeakRetained(&self->_manifestImpl);
  v3 = [WeakRetained containerPath];

  return v3;
}

- (id)snapshotsForGroupID:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_manifestImpl);
  v6 = [WeakRetained snapshotsForGroupID:v4];

  return v6;
}

- (id)snapshotsForGroupID:(id)a3 matchingPredicate:(id)a4
{
  v6 = a4;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_manifestImpl);
  v9 = [WeakRetained snapshotsForGroupID:v7 matchingPredicate:v6];

  return v9;
}

- (id)snapshotsForGroupID:(id)a3 fetchRequest:(id)a4
{
  v6 = a4;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_manifestImpl);
  v9 = [WeakRetained snapshotsForGroupID:v7 fetchRequest:v6];

  return v9;
}

- (id)snapshotsForGroupIDs:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_manifestImpl);
  v6 = [WeakRetained snapshotsForGroupIDs:v4];

  return v6;
}

- (id)snapshotsForGroupIDs:(id)a3 matchingPredicate:(id)a4
{
  v6 = a4;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_manifestImpl);
  v9 = [WeakRetained snapshotsForGroupIDs:v7 matchingPredicate:v6];

  return v9;
}

- (id)snapshotsForGroupIDs:(id)a3 fetchRequest:(id)a4
{
  v6 = a4;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_manifestImpl);
  v9 = [WeakRetained snapshotsForGroupIDs:v7 fetchRequest:v6];

  return v9;
}

- (void)beginTrackingImageDeletions
{
  WeakRetained = objc_loadWeakRetained(&self->_manifestImpl);
  [WeakRetained beginTrackingImageDeletions];
}

- (void)endTrackingImageDeletions
{
  WeakRetained = objc_loadWeakRetained(&self->_manifestImpl);
  [WeakRetained endTrackingImageDeletions];
}

- (id)createSnapshotWithGroupID:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_manifestImpl);
  v6 = [WeakRetained createSnapshotWithGroupID:v4];

  return v6;
}

- (id)createVariantForSnapshot:(id)a3 withIdentifier:(id)a4
{
  v6 = a4;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_manifestImpl);
  v9 = [WeakRetained createVariantForSnapshot:v7 withIdentifier:v6];

  return v9;
}

- (void)generateImageForSnapshot:(id)a3 dataProvider:(id)a4 writeToFile:(BOOL)a5 didGenerateImage:(id)a6 didSaveImage:(id)a7
{
  v9 = a5;
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = a7;
  v16 = v15;
  if (!v14)
  {
    v17 = 0;
    if (v15)
    {
      goto LABEL_3;
    }

LABEL_5:
    v18 = 0;
    goto LABEL_6;
  }

  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __113__XBApplicationSnapshotManifest_generateImageForSnapshot_dataProvider_writeToFile_didGenerateImage_didSaveImage___block_invoke;
  v24[3] = &unk_279CF9820;
  v25 = v14;
  v17 = MEMORY[0x26D67C6A0](v24);

  if (!v16)
  {
    goto LABEL_5;
  }

LABEL_3:
  v19 = MEMORY[0x277D85DD0];
  v20 = 3221225472;
  v21 = __113__XBApplicationSnapshotManifest_generateImageForSnapshot_dataProvider_writeToFile_didGenerateImage_didSaveImage___block_invoke_2;
  v22 = &unk_279CF9820;
  v23 = v16;
  v18 = MEMORY[0x26D67C6A0](&v19);

LABEL_6:
  [(XBApplicationSnapshotManifest *)self generateImageForSnapshot:v12 dataProvider:v13 writeToFile:v9 imageGeneratedHandler:v17 imageDataSavedHandler:v18, v19, v20, v21, v22];
}

- (void)generateImageForSnapshot:(id)a3 dataProvider:(id)a4 options:(unint64_t)a5 imageGeneratedHandler:(id)a6 imageDataSavedHandler:(id)a7
{
  v12 = a7;
  v13 = a6;
  v14 = a4;
  v15 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_manifestImpl);
  [WeakRetained generateImageForSnapshot:v15 dataProvider:v14 options:a5 imageGeneratedHandler:v13 imageDataSavedHandler:v12];
}

- (void)saveSnapshot:(id)a3 atPath:(id)a4 withContext:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_manifestImpl);
  [WeakRetained saveSnapshot:v10 atPath:v9 withContext:v8];
}

- (id)_allSnapshotGroups
{
  WeakRetained = objc_loadWeakRetained(&self->_manifestImpl);
  v3 = [WeakRetained _allSnapshotGroups];

  return v3;
}

- (void)deleteAllSnapshots
{
  WeakRetained = objc_loadWeakRetained(&self->_manifestImpl);
  [WeakRetained deleteAllSnapshots];
}

- (void)deleteSnapshot:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_manifestImpl);
  [WeakRetained deleteSnapshot:v4];
}

- (void)deleteSnapshots:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_manifestImpl);
  [WeakRetained deleteSnapshots:v4];
}

- (void)deleteSnapshotsMatchingPredicate:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_manifestImpl);
  [WeakRetained deleteSnapshotsMatchingPredicate:v4];
}

- (void)deleteSnapshotsUsingPredicateBuilder:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_manifestImpl);
  [WeakRetained deleteSnapshotsUsingPredicateBuilder:v4];
}

- (void)deleteSnapshotsForGroupID:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_manifestImpl);
  [WeakRetained deleteSnapshotsForGroupID:v4];
}

- (void)deleteSnapshotsForGroupID:(id)a3 matchingPredicate:(id)a4
{
  v6 = a4;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_manifestImpl);
  [WeakRetained deleteSnapshotsForGroupID:v7 matchingPredicate:v6];
}

- (void)deleteSnapshotsForGroupID:(id)a3 predicateBuilder:(id)a4
{
  v6 = a4;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_manifestImpl);
  [WeakRetained deleteSnapshotsForGroupID:v7 predicateBuilder:v6];
}

- (void)updateSnapshotsAPFSPurgability:(BOOL)a3
{
  v3 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_manifestImpl);
  [WeakRetained updateSnapshotsAPFSPurgability:v3];
}

- (BOOL)snapshotsConsideredUnpurgableByAPFS
{
  WeakRetained = objc_loadWeakRetained(&self->_manifestImpl);
  v3 = [WeakRetained snapshotsConsideredUnpurgableByAPFS];

  return v3;
}

- (void)beginSnapshotAccessTransaction:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_manifestImpl);
  [WeakRetained beginSnapshotAccessTransaction:v7 completion:v6];
}

- (void)archive
{
  WeakRetained = objc_loadWeakRetained(&self->_manifestImpl);
  [WeakRetained archive];
}

- (BOOL)_invalidate
{
  WeakRetained = objc_loadWeakRetained(&self->_manifestImpl);
  v3 = [WeakRetained _invalidate];

  return v3;
}

- (id)succinctDescription
{
  v2 = [(XBApplicationSnapshotManifest *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  WeakRetained = objc_loadWeakRetained(&self->_manifestImpl);
  v5 = [WeakRetained bundleIdentifier];
  v6 = [v3 appendObject:v5 withName:@"bundleID"];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(XBApplicationSnapshotManifest *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v9[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(XBApplicationSnapshotManifest *)self succinctDescriptionBuilder];
  WeakRetained = objc_loadWeakRetained(&self->_manifestImpl);
  v9[0] = WeakRetained;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  [v5 appendArraySection:v7 withName:0 multilinePrefix:v4 skipIfEmpty:1];

  return v5;
}

- (void)manifest:(id)a3 didPurgeProtectedContentSnapshotsWithGroupIdentifiers:(id)a4
{
  v6 = a4;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained manifest:v7 didPurgeProtectedContentSnapshotsWithGroupIdentifiers:v6];
}

- (XBApplicationSnapshotManifestDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (XBApplicationSnapshotManifestImpl)manifestImpl
{
  WeakRetained = objc_loadWeakRetained(&self->_manifestImpl);

  return WeakRetained;
}

- (void)initWithContainerIdentity:store:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"identity" object:? file:? lineNumber:? description:?];
}

- (void)initWithContainerIdentity:store:.cold.2()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"store" object:? file:? lineNumber:? description:?];
}

- (void)initWithApplicationInfo:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"info" object:? file:? lineNumber:? description:?];
}

@end