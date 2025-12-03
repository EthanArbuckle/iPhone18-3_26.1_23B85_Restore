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
- (XBApplicationSnapshotManifest)initWithApplicationInfo:(id)info;
- (XBApplicationSnapshotManifest)initWithContainerIdentity:(id)identity store:(id)store;
- (XBApplicationSnapshotManifestDelegate)delegate;
- (XBApplicationSnapshotManifestImpl)manifestImpl;
- (id)_allSnapshotGroups;
- (id)createSnapshotWithGroupID:(id)d;
- (id)createVariantForSnapshot:(id)snapshot withIdentifier:(id)identifier;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)snapshotsForGroupID:(id)d;
- (id)snapshotsForGroupID:(id)d fetchRequest:(id)request;
- (id)snapshotsForGroupID:(id)d matchingPredicate:(id)predicate;
- (id)snapshotsForGroupIDs:(id)ds;
- (id)snapshotsForGroupIDs:(id)ds fetchRequest:(id)request;
- (id)snapshotsForGroupIDs:(id)ds matchingPredicate:(id)predicate;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (void)archive;
- (void)beginSnapshotAccessTransaction:(id)transaction completion:(id)completion;
- (void)beginTrackingImageDeletions;
- (void)dealloc;
- (void)deleteAllSnapshots;
- (void)deleteSnapshot:(id)snapshot;
- (void)deleteSnapshots:(id)snapshots;
- (void)deleteSnapshotsForGroupID:(id)d;
- (void)deleteSnapshotsForGroupID:(id)d matchingPredicate:(id)predicate;
- (void)deleteSnapshotsForGroupID:(id)d predicateBuilder:(id)builder;
- (void)deleteSnapshotsMatchingPredicate:(id)predicate;
- (void)deleteSnapshotsUsingPredicateBuilder:(id)builder;
- (void)endTrackingImageDeletions;
- (void)generateImageForSnapshot:(id)snapshot dataProvider:(id)provider options:(unint64_t)options imageGeneratedHandler:(id)handler imageDataSavedHandler:(id)savedHandler;
- (void)generateImageForSnapshot:(id)snapshot dataProvider:(id)provider writeToFile:(BOOL)file didGenerateImage:(id)image didSaveImage:(id)saveImage;
- (void)manifest:(id)manifest didPurgeProtectedContentSnapshotsWithGroupIdentifiers:(id)identifiers;
- (void)purgeSnapshotsWithProtectedContent;
- (void)saveSnapshot:(id)snapshot atPath:(id)path withContext:(id)context;
- (void)updateSnapshotsAPFSPurgability:(BOOL)purgability;
@end

@implementation XBApplicationSnapshotManifest

- (NSString)defaultGroupIdentifier
{
  WeakRetained = objc_loadWeakRetained(&self->_manifestImpl);
  defaultGroupIdentifier = [WeakRetained defaultGroupIdentifier];

  return defaultGroupIdentifier;
}

- (void)purgeSnapshotsWithProtectedContent
{
  WeakRetained = objc_loadWeakRetained(&self->_manifestImpl);
  [WeakRetained purgeSnapshotsWithProtectedContent];
}

+ (void)initialize
{
  if (objc_opt_class() == self)
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

    CFNotificationCenterAddObserver(DarwinNotifyCenter, self, _XBTrackDeletionPreferencesChangedHandler, @"com.apple.springboard.trackSplashBoardDeletionsPrefsChanged", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }
}

+ (void)handleTrackingStateChange
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  __isTrackingDeletions = [standardUserDefaults BOOLForKey:@"SBTrackSplashBoardDeletions"];

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
  v2 = [MEMORY[0x277CF0C00] builderWithObject:self];
  [v2 setUseDebugDescription:1];
  v3 = __ManifestSerialWorkQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__XBApplicationSnapshotManifest_debugDescription__block_invoke;
  block[3] = &unk_279CF9280;
  v8 = v2;
  v4 = v2;
  dispatch_sync(v3, block);
  build = [v4 build];

  return build;
}

+ (void)deleteAllSystemSnapshots
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_6_0(&dword_26B5EF000, v0, v1, "Error deleting all system snapshots at path %{public}@: %{public}@");
}

- (XBApplicationSnapshotManifest)initWithContainerIdentity:(id)identity store:(id)store
{
  identityCopy = identity;
  storeCopy = store;
  v8 = storeCopy;
  if (!identityCopy)
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

  if (!storeCopy)
  {
    goto LABEL_8;
  }

LABEL_3:
  v14.receiver = self;
  v14.super_class = XBApplicationSnapshotManifest;
  v9 = [(XBApplicationSnapshotManifest *)&v14 init];
  if (v9)
  {
    v10 = [XBApplicationSnapshotManifestImpl acquireManifestForContainerIdentity:identityCopy store:v8 creatingIfNecessary:1];
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

- (XBApplicationSnapshotManifest)initWithApplicationInfo:(id)info
{
  infoCopy = info;
  if (!infoCopy)
  {
    [XBApplicationSnapshotManifest initWithApplicationInfo:];
  }

  v5 = [XBSnapshotContainerIdentity identityForApplicationInfo:infoCopy];
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
  bundleIdentifier = [WeakRetained bundleIdentifier];

  return bundleIdentifier;
}

- (NSString)containerPath
{
  WeakRetained = objc_loadWeakRetained(&self->_manifestImpl);
  containerPath = [WeakRetained containerPath];

  return containerPath;
}

- (id)snapshotsForGroupID:(id)d
{
  dCopy = d;
  WeakRetained = objc_loadWeakRetained(&self->_manifestImpl);
  v6 = [WeakRetained snapshotsForGroupID:dCopy];

  return v6;
}

- (id)snapshotsForGroupID:(id)d matchingPredicate:(id)predicate
{
  predicateCopy = predicate;
  dCopy = d;
  WeakRetained = objc_loadWeakRetained(&self->_manifestImpl);
  v9 = [WeakRetained snapshotsForGroupID:dCopy matchingPredicate:predicateCopy];

  return v9;
}

- (id)snapshotsForGroupID:(id)d fetchRequest:(id)request
{
  requestCopy = request;
  dCopy = d;
  WeakRetained = objc_loadWeakRetained(&self->_manifestImpl);
  v9 = [WeakRetained snapshotsForGroupID:dCopy fetchRequest:requestCopy];

  return v9;
}

- (id)snapshotsForGroupIDs:(id)ds
{
  dsCopy = ds;
  WeakRetained = objc_loadWeakRetained(&self->_manifestImpl);
  v6 = [WeakRetained snapshotsForGroupIDs:dsCopy];

  return v6;
}

- (id)snapshotsForGroupIDs:(id)ds matchingPredicate:(id)predicate
{
  predicateCopy = predicate;
  dsCopy = ds;
  WeakRetained = objc_loadWeakRetained(&self->_manifestImpl);
  v9 = [WeakRetained snapshotsForGroupIDs:dsCopy matchingPredicate:predicateCopy];

  return v9;
}

- (id)snapshotsForGroupIDs:(id)ds fetchRequest:(id)request
{
  requestCopy = request;
  dsCopy = ds;
  WeakRetained = objc_loadWeakRetained(&self->_manifestImpl);
  v9 = [WeakRetained snapshotsForGroupIDs:dsCopy fetchRequest:requestCopy];

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

- (id)createSnapshotWithGroupID:(id)d
{
  dCopy = d;
  WeakRetained = objc_loadWeakRetained(&self->_manifestImpl);
  v6 = [WeakRetained createSnapshotWithGroupID:dCopy];

  return v6;
}

- (id)createVariantForSnapshot:(id)snapshot withIdentifier:(id)identifier
{
  identifierCopy = identifier;
  snapshotCopy = snapshot;
  WeakRetained = objc_loadWeakRetained(&self->_manifestImpl);
  v9 = [WeakRetained createVariantForSnapshot:snapshotCopy withIdentifier:identifierCopy];

  return v9;
}

- (void)generateImageForSnapshot:(id)snapshot dataProvider:(id)provider writeToFile:(BOOL)file didGenerateImage:(id)image didSaveImage:(id)saveImage
{
  fileCopy = file;
  snapshotCopy = snapshot;
  providerCopy = provider;
  imageCopy = image;
  saveImageCopy = saveImage;
  v16 = saveImageCopy;
  if (!imageCopy)
  {
    v17 = 0;
    if (saveImageCopy)
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
  v25 = imageCopy;
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
  [(XBApplicationSnapshotManifest *)self generateImageForSnapshot:snapshotCopy dataProvider:providerCopy writeToFile:fileCopy imageGeneratedHandler:v17 imageDataSavedHandler:v18, v19, v20, v21, v22];
}

- (void)generateImageForSnapshot:(id)snapshot dataProvider:(id)provider options:(unint64_t)options imageGeneratedHandler:(id)handler imageDataSavedHandler:(id)savedHandler
{
  savedHandlerCopy = savedHandler;
  handlerCopy = handler;
  providerCopy = provider;
  snapshotCopy = snapshot;
  WeakRetained = objc_loadWeakRetained(&self->_manifestImpl);
  [WeakRetained generateImageForSnapshot:snapshotCopy dataProvider:providerCopy options:options imageGeneratedHandler:handlerCopy imageDataSavedHandler:savedHandlerCopy];
}

- (void)saveSnapshot:(id)snapshot atPath:(id)path withContext:(id)context
{
  contextCopy = context;
  pathCopy = path;
  snapshotCopy = snapshot;
  WeakRetained = objc_loadWeakRetained(&self->_manifestImpl);
  [WeakRetained saveSnapshot:snapshotCopy atPath:pathCopy withContext:contextCopy];
}

- (id)_allSnapshotGroups
{
  WeakRetained = objc_loadWeakRetained(&self->_manifestImpl);
  _allSnapshotGroups = [WeakRetained _allSnapshotGroups];

  return _allSnapshotGroups;
}

- (void)deleteAllSnapshots
{
  WeakRetained = objc_loadWeakRetained(&self->_manifestImpl);
  [WeakRetained deleteAllSnapshots];
}

- (void)deleteSnapshot:(id)snapshot
{
  snapshotCopy = snapshot;
  WeakRetained = objc_loadWeakRetained(&self->_manifestImpl);
  [WeakRetained deleteSnapshot:snapshotCopy];
}

- (void)deleteSnapshots:(id)snapshots
{
  snapshotsCopy = snapshots;
  WeakRetained = objc_loadWeakRetained(&self->_manifestImpl);
  [WeakRetained deleteSnapshots:snapshotsCopy];
}

- (void)deleteSnapshotsMatchingPredicate:(id)predicate
{
  predicateCopy = predicate;
  WeakRetained = objc_loadWeakRetained(&self->_manifestImpl);
  [WeakRetained deleteSnapshotsMatchingPredicate:predicateCopy];
}

- (void)deleteSnapshotsUsingPredicateBuilder:(id)builder
{
  builderCopy = builder;
  WeakRetained = objc_loadWeakRetained(&self->_manifestImpl);
  [WeakRetained deleteSnapshotsUsingPredicateBuilder:builderCopy];
}

- (void)deleteSnapshotsForGroupID:(id)d
{
  dCopy = d;
  WeakRetained = objc_loadWeakRetained(&self->_manifestImpl);
  [WeakRetained deleteSnapshotsForGroupID:dCopy];
}

- (void)deleteSnapshotsForGroupID:(id)d matchingPredicate:(id)predicate
{
  predicateCopy = predicate;
  dCopy = d;
  WeakRetained = objc_loadWeakRetained(&self->_manifestImpl);
  [WeakRetained deleteSnapshotsForGroupID:dCopy matchingPredicate:predicateCopy];
}

- (void)deleteSnapshotsForGroupID:(id)d predicateBuilder:(id)builder
{
  builderCopy = builder;
  dCopy = d;
  WeakRetained = objc_loadWeakRetained(&self->_manifestImpl);
  [WeakRetained deleteSnapshotsForGroupID:dCopy predicateBuilder:builderCopy];
}

- (void)updateSnapshotsAPFSPurgability:(BOOL)purgability
{
  purgabilityCopy = purgability;
  WeakRetained = objc_loadWeakRetained(&self->_manifestImpl);
  [WeakRetained updateSnapshotsAPFSPurgability:purgabilityCopy];
}

- (BOOL)snapshotsConsideredUnpurgableByAPFS
{
  WeakRetained = objc_loadWeakRetained(&self->_manifestImpl);
  snapshotsConsideredUnpurgableByAPFS = [WeakRetained snapshotsConsideredUnpurgableByAPFS];

  return snapshotsConsideredUnpurgableByAPFS;
}

- (void)beginSnapshotAccessTransaction:(id)transaction completion:(id)completion
{
  completionCopy = completion;
  transactionCopy = transaction;
  WeakRetained = objc_loadWeakRetained(&self->_manifestImpl);
  [WeakRetained beginSnapshotAccessTransaction:transactionCopy completion:completionCopy];
}

- (void)archive
{
  WeakRetained = objc_loadWeakRetained(&self->_manifestImpl);
  [WeakRetained archive];
}

- (BOOL)_invalidate
{
  WeakRetained = objc_loadWeakRetained(&self->_manifestImpl);
  _invalidate = [WeakRetained _invalidate];

  return _invalidate;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(XBApplicationSnapshotManifest *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  WeakRetained = objc_loadWeakRetained(&self->_manifestImpl);
  bundleIdentifier = [WeakRetained bundleIdentifier];
  v6 = [v3 appendObject:bundleIdentifier withName:@"bundleID"];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(XBApplicationSnapshotManifest *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  v9[1] = *MEMORY[0x277D85DE8];
  prefixCopy = prefix;
  succinctDescriptionBuilder = [(XBApplicationSnapshotManifest *)self succinctDescriptionBuilder];
  WeakRetained = objc_loadWeakRetained(&self->_manifestImpl);
  v9[0] = WeakRetained;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  [succinctDescriptionBuilder appendArraySection:v7 withName:0 multilinePrefix:prefixCopy skipIfEmpty:1];

  return succinctDescriptionBuilder;
}

- (void)manifest:(id)manifest didPurgeProtectedContentSnapshotsWithGroupIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  manifestCopy = manifest;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained manifest:manifestCopy didPurgeProtectedContentSnapshotsWithGroupIdentifiers:identifiersCopy];
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