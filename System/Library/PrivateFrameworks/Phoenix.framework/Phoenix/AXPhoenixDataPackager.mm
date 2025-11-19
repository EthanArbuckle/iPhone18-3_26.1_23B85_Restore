@interface AXPhoenixDataPackager
- (AXPhoenixDataPackager)initWithFileSuffixes:(id)a3 fromDataDirectory:(id)a4;
- (BOOL)isValidFile:(id)a3;
- (id)_archiveDirectory:(id)a3;
- (id)_buildPackageDirectoryNameFromFilename:(id)a3 withMetadata:(id)a4;
- (id)_createPackageDirectory:(id)a3 withPackageDirectoryName:(id)a4;
- (id)_getDataForSubsession:(id)a3;
- (id)packageDataUsingFiles:(id)a3;
@end

@implementation AXPhoenixDataPackager

- (AXPhoenixDataPackager)initWithFileSuffixes:(id)a3 fromDataDirectory:(id)a4
{
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v9 = 0;
  objc_storeStrong(&v9, a4);
  v4 = v11;
  v11 = 0;
  v8.receiver = v4;
  v8.super_class = AXPhoenixDataPackager;
  v11 = [(AXPhoenixDataPackager *)&v8 init];
  objc_storeStrong(&v11, v11);
  if (v11)
  {
    [(AXPhoenixDataPackager *)v11 setAllowedFileSuffixes:location[0]];
    [(AXPhoenixDataPackager *)v11 setDataDirectory:v9];
  }

  v6 = MEMORY[0x277D82BE0](v11);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v11, 0);
  return v6;
}

- (id)packageDataUsingFiles:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v25 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v23 = [MEMORY[0x277CCAC30] predicateWithFormat:@"SELF ENDSWITH %@", kMetadataFileExtension];
  v22 = [location[0] filteredArrayUsingPredicate:v23];
  v21 = objc_opt_new();
  memset(__b, 0, sizeof(__b));
  obj = MEMORY[0x277D82BE0](v22);
  v14 = [obj countByEnumeratingWithState:__b objects:v26 count:16];
  if (v14)
  {
    v10 = *__b[2];
    v11 = 0;
    v12 = v14;
    while (1)
    {
      v9 = v11;
      if (*__b[2] != v10)
      {
        objc_enumerationMutation(obj);
      }

      v20 = *(__b[1] + 8 * v11);
      v18 = [(AXPhoenixDataPackager *)v25 _getDataForSubsession:v20];
      v17 = [(AXPhoenixDataPackager *)v25 _buildPackageDirectoryNameFromFilename:v20 withMetadata:v18];
      v5 = v25;
      v6 = [(AXPhoenixDataPackager *)v25 dataDirectory];
      v16 = [AXPhoenixDataPackager _createPackageDirectory:v5 withPackageDirectoryName:"_createPackageDirectory:withPackageDirectoryName:"];
      MEMORY[0x277D82BD8](v6);
      v8 = [v18 objectForKeyedSubscript:@"data_files"];
      v7 = [(AXPhoenixDataPackager *)v25 dataDirectory];
      [AXPhoenixDataCollectionUtils moveFiles:"moveFiles:from:to:" from:v8 to:?];
      MEMORY[0x277D82BD8](v7);
      MEMORY[0x277D82BD8](v8);
      v15 = [(AXPhoenixDataPackager *)v25 _archiveDirectory:v16];
      [v21 addObject:v15];
      objc_storeStrong(&v15, 0);
      objc_storeStrong(&v16, 0);
      objc_storeStrong(&v17, 0);
      objc_storeStrong(&v18, 0);
      ++v11;
      if (v9 + 1 >= v12)
      {
        v11 = 0;
        v12 = [obj countByEnumeratingWithState:__b objects:v26 count:16];
        if (!v12)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x277D82BD8](obj);
  v4 = MEMORY[0x277D82BE0](v21);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];

  return v4;
}

- (BOOL)isValidFile:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v14 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  memset(__b, 0, sizeof(__b));
  obj = [(AXPhoenixDataPackager *)v14 allowedFileSuffixes];
  v9 = [(NSArray *)obj countByEnumeratingWithState:__b objects:v16 count:16];
  if (v9)
  {
    v5 = *__b[2];
    v6 = 0;
    v7 = v9;
    while (1)
    {
      v4 = v6;
      if (*__b[2] != v5)
      {
        objc_enumerationMutation(obj);
      }

      v12 = *(__b[1] + 8 * v6);
      if ([location[0] hasSuffix:v12])
      {
        break;
      }

      ++v6;
      if (v4 + 1 >= v7)
      {
        v6 = 0;
        v7 = [(NSArray *)obj countByEnumeratingWithState:__b objects:v16 count:16];
        if (!v7)
        {
          goto LABEL_9;
        }
      }
    }

    v15 = 1;
    v10 = 1;
  }

  else
  {
LABEL_9:
    v10 = 0;
  }

  MEMORY[0x277D82BD8](obj);
  if (!v10)
  {
    v15 = 0;
  }

  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
  return v15 & 1;
}

- (id)_getDataForSubsession:(id)a3
{
  v18[2] = *MEMORY[0x277D85DE8];
  v16 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v4 = [(AXPhoenixDataPackager *)v16 dataDirectory];
  v14 = [(NSString *)v4 stringByAppendingPathComponent:location[0]];
  MEMORY[0x277D82BD8](v4);
  v13 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v14];
  v12 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v13 options:0 error:0];
  v5 = [v12 objectForKeyedSubscript:@"sensors"];
  v11 = [v5 allValues];
  MEMORY[0x277D82BD8](v5);
  v6 = [v12 objectForKeyedSubscript:@"annotations"];
  v10 = [v6 allValues];
  MEMORY[0x277D82BD8](v6);
  v9 = objc_opt_new();
  [v9 addObjectsFromArray:v11];
  [v9 addObjectsFromArray:v10];
  [v9 addObject:location[0]];
  v17[0] = @"data_files";
  v18[0] = v9;
  v17[1] = @"username";
  v7 = [v12 objectForKeyedSubscript:?];
  v18[1] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:2];
  MEMORY[0x277D82BD8](v7);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];

  return v8;
}

- (id)_buildPackageDirectoryNameFromFilename:(id)a3 withMetadata:(id)a4
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v18 = 0;
  objc_storeStrong(&v18, a4);
  v7 = [location[0] length];
  v17 = v7 - [kMetadataFileExtension length];
  v16 = [location[0] substringToIndex:v17];
  v13 = [location[0] rangeOfString:@"-"];
  v14 = v4;
  v15 = v13 + 1;
  v12 = [v16 substringFromIndex:v13 + 1];
  v8 = MEMORY[0x277CCACA8];
  v9 = [v18 objectForKeyedSubscript:@"username"];
  v11 = [v8 stringWithFormat:@"%@_%@", v9, v12];
  MEMORY[0x277D82BD8](v9);
  v10 = MEMORY[0x277D82BE0](v11);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(location, 0);

  return v10;
}

- (id)_createPackageDirectory:(id)a3 withPackageDirectoryName:(id)a4
{
  v22[2] = *MEMORY[0x277D85DE8];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v17 = 0;
  objc_storeStrong(&v17, a4);
  v7 = MEMORY[0x277CCACA8];
  v22[0] = location[0];
  v22[1] = v17;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:2];
  v16 = [v7 pathWithComponents:?];
  MEMORY[0x277D82BD8](v8);
  v15 = 0;
  v9 = [MEMORY[0x277CCAA00] defaultManager];
  v14 = v15;
  [v9 createDirectoryAtPath:v16 withIntermediateDirectories:0 attributes:0 error:&v14];
  objc_storeStrong(&v15, v14);
  MEMORY[0x277D82BD8](v9);
  if (v15)
  {
    oslog = AXLogBackTap();
    type = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_2_8_32_8_64(v21, "[AXPhoenixDataPackager _createPackageDirectory:withPackageDirectoryName:]", v15);
      _os_log_error_impl(&dword_25E4AC000, oslog, type, "[PHOENIX] %s Error while creating package directory: %@. Using /tmp...", v21, 0x16u);
    }

    objc_storeStrong(&oslog, 0);
    v19 = MEMORY[0x277D82BE0](@"/tmp");
    v11 = 1;
  }

  else
  {
    v10 = AXLogBackTap();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      __os_log_helper_16_2_2_8_32_8_64(v20, "[AXPhoenixDataPackager _createPackageDirectory:withPackageDirectoryName:]", v16);
      _os_log_impl(&dword_25E4AC000, v10, OS_LOG_TYPE_INFO, "[PHOENIX] %s Created package directory at %@", v20, 0x16u);
    }

    objc_storeStrong(&v10, 0);
    v19 = MEMORY[0x277D82BE0](v16);
    v11 = 1;
  }

  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
  v4 = v19;

  return v4;
}

- (id)_archiveDirectory:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.tgz", location[0]];
  v26 = [v27 stringByAppendingString:@".tmp"];
  v25 = [[AXPhoenixDataArchiver alloc] initWithPath:v26];
  v12 = location[0];
  v13 = [location[0] lastPathComponent];
  [v25 addDirectoryToArchive:v12 withDirName:?];
  MEMORY[0x277D82BD8](v13);
  [v25 closeArchive];
  v24 = 0;
  v14 = [MEMORY[0x277CCAA00] defaultManager];
  v23 = v24;
  [v14 removeItemAtPath:location[0] error:&v23];
  objc_storeStrong(&v24, v23);
  MEMORY[0x277D82BD8](v14);
  if (v24)
  {
    v22 = AXLogBackTap();
    v21 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      log = v22;
      type = v21;
      v11 = [location[0] lastPathComponent];
      v20 = MEMORY[0x277D82BE0](v11);
      __os_log_helper_16_2_3_8_32_8_64_8_64(v31, "[AXPhoenixDataPackager _archiveDirectory:]", v20, v24);
      _os_log_impl(&dword_25E4AC000, log, type, "[PHOENIX] %s Error deleting %@: %@", v31, 0x20u);
      MEMORY[0x277D82BD8](v11);
      objc_storeStrong(&v20, 0);
    }

    objc_storeStrong(&v22, 0);
  }

  else
  {
    v19 = AXLogBackTap();
    v18 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v6 = v19;
      v7 = v18;
      v8 = [location[0] lastPathComponent];
      v17 = MEMORY[0x277D82BE0](v8);
      __os_log_helper_16_2_2_8_32_8_64(v30, "[AXPhoenixDataPackager _archiveDirectory:]", v17);
      _os_log_impl(&dword_25E4AC000, v6, v7, "[PHOENIX] %s Deleted: %@", v30, 0x16u);
      MEMORY[0x277D82BD8](v8);
      objc_storeStrong(&v17, 0);
    }

    objc_storeStrong(&v19, 0);
  }

  objc_storeStrong(&v24, 0);
  v5 = [MEMORY[0x277CCAA00] defaultManager];
  obj = v24;
  [v5 moveItemAtPath:v26 toPath:v27 error:&obj];
  objc_storeStrong(&v24, obj);
  MEMORY[0x277D82BD8](v5);
  if (v24)
  {
    oslog = AXLogBackTap();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_2_8_32_8_64(v29, "[AXPhoenixDataPackager _archiveDirectory:]", v24);
      _os_log_error_impl(&dword_25E4AC000, oslog, OS_LOG_TYPE_ERROR, "[PHOENIX] %s Error while renaming temporary archive file: %@", v29, 0x16u);
    }

    objc_storeStrong(&oslog, 0);
  }

  v4 = MEMORY[0x277D82BE0](v27);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(&v27, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];

  return v4;
}

@end