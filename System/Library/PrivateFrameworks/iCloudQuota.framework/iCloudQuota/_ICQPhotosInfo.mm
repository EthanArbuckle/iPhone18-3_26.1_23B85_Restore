@interface _ICQPhotosInfo
+ (BOOL)hasPhotoBulkCreation;
+ (id)_photosShutdownQueue;
+ (id)mockCount:(id)count;
+ (void)_shutDownPhotoLibrary;
+ (void)getInfoWithCompletion:(id)completion;
+ (void)hasPhotoBulkCreation;
@end

@implementation _ICQPhotosInfo

+ (id)_photosShutdownQueue
{
  if (_photosShutdownQueue_onceToken != -1)
  {
    +[_ICQPhotosInfo _photosShutdownQueue];
  }

  v3 = _photosShutdownQueue_photosShutdownQueue;

  return v3;
}

+ (id)mockCount:(id)count
{
  v3 = CFPreferencesCopyAppValue(count, @"com.apple.cloud.quota");
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) == 0 && (objc_opt_respondsToSelector())
  {
    v4 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v3, "longLongValue")}];

    v3 = v4;
  }

  return v3;
}

+ (void)getInfoWithCompletion:(id)completion
{
  v18 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v4 = [_ICQPhotosInfo mockCount:@"_ICQMockPhotoCount"];
  v5 = [_ICQPhotosInfo mockCount:@"_ICQMockVideoCount"];
  if (v4 | v5)
  {
    v6 = objc_alloc_init(_ICQPhotosInfo);
    -[_ICQPhotosInfo setPhotoCount:](v6, "setPhotoCount:", [v4 longLongValue]);
    -[_ICQPhotosInfo setVideoCount:](v6, "setVideoCount:", [v5 longLongValue]);
    completionCopy[2](completionCopy, v6, 0);
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    systemLibraryURL = [MEMORY[0x277D3B238] systemLibraryURL];
    v15 = 0;
    v9 = [MEMORY[0x277D3AD38] newPhotoLibraryWithName:"+[_ICQPhotosInfo getInfoWithCompletion:]" loadedFromURL:systemLibraryURL options:0 error:&v15];
    v10 = v15;
    if (v10)
    {
      v11 = _ICQGetLogSystem();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v17 = v10;
        _os_log_impl(&dword_275572000, v11, OS_LOG_TYPE_DEFAULT, "Error loading PLPhotoLibrary: (%@)", buf, 0xCu);
      }

      (completionCopy)[2](completionCopy, 0, v10);
    }

    else if (v9)
    {
      v14 = completionCopy;
      PLRequestCloudPhotoLibraryTransferProgressForLibrary();
    }

    else
    {
      v13 = _ICQGetLogSystem();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_275572000, v13, OS_LOG_TYPE_DEFAULT, "System Photo Library is nil, avoiding calling PLRequest on a nil PLPhotoLibrary", buf, 2u);
      }

      completionCopy[2](completionCopy, 0, 0);
    }

    objc_autoreleasePoolPop(v7);
  }

  v12 = *MEMORY[0x277D85DE8];
}

+ (BOOL)hasPhotoBulkCreation
{
  v35[1] = *MEMORY[0x277D85DE8];
  v3 = _ICQGetLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_275572000, v3, OS_LOG_TYPE_DEFAULT, "Checking for photo bulk creation", buf, 2u);
  }

  v4 = objc_autoreleasePoolPush();
  v5 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-172800.0];
  v6 = objc_alloc(MEMORY[0x277CD9948]);
  systemPhotoLibraryURL = [MEMORY[0x277CD9948] systemPhotoLibraryURL];
  v8 = [v6 initWithPhotoLibraryURL:systemPhotoLibraryURL];

  librarySpecificFetchOptions = [v8 librarySpecificFetchOptions];
  v10 = [MEMORY[0x277CCAC30] predicateWithFormat:@"creationDate >= %@", v5];
  [librarySpecificFetchOptions setPredicate:v10];

  v11 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"creationDate" ascending:0];
  v35[0] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:1];
  [librarySpecificFetchOptions setSortDescriptors:v12];

  v13 = [MEMORY[0x277CD97A8] fetchAssetsWithOptions:librarySpecificFetchOptions];
  v14 = _ICQGetLogSystem();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    +[(_ICQPhotosInfo *)v13];
  }

  if ([v13 count] < 0x1E)
  {
    v27 = 0;
  }

  else
  {
    v30 = v4;
    selfCopy = self;
    v16 = 29;
    while (1)
    {
      v17 = [v13 objectAtIndexedSubscript:v16 - 29];
      v18 = [v13 objectAtIndexedSubscript:v16];
      creationDate = [v17 creationDate];
      [creationDate timeIntervalSince1970];
      v21 = v20;
      creationDate2 = [v18 creationDate];
      [creationDate2 timeIntervalSince1970];
      v24 = v21 - v23;

      v25 = _ICQGetLogSystem();
      v26 = v25;
      if (v24 <= 86400.0)
      {
        break;
      }

      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412546;
        v32 = v17;
        v33 = 2112;
        v34 = v18;
        _os_log_debug_impl(&dword_275572000, v26, OS_LOG_TYPE_DEBUG, "No bulk creation found for assets %@ and %@", buf, 0x16u);
      }

      ++v16;
      if ([v13 count] <= v16)
      {
        v27 = 0;
        self = selfCopy;
        goto LABEL_16;
      }
    }

    self = selfCopy;
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_275572000, v26, OS_LOG_TYPE_DEFAULT, "Found bulk creation!", buf, 2u);
    }

    v27 = 1;
LABEL_16:
    v4 = v30;
  }

  [self _shutDownPhotoLibrary];

  objc_autoreleasePoolPop(v4);
  v28 = *MEMORY[0x277D85DE8];
  return v27;
}

+ (void)_shutDownPhotoLibrary
{
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  v5 = [bundleIdentifier isEqualToString:@"com.apple.ind"];

  if (v5)
  {
    systemPhotoLibraryURL = [MEMORY[0x277CD9948] systemPhotoLibraryURL];
    v7 = os_transaction_create();
    v8 = _ICQGetLogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_275572000, v8, OS_LOG_TYPE_DEFAULT, "Shutting down photos library.", buf, 2u);
    }

    _photosShutdownQueue = [self _photosShutdownQueue];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __39___ICQPhotosInfo__shutDownPhotoLibrary__block_invoke;
    v12[3] = &unk_27A651D90;
    v13 = systemPhotoLibraryURL;
    v14 = v7;
    v10 = v7;
    v11 = systemPhotoLibraryURL;
    dispatch_async(_photosShutdownQueue, v12);
  }

  else
  {
    v11 = _ICQGetLogSystem();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_275572000, v11, OS_LOG_TYPE_DEFAULT, "Process is not ind daemon, not shutting down another app's Photo Library", buf, 2u);
    }
  }
}

+ (void)hasPhotoBulkCreation
{
  v6 = *MEMORY[0x277D85DE8];
  v4 = 134217984;
  v5 = [self count];
  _os_log_debug_impl(&dword_275572000, a2, OS_LOG_TYPE_DEBUG, "Checking for photo bulk creation with %lu assets", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

@end