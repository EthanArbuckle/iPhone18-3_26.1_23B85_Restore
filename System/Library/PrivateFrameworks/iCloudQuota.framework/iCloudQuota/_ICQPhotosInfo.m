@interface _ICQPhotosInfo
+ (BOOL)hasPhotoBulkCreation;
+ (id)_photosShutdownQueue;
+ (id)mockCount:(id)a3;
+ (void)_shutDownPhotoLibrary;
+ (void)getInfoWithCompletion:(id)a3;
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

+ (id)mockCount:(id)a3
{
  v3 = CFPreferencesCopyAppValue(a3, @"com.apple.cloud.quota");
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) == 0 && (objc_opt_respondsToSelector())
  {
    v4 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v3, "longLongValue")}];

    v3 = v4;
  }

  return v3;
}

+ (void)getInfoWithCompletion:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [_ICQPhotosInfo mockCount:@"_ICQMockPhotoCount"];
  v5 = [_ICQPhotosInfo mockCount:@"_ICQMockVideoCount"];
  if (v4 | v5)
  {
    v6 = objc_alloc_init(_ICQPhotosInfo);
    -[_ICQPhotosInfo setPhotoCount:](v6, "setPhotoCount:", [v4 longLongValue]);
    -[_ICQPhotosInfo setVideoCount:](v6, "setVideoCount:", [v5 longLongValue]);
    v3[2](v3, v6, 0);
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    v8 = [MEMORY[0x277D3B238] systemLibraryURL];
    v15 = 0;
    v9 = [MEMORY[0x277D3AD38] newPhotoLibraryWithName:"+[_ICQPhotosInfo getInfoWithCompletion:]" loadedFromURL:v8 options:0 error:&v15];
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

      (v3)[2](v3, 0, v10);
    }

    else if (v9)
    {
      v14 = v3;
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

      v3[2](v3, 0, 0);
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
  v7 = [MEMORY[0x277CD9948] systemPhotoLibraryURL];
  v8 = [v6 initWithPhotoLibraryURL:v7];

  v9 = [v8 librarySpecificFetchOptions];
  v10 = [MEMORY[0x277CCAC30] predicateWithFormat:@"creationDate >= %@", v5];
  [v9 setPredicate:v10];

  v11 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"creationDate" ascending:0];
  v35[0] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:1];
  [v9 setSortDescriptors:v12];

  v13 = [MEMORY[0x277CD97A8] fetchAssetsWithOptions:v9];
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
    v15 = a1;
    v16 = 29;
    while (1)
    {
      v17 = [v13 objectAtIndexedSubscript:v16 - 29];
      v18 = [v13 objectAtIndexedSubscript:v16];
      v19 = [v17 creationDate];
      [v19 timeIntervalSince1970];
      v21 = v20;
      v22 = [v18 creationDate];
      [v22 timeIntervalSince1970];
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
        a1 = v15;
        goto LABEL_16;
      }
    }

    a1 = v15;
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_275572000, v26, OS_LOG_TYPE_DEFAULT, "Found bulk creation!", buf, 2u);
    }

    v27 = 1;
LABEL_16:
    v4 = v30;
  }

  [a1 _shutDownPhotoLibrary];

  objc_autoreleasePoolPop(v4);
  v28 = *MEMORY[0x277D85DE8];
  return v27;
}

+ (void)_shutDownPhotoLibrary
{
  v3 = [MEMORY[0x277CCA8D8] mainBundle];
  v4 = [v3 bundleIdentifier];
  v5 = [v4 isEqualToString:@"com.apple.ind"];

  if (v5)
  {
    v6 = [MEMORY[0x277CD9948] systemPhotoLibraryURL];
    v7 = os_transaction_create();
    v8 = _ICQGetLogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_275572000, v8, OS_LOG_TYPE_DEFAULT, "Shutting down photos library.", buf, 2u);
    }

    v9 = [a1 _photosShutdownQueue];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __39___ICQPhotosInfo__shutDownPhotoLibrary__block_invoke;
    v12[3] = &unk_27A651D90;
    v13 = v6;
    v14 = v7;
    v10 = v7;
    v11 = v6;
    dispatch_async(v9, v12);
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
  v5 = [a1 count];
  _os_log_debug_impl(&dword_275572000, a2, OS_LOG_TYPE_DEBUG, "Checking for photo bulk creation with %lu assets", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

@end