@interface PBFPosterExtensionDataStoreXPCServiceGlue
+ (BOOL)_checkIfLanguageChangeOccurred:(id)occurred;
+ (BOOL)_clearMigrationFlagsWithError:(id *)error;
+ (PBFPosterExtensionDataStoreXPCServiceGlue)sharedInstance;
- (BOOL)_hasComplicationsForPosterConfiguration:(id)configuration;
- (BOOL)_lock_performNecessaryMigrationsForDataStoreAtURL:(id)l shouldForce:(BOOL)force error:(id *)error;
- (BOOL)_lock_reapClassicSnapshots;
- (BOOL)_lock_reapSnapshots:(BOOL)snapshots;
- (BOOL)_migrationIsPending;
- (BOOL)_mutateDataStoreState:(unint64_t)state error:(id *)error;
- (CGRect)_cutoutBoundsForObstructionBounds:(CGRect)bounds orientation:(int64_t)orientation;
- (CGRect)_normalizedBounds:(CGRect)bounds forScreenBounds:(CGRect)screenBounds;
- (CGRect)_normalizedBounds:(CGRect)bounds orientation:(int64_t)orientation;
- (CGRect)_prominentObstructionForConfiguration:(id)configuration orientation:(int64_t)orientation;
- (CGRect)_prominentObstructionForOrientation:(int64_t)orientation showingComplications:(BOOL)complications;
- (CGRect)_screenBoundsForOrientation:(int64_t)orientation;
- (CGRect)_unbypassableProminentObstructionForOrientation:(int64_t)orientation showingComplications:(BOOL)complications;
- (PBFApplicationStateMonitor)applicationStateMonitor;
- (PBFPosterExtensionDataStoreXPCServiceGlue)initWithOptions:(unint64_t)options;
- (PBFRuntimeAssertionManager)runtimeAssertionManager;
- (id)_baseDataStoreURL;
- (id)_baseDataStoreURL:(BOOL)l;
- (id)_dataStoreWithError:(id *)error;
- (id)_lock_dataStoreWithError:(id *)error;
- (id)buildDataStoreForURL:(id)l runtimeAssertionProvider:(id)provider applicationStateMonitor:(id)monitor observer:(id)observer wasMigrationJustPerformed:(BOOL)performed error:(id *)error;
- (id)server:(id)server fetchActivePosterForRole:(id)role error:(id *)error;
- (void)_handleLaunchServicesUpdates:(id)updates completion:(id)completion;
- (void)_localeDidChange:(id)change;
- (void)_lock_fixAdaptiveTimeConfiguration;
- (void)_lock_fixComplicationLayout;
- (void)_lock_fixFileProtections;
- (void)_lock_migrateGlassToVibrantGlassMaterialStyle;
- (void)_lock_reapClassicSnapshots;
- (void)_lock_reapDescriptors;
- (void)_lock_reapEntirePosterBoardDataStore;
- (void)_lock_reapExtensionProviderInfo;
- (void)_lock_reapGallery;
- (void)_lock_reapTemporaryDirectory;
- (void)_lock_reapTransientData:(BOOL)data;
- (void)_lock_runLegacyMigration;
- (void)_lock_teardownDataStoreWithError:(id *)error;
- (void)_migration_updateStashedIdentifiers;
- (void)_performPublisherChangeForDataStore:(id)store block:(id)block;
- (void)_postDidTearDownNotification;
- (void)_resetRole:(id)role completion:(id)completion;
- (void)_stashCurrentDataStoreWithName:(id)name url:(id)url options:(id)options withError:(id *)error;
- (void)_teardownDataStoreWithError:(id *)error;
- (void)posterExtensionDataStore:(id)store activePostersWereUpdatedForRoles:(id)roles suggestionDescriptors:(id)descriptors;
- (void)posterExtensionDataStore:(id)store didInitializeActivePosters:(id)posters suggestionDescriptors:(id)descriptors posterCollections:(id)collections;
- (void)posterExtensionDataStore:(id)store didInitializeWithSwitcherConfiguration:(id)configuration withChanges:(BOOL)changes;
- (void)posterExtensionDataStore:(id)store didUpdateActiveConfiguration:(id)configuration associatedConfiguration:(id)associatedConfiguration reason:(id)reason;
- (void)posterExtensionDataStore:(id)store didUpdateConfiguration:(id)configuration;
- (void)posterExtensionDataStore:(id)store didUpdateSelectedConfiguration:(id)configuration associatedConfiguration:(id)associatedConfiguration reason:(id)reason;
- (void)posterExtensionDataStore:(id)store didUpdateSnapshotForPath:(id)path forDefinition:(id)definition;
- (void)posterExtensionDataStore:(id)store posterCollectionsWereUpdatedForRoles:(id)roles;
- (void)posterExtensionDataStore:(id)store posterConfiguration:(id)configuration didUpdateAssociatedHomeScreenPosterConfigurationTo:(id)to;
- (void)posterExtensionDataStore:(id)store suggestionsForPosterUUIDUpdated:(id)updated;
- (void)server:(id)server associateConfigurationMatchingUUID:(id)d focusModeActivityUUID:(id)iD completion:(id)completion;
- (void)server:(id)server clearMigrationFlags:(id)flags;
- (void)server:(id)server commitSuggestionsForConfigurationMatchingUUID:(id)d selectSuggestionDescriptorUUID:(id)iD completion:(id)completion;
- (void)server:(id)server createPosterConfigurationForProviderIdentifier:(id)identifier posterDescriptorIdentifier:(id)descriptorIdentifier role:(id)role completion:(id)completion;
- (void)server:(id)server deleteArchivedDataStoreNamed:(id)named completion:(id)completion;
- (void)server:(id)server deleteDataStoreWithCompletion:(id)completion;
- (void)server:(id)server deleteHostConfigurationForRole:(id)role completion:(id)completion;
- (void)server:(id)server deletePosterConfigurationsMatchingUUID:(id)d completion:(id)completion;
- (void)server:(id)server deletePosterDescriptorsForExtension:(id)extension completion:(id)completion;
- (void)server:(id)server deleteSnapshotsWithCompletion:(id)completion;
- (void)server:(id)server deleteTransientDataWithCompletion:(id)completion;
- (void)server:(id)server exportArchivedDataStoreNamed:(id)named completion:(id)completion;
- (void)server:(id)server exportCurrentDataStoreToURL:(id)l options:(id)options sandboxToken:(id)token error:(id *)error;
- (void)server:(id)server exportPosterConfigurationMatchingUUID:(id)d completion:(id)completion;
- (void)server:(id)server fetchActivePosterForRole:(id)role completion:(id)completion;
- (void)server:(id)server fetchArchivedDataStoreNamesWithCompletion:(id)completion;
- (void)server:(id)server fetchAssociatedHomeScreenPosterConfigurationUUID:(id)d completion:(id)completion;
- (void)server:(id)server fetchChargerIdentifierRelationshipsWithCompletion:(id)completion;
- (void)server:(id)server fetchContentCutoutBoundsForPosterConfiguration:(id)configuration orientation:(int64_t)orientation completion:(id)completion;
- (void)server:(id)server fetchContentObstructionBoundsForPosterConfiguration:(id)configuration orientation:(int64_t)orientation completion:(id)completion;
- (void)server:(id)server fetchExtendedContentCutoutBoundsForOrientation:(int64_t)orientation completion:(id)completion;
- (void)server:(id)server fetchExtensionIdentifiersWithCompletion:(id)completion;
- (void)server:(id)server fetchFocusUUIDForConfiguration:(id)configuration completion:(id)completion;
- (void)server:(id)server fetchGallery:(id)gallery;
- (void)server:(id)server fetchLimitedOcclusionBoundsForPosterConfiguration:(id)configuration orientation:(int64_t)orientation completion:(id)completion;
- (void)server:(id)server fetchMaximalContentCutoutBoundsForOrientation:(int64_t)orientation completion:(id)completion;
- (void)server:(id)server fetchObscurableBoundsForPosterConfiguration:(id)configuration orientation:(int64_t)orientation completion:(id)completion;
- (void)server:(id)server fetchPosterConfigurationsForExtension:(id)extension completion:(id)completion;
- (void)server:(id)server fetchPosterConfigurationsForRole:(id)role completion:(id)completion;
- (void)server:(id)server fetchPosterDescriptorsForExtension:(id)extension completion:(id)completion;
- (void)server:(id)server fetchPosterSnapshotsWithRequest:(id)request completion:(id)completion;
- (void)server:(id)server fetchRuntimeAssertionState:(id)state;
- (void)server:(id)server fetchSelectedPosterForRole:(id)role completion:(id)completion;
- (void)server:(id)server fetchStaticPosterDescriptorsForExtension:(id)extension completion:(id)completion;
- (void)server:(id)server fetchSuggestionDescriptorsForConfigurationMatchingUUID:(id)d completion:(id)completion;
- (void)server:(id)server gatherDataFreshnessState:(id)state;
- (void)server:(id)server ignoreExtension:(id)extension completion:(id)completion;
- (void)server:(id)server importPosterConfigurationFromArchiveData:(id)data completion:(id)completion;
- (void)server:(id)server ingestSnapshotCollection:(id)collection forPosterConfigurationUUID:(id)d completion:(id)completion;
- (void)server:(id)server invalidateDataStoreWithCompletion:(id)completion;
- (void)server:(id)server notePosterConfigurationUnderlyingModelDidChange:(id)change;
- (void)server:(id)server notifyActiveChargerIdentifierDidUpdate:(id)update completion:(id)completion;
- (void)server:(id)server notifyAvailableFocusModesDidChange:(id)change completion:(id)completion;
- (void)server:(id)server notifyFocusModeDidChange:(id)change completion:(id)completion;
- (void)server:(id)server overnightUpdate:(id)update completion:(id)completion;
- (void)server:(id)server prewarm:(id)prewarm completion:(id)completion;
- (void)server:(id)server pushPosterGalleryUpdate:(id)update completion:(id)completion;
- (void)server:(id)server pushToProactiveWithCompletion:(id)completion;
- (void)server:(id)server refreshPosterConfigurationMatchingUUID:(id)d sessionInfo:(id)info completion:(id)completion;
- (void)server:(id)server refreshPosterDescriptorsForExtension:(id)extension sessionInfo:(id)info completion:(id)completion;
- (void)server:(id)server refreshSnapshotForGalleryItemsMatchingDescriptorIdentifier:(id)identifier extensionIdentifier:(id)extensionIdentifier completion:(id)completion;
- (void)server:(id)server refreshSnapshotForPosterConfigurationMatchUUID:(id)d completion:(id)completion;
- (void)server:(id)server refreshSuggestionDescriptorsForConfigurationMatchingUUID:(id)d sessionInfo:(id)info completion:(id)completion;
- (void)server:(id)server removeAllFocusConfigurationsMatchingFocusUUID:(id)d completion:(id)completion;
- (void)server:(id)server restoreArchivedDataStoreNamed:(id)named backupExistingDataStore:(BOOL)store completion:(id)completion;
- (void)server:(id)server retrieveGallery:(id)gallery;
- (void)server:(id)server runMigration:(BOOL)migration migrationDescriptor:(id)descriptor completion:(id)completion;
- (void)server:(id)server setHostConfiguration:(id)configuration forRole:(id)role completion:(id)completion;
- (void)server:(id)server stashCurrentDataStoreWithName:(id)name options:(id)options completion:(id)completion;
- (void)server:(id)server triggerMessedUpDataProtectionWithCompletion:(id)completion;
- (void)server:(id)server unignoreExtension:(id)extension completion:(id)completion;
- (void)server:(id)server updatePosterConfiguration:(id)configuration updates:(id)updates completion:(id)completion;
- (void)server:(id)server updatePosterConfigurationMatchingUUID:(id)d updates:(id)updates completion:(id)completion;
- (void)server:(id)server updatePosterConfigurationsFromHostForRole:(id)role completion:(id)completion;
- (void)server:(id)server updateToSelectedConfigurationMatchingUUID:(id)d role:(id)role from:(id)from completion:(id)completion;
- (void)wallpaperPublisherDidReceiveObserverConnection;
@end

@implementation PBFPosterExtensionDataStoreXPCServiceGlue

+ (PBFPosterExtensionDataStoreXPCServiceGlue)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[PBFPosterExtensionDataStoreXPCServiceGlue sharedInstance];
  }

  v3 = sharedInstance_glue;

  return v3;
}

void __59__PBFPosterExtensionDataStoreXPCServiceGlue_sharedInstance__block_invoke()
{
  v0 = [MEMORY[0x277CCA8D8] mainBundle];
  v1 = [v0 bundleURL];
  v2 = [v1 lastPathComponent];
  v3 = [v2 stringByDeletingPathExtension];
  v4 = [v3 isEqualToString:@"PosterBoard"];

  v5 = [[PBFPosterExtensionDataStoreXPCServiceGlue alloc] initWithOptions:v4 ^ 1u];
  v6 = sharedInstance_glue;
  sharedInstance_glue = v5;
}

- (PBFPosterExtensionDataStoreXPCServiceGlue)initWithOptions:(unint64_t)options
{
  v30.receiver = self;
  v30.super_class = PBFPosterExtensionDataStoreXPCServiceGlue;
  v5 = [(PBFPosterExtensionDataStoreXPCServiceGlue *)&v30 init];
  v6 = v5;
  if (v5)
  {
    *&v5->_lock._os_unfair_lock_opaque = 0;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __61__PBFPosterExtensionDataStoreXPCServiceGlue_initWithOptions___block_invoke;
    block[3] = &unk_2782C9B70;
    v29 = a2;
    v7 = v5;
    v28 = v7;
    if (initWithOptions__onceToken != -1)
    {
      dispatch_once(&initWithOptions__onceToken, block);
    }

    if (options != 1)
    {
      v8 = objc_alloc_init(MEMORY[0x277D3E9F8]);
      v9 = v7[7];
      v7[7] = v8;

      [v7[7] setDelegate:v7];
      [v7[7] activate];
      v10 = objc_opt_new();
      v11 = v7[5];
      v7[5] = v10;

      [v7[5] setDelegate:v7];
      v12 = [MEMORY[0x277CF32D0] activateManualDomain:@"com.apple.posterboardservices"];
    }

    v13 = objc_alloc(MEMORY[0x277D02CF0]);
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    v15 = [v13 initWithTraitEnvironment:mainScreen];
    v16 = v7[4];
    v7[4] = v15;

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v7 selector:sel__localeDidChange_ name:*MEMORY[0x277CBE620] object:0];

    objc_initWeak(&location, v7);
    v18 = MEMORY[0x277D85CD0];
    v19 = MEMORY[0x277CCACA8];
    v20 = objc_opt_class();
    v21 = NSStringFromClass(v20);
    v22 = [v19 stringWithFormat:@"%@ - BaseDataStoreURL", v21];
    objc_copyWeak(&v25, &location);
    v23 = BSLogAddStateCaptureBlockWithTitle();

    objc_destroyWeak(&v25);
    objc_destroyWeak(&location);
  }

  return v6;
}

void __61__PBFPosterExtensionDataStoreXPCServiceGlue_initWithOptions___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277D3EBA8] sharedWorkloop];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__PBFPosterExtensionDataStoreXPCServiceGlue_initWithOptions___block_invoke_2;
  block[3] = &unk_2782C9B70;
  v4 = *(a1 + 32);
  v3 = v4;
  v6 = v4;
  dispatch_async(v2, block);
}

void __61__PBFPosterExtensionDataStoreXPCServiceGlue_initWithOptions___block_invoke_2(uint64_t a1)
{
  if (MEMORY[0x21CEF7340]("[PBFPosterExtensionDataStoreXPCServiceGlue initWithOptions:]_block_invoke_2"))
  {
    v2 = [MEMORY[0x277CF0CA8] sharedInstance];
    v3 = [v2 deviceClass];

    if (v3 <= 2)
    {
      v4 = MEMORY[0x277CCA8D8];
      v5 = [MEMORY[0x277CBEBC0] fileURLWithPath:@"/System/Library/ExtensionKit/Extensions/LegacyPoster.appex"];
      v6 = [v4 bundleWithURL:v5];

      if (!v6)
      {
        __61__PBFPosterExtensionDataStoreXPCServiceGlue_initWithOptions___block_invoke_2_cold_1(a1);
      }
    }
  }
}

id __61__PBFPosterExtensionDataStoreXPCServiceGlue_initWithOptions___block_invoke_45(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained _baseDataStoreURL];
  v3 = [v2 absoluteString];

  return v3;
}

- (PBFRuntimeAssertionManager)runtimeAssertionManager
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_lock_runtimeAssertionManager;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (PBFApplicationStateMonitor)applicationStateMonitor
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_lock_applicationStateMonitor;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (id)_dataStoreWithError:(id *)error
{
  os_unfair_lock_lock(&self->_lock);
  v5 = [(PBFPosterExtensionDataStoreXPCServiceGlue *)self _lock_dataStoreWithError:error];
  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

- (id)_lock_dataStoreWithError:(id *)error
{
  v36[1] = *MEMORY[0x277D85DE8];
  if (!self->_lock_runtimeAssertionManager)
  {
    v5 = objc_alloc_init(PBFRuntimeAssertionManager);
    lock_runtimeAssertionManager = self->_lock_runtimeAssertionManager;
    self->_lock_runtimeAssertionManager = v5;
  }

  if (!self->_lock_applicationStateMonitor)
  {
    v7 = objc_opt_new();
    lock_applicationStateMonitor = self->_lock_applicationStateMonitor;
    self->_lock_applicationStateMonitor = v7;
  }

  lock_dataStore = self->_lock_dataStore;
  if (lock_dataStore)
  {
    goto LABEL_6;
  }

  _baseDataStoreURL = [(PBFPosterExtensionDataStoreXPCServiceGlue *)self _baseDataStoreURL];
  v12 = MEMORY[0x277D46DB8];
  currentProcess = [MEMORY[0x277D47008] currentProcess];
  v14 = [v12 pf_prewarmRuntimeAssertionForReason:@"bootstrapDataStoreAssertion" target:currentProcess invalidationHandler:&__block_literal_global_56];

  v34 = 0;
  [v14 acquireWithError:&v34];
  v15 = v34;
  v16 = PBFLogCommon();
  v17 = v16;
  if (v15)
  {
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [PBFPosterExtensionDataStoreXPCServiceGlue _lock_dataStoreWithError:];
    }
  }

  else if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_21B526000, v17, OS_LOG_TYPE_DEFAULT, "Bootstrap RBSAssertion acquired", buf, 2u);
  }

  [(PBFPosterExtensionDataStoreXPCServiceGlue *)self _lock_reapTransientData:0];
  v32 = 0;
  v18 = [(PBFPosterExtensionDataStoreXPCServiceGlue *)self _lock_performNecessaryMigrationsForDataStoreAtURL:_baseDataStoreURL shouldForce:0 error:&v32];
  v19 = v32;
  v20 = v19;
  if (v19)
  {
    if (error)
    {
      v21 = v19;
      *error = v20;
    }

    [v14 invalidate];
  }

  else
  {
    v22 = self->_lock_runtimeAssertionManager;
    v23 = self->_lock_applicationStateMonitor;
    v31 = 0;
    v24 = [(PBFPosterExtensionDataStoreXPCServiceGlue *)self buildDataStoreForURL:_baseDataStoreURL runtimeAssertionProvider:v22 applicationStateMonitor:v23 observer:self wasMigrationJustPerformed:v18 error:&v31];
    v25 = v31;
    v26 = self->_lock_dataStore;
    self->_lock_dataStore = v24;

    if (!(self->_lock_dataStore | v25))
    {
      v27 = MEMORY[0x277CCA9B8];
      v35 = *MEMORY[0x277CCA470];
      v36[0] = @"Data store could not be created for an unknown reason which evades explanation.";
      v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:&v35 count:1];
      v25 = [v27 pbf_generalErrorWithCode:0 userInfo:v28];
    }

    if (v25)
    {
      if (error)
      {
        v29 = v25;
        *error = v25;
      }

      [(PBFPosterExtensionDataStoreXPCServiceGlue *)self _lock_teardownDataStoreWithError:0];
    }

    [v14 invalidate];
  }

  if (!v20)
  {
    lock_dataStore = self->_lock_dataStore;
LABEL_6:
    v10 = lock_dataStore;
    goto LABEL_25;
  }

  v10 = 0;
LABEL_25:

  return v10;
}

void __70__PBFPosterExtensionDataStoreXPCServiceGlue__lock_dataStoreWithError___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = PBFLogCommon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __70__PBFPosterExtensionDataStoreXPCServiceGlue__lock_dataStoreWithError___block_invoke_cold_1();
  }
}

- (id)buildDataStoreForURL:(id)l runtimeAssertionProvider:(id)provider applicationStateMonitor:(id)monitor observer:(id)observer wasMigrationJustPerformed:(BOOL)performed error:(id *)error
{
  performedCopy = performed;
  observerCopy = observer;
  monitorCopy = monitor;
  providerCopy = provider;
  lCopy = l;
  v17 = [[PBFPosterExtensionDataStore alloc] initWithURL:lCopy runtimeAssertionProvider:providerCopy extensionProvider:0 observer:observerCopy wasMigrationJustPerformed:performedCopy applicationStateMonitor:monitorCopy error:error];

  return v17;
}

- (BOOL)_mutateDataStoreState:(unint64_t)state error:(id *)error
{
  v34 = *MEMORY[0x277D85DE8];
  if ((state & 0x3F) != 0)
  {
    stateCopy = state;
    os_unfair_lock_lock(&self->_lock);
    v7 = PBFLogReaper();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_21B526000, v7, OS_LOG_TYPE_INFO, "Tearing down data store", buf, 2u);
    }

    v30 = 0;
    [(PBFPosterExtensionDataStoreXPCServiceGlue *)self _lock_teardownDataStoreWithError:&v30];
    v8 = v30;
    v9 = v8;
    v10 = v8 == 0;
    if ((stateCopy & 2) == 0 || v8)
    {
      if (v8)
      {
        os_unfair_lock_unlock(&self->_lock);
        [(PBFPosterExtensionDataStoreXPCServiceGlue *)self _postDidTearDownNotification];
        if (error)
        {
          v12 = v9;
          *error = v9;
        }

        goto LABEL_34;
      }
    }

    else
    {
      v11 = PBFLogReaper();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_21B526000, v11, OS_LOG_TYPE_INFO, "Reaping snapshots", buf, 2u);
      }

      [(PBFPosterExtensionDataStoreXPCServiceGlue *)self _lock_reapSnapshots:1];
    }

    if ((stateCopy & 0xC) != 0)
    {
      v13 = stateCopy & 8;
      v14 = PBFLogReaper();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *buf = 67109120;
        v33 = v13 >> 3;
        _os_log_impl(&dword_21B526000, v14, OS_LOG_TYPE_INFO, "Reaping transient data (all? %{BOOL}u", buf, 8u);
      }

      [(PBFPosterExtensionDataStoreXPCServiceGlue *)self _lock_reapTransientData:v13 != 0];
    }

    if ((stateCopy & 0x10) != 0)
    {
      v15 = PBFLogReaper();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_21B526000, v15, OS_LOG_TYPE_INFO, "Reaping data store", buf, 2u);
      }

      [(PBFPosterExtensionDataStoreXPCServiceGlue *)self _lock_reapEntirePosterBoardDataStore];
    }

    if ((stateCopy & 0x20) != 0 && MEMORY[0x21CEF7340]("[PBFPosterExtensionDataStoreXPCServiceGlue _mutateDataStoreState:error:]"))
    {
      v16 = PBFLogReaper();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_21B526000, v16, OS_LOG_TYPE_INFO, "Messing up data protections", buf, 2u);
      }

      _baseDataStoreURL = [(PBFPosterExtensionDataStoreXPCServiceGlue *)self _baseDataStoreURL];
      v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      v29 = 0u;
      defaultManager = [MEMORY[0x277CCAA00] defaultManager];
      v19 = [defaultManager enumeratorAtURL:_baseDataStoreURL includingPropertiesForKeys:MEMORY[0x277CBEBF8] options:0 errorHandler:0];

      v20 = [v19 countByEnumeratingWithState:&v26 objects:v31 count:16];
      if (v20)
      {
        v21 = v20;
        v22 = *v27;
        v23 = *MEMORY[0x277CBE7E0];
        do
        {
          for (i = 0; i != v21; ++i)
          {
            if (*v27 != v22)
            {
              objc_enumerationMutation(v19);
            }

            [*(*(&v26 + 1) + 8 * i) pbf_setFileProtection:v23 error:0];
          }

          v21 = [v19 countByEnumeratingWithState:&v26 objects:v31 count:16];
        }

        while (v21);
      }

      [MEMORY[0x277CBEBD0] pbf_setNeedsFileProtectionsReset:1];
    }

    os_unfair_lock_unlock(&self->_lock);
    [(PBFPosterExtensionDataStoreXPCServiceGlue *)self _postDidTearDownNotification];
LABEL_34:

    return v10;
  }

  return 0;
}

- (void)_postDidTearDownNotification
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:PBFPosterExtensionDataStoreDidTearDownNotification object:0 userInfo:0];
}

- (void)_teardownDataStoreWithError:(id *)error
{
  os_unfair_lock_lock(&self->_lock);
  [(PBFPosterExtensionDataStoreXPCServiceGlue *)self _lock_teardownDataStoreWithError:error];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_lock_teardownDataStoreWithError:(id *)error
{
  v16[14] = *MEMORY[0x277D85DE8];
  if (error)
  {
    v5 = objc_opt_new();
  }

  else
  {
    v5 = 0;
  }

  lock_dataStore = self->_lock_dataStore;
  if (lock_dataStore)
  {
    [(PBFPosterExtensionDataStore *)lock_dataStore removeObserver:self];
    [(PBFPosterExtensionDataStore *)self->_lock_dataStore invalidate];
  }

  v7 = self->_lock_dataStore;
  self->_lock_dataStore = 0;

  lock_runtimeAssertionManager = self->_lock_runtimeAssertionManager;
  if (lock_runtimeAssertionManager)
  {
    [(PBFRuntimeAssertionManager *)lock_runtimeAssertionManager invalidate];
  }

  v9 = self->_lock_runtimeAssertionManager;
  self->_lock_runtimeAssertionManager = 0;

  lock_applicationStateMonitor = self->_lock_applicationStateMonitor;
  if (lock_applicationStateMonitor)
  {
    [(PBFApplicationStateMonitor *)lock_applicationStateMonitor invalidate];
  }

  v11 = self->_lock_applicationStateMonitor;
  self->_lock_applicationStateMonitor = 0;

  if (error && [v5 count])
  {
    v12 = MEMORY[0x277CCA9B8];
    v13 = *MEMORY[0x277CCA578];
    v15[0] = *MEMORY[0x277CCA470];
    v15[1] = v13;
    v16[0] = @"_lock_teardownDataStoreWithError failed";
    v16[1] = v5;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:2];
    *error = [v12 pbf_generalErrorWithCode:8 userInfo:v14];
  }
}

- (id)_baseDataStoreURL
{
  shouldUseSharedDataStore = [MEMORY[0x277D3E928] shouldUseSharedDataStore];

  return [(PBFPosterExtensionDataStoreXPCServiceGlue *)self _baseDataStoreURL:shouldUseSharedDataStore];
}

- (id)_baseDataStoreURL:(BOOL)l
{
  v31 = *MEMORY[0x277D85DE8];
  if (l)
  {
    mEMORY[0x277D3E928] = [MEMORY[0x277D3E928] sharedInstance];
    sharedResourcesDirectoryURL = [mEMORY[0x277D3E928] sharedResourcesDirectoryURL];

    if (sharedResourcesDirectoryURL)
    {
      v5 = PBFLogDataStore();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        absoluteString = [sharedResourcesDirectoryURL absoluteString];
        *buf = 138412290;
        v30 = absoluteString;
        _os_log_impl(&dword_21B526000, v5, OS_LOG_TYPE_DEFAULT, "Opting to place data store at shared resources directory (system container): %@", buf, 0xCu);
      }

      sharedResourcesDirectoryURL = sharedResourcesDirectoryURL;
      v7 = 0;
      v8 = sharedResourcesDirectoryURL;
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }
  }

  else
  {
    sharedResourcesDirectoryURL = [MEMORY[0x277CCAA00] defaultManager];
    v24 = 0;
    v8 = [sharedResourcesDirectoryURL URLForDirectory:14 inDomain:1 appropriateForURL:0 create:1 error:&v24];
    v7 = v24;
  }

  if (!v8)
  {
    v12 = MEMORY[0x277CBEAD8];
    v13 = *MEMORY[0x277CBE658];
    v27[0] = @"dataStoreURL";
    v14 = objc_alloc_init(MEMORY[0x277CBEBC0]);
    v27[1] = *MEMORY[0x277CCA7E8];
    v28[0] = v14;
    v28[1] = v7;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v27 count:2];
    v16 = [v12 exceptionWithName:v13 reason:@"Unable to setup dataStore URL" userInfo:v15];
    v17 = v16;

    goto LABEL_15;
  }

  v23 = 0;
  v9 = [v8 checkResourceIsReachableAndReturnError:&v23];
  v10 = v23;
  if ((v9 & 1) == 0)
  {
    v18 = MEMORY[0x277CBEAD8];
    v19 = *MEMORY[0x277CBE658];
    v20 = *MEMORY[0x277CCA7E8];
    v25[0] = @"dataStoreURL";
    v25[1] = v20;
    v26[0] = v8;
    v26[1] = v10;
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:2];
    v16 = [v18 exceptionWithName:v19 reason:@"Unable to reach dataStore URL" userInfo:v21];
    v22 = v16;

LABEL_15:
    objc_exception_throw(v16);
  }

  return v8;
}

- (void)server:(id)server deleteTransientDataWithCompletion:(id)completion
{
  v6 = 0;
  completionCopy = completion;
  [(PBFPosterExtensionDataStoreXPCServiceGlue *)self _mutateDataStoreState:9 error:&v6];
  completionCopy[2](completionCopy, v6);
}

- (void)server:(id)server deleteDataStoreWithCompletion:(id)completion
{
  v6 = 0;
  completionCopy = completion;
  [(PBFPosterExtensionDataStoreXPCServiceGlue *)self _mutateDataStoreState:25 error:&v6];
  completionCopy[2](completionCopy, v6);
}

- (void)server:(id)server triggerMessedUpDataProtectionWithCompletion:(id)completion
{
  v6 = 0;
  completionCopy = completion;
  [(PBFPosterExtensionDataStoreXPCServiceGlue *)self _mutateDataStoreState:33 error:&v6];
  completionCopy[2](completionCopy, v6);
}

- (void)server:(id)server fetchChargerIdentifierRelationshipsWithCompletion:(id)completion
{
  completionCopy = completion;
  v13 = 0;
  v6 = [(PBFPosterExtensionDataStoreXPCServiceGlue *)self _dataStoreWithError:&v13];
  v7 = v13;
  if (v7)
  {
    v8 = v7;
    completionCopy[2](completionCopy, 0, v7);
  }

  else
  {
    v9 = *MEMORY[0x277D3EE98];
    v12 = 0;
    v10 = [v6 posterCollectionForRole:v9 error:&v12];
    v8 = v12;
    if (v8)
    {
      completionCopy[2](completionCopy, 0, v8);
    }

    else
    {
      chargerIdentifierRelationships = [v10 chargerIdentifierRelationships];
      (completionCopy)[2](completionCopy, chargerIdentifierRelationships, 0);
    }
  }
}

- (void)server:(id)server invalidateDataStoreWithCompletion:(id)completion
{
  completionCopy = completion;
  v6 = 0;
  [(PBFPosterExtensionDataStoreXPCServiceGlue *)self _mutateDataStoreState:1 error:&v6];
  if (completionCopy)
  {
    completionCopy[2](completionCopy, v6);
  }
}

- (void)server:(id)server deleteSnapshotsWithCompletion:(id)completion
{
  completionCopy = completion;
  v6 = 0;
  [(PBFPosterExtensionDataStoreXPCServiceGlue *)self _mutateDataStoreState:3 error:&v6];
  if (completionCopy)
  {
    completionCopy[2](completionCopy, v6);
  }
}

- (void)_handleLaunchServicesUpdates:(id)updates completion:(id)completion
{
  v23[1] = *MEMORY[0x277D85DE8];
  updatesCopy = updates;
  completionCopy = completion;
  if ([(PBFPosterExtensionDataStoreXPCServiceGlue *)self _migrationIsPending])
  {
    v8 = MEMORY[0x277CCA9B8];
    v22 = *MEMORY[0x277CCA470];
    v23[0] = @"Migration is pending; will not go through posterboard app update cycle";
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:&v22 count:1];
    v10 = [v8 pbf_generalErrorWithCode:7 userInfo:v9];
    completionCopy[2](completionCopy, v10);
  }

  else
  {
    lock_runtimeAssertionManager = self->_lock_runtimeAssertionManager;
    currentProcess = [MEMORY[0x277D47008] currentProcess];
    v9 = [(PBFRuntimeAssertionManager *)lock_runtimeAssertionManager acquirePosterUpdateRuntimeAssertionForReason:@"notifyPosterBoardOfApplicationUpdatesWithCompletion" target:currentProcess];

    os_unfair_lock_lock(&self->_lock);
    v19 = 0;
    v13 = [(PBFPosterExtensionDataStoreXPCServiceGlue *)self _lock_dataStoreWithError:&v19];
    v10 = v19;
    if (v13)
    {
      if (updatesCopy)
      {
        updatesCopy[2](updatesCopy, v13);
      }

      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __85__PBFPosterExtensionDataStoreXPCServiceGlue__handleLaunchServicesUpdates_completion___block_invoke;
      v16[3] = &unk_2782C74D0;
      v17 = v9;
      v18 = completionCopy;
      [v13 updateExtensionsAndNotifyWhenComplete:v16];
      os_unfair_lock_unlock(&self->_lock);
    }

    else
    {
      os_unfair_lock_unlock(&self->_lock);
      if (!v10)
      {
        v14 = MEMORY[0x277CCA9B8];
        v20 = *MEMORY[0x277CCA470];
        v21 = @"Datastore could not be loaded and no error was returned";
        v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
        v10 = [v14 pbf_generalErrorWithCode:7 userInfo:v15];
      }

      completionCopy[2](completionCopy, v10);
      [v9 invalidate];
    }
  }
}

uint64_t __85__PBFPosterExtensionDataStoreXPCServiceGlue__handleLaunchServicesUpdates_completion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) invalidate];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (void)_resetRole:(id)role completion:(id)completion
{
  v15 = *MEMORY[0x277D85DE8];
  roleCopy = role;
  completionCopy = completion;
  os_unfair_lock_lock(&self->_lock);
  v8 = PBFLogReaper();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v14 = roleCopy;
    _os_log_impl(&dword_21B526000, v8, OS_LOG_TYPE_INFO, "Resetting role %{public}@", buf, 0xCu);
  }

  v12 = 0;
  v9 = [(PBFPosterExtensionDataStoreXPCServiceGlue *)self _lock_dataStoreWithError:&v12];
  v10 = v12;
  if (!v10)
  {
    v11 = 0;
    [v9 resetRole:roleCopy error:&v11];
    v10 = v11;
  }

  os_unfair_lock_unlock(&self->_lock);
  if (completionCopy)
  {
    completionCopy[2](completionCopy, v10);
  }
}

- (void)_lock_runLegacyMigration
{
  v3 = +[PBFWallpaperKitBridge defaultBridge];
  dataMigratorDeterminedLegacyWallpaperMigrationRequired = [v3 dataMigratorDeterminedLegacyWallpaperMigrationRequired];

  if (dataMigratorDeterminedLegacyWallpaperMigrationRequired)
  {
    v5 = PBFLogMigration();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_21B526000, v5, OS_LOG_TYPE_DEFAULT, "Data migrator requested posterboard data store be reset so that a legacy wallpaper migration can occur.", v9, 2u);
    }

    [(PBFPosterExtensionDataStoreXPCServiceGlue *)self _lock_reapEntirePosterBoardDataStore];
    [(PBFPosterExtensionDataStoreXPCServiceGlue *)self _lock_reapTransientData:1];
    v6 = +[PBFWallpaperKitBridge defaultBridge];
    [v6 clearLegacyWallpaperMigrationKeys];
  }

  v7 = objc_alloc_init(MEMORY[0x277D37C70]);
  [v7 performMigrationWithFailureHandler:&__block_literal_global_101];
  [v7 setWallpaperMode:2];
  [v7 performMigrationWithFailureHandler:&__block_literal_global_104_0];
  dataStores = [v7 dataStores];
  [dataStores enumerateObjectsUsingBlock:&__block_literal_global_108];
}

void __69__PBFPosterExtensionDataStoreXPCServiceGlue__lock_runLegacyMigration__block_invoke()
{
  v0 = PBFLogMigration();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    __69__PBFPosterExtensionDataStoreXPCServiceGlue__lock_runLegacyMigration__block_invoke_cold_1();
  }
}

void __69__PBFPosterExtensionDataStoreXPCServiceGlue__lock_runLegacyMigration__block_invoke_102()
{
  v0 = PBFLogMigration();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    __69__PBFPosterExtensionDataStoreXPCServiceGlue__lock_runLegacyMigration__block_invoke_102_cold_1();
  }
}

- (void)_lock_reapTransientData:(BOOL)data
{
  v34 = *MEMORY[0x277D85DE8];
  if (self->_lock_dataStore)
  {
    [(PBFPosterExtensionDataStoreXPCServiceGlue *)MEMORY[0x277CCACA8] _lock_reapTransientData:a2];
  }

  pbf_bootInstanceIdentifier = [MEMORY[0x277CCACA8] pbf_bootInstanceIdentifier];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v5 = MEMORY[0x277CBEBC0];
  v6 = PFTemporaryDirectory();
  v7 = [v5 fileURLWithPath:v6 isDirectory:1];
  v23 = defaultManager;
  v8 = [defaultManager contentsOfDirectoryAtURL:v7 includingPropertiesForKeys:MEMORY[0x277CBEBF8] options:5 error:0];

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v9 = v8;
  v10 = [v9 countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v10)
  {
    v12 = v10;
    v13 = *v26;
    *&v11 = 138543618;
    v21 = v11;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v26 != v13)
        {
          objc_enumerationMutation(v9);
        }

        v15 = *(*(&v25 + 1) + 8 * i);
        lastPathComponent = [v15 lastPathComponent];
        if ([lastPathComponent hasPrefix:@"TransientInfo"])
        {
          if (data || ![lastPathComponent containsString:pbf_bootInstanceIdentifier])
          {
            v18 = PBFLogReaper();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
            {
              *buf = 138543362;
              v30 = v15;
              _os_log_impl(&dword_21B526000, v18, OS_LOG_TYPE_INFO, "Deleting transient info: %{public}@", buf, 0xCu);
            }

            v24 = 0;
            v19 = [v23 removeItemAtURL:v15 error:&v24];
            v17 = v24;
            if ((v19 & 1) == 0)
            {
              v20 = PBFLogReaper();
              if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
              {
                *buf = v21;
                v30 = v15;
                v31 = 2114;
                v32 = v17;
                _os_log_error_impl(&dword_21B526000, v20, OS_LOG_TYPE_ERROR, "Unable to delete transient info %{public}@: %{public}@", buf, 0x16u);
              }
            }
          }

          else
          {
            v17 = PBFLogReaper();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138543362;
              v30 = v15;
              _os_log_debug_impl(&dword_21B526000, v17, OS_LOG_TYPE_DEBUG, "Skipping deletion of transient info for '%{public}@'; is valid for current boot identifier.", buf, 0xCu);
            }
          }
        }
      }

      v12 = [v9 countByEnumeratingWithState:&v25 objects:v33 count:16];
    }

    while (v12);
  }
}

- (void)_lock_fixFileProtections
{
  v32 = *MEMORY[0x277D85DE8];
  _baseDataStoreURL = [(PBFPosterExtensionDataStoreXPCServiceGlue *)self _baseDataStoreURL];
  v3 = [MEMORY[0x277CBEBC0] pbf_dataStoreExtensionContainerURLForBaseURL:_baseDataStoreURL version:{+[PBFPosterExtensionDataStore dataStoreVersion](PBFPosterExtensionDataStore, "dataStoreVersion")}];
  v4 = _PBFExtensionStoreCoordinatorsForDataStoreExtensionContainerURL(v3, 0);
  [v4 enumerateObjectsUsingBlock:&__block_literal_global_117];

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v20 = _baseDataStoreURL;
  v6 = [defaultManager enumeratorAtURL:_baseDataStoreURL includingPropertiesForKeys:MEMORY[0x277CBEBF8] options:0 errorHandler:0];

  v7 = [v6 countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v24;
    v10 = *MEMORY[0x277CBE800];
    do
    {
      v11 = 0;
      do
      {
        if (*v24 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v23 + 1) + 8 * v11);
        defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
        v14 = PFFileProtectionNoneAttributes();
        path = [v12 path];
        v22 = 0;
        [defaultManager2 setAttributes:v14 ofItemAtPath:path error:&v22];
        v16 = v22;

        if (v16)
        {
          v17 = PBFLogReaper();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543618;
            v28 = v12;
            v29 = 2114;
            v30 = v16;
            _os_log_error_impl(&dword_21B526000, v17, OS_LOG_TYPE_ERROR, "Unable to fix file attributes for %{public}@: %{public}@", buf, 0x16u);
          }
        }

        v21 = 0;
        [v12 pbf_setFileProtection:v10 error:&v21];
        v18 = v21;

        if (v18)
        {
          v19 = PBFLogReaper();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543618;
            v28 = v12;
            v29 = 2114;
            v30 = v18;
            _os_log_error_impl(&dword_21B526000, v19, OS_LOG_TYPE_ERROR, "Unable to fix file protections for %{public}@: %{public}@", buf, 0x16u);
          }
        }

        ++v11;
      }

      while (v8 != v11);
      v8 = [v6 countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v8);
  }
}

void __69__PBFPosterExtensionDataStoreXPCServiceGlue__lock_fixFileProtections__block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v2 = [v4 setupEnvironmentIfNecessary];
  v3 = [v4 ensureFileSystemIntegrity];
  [v4 invalidate];
}

- (void)_lock_fixAdaptiveTimeConfiguration
{
  v6[2] = *MEMORY[0x277D85DE8];
  v5[0] = @"com.apple.WallpaperKit.CollectionsPoster";
  v5[1] = @"com.apple.NanoUniverse.AegirProxyApp.AegirPoster";
  v6[0] = &unk_282D0A2D0;
  v6[1] = MEMORY[0x277CBEBF8];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:v5 count:2];
  _baseDataStoreURL = [(PBFPosterExtensionDataStoreXPCServiceGlue *)self _baseDataStoreURL];
  [PBFMigrationHelpers updateConfiguredPropertiesForDataStoreURL:_baseDataStoreURL extensionToDescriptorMap:v3 migrationKey:@"LuckAdaptiveTimeMigrationCompleted" reason:@"AdaptiveTime" match:&__block_literal_global_169 update:&__block_literal_global_172];
}

BOOL __79__PBFPosterExtensionDataStoreXPCServiceGlue__lock_fixAdaptiveTimeConfiguration__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 titleStyleConfiguration];
  [v2 preferredTimeMaxYPortrait];
  if (v3 <= 0.0)
  {
    [v2 preferredTimeMaxYLandscape];
    v4 = v5 > 0.0;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

id __79__PBFPosterExtensionDataStoreXPCServiceGlue__lock_fixAdaptiveTimeConfiguration__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 titleStyleConfiguration];
  v4 = [v3 mutableCopy];

  [v4 setPreferredTimeMaxYPortrait:0.0];
  [v4 setPreferredTimeMaxYLandscape:0.0];
  v5 = [v2 mutableCopy];

  [v5 setTitleStyleConfiguration:v4];

  return v5;
}

- (void)_lock_fixComplicationLayout
{
  _baseDataStoreURL = [(PBFPosterExtensionDataStoreXPCServiceGlue *)self _baseDataStoreURL];
  [PBFMigrationHelpers updateConfiguredPropertiesForDataStoreURL:_baseDataStoreURL extensionToDescriptorMap:&unk_282D0A470 migrationKey:@"LuckComplicationMigrationCompleted" reason:@"ComplicationLayout" match:&__block_literal_global_182 update:&__block_literal_global_184];
}

uint64_t __72__PBFPosterExtensionDataStoreXPCServiceGlue__lock_fixComplicationLayout__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 complicationLayout];
  v3 = [v2 complicationsUseBottomLayout];

  return v3;
}

id __72__PBFPosterExtensionDataStoreXPCServiceGlue__lock_fixComplicationLayout__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 complicationLayout];
  v4 = [v3 mutableCopy];

  [v4 setComplicationsUseBottomLayout:0];
  v5 = [v2 mutableCopy];

  [v5 setComplicationLayout:v4];

  return v5;
}

- (void)_lock_migrateGlassToVibrantGlassMaterialStyle
{
  _baseDataStoreURL = [(PBFPosterExtensionDataStoreXPCServiceGlue *)self _baseDataStoreURL];
  [PBFMigrationHelpers updateConfiguredPropertiesForDataStoreURL:_baseDataStoreURL extensionToDescriptorMap:0 migrationKey:@"LuckGlassToVibrantGlassMigrationCompleted" reason:@"GlassToVibrantGlass" match:&__block_literal_global_192 update:&__block_literal_global_195];
}

uint64_t __90__PBFPosterExtensionDataStoreXPCServiceGlue__lock_migrateGlassToVibrantGlassMaterialStyle__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 titleStyleConfiguration];
  v3 = [v2 titleContentStyle];

  objc_opt_class();
  LOBYTE(v2) = objc_opt_isKindOfClass();

  return v2 & 1;
}

id __90__PBFPosterExtensionDataStoreXPCServiceGlue__lock_migrateGlassToVibrantGlassMaterialStyle__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 titleStyleConfiguration];
  v4 = [v3 mutableCopy];

  v5 = [objc_alloc(MEMORY[0x277D3ED78]) initWithPreferredMaterialType:1];
  [v4 setTitleContentStyle:v5];

  v6 = [v2 mutableCopy];
  [v6 setTitleStyleConfiguration:v4];

  return v6;
}

- (BOOL)_lock_reapSnapshots:(BOOL)snapshots
{
  v48 = *MEMORY[0x277D85DE8];
  if (self->_lock_dataStore)
  {
    [PBFPosterExtensionDataStoreXPCServiceGlue _lock_reapSnapshots:a2];
  }

  snapshotsCopy = snapshots;
  _baseDataStoreURL = [(PBFPosterExtensionDataStoreXPCServiceGlue *)self _baseDataStoreURL];
  v4 = [PBFPosterExtensionDataStore dataStoreExtensionContainerURLForBaseURL:?];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v32 = v4;
  v6 = [defaultManager enumeratorAtURL:v4 includingPropertiesForKeys:0 options:4 errorHandler:&__block_literal_global_202];
  v7 = PBFLogReaper();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    LODWORD(v44) = snapshotsCopy;
    _os_log_impl(&dword_21B526000, v7, OS_LOG_TYPE_DEFAULT, "Attempting to reap snapshots; will reap runtime snapshot? %{BOOL}u", buf, 8u);
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v39 objects:v47 count:16];
  if (!v9)
  {
    LOBYTE(v11) = 0;
    goto LABEL_45;
  }

  v10 = v9;
  v11 = 0;
  v35 = *v40;
  v34 = v8;
  do
  {
    for (i = 0; i != v10; ++i)
    {
      if (*v40 != v35)
      {
        objc_enumerationMutation(v8);
      }

      v13 = *(*(&v39 + 1) + 8 * i);
      if ([v13 pbf_isSnapshotBundle])
      {
        v14 = PBFLogReaper();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          *buf = 138543362;
          v44 = v13;
          _os_log_impl(&dword_21B526000, v14, OS_LOG_TYPE_INFO, "Reaping snapshot cache @ URL: %{public}@", buf, 0xCu);
        }

        v38 = 0;
        v15 = [defaultManager removeItemAtURL:v13 error:&v38];
        pathExtension = v38;
        if ((v15 & 1) == 0)
        {
          v17 = PBFLogReaper();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_38;
          }

          goto LABEL_39;
        }

LABEL_30:
        v11 = 1;
        goto LABEL_40;
      }

      if ([v13 pbf_isLegacyPosterSnapshot])
      {
        if (!snapshotsCopy)
        {
          lastPathComponent = [v13 lastPathComponent];
          v19 = [lastPathComponent containsString:@"RuntimeSnapshot-"];

          if (v19)
          {
            pathExtension = PBFLogReaper();
            if (os_log_type_enabled(pathExtension, OS_LOG_TYPE_INFO))
            {
              *buf = 138543362;
              v44 = v13;
              _os_log_impl(&dword_21B526000, pathExtension, OS_LOG_TYPE_INFO, "Skipping Reap of snapshot URL; runtime snapshots excluded %{public}@", buf, 0xCu);
            }

            goto LABEL_40;
          }
        }

        v25 = PBFLogReaper();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
        {
          *buf = 138543362;
          v44 = v13;
          _os_log_impl(&dword_21B526000, v25, OS_LOG_TYPE_INFO, "Reaping snapshot URL: %{public}@", buf, 0xCu);
        }

        v37 = 0;
        v26 = [defaultManager removeItemAtURL:v13 error:&v37];
        pathExtension = v37;
        if ((v26 & 1) == 0)
        {
          v17 = PBFLogReaper();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
LABEL_38:
            *buf = 138543618;
            v44 = v13;
            v45 = 2114;
            v46 = pathExtension;
            _os_log_error_impl(&dword_21B526000, v17, OS_LOG_TYPE_ERROR, "FAILED Reaping snapshot URL @ %{public}@: %{public}@", buf, 0x16u);
          }

LABEL_39:

          goto LABEL_40;
        }

        goto LABEL_30;
      }

      pathExtension = [v13 pathExtension];
      if ([pathExtension isEqualToString:@"plist"])
      {
        v20 = v11;
        lastPathComponent2 = [v13 lastPathComponent];
        v22 = snapshotsCopy;
        v23 = [lastPathComponent2 hasPrefix:@"RuntimeSnapshot"];

        v24 = v23 == 0;
        snapshotsCopy = v22;
        v24 = v24 || !v22;
        if (v24)
        {
          v11 = v20;
          v8 = v34;
          continue;
        }

        v27 = PBFLogReaper();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
        {
          *buf = 138543362;
          v44 = v13;
          _os_log_impl(&dword_21B526000, v27, OS_LOG_TYPE_INFO, "Reaping snapshot metadata URL: %{public}@", buf, 0xCu);
        }

        v36 = 0;
        v29 = [defaultManager removeItemAtURL:v13 error:&v36];
        pathExtension = v36;
        if ((v29 & 1) == 0)
        {
          v11 = v20;
          v17 = PBFLogReaper();
          v8 = v34;
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_38;
          }

          goto LABEL_39;
        }

        v11 = 1;
        v8 = v34;
      }

LABEL_40:
    }

    v10 = [v8 countByEnumeratingWithState:&v39 objects:v47 count:16];
  }

  while (v10);
LABEL_45:

  v30 = PBFLogReaper();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    LODWORD(v44) = v11 & 1;
    _os_log_impl(&dword_21B526000, v30, OS_LOG_TYPE_DEFAULT, "Did reap snapshots? %{BOOL}u", buf, 8u);
  }

  return v11 & 1;
}

uint64_t __65__PBFPosterExtensionDataStoreXPCServiceGlue__lock_reapSnapshots___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v4 = PBFLogCommon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __65__PBFPosterExtensionDataStoreXPCServiceGlue__lock_reapSnapshots___block_invoke_cold_1();
  }

  return 1;
}

- (BOOL)_lock_reapClassicSnapshots
{
  v41 = *MEMORY[0x277D85DE8];
  if (self->_lock_dataStore)
  {
    [(PBFPosterExtensionDataStoreXPCServiceGlue *)a2 _lock_reapClassicSnapshots];
  }

  _baseDataStoreURL = [(PBFPosterExtensionDataStoreXPCServiceGlue *)self _baseDataStoreURL];
  v2 = [PBFPosterExtensionDataStore dataStoreExtensionContainerURLForBaseURL:?];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v26 = v2;
  v3 = [defaultManager enumeratorAtURL:v2 includingPropertiesForKeys:0 options:4 errorHandler:&__block_literal_global_213_0];
  v4 = PBFLogReaper();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_21B526000, v4, OS_LOG_TYPE_DEFAULT, "Attempting to reap classic snapshots", buf, 2u);
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v32 objects:v40 count:16];
  if (!v6)
  {
    v28 = 0;
    goto LABEL_35;
  }

  v7 = v6;
  v28 = 0;
  v8 = *v33;
  do
  {
    v9 = 0;
    do
    {
      if (*v33 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = *(*(&v32 + 1) + 8 * v9);
      if (([v10 pbf_isSnapshotBundle] & 1) == 0)
      {
        if ([v10 pbf_isLegacyPosterSnapshot])
        {
          lastPathComponent = [v10 lastPathComponent];
          v12 = [lastPathComponent containsString:@"RuntimeSnapshot"];

          pathExtension = PBFLogReaper();
          v14 = os_log_type_enabled(pathExtension, OS_LOG_TYPE_INFO);
          if (v12)
          {
            if (v14)
            {
              *buf = 138543362;
              v37 = v10;
              _os_log_impl(&dword_21B526000, pathExtension, OS_LOG_TYPE_INFO, "Skipping Reap of snapshot URL; runtime snapshots excluded %{public}@", buf, 0xCu);
            }

            goto LABEL_27;
          }

          if (v14)
          {
            *buf = 138543362;
            v37 = v10;
            _os_log_impl(&dword_21B526000, pathExtension, OS_LOG_TYPE_INFO, "Reaping classic snapshot URL: %{public}@", buf, 0xCu);
          }

          v31 = 0;
          v22 = [defaultManager removeItemAtURL:v10 error:&v31];
          pathExtension = v31;
          if (v22)
          {
LABEL_24:
            v28 = 1;
            goto LABEL_27;
          }

          v19 = PBFLogReaper();
          if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_26;
          }

          *buf = 138543618;
          v37 = v10;
          v38 = 2114;
          v39 = pathExtension;
          v20 = v19;
          v21 = "FAILED Reaping classic snapshot URL @ %{public}@: %{public}@";
        }

        else
        {
          pathExtension = [v10 pathExtension];
          if (![pathExtension isEqualToString:@"plist"])
          {
LABEL_27:

            goto LABEL_28;
          }

          lastPathComponent2 = [v10 lastPathComponent];
          v16 = [lastPathComponent2 hasPrefix:@"RuntimeSnapshot"];

          if (!v16)
          {
            goto LABEL_28;
          }

          v17 = PBFLogReaper();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
          {
            *buf = 138543362;
            v37 = v10;
            _os_log_impl(&dword_21B526000, v17, OS_LOG_TYPE_INFO, "Reaping snapshot metadata URL: %{public}@", buf, 0xCu);
          }

          v30 = 0;
          v18 = [defaultManager removeItemAtURL:v10 error:&v30];
          pathExtension = v30;
          if (v18)
          {
            goto LABEL_24;
          }

          v19 = PBFLogReaper();
          if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
LABEL_26:

            goto LABEL_27;
          }

          *buf = 138543618;
          v37 = v10;
          v38 = 2114;
          v39 = pathExtension;
          v20 = v19;
          v21 = "FAILED Reaping classic  snapshot URL @ %{public}@: %{public}@";
        }

        _os_log_error_impl(&dword_21B526000, v20, OS_LOG_TYPE_ERROR, v21, buf, 0x16u);
        goto LABEL_26;
      }

LABEL_28:
      ++v9;
    }

    while (v7 != v9);
    v23 = [v5 countByEnumeratingWithState:&v32 objects:v40 count:16];
    v7 = v23;
  }

  while (v23);
LABEL_35:

  v24 = PBFLogReaper();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    LODWORD(v37) = v28 & 1;
    _os_log_impl(&dword_21B526000, v24, OS_LOG_TYPE_DEFAULT, "Did reap snapshots? %{BOOL}u", buf, 8u);
  }

  return v28 & 1;
}

uint64_t __71__PBFPosterExtensionDataStoreXPCServiceGlue__lock_reapClassicSnapshots__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v4 = PBFLogCommon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __65__PBFPosterExtensionDataStoreXPCServiceGlue__lock_reapSnapshots___block_invoke_cold_1();
  }

  return 1;
}

- (void)_lock_reapDescriptors
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Deleting data underlying the data store while it is still very much in use will not end well."];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(self);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_7();
    OUTLINED_FUNCTION_14(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

uint64_t __66__PBFPosterExtensionDataStoreXPCServiceGlue__lock_reapDescriptors__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v4 = PBFLogCommon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __66__PBFPosterExtensionDataStoreXPCServiceGlue__lock_reapDescriptors__block_invoke_cold_1();
  }

  return 1;
}

- (void)_lock_reapExtensionProviderInfo
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Deleting data underlying the data store while it is still very much in use will not end well."];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(self);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_7();
    OUTLINED_FUNCTION_14(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

uint64_t __76__PBFPosterExtensionDataStoreXPCServiceGlue__lock_reapExtensionProviderInfo__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v4 = PBFLogCommon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __76__PBFPosterExtensionDataStoreXPCServiceGlue__lock_reapExtensionProviderInfo__block_invoke_cold_1();
  }

  return 1;
}

- (void)_lock_reapTemporaryDirectory
{
  v24 = *MEMORY[0x277D85DE8];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  pf_temporaryDirectoryURL = [MEMORY[0x277CBEBC0] pf_temporaryDirectoryURL];
  v4 = [defaultManager enumeratorAtURL:pf_temporaryDirectoryURL includingPropertiesForKeys:0 options:1 errorHandler:0];

  v5 = [v4 countByEnumeratingWithState:&v15 objects:v23 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v16;
    *&v6 = 138543618;
    v13 = v6;
    do
    {
      v9 = 0;
      do
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v15 + 1) + 8 * v9);
        v14 = 0;
        [defaultManager removeItemAtURL:v10 error:{&v14, v13}];
        v11 = v14;
        if (v11)
        {
          v12 = PBFLogReaper();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            *buf = v13;
            v20 = v10;
            v21 = 2112;
            v22 = v11;
            _os_log_error_impl(&dword_21B526000, v12, OS_LOG_TYPE_ERROR, "Failed to reap item within temporary directory %{public}@: %@", buf, 0x16u);
          }
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v4 countByEnumeratingWithState:&v15 objects:v23 count:16];
    }

    while (v7);
  }
}

- (void)_lock_reapGallery
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Deleting data underlying the data store while it is still very much in use will not end well."];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(self);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_7();
    OUTLINED_FUNCTION_14(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_lock_reapEntirePosterBoardDataStore
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Deleting the data underlying the data store while it is still very much in use will not end well."];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(self);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_7();
    OUTLINED_FUNCTION_14(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (BOOL)_clearMigrationFlagsWithError:(id *)error
{
  [MEMORY[0x277CBEBD0] pbf_setSnapshotsLocaleIdentifier:0];
  [MEMORY[0x277CBEBD0] pbf_clearStashedDeviceType];
  pbf_snapshotsBuildVersion = [MEMORY[0x277CBEBD0] pbf_snapshotsBuildVersion];
  if (pbf_snapshotsBuildVersion)
  {
    [MEMORY[0x277CBEBD0] pbf_setSnapshotsBuildVersion:0];
  }

  return pbf_snapshotsBuildVersion != 0;
}

- (BOOL)_migrationIsPending
{
  v3 = objc_opt_new();
  pbf_snapshotsBuildVersion = [MEMORY[0x277CBEBD0] pbf_snapshotsBuildVersion];
  v5 = [MEMORY[0x277CF0BB0] fromString:pbf_snapshotsBuildVersion];
  pbf_stashedDeviceTypeOutOfSync = [MEMORY[0x277CBEBD0] pbf_stashedDeviceTypeOutOfSync];
  v7 = [v5 isSameAs:v3];
  v8 = objc_opt_class();
  _baseDataStoreURL = [(PBFPosterExtensionDataStoreXPCServiceGlue *)self _baseDataStoreURL];
  v10 = [v8 _checkIfLanguageChangeOccurred:_baseDataStoreURL];

  if ([MEMORY[0x277CBEBD0] pbf_needsFileProtectionsReset])
  {
    LOBYTE(v11) = 1;
  }

  else
  {
    v11 = [MEMORY[0x277CBEBD0] pbf_hasHadFileProtectionsReset] ^ 1;
  }

  v12 = v11 | pbf_stashedDeviceTypeOutOfSync;
  if ((v5 == 0 || (v7 & 1) == 0) | v10 & 1)
  {
    v13 = 1;
  }

  else
  {
    v13 = v12;
  }

  return v13 & 1;
}

- (BOOL)_lock_performNecessaryMigrationsForDataStoreAtURL:(id)l shouldForce:(BOOL)force error:(id *)error
{
  forceCopy = force;
  lCopy = l;
  NSClassFromString(&cfstr_Nsurl.isa);
  if (!lCopy)
  {
    [PBFPosterExtensionDataStoreXPCServiceGlue _lock_performNecessaryMigrationsForDataStoreAtURL:a2 shouldForce:? error:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PBFPosterExtensionDataStoreXPCServiceGlue _lock_performNecessaryMigrationsForDataStoreAtURL:a2 shouldForce:? error:?];
  }

  v9 = [MEMORY[0x277D46DB8] pf_migrationRuntimeAssertionWithExplanation:@"PosterBoard Migration Assertion"];
  [v9 setInvalidationHandler:&__block_literal_global_240];
  v63[0] = 0;
  v54 = v9;
  [v9 acquireWithError:v63];
  v10 = v63[0];
  v11 = PBFLogMigration();
  v12 = v11;
  if (v10)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [PBFPosterExtensionDataStoreXPCServiceGlue _lock_performNecessaryMigrationsForDataStoreAtURL:v10 shouldForce:v12 error:?];
    }
  }

  else if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_21B526000, v12, OS_LOG_TYPE_INFO, "Migration RBSAssertion acquired", buf, 2u);
  }

  v13 = objc_opt_new();
  stringRepresentation = [v13 stringRepresentation];
  pbf_snapshotsBuildVersion = [MEMORY[0x277CBEBD0] pbf_snapshotsBuildVersion];
  v15 = [MEMORY[0x277CF0BB0] fromString:?];
  v16 = objc_opt_new();
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __113__PBFPosterExtensionDataStoreXPCServiceGlue__lock_performNecessaryMigrationsForDataStoreAtURL_shouldForce_error___block_invoke_241;
  aBlock[3] = &unk_2782C9C38;
  v52 = v16;
  v61 = v52;
  v17 = _Block_copy(aBlock);
  v59 = v15;
  v53 = v13;
  v18 = [v15 isSameAs:v13];
  v19 = objc_opt_class();
  _baseDataStoreURL = [(PBFPosterExtensionDataStoreXPCServiceGlue *)self _baseDataStoreURL];
  v57 = [v19 _checkIfLanguageChangeOccurred:_baseDataStoreURL];

  if ([MEMORY[0x277CBEBD0] pbf_needsFileProtectionsReset])
  {
    v21 = 1;
  }

  else
  {
    v21 = [MEMORY[0x277CBEBD0] pbf_hasHadFileProtectionsReset] ^ 1;
  }

  pbf_stashedDeviceTypeOutOfSync = [MEMORY[0x277CBEBD0] pbf_stashedDeviceTypeOutOfSync];
  if (v59)
  {
    v23 = forceCopy;
  }

  else
  {
    v23 = 1;
  }

  v24 = v23 | v18 ^ 1 | v57 | v21 | pbf_stashedDeviceTypeOutOfSync;
  v25 = v17[2];
  v51 = v24;
  if (v24)
  {
    v26 = pbf_stashedDeviceTypeOutOfSync;
    v25(v17, @"Data store migration initiated");
    (v17[2])(v17, @"current build version %@ vs stashed build version %@.");
    v42 = objc_opt_new();
    v45 = objc_opt_new();
    v43 = objc_opt_new();
    v58 = objc_opt_new();
    v46 = objc_opt_new();
    v44 = objc_opt_new();
    v55 = objc_opt_new();
    v50 = objc_opt_new();
    v49 = objc_opt_new();
    v48 = objc_opt_new();
    v47 = objc_opt_new();
    if ([MEMORY[0x277CBEBD0] pbf_keynoteModeEnabled])
    {
      [MEMORY[0x277CBEBD0] pbf_setKeynoteModeEnabled:0];
      (v17[2])(v17, @"We are deleting the keynote mode here and moving on.  This is your problem, not my bug. (current %@ vs stashed %@).");
    }

    if (forceCopy)
    {
      [v44 addObject:@"migration forced"];
      [v55 addObject:@"migration forced"];
      [v58 addObject:@"migration forced"];
      [v50 addObject:@"migration forced"];
      [v45 addObject:@"migration forced"];
      [v49 addObject:@"migration forced"];
      [v48 addObject:@"migration forced"];
      [v47 addObject:@"migration forced"];
    }

    if ((v18 & 1) == 0)
    {
      [v44 addObject:@"build version changed"];
      [v55 addObject:@"build version changed"];
      [v50 addObject:@"build version changed"];
      [v45 addObject:@"build version changed"];
      [v49 addObject:@"build version changed"];
      [v48 addObject:@"build version changed"];
      [v47 addObject:@"build version changed"];
    }

    if (v26)
    {
      [v42 addObject:@"device changed"];
      [v58 addObject:@"device changed"];
      [v55 addObject:@"device changed"];
    }

    if (v57)
    {
      [v42 addObject:@"language change"];
      [v43 addObject:@"language change"];
      [v58 addObject:@"language change"];
      [v46 addObject:@"language change"];
      [v50 addObject:@"language change"];
    }

    v27 = pbf_snapshotsBuildVersion;
    if (v21)
    {
      [v55 addObject:@"needsFileProtectionsMigration is true"];
      [v50 addObject:@"needsFileProtectionsMigration is true"];
    }

    if ([v55 count])
    {
      v31 = [v55 componentsJoinedByString:{@", "}];
      (v17[2])(v17, @"Running fixing file protection state for reasons: %@");

      [(PBFPosterExtensionDataStoreXPCServiceGlue *)self _lock_fixFileProtections];
      [MEMORY[0x277CBEBD0] pbf_setNeedsFileProtectionsReset:0];
      (v17[2])(v17, @"post fixing file protection state");
    }

    if ([v44 count])
    {
      v32 = [v44 componentsJoinedByString:{@", "}];
      (v17[2])(v17, @"Running legacy migration for reasons: %@");

      [(PBFPosterExtensionDataStoreXPCServiceGlue *)self _lock_runLegacyMigration];
      (v17[2])(v17, @"Post running legacy migration");
    }

    if ([v49 count])
    {
      v33 = [v49 componentsJoinedByString:{@", "}];
      (v17[2])(v17, @"Running complication location migration to fix configurations that have invalid bottom complications: %@");

      [(PBFPosterExtensionDataStoreXPCServiceGlue *)self _lock_fixComplicationLayout];
      (v17[2])(v17, @"Post complication location migration");
    }

    if ([v48 count])
    {
      v34 = [v48 componentsJoinedByString:{@", "}];
      (v17[2])(v17, @"Running AdaptiveTime migration to fix configurations for descpriptors that no longer support AdaptiveTime: %@");

      [(PBFPosterExtensionDataStoreXPCServiceGlue *)self _lock_fixAdaptiveTimeConfiguration];
      (v17[2])(v17, @"Post AdaptiveTime migration");
    }

    if ([v47 count])
    {
      v35 = [v48 componentsJoinedByString:{@", "}];
      (v17[2])(v17, @"Running Glass to (Vibrant + Glass) migration to fix configurations that use the now deprecated GlassMaterialStyle: %@");

      [(PBFPosterExtensionDataStoreXPCServiceGlue *)self _lock_migrateGlassToVibrantGlassMaterialStyle];
      (v17[2])(v17, @"Post Glass to (Vibrant + Glass) migration");
    }

    if ([v42 count])
    {
      v36 = [v42 componentsJoinedByString:{@", "}];
      (v17[2])(v17, @"Reaping snapshots for reasons: %@");

      [(PBFPosterExtensionDataStoreXPCServiceGlue *)self _lock_reapSnapshots:v57 ^ 1u];
      (v17[2])(v17, @"Reaped snapshot");
    }

    if ([v45 count])
    {
      v37 = [v42 componentsJoinedByString:{@", "}];
      (v17[2])(v17, @"Reaping *classic* snapshots for reasons: %@");

      [(PBFPosterExtensionDataStoreXPCServiceGlue *)self _lock_reapClassicSnapshots];
      (v17[2])(v17, @"Reaped classic snapshots");
    }

    v28 = v58;
    if ([v58 count])
    {
      v38 = [v58 componentsJoinedByString:{@", "}];
      (v17[2])(v17, @"Reaping gallery for reasons: %@");

      v28 = v58;
      [(PBFPosterExtensionDataStoreXPCServiceGlue *)self _lock_reapGallery];
      (v17[2])(v17, @"Reaped gallery");
    }

    if ([v43 count])
    {
      v39 = [v43 componentsJoinedByString:{@", "}];
      (v17[2])(v17, @"Reaping descriptors for reasons: %@");

      v28 = v58;
      [(PBFPosterExtensionDataStoreXPCServiceGlue *)self _lock_reapDescriptors];
      (v17[2])(v17, @"Reaped descriptors");
    }

    if ([v46 count])
    {
      v40 = [v46 componentsJoinedByString:{@", "}];
      (v17[2])(v17, @"Reaping extension provider info for reasons: %@");

      v28 = v58;
      [(PBFPosterExtensionDataStoreXPCServiceGlue *)self _lock_reapExtensionProviderInfo];
      (v17[2])(v17, @"Reaped extension provider info");
    }

    [(PBFPosterExtensionDataStoreXPCServiceGlue *)self _lock_reapTransientData:1];
    if ([v50 count])
    {
      v41 = [v50 componentsJoinedByString:{@", "}];
      (v17[2])(v17, @"Reaping temp directory reasons: %@");

      v28 = v58;
      [(PBFPosterExtensionDataStoreXPCServiceGlue *)self _lock_reapTemporaryDirectory];
      (v17[2])(v17, @"Reaped temp directory");
    }

    [(PBFPosterExtensionDataStoreXPCServiceGlue *)self _migration_updateStashedIdentifiers];
    v29 = stringRepresentation;
    (v17[2])(v17, @"Data store migration finished (stashed %@ -> current %@).");
  }

  else
  {
    v27 = pbf_snapshotsBuildVersion;
    v29 = stringRepresentation;
    v25(v17, @"Data store migration not needed (current %@ vs stashed %@).");
  }

  [v54 invalidate];

  return v51 & 1;
}

void __113__PBFPosterExtensionDataStoreXPCServiceGlue__lock_performNecessaryMigrationsForDataStoreAtURL_shouldForce_error___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = PBFLogCommon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v3 descriptionWithMultilinePrefix:0];
    v6 = 138543362;
    v7 = v5;
    _os_log_impl(&dword_21B526000, v4, OS_LOG_TYPE_DEFAULT, "Migration RBSAssertion invalidated: %{public}@", &v6, 0xCu);
  }
}

void __113__PBFPosterExtensionDataStoreXPCServiceGlue__lock_performNecessaryMigrationsForDataStoreAtURL_shouldForce_error___block_invoke_241(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v17 = *MEMORY[0x277D85DE8];
  v10 = MEMORY[0x277CCACA8];
  v11 = a2;
  v12 = [[v10 alloc] initWithFormat:v11 arguments:&a9];

  v13 = PBFLogMigration();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v16 = v12;
    _os_log_impl(&dword_21B526000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
  }

  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = @"(null entry)";
  }

  [*(a1 + 32) addObject:v14];
}

+ (BOOL)_checkIfLanguageChangeOccurred:(id)occurred
{
  v24 = *MEMORY[0x277D85DE8];
  occurredCopy = occurred;
  if (([MEMORY[0x277CBEBD0] pbf_snapshotsLocaleDidChange] & 1) == 0)
  {
    currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
    localeIdentifier = [currentLocale localeIdentifier];

    if (localeIdentifier)
    {
      v7 = [MEMORY[0x277CBEAF8] canonicalLocaleIdentifierFromString:localeIdentifier];
    }

    else
    {
      v7 = 0;
    }

    pbf_snapshotsLocaleIdentifier = [MEMORY[0x277CBEBD0] pbf_snapshotsLocaleIdentifier];
    if (pbf_snapshotsLocaleIdentifier)
    {
      v9 = pbf_snapshotsLocaleIdentifier;
      v10 = [MEMORY[0x277CBEAF8] canonicalLocaleIdentifierFromString:pbf_snapshotsLocaleIdentifier];
    }

    else
    {
      v11 = [PBFPosterExtensionDataStore galleryCacheURLForBaseURL:occurredCopy];
      v12 = [[PBFPosterGalleryLayoutPersistence alloc] initWithURL:v11];
      v13 = [(PBFPosterGalleryLayoutPersistence *)v12 loadNewestUsableGalleryLayoutReturningError:0];
      locale = [v13 locale];
      localeIdentifier2 = [locale localeIdentifier];

      v16 = PBFLogMigration();
      v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
      if (localeIdentifier2)
      {
        if (v17)
        {
          LOWORD(v20) = 0;
          _os_log_impl(&dword_21B526000, v16, OS_LOG_TYPE_DEFAULT, "Found gallery; using gallery locale to populate stashedLocaleIdentifier", &v20, 2u);
        }

        v10 = [MEMORY[0x277CBEAF8] canonicalLocaleIdentifierFromString:localeIdentifier2];
        [MEMORY[0x277CBEBD0] pbf_setSnapshotsLocaleIdentifier:v10];
      }

      else
      {
        if (v17)
        {
          LOWORD(v20) = 0;
          _os_log_impl(&dword_21B526000, v16, OS_LOG_TYPE_DEFAULT, "We have no gallery and no stashed locale identifier; Treating locale as unchanged", &v20, 2u);
        }

        v10 = 0;
      }

      if (!localeIdentifier2)
      {
        LOBYTE(v4) = 0;
LABEL_19:

        goto LABEL_20;
      }
    }

    v18 = PBFLogMigration();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 138543618;
      v21 = v7;
      v22 = 2114;
      v23 = v10;
      _os_log_impl(&dword_21B526000, v18, OS_LOG_TYPE_DEFAULT, "Checking current locale: %{public}@ vs stashed locale: %{public}@", &v20, 0x16u);
    }

    v4 = [v10 isEqualToString:v7] ^ 1;
    goto LABEL_19;
  }

  LOBYTE(v4) = 1;
LABEL_20:

  return v4;
}

- (void)_migration_updateStashedIdentifiers
{
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  localeIdentifier = [currentLocale localeIdentifier];

  if (localeIdentifier)
  {
    v7 = [MEMORY[0x277CBEAF8] canonicalLocaleIdentifierFromString:localeIdentifier];
  }

  else
  {
    v7 = 0;
  }

  [MEMORY[0x277CBEBD0] pbf_setSnapshotsLocaleIdentifier:v7];
  v4 = MEMORY[0x277CBEBD0];
  v5 = objc_opt_new();
  stringRepresentation = [v5 stringRepresentation];
  [v4 pbf_setSnapshotsBuildVersion:stringRepresentation];

  [MEMORY[0x277CBEBD0] pbf_setSnapshotsLocaleDidChange:0];
  [MEMORY[0x277CBEBD0] pbf_updateStashedDeviceType];
}

- (void)_localeDidChange:(id)change
{
  v4 = PBFLogMigration();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    [PBFPosterExtensionDataStoreXPCServiceGlue _localeDidChange:];
  }

  [MEMORY[0x277CBEBD0] pbf_setSnapshotsLocaleDidChange:1];
  [(PRSServer *)self->_server invalidate];
  os_unfair_lock_lock(&self->_lock);
  [(PBFPosterExtensionDataStore *)self->_lock_dataStore cancel];
  os_unfair_lock_unlock(&self->_lock);
  v5 = PBFLogMigration();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [PBFPosterExtensionDataStoreXPCServiceGlue _localeDidChange:];
  }

  if (_localeDidChange__onceToken != -1)
  {
    [PBFPosterExtensionDataStoreXPCServiceGlue _localeDidChange:];
  }
}

uint64_t __62__PBFPosterExtensionDataStoreXPCServiceGlue__localeDidChange___block_invoke()
{
  v0 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, 0);
  v1 = PBFPosterExtensionDataStoreDidTearDownNotification_block_invoke_timerSource;
  PBFPosterExtensionDataStoreDidTearDownNotification_block_invoke_timerSource = v0;

  v2 = PBFPosterExtensionDataStoreDidTearDownNotification_block_invoke_timerSource;
  v3 = dispatch_time(0, 1000000000);
  dispatch_source_set_timer(v2, v3, 0xFFFFFFFFFFFFFFFFLL, 0);
  dispatch_source_set_event_handler(PBFPosterExtensionDataStoreDidTearDownNotification_block_invoke_timerSource, &__block_literal_global_353);
  dispatch_resume(PBFPosterExtensionDataStoreDidTearDownNotification_block_invoke_timerSource);
  v4 = PBFLogMigration();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __62__PBFPosterExtensionDataStoreXPCServiceGlue__localeDidChange___block_invoke_cold_1();
  }

  return xpc_transaction_exit_clean();
}

void __62__PBFPosterExtensionDataStoreXPCServiceGlue__localeDidChange___block_invoke_2()
{
  v0 = PBFLogMigration();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_21B526000, v0, OS_LOG_TYPE_ERROR, "[_localeDidChange] Second time calling xpc_transaction_exit_clean()", buf, 2u);
  }

  xpc_transaction_try_exit_clean();
  v1 = PBFLogMigration();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    *v2 = 0;
    _os_log_error_impl(&dword_21B526000, v1, OS_LOG_TYPE_ERROR, "[_localeDidChange] Hard Exit...", v2, 2u);
  }

  exit(0);
}

- (void)server:(id)server setHostConfiguration:(id)configuration forRole:(id)role completion:(id)completion
{
  v17[1] = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  roleCopy = role;
  v10 = MEMORY[0x277D3EF28];
  completionCopy = completion;
  sharedHostConfigurationManager = [v10 sharedHostConfigurationManager];
  if (PFPosterRoleIsValid())
  {
    [sharedHostConfigurationManager setHostConfiguration:configurationCopy forRole:roleCopy];
    completionCopy[2](completionCopy, 0);
  }

  else
  {
    v13 = MEMORY[0x277CCA9B8];
    v16 = *MEMORY[0x277CCA470];
    v17[0] = @"Invalid role";
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    v15 = [v13 pbf_generalErrorWithCode:1 userInfo:v14];
    (completionCopy)[2](completionCopy, v15);

    completionCopy = v14;
  }
}

- (void)server:(id)server deleteHostConfigurationForRole:(id)role completion:(id)completion
{
  v14[1] = *MEMORY[0x277D85DE8];
  roleCopy = role;
  v7 = MEMORY[0x277D3EF28];
  completionCopy = completion;
  sharedHostConfigurationManager = [v7 sharedHostConfigurationManager];
  if (PFPosterRoleIsValid())
  {
    [sharedHostConfigurationManager deleteHostConfigurationForRole:roleCopy];
    completionCopy[2](completionCopy, 0);
  }

  else
  {
    v10 = MEMORY[0x277CCA9B8];
    v13 = *MEMORY[0x277CCA470];
    v14[0] = @"Invalid role";
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    v12 = [v10 pbf_generalErrorWithCode:1 userInfo:v11];
    (completionCopy)[2](completionCopy, v12);

    completionCopy = v11;
  }
}

- (void)server:(id)server updatePosterConfigurationsFromHostForRole:(id)role completion:(id)completion
{
  v21[1] = *MEMORY[0x277D85DE8];
  roleCopy = role;
  completionCopy = completion;
  if (!PFPosterRoleIsValid())
  {
    v13 = MEMORY[0x277CCA9B8];
    v18 = *MEMORY[0x277CCA470];
    v19 = @"Invalid role";
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
    v10 = [v13 pbf_generalErrorWithCode:1 userInfo:v12];
    v9 = v10;
    goto LABEL_10;
  }

  v17 = 0;
  v9 = [(PBFPosterExtensionDataStoreXPCServiceGlue *)self _dataStoreWithError:&v17];
  v10 = v17;
  if (!v9)
  {
LABEL_9:
    v12 = v10;
    goto LABEL_10;
  }

  v16 = 0;
  v11 = [v9 updatePosterConfigurationsFromHostForRole:roleCopy error:&v16];
  v12 = v16;

  if ((v11 & 1) == 0)
  {
    if (v12)
    {
      v10 = v12;
      goto LABEL_10;
    }

    v14 = MEMORY[0x277CCA9B8];
    v20 = *MEMORY[0x277CCA470];
    v21[0] = @"updatePosterConfigurationsFromHostForRole: failed with unknown error";
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:&v20 count:1];
    v10 = [v14 pbf_generalErrorWithCode:0 userInfo:v15];

    goto LABEL_9;
  }

  v10 = 0;
LABEL_10:
  completionCopy[2](completionCopy, v10);
}

- (void)server:(id)server fetchPosterDescriptorsForExtension:(id)extension completion:(id)completion
{
  extensionCopy = extension;
  completionCopy = completion;
  v14 = 0;
  v9 = [(PBFPosterExtensionDataStoreXPCServiceGlue *)self _dataStoreWithError:&v14];
  v10 = v14;
  if (v9)
  {
    v13 = 0;
    v11 = [v9 posterDescriptorsForExtensionBundleIdentifier:extensionCopy error:&v13];
    v12 = v13;

    completionCopy[2](completionCopy, v11, v12);
    v10 = v12;
  }

  else
  {
    completionCopy[2](completionCopy, 0, v10);
  }
}

- (void)server:(id)server fetchStaticPosterDescriptorsForExtension:(id)extension completion:(id)completion
{
  extensionCopy = extension;
  completionCopy = completion;
  v14 = 0;
  v9 = [(PBFPosterExtensionDataStoreXPCServiceGlue *)self _dataStoreWithError:&v14];
  v10 = v14;
  if (v9)
  {
    v13 = 0;
    v11 = [v9 staticPosterDescriptorsForExtensionBundleIdentifier:extensionCopy error:&v13];
    v12 = v13;

    completionCopy[2](completionCopy, v11, v12);
    v10 = v12;
  }

  else
  {
    completionCopy[2](completionCopy, 0, v10);
  }
}

- (void)server:(id)server refreshPosterDescriptorsForExtension:(id)extension sessionInfo:(id)info completion:(id)completion
{
  extensionCopy = extension;
  infoCopy = info;
  completionCopy = completion;
  v26 = 0;
  v12 = [(PBFPosterExtensionDataStoreXPCServiceGlue *)self _dataStoreWithError:&v26];
  v13 = v26;
  if (v12)
  {
    knownExtensions = [v12 knownExtensions];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __112__PBFPosterExtensionDataStoreXPCServiceGlue_server_refreshPosterDescriptorsForExtension_sessionInfo_completion___block_invoke;
    v24[3] = &unk_2782C5EC0;
    v15 = extensionCopy;
    v25 = v15;
    v16 = [knownExtensions bs_firstObjectPassingTest:v24];

    if (v16)
    {
      posterExtensionInfoPlist = [v16 posterExtensionInfoPlist];
      v18 = [posterExtensionInfoPlist pbf_refreshDescriptorsFrequency] == 0;
    }

    else
    {
      v18 = 0;
    }

    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __112__PBFPosterExtensionDataStoreXPCServiceGlue_server_refreshPosterDescriptorsForExtension_sessionInfo_completion___block_invoke_2;
    v19[3] = &unk_2782C9C60;
    v22 = completionCopy;
    v23 = v18;
    v20 = v15;
    v21 = v12;
    [v21 reloadPosterDescriptorsForExtensionBundleIdentifier:v20 sessionInfo:infoCopy completion:v19];
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 0, v13);
  }
}

uint64_t __112__PBFPosterExtensionDataStoreXPCServiceGlue_server_refreshPosterDescriptorsForExtension_sessionInfo_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 posterExtensionBundleIdentifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

void __112__PBFPosterExtensionDataStoreXPCServiceGlue_server_refreshPosterDescriptorsForExtension_sessionInfo_completion___block_invoke_2(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  (*(*(a1 + 48) + 16))();
  if (*(a1 + 56) == 1)
  {
    v2 = PBFLogCommon();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 32);
      *buf = 138412290;
      v9 = v3;
      _os_log_impl(&dword_21B526000, v2, OS_LOG_TYPE_DEFAULT, "Will refresh snapshots for %@", buf, 0xCu);
    }

    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __112__PBFPosterExtensionDataStoreXPCServiceGlue_server_refreshPosterDescriptorsForExtension_sessionInfo_completion___block_invoke_362;
    v6[3] = &unk_2782C59F0;
    v7 = v4;
    [v5 refreshSnapshotForGalleryItemsMatchingDescriptorIdentifier:0 extensionIdentifier:v7 completion:v6];
  }
}

void __112__PBFPosterExtensionDataStoreXPCServiceGlue_server_refreshPosterDescriptorsForExtension_sessionInfo_completion___block_invoke_362(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PBFLogCommon();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);
  if (v3)
  {
    if (v5)
    {
      __112__PBFPosterExtensionDataStoreXPCServiceGlue_server_refreshPosterDescriptorsForExtension_sessionInfo_completion___block_invoke_362_cold_1(a1, v3, v4);
    }
  }

  else if (v5)
  {
    __112__PBFPosterExtensionDataStoreXPCServiceGlue_server_refreshPosterDescriptorsForExtension_sessionInfo_completion___block_invoke_362_cold_2(a1, v4, v6, v7, v8, v9, v10, v11);
  }
}

- (void)server:(id)server deletePosterDescriptorsForExtension:(id)extension completion:(id)completion
{
  extensionCopy = extension;
  completionCopy = completion;
  v13 = 0;
  v9 = [(PBFPosterExtensionDataStoreXPCServiceGlue *)self _dataStoreWithError:&v13];
  v10 = v13;
  if (v9)
  {
    v12 = 0;
    [v9 deletePosterDescriptorsForExtensionBundleIdentifier:extensionCopy error:&v12];
    v11 = v12;

    v10 = v11;
  }

  completionCopy[2](completionCopy, v10);
}

- (void)server:(id)server fetchExtensionIdentifiersWithCompletion:(id)completion
{
  completionCopy = completion;
  v13 = 0;
  v6 = [(PBFPosterExtensionDataStoreXPCServiceGlue *)self _dataStoreWithError:&v13];
  if (v6)
  {
    v7 = v13;
    knownExtensions = [v6 knownExtensions];
    v9 = [knownExtensions bs_mapNoNulls:&__block_literal_global_366];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = MEMORY[0x277CBEBF8];
    }

    completionCopy[2](completionCopy, v11, 0);
  }

  else
  {
    v12 = completionCopy[2];
    knownExtensions = v13;
    v12(completionCopy, 0, knownExtensions);
  }
}

- (void)server:(id)server fetchPosterSnapshotsWithRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  v11 = 0;
  completionCopy = completion;
  v9 = [(PBFPosterExtensionDataStoreXPCServiceGlue *)self _dataStoreWithError:&v11];
  v10 = v9;
  if (v9)
  {
    [v9 fetchPosterSnapshotsWithClientRequest:requestCopy completion:completionCopy];
  }

  else
  {
    completionCopy[2](completionCopy, 0, v11);
  }
}

- (void)server:(id)server pushPosterGalleryUpdate:(id)update completion:(id)completion
{
  updateCopy = update;
  completionCopy = completion;
  v11 = 0;
  v9 = [(PBFPosterExtensionDataStoreXPCServiceGlue *)self _dataStoreWithError:&v11];
  if (v9)
  {
    posterBoardRepresentation = [updateCopy posterBoardRepresentation];
    [v9 updateGallery:posterBoardRepresentation completion:completionCopy];
  }

  else
  {
    completionCopy[2](completionCopy, v11);
  }
}

- (void)server:(id)server pushToProactiveWithCompletion:(id)completion
{
  v8 = 0;
  completionCopy = completion;
  v6 = [(PBFPosterExtensionDataStoreXPCServiceGlue *)self _dataStoreWithError:&v8];
  v7 = v6;
  if (v6)
  {
    [v6 pushToProactiveWithCompletion:completionCopy];
  }

  else
  {
    completionCopy[2](completionCopy, v8);
  }
}

- (void)server:(id)server fetchGallery:(id)gallery
{
  galleryCopy = gallery;
  v11 = 0;
  v6 = [(PBFPosterExtensionDataStoreXPCServiceGlue *)self _dataStoreWithError:&v11];
  v7 = v11;
  if (v6)
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __65__PBFPosterExtensionDataStoreXPCServiceGlue_server_fetchGallery___block_invoke;
    v9[3] = &unk_2782C9958;
    v10 = galleryCopy;
    v8 = v7;
    [v6 fetchGalleryConfigurationWithOptions:4 completion:v9];
  }

  else
  {
    (*(galleryCopy + 2))(galleryCopy, 0, 0, 0, v11);
  }
}

void __65__PBFPosterExtensionDataStoreXPCServiceGlue_server_fetchGallery___block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v8 = *(a1 + 32);
  v9 = a5;
  v10 = a3;
  v11 = [a2 proactiveRepresentation];
  (*(v8 + 16))(v8, v11, v10, a4, v9);
}

- (void)server:(id)server retrieveGallery:(id)gallery
{
  galleryCopy = gallery;
  v11 = 0;
  v6 = [(PBFPosterExtensionDataStoreXPCServiceGlue *)self _dataStoreWithError:&v11];
  v7 = v11;
  if (v6)
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __68__PBFPosterExtensionDataStoreXPCServiceGlue_server_retrieveGallery___block_invoke;
    v9[3] = &unk_2782C9958;
    v10 = galleryCopy;
    v8 = v7;
    [v6 fetchGalleryConfigurationWithOptions:2 completion:v9];
  }

  else
  {
    (*(galleryCopy + 2))(galleryCopy, 0, 0, 0, v11);
  }
}

void __68__PBFPosterExtensionDataStoreXPCServiceGlue_server_retrieveGallery___block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v8 = *(a1 + 32);
  v9 = a5;
  v10 = a3;
  v11 = [a2 proactiveRepresentation];
  (*(v8 + 16))(v8, v11, v10, a4, v9);
}

- (void)server:(id)server createPosterConfigurationForProviderIdentifier:(id)identifier posterDescriptorIdentifier:(id)descriptorIdentifier role:(id)role completion:(id)completion
{
  identifierCopy = identifier;
  descriptorIdentifierCopy = descriptorIdentifier;
  roleCopy = role;
  completionCopy = completion;
  v20 = 0;
  v15 = [(PBFPosterExtensionDataStoreXPCServiceGlue *)self _dataStoreWithError:&v20];
  v16 = v20;
  if (v15)
  {
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __142__PBFPosterExtensionDataStoreXPCServiceGlue_server_createPosterConfigurationForProviderIdentifier_posterDescriptorIdentifier_role_completion___block_invoke;
    v18[3] = &unk_2782C9C88;
    v19 = completionCopy;
    v17 = v16;
    [v15 createPosterConfigurationForProviderIdentifier:identifierCopy posterDescriptorIdentifier:descriptorIdentifierCopy role:roleCopy completion:v18];
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 0, v20);
  }
}

- (void)server:(id)server refreshPosterConfigurationMatchingUUID:(id)d sessionInfo:(id)info completion:(id)completion
{
  dCopy = d;
  infoCopy = info;
  completionCopy = completion;
  v17 = 0;
  v12 = [(PBFPosterExtensionDataStoreXPCServiceGlue *)self _dataStoreWithError:&v17];
  v13 = v17;
  if (v12)
  {
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __114__PBFPosterExtensionDataStoreXPCServiceGlue_server_refreshPosterConfigurationMatchingUUID_sessionInfo_completion___block_invoke;
    v15[3] = &unk_2782C9C88;
    v16 = completionCopy;
    v14 = v13;
    [v12 refreshPosterConfigurationMatchingUUID:dCopy sessionInfo:infoCopy completion:v15];
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 0, v17);
  }
}

- (void)server:(id)server associateConfigurationMatchingUUID:(id)d focusModeActivityUUID:(id)iD completion:(id)completion
{
  v70 = *MEMORY[0x277D85DE8];
  dCopy = d;
  iDCopy = iD;
  completionCopy = completion;
  v63 = 0;
  v11 = [(PBFPosterExtensionDataStoreXPCServiceGlue *)self _dataStoreWithError:&v63];
  v12 = v63;
  v13 = v12;
  if (v11)
  {
    v52 = v12;
    switcherConfiguration = [v11 switcherConfiguration];
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    v62 = 0u;
    configurations = [switcherConfiguration configurations];
    v15 = [configurations countByEnumeratingWithState:&v59 objects:v69 count:16];
    if (v15)
    {
      v16 = v15;
      v48 = v11;
      v49 = completionCopy;
      v17 = *v60;
      while (2)
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v60 != v17)
          {
            objc_enumerationMutation(configurations);
          }

          v19 = *(*(&v59 + 1) + 8 * i);
          _path = [v19 _path];
          serverIdentity = [_path serverIdentity];
          posterUUID = [serverIdentity posterUUID];
          v23 = [posterUUID isEqual:dCopy];

          if (v23)
          {
            v24 = v19;
            goto LABEL_12;
          }
        }

        v16 = [configurations countByEnumeratingWithState:&v59 objects:v69 count:16];
        if (v16)
        {
          continue;
        }

        break;
      }

      v24 = 0;
LABEL_12:
      v11 = v48;
      completionCopy = v49;
    }

    else
    {
      v24 = 0;
    }

    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    mEMORY[0x277D0A9E8] = [MEMORY[0x277D0A9E8] sharedActivityManager];
    availableActivities = [mEMORY[0x277D0A9E8] availableActivities];

    v27 = [availableActivities countByEnumeratingWithState:&v55 objects:v68 count:16];
    if (v27)
    {
      v50 = v24;
      v28 = v11;
      v29 = completionCopy;
      v30 = *v56;
      while (2)
      {
        for (j = 0; j != v27; j = j + 1)
        {
          if (*v56 != v30)
          {
            objc_enumerationMutation(availableActivities);
          }

          v32 = *(*(&v55 + 1) + 8 * j);
          activityUniqueIdentifier = [v32 activityUniqueIdentifier];
          v34 = [activityUniqueIdentifier isEqual:iDCopy];

          if (v34)
          {
            v27 = v32;
            goto LABEL_25;
          }
        }

        v27 = [availableActivities countByEnumeratingWithState:&v55 objects:v68 count:16];
        if (v27)
        {
          continue;
        }

        break;
      }

LABEL_25:
      completionCopy = v29;
      v11 = v28;
      v24 = v50;
    }

    v13 = v52;
    if (v24)
    {
      if (v27)
      {
        v35 = objc_alloc(MEMORY[0x277D3ED98]);
        [v27 activityIdentifier];
        v37 = v36 = v24;
        activityUniqueIdentifier2 = [v27 activityUniqueIdentifier];
        v39 = [v35 initWithActivityIdentifier:v37 activityUUID:activityUniqueIdentifier2];

        v24 = v36;
        v40 = switcherConfiguration;
        v41 = [switcherConfiguration mutableCopy];
        [v41 setFocusConfiguration:v39 forPosterConfiguration:v36];
        v54 = 0;
        v42 = [v11 updateDataStoreForSwitcherConfiguration:v41 reason:@"associate focus mode with poster" error:&v54];
        v43 = v54;

        v13 = v43;
LABEL_32:
        completionCopy[2](completionCopy, v43);

        goto LABEL_33;
      }

      v44 = MEMORY[0x277CCA9B8];
      v64 = *MEMORY[0x277CCA470];
      v65 = @"Invalid target activity for associateConfigurationMatchingUUID";
      v45 = MEMORY[0x277CBEAC0];
      v46 = &v65;
      v47 = &v64;
    }

    else
    {
      v44 = MEMORY[0x277CCA9B8];
      v66 = *MEMORY[0x277CCA470];
      v67 = @"Invalid target configuration for associateConfigurationMatchingUUID";
      v45 = MEMORY[0x277CBEAC0];
      v46 = &v67;
      v47 = &v66;
    }

    v39 = [v45 dictionaryWithObjects:v46 forKeys:v47 count:1];
    v43 = [v44 pbf_generalErrorWithCode:1 userInfo:v39];
    v41 = v43;
    v40 = switcherConfiguration;
    goto LABEL_32;
  }

  completionCopy[2](completionCopy, v12);
LABEL_33:
}

- (void)server:(id)server fetchPosterConfigurationsForRole:(id)role completion:(id)completion
{
  roleCopy = role;
  completionCopy = completion;
  v14 = 0;
  v9 = [(PBFPosterExtensionDataStoreXPCServiceGlue *)self _dataStoreWithError:&v14];
  v10 = v14;
  if (v9)
  {
    v13 = 0;
    v11 = [v9 posterConfigurationsForRole:roleCopy error:&v13];
    v12 = v13;

    completionCopy[2](completionCopy, v11, v12);
    v10 = v12;
  }

  else
  {
    completionCopy[2](completionCopy, 0, v10);
  }
}

- (void)server:(id)server fetchPosterConfigurationsForExtension:(id)extension completion:(id)completion
{
  extensionCopy = extension;
  completionCopy = completion;
  v12 = 0;
  v9 = [(PBFPosterExtensionDataStoreXPCServiceGlue *)self _dataStoreWithError:&v12];
  v10 = v9;
  if (v9)
  {
    v11 = [v9 posterConfigurationsForExtension:extensionCopy];
    completionCopy[2](completionCopy, v11, 0);
  }

  else
  {
    completionCopy[2](completionCopy, 0, v12);
  }
}

- (void)server:(id)server deletePosterConfigurationsMatchingUUID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  v13 = 0;
  v9 = [(PBFPosterExtensionDataStoreXPCServiceGlue *)self _dataStoreWithError:&v13];
  v10 = v13;
  if (v9)
  {
    v12 = 0;
    [v9 deletePosterConfigurationsMatchingUUID:dCopy error:&v12];
    v11 = v12;

    v10 = v11;
  }

  completionCopy[2](completionCopy, v10);
}

- (void)server:(id)server exportPosterConfigurationMatchingUUID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  v23 = 0;
  v9 = [(PBFPosterExtensionDataStoreXPCServiceGlue *)self _dataStoreWithError:&v23];
  v10 = v23;
  if (v9)
  {
    v22 = 0;
    v11 = [v9 exportPosterConfigurationMatchingUUID:dCopy error:&v22];
    v12 = v22;

    if (v11)
    {
      v21 = v12;
      v13 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v11 options:1 error:&v21];
      v10 = v21;

      v14 = objc_alloc_init(MEMORY[0x277CCAA00]);
      v20 = 0;
      v15 = [v14 removeItemAtURL:v11 error:&v20];
      v16 = v20;
      if ((v15 & 1) == 0)
      {
        v17 = PBFLogCommon();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          [PBFPosterExtensionDataStoreXPCServiceGlue server:exportPosterConfigurationMatchingUUID:completion:];
        }
      }

      if (v13)
      {
        v18 = v13;
        v19 = 0;
      }

      else
      {
        v18 = 0;
        v19 = v10;
      }

      completionCopy[2](completionCopy, v18, v19);
    }

    else
    {
      completionCopy[2](completionCopy, 0, v12);
      v10 = v12;
    }
  }

  else
  {
    completionCopy[2](completionCopy, 0, v10);
  }
}

- (void)server:(id)server importPosterConfigurationFromArchiveData:(id)data completion:(id)completion
{
  dataCopy = data;
  v11 = 0;
  completionCopy = completion;
  v9 = [(PBFPosterExtensionDataStoreXPCServiceGlue *)self _dataStoreWithError:&v11];
  v10 = v9;
  if (v9)
  {
    [v9 importPosterConfigurationFromArchiveData:dataCopy completion:completionCopy];
  }

  else
  {
    completionCopy[2](completionCopy, 0, v11);
  }
}

- (void)server:(id)server refreshSnapshotForPosterConfigurationMatchUUID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  v14 = 0;
  v9 = [(PBFPosterExtensionDataStoreXPCServiceGlue *)self _dataStoreWithError:&v14];
  v10 = v14;
  if (v9)
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __110__PBFPosterExtensionDataStoreXPCServiceGlue_server_refreshSnapshotForPosterConfigurationMatchUUID_completion___block_invoke;
    v12[3] = &unk_2782C5AB0;
    v13 = completionCopy;
    v11 = v10;
    [v9 refreshSnapshotForPosterConfigurationMatchUUID:dCopy completion:v12];
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, v14);
  }
}

- (void)server:(id)server notePosterConfigurationUnderlyingModelDidChange:(id)change
{
  changeCopy = change;
  os_unfair_lock_lock(&self->_lock);
  v6 = [(PBFPosterExtensionDataStoreXPCServiceGlue *)self _lock_dataStoreWithError:0];
  [v6 notePosterConfigurationUnderlyingModelDidChange:changeCopy];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)server:(id)server ingestSnapshotCollection:(id)collection forPosterConfigurationUUID:(id)d completion:(id)completion
{
  collectionCopy = collection;
  dCopy = d;
  completionCopy = completion;
  v16 = 0;
  v12 = [(PBFPosterExtensionDataStoreXPCServiceGlue *)self _dataStoreWithError:&v16];
  v13 = v16;
  if (v12)
  {
    v15 = 0;
    [v12 ingestSnapshotCollection:collectionCopy forPosterConfigurationUUID:dCopy error:&v15];
    v14 = v15;

    v13 = v14;
  }

  completionCopy[2](completionCopy, v13);
}

- (void)server:(id)server fetchContentObstructionBoundsForPosterConfiguration:(id)configuration orientation:(int64_t)orientation completion:(id)completion
{
  v34[1] = *MEMORY[0x277D85DE8];
  serverCopy = server;
  configurationCopy = configuration;
  completionCopy = completion;
  if ((orientation - 1) >= 4)
  {
    v13 = MEMORY[0x277CCA9B8];
    v33 = *MEMORY[0x277CCA470];
    v34[0] = @"orientation must be a valid UIDeviceOrientation.";
    v14 = MEMORY[0x277CBEAC0];
    v15 = v34;
    v16 = &v33;
  }

  else
  {
    if ([(PBFPosterExtensionDataStoreXPCServiceGlue *)self _hasValidConfigurationForPoster:configurationCopy])
    {
      goto LABEL_7;
    }

    v13 = MEMORY[0x277CCA9B8];
    v31 = *MEMORY[0x277CCA470];
    v32 = @"configuration must be a valid PRSPosterConfiguration.";
    v14 = MEMORY[0x277CBEAC0];
    v15 = &v32;
    v16 = &v31;
  }

  v17 = [v14 dictionaryWithObjects:v15 forKeys:v16 count:1];
  v18 = [v13 pbf_generalErrorWithCode:1 userInfo:v17];

  if (v18)
  {
    v19 = MEMORY[0x277CBEBF8];
    goto LABEL_10;
  }

LABEL_7:
  [(PBFPosterExtensionDataStoreXPCServiceGlue *)self _screenBoundsForOrientation:orientation];
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  [(CSProminentLayoutController *)self->_layoutController frameForElements:3 variant:1 withBoundingRect:?];
  [PBFPosterExtensionDataStoreXPCServiceGlue _normalizedBounds:"_normalizedBounds:forScreenBounds:" forScreenBounds:?];
  v28 = [MEMORY[0x277CCAE60] bs_valueWithCGRect:?];
  v19 = [MEMORY[0x277CBEBF8] arrayByAddingObject:v28];

  if ([(PBFPosterExtensionDataStoreXPCServiceGlue *)self _hasComplicationsForPosterConfiguration:configurationCopy])
  {
    [(CSProminentLayoutController *)self->_layoutController frameForElements:8 variant:1 withBoundingRect:v21, v23, v25, v27];
    [PBFPosterExtensionDataStoreXPCServiceGlue _normalizedBounds:"_normalizedBounds:forScreenBounds:" forScreenBounds:?];
    v29 = [MEMORY[0x277CCAE60] bs_valueWithCGRect:?];
    v30 = [v19 arrayByAddingObject:v29];

    v18 = 0;
    v19 = v30;
  }

  else
  {
    v18 = 0;
  }

LABEL_10:
  completionCopy[2](completionCopy, v19, v18);
}

- (void)server:(id)server fetchMaximalContentCutoutBoundsForOrientation:(int64_t)orientation completion:(id)completion
{
  v19[1] = *MEMORY[0x277D85DE8];
  serverCopy = server;
  completionCopy = completion;
  if ((orientation - 1) >= 4 && (v10 = MEMORY[0x277CCA9B8], v18 = *MEMORY[0x277CCA470], v19[0] = @"orientation must be a valid UIDeviceOrientation.", [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v18 count:1], v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "pbf_generalErrorWithCode:userInfo:", 1, v11), v12 = objc_claimAutoreleasedReturnValue(), v11, v12))
  {
    v13 = *(MEMORY[0x277CBF398] + 16);
    v14 = *(MEMORY[0x277CBF398] + 24);
    v15 = *MEMORY[0x277CBF398];
    v16 = *(MEMORY[0x277CBF398] + 8);
  }

  else
  {
    [(PBFPosterExtensionDataStoreXPCServiceGlue *)self _prominentObstructionForOrientation:orientation showingComplications:0];
    [(PBFPosterExtensionDataStoreXPCServiceGlue *)self _cutoutBoundsForObstructionBounds:orientation orientation:?];
    [(PBFPosterExtensionDataStoreXPCServiceGlue *)self _normalizedBounds:orientation orientation:?];
    v12 = 0;
  }

  v17 = [MEMORY[0x277CCAE60] bs_valueWithCGRect:{v15, v16, v13, v14}];
  completionCopy[2](completionCopy, v17, v12);
}

- (void)server:(id)server fetchExtendedContentCutoutBoundsForOrientation:(int64_t)orientation completion:(id)completion
{
  v19[1] = *MEMORY[0x277D85DE8];
  serverCopy = server;
  completionCopy = completion;
  if ((orientation - 1) >= 4 && (v10 = MEMORY[0x277CCA9B8], v18 = *MEMORY[0x277CCA470], v19[0] = @"orientation must be a valid UIDeviceOrientation.", [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v18 count:1], v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "pbf_generalErrorWithCode:userInfo:", 1, v11), v12 = objc_claimAutoreleasedReturnValue(), v11, v12))
  {
    v13 = *(MEMORY[0x277CBF398] + 16);
    v14 = *(MEMORY[0x277CBF398] + 24);
    v15 = *MEMORY[0x277CBF398];
    v16 = *(MEMORY[0x277CBF398] + 8);
  }

  else
  {
    [(PBFPosterExtensionDataStoreXPCServiceGlue *)self _unbypassableProminentObstructionForOrientation:orientation showingComplications:0];
    [(PBFPosterExtensionDataStoreXPCServiceGlue *)self _cutoutBoundsForObstructionBounds:orientation orientation:?];
    [(PBFPosterExtensionDataStoreXPCServiceGlue *)self _normalizedBounds:orientation orientation:?];
    v12 = 0;
  }

  v17 = [MEMORY[0x277CCAE60] bs_valueWithCGRect:{v15, v16, v13, v14}];
  completionCopy[2](completionCopy, v17, v12);
}

- (void)server:(id)server fetchContentCutoutBoundsForPosterConfiguration:(id)configuration orientation:(int64_t)orientation completion:(id)completion
{
  v27[1] = *MEMORY[0x277D85DE8];
  serverCopy = server;
  configurationCopy = configuration;
  completionCopy = completion;
  if ((orientation - 1) >= 4)
  {
    v13 = MEMORY[0x277CCA9B8];
    v26 = *MEMORY[0x277CCA470];
    v27[0] = @"orientation must be a valid UIDeviceOrientation.";
    v14 = MEMORY[0x277CBEAC0];
    v15 = v27;
    v16 = &v26;
  }

  else
  {
    if ([(PBFPosterExtensionDataStoreXPCServiceGlue *)self _hasValidConfigurationForPoster:configurationCopy])
    {
LABEL_7:
      [(PBFPosterExtensionDataStoreXPCServiceGlue *)self _prominentObstructionForConfiguration:configurationCopy orientation:orientation];
      [(PBFPosterExtensionDataStoreXPCServiceGlue *)self _cutoutBoundsForObstructionBounds:orientation orientation:?];
      [(PBFPosterExtensionDataStoreXPCServiceGlue *)self _normalizedBounds:orientation orientation:?];
      v18 = 0;
      goto LABEL_8;
    }

    v13 = MEMORY[0x277CCA9B8];
    v24 = *MEMORY[0x277CCA470];
    v25 = @"configuration must be a valid PRSPosterConfiguration.";
    v14 = MEMORY[0x277CBEAC0];
    v15 = &v25;
    v16 = &v24;
  }

  v17 = [v14 dictionaryWithObjects:v15 forKeys:v16 count:1];
  v18 = [v13 pbf_generalErrorWithCode:1 userInfo:v17];

  if (!v18)
  {
    goto LABEL_7;
  }

  v19 = *MEMORY[0x277CBF398];
  v20 = *(MEMORY[0x277CBF398] + 8);
  v21 = *(MEMORY[0x277CBF398] + 16);
  v22 = *(MEMORY[0x277CBF398] + 24);
LABEL_8:
  v23 = [MEMORY[0x277CCAE60] bs_valueWithCGRect:{v19, v20, v21, v22}];
  completionCopy[2](completionCopy, v23, v18);
}

- (void)server:(id)server fetchObscurableBoundsForPosterConfiguration:(id)configuration orientation:(int64_t)orientation completion:(id)completion
{
  v57[1] = *MEMORY[0x277D85DE8];
  serverCopy = server;
  configurationCopy = configuration;
  completionCopy = completion;
  if ((orientation - 1) >= 4)
  {
    v13 = MEMORY[0x277CCA9B8];
    v56 = *MEMORY[0x277CCA470];
    v57[0] = @"orientation must be a valid UIDeviceOrientation.";
    v14 = MEMORY[0x277CBEAC0];
    v15 = v57;
    v16 = &v56;
  }

  else
  {
    if ([(PBFPosterExtensionDataStoreXPCServiceGlue *)self _hasValidConfigurationForPoster:configurationCopy])
    {
      goto LABEL_7;
    }

    v13 = MEMORY[0x277CCA9B8];
    v54 = *MEMORY[0x277CCA470];
    v55 = @"configuration must be a valid PRSPosterConfiguration.";
    v14 = MEMORY[0x277CBEAC0];
    v15 = &v55;
    v16 = &v54;
  }

  v17 = [v14 dictionaryWithObjects:v15 forKeys:v16 count:1];
  v18 = [v13 pbf_generalErrorWithCode:1 userInfo:v17];

  if (v18)
  {
    v19 = *MEMORY[0x277CBF398];
    v20 = *(MEMORY[0x277CBF398] + 8);
    v21 = *(MEMORY[0x277CBF398] + 16);
    v22 = *(MEMORY[0x277CBF398] + 24);
    goto LABEL_12;
  }

LABEL_7:
  v23 = [(PBFPosterExtensionDataStoreXPCServiceGlue *)self _hasComplicationsForPosterConfiguration:configurationCopy];
  [(PBFPosterExtensionDataStoreXPCServiceGlue *)self _prominentObstructionForConfiguration:configurationCopy orientation:orientation];
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  [(PBFPosterExtensionDataStoreXPCServiceGlue *)self _screenBoundsForOrientation:orientation];
  v36 = v32;
  v37 = v33;
  v38 = v34;
  v39 = v35;
  if (v23)
  {
    [(CSProminentLayoutController *)self->_layoutController frameForElements:8 variant:1 withBoundingRect:v32, v33, v34, v35];
    MaxY = CGRectGetMaxY(v58);
  }

  else
  {
    [(CSProminentLayoutController *)self->_layoutController frameForElements:1 variant:1 withBoundingRect:v32, v33, v34, v35];
    v52 = v27;
    v53 = v25;
    x = v59.origin.x;
    y = v59.origin.y;
    v50 = v31;
    recta = v29;
    width = v59.size.width;
    height = v59.size.height;
    MinY = CGRectGetMinY(v59);
    v60.origin.x = x;
    v60.origin.y = y;
    v60.size.width = width;
    v60.size.height = height;
    v45 = CGRectGetHeight(v60);
    v61.size.height = v50;
    MaxY = MinY + v45 * 0.75;
    v61.origin.y = v52;
    v61.origin.x = v53;
    v61.size.width = recta;
    v46 = CGRectGetMaxY(v61);
    if (MaxY >= v46)
    {
      MaxY = v46;
    }
  }

  v62.origin.x = v36;
  v62.origin.y = v37;
  v62.size.width = v38;
  v62.size.height = v39;
  v47 = CGRectGetWidth(v62);
  v63.origin.x = v36;
  v63.origin.y = v37;
  v63.size.width = v38;
  v63.size.height = v39;
  [(PBFPosterExtensionDataStoreXPCServiceGlue *)self _normalizedBounds:0.0 forScreenBounds:MaxY, v47, CGRectGetHeight(v63) - MaxY, v36, v37, v38, v39];
  v18 = 0;
LABEL_12:
  v48 = [MEMORY[0x277CCAE60] bs_valueWithCGRect:{v19, v20, v21, v22, *&MinY}];
  completionCopy[2](completionCopy, v48, v18);
}

- (void)server:(id)server fetchLimitedOcclusionBoundsForPosterConfiguration:(id)configuration orientation:(int64_t)orientation completion:(id)completion
{
  v30[1] = *MEMORY[0x277D85DE8];
  serverCopy = server;
  configurationCopy = configuration;
  completionCopy = completion;
  if ((orientation - 1) >= 4)
  {
    v13 = MEMORY[0x277CCA9B8];
    v29 = *MEMORY[0x277CCA470];
    v30[0] = @"orientation must be a valid UIDeviceOrientation.";
    v14 = MEMORY[0x277CBEAC0];
    v15 = v30;
    v16 = &v29;
  }

  else
  {
    if ([(PBFPosterExtensionDataStoreXPCServiceGlue *)self _hasValidConfigurationForPoster:configurationCopy])
    {
LABEL_7:
      [(PBFPosterExtensionDataStoreXPCServiceGlue *)self _screenBoundsForOrientation:orientation];
      v20 = v19;
      v22 = v21;
      v24 = v23;
      v26 = v25;
      [(CSProminentLayoutController *)self->_layoutController frameForElements:1 variant:1 withBoundingRect:?];
      [(PBFPosterExtensionDataStoreXPCServiceGlue *)self _normalizedBounds:v31.origin.x forScreenBounds:v31.origin.y, v31.size.width, CGRectGetHeight(v31) * 0.75, v20, v22, v24, v26];
      v18 = [MEMORY[0x277CCAE60] bs_valueWithCGRect:?];
      completionCopy[2](completionCopy, v18, 0);
      goto LABEL_8;
    }

    v13 = MEMORY[0x277CCA9B8];
    v27 = *MEMORY[0x277CCA470];
    v28 = @"configuration must be a valid PRSPosterConfiguration.";
    v14 = MEMORY[0x277CBEAC0];
    v15 = &v28;
    v16 = &v27;
  }

  v17 = [v14 dictionaryWithObjects:v15 forKeys:v16 count:1];
  v18 = [v13 pbf_generalErrorWithCode:1 userInfo:v17];

  if (!v18)
  {
    goto LABEL_7;
  }

  (completionCopy)[2](completionCopy, 0, v18);
LABEL_8:
}

- (BOOL)_hasComplicationsForPosterConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v9 = 0;
  v4 = [configurationCopy pr_loadComplicationLayoutWithError:&v9];
  v5 = v9;
  if (v5)
  {
    complications = PBFLogCommon();
    if (os_log_type_enabled(complications, OS_LOG_TYPE_ERROR))
    {
      [(PBFPosterExtensionDataStoreXPCServiceGlue *)configurationCopy _hasComplicationsForPosterConfiguration:v5, complications];
    }

    v7 = 0;
  }

  else
  {
    complications = [v4 complications];
    v7 = [complications count]!= 0;
  }

  return v7;
}

- (CGRect)_screenBoundsForOrientation:(int64_t)orientation
{
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v22.origin.x = v6;
  v22.origin.y = v8;
  v22.size.width = v10;
  v22.size.height = v12;
  Width = CGRectGetWidth(v22);
  v23.origin.x = v6;
  v23.origin.y = v8;
  v23.size.width = v10;
  v23.size.height = v12;
  Height = CGRectGetHeight(v23);
  if (Width >= Height)
  {
    v15 = Width;
  }

  else
  {
    v15 = Height;
  }

  v24.origin.x = v6;
  v24.origin.y = v8;
  v24.size.width = v10;
  v24.size.height = v12;
  v16 = CGRectGetWidth(v24);
  v25.origin.x = v6;
  v25.origin.y = v8;
  v25.size.width = v10;
  v25.size.height = v12;
  v17 = CGRectGetHeight(v25);
  if (v16 < v17)
  {
    v17 = v16;
  }

  if ((orientation - 1) >= 2)
  {
    v18 = v15;
  }

  else
  {
    v18 = v17;
  }

  if ((orientation - 1) >= 2)
  {
    v19 = v17;
  }

  else
  {
    v19 = v15;
  }

  v20 = 0.0;
  v21 = 0.0;
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v21;
  result.origin.x = v20;
  return result;
}

- (CGRect)_cutoutBoundsForObstructionBounds:(CGRect)bounds orientation:(int64_t)orientation
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  [(PBFPosterExtensionDataStoreXPCServiceGlue *)self _screenBoundsForOrientation:orientation];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v22.origin.x = x;
  v22.origin.y = y;
  v22.size.width = width;
  v22.size.height = height;
  MaxY = CGRectGetMaxY(v22);
  v23.origin.x = v9;
  v23.origin.y = v11;
  v23.size.width = v13;
  v23.size.height = v15;
  v17 = CGRectGetWidth(v23);
  v24.origin.x = v9;
  v24.origin.y = v11;
  v24.size.width = v13;
  v24.size.height = v15;
  v18 = CGRectGetHeight(v24) - MaxY;
  v19 = 0.0;
  v20 = MaxY;
  v21 = v17;
  result.size.height = v18;
  result.size.width = v21;
  result.origin.y = v20;
  result.origin.x = v19;
  return result;
}

- (CGRect)_normalizedBounds:(CGRect)bounds orientation:(int64_t)orientation
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  [(PBFPosterExtensionDataStoreXPCServiceGlue *)self _screenBoundsForOrientation:orientation];

  [(PBFPosterExtensionDataStoreXPCServiceGlue *)self _normalizedBounds:x forScreenBounds:y, width, height, v9, v10, v11, v12];
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (CGRect)_normalizedBounds:(CGRect)bounds forScreenBounds:(CGRect)screenBounds
{
  height = screenBounds.size.height;
  width = screenBounds.size.width;
  y = screenBounds.origin.y;
  x = screenBounds.origin.x;
  v17 = bounds.size.height;
  v8 = bounds.size.width;
  v9 = bounds.origin.y;
  v10 = bounds.origin.x;
  v11 = CGRectGetWidth(screenBounds);
  v18.origin.x = x;
  v18.origin.y = y;
  v18.size.width = width;
  v18.size.height = height;
  v12 = CGRectGetHeight(v18);
  v13 = v9 / v12;
  v14 = v8 / v11;
  v15 = v17 / v12;
  v16 = v10 / v11;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v16;
  return result;
}

- (CGRect)_prominentObstructionForConfiguration:(id)configuration orientation:(int64_t)orientation
{
  v6 = [(PBFPosterExtensionDataStoreXPCServiceGlue *)self _hasComplicationsForPosterConfiguration:configuration];

  [(PBFPosterExtensionDataStoreXPCServiceGlue *)self _prominentObstructionForOrientation:orientation showingComplications:v6];
  result.size.height = v10;
  result.size.width = v9;
  result.origin.y = v8;
  result.origin.x = v7;
  return result;
}

- (CGRect)_prominentObstructionForOrientation:(int64_t)orientation showingComplications:(BOOL)complications
{
  if (complications)
  {
    v5 = 11;
  }

  else
  {
    v5 = 3;
  }

  [(PBFPosterExtensionDataStoreXPCServiceGlue *)self _screenBoundsForOrientation:orientation];
  layoutController = self->_layoutController;

  [(CSProminentLayoutController *)layoutController frameForElements:v5 variant:1 withBoundingRect:?];
  result.size.height = v10;
  result.size.width = v9;
  result.origin.y = v8;
  result.origin.x = v7;
  return result;
}

- (CGRect)_unbypassableProminentObstructionForOrientation:(int64_t)orientation showingComplications:(BOOL)complications
{
  [(PBFPosterExtensionDataStoreXPCServiceGlue *)self _screenBoundsForOrientation:orientation, complications];
  layoutController = self->_layoutController;

  [(CSProminentLayoutController *)layoutController frameForElements:2 variant:1 withBoundingRect:?];
  result.size.height = v9;
  result.size.width = v8;
  result.origin.y = v7;
  result.origin.x = v6;
  return result;
}

- (void)server:(id)server updateToSelectedConfigurationMatchingUUID:(id)d role:(id)role from:(id)from completion:(id)completion
{
  dCopy = d;
  roleCopy = role;
  fromCopy = from;
  completionCopy = completion;
  v19 = 0;
  v15 = [(PBFPosterExtensionDataStoreXPCServiceGlue *)self _dataStoreWithError:&v19];
  v16 = v19;
  if (v15)
  {
    v18 = 0;
    [v15 updateSelectedPosterUUID:dCopy role:roleCopy from:fromCopy error:&v18];
    v17 = v18;

    v16 = v17;
  }

  completionCopy[2](completionCopy, v16);
}

- (void)server:(id)server fetchSelectedPosterForRole:(id)role completion:(id)completion
{
  roleCopy = role;
  completionCopy = completion;
  v15 = 0;
  v9 = [(PBFPosterExtensionDataStoreXPCServiceGlue *)self _dataStoreWithError:&v15];
  v10 = v15;
  if (v9)
  {
    v14 = 0;
    v11 = [v9 selectedPosterForRole:roleCopy error:&v14];
    v12 = v14;

    _path = [v11 _path];

    completionCopy[2](completionCopy, _path, v12);
    v10 = v12;
  }

  else
  {
    completionCopy[2](completionCopy, 0, v10);
  }
}

- (void)server:(id)server fetchActivePosterForRole:(id)role completion:(id)completion
{
  completionCopy = completion;
  v15 = 0;
  v9 = [(PBFPosterExtensionDataStoreXPCServiceGlue *)self server:server fetchActivePosterForRole:role error:&v15];
  v10 = v9;
  if (v9)
  {
    lockScreenPosterConfiguration = [v9 lockScreenPosterConfiguration];
    _path = [lockScreenPosterConfiguration _path];

    homeScreenPosterConfiguration = [v10 homeScreenPosterConfiguration];
    _path2 = [homeScreenPosterConfiguration _path];

    completionCopy[2](completionCopy, _path2, _path, 0);
  }

  else
  {
    completionCopy[2](completionCopy, 0, 0, v15);
  }
}

- (id)server:(id)server fetchActivePosterForRole:(id)role error:(id *)error
{
  roleCopy = role;
  v8 = [(PBFPosterExtensionDataStoreXPCServiceGlue *)self _dataStoreWithError:error];
  v9 = v8;
  if (v8)
  {
    v18 = 0;
    v10 = [v8 activePosterForRole:roleCopy assocPoster:&v18 error:error];
    if (v10)
    {
      v11 = v18;
      _path = [v10 _path];
      _path2 = [v11 _path];

      v14 = [objc_alloc(MEMORY[0x277D3E968]) _initWithPath:_path];
      if (_path2)
      {
        v15 = [objc_alloc(MEMORY[0x277D3E968]) _initWithPath:_path2];
      }

      else
      {
        v15 = 0;
      }

      v16 = [objc_alloc(MEMORY[0x277D3E920]) initWithLockScreenPosterConfiguration:v14 homeScreenPosterConfiguration:v15];
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (void)server:(id)server fetchFocusUUIDForConfiguration:(id)configuration completion:(id)completion
{
  configurationCopy = configuration;
  completionCopy = completion;
  v16 = 0;
  v9 = [(PBFPosterExtensionDataStoreXPCServiceGlue *)self _dataStoreWithError:&v16];
  v10 = v16;
  v11 = v10;
  if (!v9 || v10)
  {
    completionCopy[2](completionCopy, 0, v10);
  }

  else
  {
    v12 = [objc_alloc(MEMORY[0x277D3ED58]) _initWithPath:configurationCopy];
    v15 = 0;
    v13 = [v12 loadFocusConfigurationWithError:&v15];
    v11 = v15;
    activityUUID = [v13 activityUUID];
    (completionCopy)[2](completionCopy, activityUUID, v11);
  }
}

- (void)server:(id)server removeAllFocusConfigurationsMatchingFocusUUID:(id)d completion:(id)completion
{
  v35 = *MEMORY[0x277D85DE8];
  dCopy = d;
  completionCopy = completion;
  v33 = 0;
  v9 = [(PBFPosterExtensionDataStoreXPCServiceGlue *)self _dataStoreWithError:&v33];
  v10 = v33;
  v11 = v10;
  if (v9)
  {
    v24 = v10;
    v26 = v9;
    v27 = completionCopy;
    switcherConfiguration = [v9 switcherConfiguration];
    v12 = [switcherConfiguration mutableCopy];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    configurations = [v12 configurations];
    v14 = [configurations countByEnumeratingWithState:&v29 objects:v34 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v30;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v30 != v16)
          {
            objc_enumerationMutation(configurations);
          }

          v18 = *(*(&v29 + 1) + 8 * i);
          v19 = [v18 loadFocusConfigurationWithError:0];
          activityUUID = [v19 activityUUID];
          v21 = [activityUUID isEqual:dCopy];

          if (v21)
          {
            [v12 setFocusConfiguration:0 forPosterConfiguration:v18];
          }
        }

        v15 = [configurations countByEnumeratingWithState:&v29 objects:v34 count:16];
      }

      while (v15);
    }

    v28 = 0;
    v9 = v26;
    v22 = [v26 updateDataStoreForSwitcherConfiguration:v12 reason:@"remove all focus configurations XPC" error:&v28];
    v11 = v28;

    completionCopy = v27;
    if (v11)
    {
      v23 = PBFLogCommon();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        [PBFPosterExtensionDataStoreXPCServiceGlue server:removeAllFocusConfigurationsMatchingFocusUUID:completion:];
      }
    }

    v27[2](v27, v11);
  }

  else
  {
    completionCopy[2](completionCopy, v10);
  }
}

- (void)server:(id)server notifyFocusModeDidChange:(id)change completion:(id)completion
{
  v19 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  completionCopy = completion;
  v16 = 0;
  v9 = [(PBFPosterExtensionDataStoreXPCServiceGlue *)self _dataStoreWithError:&v16];
  v10 = v16;
  v11 = v10;
  if (v9)
  {
    v15 = 0;
    [v9 updateDataStoreForIncomingFocusModeChange:changeCopy error:&v15];
    v12 = v15;

    v13 = PBFLogCommon();
    v14 = v13;
    if (v12)
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [PBFPosterExtensionDataStoreXPCServiceGlue server:notifyFocusModeDidChange:completion:];
      }
    }

    else if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v18 = changeCopy;
      _os_log_impl(&dword_21B526000, v14, OS_LOG_TYPE_DEFAULT, "Successfully updated switcher configuration to match mode change to %{public}@", buf, 0xCu);
    }
  }

  else
  {
    v12 = v10;
  }

  completionCopy[2](completionCopy, v12);
}

- (void)server:(id)server notifyAvailableFocusModesDidChange:(id)change completion:(id)completion
{
  changeCopy = change;
  completionCopy = completion;
  v13 = 0;
  v9 = [(PBFPosterExtensionDataStoreXPCServiceGlue *)self _dataStoreWithError:&v13];
  v10 = v13;
  if (v9)
  {
    v12 = 0;
    [v9 updateDataStoreForIncomingAvailableFocusModeChange:changeCopy error:&v12];
    v11 = v12;

    v10 = v11;
  }

  completionCopy[2](completionCopy, v10);
}

- (void)server:(id)server notifyActiveChargerIdentifierDidUpdate:(id)update completion:(id)completion
{
  v19 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  completionCopy = completion;
  v16 = 0;
  v9 = [(PBFPosterExtensionDataStoreXPCServiceGlue *)self _dataStoreWithError:&v16];
  v10 = v16;
  v11 = v10;
  if (v9)
  {
    v15 = 0;
    [v9 updateDataStoreForIncomingActiveChargerIdentifierUpdate:updateCopy error:&v15];
    v12 = v15;

    v13 = PBFLogCommon();
    v14 = v13;
    if (v12)
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [PBFPosterExtensionDataStoreXPCServiceGlue server:notifyActiveChargerIdentifierDidUpdate:completion:];
      }
    }

    else if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v18 = updateCopy;
      _os_log_impl(&dword_21B526000, v14, OS_LOG_TYPE_DEFAULT, "Successfully updated data store for activeChargerIdentifier update to %{public}@", buf, 0xCu);
    }
  }

  else
  {
    v12 = v10;
  }

  completionCopy[2](completionCopy, v12);
}

- (void)server:(id)server prewarm:(id)prewarm completion:(id)completion
{
  prewarmCopy = prewarm;
  v11 = 0;
  completionCopy = completion;
  v9 = [(PBFPosterExtensionDataStoreXPCServiceGlue *)self _dataStoreWithError:&v11];
  v10 = v9;
  if (v9)
  {
    [v9 prewarm:prewarmCopy completion:completionCopy];
  }

  else
  {
    completionCopy[2](completionCopy, v11);
  }
}

- (void)server:(id)server overnightUpdate:(id)update completion:(id)completion
{
  updateCopy = update;
  v11 = 0;
  completionCopy = completion;
  v9 = [(PBFPosterExtensionDataStoreXPCServiceGlue *)self _dataStoreWithError:&v11];
  v10 = v9;
  if (v9)
  {
    [v9 overnightUpdate:updateCopy completion:completionCopy];
  }

  else
  {
    completionCopy[2](completionCopy, v11);
  }
}

- (void)server:(id)server gatherDataFreshnessState:(id)state
{
  v11[4] = *MEMORY[0x277D85DE8];
  stateCopy = state;
  v10 = 0;
  v6 = [(PBFPosterExtensionDataStoreXPCServiceGlue *)self _dataStoreWithError:&v10];
  if (v6)
  {
    v11[0] = @"PBFDataComponentGallery";
    v11[1] = @"PBFDataComponentDynamicDescriptors";
    v11[2] = @"PBFDataComponentStaticDescriptors";
    v11[3] = @"PBFDataComponentSnapshots";
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:4];
    v8 = [v6 dataFreshnessForComponents:v7];
    freshnessDebugDescription = [v8 freshnessDebugDescription];

    stateCopy[2](stateCopy, freshnessDebugDescription, 0);
  }

  else
  {
    stateCopy[2](stateCopy, 0, v10);
  }
}

- (void)server:(id)server refreshSnapshotForGalleryItemsMatchingDescriptorIdentifier:(id)identifier extensionIdentifier:(id)extensionIdentifier completion:(id)completion
{
  identifierCopy = identifier;
  extensionIdentifierCopy = extensionIdentifier;
  v14 = 0;
  completionCopy = completion;
  v12 = [(PBFPosterExtensionDataStoreXPCServiceGlue *)self _dataStoreWithError:&v14];
  v13 = v12;
  if (v12)
  {
    [v12 refreshSnapshotForGalleryItemsMatchingDescriptorIdentifier:identifierCopy extensionIdentifier:extensionIdentifierCopy completion:completionCopy];
  }

  else
  {
    completionCopy[2](completionCopy, v14);
  }
}

- (void)server:(id)server fetchRuntimeAssertionState:(id)state
{
  stateCopy = state;
  v10 = 0;
  v6 = [(PBFPosterExtensionDataStoreXPCServiceGlue *)self _dataStoreWithError:&v10];
  if (v10)
  {
    v7 = stateCopy[2];
    v8 = v10;
    v7(stateCopy, 0, v8);
  }

  else
  {
    v9 = 0;
    os_unfair_lock_lock(&self->_lock);
    v8 = [(PBFRuntimeAssertionManager *)self->_lock_runtimeAssertionManager debugDescription];

    os_unfair_lock_unlock(&self->_lock);
    (stateCopy[2])(stateCopy, v8, 0);
  }
}

- (void)server:(id)server fetchAssociatedHomeScreenPosterConfigurationUUID:(id)d completion:(id)completion
{
  dCopy = d;
  v11 = 0;
  completionCopy = completion;
  v9 = [(PBFPosterExtensionDataStoreXPCServiceGlue *)self _dataStoreWithError:&v11];
  v10 = v9;
  if (v9)
  {
    [v9 fetchHomeScreenAssociatedPosterConfigurationForConfigurationUUID:dCopy completion:completionCopy];
  }

  else
  {
    completionCopy[2](completionCopy, 0, v11);
  }
}

- (void)server:(id)server runMigration:(BOOL)migration migrationDescriptor:(id)descriptor completion:(id)completion
{
  migrationCopy = migration;
  v118 = *MEMORY[0x277D85DE8];
  descriptorCopy = descriptor;
  completionCopy = completion;
  _baseDataStoreURL = [(PBFPosterExtensionDataStoreXPCServiceGlue *)self _baseDataStoreURL];
  v11 = PBFLogMigration();
  v12 = os_signpost_id_generate(v11);

  v13 = PBFLogMigration();
  v14 = v13;
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_21B526000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v12, "Migration", "", buf, 2u);
  }

  os_unfair_lock_lock(&self->_lock);
  v114 = 0;
  [(PBFPosterExtensionDataStoreXPCServiceGlue *)self _lock_teardownDataStoreWithError:&v114];
  v15 = v114;
  v16 = [[PBFPosterExtensionDataStoreMigrator alloc] initWithBaseURL:_baseDataStoreURL];
  availableDataStoreVersions = [(PBFPosterExtensionDataStoreMigrator *)v16 availableDataStoreVersions];
  lastIndex = [availableDataStoreVersions lastIndex];

  v102 = v12 - 1;
  if (lastIndex == 0x7FFFFFFFFFFFFFFFLL)
  {
    v19 = v12;
    v20 = descriptorCopy;
    v21 = _baseDataStoreURL;
    v22 = PBFLogMigration();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21B526000, v22, OS_LOG_TYPE_DEFAULT, "Pre-migration; data store never ever initialized!", buf, 2u);
    }
  }

  else
  {
    v99 = v15;
    v100 = descriptorCopy;
    v19 = v12;
    v23 = [PBFPosterExtensionDataStoreIntrospector alloc];
    v21 = _baseDataStoreURL;
    v24 = [MEMORY[0x277CBEBC0] pbf_dataStoreURLForBaseURL:_baseDataStoreURL version:lastIndex];
    v25 = [(PBFPosterExtensionDataStoreIntrospector *)v23 initWithURL:v24 error:0];
    v26 = [(PBFPosterExtensionDataStoreIntrospector *)v25 numberOfPostersForRole:*MEMORY[0x277D3EEF0]];

    v27 = PBFLogMigration();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v117 = v26;
      _os_log_impl(&dword_21B526000, v27, OS_LOG_TYPE_DEFAULT, "Pre-migration number of lock screen posters: %lu", buf, 0xCu);
    }

    v22 = PBFLogMigration();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v117 = lastIndex;
      _os_log_impl(&dword_21B526000, v22, OS_LOG_TYPE_DEFAULT, "Pre-migration data store version: %lu", buf, 0xCu);
    }

    v15 = v99;
    v20 = v100;
  }

  if (!v15)
  {
    v113 = 0;
    v29 = v21;
    [(PBFPosterExtensionDataStoreXPCServiceGlue *)self _lock_performNecessaryMigrationsForDataStoreAtURL:v21 shouldForce:migrationCopy error:&v113];
    v28 = v113;
    v30 = v20;
    if (v28)
    {
      goto LABEL_15;
    }

    v112 = 0;
    v37 = [(PBFPosterExtensionDataStoreXPCServiceGlue *)self _lock_dataStoreWithError:&v112];
    v28 = v112;

    if (!v37)
    {
      goto LABEL_15;
    }

    v38 = [[PBFPosterExtensionDataStoreMigrator alloc] initWithBaseURL:v29];
    [(PBFPosterExtensionDataStoreMigrator *)v38 availableDataStoreVersions];
    v40 = v39 = v29;
    lastIndex2 = [v40 lastIndex];

    v42 = [PBFPosterExtensionDataStoreIntrospector alloc];
    v95 = v39;
    v43 = [MEMORY[0x277CBEBC0] pbf_dataStoreURLForBaseURL:v39 version:lastIndex2];
    v111 = 0;
    v44 = [(PBFPosterExtensionDataStoreIntrospector *)v42 initWithURL:v43 error:&v111];
    v96 = v111;

    v105 = v44;
    v45 = [(PBFPosterExtensionDataStoreIntrospector *)v44 numberOfPostersForRole:*MEMORY[0x277D3EEF0]];
    v46 = PBFLogMigration();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v117 = v45;
      _os_log_impl(&dword_21B526000, v46, OS_LOG_TYPE_DEFAULT, "Post-migration number of lock screen posters: %lu", buf, 0xCu);
    }

    v47 = PBFLogMigration();
    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v117 = lastIndex2;
      _os_log_impl(&dword_21B526000, v47, OS_LOG_TYPE_DEFAULT, "Post-migration data store version: %lu", buf, 0xCu);
    }

    v29 = v95;
    if (v96)
    {
      homeScreenTintColor2 = PBFLogMigration();
      v30 = v20;
      if (os_log_type_enabled(homeScreenTintColor2, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v117 = v96;
        _os_log_impl(&dword_21B526000, homeScreenTintColor2, OS_LOG_TYPE_DEFAULT, "Post-migration introspector error: %{public}@", buf, 0xCu);
      }

      v32 = v19;
      v33 = v102;
LABEL_73:

LABEL_74:
      v31 = v96;
      goto LABEL_18;
    }

    v30 = v20;
    homeScreenTintColor = [v20 homeScreenTintColor];
    if (homeScreenTintColor)
    {
      isHomeScreenDim = homeScreenTintColor;
      v32 = v19;
    }

    else
    {
      homeScreenIconTintSource = [v20 homeScreenIconTintSource];
      v32 = v19;
      if (!homeScreenIconTintSource)
      {
        isHomeScreenDim = [v30 isHomeScreenDim];
        v33 = v102;
        if (([isHomeScreenDim BOOLValue] & 1) == 0)
        {
          homeScreenIconStyle = [v30 homeScreenIconStyle];
          if (!homeScreenIconStyle)
          {
            homeScreenIconStyle = [v30 homeScreenIconStyleVariant];
            if (!homeScreenIconStyle)
            {
              homeScreenIconStyle = [v30 homeScreenIconSize];
              if (!homeScreenIconStyle)
              {
                homeScreenIconStyleVariantsForStyles = [v30 homeScreenIconStyleVariantsForStyles];

                if (!homeScreenIconStyleVariantsForStyles)
                {
                  goto LABEL_74;
                }

                goto LABEL_43;
              }
            }
          }
        }

LABEL_42:

LABEL_43:
        homeScreenTintColor2 = [v30 homeScreenTintColor];
        isHomeScreenDim2 = [v30 isHomeScreenDim];
        homeScreenIconTintSource2 = [v30 homeScreenIconTintSource];
        homeScreenIconSize = [v30 homeScreenIconSize];
        homeScreenIconStyle2 = [v30 homeScreenIconStyle];
        homeScreenIconStyleVariant = [v30 homeScreenIconStyleVariant];
        homeScreenIconStyleVariantsForStyles2 = [v30 homeScreenIconStyleVariantsForStyles];
        v88 = [(PBFPosterExtensionDataStoreIntrospector *)v105 sortedPosterUUIDsForRole:*MEMORY[0x277D3EBC0] error:0];
        if ([v88 count])
        {
          selfCopy = self;
          v53 = 0x277D3E000;
          v87 = homeScreenTintColor2;
          v94 = homeScreenIconStyleVariant;
          v101 = v30;
          v103 = objc_opt_new();
          if (homeScreenTintColor2)
          {
            uIColor = [homeScreenTintColor2 UIColor];
            v54 = objc_opt_new();
            [v54 setAccentColor:uIColor];
            v55 = MEMORY[0x277D3E9C8];
            v56 = MEMORY[0x277CCABB0];
            [v54 variation];
            v57 = [v56 numberWithDouble:?];
            v58 = MEMORY[0x277CCABB0];
            [v54 saturation];
            v59 = [v58 numberWithDouble:?];
            v60 = v28;
            v61 = MEMORY[0x277CCABB0];
            [v54 luminance];
            v62 = [v61 numberWithDouble:?];
            v63 = [v55 posterUpdateHomeScreenTintWithVariation:v57 saturation:v59 luminance:v62 alpha:&unk_282D0A2F8];
            [v103 bs_safeAddObject:v63];

            v53 = 0x277D3E000uLL;
            v28 = v60;

            homeScreenIconStyleVariant = v94;
            homeScreenTintColor2 = v87;
          }

          if (isHomeScreenDim2)
          {
            v64 = [*(v53 + 2504) posterUpdateHomeScreenAppearanceDimWithValue:{objc_msgSend(isHomeScreenDim2, "BOOLValue")}];
            [v103 bs_safeAddObject:v64];

            homeScreenIconStyleVariant = v94;
          }

          if (homeScreenIconSize)
          {
            v65 = MEMORY[0x277D3E9C8];
            v66 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(homeScreenIconSize, "isEqual:", *MEMORY[0x277D3EE90])}];
            v67 = [v65 posterUpdateShouldUseLargeHomeScreenIcons:v66];
            [v103 bs_safeAddObject:v67];

            homeScreenIconStyleVariant = v94;
            homeScreenTintColor2 = v87;
          }

          if (homeScreenIconStyle2)
          {
            v68 = [MEMORY[0x277D3E9C8] posterUpdateHomeScreenIconUserInterfaceStyle:homeScreenIconStyle2];
            [v103 bs_safeAddObject:v68];

            homeScreenIconStyleVariant = v94;
          }

          self = selfCopy;
          if (homeScreenIconStyleVariant)
          {
            v69 = [MEMORY[0x277D3E9C8] posterUpdateHomeScreenIconUserInterfaceStyleVariant:homeScreenIconStyleVariant];
            [v103 bs_safeAddObject:v69];

            homeScreenIconStyleVariant = v94;
          }

          if (homeScreenIconStyleVariantsForStyles2)
          {
            v70 = [MEMORY[0x277D3E9C8] posterUpdateUserSelectedHomeScreenIconStyleVariantsForTypes:?];
            [v103 bs_safeAddObject:v70];

            homeScreenIconStyleVariant = v94;
          }

          if (homeScreenIconTintSource2)
          {
            v71 = [MEMORY[0x277D3E9C8] posterUpdateHomeScreenIconTintSource:homeScreenIconTintSource2];
            [v103 bs_safeAddObject:v71];

            homeScreenIconStyleVariant = v94;
          }

          if ([v103 count])
          {
            v85 = v28;
            v98 = completionCopy;
            v109 = 0u;
            v110 = 0u;
            v107 = 0u;
            v108 = 0u;
            v72 = v88;
            v73 = [v72 countByEnumeratingWithState:&v107 objects:v115 count:16];
            v74 = v103;
            if (v73)
            {
              v75 = v73;
              v76 = *v108;
              do
              {
                for (i = 0; i != v75; ++i)
                {
                  if (*v108 != v76)
                  {
                    objc_enumerationMutation(v72);
                  }

                  v78 = [(PBFPosterExtensionDataStoreIntrospector *)v105 posterWithUUID:*(*(&v107 + 1) + 8 * i)];
                  _path = [v78 _path];
                  v80 = [MEMORY[0x277D3E9F0] updaterForPath:_path];
                  v106 = 0;
                  [v80 applyUpdatesLocally:v74 error:&v106];
                  v81 = v106;
                  if (v81)
                  {
                    v82 = PBFLogMigration();
                    if (os_log_type_enabled(v82, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 138543362;
                      v117 = v81;
                      _os_log_error_impl(&dword_21B526000, v82, OS_LOG_TYPE_ERROR, "tint color updates failed to apply: %{public}@", buf, 0xCu);
                    }

                    v74 = v103;
                  }
                }

                v75 = [v72 countByEnumeratingWithState:&v107 objects:v115 count:16];
              }

              while (v75);
            }

            v30 = v101;
            v33 = v102;
            completionCopy = v98;
            self = selfCopy;
            v28 = v85;
            homeScreenTintColor2 = v87;
            homeScreenIconStyleVariant = v94;
          }

          v29 = v95;
          v15 = 0;
        }

        goto LABEL_73;
      }

      isHomeScreenDim = homeScreenIconTintSource;
    }

    v33 = v102;
    goto LABEL_42;
  }

  v28 = 0;
  v29 = v21;
  v30 = v20;
LABEL_15:
  v31 = PBFLogMigration();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
  {
    [PBFPosterExtensionDataStoreXPCServiceGlue server:runMigration:migrationDescriptor:completion:];
  }

  v32 = v19;
  v33 = v102;
LABEL_18:

  os_unfair_lock_unlock(&self->_lock);
  v34 = PBFLogMigration();
  v35 = v34;
  if (v33 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v34))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_21B526000, v35, OS_SIGNPOST_INTERVAL_END, v32, "Migration", "", buf, 2u);
  }

  [(PBFPosterExtensionDataStoreXPCServiceGlue *)self _postDidTearDownNotification];
  if (completionCopy)
  {
    if (v15)
    {
      v36 = v15;
    }

    else
    {
      v36 = v28;
    }

    (completionCopy)[2](completionCopy, v36);
  }
}

- (void)server:(id)server clearMigrationFlags:(id)flags
{
  flagsCopy = flags;
  v6 = 0;
  v5 = [objc_opt_class() _clearMigrationFlagsWithError:&v6];
  flagsCopy[2](flagsCopy, v5, v6);
}

- (void)server:(id)server updatePosterConfigurationMatchingUUID:(id)d updates:(id)updates completion:(id)completion
{
  dCopy = d;
  updatesCopy = updates;
  v14 = 0;
  completionCopy = completion;
  v12 = [(PBFPosterExtensionDataStoreXPCServiceGlue *)self _dataStoreWithError:&v14];
  v13 = v12;
  if (v12)
  {
    [v12 updatePosterConfigurationMatchingUUID:dCopy updates:updatesCopy completion:completionCopy];
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 0, 0, v14);
  }
}

- (void)server:(id)server updatePosterConfiguration:(id)configuration updates:(id)updates completion:(id)completion
{
  v22[1] = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  updatesCopy = updates;
  completionCopy = completion;
  v20 = 0;
  v12 = [(PBFPosterExtensionDataStoreXPCServiceGlue *)self _dataStoreWithError:&v20];
  v13 = v20;
  if (v12)
  {
    if (configurationCopy)
    {
      v14 = objc_alloc(MEMORY[0x277D3ED58]);
      _path = [configurationCopy _path];
      v16 = [v14 _initWithPath:_path];

      [v12 updatePosterConfiguration:v16 updates:updatesCopy completion:completionCopy];
    }

    else
    {
      v17 = MEMORY[0x277CCA9B8];
      v21 = *MEMORY[0x277CCA470];
      v22[0] = @"nil configuration specified";
      v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:&v21 count:1];
      v19 = [v17 pbf_generalErrorWithCode:1 userInfo:v18];
      (*(completionCopy + 2))(completionCopy, 0, 0, v19);
    }
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 0, 0, v13);
  }
}

- (void)server:(id)server fetchArchivedDataStoreNamesWithCompletion:(id)completion
{
  completionCopy = completion;
  _baseDataStoreURL = [(PBFPosterExtensionDataStoreXPCServiceGlue *)self _baseDataStoreURL];
  pbf_archivedDataStoreBaseURL = [MEMORY[0x277CBEBC0] pbf_archivedDataStoreBaseURL];
  v7 = [[PBFDataStoreArchiveAdjudicator alloc] initWithDataStoreBaseURL:_baseDataStoreURL archiveBaseURL:pbf_archivedDataStoreBaseURL];
  archiveNames = [(PBFDataStoreArchiveAdjudicator *)v7 archiveNames];
  completionCopy[2](completionCopy, archiveNames, 0);
}

- (void)_stashCurrentDataStoreWithName:(id)name url:(id)url options:(id)options withError:(id *)error
{
  nameCopy = name;
  urlCopy = url;
  optionsCopy = options;
  os_unfair_lock_lock(&self->_lock);
  v32 = 0;
  [(PBFPosterExtensionDataStoreXPCServiceGlue *)self _lock_teardownDataStoreWithError:&v32];
  v13 = v32;
  if (v13)
  {
    os_unfair_lock_unlock(&self->_lock);
    v14 = v13;
    *error = v13;
  }

  else
  {
    v28 = nameCopy;
    _baseDataStoreURL = [(PBFPosterExtensionDataStoreXPCServiceGlue *)self _baseDataStoreURL];
    pbf_archivedDataStoreBaseURL = [MEMORY[0x277CBEBC0] pbf_archivedDataStoreBaseURL];
    v17 = [[PBFPosterExtensionDataStoreMigrator alloc] initWithBaseURL:_baseDataStoreURL];
    [(PBFPosterExtensionDataStoreMigrator *)v17 archiveDataStoresBeforeCurrentDataStoreVersion];
    availableDataStoreVersions = [(PBFPosterExtensionDataStoreMigrator *)v17 availableDataStoreVersions];
    lastIndex = [availableDataStoreVersions lastIndex];

    v29 = _baseDataStoreURL;
    v20 = [[PBFDataStoreArchiveAdjudicator alloc] initWithDataStoreBaseURL:_baseDataStoreURL archiveBaseURL:pbf_archivedDataStoreBaseURL];
    v21 = v20;
    if (urlCopy)
    {
      v30 = 0;
      v22 = &v30;
      v23 = [(PBFDataStoreArchiveAdjudicator *)v20 archiveDataStoreVersion:lastIndex toURL:urlCopy options:optionsCopy removeAfterSuccess:0 error:&v30];
      nameCopy = v28;
    }

    else
    {
      v31 = 0;
      v22 = &v31;
      nameCopy = v28;
      v24 = [(PBFDataStoreArchiveAdjudicator *)v20 archiveDataStoreVersion:lastIndex name:v28 options:optionsCopy removeAfterSuccess:0 error:&v31];
    }

    v25 = *v22;

    os_unfair_lock_unlock(&self->_lock);
    v26 = [(PBFPosterExtensionDataStoreXPCServiceGlue *)self _dataStoreWithError:0];
    if (v25)
    {
      if (error)
      {
        v27 = v25;
        *error = v25;
      }
    }

    else
    {
      [(PBFPosterExtensionDataStoreXPCServiceGlue *)self _postDidTearDownNotification];
    }
  }
}

- (void)server:(id)server stashCurrentDataStoreWithName:(id)name options:(id)options completion:(id)completion
{
  v10 = 0;
  completionCopy = completion;
  [(PBFPosterExtensionDataStoreXPCServiceGlue *)self _stashCurrentDataStoreWithName:name url:0 options:options withError:&v10];
  completionCopy[2](completionCopy, v10);
}

- (void)server:(id)server restoreArchivedDataStoreNamed:(id)named backupExistingDataStore:(BOOL)store completion:(id)completion
{
  storeCopy = store;
  namedCopy = named;
  completionCopy = completion;
  os_unfair_lock_lock(&self->_lock);
  v23 = 0;
  [(PBFPosterExtensionDataStoreXPCServiceGlue *)self _lock_teardownDataStoreWithError:&v23];
  v11 = v23;
  if (v11)
  {
    os_unfair_lock_unlock(&self->_lock);
    completionCopy[2](completionCopy, v11);
  }

  else
  {
    _baseDataStoreURL = [(PBFPosterExtensionDataStoreXPCServiceGlue *)self _baseDataStoreURL];
    pbf_archivedDataStoreBaseURL = [MEMORY[0x277CBEBC0] pbf_archivedDataStoreBaseURL];
    v14 = [[PBFPosterExtensionDataStoreMigrator alloc] initWithBaseURL:_baseDataStoreURL];
    [(PBFPosterExtensionDataStoreMigrator *)v14 archiveDataStoresBeforeCurrentDataStoreVersion];

    v15 = [[PBFDataStoreArchiveAdjudicator alloc] initWithDataStoreBaseURL:_baseDataStoreURL archiveBaseURL:pbf_archivedDataStoreBaseURL];
    v16 = [(PBFDataStoreArchiveAdjudicator *)v15 archiveForName:namedCopy];
    v22 = 0;
    [(PBFDataStoreArchiveAdjudicator *)v15 restoreArchive:v16 backupExistingDataStoreIfPossible:storeCopy error:&v22];
    v17 = v22;

    if (!v17)
    {
      [(PBFPosterExtensionDataStoreXPCServiceGlue *)self _lock_reapTransientData:1];
    }

    v21 = 0;
    v18 = [(PBFPosterExtensionDataStoreXPCServiceGlue *)self _lock_dataStoreWithError:&v21];
    v19 = v21;
    os_unfair_lock_unlock(&self->_lock);
    if (v17)
    {
      v20 = v17;
    }

    else
    {
      v20 = v19;
    }

    completionCopy[2](completionCopy, v20);

    if (!v20)
    {
      [(PBFPosterExtensionDataStoreXPCServiceGlue *)self _postDidTearDownNotification];
    }

    completionCopy = v17;
  }
}

- (void)server:(id)server deleteArchivedDataStoreNamed:(id)named completion:(id)completion
{
  completionCopy = completion;
  namedCopy = named;
  _baseDataStoreURL = [(PBFPosterExtensionDataStoreXPCServiceGlue *)self _baseDataStoreURL];
  pbf_archivedDataStoreBaseURL = [MEMORY[0x277CBEBC0] pbf_archivedDataStoreBaseURL];
  v11 = [[PBFDataStoreArchiveAdjudicator alloc] initWithDataStoreBaseURL:_baseDataStoreURL archiveBaseURL:pbf_archivedDataStoreBaseURL];
  v12 = [(PBFDataStoreArchiveAdjudicator *)v11 archiveForName:namedCopy];

  v14 = 0;
  [(PBFDataStoreArchiveAdjudicator *)v11 deleteArchive:v12 error:&v14];
  v13 = v14;

  completionCopy[2](completionCopy, v13);
}

- (void)server:(id)server exportArchivedDataStoreNamed:(id)named completion:(id)completion
{
  v20[1] = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  namedCopy = named;
  _baseDataStoreURL = [(PBFPosterExtensionDataStoreXPCServiceGlue *)self _baseDataStoreURL];
  pbf_archivedDataStoreBaseURL = [MEMORY[0x277CBEBC0] pbf_archivedDataStoreBaseURL];
  v11 = [[PBFDataStoreArchiveAdjudicator alloc] initWithDataStoreBaseURL:_baseDataStoreURL archiveBaseURL:pbf_archivedDataStoreBaseURL];
  v12 = [(PBFDataStoreArchiveAdjudicator *)v11 archiveForName:namedCopy];

  if (v12)
  {
    v13 = MEMORY[0x277CBEA90];
    archiveURL = [v12 archiveURL];
    v18 = 0;
    v15 = [v13 dataWithContentsOfURL:archiveURL options:8 error:&v18];
    v16 = v18;
  }

  else
  {
    v17 = MEMORY[0x277CCA9B8];
    v19 = *MEMORY[0x277CCA470];
    v20[0] = @"Data store could not be exported for an unknown reason which evades all possible explanation.";
    archiveURL = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v19 count:1];
    v16 = [v17 pbf_generalErrorWithCode:0 userInfo:archiveURL];
    v15 = 0;
  }

  completionCopy[2](completionCopy, v15, v16);
}

- (void)server:(id)server exportCurrentDataStoreToURL:(id)l options:(id)options sandboxToken:(id)token error:(id *)error
{
  serverCopy = server;
  lCopy = l;
  optionsCopy = options;
  tokenCopy = token;
  v16 = tokenCopy;
  if (tokenCopy)
  {
    [tokenCopy bytes];
    v17 = sandbox_extension_consume();
  }

  else
  {
    v17 = -1;
  }

  v20 = 0;
  [(PBFPosterExtensionDataStoreXPCServiceGlue *)self _stashCurrentDataStoreWithName:0 url:lCopy options:optionsCopy withError:&v20];
  v18 = v20;
  if (v17 != -1)
  {
    sandbox_extension_release();
  }

  v19 = v18;
  *error = v18;
}

- (void)server:(id)server ignoreExtension:(id)extension completion:(id)completion
{
  extensionCopy = extension;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __79__PBFPosterExtensionDataStoreXPCServiceGlue_server_ignoreExtension_completion___block_invoke;
  v9[3] = &unk_2782C9CB0;
  v10 = extensionCopy;
  v8 = extensionCopy;
  [(PBFPosterExtensionDataStoreXPCServiceGlue *)self _handleLaunchServicesUpdates:v9 completion:completion];
}

- (void)server:(id)server unignoreExtension:(id)extension completion:(id)completion
{
  extensionCopy = extension;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __81__PBFPosterExtensionDataStoreXPCServiceGlue_server_unignoreExtension_completion___block_invoke;
  v9[3] = &unk_2782C9CB0;
  v10 = extensionCopy;
  v8 = extensionCopy;
  [(PBFPosterExtensionDataStoreXPCServiceGlue *)self _handleLaunchServicesUpdates:v9 completion:completion];
}

- (void)server:(id)server refreshSuggestionDescriptorsForConfigurationMatchingUUID:(id)d sessionInfo:(id)info completion:(id)completion
{
  dCopy = d;
  infoCopy = info;
  v14 = 0;
  completionCopy = completion;
  v12 = [(PBFPosterExtensionDataStoreXPCServiceGlue *)self _dataStoreWithError:&v14];
  v13 = v12;
  if (v12)
  {
    [v12 refreshSuggestionDescriptorsForConfigurationMatchingUUID:dCopy sessionInfo:infoCopy completion:completionCopy];
  }

  else
  {
    completionCopy[2](completionCopy, 0, v14);
  }
}

- (void)server:(id)server fetchSuggestionDescriptorsForConfigurationMatchingUUID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  v14 = 0;
  v9 = [(PBFPosterExtensionDataStoreXPCServiceGlue *)self _dataStoreWithError:&v14];
  v10 = v14;
  if (v9)
  {
    v13 = 0;
    v11 = [v9 fetchSuggestionDescriptorsForConfigurationMatchingUUID:dCopy error:&v13];
    v12 = v13;

    completionCopy[2](completionCopy, v11, v12);
    v10 = v12;
  }

  else
  {
    completionCopy[2](completionCopy, 0, v10);
  }
}

- (void)server:(id)server commitSuggestionsForConfigurationMatchingUUID:(id)d selectSuggestionDescriptorUUID:(id)iD completion:(id)completion
{
  dCopy = d;
  iDCopy = iD;
  v14 = 0;
  completionCopy = completion;
  v12 = [(PBFPosterExtensionDataStoreXPCServiceGlue *)self _dataStoreWithError:&v14];
  v13 = v12;
  if (v12)
  {
    [v12 commitSuggestionsForConfigurationMatchingUUID:dCopy selectSuggestionDescriptorUUID:iDCopy completion:completionCopy];
  }

  else
  {
    completionCopy[2](completionCopy, v14);
  }
}

- (void)_performPublisherChangeForDataStore:(id)store block:(id)block
{
  storeCopy = store;
  blockCopy = block;
  v7 = MEMORY[0x277D46DB8];
  currentProcess = [MEMORY[0x277D47008] currentProcess];
  v9 = [v7 pf_posterUpdateRuntimeAssertionForTarget:currentProcess explanation:@"Pushing out notifications"];

  [v9 acquireWithError:0];
  p_lock = &self->_lock;
  os_unfair_lock_lock(&self->_lock);
  if (storeCopy && self->_lock_dataStore == storeCopy)
  {
    os_unfair_lock_lock(&self->_publisherUpdateLock);
    os_unfair_lock_unlock(&self->_lock);
    blockCopy[2](blockCopy, self->_wallpaperPublisher);
    p_lock = &self->_publisherUpdateLock;
  }

  os_unfair_lock_unlock(p_lock);
  [v9 invalidate];
}

- (void)posterExtensionDataStore:(id)store didInitializeWithSwitcherConfiguration:(id)configuration withChanges:(BOOL)changes
{
  storeCopy = store;
  configurationCopy = configuration;
  if (!configurationCopy)
  {
    [PBFPosterExtensionDataStoreXPCServiceGlue posterExtensionDataStore:a2 didInitializeWithSwitcherConfiguration:? withChanges:?];
  }

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __121__PBFPosterExtensionDataStoreXPCServiceGlue_posterExtensionDataStore_didInitializeWithSwitcherConfiguration_withChanges___block_invoke;
  v12[3] = &unk_2782C9CD8;
  v13 = configurationCopy;
  changesCopy = changes;
  v11 = configurationCopy;
  [(PBFPosterExtensionDataStoreXPCServiceGlue *)self _performPublisherChangeForDataStore:storeCopy block:v12];
}

void __121__PBFPosterExtensionDataStoreXPCServiceGlue_posterExtensionDataStore_didInitializeWithSwitcherConfiguration_withChanges___block_invoke(uint64_t a1, void *a2)
{
  v14 = a2;
  v3 = [*(a1 + 32) selectedConfiguration];
  v4 = [*(a1 + 32) homeScreenPosterConfigurationForPosterConfiguration:v3];
  v5 = [*(a1 + 32) activeConfiguration];
  v6 = [*(a1 + 32) homeScreenPosterConfigurationForPosterConfiguration:v5];
  v7 = [v3 _path];
  v8 = [v4 _path];
  v9 = v8;
  if (!v8)
  {
    v9 = [v3 _path];
  }

  v10 = [v5 _path];
  v11 = [v6 _path];
  if (v11)
  {
    [v14 activateWithSelectedLockPath:v7 selectedHomePath:v9 activeLockPath:v10 activeHomePath:v11 recentlyChanged:*(a1 + 40)];
  }

  else
  {
    [v5 _path];
    v12 = v13 = v4;
    [v14 activateWithSelectedLockPath:v7 selectedHomePath:v9 activeLockPath:v10 activeHomePath:v12 recentlyChanged:*(a1 + 40)];

    v4 = v13;
  }

  if (!v8)
  {
  }
}

- (void)posterExtensionDataStore:(id)store didInitializeActivePosters:(id)posters suggestionDescriptors:(id)descriptors posterCollections:(id)collections
{
  descriptorsCopy = descriptors;
  collectionsCopy = collections;
  postersCopy = posters;
  storeCopy = store;
  v14 = objc_opt_new();
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __137__PBFPosterExtensionDataStoreXPCServiceGlue_posterExtensionDataStore_didInitializeActivePosters_suggestionDescriptors_posterCollections___block_invoke;
  v27[3] = &unk_2782C9D00;
  v15 = v14;
  v28 = v15;
  [postersCopy enumerateKeysAndObjectsUsingBlock:v27];

  v16 = objc_opt_new();
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __137__PBFPosterExtensionDataStoreXPCServiceGlue_posterExtensionDataStore_didInitializeActivePosters_suggestionDescriptors_posterCollections___block_invoke_2;
  v25[3] = &unk_2782C69B0;
  v17 = v16;
  v26 = v17;
  [collectionsCopy enumerateKeysAndObjectsUsingBlock:v25];

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __137__PBFPosterExtensionDataStoreXPCServiceGlue_posterExtensionDataStore_didInitializeActivePosters_suggestionDescriptors_posterCollections___block_invoke_4;
  v21[3] = &unk_2782C9D28;
  v22 = v15;
  v23 = descriptorsCopy;
  v24 = v17;
  v18 = v17;
  v19 = descriptorsCopy;
  v20 = v15;
  [(PBFPosterExtensionDataStoreXPCServiceGlue *)self _performPublisherChangeForDataStore:storeCopy block:v21];
}

void __137__PBFPosterExtensionDataStoreXPCServiceGlue_posterExtensionDataStore_didInitializeActivePosters_suggestionDescriptors_posterCollections___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [a3 _path];
  [*(a1 + 32) setObject:v6 forKeyedSubscript:v5];
}

void __137__PBFPosterExtensionDataStoreXPCServiceGlue_posterExtensionDataStore_didInitializeActivePosters_suggestionDescriptors_posterCollections___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [a3 bs_map:&__block_literal_global_420];
  [*(a1 + 32) setObject:v6 forKeyedSubscript:v5];
}

void __137__PBFPosterExtensionDataStoreXPCServiceGlue_posterExtensionDataStore_didInitializeActivePosters_suggestionDescriptors_posterCollections___block_invoke_4(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v5 = a2;
  [v5 activatePublishingOfRoles:v3 suggestionDescriptors:v4];
  [v5 activatePublishingOfCollectionsForRole:a1[6]];
}

- (void)posterExtensionDataStore:(id)store activePostersWereUpdatedForRoles:(id)roles suggestionDescriptors:(id)descriptors
{
  descriptorsCopy = descriptors;
  rolesCopy = roles;
  storeCopy = store;
  v11 = objc_opt_new();
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __125__PBFPosterExtensionDataStoreXPCServiceGlue_posterExtensionDataStore_activePostersWereUpdatedForRoles_suggestionDescriptors___block_invoke;
  v18[3] = &unk_2782C9D00;
  v12 = v11;
  v19 = v12;
  [rolesCopy enumerateKeysAndObjectsUsingBlock:v18];

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __125__PBFPosterExtensionDataStoreXPCServiceGlue_posterExtensionDataStore_activePostersWereUpdatedForRoles_suggestionDescriptors___block_invoke_2;
  v15[3] = &unk_2782C9D50;
  v16 = v12;
  v17 = descriptorsCopy;
  v13 = descriptorsCopy;
  v14 = v12;
  [(PBFPosterExtensionDataStoreXPCServiceGlue *)self _performPublisherChangeForDataStore:storeCopy block:v15];
}

void __125__PBFPosterExtensionDataStoreXPCServiceGlue_posterExtensionDataStore_activePostersWereUpdatedForRoles_suggestionDescriptors___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [a3 _path];
  [*(a1 + 32) setObject:v6 forKeyedSubscript:v5];
}

- (void)posterExtensionDataStore:(id)store posterCollectionsWereUpdatedForRoles:(id)roles
{
  rolesCopy = roles;
  storeCopy = store;
  v8 = objc_opt_new();
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __107__PBFPosterExtensionDataStoreXPCServiceGlue_posterExtensionDataStore_posterCollectionsWereUpdatedForRoles___block_invoke;
  v13[3] = &unk_2782C69B0;
  v9 = v8;
  v14 = v9;
  [rolesCopy enumerateKeysAndObjectsUsingBlock:v13];

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __107__PBFPosterExtensionDataStoreXPCServiceGlue_posterExtensionDataStore_posterCollectionsWereUpdatedForRoles___block_invoke_3;
  v11[3] = &unk_2782C9D78;
  v12 = v9;
  v10 = v9;
  [(PBFPosterExtensionDataStoreXPCServiceGlue *)self _performPublisherChangeForDataStore:storeCopy block:v11];
}

void __107__PBFPosterExtensionDataStoreXPCServiceGlue_posterExtensionDataStore_posterCollectionsWereUpdatedForRoles___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [a3 bs_map:&__block_literal_global_423];
  [*(a1 + 32) setObject:v6 forKeyedSubscript:v5];
}

- (void)posterExtensionDataStore:(id)store didUpdateSelectedConfiguration:(id)configuration associatedConfiguration:(id)associatedConfiguration reason:(id)reason
{
  storeCopy = store;
  configurationCopy = configuration;
  associatedConfigurationCopy = associatedConfiguration;
  reasonCopy = reason;
  if (!configurationCopy)
  {
    [PBFPosterExtensionDataStoreXPCServiceGlue posterExtensionDataStore:a2 didUpdateSelectedConfiguration:? associatedConfiguration:? reason:?];
  }

  v15 = reasonCopy;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __132__PBFPosterExtensionDataStoreXPCServiceGlue_posterExtensionDataStore_didUpdateSelectedConfiguration_associatedConfiguration_reason___block_invoke;
  v18[3] = &unk_2782C9D50;
  v19 = configurationCopy;
  v20 = associatedConfigurationCopy;
  v16 = associatedConfigurationCopy;
  v17 = configurationCopy;
  [(PBFPosterExtensionDataStoreXPCServiceGlue *)self _performPublisherChangeForDataStore:storeCopy block:v18];
}

void __132__PBFPosterExtensionDataStoreXPCServiceGlue_posterExtensionDataStore_didUpdateSelectedConfiguration_associatedConfiguration_reason___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [*(a1 + 32) _path];
  v4 = [*(a1 + 40) _path];
  if (v4)
  {
    [v6 updateSelectedLockPath:v3 selectedHomePath:v4 activeLockPath:0 activeHomePath:0];
  }

  else
  {
    v5 = [*(a1 + 32) _path];
    [v6 updateSelectedLockPath:v3 selectedHomePath:v5 activeLockPath:0 activeHomePath:0];
  }
}

- (void)posterExtensionDataStore:(id)store didUpdateActiveConfiguration:(id)configuration associatedConfiguration:(id)associatedConfiguration reason:(id)reason
{
  storeCopy = store;
  configurationCopy = configuration;
  associatedConfigurationCopy = associatedConfiguration;
  reasonCopy = reason;
  if (!configurationCopy)
  {
    [PBFPosterExtensionDataStoreXPCServiceGlue posterExtensionDataStore:a2 didUpdateActiveConfiguration:? associatedConfiguration:? reason:?];
  }

  v15 = reasonCopy;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __130__PBFPosterExtensionDataStoreXPCServiceGlue_posterExtensionDataStore_didUpdateActiveConfiguration_associatedConfiguration_reason___block_invoke;
  v18[3] = &unk_2782C9D50;
  v19 = configurationCopy;
  v20 = associatedConfigurationCopy;
  v16 = associatedConfigurationCopy;
  v17 = configurationCopy;
  [(PBFPosterExtensionDataStoreXPCServiceGlue *)self _performPublisherChangeForDataStore:storeCopy block:v18];
}

void __130__PBFPosterExtensionDataStoreXPCServiceGlue_posterExtensionDataStore_didUpdateActiveConfiguration_associatedConfiguration_reason___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [*(a1 + 32) _path];
  v4 = [*(a1 + 40) _path];
  if (v4)
  {
    [v6 updateSelectedLockPath:0 selectedHomePath:0 activeLockPath:v3 activeHomePath:v4];
  }

  else
  {
    v5 = [*(a1 + 32) _path];
    [v6 updateSelectedLockPath:0 selectedHomePath:0 activeLockPath:v3 activeHomePath:v5];
  }
}

- (void)posterExtensionDataStore:(id)store didUpdateConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __93__PBFPosterExtensionDataStoreXPCServiceGlue_posterExtensionDataStore_didUpdateConfiguration___block_invoke;
  v8[3] = &unk_2782C9D78;
  v9 = configurationCopy;
  v7 = configurationCopy;
  [(PBFPosterExtensionDataStoreXPCServiceGlue *)self _performPublisherChangeForDataStore:store block:v8];
}

void __93__PBFPosterExtensionDataStoreXPCServiceGlue_posterExtensionDataStore_didUpdateConfiguration___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 _path];
  [v3 updatePath:v4];
}

- (void)posterExtensionDataStore:(id)store posterConfiguration:(id)configuration didUpdateAssociatedHomeScreenPosterConfigurationTo:(id)to
{
  configurationCopy = configuration;
  toCopy = to;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __141__PBFPosterExtensionDataStoreXPCServiceGlue_posterExtensionDataStore_posterConfiguration_didUpdateAssociatedHomeScreenPosterConfigurationTo___block_invoke;
  v12[3] = &unk_2782C9D50;
  v13 = toCopy;
  v14 = configurationCopy;
  v10 = configurationCopy;
  v11 = toCopy;
  [(PBFPosterExtensionDataStoreXPCServiceGlue *)self _performPublisherChangeForDataStore:store block:v12];
}

void __141__PBFPosterExtensionDataStoreXPCServiceGlue_posterExtensionDataStore_posterConfiguration_didUpdateAssociatedHomeScreenPosterConfigurationTo___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v6 = [v3 _path];
  v5 = [*(a1 + 40) _path];
  [v4 updateHomePath:v6 matchingLockPath:v5];
}

- (void)posterExtensionDataStore:(id)store didUpdateSnapshotForPath:(id)path forDefinition:(id)definition
{
  storeCopy = store;
  pathCopy = path;
  definitionCopy = definition;
  if ([pathCopy isServerPosterPath])
  {
    identity = [pathCopy identity];
    type = [identity type];

    if (type == 3)
    {
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __109__PBFPosterExtensionDataStoreXPCServiceGlue_posterExtensionDataStore_didUpdateSnapshotForPath_forDefinition___block_invoke;
      v13[3] = &unk_2782C9D50;
      v14 = pathCopy;
      v15 = definitionCopy;
      [(PBFPosterExtensionDataStoreXPCServiceGlue *)self _performPublisherChangeForDataStore:storeCopy block:v13];
    }
  }
}

void __109__PBFPosterExtensionDataStoreXPCServiceGlue_posterExtensionDataStore_didUpdateSnapshotForPath_forDefinition___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  v5 = [v3 uniqueIdentifier];
  [v4 noteSnapshotUpdateForPath:v2 snapshotType:v5];
}

- (void)posterExtensionDataStore:(id)store suggestionsForPosterUUIDUpdated:(id)updated
{
  updatedCopy = updated;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __102__PBFPosterExtensionDataStoreXPCServiceGlue_posterExtensionDataStore_suggestionsForPosterUUIDUpdated___block_invoke;
  v8[3] = &unk_2782C9D78;
  v9 = updatedCopy;
  v7 = updatedCopy;
  [(PBFPosterExtensionDataStoreXPCServiceGlue *)self _performPublisherChangeForDataStore:store block:v8];
}

void __102__PBFPosterExtensionDataStoreXPCServiceGlue_posterExtensionDataStore_suggestionsForPosterUUIDUpdated___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v13 = a2;
  v3 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = [*(a1 + 32) keyEnumerator];
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [*(a1 + 32) objectForKey:v9];
        v11 = __PFServerPosterPathFromPFPosterContents();
        v12 = [v10 bs_mapNoNulls:v11];
        [v3 setObject:v12 forKeyedSubscript:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  [v13 updateSuggestionDescriptors:v3];
}

- (void)wallpaperPublisherDidReceiveObserverConnection
{
  os_unfair_lock_lock(&self->_lock);
  if (!self->_lock_dataStore)
  {
    if ([MEMORY[0x277D3EF30] platformSupportsDataMigrator] && -[PBFPosterExtensionDataStoreXPCServiceGlue _migrationIsPending](self, "_migrationIsPending"))
    {
      v3 = PBFLogDataStore();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_21B526000, v3, OS_LOG_TYPE_DEFAULT, "wallpaperPublisherDidReceiveObserverConnection: Deferring dataStore init because migration is pending!", buf, 2u);
      }
    }

    else
    {
      v4 = PBFLogDataStore();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *v10 = 0;
        _os_log_impl(&dword_21B526000, v4, OS_LOG_TYPE_DEFAULT, "wallpaperPublisherDidReceiveObserverConnection: Gonna init the datastore", v10, 2u);
      }

      v9 = 0;
      v5 = [(PBFPosterExtensionDataStoreXPCServiceGlue *)self _lock_dataStoreWithError:&v9];
      v3 = v9;
      v6 = PBFLogDataStore();
      v7 = v6;
      if (v3)
      {
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          [PBFPosterExtensionDataStoreXPCServiceGlue wallpaperPublisherDidReceiveObserverConnection];
        }
      }

      else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *v8 = 0;
        _os_log_impl(&dword_21B526000, v7, OS_LOG_TYPE_DEFAULT, "wallpaperPublisherDidReceiveObserverConnection: Successfully initialized the datastore", v8, 2u);
      }
    }
  }

  os_unfair_lock_unlock(&self->_lock);
}

void __61__PBFPosterExtensionDataStoreXPCServiceGlue_initWithOptions___block_invoke_2_cold_1(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"LegacyPoster doesn't exist please file a radar!"];;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 40));
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v6 = *(a1 + 32);
    v7 = 138544642;
    v8 = v3;
    v9 = 2114;
    v10 = v5;
    v11 = 2048;
    v12 = v6;
    v13 = 2114;
    v14 = @"PBFPosterExtensionDataStoreXPCServiceGlue.m";
    v15 = 1024;
    v16 = 131;
    v17 = 2114;
    v18 = v2;
    _os_log_fault_impl(&dword_21B526000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v7, 0x3Au);
  }
}

- (void)_lock_reapTransientData:(void *)a1 .cold.1(void *a1, char *a2)
{
  v3 = [a1 stringWithFormat:@"Deleting the transient data underlying the data store while it is still very much in use will not end well."];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a2);
    objc_claimAutoreleasedReturnValue();
    v4 = OUTLINED_FUNCTION_3();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_0_7();
    OUTLINED_FUNCTION_14(&dword_21B526000, MEMORY[0x277D86220], v6, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v7, v8, v9, v10, v11);
  }

  [v3 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_lock_reapSnapshots:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Deleting data underlying the data store while it is still very much in use will not end well."];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_7();
    OUTLINED_FUNCTION_14(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_lock_reapClassicSnapshots
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Deleting data underlying the data store while it is still very much in use will not end well."];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(self);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_7();
    OUTLINED_FUNCTION_14(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_lock_performNecessaryMigrationsForDataStoreAtURL:(char *)a1 shouldForce:error:.cold.1(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:NSURLClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_lock_performNecessaryMigrationsForDataStoreAtURL:(void *)a1 shouldForce:(NSObject *)a2 error:.cold.2(void *a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = [a1 descriptionWithMultilinePrefix:0];
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(&dword_21B526000, a2, OS_LOG_TYPE_ERROR, "Migration RBSAssertion could not be acquired: %{public}@", v4, 0xCu);
}

- (void)_lock_performNecessaryMigrationsForDataStoreAtURL:(char *)a1 shouldForce:error:.cold.3(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

void __112__PBFPosterExtensionDataStoreXPCServiceGlue_server_refreshPosterDescriptorsForExtension_sessionInfo_completion___block_invoke_362_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v3 = 138412546;
  *&v3[4] = *(a1 + 32);
  *&v3[12] = 2114;
  *&v3[14] = a2;
  OUTLINED_FUNCTION_2_1(&dword_21B526000, a2, a3, "Failed to refresh snapshots for %@: %{public}@", *v3, *&v3[8], *&v3[16], *MEMORY[0x277D85DE8]);
}

- (void)_hasComplicationsForPosterConfiguration:(NSObject *)a3 .cold.1(void *a1, uint64_t a2, NSObject *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = [a1 description];
  OUTLINED_FUNCTION_4();
  v7 = 2112;
  v8 = a2;
  _os_log_error_impl(&dword_21B526000, a3, OS_LOG_TYPE_ERROR, "Failed to load complication layout for poster configuration '%@': %@", v6, 0x16u);
}

- (void)posterExtensionDataStore:(char *)a1 didInitializeWithSwitcherConfiguration:withChanges:.cold.1(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"switcherConfig", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)posterExtensionDataStore:(char *)a1 didUpdateSelectedConfiguration:associatedConfiguration:reason:.cold.1(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"newlySelectedConfiguration", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)posterExtensionDataStore:(char *)a1 didUpdateActiveConfiguration:associatedConfiguration:reason:.cold.1(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"newlyActivatedConfiguration", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end