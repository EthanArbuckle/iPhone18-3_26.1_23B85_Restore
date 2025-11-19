@interface QLDiskStore
+ (id)diskStoreForURL:(id)a3;
+ (id)diskStores;
- (BOOL)distant;
- (QLDiskStore)initWithURL:(id)a3;
- (void)executeBlock:(id)a3 onQueue:(id)a4;
@end

@implementation QLDiskStore

- (QLDiskStore)initWithURL:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v14.receiver = self;
  v14.super_class = QLDiskStore;
  v5 = [(QLDiskStore *)&v14 init];
  if (!v5)
  {
    goto LABEL_10;
  }

  memset(&__src, 0, 512);
  if (!CFURLGetFileSystemRepresentation(v4, 1u, buffer, 1024))
  {
    v6 = _log_2();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(QLDiskStore *)v4 initWithURL:v6];
    }

    goto LABEL_8;
  }

  if (!statfs(buffer, &__src))
  {
    memcpy(&v5->_fs_stat, &__src, sizeof(v5->_fs_stat));
    CFDictionarySetValue(diskStores, &v5->_fs_stat.f_fsid, v5);
    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_create("com.apple.quicklook.diskstore.inited", v8);
    afterInit = v5->_afterInit;
    v5->_afterInit = v9;

    v11 = v5->_afterInit;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __27__QLDiskStore_initWithURL___block_invoke;
    block[3] = &unk_279ADD528;
    v16 = v5;
    memcpy(v17, &__src, sizeof(v17));
    dispatch_async(v11, block);

LABEL_10:
    v7 = v5;
    goto LABEL_11;
  }

  v6 = _log_2();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [QLDiskStore initWithURL:];
  }

LABEL_8:

  v7 = 0;
LABEL_11:

  v12 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t __27__QLDiskStore_initWithURL___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setDisableQuickLook:{file_exists((a1 + 128), ".ql_disablethumbnails")}];
  if ([*(a1 + 32) disableQuickLook])
  {
    v2 = 1;
  }

  else
  {
    v2 = file_exists((a1 + 128), ".ql_disablecache");
  }

  [*(a1 + 32) setDisableCache:v2];
  result = [*(a1 + 32) disableQuickLook];
  if (!result)
  {
    v4 = *(a1 + 32);

    return [v4 disableCache];
  }

  return result;
}

+ (id)diskStoreForURL:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  memset(&v11, 0, 512);
  if (([v4 getFileSystemRepresentation:v10 maxLength:1024] & 1) == 0)
  {
    v5 = _log_2();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(QLDiskStore *)v4 initWithURL:v5];
    }

    goto LABEL_7;
  }

  if (statfs(v10, &v11))
  {
    v5 = _log_2();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [QLDiskStore initWithURL:];
    }

LABEL_7:

    v6 = 0;
    goto LABEL_8;
  }

  pthread_mutex_lock(&lock);
  Mutable = diskStores;
  if (!diskStores)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, &kDiskStoresKeyCallback, MEMORY[0x277CBF150]);
    diskStores = Mutable;
  }

  v6 = CFDictionaryGetValue(Mutable, &v11.f_fsid);
  if (!v6)
  {
    v6 = [[a1 alloc] initWithURL:v4];
  }

  pthread_mutex_unlock(&lock);
LABEL_8:

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (void)executeBlock:(id)a3 onQueue:(id)a4
{
  v6 = a3;
  v7 = a4;
  afterInit = self->_afterInit;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __36__QLDiskStore_executeBlock_onQueue___block_invoke;
  v11[3] = &unk_279ADD550;
  v12 = v7;
  v13 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_async(afterInit, v11);
}

- (BOOL)distant
{
  if ((self->_fs_stat.f_flags & 0x1000) != 0)
  {
    return 0;
  }

  v2 = self->_fs_stat.f_mntonname[0];
  if (v2 == 47)
  {
    v3 = -self->_fs_stat.f_mntonname[1];
  }

  else
  {
    v3 = 47 - v2;
  }

  return v3 != 0;
}

+ (id)diskStores
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v3 = MEMORY[0x266707090](0, 0, 0);
  if (v3)
  {
    v4 = v3;
    v12 = 0;
    while (1)
    {
      do
      {
        v5 = MEMORY[0x2667070A0](v4, &v12, 0);
      }

      while (v5 == 3);
      if (v5 == 2)
      {
        break;
      }

      v6 = [QLDiskStore alloc];
      v7 = [(QLDiskStore *)v6 initWithURL:v12];
      v8 = _log_2();
      v9 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
      if (v7)
      {
        if (v9)
        {
          *buf = 138412546;
          v14 = v12;
          v15 = 2112;
          v16 = v7;
          _os_log_error_impl(&dword_2615D3000, v8, OS_LOG_TYPE_ERROR, "Getting store for %@: %@", buf, 0x16u);
        }

        [v2 addObject:v7];
      }

      else
      {
        if (v9)
        {
          *buf = 138412290;
          v14 = v12;
          _os_log_error_impl(&dword_2615D3000, v8, OS_LOG_TYPE_ERROR, "No store for %@", buf, 0xCu);
        }
      }
    }

    CFRelease(v4);
  }

  v10 = *MEMORY[0x277D85DE8];

  return v2;
}

- (void)initWithURL:.cold.1()
{
  v9 = *MEMORY[0x277D85DE8];
  v0 = *__error();
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_1_1(&dword_2615D3000, v1, v2, "Can't get FS stat for %s: %i", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)initWithURL:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_2615D3000, a2, OS_LOG_TYPE_ERROR, "Can't get file system representation for %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end