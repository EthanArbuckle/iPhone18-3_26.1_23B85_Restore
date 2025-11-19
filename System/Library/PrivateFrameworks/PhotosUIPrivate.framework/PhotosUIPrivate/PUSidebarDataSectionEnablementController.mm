@interface PUSidebarDataSectionEnablementController
- (BOOL)_fromMyMacEnabledSetupObservation:(BOOL)a3;
- (PHPhotoLibrary)photoLibrary;
- (PUSidebarDataSectionEnablementController)initWithPhotoLibrary:(id)a3 andOptions:(unint64_t)a4;
- (void)_accountStoreDidChange:(id)a3;
- (void)_configureEnablementOfSectionManager:(id)a3 enablementItem:(int64_t)a4 setupObservation:(BOOL)a5;
- (void)_observeAccountsStoreForManager:(id)a3 enablementItem:(int64_t)a4;
- (void)_observeDefaultsForManager:(id)a3 enablementItem:(int64_t)a4;
- (void)_observeMacSyncedAvailabilityForManager:(id)a3 enablementItem:(int64_t)a4;
- (void)_observeWallpaperAvailabilityForManager:(id)a3 enablementItem:(int64_t)a4;
- (void)_wallpaperAvailabilityDidChange:(id)a3;
- (void)dealloc;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)preferencesDidChange;
@end

@implementation PUSidebarDataSectionEnablementController

- (PHPhotoLibrary)photoLibrary
{
  WeakRetained = objc_loadWeakRetained(&self->_photoLibrary);

  return WeakRetained;
}

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  if ((a4 & 1) != 0 && PXMacSyncedAssetsStatusProviderObservationContext == a5)
  {
    v10[9] = v5;
    v10[10] = v6;
    v8 = [(PUSidebarDataSectionEnablementController *)self sectionManagersByItemTypeForMacSyncedEnablementChange];
    v9 = [v8 dictionaryRepresentation];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __73__PUSidebarDataSectionEnablementController_observable_didChange_context___block_invoke;
    v10[3] = &unk_1E7B76D40;
    v10[4] = self;
    [v9 enumerateKeysAndObjectsUsingBlock:v10];
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
  v3 = [(PUSidebarDataSectionEnablementController *)self sectionManagersByItemTypeForDefaultsChange];
  v4 = [v3 dictionaryRepresentation];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __64__PUSidebarDataSectionEnablementController_preferencesDidChange__block_invoke;
  v5[3] = &unk_1E7B76D40;
  v5[4] = self;
  [v4 enumerateKeysAndObjectsUsingBlock:v5];
}

void __64__PUSidebarDataSectionEnablementController_preferencesDidChange__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  [v4 _configureEnablementOfSectionManager:v5 enablementItem:objc_msgSend(a2 setupObservation:{"integerValue"), 0}];
}

- (void)_wallpaperAvailabilityDidChange:(id)a3
{
  v4 = [(PUSidebarDataSectionEnablementController *)self sectionManagersByItemTypeForWallpaperEnablementChange];
  v5 = [v4 dictionaryRepresentation];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __76__PUSidebarDataSectionEnablementController__wallpaperAvailabilityDidChange___block_invoke;
  v6[3] = &unk_1E7B76D40;
  v6[4] = self;
  [v5 enumerateKeysAndObjectsUsingBlock:v6];
}

void __76__PUSidebarDataSectionEnablementController__wallpaperAvailabilityDidChange___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  [v4 _configureEnablementOfSectionManager:v5 enablementItem:objc_msgSend(a2 setupObservation:{"integerValue"), 0}];
}

- (void)_accountStoreDidChange:(id)a3
{
  v4 = [(PUSidebarDataSectionEnablementController *)self sectionManagerByItemTypeForAccountStoreChange];
  v5 = [v4 dictionaryRepresentation];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __67__PUSidebarDataSectionEnablementController__accountStoreDidChange___block_invoke;
  v6[3] = &unk_1E7B76D40;
  v6[4] = self;
  [v5 enumerateKeysAndObjectsUsingBlock:v6];
}

void __67__PUSidebarDataSectionEnablementController__accountStoreDidChange___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  [v4 _configureEnablementOfSectionManager:v5 enablementItem:objc_msgSend(a2 setupObservation:{"integerValue"), 0}];
}

- (void)_observeMacSyncedAvailabilityForManager:(id)a3 enablementItem:(int64_t)a4
{
  v6 = a3;
  v7 = [(PUSidebarDataSectionEnablementController *)self sectionManagersByItemTypeForMacSyncedEnablementChange];
  v8 = [v7 count];

  if (!v8)
  {
    v9 = [(PUSidebarDataSectionEnablementController *)self photoLibrary];
    v10 = [v9 px_macSyncedAssetsStatusProvider];

    [v10 registerChangeObserver:self context:PXMacSyncedAssetsStatusProviderObservationContext];
  }

  v12 = [(PUSidebarDataSectionEnablementController *)self sectionManagersByItemTypeForMacSyncedEnablementChange];
  v11 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
  [v12 setObject:v6 forKey:v11];
}

- (void)_observeWallpaperAvailabilityForManager:(id)a3 enablementItem:(int64_t)a4
{
  v6 = a3;
  v7 = [(PUSidebarDataSectionEnablementController *)self sectionManagersByItemTypeForWallpaperEnablementChange];
  v8 = [v7 count];

  if (!v8)
  {
    v9 = [MEMORY[0x1E696AD88] defaultCenter];
    [v9 addObserver:self selector:sel__wallpaperAvailabilityDidChange_ name:@"LemonadeWallpaperData.isFeatureAvailableChanged" object:0];
  }

  v11 = [(PUSidebarDataSectionEnablementController *)self sectionManagersByItemTypeForWallpaperEnablementChange];
  v10 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
  [v11 setObject:v6 forKey:v10];
}

- (void)_observeDefaultsForManager:(id)a3 enablementItem:(int64_t)a4
{
  v6 = a3;
  v7 = [(PUSidebarDataSectionEnablementController *)self sectionManagersByItemTypeForDefaultsChange];
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
  [v7 setObject:v6 forKey:v8];

  if (![(PUSidebarDataSectionEnablementController *)self registeredAsPrefObserver])
  {
    [(PUSidebarDataSectionEnablementController *)self setRegisteredAsPrefObserver:1];

    PXRegisterPreferencesObserver();
  }
}

- (void)_observeAccountsStoreForManager:(id)a3 enablementItem:(int64_t)a4
{
  v6 = a3;
  v11 = [(PUSidebarDataSectionEnablementController *)self sectionManagerByItemTypeForAccountStoreChange];
  if (![v11 count])
  {
    v7 = [MEMORY[0x1E696AD88] defaultCenter];
    v8 = *MEMORY[0x1E69BE8E8];
    v9 = [MEMORY[0x1E69BE248] pl_sharedAccountStore];
    [v7 addObserver:self selector:sel__accountStoreDidChange_ name:v8 object:v9];
  }

  v10 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
  [v11 setObject:v6 forKey:v10];
}

- (BOOL)_fromMyMacEnabledSetupObservation:(BOOL)a3
{
  v3 = a3;
  v5 = [(PUSidebarDataSectionEnablementController *)self photoLibrary];
  v6 = [v5 px_macSyncedAssetsStatusProvider];

  v7 = [v6 hasAnyAssets];
  if (v3)
  {
    [v6 registerChangeObserver:self context:PXMacSyncedAssetsStatusProviderObservationContext];
  }

  return v7;
}

- (void)_configureEnablementOfSectionManager:(id)a3 enablementItem:(int64_t)a4 setupObservation:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v22 = v8;
  switch(a4)
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
        v8 = v22;
LABEL_23:
        v9 = 1;
LABEL_29:
        v13 = [v8 setEnabled:v9];
        goto LABEL_30;
      }

      v13 = [v22 setEnabled:MEMORY[0x1B8C6D1A0]()];
      v14 = v22;
      if (v5)
      {
        v15 = self;
        v16 = v22;
        v17 = 1;
LABEL_44:
        v13 = [(PUSidebarDataSectionEnablementController *)v15 _observeDefaultsForManager:v16 enablementItem:v17];
LABEL_30:
        v14 = v22;
      }

LABEL_31:

      MEMORY[0x1EEE66BB8](v13, v14);
      return;
    case 2:
      if ([(PUSidebarDataSectionEnablementController *)self excludesHiddenAlbum])
      {
        goto LABEL_27;
      }

      v13 = [v22 setEnabled:PXPreferencesIsHiddenAlbumVisible()];
      v14 = v22;
      if (!v5)
      {
        goto LABEL_31;
      }

      v15 = self;
      v16 = v22;
      v17 = 2;
      goto LABEL_44;
    case 5:
    case 6:
      v10 = [(PUSidebarDataSectionEnablementController *)self photoLibrary];
      v11 = [v10 photoLibraryURL];

      if ([(PUSidebarDataSectionEnablementController *)self excludesSharedAlbum])
      {
        [v22 setEnabled:0];
      }

      else
      {
        v18 = [(PUSidebarDataSectionEnablementController *)self isPhotosPicker];
        if (a4 == 5 && v18)
        {
          v19 = 0;
        }

        else
        {
          v19 = [MEMORY[0x1E69BE6A8] sharedStreamsEnabledForPhotoLibraryURL:v11];
        }

        [v22 setEnabled:v19];
        if (v5)
        {
          [(PUSidebarDataSectionEnablementController *)self _observeAccountsStoreForManager:v22 enablementItem:a4];
        }
      }

      goto LABEL_30;
    case 7:
      v20 = [(PUSidebarDataSectionEnablementController *)self photoLibrary];
      v21 = [v20 px_macSyncedAssetsStatusProvider];
      [v22 setEnabled:{objc_msgSend(v21, "hasAnyAssets")}];

      v14 = v22;
      if (!v5)
      {
        goto LABEL_31;
      }

      v13 = [(PUSidebarDataSectionEnablementController *)self _observeMacSyncedAvailabilityForManager:v22 enablementItem:7];
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

      v13 = [v22 setEnabled:{objc_msgSend(MEMORY[0x1E69C3658], "isFeatureAvailable")}];
      v14 = v22;
      if (!v5)
      {
        goto LABEL_31;
      }

      v13 = [(PUSidebarDataSectionEnablementController *)self _observeWallpaperAvailabilityForManager:v22 enablementItem:10];
      goto LABEL_30;
    case 11:
      if ([(PUSidebarDataSectionEnablementController *)self isPhotosPicker])
      {
        goto LABEL_27;
      }

      v13 = [v22 setEnabled:MEMORY[0x1B8C6D1A0]()];
      v14 = v22;
      if (!v5)
      {
        goto LABEL_31;
      }

      v15 = self;
      v16 = v22;
      v17 = 11;
      goto LABEL_44;
    case 13:
    case 18:
      v12 = [(PUSidebarDataSectionEnablementController *)self isPhotosPicker];
      goto LABEL_8;
    case 14:
    case 16:
      goto LABEL_28;
    case 15:
      if ([(PUSidebarDataSectionEnablementController *)self isPhotosPicker])
      {
LABEL_27:
        v8 = v22;
LABEL_28:
        v9 = 0;
      }

      else
      {
        v12 = MEMORY[0x1B8C6D1D0]();
LABEL_8:
        v9 = v12;
LABEL_9:
        v8 = v22;
      }

      goto LABEL_29;
    case 20:
      v13 = [v8 setEnabled:PXPreferencesIsRecentlyViewedAndSharedAlbumVisible()];
      v14 = v22;
      if (!v5)
      {
        goto LABEL_31;
      }

      v15 = self;
      v16 = v22;
      v17 = 20;
      goto LABEL_44;
    default:
      v13 = [(PUSidebarDataSectionEnablementController *)self isPhotosPicker];
      v14 = v22;
      if (!v13)
      {
        goto LABEL_31;
      }

      v8 = v22;
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

- (PUSidebarDataSectionEnablementController)initWithPhotoLibrary:(id)a3 andOptions:(unint64_t)a4
{
  v4 = a4;
  v6 = a3;
  v18.receiver = self;
  v18.super_class = PUSidebarDataSectionEnablementController;
  v7 = [(PUSidebarDataSectionEnablementController *)&v18 init];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_photoLibrary, v6);
    v8->_isPhotosPicker = (v4 & 2) != 0;
    v8->_excludesHiddenAlbum = (v4 & 4) != 0;
    v8->_excludesSharedAlbum = (v4 & 8) != 0;
    v9 = [MEMORY[0x1E696AD18] strongToWeakObjectsMapTable];
    sectionManagerByItemTypeForAccountStoreChange = v8->_sectionManagerByItemTypeForAccountStoreChange;
    v8->_sectionManagerByItemTypeForAccountStoreChange = v9;

    v11 = [MEMORY[0x1E696AD18] strongToWeakObjectsMapTable];
    sectionManagersByItemTypeForDefaultsChange = v8->_sectionManagersByItemTypeForDefaultsChange;
    v8->_sectionManagersByItemTypeForDefaultsChange = v11;

    v13 = [MEMORY[0x1E696AD18] strongToWeakObjectsMapTable];
    sectionManagersByItemTypeForWallpaperEnablementChange = v8->_sectionManagersByItemTypeForWallpaperEnablementChange;
    v8->_sectionManagersByItemTypeForWallpaperEnablementChange = v13;

    v15 = [MEMORY[0x1E696AD18] strongToWeakObjectsMapTable];
    sectionManagersByItemTypeForMacSyncedEnablementChange = v8->_sectionManagersByItemTypeForMacSyncedEnablementChange;
    v8->_sectionManagersByItemTypeForMacSyncedEnablementChange = v15;
  }

  return v8;
}

@end