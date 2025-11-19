@interface BRCFileUnlinker
- (BOOL)renameAndUnlinkInBackgroundItemAt:(int)a3 path:(id)a4;
- (BRCFileUnlinker)initWithCacheDirPath:(id)a3;
- (void)_purge;
- (void)dealloc;
- (void)forcePurgeWithCompletionBlock:(id)a3;
- (void)resume;
- (void)suspend;
@end

@implementation BRCFileUnlinker

- (BRCFileUnlinker)initWithCacheDirPath:(id)a3
{
  v4 = a3;
  v27.receiver = self;
  v27.super_class = BRCFileUnlinker;
  v5 = [(BRCFileUnlinker *)&v27 init];
  v6 = v5;
  if (v5)
  {
    atomic_store(1u, &v5->_suspendCount);
    v7 = [v4 stringByAppendingPathComponent:@"unlink"];
    unlinkRootPath = v6->_unlinkRootPath;
    v6->_unlinkRootPath = v7;

    v9 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, 0);
    v10 = dispatch_queue_attr_make_with_autorelease_frequency(v9, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_create("com.apple.bird.file-unlinker", v10);

    queue = v6->_queue;
    v6->_queue = v11;

    v13 = dispatch_source_create(MEMORY[0x277D85CE8], 0, 0, v6->_queue);
    cachePurgeSource = v6->_cachePurgeSource;
    v6->_cachePurgeSource = v13;

    objc_initWeak(&location, v6);
    v15 = v6->_cachePurgeSource;
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __40__BRCFileUnlinker_initWithCacheDirPath___block_invoke;
    v24[3] = &unk_2784FF400;
    objc_copyWeak(&v25, &location);
    v16 = v15;
    v17 = v24;
    v18 = v16;
    v19 = v17;
    v20 = v19;
    v21 = v19;
    if (*MEMORY[0x277CFB010])
    {
      v21 = (*MEMORY[0x277CFB010])(v19);
    }

    v22 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_UTILITY, 0, v21);
    dispatch_source_set_event_handler(v18, v22);

    objc_destroyWeak(&v25);
    objc_destroyWeak(&location);
  }

  return v6;
}

void __40__BRCFileUnlinker_initWithCacheDirPath___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v2 = os_transaction_create();
    [v4 _purge];
    v3 = objc_opt_self();

    WeakRetained = v4;
  }
}

- (void)dealloc
{
  [(BRCFileUnlinker *)self suspend];
  v3 = self;
  objc_sync_enter(v3);
  cachePurgeSource = v3->_cachePurgeSource;
  if (cachePurgeSource)
  {
    dispatch_resume(cachePurgeSource);
    v5 = v3->_cachePurgeSource;
    v3->_cachePurgeSource = 0;
  }

  objc_sync_exit(v3);

  v6.receiver = v3;
  v6.super_class = BRCFileUnlinker;
  [(BRCFileUnlinker *)&v6 dealloc];
}

- (void)resume
{
  v5 = *MEMORY[0x277D85DE8];
  v0 = brc_bread_crumbs();
  v1 = brc_default_log();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
  {
    v3 = 138412290;
    v4 = v0;
    _os_log_fault_impl(&dword_223E7A000, v1, OS_LOG_TYPE_FAULT, "[CRIT] Assertion failed: suspendCount >= 0%@", &v3, 0xCu);
  }

  v2 = *MEMORY[0x277D85DE8];
}

- (void)suspend
{
  v9 = *MEMORY[0x277D85DE8];
  v4[0] = 67109634;
  v4[1] = a1;
  v5 = 1024;
  v6 = a1 + 1;
  v7 = 2112;
  v8 = a2;
  _os_log_debug_impl(&dword_223E7A000, log, OS_LOG_TYPE_DEBUG, "[DEBUG] suspending - suspendCount:%d->%d%@", v4, 0x18u);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)_purge
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
- (void)forcePurgeWithCompletionBlock:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __49__BRCFileUnlinker_forcePurgeWithCompletionBlock___block_invoke;
  v8[3] = &unk_278500048;
  v8[4] = self;
  v9 = v4;
  v6 = v4;
  v7 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, v8);
  dispatch_async(queue, v7);
}

uint64_t __49__BRCFileUnlinker_forcePurgeWithCompletionBlock___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _purge];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (BOOL)renameAndUnlinkInBackgroundItemAt:(int)a3 path:(id)a4
{
  v81 = *MEMORY[0x277D85DE8];
  v6 = a4;
  memset(&v46, 0, sizeof(v46));
  if ((fstatat(a3, [v6 fileSystemRepresentation], &v46, 32) & 0x80000000) == 0)
  {
    v7 = self->_unlinkRootPath;
    if ((BRCMkdirAt(-1, v7, 511) & 0x80000000) != 0 && *__error() != 17)
    {
      v8 = [MEMORY[0x277CCAA00] defaultManager];
      [v8 createDirectoryAtPath:v7 withIntermediateDirectories:1 attributes:0 error:0];
    }

    v9 = [MEMORY[0x277CCAD78] UUID];
    v10 = [v9 UUIDString];
    v11 = [(NSString *)v7 stringByAppendingPathComponent:v10];

    if ((BRCRenameAt(a3, v6, -1, v11, 0) & 0x80000000) == 0)
    {
      v12 = brc_bread_crumbs();
      v13 = brc_default_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        v26 = aPcDBLSW[v46.st_mode >> 12];
        if ((v46.st_mode & 0x100) != 0)
        {
          v27 = 114;
        }

        else
        {
          v27 = 45;
        }

        if ((v46.st_mode & 0x80) != 0)
        {
          v28 = 119;
        }

        else
        {
          v28 = 45;
        }

        if ((v46.st_mode & 0x40) != 0)
        {
          v29 = 120;
        }

        else
        {
          v29 = 45;
        }

        if ((v46.st_mode & 0x20) != 0)
        {
          v30 = 114;
        }

        else
        {
          v30 = 45;
        }

        if ((v46.st_mode & 0x10) != 0)
        {
          v31 = 119;
        }

        else
        {
          v31 = 45;
        }

        if ((v46.st_mode & 8) != 0)
        {
          v32 = 120;
        }

        else
        {
          v32 = 45;
        }

        if ((v46.st_mode & 4) != 0)
        {
          v33 = 114;
        }

        else
        {
          v33 = 45;
        }

        if ((v46.st_mode & 2) != 0)
        {
          v34 = 119;
        }

        else
        {
          v34 = 45;
        }

        if (v46.st_mode)
        {
          v35 = 120;
        }

        else
        {
          v35 = 45;
        }

        *buf = 138417922;
        *v48 = v6;
        *&v48[8] = 2112;
        *&v48[10] = v11;
        *&v48[18] = 1024;
        *&v48[20] = v46.st_dev;
        v49 = 2048;
        *v50 = v46.st_ino;
        *&v50[8] = 1024;
        *&v50[10] = v26;
        v51 = 1024;
        v52 = v27;
        v53 = 1024;
        v54 = v28;
        v55 = 1024;
        v56 = v29;
        v57 = 1024;
        v58 = v30;
        v59 = 1024;
        v60 = v31;
        v61 = 1024;
        v62 = v32;
        v63 = 1024;
        v64 = v33;
        v65 = 1024;
        v66 = v34;
        v67 = 1024;
        v68 = v35;
        v69 = 1024;
        st_nlink = v46.st_nlink;
        v71 = 1024;
        st_uid = v46.st_uid;
        v73 = 1024;
        st_gid = v46.st_gid;
        v75 = 2048;
        *v76 = v46.st_atimespec.tv_sec;
        *&v76[8] = 2048;
        *&v76[10] = v46.st_mtimespec.tv_sec;
        *&v76[18] = 2048;
        *&v76[20] = v46.st_ctimespec.tv_sec;
        *&v76[28] = 2048;
        *&v76[30] = v46.st_size;
        *&v76[38] = 1024;
        *&v76[40] = v46.st_flags;
        v77 = 2112;
        *v78 = v12;
        _os_log_debug_impl(&dword_223E7A000, v13, OS_LOG_TYPE_DEBUG, "[DEBUG] renamed '%@' to '%@' deviceID:%u fileID:%llu mode:%c%c%c%c%c%c%c%c%c%c nlink:%u uid:%u gid:%u atime:%lu mtime:%lu ctime:%lu size:%llu flags:0x%x%@", buf, 0xACu);
      }

      if (chflags([v11 fileSystemRepresentation], 0) < 0)
      {
        v14 = brc_bread_crumbs();
        v15 = brc_default_log();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          [(BRCFileUnlinker *)v11 renameAndUnlinkInBackgroundItemAt:v14 path:v15];
        }
      }

      cachePurgeSource = self->_cachePurgeSource;
      v17 = 1;
      dispatch_source_merge_data(cachePurgeSource, 1uLL);

      goto LABEL_19;
    }

    v21 = *__error();
    v22 = brc_bread_crumbs();
    v23 = brc_default_log();
    if (os_log_type_enabled(v23, 0x90u))
    {
      v36 = aPcDBLSW[v46.st_mode >> 12];
      if ((v46.st_mode & 0x100) != 0)
      {
        v37 = 114;
      }

      else
      {
        v37 = 45;
      }

      if ((v46.st_mode & 0x80) != 0)
      {
        v38 = 119;
      }

      else
      {
        v38 = 45;
      }

      if ((v46.st_mode & 0x40) != 0)
      {
        v39 = 120;
      }

      else
      {
        v39 = 45;
      }

      if ((v46.st_mode & 0x20) != 0)
      {
        v40 = 114;
      }

      else
      {
        v40 = 45;
      }

      if ((v46.st_mode & 0x10) != 0)
      {
        v41 = 119;
      }

      else
      {
        v41 = 45;
      }

      if ((v46.st_mode & 8) != 0)
      {
        v42 = 120;
      }

      else
      {
        v42 = 45;
      }

      if ((v46.st_mode & 4) != 0)
      {
        v43 = 114;
      }

      else
      {
        v43 = 45;
      }

      if ((v46.st_mode & 2) != 0)
      {
        v44 = 119;
      }

      else
      {
        v44 = 45;
      }

      if (v46.st_mode)
      {
        v45 = 120;
      }

      else
      {
        v45 = 45;
      }

      *buf = 67115266;
      *v48 = a3;
      *&v48[4] = 2112;
      *&v48[6] = v6;
      *&v48[14] = 2112;
      *&v48[16] = v11;
      v49 = 1024;
      *v50 = v46.st_dev;
      *&v50[4] = 2048;
      *&v50[6] = v46.st_ino;
      v51 = 1024;
      v52 = v36;
      v53 = 1024;
      v54 = v37;
      v55 = 1024;
      v56 = v38;
      v57 = 1024;
      v58 = v39;
      v59 = 1024;
      v60 = v40;
      v61 = 1024;
      v62 = v41;
      v63 = 1024;
      v64 = v42;
      v65 = 1024;
      v66 = v43;
      v67 = 1024;
      v68 = v44;
      v69 = 1024;
      st_nlink = v45;
      v71 = 1024;
      st_uid = v46.st_nlink;
      v73 = 1024;
      st_gid = v46.st_uid;
      v75 = 1024;
      *v76 = v46.st_gid;
      *&v76[4] = 2048;
      *&v76[6] = v46.st_atimespec.tv_sec;
      *&v76[14] = 2048;
      *&v76[16] = v46.st_mtimespec.tv_sec;
      *&v76[24] = 2048;
      *&v76[26] = v46.st_ctimespec.tv_sec;
      *&v76[34] = 2048;
      *&v76[36] = v46.st_size;
      v77 = 1024;
      *v78 = v46.st_flags;
      *&v78[4] = 1024;
      *&v78[6] = v21;
      v79 = 2112;
      v80 = v22;
      _os_log_error_impl(&dword_223E7A000, v23, 0x90u, "[ERROR] renameat(%d, '%@', -1, '%@' deviceID:%u fileID:%llu mode:%c%c%c%c%c%c%c%c%c%c nlink:%u uid:%u gid:%u atime:%lu mtime:%lu ctime:%lu size:%llu flags:0x%x failed %{errno}d%@", buf, 0xB8u);
    }

    *__error() = v21;
LABEL_18:
    v17 = 0;
    goto LABEL_19;
  }

  if (*__error() == 2)
  {
    goto LABEL_18;
  }

  v18 = *__error();
  v19 = brc_bread_crumbs();
  v20 = brc_default_log();
  if (os_log_type_enabled(v20, 0x90u))
  {
    *buf = 138412802;
    *v48 = v6;
    *&v48[8] = 1024;
    *&v48[10] = v18;
    *&v48[14] = 2112;
    *&v48[16] = v19;
    _os_log_error_impl(&dword_223E7A000, v20, 0x90u, "[ERROR] lstat('%@') failed %{errno}d%@", buf, 0x1Cu);
  }

  v17 = 0;
  *__error() = v18;
LABEL_19:

  v24 = *MEMORY[0x277D85DE8];
  return v17;
}

@end