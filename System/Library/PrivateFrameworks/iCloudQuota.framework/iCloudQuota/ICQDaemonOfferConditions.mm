@interface ICQDaemonOfferConditions
+ (BOOL)hasPhotosCloudEverBeenEnabled;
+ (BOOL)isCachedCloudQuotaAlmostFullOrFull;
+ (BOOL)isDeviceStorageAlmostFull;
+ (BOOL)isPhotosCloudEnabled;
+ (BOOL)isPhotosOptimizeEnabled;
+ (BOOL)isSimulatedDeviceStorageAlmostFull;
+ (NSNumber)photosLibrarySize;
+ (NSNumber)photosLibraryUploadSize;
+ (NSNumber)photosVideosCount;
+ (id)currentConditions;
+ (uint64_t)isPhotosCloudEnabled;
+ (void)getPhotosLibrarySizeWithCompletion:(id)completion;
+ (void)getPhotosLibraryUploadSizeWithCompletion:(id)completion;
- (ICQDaemonOfferConditions)initWithCurrentConditions;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation ICQDaemonOfferConditions

+ (id)currentConditions
{
  initWithCurrentConditions = [[self alloc] initWithCurrentConditions];

  return initWithCurrentConditions;
}

- (ICQDaemonOfferConditions)initWithCurrentConditions
{
  v6.receiver = self;
  v6.super_class = ICQDaemonOfferConditions;
  v2 = [(ICQDaemonOfferConditions *)&v6 init];
  if (v2)
  {
    -[ICQDaemonOfferConditions setDeviceStorageAlmostFull:](v2, "setDeviceStorageAlmostFull:", [objc_opt_class() isDeviceStorageAlmostFull]);
    -[ICQDaemonOfferConditions setPhotosCloudEnabled:](v2, "setPhotosCloudEnabled:", [objc_opt_class() isPhotosCloudEnabled]);
    if ([(ICQDaemonOfferConditions *)v2 isPhotosCloudEnabled])
    {
      isPhotosOptimizeEnabled = [objc_opt_class() isPhotosOptimizeEnabled];
    }

    else
    {
      isPhotosOptimizeEnabled = 0;
    }

    [(ICQDaemonOfferConditions *)v2 setPhotosOptimizeEnabled:isPhotosOptimizeEnabled];
    if ([(ICQDaemonOfferConditions *)v2 isPhotosCloudEnabled])
    {
      [(ICQDaemonOfferConditions *)v2 setPhotosLibrarySize:0];
    }

    else
    {
      photosLibrarySize = [objc_opt_class() photosLibrarySize];
      [(ICQDaemonOfferConditions *)v2 setPhotosLibrarySize:photosLibrarySize];
    }

    -[ICQDaemonOfferConditions setBackupRestoreComplete:](v2, "setBackupRestoreComplete:", [objc_opt_class() backupRestoreComplete]);
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  [v4 setDeviceStorageAlmostFull:{-[ICQDaemonOfferConditions isDeviceStorageAlmostFull](self, "isDeviceStorageAlmostFull")}];
  [v4 setPhotosCloudEnabled:{-[ICQDaemonOfferConditions isPhotosCloudEnabled](self, "isPhotosCloudEnabled")}];
  [v4 setPhotosOptimizeEnabled:{-[ICQDaemonOfferConditions isPhotosOptimizeEnabled](self, "isPhotosOptimizeEnabled")}];
  photosLibrarySize = [(ICQDaemonOfferConditions *)self photosLibrarySize];
  [v4 setPhotosLibrarySize:photosLibrarySize];

  [v4 setBackupRestoreComplete:{-[ICQDaemonOfferConditions isBackupRestoreComplete](self, "isBackupRestoreComplete")}];
  return v4;
}

+ (BOOL)isDeviceStorageAlmostFull
{
  v19 = *MEMORY[0x277D85DE8];
  if (([self isSimulatedDeviceStorageAlmostFull] & 1) == 0)
  {
    v3 = [objc_alloc(MEMORY[0x277D3B250]) initWithPath:@"/private/var"];
    v4 = v3;
    if (v3)
    {
      availableSpace = [v3 availableSpace];
      v6 = _ICQGetLogSystem();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v17 = 134349056;
        v18 = availableSpace;
        _os_log_impl(&dword_275572000, v6, OS_LOG_TYPE_DEFAULT, "Found %{public}llu bytes of free space", &v17, 0xCu);
      }

      v7 = CacheDeleteCopyPurgeableSpaceWithInfo();
      v8 = [v7 objectForKeyedSubscript:@"CACHE_DELETE_ERROR"];

      if (v8)
      {
        v9 = _ICQGetLogSystem();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v10 = [v7 objectForKeyedSubscript:@"CACHE_DELETE_ERROR"];
          v17 = 138412290;
          v18 = v10;
          _os_log_impl(&dword_275572000, v9, OS_LOG_TYPE_DEFAULT, "Failed to get purgable space from Cache Delete: %@", &v17, 0xCu);
        }
      }

      else
      {
        v11 = [v7 objectForKeyedSubscript:@"CACHE_DELETE_AMOUNT"];
        unsignedLongLongValue = [v11 unsignedLongLongValue];

        v13 = _ICQGetLogSystem();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v17 = 134349056;
          v18 = unsignedLongLongValue;
          _os_log_impl(&dword_275572000, v13, OS_LOG_TYPE_DEFAULT, "Found %{public}llu bytes of purgeable space", &v17, 0xCu);
        }

        availableSpace += unsignedLongLongValue;
      }

      if (availableSpace >= [v4 lowDiskThreshold])
      {
        v2 = availableSpace < 2 * [v4 nearLowDiskThreshold];
        goto LABEL_21;
      }

      v14 = _ICQGetLogSystem();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v17) = 0;
        _os_log_impl(&dword_275572000, v14, OS_LOG_TYPE_DEFAULT, "user volume is eating into the reserve -- too low for offers", &v17, 2u);
      }
    }

    else
    {
      v7 = _ICQGetLogSystem();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v17) = 0;
        _os_log_impl(&dword_275572000, v7, OS_LOG_TYPE_DEFAULT, "Unable to get user volume status", &v17, 2u);
      }
    }

    v2 = 0;
LABEL_21:

    goto LABEL_22;
  }

  v2 = 1;
LABEL_22:
  v15 = *MEMORY[0x277D85DE8];
  return v2;
}

+ (BOOL)isPhotosCloudEnabled
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v2 = getPLIsCPLDataclassEnabledSymbolLoc_ptr;
  v9 = getPLIsCPLDataclassEnabledSymbolLoc_ptr;
  if (!getPLIsCPLDataclassEnabledSymbolLoc_ptr)
  {
    v3 = PhotoLibraryServicesLibrary();
    v7[3] = dlsym(v3, "PLIsCPLDataclassEnabled");
    getPLIsCPLDataclassEnabledSymbolLoc_ptr = v7[3];
    v2 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (!v2)
  {
    v5 = +[ICQDaemonOfferConditions isPhotosCloudEnabled];
    _Block_object_dispose(&v6, 8);
    _Unwind_Resume(v5);
  }

  return v2();
}

+ (BOOL)hasPhotosCloudEverBeenEnabled
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v2 = getPLCPLHasBeenEnabledForCurrentAccountSymbolLoc_ptr;
  v9 = getPLCPLHasBeenEnabledForCurrentAccountSymbolLoc_ptr;
  if (!getPLCPLHasBeenEnabledForCurrentAccountSymbolLoc_ptr)
  {
    v3 = PhotoLibraryServicesLibrary();
    v7[3] = dlsym(v3, "PLCPLHasBeenEnabledForCurrentAccount");
    getPLCPLHasBeenEnabledForCurrentAccountSymbolLoc_ptr = v7[3];
    v2 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (!v2)
  {
    v5 = +[ICQDaemonOfferConditions isPhotosCloudEnabled];
    _Block_object_dispose(&v6, 8);
    _Unwind_Resume(v5);
  }

  return v2();
}

+ (BOOL)isPhotosOptimizeEnabled
{
  isPhotosCloudEnabled = [self isPhotosCloudEnabled];
  if (isPhotosCloudEnabled)
  {
    v7 = 0;
    v8 = &v7;
    v9 = 0x2020000000;
    v3 = getPLCloudPhotoLibraryKeepOriginalsIsEnabledSymbolLoc_ptr;
    v10 = getPLCloudPhotoLibraryKeepOriginalsIsEnabledSymbolLoc_ptr;
    if (!getPLCloudPhotoLibraryKeepOriginalsIsEnabledSymbolLoc_ptr)
    {
      v4 = PhotoLibraryServicesLibrary();
      v8[3] = dlsym(v4, "PLCloudPhotoLibraryKeepOriginalsIsEnabled");
      getPLCloudPhotoLibraryKeepOriginalsIsEnabledSymbolLoc_ptr = v8[3];
      v3 = v8[3];
    }

    _Block_object_dispose(&v7, 8);
    if (!v3)
    {
      v5 = +[ICQDaemonOfferConditions isPhotosCloudEnabled];
      _Block_object_dispose(&v7, 8);
      _Unwind_Resume(v5);
    }

    LOBYTE(isPhotosCloudEnabled) = v3() ^ 1;
  }

  return isPhotosCloudEnabled;
}

+ (NSNumber)photosLibrarySize
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__8;
  v19 = __Block_byref_object_dispose__8;
  v3 = +[ICQDaemonOfferManager sharedDaemonOfferManager];
  simulatedPhotosLibrarySize = [v3 simulatedPhotosLibrarySize];

  v4 = v16[5];
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v6 = dispatch_semaphore_create(0);
    date = [MEMORY[0x277CBEAA8] date];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __45__ICQDaemonOfferConditions_photosLibrarySize__block_invoke;
    v11[3] = &unk_27A652B98;
    v8 = date;
    v12 = v8;
    v14 = &v15;
    v9 = v6;
    v13 = v9;
    [self getPhotosLibrarySizeWithCompletion:v11];
    dispatch_semaphore_wait(v9, 0xFFFFFFFFFFFFFFFFLL);
    v5 = v16[5];
  }

  _Block_object_dispose(&v15, 8);

  return v5;
}

void __45__ICQDaemonOfferConditions_photosLibrarySize__block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  [*(a1 + 32) timeIntervalSinceNow];
  v5 = v4;
  v6 = _ICQGetLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [MEMORY[0x277CCABB0] numberWithDouble:-v5];
    v12 = 138412290;
    v13 = v7;
    _os_log_impl(&dword_275572000, v6, OS_LOG_TYPE_DEFAULT, "photosLibrarySize took %@ seconds", &v12, 0xCu);
  }

  v8 = *(*(a1 + 48) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v3;
  v10 = v3;

  dispatch_semaphore_signal(*(a1 + 40));
  v11 = *MEMORY[0x277D85DE8];
}

+ (void)getPhotosLibrarySizeWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = os_transaction_create();
  v5 = _ICQGetLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_275572000, v5, OS_LOG_TYPE_DEFAULT, "Requesting library size from PHPhotoLibrary", buf, 2u);
  }

  mEMORY[0x277CD9948] = [MEMORY[0x277CD9948] sharedPhotoLibrary];
  v11 = 0;
  v7 = [mEMORY[0x277CD9948] getLibrarySizesFromDB:0 error:&v11];
  v8 = v11;

  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", 1];
  v10 = [v7 objectForKeyedSubscript:v9];
  completionCopy[2](completionCopy, v10, v8);
}

+ (NSNumber)photosLibraryUploadSize
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__8;
  v19 = __Block_byref_object_dispose__8;
  v3 = +[ICQDaemonOfferManager sharedDaemonOfferManager];
  simulatedPhotosLibrarySize = [v3 simulatedPhotosLibrarySize];

  v4 = v16[5];
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v6 = dispatch_semaphore_create(0);
    date = [MEMORY[0x277CBEAA8] date];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __51__ICQDaemonOfferConditions_photosLibraryUploadSize__block_invoke;
    v11[3] = &unk_27A652B98;
    v8 = date;
    v12 = v8;
    v14 = &v15;
    v9 = v6;
    v13 = v9;
    [self getPhotosLibraryUploadSizeWithCompletion:v11];
    dispatch_semaphore_wait(v9, 0xFFFFFFFFFFFFFFFFLL);
    v5 = v16[5];
  }

  _Block_object_dispose(&v15, 8);

  return v5;
}

void __51__ICQDaemonOfferConditions_photosLibraryUploadSize__block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  [*(a1 + 32) timeIntervalSinceNow];
  v5 = v4;
  v6 = _ICQGetLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [MEMORY[0x277CCABB0] numberWithDouble:-v5];
    v12 = 138412290;
    v13 = v7;
    _os_log_impl(&dword_275572000, v6, OS_LOG_TYPE_DEFAULT, "photosLibraryUploadSize took %@ seconds", &v12, 0xCu);
  }

  v8 = *(*(a1 + 48) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v3;
  v10 = v3;

  dispatch_semaphore_signal(*(a1 + 40));
  v11 = *MEMORY[0x277D85DE8];
}

+ (void)getPhotosLibraryUploadSizeWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = os_transaction_create();
  v6 = _ICQGetLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [ICQDaemonOfferConditions getPhotosLibraryUploadSizeWithCompletion:v6];
  }

  mEMORY[0x277CD9948] = [MEMORY[0x277CD9948] sharedPhotoLibrary];
  v13 = 0;
  v8 = [mEMORY[0x277CD9948] getLibrarySizesFromDB:1 error:&v13];

  isPhotosCloudEnabled = [self isPhotosCloudEnabled];
  v10 = 32;
  if (isPhotosCloudEnabled)
  {
    v10 = 16;
  }

  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", v10];
  v12 = [v8 objectForKeyedSubscript:v11];
  completionCopy[2](completionCopy, v12, 0);
}

+ (NSNumber)photosVideosCount
{
  v23 = *MEMORY[0x277D85DE8];
  v13 = 0;
  v14 = 0;
  date = [MEMORY[0x277CBEAA8] date];
  v15 = 0;
  v16 = &v15;
  v17 = 0x2050000000;
  v3 = getPLPhotoLibraryClass_softClass;
  v18 = getPLPhotoLibraryClass_softClass;
  if (!getPLPhotoLibraryClass_softClass)
  {
    *&buf = MEMORY[0x277D85DD0];
    *(&buf + 1) = 3221225472;
    v20 = __getPLPhotoLibraryClass_block_invoke;
    v21 = &unk_27A6517A8;
    v22 = &v15;
    __getPLPhotoLibraryClass_block_invoke(&buf);
    v3 = v16[3];
  }

  v4 = v3;
  _Block_object_dispose(&v15, 8);
  sharedPhotoLibrary = [v3 sharedPhotoLibrary];
  [sharedPhotoLibrary getPhotoCount:&v14 videoCount:&v13];

  [date timeIntervalSinceNow];
  v7 = v6;
  v8 = _ICQGetLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [MEMORY[0x277CCABB0] numberWithDouble:-v7];
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v9;
    _os_log_impl(&dword_275572000, v8, OS_LOG_TYPE_DEFAULT, "photosVideosCount took %@ seconds", &buf, 0xCu);
  }

  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v13 + v14];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

+ (BOOL)isSimulatedDeviceStorageAlmostFull
{
  v2 = +[ICQDaemonOfferManager sharedDaemonOfferManager];
  isSimulatedDeviceStorageAlmostFull = [v2 isSimulatedDeviceStorageAlmostFull];

  return isSimulatedDeviceStorageAlmostFull;
}

+ (BOOL)isCachedCloudQuotaAlmostFullOrFull
{
  v2 = +[(ICQDaemonPersisted *)ICQDaemonOfferStubs];
  v3 = +[(ICQDaemonPersisted *)ICQDaemonOffer];
  _cachedQuotaAvailable = [v2 _cachedQuotaAvailable];
  _cachedQuotaAvailable2 = [v3 _cachedQuotaAvailable];
  v6 = _cachedQuotaAvailable2;
  if (_cachedQuotaAvailable)
  {
    v7 = _cachedQuotaAvailable;
  }

  else
  {
    v7 = _cachedQuotaAvailable2;
  }

  v8 = v7;
  if (_cachedQuotaAvailable)
  {
    v9 = v6 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    retrievalDate = [v2 retrievalDate];
    retrievalDate2 = [v3 retrievalDate];
    v12 = [retrievalDate compare:retrievalDate2];

    if (v12 == -1)
    {
      v8 = v6;

      goto LABEL_12;
    }
  }

  if (v8)
  {
LABEL_12:
    v13 = [v8 longLongValue] < 0x1DCD6500;

    goto LABEL_13;
  }

  v13 = 0;
LABEL_13:

  return v13;
}

+ (uint64_t)isPhotosCloudEnabled
{
  dlerror();
  v0 = abort_report_np();
  return [ICQDaemonOfferConditions getPhotosLibraryUploadSizeWithCompletion:v0];
}

@end