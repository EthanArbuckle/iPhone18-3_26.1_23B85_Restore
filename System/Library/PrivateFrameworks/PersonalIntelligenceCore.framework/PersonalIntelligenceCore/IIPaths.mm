@interface IIPaths
+ (id)resourcesDirectory;
+ (id)topDirectoryCreateIfNeeded:(BOOL)a3;
+ (id)topDirectoryWithName:(id)a3 createIfNeeded:(BOOL)a4;
@end

@implementation IIPaths

+ (id)resourcesDirectory
{
  v4 = objc_autoreleasePoolPush();
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  objc_autoreleasePoolPop(v4);
  v6 = [v5 resourcePath];
  if (!v6)
  {
    v8 = [MEMORY[0x277CCA890] currentHandler];
    [v8 handleFailureInMethod:a2 object:a1 file:@"IIPaths.m" lineNumber:161 description:@"Error: Unable to find resource directory"];
  }

  return v6;
}

+ (id)topDirectoryWithName:(id)a3 createIfNeeded:(BOOL)a4
{
  v4 = a4;
  v30 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, 1uLL, 1);
  v9 = [v8 objectAtIndexedSubscript:0];

  if (!v9 || ![v9 length])
  {
    v24 = [MEMORY[0x277CCA890] currentHandler];
    [v24 handleFailureInMethod:a2 object:a1 file:@"IIPaths.m" lineNumber:47 description:@"failed to construct the root path"];
  }

  v10 = objc_autoreleasePoolPush();
  v11 = [v9 stringByAppendingPathComponent:v7];
  objc_autoreleasePoolPop(v10);
  v12 = topDirectoryWithName_createIfNeeded__dir;
  topDirectoryWithName_createIfNeeded__dir = v11;

  v13 = ii_default_log_handle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v29 = topDirectoryWithName_createIfNeeded__dir;
    _os_log_debug_impl(&dword_231C94000, v13, OS_LOG_TYPE_DEBUG, "using top directory: %@", buf, 0xCu);
  }

  if (v4)
  {
    v14 = [MEMORY[0x277CCAA00] defaultManager];
    v27 = 0;
    [v14 createDirectoryAtPath:topDirectoryWithName_createIfNeeded__dir withIntermediateDirectories:1 attributes:0 error:&v27];
    v15 = v27;
    v16 = v15;
    if (v15)
    {
      if ([v15 code] == 640)
      {
        v17 = [v16 domain];
        v18 = [v17 isEqualToString:*MEMORY[0x277CCA050]];

        if (v18)
        {
          v26 = ii_default_log_handle();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v29 = v16;
            _os_log_error_impl(&dword_231C94000, v26, OS_LOG_TYPE_ERROR, "IIPaths: failed to create directory due to lack of space: %@", buf, 0xCu);
          }

          IIExit(4002);
        }
      }

      if ([v16 code] == 513)
      {
        v25 = ii_default_log_handle();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v29 = v16;
          _os_log_error_impl(&dword_231C94000, v25, OS_LOG_TYPE_ERROR, "IIPaths: failed to create directory due to lack of permissions: %@", buf, 0xCu);
        }

        IIExit(4003);
      }

      v19 = [MEMORY[0x277CCA890] currentHandler];
      [v19 handleFailureInMethod:a2 object:a1 file:@"IIPaths.m" lineNumber:65 description:{@"Error creating directory for %@: %@", v7, v16}];
    }
  }

  v20 = topDirectoryWithName_createIfNeeded__dir;
  v21 = topDirectoryWithName_createIfNeeded__dir;

  v22 = *MEMORY[0x277D85DE8];
  return v20;
}

+ (id)topDirectoryCreateIfNeeded:(BOOL)a3
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __38__IIPaths_topDirectoryCreateIfNeeded___block_invoke;
  v5[3] = &__block_descriptor_41_e5_v8__0l;
  v5[4] = a1;
  v6 = a3;
  if (topDirectoryCreateIfNeeded___pasOnceToken2 != -1)
  {
    dispatch_once(&topDirectoryCreateIfNeeded___pasOnceToken2, v5);
  }

  v3 = topDirectoryCreateIfNeeded___pasExprOnceResult;

  return v3;
}

void __38__IIPaths_topDirectoryCreateIfNeeded___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) topDirectoryWithName:@"Suggestions" createIfNeeded:*(a1 + 40)];
  v4 = topDirectoryCreateIfNeeded___pasExprOnceResult;
  topDirectoryCreateIfNeeded___pasExprOnceResult = v3;

  objc_autoreleasePoolPop(v2);
}

@end