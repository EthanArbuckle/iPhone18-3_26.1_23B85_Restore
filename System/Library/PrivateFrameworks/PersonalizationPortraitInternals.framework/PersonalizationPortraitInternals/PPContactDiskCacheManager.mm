@interface PPContactDiskCacheManager
- (PPContactDiskCacheManager)initWithPath:(id)path;
- (void)accessCacheWithBlock:(id)block;
- (void)mutateCacheWithBlock:(id)block;
@end

@implementation PPContactDiskCacheManager

- (void)mutateCacheWithBlock:(id)block
{
  blockCopy = block;
  lock = self->_lock;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __50__PPContactDiskCacheManager_mutateCacheWithBlock___block_invoke;
  v7[3] = &unk_278973328;
  v8 = blockCopy;
  v6 = blockCopy;
  [(_PASLock *)lock runWithLockAcquired:v7];
}

void __50__PPContactDiskCacheManager_mutateCacheWithBlock___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 path];
  v5 = [v4 stringByAppendingPathComponent:@"state"];

  v6 = [MEMORY[0x277CCAA00] defaultManager];
  [v6 createFileAtPath:v5 contents:0 attributes:0];

  (*(*(a1 + 32) + 16))();
  v7 = [MEMORY[0x277CCAA00] defaultManager];
  v11 = 0;
  LOBYTE(v6) = [v7 removeItemAtPath:v5 error:&v11];
  v8 = v11;

  if ((v6 & 1) == 0)
  {
    v9 = pp_contacts_log_handle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v13 = v5;
      v14 = 2112;
      v15 = v8;
      _os_log_error_impl(&dword_23224A000, v9, OS_LOG_TYPE_ERROR, "PPContactDiskCacheManager: failed to remove state file: %@ error: %@", buf, 0x16u);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)accessCacheWithBlock:(id)block
{
  blockCopy = block;
  lock = self->_lock;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __50__PPContactDiskCacheManager_accessCacheWithBlock___block_invoke;
  v7[3] = &unk_278973328;
  v8 = blockCopy;
  v6 = blockCopy;
  [(_PASLock *)lock runWithLockAcquired:v7];
}

void __50__PPContactDiskCacheManager_accessCacheWithBlock___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  v4 = a2;
  v3(v2, v4);
  [v4 deleteCacheIfTooOld];
}

- (PPContactDiskCacheManager)initWithPath:(id)path
{
  pathCopy = path;
  if (initWithPath___pasOnceToken35 != -1)
  {
    dispatch_once(&initWithPath___pasOnceToken35, &__block_literal_global_5763);
  }

  v5 = initWithPath___pasExprOnceResult_5764;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__5745;
  v20 = __Block_byref_object_dispose__5746;
  v21 = 0;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __42__PPContactDiskCacheManager_initWithPath___block_invoke_2;
  v12[3] = &unk_278974EA0;
  v15 = &v16;
  v6 = pathCopy;
  v13 = v6;
  selfCopy = self;
  v14 = selfCopy;
  [v5 runWithLockAcquired:v12];
  v8 = v17[5];

  v9 = v14;
  v10 = v8;

  _Block_object_dispose(&v16, 8);
  return v10;
}

void __42__PPContactDiskCacheManager_initWithPath___block_invoke_2(uint64_t a1, void *a2)
{
  v52 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 objectForKeyedSubscript:*(a1 + 32)];
  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    v49.receiver = *(a1 + 40);
    v49.super_class = PPContactDiskCacheManager;
    v7 = objc_msgSendSuper2(&v49, sel_init);
    v8 = *(*(a1 + 48) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    if (*(*(*(a1 + 48) + 8) + 40))
    {
      v10 = objc_autoreleasePoolPush();
      v11 = [*(a1 + 32) stringByAppendingPathComponent:@"name_records"];
      objc_autoreleasePoolPop(v10);
      v12 = [v11 stringByAppendingPathComponent:@"version"];
      v13 = objc_autoreleasePoolPush();
      v14 = [*(a1 + 32) stringByAppendingPathComponent:@"name_records.pb"];
      objc_autoreleasePoolPop(v13);
      v15 = [MEMORY[0x277CCAA00] defaultManager];
      v16 = [v15 fileExistsAtPath:v14];

      if (v16)
      {
        v17 = [MEMORY[0x277CCAA00] defaultManager];
        [v17 removeItemAtPath:v14 error:0];
      }

      v18 = [MEMORY[0x277CCAA00] defaultManager];
      v19 = [v18 fileExistsAtPath:v11];

      if (v19)
      {
        v20 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v12];
        v21 = [v20 length] == 4 && *objc_msgSend(v20, "bytes") == 1;
      }

      else
      {
        v22 = pp_contacts_log_handle();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v51 = v11;
          _os_log_impl(&dword_23224A000, v22, OS_LOG_TYPE_INFO, "PPContactDiskCacheManager: creating new cache at %@", buf, 0xCu);
        }

        v23 = [MEMORY[0x277CCAA00] defaultManager];
        v48 = 0;
        v24 = [v23 createDirectoryAtPath:v11 withIntermediateDirectories:1 attributes:0 error:&v48];
        v20 = v48;

        if ((v24 & 1) == 0)
        {
          v25 = pp_contacts_log_handle();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v51 = v20;
            _os_log_error_impl(&dword_23224A000, v25, OS_LOG_TYPE_ERROR, "PPContactDiskCacheManager: failed to create cache directory: %@", buf, 0xCu);
          }
        }

        v26 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:&kPPContactDiskCacheCurrentVersion length:4];
        v21 = 1;
        [v26 writeToFile:v12 atomically:1];
      }

      v27 = [(PPContactDiskCache *)[PPMutableContactDiskCache alloc] initWithPath:v11];
      if (!v21)
      {
        v28 = pp_contacts_log_handle();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_23224A000, v28, OS_LOG_TYPE_DEFAULT, "PPContactDiskCacheManager: versison check failed", buf, 2u);
        }

        if (![(PPMutableContactDiskCache *)v27 deleteNameRecordCache])
        {
          v41 = pp_contacts_log_handle();
          if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&dword_23224A000, v41, OS_LOG_TYPE_ERROR, "PPContactDiskCacheManager: failed to delete cache after version check. Not using cache.", buf, 2u);
          }

          v42 = *(*(a1 + 48) + 8);
          v30 = *(v42 + 40);
          *(v42 + 40) = 0;
          goto LABEL_37;
        }

        v29 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:&kPPContactDiskCacheCurrentVersion length:4];
        [v29 writeToFile:v12 atomically:1];
      }

      v30 = [v11 stringByAppendingPathComponent:@"state"];
      v31 = [MEMORY[0x277CCAA00] defaultManager];
      v32 = [v31 fileExistsAtPath:v30];

      if (v32)
      {
        v33 = pp_contacts_log_handle();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_23224A000, v33, OS_LOG_TYPE_DEFAULT, "PPContactDiskCacheManager: interrupted mutation detected, throwing away cache files.", buf, 2u);
        }

        if (![(PPMutableContactDiskCache *)v27 deleteNameRecordCache])
        {
          v43 = pp_contacts_log_handle();
          if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&dword_23224A000, v43, OS_LOG_TYPE_ERROR, "PPContactDiskCacheManager: failed to delete interrupted cache. Not using cache.", buf, 2u);
          }

          v44 = *(*(a1 + 48) + 8);
          v45 = *(v44 + 40);
          *(v44 + 40) = 0;

          goto LABEL_37;
        }

        v34 = [MEMORY[0x277CCAA00] defaultManager];
        v47 = 0;
        v35 = [v34 removeItemAtPath:v30 error:&v47];
        v36 = v47;

        if ((v35 & 1) == 0)
        {
          v37 = pp_contacts_log_handle();
          if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v51 = v36;
            _os_log_error_impl(&dword_23224A000, v37, OS_LOG_TYPE_ERROR, "PPContactDiskCacheManager: failed to remove state file after deleting interrupted cache: %@", buf, 0xCu);
          }
        }
      }

      v38 = [objc_alloc(MEMORY[0x277D425F8]) initWithGuardedData:v27];
      v39 = *(*(*(a1 + 48) + 8) + 40);
      v40 = *(v39 + 8);
      *(v39 + 8) = v38;

      [v3 setObject:*(*(*(a1 + 48) + 8) + 40) forKeyedSubscript:*(a1 + 32)];
LABEL_37:
    }
  }

  v46 = *MEMORY[0x277D85DE8];
}

void __42__PPContactDiskCacheManager_initWithPath___block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_alloc(MEMORY[0x277D425F8]);
  v2 = objc_opt_new();
  v3 = [v1 initWithGuardedData:v2];
  v4 = initWithPath___pasExprOnceResult_5764;
  initWithPath___pasExprOnceResult_5764 = v3;

  objc_autoreleasePoolPop(v0);
}

@end