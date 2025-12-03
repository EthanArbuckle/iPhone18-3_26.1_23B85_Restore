@interface PLUrsaUtilities
+ (id)createMetadataFile:(id)file buildVersion:(id)version;
+ (id)generateTTRURLWithRadarParams:(id)params procName:(id)name violationTime:(id)time metadataPath:(id)path;
@end

@implementation PLUrsaUtilities

+ (id)createMetadataFile:(id)file buildVersion:(id)version
{
  v40[1] = *MEMORY[0x277D85DE8];
  fileCopy = file;
  versionCopy = version;
  if (![fileCopy length])
  {
    v7 = PLLogUrsaUtilities();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      +[PLUrsaUtilities createMetadataFile:buildVersion:];
    }

    goto LABEL_20;
  }

  if (![versionCopy length])
  {
    v7 = PLLogUrsaUtilities();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      +[PLUrsaUtilities createMetadataFile:buildVersion:];
    }

LABEL_20:
    path3 = 0;
    goto LABEL_37;
  }

  v7 = [MEMORY[0x277CBEBC0] fileURLWithPath:@"/var/mobile/Library/Ursa" isDirectory:1];
  v39 = *MEMORY[0x277CCA180];
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:511];
  v40[0] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v40 forKeys:&v39 count:1];

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v11 = [defaultManager fileExistsAtPath:@"/var/mobile/Library/Ursa"];

  if ((v11 & 1) == 0)
  {
    defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
    v34 = 0;
    v13 = [defaultManager2 createDirectoryAtURL:v7 withIntermediateDirectories:1 attributes:v9 error:&v34];
    v14 = v34;

    v15 = PLLogUrsaUtilities();
    v16 = v15;
    if (!v13 || v14)
    {
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [PLUrsaUtilities createMetadataFile:v14 buildVersion:v16];
      }

      path3 = 0;
      goto LABEL_36;
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      [PLUrsaUtilities createMetadataFile:v16 buildVersion:?];
    }
  }

  v16 = [v7 URLByAppendingPathComponent:@"power_exceptions.json" isDirectory:0];
  if (v16)
  {
    defaultManager3 = [MEMORY[0x277CCAA00] defaultManager];
    [defaultManager3 removeItemAtURL:v16 error:0];

    v37[0] = @"process";
    v37[1] = @"build";
    v38[0] = fileCopy;
    v38[1] = versionCopy;
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:v37 count:2];
    v33 = 0;
    v19 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v18 options:0 error:&v33];
    v14 = v33;
    if (v14 || !v19)
    {
      v29 = PLLogUrsaUtilities();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        [PLUrsaUtilities createMetadataFile:v14 buildVersion:v29];
      }

      path3 = 0;
    }

    else
    {
      defaultManager4 = [MEMORY[0x277CCAA00] defaultManager];
      path = [v16 path];
      v22 = v9;
      v23 = path;
      v32 = v22;
      v24 = [defaultManager4 createFileAtPath:path contents:v19 attributes:?];

      v25 = PLLogUrsaUtilities();
      v26 = v25;
      if (v24)
      {
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          path2 = [v16 path];
          *buf = 138543362;
          v36 = path2;
          _os_log_impl(&dword_25EE51000, v26, OS_LOG_TYPE_DEFAULT, "PLUrsaUtilities: wrote metadata to: %{public}@", buf, 0xCu);
        }

        path3 = [v16 path];
      }

      else
      {
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          +[PLUrsaUtilities createMetadataFile:buildVersion:];
        }

        path3 = 0;
      }

      v9 = v32;
    }
  }

  else
  {
    v18 = PLLogUrsaUtilities();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      +[PLUrsaUtilities createMetadataFile:buildVersion:];
    }

    v14 = 0;
    path3 = 0;
  }

LABEL_36:
LABEL_37:

  v30 = *MEMORY[0x277D85DE8];

  return path3;
}

+ (id)generateTTRURLWithRadarParams:(id)params procName:(id)name violationTime:(id)time metadataPath:(id)path
{
  v50 = *MEMORY[0x277D85DE8];
  paramsCopy = params;
  nameCopy = name;
  timeCopy = time;
  pathCopy = path;
  if (!paramsCopy || ![paramsCopy count])
  {
    v14 = PLLogUrsaUtilities();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      +[PLUrsaUtilities generateTTRURLWithRadarParams:procName:violationTime:metadataPath:];
    }

    goto LABEL_31;
  }

  if (!nameCopy || ![nameCopy length])
  {
    v14 = PLLogUrsaUtilities();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      +[PLUrsaUtilities generateTTRURLWithRadarParams:procName:violationTime:metadataPath:];
    }

LABEL_31:
    v30 = 0;
    goto LABEL_32;
  }

  if (!timeCopy)
  {
    v12 = PLLogUrsaUtilities();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      +[PLUrsaUtilities generateTTRURLWithRadarParams:procName:violationTime:metadataPath:];
    }

    timeCopy = [MEMORY[0x277CBEAA8] date];
  }

  v13 = [MEMORY[0x277CCACE0] componentsWithString:@"tap-to-radar://new?"];
  v14 = v13;
  if (v13)
  {
    v38 = v13;
    v43 = nameCopy;
    v40 = paramsCopy;
    v15 = [paramsCopy mutableCopy];
    v16 = v15;
    if (pathCopy)
    {
      [v15 setObject:pathCopy forKeyedSubscript:@"Attachments"];
      [v16 setObject:@"1" forKeyedSubscript:@"DeleteOnAttach"];
    }

    v39 = pathCopy;
    v17 = objc_alloc_init(MEMORY[0x277CCA968]);
    [v17 setDateFormat:@"yyyy.MM.dd_HH-mm-ss"];
    v37 = v17;
    v36 = [v17 stringFromDate:timeCopy];
    [v16 setObject:? forKeyedSubscript:?];
    array = [MEMORY[0x277CBEB18] array];
    v41 = objc_alloc_init(MEMORY[0x277CCA968]);
    [v41 setDateFormat:@"MM/dd HH:mm"];
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v19 = v16;
    v20 = [v19 countByEnumeratingWithState:&v45 objects:v49 count:16];
    v42 = array;
    if (v20)
    {
      v21 = v20;
      v22 = *v46;
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v46 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = *(*(&v45 + 1) + 8 * i);
          v25 = [v19 objectForKeyedSubscript:v24];
          if ([v25 containsString:@"$proc"])
          {
            v26 = [v25 stringByReplacingOccurrencesOfString:@"$proc" withString:v43];

            v25 = v26;
          }

          if ([v25 containsString:@"$time"])
          {
            v27 = [v41 stringFromDate:timeCopy];
            v28 = [v25 stringByReplacingOccurrencesOfString:@"$time" withString:v27];

            v25 = v28;
            array = v42;
          }

          v29 = [MEMORY[0x277CCAD18] queryItemWithName:v24 value:v25];
          [array addObject:v29];
        }

        v21 = [v19 countByEnumeratingWithState:&v45 objects:v49 count:16];
      }

      while (v21);
    }

    v14 = v38;
    [v38 setQueryItems:array];
    v30 = [v38 URL];
    v31 = PLLogUrsaUtilities();
    v32 = v31;
    if (v30)
    {
      pathCopy = v39;
      paramsCopy = v40;
      nameCopy = v43;
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
      {
        [PLUrsaUtilities generateTTRURLWithRadarParams:v30 procName:v32 violationTime:? metadataPath:?];
      }

      v33 = v30;
    }

    else
    {
      pathCopy = v39;
      paramsCopy = v40;
      nameCopy = v43;
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        +[PLUrsaUtilities generateTTRURLWithRadarParams:procName:violationTime:metadataPath:];
      }
    }
  }

  else
  {
    v19 = PLLogUrsaUtilities();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      +[PLUrsaUtilities generateTTRURLWithRadarParams:procName:violationTime:metadataPath:];
    }

    v30 = 0;
  }

LABEL_32:
  v34 = *MEMORY[0x277D85DE8];

  return v30;
}

+ (void)createMetadataFile:(uint64_t)a1 buildVersion:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_25EE51000, a2, OS_LOG_TYPE_ERROR, "PLUrsaUtilities: failed to create Ursa directory: %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

+ (void)createMetadataFile:(os_log_t)log buildVersion:.cold.2(os_log_t log)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = @"/var/mobile/Library/Ursa";
  _os_log_debug_impl(&dword_25EE51000, log, OS_LOG_TYPE_DEBUG, "PLUrsaUtilities: created Ursa directory at: %{public}@", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

+ (void)createMetadataFile:(uint64_t)a1 buildVersion:(NSObject *)a2 .cold.4(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_25EE51000, a2, OS_LOG_TYPE_ERROR, "PLUrsaUtilities: failed to create metadata: %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

+ (void)generateTTRURLWithRadarParams:(void *)a1 procName:(NSObject *)a2 violationTime:metadataPath:.cold.2(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [a1 absoluteString];
  v5 = 138543362;
  v6 = v3;
  _os_log_debug_impl(&dword_25EE51000, a2, OS_LOG_TYPE_DEBUG, "PLUrsaUtilities: generated TTR URL: %{public}@", &v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

@end