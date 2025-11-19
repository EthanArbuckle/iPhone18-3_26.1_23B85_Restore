@interface AXPhoenixDataCollectionManager
+ (id)sharedInstance;
- (AXPhoenixDataCollectionManager)init;
- (AXPhoenixDataCollectionManagerDelegate)delegate;
- (void)removeOldData;
- (void)reportFalsePositive:(id)a3;
- (void)start;
- (void)stop;
- (void)timerTick;
- (void)updateUploadStatus:(int64_t)a3 error:(id)a4;
- (void)uploadPackages;
@end

@implementation AXPhoenixDataCollectionManager

- (AXPhoenixDataCollectionManager)init
{
  v8 = a2;
  v9 = 0;
  v7.receiver = self;
  v7.super_class = AXPhoenixDataCollectionManager;
  v9 = [(AXPhoenixDataCollectionManager *)&v7 init];
  objc_storeStrong(&v9, v9);
  if (v9)
  {
    v4 = dispatch_queue_create("com.apple.accessibility.phoenix.dataCollectionManager", 0);
    [(AXPhoenixDataCollectionManager *)v9 setQueue:?];
    MEMORY[0x277D82BD8](v4);
    object = [(AXPhoenixDataCollectionManager *)v9 queue];
    v5 = dispatch_get_global_queue(17, 0);
    dispatch_set_target_queue(object, v5);
    MEMORY[0x277D82BD8](v5);
    MEMORY[0x277D82BD8](object);
  }

  v3 = MEMORY[0x277D82BE0](v9);
  objc_storeStrong(&v9, 0);
  return v3;
}

+ (id)sharedInstance
{
  v5 = &sharedInstance_onceToken_1;
  location = 0;
  objc_storeStrong(&location, &__block_literal_global_4);
  if (*v5 != -1)
  {
    dispatch_once(v5, location);
  }

  objc_storeStrong(&location, 0);
  v2 = sharedInstance_instance;

  return v2;
}

uint64_t __48__AXPhoenixDataCollectionManager_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(AXPhoenixDataCollectionManager);
  v1 = sharedInstance_instance;
  sharedInstance_instance = v0;
  return MEMORY[0x277D82BD8](v1);
}

- (void)start
{
  [(AXPhoenixDataCollectionManager *)self setIsRunning:1];
  [(AXPhoenixDataCollectionManager *)self setPackagesRemaining:-1];
  [(AXPhoenixDataCollectionManager *)self timerTick];
}

- (void)stop
{
  [(AXPhoenixDataCollectionManager *)self setIsRunning:0];
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 removeObserver:self];
  MEMORY[0x277D82BD8](v2);
}

- (void)timerTick
{
  v10 = self;
  v9[1] = a2;
  [(AXPhoenixDataCollectionManager *)self uploadPackages];
  when = dispatch_time(0, 600000000000);
  queue = [(AXPhoenixDataCollectionManager *)v10 queue];
  v4 = MEMORY[0x277D85DD0];
  v5 = -1073741824;
  v6 = 0;
  v7 = __43__AXPhoenixDataCollectionManager_timerTick__block_invoke;
  v8 = &unk_279A20BD8;
  v9[0] = MEMORY[0x277D82BE0](v10);
  dispatch_after(when, queue, &v4);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(v9, 0);
}

uint64_t __43__AXPhoenixDataCollectionManager_timerTick__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isRunning];
  if (result)
  {
    return [*(a1 + 32) timerTick];
  }

  return result;
}

- (void)removeOldData
{
  v39[4] = *MEMORY[0x277D85DE8];
  v35[2] = self;
  v35[1] = a2;
  v35[0] = [MEMORY[0x277CCAA00] defaultManager];
  v34 = 0;
  v33[1] = 5;
  v14 = v35[0];
  v17 = [MEMORY[0x277CBEBC0] fileURLWithPath:@"/var/mobile/DTX"];
  v39[0] = *MEMORY[0x277CBE8E8];
  v39[1] = *MEMORY[0x277CBE7C0];
  v39[2] = *MEMORY[0x277CBE868];
  v39[3] = *MEMORY[0x277CBE838];
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:4];
  v32 = v34;
  v15 = [v14 contentsOfDirectoryAtURL:v17 includingPropertiesForKeys:? options:? error:?];
  objc_storeStrong(&v34, v32);
  v33[0] = v15;
  MEMORY[0x277D82BD8](v16);
  MEMORY[0x277D82BD8](v17);
  memset(__b, 0, sizeof(__b));
  obj = MEMORY[0x277D82BE0](v33[0]);
  v19 = [obj countByEnumeratingWithState:__b objects:v38 count:16];
  if (v19)
  {
    v11 = *__b[2];
    v12 = 0;
    v13 = v19;
    while (1)
    {
      v10 = v12;
      if (*__b[2] != v11)
      {
        objc_enumerationMutation(obj);
      }

      v31 = *(__b[1] + 8 * v12);
      v7 = v31;
      v37[0] = *MEMORY[0x277CBE8E8];
      v37[1] = *MEMORY[0x277CBE7C0];
      v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:2];
      v28 = v34;
      v8 = [v7 resourceValuesForKeys:? error:?];
      objc_storeStrong(&v34, v28);
      v29 = v8;
      MEMORY[0x277D82BD8](v9);
      if (v29 && !v34)
      {
        v24 = [v29 objectForKeyedSubscript:*MEMORY[0x277CBE8E8]];
        v23 = [v24 pathExtension];
        v22 = [v29 objectForKeyedSubscript:*MEMORY[0x277CBE7C0]];
        v20 = 0;
        v4 = 0;
        if ([v23 isEqualToString:@"json"])
        {
          v21 = [MEMORY[0x277CBEAA8] date];
          v20 = 1;
          [v21 timeIntervalSinceDate:v22];
          v4 = v2 > 172800.0;
        }

        if (v20)
        {
          MEMORY[0x277D82BD8](v21);
        }

        if (v4)
        {
          v3 = [v31 path];
          [AXPhoenixDataCollectionUtils deleteItem:?];
          MEMORY[0x277D82BD8](v3);
        }

        objc_storeStrong(&v22, 0);
        objc_storeStrong(&v23, 0);
        objc_storeStrong(&v24, 0);
        v25 = 0;
      }

      else
      {
        oslog = AXLogBackTap();
        type = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
        {
          log = oslog;
          v6 = type;
          __os_log_helper_16_2_2_8_32_8_64(v36, "[AXPhoenixDataCollectionManager removeOldData]", v31);
          _os_log_error_impl(&dword_25E4AC000, log, v6, "[PHOENIX] %s Error getting metadata properties for %@", v36, 0x16u);
        }

        objc_storeStrong(&oslog, 0);
        v25 = 3;
      }

      objc_storeStrong(&v29, 0);
      ++v12;
      if (v10 + 1 >= v13)
      {
        v12 = 0;
        v13 = [obj countByEnumeratingWithState:__b objects:v38 count:16];
        if (!v13)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x277D82BD8](obj);
  objc_storeStrong(v33, 0);
  objc_storeStrong(&v34, 0);
  objc_storeStrong(v35, 0);
  *MEMORY[0x277D85DE8];
}

- (void)uploadPackages
{
  v69[4] = *MEMORY[0x277D85DE8];
  v61 = self;
  v60[1] = a2;
  [(AXPhoenixDataCollectionManager *)self removeOldData];
  v60[0] = [MEMORY[0x277CCAA00] defaultManager];
  v59 = 0;
  v58[1] = 5;
  v28 = v60[0];
  v31 = [MEMORY[0x277CBEBC0] fileURLWithPath:?];
  v69[0] = *MEMORY[0x277CBE8E8];
  v69[1] = *MEMORY[0x277CBE7C0];
  v69[2] = *MEMORY[0x277CBE868];
  v69[3] = *MEMORY[0x277CBE838];
  v30 = [MEMORY[0x277CBEA60] arrayWithObjects:v69 count:4];
  obj = v59;
  v29 = [v28 contentsOfDirectoryAtURL:v31 includingPropertiesForKeys:? options:? error:?];
  objc_storeStrong(&v59, obj);
  v58[0] = v29;
  MEMORY[0x277D82BD8](v30);
  MEMORY[0x277D82BD8](v31);
  v56 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v55 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v54 = [[AXPhoenixDataPackager alloc] initWithFileSuffixes:&unk_287037C18 fromDataDirectory:@"/var/mobile/DTX/FalsePositives"];
  v53 = 0;
  memset(__b, 0, sizeof(__b));
  v32 = MEMORY[0x277D82BE0](v58[0]);
  v33 = [v32 countByEnumeratingWithState:__b objects:v68 count:16];
  if (v33)
  {
    v25 = *__b[2];
    v26 = 0;
    v27 = v33;
    while (1)
    {
      v24 = v26;
      if (*__b[2] != v25)
      {
        objc_enumerationMutation(v32);
      }

      v52 = *(__b[1] + 8 * v26);
      v21 = v52;
      v67[0] = *MEMORY[0x277CBE8E8];
      v67[1] = *MEMORY[0x277CBE7C0];
      v67[2] = *MEMORY[0x277CBE868];
      v67[3] = *MEMORY[0x277CBE838];
      v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v67 count:4];
      v49 = v59;
      v22 = [v21 resourceValuesForKeys:? error:?];
      objc_storeStrong(&v59, v49);
      v50 = v22;
      MEMORY[0x277D82BD8](v23);
      if (v50 && !v59)
      {
        v45 = [v50 objectForKeyedSubscript:*MEMORY[0x277CBE8E8]];
        v44 = [v45 pathExtension];
        v15 = [v50 objectForKeyedSubscript:*MEMORY[0x277CBE838]];
        v16 = [v15 unsignedLongLongValue];
        MEMORY[0x277D82BD8](v15);
        v43 = v16;
        v17 = [v50 objectForKeyedSubscript:*MEMORY[0x277CBE868]];
        v18 = [v17 BOOLValue];
        MEMORY[0x277D82BD8](v17);
        v42 = v18;
        if (v18)
        {
          v10 = [v52 path];
          [AXPhoenixDataCollectionUtils deleteItem:?];
          MEMORY[0x277D82BD8](v10);
        }

        else if ([v44 isEqualToString:@"tgz"])
        {
          v12 = v56;
          v11 = MEMORY[0x277CCACA8];
          v65[0] = @"/var/mobile/DTX/FalsePositives";
          v65[1] = v45;
          v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v65 count:2];
          v13 = [v11 pathWithComponents:?];
          [v12 addObject:?];
          MEMORY[0x277D82BD8](v13);
          MEMORY[0x277D82BD8](v14);
        }

        else if ([v54 isValidFile:v45])
        {
          [v55 addObject:v45];
          v53 += v43;
        }

        objc_storeStrong(&v44, 0);
        objc_storeStrong(&v45, 0);
        v46 = 0;
      }

      else
      {
        oslog = AXLogBackTap();
        type = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
        {
          log = oslog;
          v20 = type;
          __os_log_helper_16_2_2_8_32_8_64(v66, "[AXPhoenixDataCollectionManager uploadPackages]", v52);
          _os_log_error_impl(&dword_25E4AC000, log, v20, "[PHOENIX] %s Error getting metadata properties for %@", v66, 0x16u);
        }

        objc_storeStrong(&oslog, 0);
        v46 = 3;
      }

      objc_storeStrong(&v50, 0);
      ++v26;
      if (v24 + 1 >= v27)
      {
        v26 = 0;
        v27 = [v32 countByEnumeratingWithState:__b objects:v68 count:16];
        if (!v27)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x277D82BD8](v32);
  v2 = [v56 count];
  [(AXPhoenixDataCollectionManager *)v61 setPackagesRemaining:v2];
  if ([v55 count] < 2 && v53 <= 0x19000)
  {
    if ([v55 count])
    {
      [(AXPhoenixDataCollectionManager *)v61 setPackagesRemaining:[(AXPhoenixDataCollectionManager *)v61 packagesRemaining]+ 1];
    }
  }

  else
  {
    v41 = [v54 packageDataUsingFiles:v55];
    memset(v39, 0, sizeof(v39));
    v8 = MEMORY[0x277D82BE0](v41);
    v9 = [v8 countByEnumeratingWithState:v39 objects:v64 count:16];
    if (v9)
    {
      v5 = *v39[2];
      v6 = 0;
      v7 = v9;
      while (1)
      {
        v4 = v6;
        if (*v39[2] != v5)
        {
          objc_enumerationMutation(v8);
        }

        v40 = *(v39[1] + 8 * v6);
        [v56 addObject:v40];
        [(AXPhoenixDataCollectionManager *)v61 setPackagesRemaining:[(AXPhoenixDataCollectionManager *)v61 packagesRemaining]+ 1];
        ++v6;
        if (v4 + 1 >= v7)
        {
          v6 = 0;
          v7 = [v8 countByEnumeratingWithState:v39 objects:v64 count:16];
          if (!v7)
          {
            break;
          }
        }
      }
    }

    MEMORY[0x277D82BD8](v8);
    v38 = AXLogBackTap();
    v37 = OS_LOG_TYPE_INFO;
    if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
    {
      __os_log_helper_16_2_2_8_32_8_0(v63, "[AXPhoenixDataCollectionManager uploadPackages]", v53);
      _os_log_impl(&dword_25E4AC000, v38, v37, "[PHOENIX] %s Total size of files being packaged %lu", v63, 0x16u);
    }

    objc_storeStrong(&v38, 0);
    objc_storeStrong(&v41, 0);
  }

  if ([v56 count])
  {
    v36 = AXLogBackTap();
    v35 = OS_LOG_TYPE_INFO;
    if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
    {
      __os_log_helper_16_2_2_8_32_8_0(v62, "-[AXPhoenixDataCollectionManager uploadPackages]", [v56 count]);
      _os_log_impl(&dword_25E4AC000, v36, v35, "[PHOENIX] %s Uploading %lu packages", v62, 0x16u);
    }

    objc_storeStrong(&v36, 0);
    v34 = MEMORY[0x277D82BE0](@"test-phoenix-raw-carry-fp-data");
    v3 = +[AXPhoenixBlobbyUploader sharedUploader];
    [v3 uploadPackages:v56 toBucket:v34 withCompletion:&__block_literal_global_35];
    MEMORY[0x277D82BD8](v3);
    objc_storeStrong(&v34, 0);
  }

  objc_storeStrong(&v54, 0);
  objc_storeStrong(&v55, 0);
  objc_storeStrong(&v56, 0);
  objc_storeStrong(v58, 0);
  objc_storeStrong(&v59, 0);
  objc_storeStrong(v60, 0);
  *MEMORY[0x277D85DE8];
}

void __48__AXPhoenixDataCollectionManager_uploadPackages__block_invoke(NSObject *a1)
{
  v3 = *MEMORY[0x277D85DE8];
  oslog[2] = a1;
  oslog[1] = a1;
  oslog[0] = AXLogBackTap();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_1_8_32(v2, "[AXPhoenixDataCollectionManager uploadPackages]_block_invoke");
    _os_log_impl(&dword_25E4AC000, oslog[0], OS_LOG_TYPE_DEFAULT, "[PHOENIX] %s Uploaded all packages", v2, 0xCu);
  }

  objc_storeStrong(oslog, 0);
  *MEMORY[0x277D85DE8];
}

- (void)updateUploadStatus:(int64_t)a3 error:(id)a4
{
  v18 = self;
  v17 = a2;
  v16 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  [(AXPhoenixDataCollectionManager *)v18 setPackagesRemaining:v16];
  [(AXPhoenixDataCollectionManager *)v18 setUploadErrorMessage:location];
  v7 = [(AXPhoenixDataCollectionManager *)v18 delegate];
  MEMORY[0x277D82BD8](v7);
  if (v7)
  {
    v5 = MEMORY[0x277D85CD0];
    v4 = MEMORY[0x277D85CD0];
    queue = v5;
    v8 = MEMORY[0x277D85DD0];
    v9 = -1073741824;
    v10 = 0;
    v11 = __59__AXPhoenixDataCollectionManager_updateUploadStatus_error___block_invoke;
    v12 = &unk_279A20C00;
    v13 = MEMORY[0x277D82BE0](v18);
    v14[1] = v16;
    v14[0] = MEMORY[0x277D82BE0](location);
    dispatch_async(queue, &v8);
    MEMORY[0x277D82BD8](queue);
    objc_storeStrong(v14, 0);
    objc_storeStrong(&v13, 0);
  }

  objc_storeStrong(&location, 0);
}

uint64_t __59__AXPhoenixDataCollectionManager_updateUploadStatus_error___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) delegate];
  [v3 uploadStatusChanged:*(a1 + 48) error:*(a1 + 40)];
  return MEMORY[0x277D82BD8](v3);
}

- (void)reportFalsePositive:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v7 = AXLogBackTap();
  v6 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_2_8_32_8_64(v10, "[AXPhoenixDataCollectionManager reportFalsePositive:]", location[0]);
    _os_log_impl(&dword_25E4AC000, v7, v6, "[PHOENIX] %s False positive reported, moving files to FP folder: %@", v10, 0x16u);
  }

  objc_storeStrong(&v7, 0);
  v5 = [location[0] stringByAppendingString:@"_metadata.json"];
  v4 = [location[0] stringByAppendingString:@"_motion.json"];
  v9[0] = v5;
  v9[1] = v4;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:2];
  [AXPhoenixDataCollectionUtils moveFiles:"moveFiles:from:to:" from:? to:?];
  MEMORY[0x277D82BD8](v3);
  objc_storeStrong(&v4, 0);
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (AXPhoenixDataCollectionManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end