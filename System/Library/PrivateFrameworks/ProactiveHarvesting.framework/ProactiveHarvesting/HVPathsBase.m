@interface HVPathsBase
+ (id)topDirectoryWithName:(id)a3 createIfNeeded:(BOOL)a4;
+ (void)_createDirectoryAtPath:(uint64_t)a1;
@end

@implementation HVPathsBase

+ (void)_createDirectoryAtPath:(uint64_t)a1
{
  v27 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = objc_opt_self();
  objc_sync_enter(v3);
  v4 = *MEMORY[0x277CCA050];
  v5 = 1;
  while (1)
  {
    v6 = v5;
    v7 = [MEMORY[0x277CCAA00] defaultManager];
    v22 = 0;
    v8 = [v7 createDirectoryAtPath:v2 withIntermediateDirectories:1 attributes:0 error:&v22];
    v9 = v22;

    if (v8)
    {
      break;
    }

    if ([v9 code] == 640)
    {
      v10 = [v9 domain];
      v11 = [v10 isEqualToString:v4];

      if (v11)
      {
        v20 = hv_default_log_handle();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v24 = v2;
          _os_log_error_impl(&dword_2321EC000, v20, OS_LOG_TYPE_ERROR, "HVPathBase: _createDirectoryAtPath: exiting due to lack of disk space while creating %@", buf, 0xCu);
        }

        if ([MEMORY[0x277D42590] isInternalBuild])
        {
          v18 = hv_default_log_handle();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
          {
            *buf = 0;
            _os_log_fault_impl(&dword_2321EC000, v18, OS_LOG_TYPE_FAULT, "HVPathBase: unable to create directory due to lack of space.", buf, 2u);
          }

          v19 = 4002;
          goto LABEL_31;
        }

        v19 = 4002;
LABEL_32:
        HVExit(v19);
      }
    }

    if ([v9 code] == 513)
    {
      v17 = hv_default_log_handle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v24 = v2;
        _os_log_error_impl(&dword_2321EC000, v17, OS_LOG_TYPE_ERROR, "HVPathBase: _createDirectoryAtPath: exiting due to lack of write permissions to directory %@", buf, 0xCu);
      }

      if ([MEMORY[0x277D42590] isInternalBuild])
      {
        v18 = hv_default_log_handle();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_fault_impl(&dword_2321EC000, v18, OS_LOG_TYPE_FAULT, "HVPathBase: unable to create directory due to lack of permissions.", buf, 2u);
        }

LABEL_24:
        v19 = 4003;
LABEL_31:
      }

      else
      {
        v19 = 4003;
      }

      goto LABEL_32;
    }

    if ([v9 code] != 516)
    {
      break;
    }

    v12 = hv_default_log_handle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v24 = v2;
      v25 = 2112;
      v26 = v9;
      _os_log_error_impl(&dword_2321EC000, v12, OS_LOG_TYPE_ERROR, "HVPathBase: deleting file squatting at %@ due to error %@", buf, 0x16u);
    }

    v13 = [MEMORY[0x277CCAA00] defaultManager];
    v21 = 0;
    [v13 removeItemAtPath:v2 error:&v21];
    v14 = v21;

    if (v14)
    {
      v18 = hv_default_log_handle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v24 = v2;
        v25 = 2112;
        v26 = v14;
        _os_log_error_impl(&dword_2321EC000, v18, OS_LOG_TYPE_ERROR, "HVPathBase: exiting due to failure to delete squatter file %@ due to error %@", buf, 0x16u);
      }

      goto LABEL_24;
    }

    v5 = 0;
    if ((v6 & 1) == 0)
    {
      v9 = 0;
      goto LABEL_15;
    }
  }

  if (v9)
  {
    [HVFileErrorCode handleError:v9];
  }

  if ((v8 & 1) == 0)
  {
LABEL_15:
    v15 = [MEMORY[0x277CCA890] currentHandler];
    [v15 handleFailureInMethod:sel__createDirectoryAtPath_ object:v3 file:@"HVPaths.m" lineNumber:224 description:{@"HVPathBase: _createDirectoryAtPath: %@ error: %@", v2, v9}];
  }

  objc_sync_exit(v3);
  v16 = *MEMORY[0x277D85DE8];
}

+ (id)topDirectoryWithName:(id)a3 createIfNeeded:(BOOL)a4
{
  v4 = a4;
  v18 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, 1uLL, 1);
  v9 = [v8 objectAtIndexedSubscript:0];

  if (!v9 || ![v9 length])
  {
    v15 = [MEMORY[0x277CCA890] currentHandler];
    [v15 handleFailureInMethod:a2 object:a1 file:@"HVPaths.m" lineNumber:118 description:@"failed to construct the root path"];
  }

  v10 = objc_autoreleasePoolPush();
  v11 = [v9 stringByAppendingPathComponent:v7];
  objc_autoreleasePoolPop(v10);
  v12 = hv_default_log_handle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v16 = 138412290;
    v17 = v11;
    _os_log_debug_impl(&dword_2321EC000, v12, OS_LOG_TYPE_DEBUG, "using top directory: %@", &v16, 0xCu);
  }

  if (v4)
  {
    [(HVPathsBase *)a1 _createDirectoryAtPath:v11];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v11;
}

@end