@interface PUSidebarDataSectionEnablementController
- (BOOL)_fromMyMacEnabledSetupObservation:(BOOL)observation;
- (PHPhotoLibrary)photoLibrary;
- (PUSidebarDataSectionEnablementController)initWithPhotoLibrary:(id)library andOptions:(unint64_t)options;
- (void)_accountStoreDidChange:(id)change;
- (void)_configureEnablementOfSectionManager:(id)manager enablementItem:(int64_t)item setupObservation:(BOOL)observation;
- (void)_observeAccountsStoreForManager:(id)manager enablementItem:(int64_t)item;
- (void)_observeDefaultsForManager:(id)manager enablementItem:(int64_t)item;
- (void)_observeMacSyncedAvailabilityForManager:(id)manager enablementItem:(int64_t)item;
- (void)_observeWallpaperAvailabilityForManager:(id)manager enablementItem:(int64_t)item;
- (void)_wallpaperAvailabilityDidChange:(id)change;
- (void)dealloc;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)preferencesDidChange;
@end

@implementation PUSidebarDataSectionEnablementController

- (PHPhotoLibrary)photoLibrary
{
  WeakRetained = objc_loadWeakRetained(&self->_photoLibrary);

  return WeakRetained;
}

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  if ((change & 1) != 0 && PXMacSyncedAssetsStatusProviderObservationContext == context)
  {
    v10[9] = v5;
    v10[10] = v6;
    sectionManagersByItemTypeForMacSyncedEnablementChange = [(PUSidebarDataSectionEnablementController *)self sectionManagersByItemTypeForMacSyncedEnablementChange];
    dictionaryRepresentation = [sectionManagersByItemTypeForMacSyncedEnablementChange dictionaryRepresentation];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __73__PUSidebarDataSectionEnablementController_observable_didChange_context___block_invoke;
    v10[3] = &unk_1E7B76D40;
    v10[4] = self;
    [dictionaryRepresentation enumerateKeysAndObjectsUsingBlock:v10];
  }
}

void __73__PUSidebarDataSectionEnablementController_observable_didChange_context___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  [v4 _configureEnablementOfSectionManager:v5 enablementItem:objc_msgSend(a2 setupObservation:{"integerValue"), 0}];
}

- (void)preferencesDidChange
{
  sectionManagersByItemTypeForDefaultsChange = [(PUSidebarDataSectionEnablementController *)self sectionManagersByItemTypeForDefaultsChange];
  dictionaryRepresentation = [sectionManagersByItemTypeForDefaultsChange dictionaryRepresentation];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __64__PUSidebarDataSectionEnablementController_preferencesDidChange__block_invoke;
  v5[3] = &unk_1E7B76D40;
  v5[4] = self;
  [dictionaryRepresentation enumerateKeysAndObjectsUsingBlock:v5];
}

void __64__PUSidebarDataSectionEnablementController_preferencesDidChange__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  [v4 _configureEnablementOfSectionManager:v5 enablementItem:objc_msgSend(a2 setupObservation:{"integerValue"), 0}];
}

- (void)_wallpaperAvailabilityDidChange:(id)change
{
  sectionManagersByItemTypeForWallpaperEnablementChange = [(PUSidebarDataSectionEnablementController *)self sectionManagersByItemTypeForWallpaperEnablementChange];
  dictionaryRepresentation = [sectionManagersByItemTypeForWallpaperEnablementChange dictionaryRepresentation];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __76__PUSidebarDataSectionEnablementController__wallpaperAvailabilityDidChange___block_invoke;
  v6[3] = &unk_1E7B76D40;
  v6[4] = self;
  [dictionaryRepresentation enumerateKeysAndObjectsUsingBlock:v6];
}

void __76__PUSidebarDataSectionEnablementController__wallpaperAvailabilityDidChange___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  [v4 _configureEnablementOfSectionManager:v5 enablementItem:objc_msgSend(a2 setupObservation:{"integerValue"), 0}];
}

- (void)_accountStoreDidChange:(id)change
{
  sectionManagerByItemTypeForAccountStoreChange = [(PUSidebarDataSectionEnablementController *)self sectionManagerByItemTypeForAccountStoreChange];
  dictionaryRepresentation = [sectionManagerByItemTypeForAccountStoreChange dictionaryRepresentation];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __67__PUSidebarDataSectionEnablementController__accountStoreDidChange___block_invoke;
  v6[3] = &unk_1E7B76D40;
  v6[4] = self;
  [dictionaryRepresentation enumerateKeysAndObjectsUsingBlock:v6];
}

void __67__PUSidebarDataSectionEnablementController__accountStoreDidChange___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  [v4 _configureEnablementOfSectionManager:v5 enablementItem:objc_msgSend(a2 setupObservation:{"integerValue"), 0}];
}

- (void)_observeMacSyncedAvailabilityForManager:(id)manager enablementItem:(int64_t)item
{
  managerCopy = manager;
  sectionManagersByItemTypeForMacSyncedEnablementChange = [(PUSidebarDataSectionEnablementController *)self sectionManagersByItemTypeForMacSyncedEnablementChange];
  v8 = [sectionManagersByItemTypeForMacSyncedEnablementChange count];

  if (!v8)
  {
    photoLibrary = [(PUSidebarDataSectionEnablementController *)self photoLibrary];
    px_macSyncedAssetsStatusProvider = [photoLibrary px_macSyncedAssetsStatusProvider];

    [px_macSyncedAssetsStatusProvider registerChangeObserver:self context:PXMacSyncedAssetsStatusProviderObservationContext];
  }

  sectionManagersByItemTypeForMacSyncedEnablementChange2 = [(PUSidebarDataSectionEnablementController *)self sectionManagersByItemTypeForMacSyncedEnablementChange];
  v11 = [MEMORY[0x1E696AD98] numberWithInteger:item];
  [sectionManagersByItemTypeForMacSyncedEnablementChange2 setObject:managerCopy forKey:v11];
}

- (void)_observeWallpaperAvailabilityForManager:(id)manager enablementItem:(int64_t)item
{
  managerCopy = manager;
  sectionManagersByItemTypeForWallpaperEnablementChange = [(PUSidebarDataSectionEnablementController *)self sectionManagersByItemTypeForWallpaperEnablementChange];
  v8 = [sectionManagersByItemTypeForWallpaperEnablementChange count];

  if (!v8)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:self selector:sel__wallpaperAvailabilityDidChange_ name:@"LemonadeWallpaperData.isFeatureAvailableChanged" object:0];
  }

  sectionManagersByItemTypeForWallpaperEnablementChange2 = [(PUSidebarDataSectionEnablementController *)self sectionManagersByItemTypeForWallpaperEnablementChange];
  v10 = [MEMORY[0x1E696AD98] numberWithInteger:item];
  [sectionManagersByItemTypeForWallpaperEnablementChange2 setObject:managerCopy forKey:v10];
}

- (void)_observeDefaultsForManager:(id)manager enablementItem:(int64_t)item
{
  managerCopy = manager;
  sectionManagersByItemTypeForDefaultsChange = [(PUSidebarDataSectionEnablementController *)self sectionManagersByItemTypeForDefaultsChange];
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:item];
  [sectionManagersByItemTypeForDefaultsChange setObject:managerCopy forKey:v8];

  if (![(PUSidebarDataSectionEnablementController *)self registeredAsPrefObserver])
  {
    [(PUSidebarDataSectionEnablementController *)self setRegisteredAsPrefObserver:1];

    PXRegisterPreferencesObserver();
  }
}

- (void)_observeAccountsStoreForManager:(id)manager enablementItem:(int64_t)item
{
  managerCopy = manager;
  sectionManagerByItemTypeForAccountStoreChange = [(PUSidebarDataSectionEnablementController *)self sectionManagerByItemTypeForAccountStoreChange];
  if (![sectionManagerByItemTypeForAccountStoreChange count])
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    v8 = *MEMORY[0x1E69BE8E8];
    pl_sharedAccountStore = [MEMORY[0x1E69BE248] pl_sharedAccountStore];
    [defaultCenter addObserver:self selector:sel__accountStoreDidChange_ name:v8 object:pl_sharedAccountStore];
  }

  v10 = [MEMORY[0x1E696AD98] numberWithInteger:item];
  [sectionManagerByItemTypeForAccountStoreChange setObject:managerCopy forKey:v10];
}

- (BOOL)_fromMyMacEnabledSetupObservation:(BOOL)observation
{
  observationCopy = observation;
  photoLibrary = [(PUSidebarDataSectionEnablementController *)self photoLibrary];
  px_macSyncedAssetsStatusProvider = [photoLibrary px_macSyncedAssetsStatusProvider];

  hasAnyAssets = [px_macSyncedAssetsStatusProvider hasAnyAssets];
  if (observationCopy)
  {
    [px_macSyncedAssetsStatusProvider registerChangeObserver:self context:PXMacSyncedAssetsStatusProviderObservationContext];
  }

  return hasAnyAssets;
}

- (void)_configureEnablementOfSectionManager:(id)manager enablementItem:(int64_t)item setupObservation:(BOOL)observation
{
  observationCopy = observation;
  managerCopy = manager;
  v22 = managerCopy;
  switch(item)
  {
    case 0:
    case 3:
    case 12:
    case 19:
      v9 = [(PUSidebarDataSectionEnablementController *)self isPhotosPicker]^ 1;
      goto LABEL_9;
    case 1:
      if ([(PUSidebarDataSectionEnablementController *)self isPhotosPicker])
      {
        managerCopy = v22;
LABEL_23:
        v9 = 1;
LABEL_29:
        isPhotosPicker3 = [managerCopy setEnabled:v9];
        goto LABEL_30;
      }

      isPhotosPicker3 = [v22 setEnabled:MEMORY[0x1B8C6D1A0]()];
      v14 = v22;
      if (observationCopy)
      {
        selfCopy4 = self;
        v16 = v22;
        v17 = 1;
LABEL_44:
        isPhotosPicker3 = [(PUSidebarDataSectionEnablementController *)selfCopy4 _observeDefaultsForManager:v16 enablementItem:v17];
LABEL_30:
        v14 = v22;
      }

LABEL_31:

      MEMORY[0x1EEE66BB8](isPhotosPicker3, v14);
      return;
    case 2:
      if ([(PUSidebarDataSectionEnablementController *)self excludesHiddenAlbum])
      {
        goto LABEL_27;
      }

      isPhotosPicker3 = [v22 setEnabled:PXPreferencesIsHiddenAlbumVisible()];
      v14 = v22;
      if (!observationCopy)
      {
        goto LABEL_31;
      }

      selfCopy4 = self;
      v16 = v22;
      v17 = 2;
      goto LABEL_44;
    case 5:
    case 6:
      photoLibrary = [(PUSidebarDataSectionEnablementController *)self photoLibrary];
      photoLibraryURL = [photoLibrary photoLibraryURL];

      if ([(PUSidebarDataSectionEnablementController *)self excludesSharedAlbum])
      {
        [v22 setEnabled:0];
      }

      else
      {
        isPhotosPicker = [(PUSidebarDataSectionEnablementController *)self isPhotosPicker];
        if (item == 5 && isPhotosPicker)
        {
          v19 = 0;
        }

        else
        {
          v19 = [MEMORY[0x1E69BE6A8] sharedStreamsEnabledForPhotoLibraryURL:photoLibraryURL];
        }

        [v22 setEnabled:v19];
        if (observationCopy)
        {
          [(PUSidebarDataSectionEnablementController *)self _observeAccountsStoreForManager:v22 enablementItem:item];
        }
      }

      goto LABEL_30;
    case 7:
      photoLibrary2 = [(PUSidebarDataSectionEnablementController *)self photoLibrary];
      px_macSyncedAssetsStatusProvider = [photoLibrary2 px_macSyncedAssetsStatusProvider];
      [v22 setEnabled:{objc_msgSend(px_macSyncedAssetsStatusProvider, "hasAnyAssets")}];

      v14 = v22;
      if (!observationCopy)
      {
        goto LABEL_31;
      }

      isPhotosPicker3 = [(PUSidebarDataSectionEnablementController *)self _observeMacSyncedAvailabilityForManager:v22 enablementItem:7];
      goto LABEL_30;
    case 8:
    case 9:
    case 17:
      goto LABEL_23;
    case 10:
      if ([(PUSidebarDataSectionEnablementController *)self isPhotosPicker])
      {
        goto LABEL_27;
      }

      isPhotosPicker3 = [v22 setEnabled:{objc_msgSend(MEMORY[0x1E69C3658], "isFeatureAvailable")}];
      v14 = v22;
      if (!observationCopy)
      {
        goto LABEL_31;
      }

      isPhotosPicker3 = [(PUSidebarDataSectionEnablementController *)self _observeWallpaperAvailabilityForManager:v22 enablementItem:10];
      goto LABEL_30;
    case 11:
      if ([(PUSidebarDataSectionEnablementController *)self isPhotosPicker])
      {
        goto LABEL_27;
      }

      isPhotosPicker3 = [v22 setEnabled:MEMORY[0x1B8C6D1A0]()];
      v14 = v22;
      if (!observationCopy)
      {
        goto LABEL_31;
      }

      selfCopy4 = self;
      v16 = v22;
      v17 = 11;
      goto LABEL_44;
    case 13:
    case 18:
      isPhotosPicker2 = [(PUSidebarDataSectionEnablementController *)self isPhotosPicker];
      goto LABEL_8;
    case 14:
    case 16:
      goto LABEL_28;
    case 15:
      if ([(PUSidebarDataSectionEnablementController *)self isPhotosPicker])
      {
LABEL_27:
        managerCopy = v22;
LABEL_28:
        v9 = 0;
      }

      else
      {
        isPhotosPicker2 = MEMORY[0x1B8C6D1D0]();
LABEL_8:
        v9 = isPhotosPicker2;
LABEL_9:
        managerCopy = v22;
      }

      goto LABEL_29;
    case 20:
      isPhotosPicker3 = [managerCopy setEnabled:PXPreferencesIsRecentlyViewedAndSharedAlbumVisible()];
      v14 = v22;
      if (!observationCopy)
      {
        goto LABEL_31;
      }

      selfCopy4 = self;
      v16 = v22;
      v17 = 20;
      goto LABEL_44;
    default:
      isPhotosPicker3 = [(PUSidebarDataSectionEnablementController *)self isPhotosPicker];
      v14 = v22;
      if (!isPhotosPicker3)
      {
        goto LABEL_31;
      }

      managerCopy = v22;
      goto LABEL_28;
  }
}

- (void)dealloc
{
  if ([(PUSidebarDataSectionEnablementController *)self registeredAsPrefObserver])
  {
    PXUnregisterPreferencesObserver();
  }

  v3.receiver = self;
  v3.super_class = PUSidebarDataSectionEnablementController;
  [(PUSidebarDataSectionEnablementController *)&v3 dealloc];
}

- (PUSidebarDataSectionEnablementController)initWithPhotoLibrary:(id)library andOptions:(unint64_t)options
{
  optionsCopy = options;
  libraryCopy = library;
  v18.receiver = self;
  v18.super_class = PUSidebarDataSectionEnablementController;
  v7 = [(PUSidebarDataSectionEnablementController *)&v18 init];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_photoLibrary, libraryCopy);
    v8->_isPhotosPicker = (optionsCopy & 2) != 0;
    v8->_excludesHiddenAlbum = (optionsCopy & 4) != 0;
    v8->_excludesSharedAlbum = (optionsCopy & 8) != 0;
    strongToWeakObjectsMapTable = [MEMORY[0x1E696AD18] strongToWeakObjectsMapTable];
    sectionManagerByItemTypeForAccountStoreChange = v8->_sectionManagerByItemTypeForAccountStoreChange;
    v8->_sectionManagerByItemTypeForAccountStoreChange = strongToWeakObjectsMapTable;

    strongToWeakObjectsMapTable2 = [MEMORY[0x1E696AD18] strongToWeakObjectsMapTable];
    sectionManagersByItemTypeForDefaultsChange = v8->_sectionManagersByItemTypeForDefaultsChange;
    v8->_sectionManagersByItemTypeForDefaultsChange = strongToWeakObjectsMapTable2;

    strongToWeakObjectsMapTable3 = [MEMORY[0x1E696AD18] strongToWeakObjectsMapTable];
    sectionManagersByItemTypeForWallpaperEnablementChange = v8->_sectionManagersByItemTypeForWallpaperEnablementChange;
    v8->_sectionManagersByItemTypeForWallpaperEnablementChange = strongToWeakObjectsMapTable3;

    strongToWeakObjectsMapTable4 = [MEMORY[0x1E696AD18] strongToWeakObjectsMapTable];
    sectionManagersByItemTypeForMacSyncedEnablementChange = v8->_sectionManagersByItemTypeForMacSyncedEnablementChange;
    v8->_sectionManagersByItemTypeForMacSyncedEnablementChange = strongToWeakObjectsMapTable4;
  }

  return v8;
}

@end