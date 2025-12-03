@interface PPPaths
+ (id)filename:(id)filename logSubdirectory:(id)subdirectory;
+ (id)filename:(id)filename subdirectory:(id)subdirectory;
+ (id)logDirectoryCreateIfNeeded:;
+ (id)logSubdirectory:(uint64_t)subdirectory createIfNeeded:(void *)needed;
+ (id)resourcesDirectory;
+ (id)subdirectory:(uint64_t)subdirectory createIfNeeded:(void *)needed;
+ (id)topDirectoryCreateIfNeeded:;
@end

@implementation PPPaths

+ (id)resourcesDirectory
{
  v4 = objc_autoreleasePoolPush();
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  objc_autoreleasePoolPop(v4);
  resourcePath = [v5 resourcePath];
  if (!resourcePath)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PPPaths.m" lineNumber:313 description:@"Error: Unable to find resource directory"];
  }

  return resourcePath;
}

+ (id)filename:(id)filename logSubdirectory:(id)subdirectory
{
  filenameCopy = filename;
  subdirectoryCopy = subdirectory;
  v7 = objc_opt_self();
  v8 = objc_autoreleasePoolPush();
  v9 = [PPPaths logSubdirectory:v7 createIfNeeded:subdirectoryCopy];
  v10 = [v9 stringByAppendingPathComponent:filenameCopy];

  objc_autoreleasePoolPop(v8);

  return v10;
}

+ (id)logSubdirectory:(uint64_t)subdirectory createIfNeeded:(void *)needed
{
  neededCopy = needed;
  v3 = objc_opt_self();
  v4 = objc_autoreleasePoolPush();
  v5 = +[PPPaths logDirectoryCreateIfNeeded:];
  v6 = [v5 stringByAppendingPathComponent:neededCopy];

  objc_autoreleasePoolPop(v4);
  v7 = v3;
  objc_sync_enter(v7);
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v12 = 0;
  [defaultManager createDirectoryAtPath:v6 withIntermediateDirectories:1 attributes:0 error:&v12];
  v9 = v12;

  objc_sync_exit(v7);
  if (v9)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:sel_logSubdirectory_createIfNeeded_ object:v7 file:@"PPPaths.m" lineNumber:291 description:{@"Error creating subdirectory for Portrait logs: %@", v9}];
  }

  return v6;
}

+ (id)logDirectoryCreateIfNeeded:
{
  v0 = objc_opt_self();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__PPPaths_logDirectoryCreateIfNeeded___block_invoke;
  block[3] = &__block_descriptor_49_e5_v8__0l;
  block[4] = sel_logDirectoryCreateIfNeeded_;
  block[5] = v0;
  v4 = 1;
  if (logDirectoryCreateIfNeeded__onceToken != -1)
  {
    dispatch_once(&logDirectoryCreateIfNeeded__onceToken, block);
  }

  v1 = logDirectoryCreateIfNeeded__dir;

  return v1;
}

void __38__PPPaths_logDirectoryCreateIfNeeded___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, 1uLL, 1);
  v3 = [v2 objectAtIndexedSubscript:0];

  v4 = objc_autoreleasePoolPush();
  v5 = [v3 stringByAppendingPathComponent:@"Logs"];
  objc_autoreleasePoolPop(v4);

  if (!v5 || ![v5 length])
  {
    v17 = [MEMORY[0x277CCA890] currentHandler];
    [v17 handleFailureInMethod:*(a1 + 32) object:*(a1 + 40) file:@"PPPaths.m" lineNumber:244 description:@"failed to construct the log root path"];
  }

  v6 = objc_autoreleasePoolPush();
  v7 = [v5 stringByAppendingPathComponent:@"PersonalizationPortrait"];
  objc_autoreleasePoolPop(v6);
  v8 = logDirectoryCreateIfNeeded__dir;
  logDirectoryCreateIfNeeded__dir = v7;

  v9 = pp_default_log_handle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v22 = logDirectoryCreateIfNeeded__dir;
    _os_log_debug_impl(&dword_23224A000, v9, OS_LOG_TYPE_DEBUG, "using log directory: %@", buf, 0xCu);
  }

  if (*(a1 + 48) == 1)
  {
    v10 = [MEMORY[0x277CCAA00] defaultManager];
    v20 = 0;
    [v10 createDirectoryAtPath:logDirectoryCreateIfNeeded__dir withIntermediateDirectories:1 attributes:0 error:&v20];
    v11 = v20;
    v12 = v11;
    if (v11)
    {
      if ([v11 code] == 640)
      {
        v13 = [v12 domain];
        v14 = [v13 isEqualToString:*MEMORY[0x277CCA050]];

        if (v14)
        {
          v19 = pp_default_log_handle();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v22 = logDirectoryCreateIfNeeded__dir;
            _os_log_error_impl(&dword_23224A000, v19, OS_LOG_TYPE_ERROR, "Portrait exiting due to lack of disk space while creating %@", buf, 0xCu);
          }

          PPExit(2002);
        }
      }

      if ([v12 code] == 513)
      {
        v18 = pp_default_log_handle();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v22 = logDirectoryCreateIfNeeded__dir;
          _os_log_error_impl(&dword_23224A000, v18, OS_LOG_TYPE_ERROR, "Portrait exiting due to lack of write permissions to directory %@", buf, 0xCu);
        }

        PPExit(2003);
      }

      v15 = [MEMORY[0x277CCA890] currentHandler];
      [v15 handleFailureInMethod:*(a1 + 32) object:*(a1 + 40) file:@"PPPaths.m" lineNumber:262 description:{@"Error creating directory for PersonalizationPortrait: %@", v12}];
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

+ (id)filename:(id)filename subdirectory:(id)subdirectory
{
  filenameCopy = filename;
  subdirectoryCopy = subdirectory;
  v7 = objc_opt_self();
  v8 = objc_autoreleasePoolPush();
  v9 = [PPPaths subdirectory:v7 createIfNeeded:subdirectoryCopy];
  v10 = [v9 stringByAppendingPathComponent:filenameCopy];

  objc_autoreleasePoolPop(v8);

  return v10;
}

+ (id)subdirectory:(uint64_t)subdirectory createIfNeeded:(void *)needed
{
  v22 = *MEMORY[0x277D85DE8];
  neededCopy = needed;
  v3 = objc_opt_self();
  v4 = objc_autoreleasePoolPush();
  v5 = +[PPPaths topDirectoryCreateIfNeeded:];
  v6 = [v5 stringByAppendingPathComponent:neededCopy];

  objc_autoreleasePoolPop(v4);
  v7 = v3;
  objc_sync_enter(v7);
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v19 = 0;
  [defaultManager createDirectoryAtPath:v6 withIntermediateDirectories:1 attributes:0 error:&v19];
  v9 = v19;

  objc_sync_exit(v7);
  if (v9)
  {
    if ([v9 code] == 640)
    {
      domain = [v9 domain];
      v11 = [domain isEqualToString:*MEMORY[0x277CCA050]];

      if (v11)
      {
        v17 = pp_default_log_handle();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v21 = v9;
          _os_log_error_impl(&dword_23224A000, v17, OS_LOG_TYPE_ERROR, "PPPaths: failed to create subdirectory due to lack of space: %@", buf, 0xCu);
        }

        if ([MEMORY[0x277D42590] isInternalBuild])
        {
          v18 = pp_default_log_handle();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
          {
            *buf = 0;
            _os_log_fault_impl(&dword_23224A000, v18, OS_LOG_TYPE_FAULT, "PPPaths: unable to create directory due to lack of space.", buf, 2u);
          }
        }

        PPExit(2002);
      }
    }

    if ([v9 code] == 513)
    {
      v15 = pp_default_log_handle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v21 = v9;
        _os_log_error_impl(&dword_23224A000, v15, OS_LOG_TYPE_ERROR, "PPPaths: failed to create subdirectory due to lack of permissions: %@", buf, 0xCu);
      }

      if ([MEMORY[0x277D42590] isInternalBuild])
      {
        v16 = pp_default_log_handle();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_fault_impl(&dword_23224A000, v16, OS_LOG_TYPE_FAULT, "PPPaths: unable to create directory due to lack of permissions.", buf, 2u);
        }
      }

      PPExit(2003);
    }

    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:sel_subdirectory_createIfNeeded_ object:v7 file:@"PPPaths.m" lineNumber:201 description:{@"Error creating subdirectory for Portrait info: %@", v9}];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (id)topDirectoryCreateIfNeeded:
{
  v0 = objc_opt_self();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__PPPaths_topDirectoryCreateIfNeeded___block_invoke;
  block[3] = &__block_descriptor_49_e5_v8__0l;
  block[4] = sel_topDirectoryCreateIfNeeded_;
  block[5] = v0;
  v4 = 1;
  if (topDirectoryCreateIfNeeded__onceToken != -1)
  {
    dispatch_once(&topDirectoryCreateIfNeeded__onceToken, block);
  }

  v1 = topDirectoryCreateIfNeeded__dir;

  return v1;
}

void __38__PPPaths_topDirectoryCreateIfNeeded___block_invoke(uint64_t a1)
{
  v34 = *MEMORY[0x277D85DE8];
  v2 = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, 1uLL, 1);
  v3 = [v2 objectAtIndexedSubscript:0];

  if (!v3 || ![v3 length])
  {
    v20 = [MEMORY[0x277CCA890] currentHandler];
    [v20 handleFailureInMethod:*(a1 + 32) object:*(a1 + 40) file:@"PPPaths.m" lineNumber:124 description:@"failed to construct the root path"];
  }

  v4 = objc_autoreleasePoolPush();
  v5 = [v3 stringByAppendingPathComponent:@"PersonalizationPortrait"];
  objc_autoreleasePoolPop(v4);
  v6 = topDirectoryCreateIfNeeded__dir;
  topDirectoryCreateIfNeeded__dir = v5;

  v7 = pp_default_log_handle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v31 = topDirectoryCreateIfNeeded__dir;
    _os_log_debug_impl(&dword_23224A000, v7, OS_LOG_TYPE_DEBUG, "using top directory: %@", buf, 0xCu);
  }

  if (*(a1 + 48) == 1)
  {
    v8 = [MEMORY[0x277CCAA00] defaultManager];
    v9 = *MEMORY[0x277CCA050];
    v10 = 1;
    *&v11 = 138412546;
    v27 = v11;
    while (1)
    {
      v12 = v10;
      v29 = 0;
      [v8 createDirectoryAtPath:topDirectoryCreateIfNeeded__dir withIntermediateDirectories:1 attributes:0 error:{&v29, v27}];
      v13 = v29;
      v14 = v13;
      if (!v13)
      {
        goto LABEL_18;
      }

      if ([v13 code] == 640)
      {
        v15 = [v14 domain];
        v16 = [v15 isEqualToString:v9];

        if (v16)
        {
          v26 = pp_default_log_handle();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v31 = topDirectoryCreateIfNeeded__dir;
            _os_log_error_impl(&dword_23224A000, v26, OS_LOG_TYPE_ERROR, "Portrait exiting due to lack of disk space while creating %@", buf, 0xCu);
          }

          PPExit(2002);
        }
      }

      if ([v14 code] == 513)
      {
        v21 = pp_default_log_handle();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v31 = topDirectoryCreateIfNeeded__dir;
          v22 = "Portrait exiting due to lack of write permissions to directory %@";
          v23 = v21;
          v24 = 12;
          goto LABEL_25;
        }

LABEL_26:

        PPExit(2003);
      }

      if ([v14 code] != 516)
      {
        break;
      }

      v17 = pp_default_log_handle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = v27;
        v31 = topDirectoryCreateIfNeeded__dir;
        v32 = 2112;
        v33 = v14;
        _os_log_error_impl(&dword_23224A000, v17, OS_LOG_TYPE_ERROR, "Portrait deleting file squatting at %@ due to error %@", buf, 0x16u);
      }

      v28 = 0;
      [v8 removeItemAtPath:topDirectoryCreateIfNeeded__dir error:&v28];
      v18 = v28;
      if (v18)
      {
        v25 = v18;
        v21 = pp_default_log_handle();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          *buf = v27;
          v31 = topDirectoryCreateIfNeeded__dir;
          v32 = 2112;
          v33 = v25;
          v22 = "Portrait exiting due to failure to delete squatter file %@ due to error %@";
          v23 = v21;
          v24 = 22;
LABEL_25:
          _os_log_error_impl(&dword_23224A000, v23, OS_LOG_TYPE_ERROR, v22, buf, v24);
        }

        goto LABEL_26;
      }

      v10 = 0;
      if ((v12 & 1) == 0)
      {
        v14 = 0;
        goto LABEL_18;
      }
    }

    [PPFileErrorCode handleError:v14];
LABEL_18:
  }

  v19 = *MEMORY[0x277D85DE8];
}

@end