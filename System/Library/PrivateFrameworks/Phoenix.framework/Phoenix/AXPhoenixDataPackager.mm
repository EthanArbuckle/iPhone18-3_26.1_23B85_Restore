@interface AXPhoenixDataPackager
- (AXPhoenixDataPackager)initWithFileSuffixes:(id)suffixes fromDataDirectory:(id)directory;
- (BOOL)isValidFile:(id)file;
- (id)_archiveDirectory:(id)directory;
- (id)_buildPackageDirectoryNameFromFilename:(id)filename withMetadata:(id)metadata;
- (id)_createPackageDirectory:(id)directory withPackageDirectoryName:(id)name;
- (id)_getDataForSubsession:(id)subsession;
- (id)packageDataUsingFiles:(id)files;
@end

@implementation AXPhoenixDataPackager

- (AXPhoenixDataPackager)initWithFileSuffixes:(id)suffixes fromDataDirectory:(id)directory
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, suffixes);
  v9 = 0;
  objc_storeStrong(&v9, directory);
  v4 = selfCopy;
  selfCopy = 0;
  v8.receiver = v4;
  v8.super_class = AXPhoenixDataPackager;
  selfCopy = [(AXPhoenixDataPackager *)&v8 init];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    [(AXPhoenixDataPackager *)selfCopy setAllowedFileSuffixes:location[0]];
    [(AXPhoenixDataPackager *)selfCopy setDataDirectory:v9];
  }

  v6 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v6;
}

- (id)packageDataUsingFiles:(id)files
{
  v27 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, files);
  kMetadataFileExtension = [MEMORY[0x277CCAC30] predicateWithFormat:@"SELF ENDSWITH %@", kMetadataFileExtension];
  v22 = [location[0] filteredArrayUsingPredicate:kMetadataFileExtension];
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
      v18 = [(AXPhoenixDataPackager *)selfCopy _getDataForSubsession:v20];
      v17 = [(AXPhoenixDataPackager *)selfCopy _buildPackageDirectoryNameFromFilename:v20 withMetadata:v18];
      v5 = selfCopy;
      dataDirectory = [(AXPhoenixDataPackager *)selfCopy dataDirectory];
      v16 = [AXPhoenixDataPackager _createPackageDirectory:v5 withPackageDirectoryName:"_createPackageDirectory:withPackageDirectoryName:"];
      MEMORY[0x277D82BD8](dataDirectory);
      v8 = [v18 objectForKeyedSubscript:@"data_files"];
      dataDirectory2 = [(AXPhoenixDataPackager *)selfCopy dataDirectory];
      [AXPhoenixDataCollectionUtils moveFiles:"moveFiles:from:to:" from:v8 to:?];
      MEMORY[0x277D82BD8](dataDirectory2);
      MEMORY[0x277D82BD8](v8);
      v15 = [(AXPhoenixDataPackager *)selfCopy _archiveDirectory:v16];
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
  objc_storeStrong(&kMetadataFileExtension, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];

  return v4;
}

- (BOOL)isValidFile:(id)file
{
  v17 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, file);
  memset(__b, 0, sizeof(__b));
  obj = [(AXPhoenixDataPackager *)selfCopy allowedFileSuffixes];
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

- (id)_getDataForSubsession:(id)subsession
{
  v18[2] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, subsession);
  dataDirectory = [(AXPhoenixDataPackager *)selfCopy dataDirectory];
  v14 = [(NSString *)dataDirectory stringByAppendingPathComponent:location[0]];
  MEMORY[0x277D82BD8](dataDirectory);
  v13 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v14];
  v12 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v13 options:0 error:0];
  v5 = [v12 objectForKeyedSubscript:@"sensors"];
  allValues = [v5 allValues];
  MEMORY[0x277D82BD8](v5);
  v6 = [v12 objectForKeyedSubscript:@"annotations"];
  allValues2 = [v6 allValues];
  MEMORY[0x277D82BD8](v6);
  v9 = objc_opt_new();
  [v9 addObjectsFromArray:allValues];
  [v9 addObjectsFromArray:allValues2];
  [v9 addObject:location[0]];
  v17[0] = @"data_files";
  v18[0] = v9;
  v17[1] = @"username";
  v7 = [v12 objectForKeyedSubscript:?];
  v18[1] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:2];
  MEMORY[0x277D82BD8](v7);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&allValues2, 0);
  objc_storeStrong(&allValues, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];

  return v8;
}

- (id)_buildPackageDirectoryNameFromFilename:(id)filename withMetadata:(id)metadata
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, filename);
  v18 = 0;
  objc_storeStrong(&v18, metadata);
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

- (id)_createPackageDirectory:(id)directory withPackageDirectoryName:(id)name
{
  v22[2] = *MEMORY[0x277D85DE8];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, directory);
  v17 = 0;
  objc_storeStrong(&v17, name);
  v7 = MEMORY[0x277CCACA8];
  v22[0] = location[0];
  v22[1] = v17;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:2];
  v16 = [v7 pathWithComponents:?];
  MEMORY[0x277D82BD8](v8);
  v15 = 0;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v14 = v15;
  [defaultManager createDirectoryAtPath:v16 withIntermediateDirectories:0 attributes:0 error:&v14];
  objc_storeStrong(&v15, v14);
  MEMORY[0x277D82BD8](defaultManager);
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

- (id)_archiveDirectory:(id)directory
{
  v32 = *MEMORY[0x277D85DE8];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, directory);
  v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.tgz", location[0]];
  v26 = [v27 stringByAppendingString:@".tmp"];
  v25 = [[AXPhoenixDataArchiver alloc] initWithPath:v26];
  v12 = location[0];
  lastPathComponent = [location[0] lastPathComponent];
  [v25 addDirectoryToArchive:v12 withDirName:?];
  MEMORY[0x277D82BD8](lastPathComponent);
  [v25 closeArchive];
  v24 = 0;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v23 = v24;
  [defaultManager removeItemAtPath:location[0] error:&v23];
  objc_storeStrong(&v24, v23);
  MEMORY[0x277D82BD8](defaultManager);
  if (v24)
  {
    v22 = AXLogBackTap();
    v21 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      log = v22;
      type = v21;
      lastPathComponent2 = [location[0] lastPathComponent];
      v20 = MEMORY[0x277D82BE0](lastPathComponent2);
      __os_log_helper_16_2_3_8_32_8_64_8_64(v31, "[AXPhoenixDataPackager _archiveDirectory:]", v20, v24);
      _os_log_impl(&dword_25E4AC000, log, type, "[PHOENIX] %s Error deleting %@: %@", v31, 0x20u);
      MEMORY[0x277D82BD8](lastPathComponent2);
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
      lastPathComponent3 = [location[0] lastPathComponent];
      v17 = MEMORY[0x277D82BE0](lastPathComponent3);
      __os_log_helper_16_2_2_8_32_8_64(v30, "[AXPhoenixDataPackager _archiveDirectory:]", v17);
      _os_log_impl(&dword_25E4AC000, v6, v7, "[PHOENIX] %s Deleted: %@", v30, 0x16u);
      MEMORY[0x277D82BD8](lastPathComponent3);
      objc_storeStrong(&v17, 0);
    }

    objc_storeStrong(&v19, 0);
  }

  objc_storeStrong(&v24, 0);
  defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
  obj = v24;
  [defaultManager2 moveItemAtPath:v26 toPath:v27 error:&obj];
  objc_storeStrong(&v24, obj);
  MEMORY[0x277D82BD8](defaultManager2);
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