@interface NSFileManager(RTExtensions)
+ (NSObject)routineCacheDirectoryPath;
+ (id)crashReporterPath;
+ (id)frameworkDirectoryPath;
+ (id)pathInCacheDirectory:()RTExtensions;
+ (id)routineBluePOIQueryPath;
+ (id)routinePreferencesPath;
+ (id)sortedContentsOfDirectoryAtURL:()RTExtensions withExtension:;
+ (id)userCacheDirectoryPath;
+ (id)userLibraryPath;
+ (id)userPreferencesPath;
+ (uint64_t)directorySizeAtPath:()RTExtensions;
@end

@implementation NSFileManager(RTExtensions)

+ (id)frameworkDirectoryPath
{
  v0 = [MEMORY[0x277CCAA00] frameworkBundle];
  v1 = [v0 bundleURL];
  v2 = [v1 absoluteString];

  return v2;
}

+ (id)userCacheDirectoryPath
{
  v0 = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, 1uLL, 1);
  if ([v0 count])
  {
    v1 = [v0 firstObject];
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

+ (NSObject)routineCacheDirectoryPath
{
  v17 = *MEMORY[0x277D85DE8];
  v1 = [a1 userCacheDirectoryPath];
  if (v1)
  {
    v2 = v1;
    v3 = [MEMORY[0x277CCAA00] defaultsDomain];
    v4 = [v2 stringByAppendingPathComponent:v3];

    v5 = [MEMORY[0x277CCAA00] defaultManager];
    LOBYTE(v3) = [v5 fileExistsAtPath:v4];

    if ((v3 & 1) != 0 || ([MEMORY[0x277CCAA00] defaultManager], v6 = objc_claimAutoreleasedReturnValue(), v12 = 0, v7 = objc_msgSend(v6, "createDirectoryAtPath:withIntermediateDirectories:attributes:error:", v4, 1, 0, &v12), v8 = v12, v6, v7) && !v8)
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_13;
      }

      v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v14 = v4;
        _os_log_debug_impl(&dword_2304B3000, v9, OS_LOG_TYPE_DEBUG, "routine cache directory path, %@", buf, 0xCu);
      }
    }

    else
    {
      v10 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v14 = v4;
        v15 = 2112;
        v16 = v8;
        _os_log_error_impl(&dword_2304B3000, v10, OS_LOG_TYPE_ERROR, "failed to create %@, error, %@", buf, 0x16u);
      }

      v9 = v4;
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

LABEL_13:

  return v4;
}

+ (id)pathInCacheDirectory:()RTExtensions
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (!v3)
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v22 = 136315394;
      v23 = "+[NSFileManager(RTExtensions) pathInCacheDirectory:]";
      v24 = 1024;
      v25 = 162;
      _os_log_error_impl(&dword_2304B3000, v4, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: path (in %s:%d)", &v22, 0x12u);
    }
  }

  v5 = [MEMORY[0x277CCAA00] routineCacheDirectoryPath];
  v6 = v5;
  if (v3)
  {
    if (v5)
    {
      v7 = MEMORY[0x277CBEBC0];
      v8 = [v5 stringByAppendingPathComponent:v3];
      v9 = [v7 fileURLWithPath:v8];

      v10 = [v9 standardizedURL];
      v11 = [v9 absoluteString];
      v12 = [v10 absoluteString];
      v13 = [v11 isEqualToString:v12];

      if (v13)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
        {
          v14 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
          {
            v21 = [v10 path];
            v22 = 138412290;
            v23 = v21;
            _os_log_debug_impl(&dword_2304B3000, v14, OS_LOG_TYPE_DEBUG, "path in cache directory, %@", &v22, 0xCu);
          }
        }

        v15 = [v10 path];
      }

      else
      {
        v15 = 0;
      }
    }

    else
    {
      v18 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v22 = 136315394;
        v23 = "+[NSFileManager(RTExtensions) pathInCacheDirectory:]";
        v24 = 1024;
        v25 = 174;
        _os_log_error_impl(&dword_2304B3000, v18, OS_LOG_TYPE_ERROR, "Cache path was nil (in %s:%d)", &v22, 0x12u);
      }

      v19 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v22) = 0;
        _os_log_error_impl(&dword_2304B3000, v19, OS_LOG_TYPE_ERROR, "Cache path was nil", &v22, 2u);
      }

      v15 = 0;
    }
  }

  else
  {
    if (!v5)
    {
      v16 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v22 = 136315394;
        v23 = "+[NSFileManager(RTExtensions) pathInCacheDirectory:]";
        v24 = 1024;
        v25 = 166;
        _os_log_error_impl(&dword_2304B3000, v16, OS_LOG_TYPE_ERROR, "Cache path was nil (in %s:%d)", &v22, 0x12u);
      }

      v17 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v22) = 0;
        _os_log_error_impl(&dword_2304B3000, v17, OS_LOG_TYPE_ERROR, "Cache path was nil", &v22, 2u);
      }
    }

    v15 = v6;
  }

  return v15;
}

+ (id)userLibraryPath
{
  v0 = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, 1uLL, 1);
  if ([v0 count])
  {
    v1 = [v0 firstObject];
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

+ (id)userPreferencesPath
{
  v1 = [a1 userLibraryPath];
  v2 = v1;
  if (v1)
  {
    v3 = [v1 stringByAppendingPathComponent:@"Preferences"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

+ (id)routinePreferencesPath
{
  v2 = [a1 userPreferencesPath];
  if (v2)
  {
    v3 = [a1 defaultsDomain];
    v4 = [v2 stringByAppendingPathComponent:v3];
    v5 = [v4 stringByAppendingPathExtension:@"plist"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)routineBluePOIQueryPath
{
  v1 = [a1 userLibraryPath];
  v2 = v1;
  if (v1)
  {
    v3 = [v1 stringByAppendingPathComponent:@"BluePOIQueries"];
    v4 = [v3 stringByAppendingPathExtension:@"json"];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)crashReporterPath
{
  v1 = [a1 userLibraryPath];
  if (v1)
  {
    v2 = [&unk_2845A0B90 componentsJoinedByString:@"/"];
    v3 = [v1 stringByAppendingPathComponent:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

+ (id)sortedContentsOfDirectoryAtURL:()RTExtensions withExtension:
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277CCAA00] defaultManager];
  v15 = 0;
  v9 = [v8 contentsOfDirectoryAtURL:v6 includingPropertiesForKeys:0 options:3 error:&v15];
  v10 = v15;

  if (!v10)
  {
    v11 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K = %@", @"pathExtension", v7];
    v13 = [v9 filteredArrayUsingPredicate:v11];

    v12 = [a1 sortFilesByName:v13];
    v9 = v13;
LABEL_7:

    goto LABEL_9;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v17 = v6;
      v18 = 2112;
      v19 = v10;
      _os_log_impl(&dword_2304B3000, v11, OS_LOG_TYPE_INFO, "encountered error getting contents of directory, %@, error, %@", buf, 0x16u);
    }

    v12 = 0;
    goto LABEL_7;
  }

  v12 = 0;
LABEL_9:

  return v12;
}

+ (uint64_t)directorySizeAtPath:()RTExtensions
{
  aSelector = a2;
  v30 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CCAA00] defaultManager];
  v5 = [v4 subpathsOfDirectoryAtPath:v3 error:0];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v19 objects:v29 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v20;
    v18 = *MEMORY[0x277CCA1C0];
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = [v3 stringByAppendingPathComponent:{*(*(&v19 + 1) + 8 * i), aSelector}];
        buf[0] = 0;
        if ([v4 fileExistsAtPath:v11 isDirectory:buf] && (buf[0] & 1) == 0)
        {
          v12 = [v4 attributesOfItemAtPath:v11 error:0];
          v13 = [v12 objectForKeyedSubscript:v18];
          v8 += [v13 unsignedIntegerValue];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v19 objects:v29 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v14 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = NSStringFromSelector(aSelector);
      *buf = 138412802;
      v24 = v15;
      v25 = 2112;
      v26 = v3;
      v27 = 2048;
      v28 = v8;
      _os_log_impl(&dword_2304B3000, v14, OS_LOG_TYPE_INFO, "%@, path, %@, size, %lu", buf, 0x20u);
    }
  }

  return v8;
}

@end