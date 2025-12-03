@interface AXPhoenixDataCollectionUtils
+ (id)createFilename:(id)filename usingTimestamp:(id)timestamp withFileExtension:(id)extension underDirectory:(id)directory;
+ (void)deleteItem:(id)item;
+ (void)moveFiles:(id)files from:(id)from to:(id)to;
@end

@implementation AXPhoenixDataCollectionUtils

+ (id)createFilename:(id)filename usingTimestamp:(id)timestamp withFileExtension:(id)extension underDirectory:(id)directory
{
  v33 = *MEMORY[0x277D85DE8];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, filename);
  v30 = 0;
  objc_storeStrong(&v30, timestamp);
  v29 = 0;
  objc_storeStrong(&v29, extension);
  v28 = 0;
  objc_storeStrong(&v28, directory);
  v27 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v27 setDateFormat:@"YYYY-MM-dd-HH-mm-ss-SSS"];
  v26 = [v27 stringFromDate:v30];
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  identifierForVendor = [currentDevice identifierForVendor];
  uUIDString = [identifierForVendor UUIDString];
  v25 = [uUIDString substringToIndex:5];
  MEMORY[0x277D82BD8](uUIDString);
  MEMORY[0x277D82BD8](identifierForVendor);
  MEMORY[0x277D82BD8](currentDevice);
  v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%@_%@.%@", v25, v26, location[0], v29];
  if ([v26 isEqualToString:&stru_287032B48])
  {
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", location[0], v29];
    v7 = v24;
    v24 = v6;
    MEMORY[0x277D82BD8](v7);
  }

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v12 = [defaultManager fileExistsAtPath:v28 isDirectory:0];
  MEMORY[0x277D82BD8](defaultManager);
  if ((v12 & 1) == 0)
  {
    v23 = 0;
    defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
    v22 = v23;
    [defaultManager2 createDirectoryAtPath:v28 withIntermediateDirectories:1 attributes:0 error:&v22];
    objc_storeStrong(&v23, v22);
    MEMORY[0x277D82BD8](defaultManager2);
    if (v23)
    {
      v21 = AXLogBackTap();
      v20 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_2_8_32_8_64(v32, "+[AXPhoenixDataCollectionUtils createFilename:usingTimestamp:withFileExtension:underDirectory:]", v23);
        _os_log_error_impl(&dword_25E4AC000, v21, v20, "[PHOENIX] %s Error creating directory: %@", v32, 0x16u);
      }

      objc_storeStrong(&v21, 0);
    }

    objc_storeStrong(&v23, 0);
  }

  v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@/%@", v28, v24];
  v9 = MEMORY[0x277D82BE0](v19);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(&v27, 0);
  objc_storeStrong(&v28, 0);
  objc_storeStrong(&v29, 0);
  objc_storeStrong(&v30, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];

  return v9;
}

+ (void)deleteItem:(id)item
{
  v21 = *MEMORY[0x277D85DE8];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, item);
  v17 = 0;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v16 = v17;
  [defaultManager removeItemAtPath:location[0] error:&v16];
  objc_storeStrong(&v17, v16);
  MEMORY[0x277D82BD8](defaultManager);
  if (v17)
  {
    v15 = AXLogBackTap();
    v14 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      log = v15;
      type = v14;
      lastPathComponent = [location[0] lastPathComponent];
      v13 = MEMORY[0x277D82BE0](lastPathComponent);
      __os_log_helper_16_2_3_8_32_8_64_8_64(v20, "+[AXPhoenixDataCollectionUtils deleteItem:]", v13, v17);
      _os_log_impl(&dword_25E4AC000, log, type, "[PHOENIX] %s Error deleting %@: %@", v20, 0x20u);
      MEMORY[0x277D82BD8](lastPathComponent);
      objc_storeStrong(&v13, 0);
    }

    objc_storeStrong(&v15, 0);
  }

  else
  {
    oslog = AXLogBackTap();
    v11 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v3 = oslog;
      v4 = v11;
      lastPathComponent2 = [location[0] lastPathComponent];
      v10 = MEMORY[0x277D82BE0](lastPathComponent2);
      __os_log_helper_16_2_2_8_32_8_64(v19, "+[AXPhoenixDataCollectionUtils deleteItem:]", v10);
      _os_log_impl(&dword_25E4AC000, v3, v4, "[PHOENIX] %s Deleted: %@", v19, 0x16u);
      MEMORY[0x277D82BD8](lastPathComponent2);
      objc_storeStrong(&v10, 0);
    }

    objc_storeStrong(&oslog, 0);
  }

  objc_storeStrong(&v17, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

+ (void)moveFiles:(id)files from:(id)from to:(id)to
{
  v37 = *MEMORY[0x277D85DE8];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, files);
  v30 = 0;
  objc_storeStrong(&v30, from);
  v29 = 0;
  objc_storeStrong(&v29, to);
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  if (([defaultManager fileExistsAtPath:v29] & 1) == 0)
  {
    [defaultManager createDirectoryAtPath:v29 withIntermediateDirectories:1 attributes:0 error:?];
  }

  oslog = AXLogBackTap();
  type = OS_LOG_TYPE_INFO;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_INFO))
  {
    __os_log_helper_16_2_3_8_32_8_64_8_64(v36, "+[AXPhoenixDataCollectionUtils moveFiles:from:to:]", v30, v29);
    _os_log_impl(&dword_25E4AC000, oslog, type, "[PHOENIX] %s Moving files from %@ to %@", v36, 0x20u);
  }

  objc_storeStrong(&oslog, 0);
  memset(__b, 0, sizeof(__b));
  v17 = MEMORY[0x277D82BE0](location[0]);
  v18 = [v17 countByEnumeratingWithState:__b objects:v35 count:16];
  if (v18)
  {
    v14 = *__b[2];
    v15 = 0;
    v16 = v18;
    while (1)
    {
      v13 = v15;
      if (*__b[2] != v14)
      {
        objc_enumerationMutation(v17);
      }

      v25 = *(__b[1] + 8 * v15);
      v23 = 0;
      v8 = defaultManager;
      v6 = MEMORY[0x277CCACA8];
      v34[0] = v30;
      v34[1] = v25;
      v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:?];
      v11 = [v6 pathWithComponents:?];
      v7 = MEMORY[0x277CCACA8];
      v33[0] = v29;
      v33[1] = v25;
      v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:2];
      v9 = [v7 pathWithComponents:?];
      v22 = v23;
      [v8 moveItemAtPath:v11 toPath:? error:?];
      objc_storeStrong(&v23, v22);
      MEMORY[0x277D82BD8](v9);
      MEMORY[0x277D82BD8](v10);
      MEMORY[0x277D82BD8](v11);
      MEMORY[0x277D82BD8](v12);
      if (v23)
      {
        v21 = AXLogBackTap();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          v5 = v21;
          __os_log_helper_16_2_2_8_32_8_64(v32, "+[AXPhoenixDataCollectionUtils moveFiles:from:to:]", v25);
          _os_log_error_impl(&dword_25E4AC000, v5, OS_LOG_TYPE_ERROR, "[PHOENIX] %s Error moving file to package directory: %@", v32, 0x16u);
        }

        objc_storeStrong(&v21, 0);
      }

      objc_storeStrong(&v23, 0);
      ++v15;
      if (v13 + 1 >= v16)
      {
        v15 = 0;
        v16 = [v17 countByEnumeratingWithState:__b objects:v35 count:16];
        if (!v16)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x277D82BD8](v17);
  objc_storeStrong(&defaultManager, 0);
  objc_storeStrong(&v29, 0);
  objc_storeStrong(&v30, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

@end