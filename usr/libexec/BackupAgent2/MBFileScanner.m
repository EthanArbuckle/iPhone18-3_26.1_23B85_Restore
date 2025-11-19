@interface MBFileScanner
+ (id)_stringValueForStats:(_MBFileScannerDomainStats *)a3;
+ (id)treeWithPaths:(id)a3;
- (BOOL)_shouldNotBackupFile:(id)a3 domain:(id)a4;
- (MBFileScanner)initWithDelegate:(id)a3 mode:(unint64_t)a4 enginePolicy:(unint64_t)a5 debugContext:(id)a6;
- (MBFileScannerDelegate)delegate;
- (id)_foundFile:(id)a3 snapshotPath:(id)a4 stats:(_MBFileScannerDomainStats *)a5;
- (id)_performTwoPassEnumerationForDomain:(id)a3 snapshotPath:(id)a4 relativePath:(id)a5 buffer:(id)a6 dirFd:(int)a7 direntCount:(unsigned int)a8 directoryPathStack:(id)a9 directoryCountStack:(id)a10 stats:(_MBFileScannerDomainStats *)a11;
- (id)_scanDirectory:(id)a3 domain:(id)a4 fds:(id)a5 domainDirFd:(int)a6 snapshotPath:(id)a7 relativePath:(id)a8 depth:(int)a9 stats:(_MBFileScannerDomainStats *)a10;
- (id)_scanDomain:(id)a3 snapshotPath:(id)a4 stats:(_MBFileScannerDomainStats *)a5;
- (id)_scanFilesForDomain:(id)a3 fds:(id)a4 snapshotPath:(id)a5 relativePath:(id)a6 stats:(_MBFileScannerDomainStats *)a7;
- (id)_scanFilesUsingGetattrlistbulkForDomain:(id)a3 fds:(id)a4 snapshotPath:(id)a5 relativePath:(id)a6 stats:(_MBFileScannerDomainStats *)a7;
- (id)_scanFilesUsingReaddirForDomain:(id)a3 fds:(id)a4 snapshotPath:(id)a5 relativePath:(id)a6 depth:(int)a7 stats:(_MBFileScannerDomainStats *)a8;
- (id)_scanTree:(id)a3 forDomain:(id)a4 fds:(id)a5 snapshotPath:(id)a6 relativePath:(id)a7 stats:(_MBFileScannerDomainStats *)a8;
- (id)loggableStats;
- (id)scanDomain:(id)a3 snapshotMountPoint:(id)a4;
- (void)_detectModifiedDomain:(id)a3 relativePath:(id)a4 lastModified:(int64_t)a5;
- (void)_updateStats:(_MBFileScannerDomainStats *)a3 file:(id)a4;
- (void)cancel;
- (void)reset;
@end

@implementation MBFileScanner

- (MBFileScanner)initWithDelegate:(id)a3 mode:(unint64_t)a4 enginePolicy:(unint64_t)a5 debugContext:(id)a6
{
  v10 = a3;
  v11 = a6;
  if (!a4)
  {
    sub_1000A058C();
  }

  v12 = v11;
  v21.receiver = self;
  v21.super_class = MBFileScanner;
  v13 = [(MBFileScanner *)&v21 init];
  v14 = v13;
  if (v13)
  {
    objc_storeWeak(&v13->_delegate, v10);
    v14->_mode = a4;
    v14->_policy = a5;
    objc_storeStrong(&v14->_debugContext, a6);
    v15 = objc_alloc_init(NSMutableSet);
    modifiedDomains = v14->_modifiedDomains;
    v14->_modifiedDomains = v15;

    v17 = objc_alloc_init(NSMutableDictionary);
    lastModifiedDateBySQLiteFileID = v14->_lastModifiedDateBySQLiteFileID;
    v14->_lastModifiedDateBySQLiteFileID = v17;

    v19 = objc_opt_class();
    v14->_delegateImpOfFileScannerDidFindFile = class_getMethodImplementation(v19, "fileScanner:didFindFile:");
    v14->_delegateRespondsToFileScannerShouldExcludeFile = objc_opt_respondsToSelector() & 1;
  }

  return v14;
}

- (id)scanDomain:(id)a3 snapshotMountPoint:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ((atomic_exchange(&self->_started, 1u) & 1) == 0)
  {
    *&self->_totalStats.totalFileSize = 0u;
    *&self->_totalStats.maxFileSize = 0u;
    self->_totalStats.symLinkCount = 0;
    *&self->_totalStats.dirCount = 0u;
    *&self->_totalStats.rootCloneCount = 0u;
    *&self->_totalStats.minFileSize = xmmword_1000B7470;
    self->_startTime = [(MBDebugContext *)self->_debugContext time];
  }

  v8 = objc_autoreleasePoolPush();
  v9 = [v6 name];
  v10 = [v6 rootPath];
  v11 = [v6 volumeMountPoint];
  if (![v10 length])
  {
    v12 = MBGetDefaultLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      buf[0].i32[0] = 138412290;
      *(buf[0].i64 + 4) = v10;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "=scanning= Skipping domain %@ with nil or empty root path", buf, 0xCu);
      _MBLog();
    }
  }

  buf[0].i64[0] = 0;
  memset(&buf[1], 0, 56);
  *(buf + 8) = xmmword_1000B7470;
  v13 = MBGetDefaultLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    mode = self->_mode;
    policy = self->_policy;
    *v25 = 138544642;
    v26 = v9;
    v27 = 2112;
    v28 = v10;
    v29 = 2112;
    v30 = v11;
    v31 = 2112;
    v32 = v7;
    v33 = 2048;
    v34 = mode;
    v35 = 2048;
    v36 = policy;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "=scanning= Scanning domain %{public}@ at %@ with mtpt %@ from snapshot %@ mode:0x%lx policy:0x%lx", v25, 0x3Eu);
    v23 = self->_mode;
    v24 = self->_policy;
    _MBLog();
  }

  v16 = [(MBFileScanner *)self _scanDomain:v6 snapshotPath:v7 stats:buf];
  v17 = MBGetDefaultLog();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = [objc_opt_class() _stringValueForStats:buf];
    *v25 = 138543874;
    v26 = v9;
    v27 = 2112;
    v28 = v18;
    v29 = 2112;
    v30 = v16;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "=scanning= Finished scanning domain %{public}@ - %@: %@", v25, 0x20u);

    v22 = [objc_opt_class() _stringValueForStats:buf];
    _MBLog();
  }

  minFileSize = self->_totalStats.minFileSize;
  if (minFileSize >= buf[0].i64[1])
  {
    minFileSize = buf[0].i64[1];
  }

  self->_totalStats.totalFileSize += buf[0].i64[0];
  self->_totalStats.minFileSize = minFileSize;
  maxFileSize = self->_totalStats.maxFileSize;
  if (maxFileSize <= buf[1].i64[0])
  {
    maxFileSize = buf[1].i64[0];
  }

  self->_totalStats.maxFileSize = maxFileSize;
  *&self->_totalStats.fileCount = vaddq_s64(*&self->_totalStats.fileCount, *(&buf[1] + 8));
  *&self->_totalStats.fullCloneCount = vaddq_s64(*&self->_totalStats.fullCloneCount, *(&buf[2] + 8));
  *&self->_totalStats.hardLinkCount = vaddq_s64(*&self->_totalStats.hardLinkCount, *(&buf[3] + 8));

  objc_autoreleasePoolPop(v8);

  return v16;
}

+ (id)_stringValueForStats:(_MBFileScannerDomainStats *)a3
{
  v4 = [NSByteCountFormatter stringFromByteCount:a3->totalFileSize countStyle:0];
  minFileSize = a3->minFileSize;
  if (minFileSize == 0x7FFFFFFFFFFFFFFFLL)
  {
    minFileSize = -1;
  }

  maxFileSize = a3->maxFileSize;
  if (maxFileSize == 0x8000000000000000)
  {
    maxFileSize = -1;
  }

  v7 = *&a3->fileCount;
  v8 = [NSString stringWithFormat:@"size:%lld (%@)/%lld/%lld, files:%llu, dirs:%llu, clones:%llu/%llu, hardlinks:%llu, symlinks:%llu", a3->totalFileSize, v4, minFileSize, maxFileSize, a3->fileCount, a3->dirCount, a3->fullCloneCount, a3->rootCloneCount, a3->hardLinkCount, a3->symLinkCount];

  return v8;
}

- (id)loggableStats
{
  v3 = objc_opt_class();

  return [v3 _stringValueForStats:&self->_totalStats];
}

- (void)cancel
{
  if ((atomic_exchange(&self->_canceled, 1u) & 1) == 0)
  {
    v3 = MBGetDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v5 = self;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "=scanning= Canceling %@", buf, 0xCu);
      _MBLog();
    }
  }
}

- (void)reset
{
  modifiedDomains = self->_modifiedDomains;
  self->_modifiedDomains = 0;

  v4 = objc_alloc_init(NSMutableSet);
  v5 = self->_modifiedDomains;
  self->_modifiedDomains = v4;

  lastModifiedDateBySQLiteFileID = self->_lastModifiedDateBySQLiteFileID;
  self->_lastModifiedDateBySQLiteFileID = 0;

  v7 = objc_alloc_init(NSMutableDictionary);
  v8 = self->_lastModifiedDateBySQLiteFileID;
  self->_lastModifiedDateBySQLiteFileID = v7;

  self->_startTime = 0;
  atomic_store(0, &self->_started);
}

- (void)_updateStats:(_MBFileScannerDomainStats *)a3 file:(id)a4
{
  v5 = a4;
  v6 = [v5 type];
  switch(v6)
  {
    case 0x4000u:
      v14 = a3->dirCount + 1;
      a3->dirCount = v14;
      if (__ROR8__(0xD288CE703AFB7E91 * v14, 4) <= 0x68DB8BAC710CBuLL)
      {
        v15 = MBGetDefaultLog();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          dirCount = a3->dirCount;
          v17 = [v5 domain];
          v18 = [v17 name];
          *buf = 134218242;
          v34 = dirCount;
          v35 = 2114;
          v36 = v18;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "=scanning= Found %llu dirs (%{public}@)", buf, 0x16u);

          v19 = a3->dirCount;
          v20 = [v5 domain];
          v21 = [v20 name];
LABEL_27:
          _MBLog();
        }

LABEL_28:
      }

      break;
    case 0xA000u:
      ++a3->symLinkCount;
      break;
    case 0x8000u:
      v7 = [v5 size];
      v8 = v7;
      minFileSize = a3->minFileSize;
      if (minFileSize >= v7)
      {
        minFileSize = v7;
      }

      a3->totalFileSize += v7;
      a3->minFileSize = minFileSize;
      maxFileSize = a3->maxFileSize;
      v11 = a3->fileCount + 1;
      if (maxFileSize <= v7)
      {
        maxFileSize = v7;
      }

      a3->maxFileSize = maxFileSize;
      a3->fileCount = v11;
      if ([v5 isHardLink])
      {
        ++a3->hardLinkCount;
      }

      if ([v5 isFullClone])
      {
        v12 = [v5 inodeNumber];
        if (v12 == [v5 cloneID])
        {
          v13 = 48;
        }

        else
        {
          if (![v5 isFullClone])
          {
            goto LABEL_20;
          }

          v13 = 40;
        }

        ++*(&a3->totalFileSize + v13);
      }

LABEL_20:
      if (v8 >= 0x6FC23AC00)
      {
        v22 = MBGetDefaultLog();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          v23 = [v5 absolutePath];
          v24 = [v5 domain];
          v25 = [v24 name];
          *buf = 134218498;
          v34 = v8;
          v35 = 2114;
          v36 = v23;
          v37 = 2114;
          v38 = v25;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "=scanning= Found large file (%lld) at %{public}@ (%{public}@)", buf, 0x20u);

          v26 = [v5 absolutePath];
          v27 = [v5 domain];
          v32 = [v27 name];
          _MBLog();
        }
      }

      if (__ROR8__(0xD288CE703AFB7E91 * a3->fileCount, 4) <= 0x68DB8BAC710CBuLL)
      {
        v15 = MBGetDefaultLog();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          fileCount = a3->fileCount;
          v29 = [v5 domain];
          v30 = [v29 name];
          *buf = 134218242;
          v34 = fileCount;
          v35 = 2114;
          v36 = v30;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "=scanning= Found %llu files (%{public}@)", buf, 0x16u);

          v31 = a3->fileCount;
          v20 = [v5 domain];
          v21 = [v20 name];
          goto LABEL_27;
        }

        goto LABEL_28;
      }

      break;
  }
}

- (id)_scanDomain:(id)a3 snapshotPath:(id)a4 stats:(_MBFileScannerDomainStats *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [v8 name];
  if ([v8 isUninstalledAppDomain])
  {
    v11 = MBGetDefaultLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v32 = v10;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "=scanning= Not scanning uninstalled app domain %{public}@", buf, 0xCu);
      _MBLog();
    }

    v12 = 0;
  }

  else
  {
    [(MBDebugContext *)self->_debugContext setValue:v10 forName:@"DomainName"];
    v11 = objc_opt_new();
    v13 = [v8 relativePathsToBackup];
    v14 = [v13 containsObject:&stru_1000FF270];

    if (v14)
    {
      v12 = [(MBFileScanner *)self _scanFilesForDomain:v8 fds:v11 snapshotPath:v9 relativePath:&stru_1000FF270 stats:a5];
    }

    else
    {
      v15 = [v8 relativePathsToBackup];
      v16 = [MBFileScanner treeWithPaths:v15];

      v17 = [(MBFileScanner *)self _scanTree:v16 forDomain:v8 fds:v11 snapshotPath:v9 relativePath:&stru_1000FF270 stats:a5];
      if (v17)
      {
        v12 = v17;
      }

      else
      {
        [v8 relativePathsToBackupLive];
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        v18 = v29 = 0u;
        v19 = [v18 countByEnumeratingWithState:&v26 objects:v30 count:16];
        if (v19)
        {
          v20 = v19;
          v25 = v16;
          v21 = *v27;
          while (2)
          {
            for (i = 0; i != v20; i = i + 1)
            {
              if (*v27 != v21)
              {
                objc_enumerationMutation(v18);
              }

              v23 = [(MBFileScanner *)self _scanFilesForDomain:v8 fds:v11 snapshotPath:0 relativePath:*(*(&v26 + 1) + 8 * i) stats:a5];
              if (v23)
              {
                v12 = v23;
                goto LABEL_19;
              }
            }

            v20 = [v18 countByEnumeratingWithState:&v26 objects:v30 count:16];
            if (v20)
            {
              continue;
            }

            break;
          }

          v12 = 0;
LABEL_19:
          v16 = v25;
        }

        else
        {
          v12 = 0;
        }
      }
    }
  }

  return v12;
}

+ (id)treeWithPaths:(id)a3
{
  v3 = a3;
  v26 = objc_opt_new();
  v22 = objc_autoreleasePoolPush();
  v21 = [[NSSortDescriptor alloc] initWithKey:0 ascending:1];
  v41 = v21;
  v4 = [NSArray arrayWithObjects:&v41 count:1];
  v23 = v3;
  v5 = [v3 sortedArrayUsingDescriptors:v4];

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = v5;
  v27 = [obj countByEnumeratingWithState:&v33 objects:v40 count:16];
  if (v27)
  {
    v25 = *v34;
    do
    {
      for (i = 0; i != v27; i = i + 1)
      {
        if (*v34 != v25)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v33 + 1) + 8 * i);
        context = objc_autoreleasePoolPush();
        v8 = v26;
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        v32 = 0u;
        v9 = [v7 pathComponents];
        v10 = [v9 countByEnumeratingWithState:&v29 objects:v39 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v30;
          while (2)
          {
            v13 = 0;
            v14 = v8;
            do
            {
              if (*v30 != v12)
              {
                objc_enumerationMutation(v9);
              }

              v15 = *(*(&v29 + 1) + 8 * v13);
              v16 = [v14 objectForKeyedSubscript:{v15, v20}];
              if (v16)
              {
                v8 = v16;
                if (![v16 count])
                {
                  v17 = MBGetDefaultLog();
                  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138543362;
                    v38 = v7;
                    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "=scanning= Ignoring %{public}@ since one of its ancestors is already included", buf, 0xCu);
                    v20 = v7;
                    _MBLog();
                  }

                  v8 = v14;
                  goto LABEL_21;
                }
              }

              else
              {
                v8 = objc_opt_new();
                [v14 setObject:v8 forKeyedSubscript:v15];
              }

              v13 = v13 + 1;
              v14 = v8;
            }

            while (v11 != v13);
            v11 = [v9 countByEnumeratingWithState:&v29 objects:v39 count:16];
            if (v11)
            {
              continue;
            }

            break;
          }
        }

LABEL_21:

        objc_autoreleasePoolPop(context);
      }

      v27 = [obj countByEnumeratingWithState:&v33 objects:v40 count:16];
    }

    while (v27);
  }

  objc_autoreleasePoolPop(v22);

  return v26;
}

- (BOOL)_shouldNotBackupFile:(id)a3 domain:(id)a4
{
  v6 = a3;
  v108 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v8 = WeakRetained;
  if (!self->_delegateRespondsToFileScannerShouldExcludeFile || ([WeakRetained fileScanner:self shouldExcludeFile:v6] & 1) == 0)
  {
    policy = self->_policy;
    if ((policy & 0x21) == 0x20)
    {
      sub_1000A05B8();
    }

    context = (policy & 0x22);
    v9 = context != 0;
    v11 = (policy & 0x2A);
    v12 = [v6 relativePath];
    v13 = _os_feature_enabled_impl();
    if (v11 == 8 && (v13 & 1) == 0 && [v6 isDataless])
    {
      v9 = MBGetDefaultLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *v120 = v6;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "=scanning= Not backed up (SF_DATALESS): %@", buf, 0xCu);
LABEL_57:
        _MBLog();
        goto LABEL_58;
      }

      goto LABEL_58;
    }

    v102 = (policy & 0x22) != 0;
    if ([v6 isCompressed])
    {
      if ([v6 isRegularFile])
      {
        [v6 absolutePath];
        policy = v14 = policy;
        v9 = open([policy fileSystemRepresentation], 256);

        LOBYTE(policy) = v14;
        if ((v9 & 0x80000000) == 0)
        {
          v15 = pread(v9, &__buf, 1uLL, 0);
          v16 = *__error();
          close(v9);
          if (v15 < 0)
          {
            v17 = MBGetDefaultLog();
            v9 = v17;
            if ((v16 & 0xFFFFFFFD) == 9)
            {
              if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412546;
                *v120 = v6;
                *&v120[8] = 1024;
                *&v120[10] = v16;
                _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "=scanning= Not backed up (UF_COMPRESSED): %@ (%{errno}d)", buf, 0x12u);
                goto LABEL_57;
              }

LABEL_58:

              LOBYTE(v9) = 1;
LABEL_59:

              goto LABEL_60;
            }

            if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
            {
              v18 = v9;
              if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412546;
                *v120 = v12;
                *&v120[8] = 1024;
                *&v120[10] = v16;
                _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "=scanning= pread failed for %@: %{errno}d", buf, 0x12u);
              }

              v84 = v12;
              v86 = v16;
              _MBLog();
            }
          }

          LOBYTE(policy) = v14;
        }
      }
    }

    v19 = [v6 domain];
    v20 = [v19 relativePathsNotToBackup];
    if ([v20 containsObject:v12])
    {
      goto LABEL_27;
    }

    if (context)
    {
      v96 = v11;
      v9 = [v6 domain];
      v21 = [v9 relativePathsNotToBackupToDrive];
      if ([v21 containsObject:v12])
      {

LABEL_27:
        goto LABEL_55;
      }

      v97 = v21;
    }

    v99 = v9;
    v101 = v8;
    v107 = v12;
    if (v11 == 8)
    {
      v96 = [v6 domain];
      v95 = [v96 relativePathsNotToBackupToService];
      if ([v95 containsObject:v12])
      {
        v22 = 1;
        goto LABEL_52;
      }
    }

    v23 = policy & 6;
    if (v23 == 2)
    {
      v94 = [v6 domain];
      v93 = [v94 relativePathsNotToBackupToLocal];
      if ([v93 containsObject:v107])
      {
        v22 = 1;
LABEL_48:

LABEL_49:
        v8 = v101;
        v12 = v107;
        if (v11 != 8)
        {
          v29 = v97;
          if (!v102)
          {
LABEL_54:

            if (v22)
            {
LABEL_55:
              v9 = MBGetDefaultLog();
              if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                *v120 = v6;
                _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "=scanning= Not backed up (explicit): %@", buf, 0xCu);
                goto LABEL_57;
              }

              goto LABEL_58;
            }

            v92 = self;
            v31 = [v6 absolutePath];
            if (strlen([v31 fileSystemRepresentation]) >= 0x3E6)
            {
              v32 = MBGetDefaultLog();
              if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                *v120 = v31;
                _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "=scanning= WARNING: File name too long - excluding file and continuing with backup. Please contact the developer and include this log message. Path: %@", buf, 0xCu);
LABEL_64:
                _MBLog();
              }

LABEL_65:

              LOBYTE(v9) = 1;
LABEL_66:

              goto LABEL_59;
            }

            v33 = [v6 hasXattrs];
            v91 = policy;
            if (context)
            {
              v98 = v33;
              v100 = v31;
              v34 = [v108 relativePathsToIgnoreExclusionsForDrive];
              v115 = 0u;
              v116 = 0u;
              v117 = 0u;
              v118 = 0u;
              v35 = v34;
              v36 = [v35 countByEnumeratingWithState:&v115 objects:v123 count:16];
              if (v36)
              {
                v37 = v36;
                v38 = *v116;
                while (2)
                {
                  v39 = 0;
                  contexta = v37;
                  do
                  {
                    if (*v116 != v38)
                    {
                      objc_enumerationMutation(v35);
                    }

                    v40 = *(*(&v115 + 1) + 8 * v39);
                    if ([(__CFError *)v40 hasSuffix:@"/", v85, v87])
                    {
                      v41 = MBGetDefaultLog();
                      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
                      {
                        v42 = v41;
                        if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
                        {
                          v43 = [v108 name];
                          *buf = 138412546;
                          *v120 = v43;
                          *&v120[8] = 2112;
                          *&v120[10] = v40;
                          _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_ERROR, "=scanning= Found an invalid path in relativePathsToIgnoreExclusionsForDrive for %@: %@", buf, 0x16u);
                        }

                        v85 = [v108 name];
                        v87 = v40;
                        _MBLog();

                        v37 = contexta;
                      }
                    }

                    else if ([v107 hasPrefix:v40])
                    {
                      v44 = [v107 length];
                      v45 = [(__CFError *)v40 length];
                      if (v44 == v45 || v45 < v44 && [v107 characterAtIndex:v45] == 47)
                      {

                        goto LABEL_99;
                      }
                    }

                    v39 = v39 + 1;
                  }

                  while (v37 != v39);
                  v37 = [v35 countByEnumeratingWithState:&v115 objects:v123 count:16];
                  if (v37)
                  {
                    continue;
                  }

                  break;
                }
              }

              if (!v98)
              {
LABEL_99:
                v49 = MBGetDefaultLog();
                v31 = v100;
                LOBYTE(policy) = v91;
                if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138412290;
                  *v120 = v6;
                  _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEBUG, "=scanning= Skipping exclusion check for %@", buf, 0xCu);
                  v85 = v6;
                  _MBLog();
                }

                goto LABEL_134;
              }

              v31 = v100;
            }

            else if (!v33)
            {
              if (![v6 isRegularFile])
              {
                goto LABEL_166;
              }

LABEL_135:
              if ((policy & 8) != 0)
              {
                v67 = [v6 protectionClass];
                if (v67)
                {
                  v68 = v67;
                  v32 = 0;
                }

                else
                {
                  v109 = 0;
                  v68 = [MBProtectionClassUtils getWithPath:v31 error:&v109];
                  v32 = v109;
                }

                if ((v68 - 1 < 2 || v68 == 255 && +[MBError isError:withCode:](MBError, "isError:withCode:", v32, 24)) && [v6 isCompressed])
                {
                  v69 = MBGetDefaultLog();
                  if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 67109378;
                    *v120 = v68;
                    *&v120[4] = 2112;
                    *&v120[6] = v6;
                    _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_DEFAULT, "=scanning= Not backed up (compressed, pc:%d): %@", buf, 0x12u);
                    _MBLog();
                  }

                  goto LABEL_65;
                }
              }

              v70 = [v31 length];
              if (v70 - [@".plist.1234567" length] >= 1)
              {
                v71 = [v31 substringFromIndex:?];
                v72 = [v71 hasPrefix:@".plist."];

                if (v72)
                {
                  v32 = MBGetDefaultLog();
                  if (!os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
                  {
                    goto LABEL_65;
                  }

                  v32 = v32;
                  if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
                  {
                    *buf = 138412290;
                    *v120 = v31;
                    _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_INFO, "=scanning= Not backing up failed plist safe save: %@", buf, 0xCu);
                  }

                  goto LABEL_171;
                }
              }

              v73 = [v31 pathExtension];
              if ([v73 isEqualToString:@"dat"])
              {
                v74 = [v31 containsString:@"binarycookies_tmp"];

                if (v74)
                {
                  v32 = MBGetDefaultLog();
                  if (!os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
                  {
                    goto LABEL_65;
                  }

                  v32 = v32;
                  if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
                  {
                    *buf = 138412290;
                    *v120 = v31;
                    _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_INFO, "=scanning= Not backing up temporary cookie: %@", buf, 0xCu);
                  }

                  goto LABEL_171;
                }
              }

              else
              {
              }

              v75 = [v31 lastPathComponent];
              v76 = [v75 hasPrefix:@".dat.nosync"];

              if (v76)
              {
                v32 = MBGetDefaultLog();
                if (!os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
                {
                  goto LABEL_65;
                }

                v32 = v32;
                if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138412290;
                  *v120 = v31;
                  _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEBUG, "=scanning= Not backing up .dat.nosync file: %@", buf, 0xCu);
                }
              }

              else
              {
LABEL_166:
                v9 = [v6 snapshotPath];
                if (!v9)
                {
                  goto LABEL_66;
                }

                v77 = [v6 relativePath];
                v78 = [v108 shouldBackupRelativePathFromLiveFileSystem:v77];

                if (!v78)
                {
                  LOBYTE(v9) = 0;
                  goto LABEL_66;
                }

                v32 = MBGetDefaultLog();
                if (!os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
                {
                  goto LABEL_65;
                }

                v32 = v32;
                if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
                {
                  *buf = 138412290;
                  *v120 = v6;
                  _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_INFO, "=scanning= Not backing up %@ from the APFS snapshot because it needs to be backed up from the live filesystem", buf, 0xCu);
                }
              }

LABEL_171:

              goto LABEL_64;
            }

            v46 = [v6 isDirectory];
            v47 = [NSURL fileURLWithPath:v31 isDirectory:v46];
            v114 = 0;
            v113 = 0;
            v48 = [v47 getResourceValue:&v114 forKey:NSURLIsExcludedFromBackupKey error:&v113];
            v49 = v114;
            v50 = v113;
            if (v48)
            {
              if ([v49 BOOLValue])
              {
                if (v46 && [v31 hasSuffix:@"/Preferences"])
                {
                  v51 = objc_autoreleasePoolPush();
                  v52 = [v6 livePath];
                  if (([(__CFError *)v52 isEqualToString:@"/var/mobile/Library/Preferences"]& 1) != 0)
                  {
                    contextb = v51;
                    v53 = v47;
                    v54 = v31;
                    v55 = [NSURL fileURLWithPath:v52];

                    v112 = v50;
                    v103 = v55;
                    LOBYTE(v53) = [v55 setResourceValue:0 forKey:NSURLIsExcludedFromBackupKey error:&v112];
                    v56 = v112;

                    v57 = MBGetDefaultLog();
                    v58 = v57;
                    if (v53)
                    {
                      if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
                      {
                        v59 = v58;
                        if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
                        {
                          *buf = 138412546;
                          *v120 = NSURLIsExcludedFromBackupKey;
                          *&v120[8] = 2112;
                          *&v120[10] = v52;
                          _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEFAULT, "=scanning= Removed %@ at %@", buf, 0x16u);
                        }

                        v85 = NSURLIsExcludedFromBackupKey;
                        v87 = v52;
LABEL_182:
                        _MBLog();
                      }
                    }

                    else if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
                    {
                      v80 = v58;
                      if (os_log_type_enabled(v80, OS_LOG_TYPE_ERROR))
                      {
                        *buf = 138412802;
                        *v120 = NSURLIsExcludedFromBackupKey;
                        *&v120[8] = 2112;
                        *&v120[10] = v52;
                        v121 = 2112;
                        v122 = v56;
                        _os_log_impl(&_mh_execute_header, v80, OS_LOG_TYPE_ERROR, "=scanning= Failed to remove %@ at %@: %@", buf, 0x20u);
                      }

                      v87 = v52;
                      v88 = v56;
                      v85 = NSURLIsExcludedFromBackupKey;
                      goto LABEL_182;
                    }

                    v81 = v52;

                    v82 = MBGetDefaultLog();
                    if (os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT))
                    {
                      v83 = v82;
                      if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 138412546;
                        *v120 = NSURLIsExcludedFromBackupKey;
                        *&v120[8] = 2112;
                        *&v120[10] = v54;
                        _os_log_impl(&_mh_execute_header, v83, OS_LOG_TYPE_DEFAULT, "=scanning= Found %@ at %@ - ignoring", buf, 0x16u);
                      }

                      v85 = NSURLIsExcludedFromBackupKey;
                      v87 = v54;
                      _MBLog();
                    }

                    objc_autoreleasePoolPop(contextb);
                    v32 = v103;
LABEL_109:
                    LOBYTE(policy) = v91;
                    if ((v91 & 0x16) == 2)
                    {
                      error = 0;
                      __buf = 0;
                      v62 = _kCFURLIsExcludedFromUnencryptedBackupKey;
                      if (CFURLCopyResourcePropertyForKey(v32, _kCFURLIsExcludedFromUnencryptedBackupKey, &__buf, &error))
                      {
                        v63 = __buf;
                        if (__buf)
                        {
                          CFRelease(__buf);
                          LOBYTE(policy) = v91;
                          if (v63 == kCFBooleanTrue)
                          {
                            v64 = MBGetDefaultLog();
                            if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
                            {
                              *buf = 138412290;
                              *v120 = v6;
                              _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_DEFAULT, "=scanning= Not backed up to unencrypted iTunes (attribute): %@", buf, 0xCu);
LABEL_122:
                              _MBLog();
                              goto LABEL_123;
                            }

                            goto LABEL_123;
                          }
                        }

                        goto LABEL_133;
                      }

                      policy = MBGetDefaultLog();
                      if (!os_log_type_enabled(policy, OS_LOG_TYPE_ERROR))
                      {
                        goto LABEL_131;
                      }

                      v66 = policy;
                      if (!os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
                      {
                        goto LABEL_130;
                      }
                    }

                    else
                    {
                      if ((v91 & 0x20) != 0 || (v92->_policy & 1) == 0)
                      {
LABEL_133:

                        v31 = v54;
                        v35 = v32;
LABEL_134:

                        v8 = v101;
                        v12 = v107;
                        goto LABEL_135;
                      }

                      error = 0;
                      __buf = 0;
                      v62 = _kCFURLIsExcludedFromCloudBackupKey;
                      if (CFURLCopyResourcePropertyForKey(v32, _kCFURLIsExcludedFromCloudBackupKey, &__buf, &error))
                      {
                        v65 = __buf;
                        if (__buf)
                        {
                          CFRelease(__buf);
                          LOBYTE(policy) = v91;
                          if (v65 == kCFBooleanTrue)
                          {
                            v64 = MBGetDefaultLog();
                            if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
                            {
                              *buf = 138412290;
                              *v120 = v6;
                              _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_DEFAULT, "=scanning= Not backed up to iCloud (attribute): %@", buf, 0xCu);
                              goto LABEL_122;
                            }

LABEL_123:

                            v50 = v56;
                            v31 = v54;
LABEL_177:

                            v8 = v101;
                            v12 = v107;
                            goto LABEL_65;
                          }
                        }

                        goto LABEL_133;
                      }

                      policy = MBGetDefaultLog();
                      if (!os_log_type_enabled(policy, OS_LOG_TYPE_ERROR))
                      {
LABEL_131:

                        LOBYTE(policy) = v91;
                        if (error)
                        {
                          CFRelease(error);
                        }

                        goto LABEL_133;
                      }

                      v66 = policy;
                      if (!os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
                      {
LABEL_130:

                        v85 = v62;
                        v87 = error;
                        _MBLog();
                        goto LABEL_131;
                      }
                    }

                    *buf = 138543618;
                    *v120 = v62;
                    *&v120[8] = 2112;
                    *&v120[10] = error;
                    _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_ERROR, "=scanning= Error fetching value for property %{public}@: %@", buf, 0x16u);
                    goto LABEL_130;
                  }

                  objc_autoreleasePoolPop(v51);
                }

                v32 = v47;
                v79 = MBGetDefaultLog();
                if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  *v120 = v6;
                  _os_log_impl(&_mh_execute_header, v79, OS_LOG_TYPE_DEFAULT, "=scanning= Not backed up (attribute): %@", buf, 0xCu);
                  _MBLog();
                }

                goto LABEL_177;
              }
            }

            else if ([MBError codeForNSError:v50]!= 4)
            {
              v60 = MBGetDefaultLog();
              if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
              {
                v61 = v60;
                if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412546;
                  *v120 = v6;
                  *&v120[8] = 2112;
                  *&v120[10] = v50;
                  _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEFAULT, "=scanning= Error getting NSURLIsExcludedFromBackupKey resource: %@: %@", buf, 0x16u);
                }

                v85 = v6;
                v87 = v50;
                _MBLog();
              }

              v32 = v47;
              v54 = v31;

              goto LABEL_108;
            }

            v32 = v47;
            v54 = v31;
LABEL_108:
            v56 = v50;
            goto LABEL_109;
          }

LABEL_53:

          goto LABEL_54;
        }

LABEL_52:

        v29 = v97;
        if (!v102)
        {
          goto LABEL_54;
        }

        goto LABEL_53;
      }
    }

    if ((policy & 0x20) != 0)
    {
      v24 = [v6 domain];
      v25 = [v24 relativePathsNotToBackupInMegaBackup];
      if ([v25 containsObject:v107])
      {

        v22 = 1;
        v102 = 1;
        goto LABEL_47;
      }

      v89 = v25;
      v90 = v24;
      if ((policy & 4) == 0)
      {
        v22 = 0;
        goto LABEL_45;
      }
    }

    else if ((policy & 4) == 0)
    {
      v22 = 0;
      goto LABEL_47;
    }

    v26 = self;
    v27 = [v6 domain];
    [v27 relativePathsNotToTransferDeviceToDevice];
    policy = v28 = policy;
    v22 = [policy containsObject:v107];

    LOBYTE(policy) = v28;
    if ((v28 & 0x20) == 0)
    {
      self = v26;
LABEL_47:
      if (v23 != 2)
      {
        goto LABEL_49;
      }

      goto LABEL_48;
    }

    v102 = 1;
    self = v26;
LABEL_45:

    goto LABEL_47;
  }

  LOBYTE(v9) = 1;
LABEL_60:

  return v9;
}

- (id)_scanTree:(id)a3 forDomain:(id)a4 fds:(id)a5 snapshotPath:(id)a6 relativePath:(id)a7 stats:(_MBFileScannerDomainStats *)a8
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = objc_autoreleasePoolPush();
  v21 = v20;
  v22 = atomic_load(&self->_canceled);
  if (v22)
  {
    v23 = [MBError errorWithCode:202 format:@"File scan cancelled"];
LABEL_3:
    objc_autoreleasePoolPop(v21);
    goto LABEL_21;
  }

  v54 = a2;
  context = v20;
  v56 = a8;
  v24 = [(MBDebugContext *)self->_debugContext performSelectorForName:@"Scanning" withObject:self->_debugContext];
  [(MBDebugContext *)self->_debugContext setValue:v19 forName:@"RelativePath"];
  v25 = [MBFile fileWithDomain:v16 snapshotPath:v18 relativePath:v19];
  v63 = 0;
  memset(v62, 0, sizeof(v62));
  v26 = [v25 absolutePath];
  v61 = 0;
  v27 = sub_10008E314(v26, v62, &v61);
  v28 = v61;

  if ((v27 & 1) == 0)
  {
    if ([MBError isError:v28 withCode:4])
    {
      v30 = MBGetDefaultLog();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
      {
        v31 = [v25 absolutePath];
        *buf = 138412290;
        v66 = v31;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEBUG, "=scanning= Doesn't exist: %@", buf, 0xCu);

        v32 = [v25 absolutePath];
LABEL_18:
        _MBLog();
      }
    }

    else
    {
      if (![MBError isError:v28 withCode:241])
      {
        if (![MBError isError:v28 withCode:242])
        {
          v29 = v25;
          v28 = v28;
          v23 = v28;
          goto LABEL_20;
        }

        v30 = MBGetDefaultLog();
        if (!os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_19;
        }

        v35 = [v25 absolutePath];
        *buf = 138412546;
        v66 = v35;
        v67 = 2112;
        v68 = v28;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "=scanning= Skipping due to unsupported mbNode type: %@ %@", buf, 0x16u);

        v32 = [v25 absolutePath];
        goto LABEL_18;
      }

      v30 = MBGetDefaultLog();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        v34 = [v25 absolutePath];
        *buf = 138412546;
        v66 = v34;
        v67 = 2112;
        v68 = v28;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "=scanning= Skipping due to unsupported protection class: %@ %@", buf, 0x16u);

        v32 = [v25 absolutePath];
        goto LABEL_18;
      }
    }

LABEL_19:
    v29 = v25;

    v23 = 0;
    goto LABEL_20;
  }

  [v25 setNode:v62];
  if ([(MBFileScanner *)self _shouldNotBackupFile:v25 domain:v16])
  {
    v29 = v25;
    v23 = 0;
  }

  else
  {
    v33 = [(MBFileScanner *)self _foundFile:v25 snapshotPath:v18 stats:v56];

    if (!v33)
    {
      v48 = v25;
      if ([v25 isDirectory])
      {
        v59 = 0u;
        v60 = 0u;
        v57 = 0u;
        v58 = 0u;
        v37 = [v15 allKeys];
        v38 = [v37 sortedArrayUsingComparator:&stru_1000FE690];

        obj = v38;
        v51 = [v38 countByEnumeratingWithState:&v57 objects:v64 count:16];
        if (v51)
        {
          v52 = v18;
          v53 = v17;
          v50 = *v58;
          while (2)
          {
            for (i = 0; i != v51; i = i + 1)
            {
              if (*v58 != v50)
              {
                objc_enumerationMutation(obj);
              }

              v40 = *(*(&v57 + 1) + 8 * i);
              v41 = objc_autoreleasePoolPush();
              v42 = v15;
              v43 = [v15 objectForKeyedSubscript:v40];
              v44 = [v19 stringByAppendingPathComponent:v40];
              v45 = [v16 relativePathsNotToBackup];
              v46 = [v45 containsObject:v44];

              if (v46)
              {
                sub_1000A05E4(v54, self, v16, v44);
              }

              if ([v43 count])
              {
                [(MBFileScanner *)self _scanTree:v43 forDomain:v16 fds:v53 snapshotPath:v52 relativePath:v44 stats:v56];
              }

              else
              {
                [(MBFileScanner *)self _scanFilesForDomain:v16 fds:v53 snapshotPath:v52 relativePath:v44 stats:v56];
              }
              v47 = ;
              v15 = v42;
              if (v47)
              {
                v23 = v47;

                objc_autoreleasePoolPop(v41);
                goto LABEL_42;
              }

              objc_autoreleasePoolPop(v41);
            }

            v51 = [obj countByEnumeratingWithState:&v57 objects:v64 count:16];
            if (v51)
            {
              continue;
            }

            break;
          }

          v23 = 0;
LABEL_42:
          v18 = v52;
          v17 = v53;
        }

        else
        {
          v23 = 0;
        }
      }

      else
      {
        v23 = 0;
      }

      v21 = context;

      goto LABEL_3;
    }

    v29 = v25;
    v28 = v33;
    v23 = v28;
  }

LABEL_20:

  objc_autoreleasePoolPop(context);
LABEL_21:

  return v23;
}

- (id)_scanFilesForDomain:(id)a3 fds:(id)a4 snapshotPath:(id)a5 relativePath:(id)a6 stats:(_MBFileScannerDomainStats *)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  mode = self->_mode;
  if (mode)
  {
    v17 = [(MBFileScanner *)self _scanFilesUsingReaddirForDomain:v12 fds:v13 snapshotPath:v14 relativePath:v15 depth:0 stats:a7];
    if (v17)
    {
      goto LABEL_7;
    }

    mode = self->_mode;
  }

  if ((mode & 2) != 0)
  {
    v17 = [(MBFileScanner *)self _scanFilesUsingGetattrlistbulkForDomain:v12 fds:v13 snapshotPath:v14 relativePath:v15 stats:a7];
  }

  else
  {
    v17 = 0;
  }

LABEL_7:

  return v17;
}

- (id)_scanFilesUsingReaddirForDomain:(id)a3 fds:(id)a4 snapshotPath:(id)a5 relativePath:(id)a6 depth:(int)a7 stats:(_MBFileScannerDomainStats *)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = atomic_load(&self->_canceled);
  if (v18)
  {
    v19 = [MBError errorWithCode:202 format:@"File scan cancelled"];
    goto LABEL_64;
  }

  v20 = objc_autoreleasePoolPush();
  v21 = v20;
  if (a7 >= 239)
  {
    v22 = MBGetDefaultLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
    {
      *buf = 67109378;
      *&buf[4] = a7;
      *&buf[8] = 2114;
      *&buf[10] = v17;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_FAULT, "=scanning= Reached max directory depth (%d) under %{public}@", buf, 0x12u);
      _MBLog();
    }

    v19 = 0;
    goto LABEL_63;
  }

  v73 = v20;
  v75 = 0;
  v23 = [v15 cachedFDForDomain:v14 withSnapshotPath:v16 error:&v75];
  v22 = v75;
  if (v23 == -1)
  {
    v28 = MBGetDefaultLog();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v29 = [v14 rootPath];
      *buf = 138412802;
      *&buf[4] = v14;
      *&buf[12] = 2112;
      *&buf[14] = v29;
      *&buf[22] = 2112;
      *&buf[24] = v22;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "=scanning= Unable to open domain directory at %@:%@: %@", buf, 0x20u);

      v62 = [v14 rootPath];
      _MBLog();
    }

    v19 = 0;
    v21 = v73;
    goto LABEL_62;
  }

  v24 = [(MBDebugContext *)self->_debugContext performSelectorForName:@"Scanning" withObject:self->_debugContext];
  [(MBDebugContext *)self->_debugContext setValue:v17 forName:@"RelativePath"];
  v72 = [MBFile fileWithDomain:v14 snapshotPath:v16 relativePath:v17];
  if (!v16)
  {
    goto LABEL_38;
  }

  v25 = [v14 name];
  if (![v25 isEqualToString:@"HomeDomain"])
  {
LABEL_37:

    goto LABEL_38;
  }

  v26 = v25;
  policy = self->_policy;
  if ((policy & 0x22) != 0)
  {
  }

  else
  {

    if ((policy & 4) == 0)
    {
      goto LABEL_38;
    }
  }

  if (([v17 isEqualToString:@"Library/Application Support/CloudDocs/backup"]& 1) == 0 && ([v17 hasPrefix:@"Library/Application Support/CloudDocs/backup/"]& 1) == 0 && ([v17 isEqualToString:@"Library/Application Support/FileProvider/backup"]& 1) == 0 && ([v17 hasPrefix:@"Library/Application Support/FileProvider/backup/"]& 1) == 0)
  {
    if (([v17 isEqualToString:@"Library/Application Support/CloudDocs"]& 1) != 0 || [v17 isEqualToString:@"Library/Application Support/FileProvider"])
    {
      v67 = [v17 stringByAppendingPathComponent:@"backup"];
      v65 = [MBFile fileWithDomain:v14 snapshotPath:0 relativePath:?];
      v69 = [v65 absolutePath];
      v76[0] = 0;
      v30 = +[NSFileManager defaultManager];
      v31 = [v30 fileExistsAtPath:v69 isDirectory:v76];
      v63 = v76[0];
      v64 = v31;

      v32 = MBGetDefaultLog();
      v33 = os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT);
      if (v64 && (v63 & 1) != 0)
      {
        if (v33)
        {
          *buf = 138412290;
          *&buf[4] = v69;
          _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "=scanning= Scanning the live path at %@", buf, 0xCu);
          v60 = v69;
          _MBLog();
        }

        v34 = [(MBFileScanner *)self _scanFilesUsingReaddirForDomain:v14 fds:v15 snapshotPath:0 relativePath:v67 depth:(a7 + 1) stats:a8];
        if (v34)
        {
          v19 = v34;

          goto LABEL_21;
        }

        v35 = MBGetDefaultLog();
        log = v35;
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          *&buf[4] = v69;
          _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "=scanning= Finished scanning the live path at %@", buf, 0xCu);
          goto LABEL_34;
        }
      }

      else
      {
        log = v32;
        if (v33)
        {
          *buf = 138412290;
          *&buf[4] = v69;
          _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "=scanning= No directory found at live path %@", buf, 0xCu);
LABEL_34:
          v25 = v67;
          v60 = v69;
          _MBLog();
LABEL_36:

          goto LABEL_37;
        }
      }

      v25 = v67;
      goto LABEL_36;
    }

LABEL_38:
    v36 = v23;
    v37 = a8;
    v85 = 0;
    v83 = 0u;
    v84 = 0u;
    memset(buf, 0, sizeof(buf));
    v74 = v22;
    v70 = v36;
    v38 = sub_10008E430(v36, v17, buf, &v74);
    v39 = v74;

    if (v38)
    {
      [v72 setNode:buf];
      if ([(MBFileScanner *)self _shouldNotBackupFile:v72 domain:v14])
      {
        v19 = 0;
      }

      else
      {
        v44 = [(MBFileScanner *)self _foundFile:v72 snapshotPath:v16 stats:v37];

        if (!v44)
        {
          if ([v72 isDirectory])
          {
            v50 = objc_autoreleasePoolPush();
            LODWORD(v60) = a7;
            v51 = [(MBFileScanner *)self _scanDirectory:v72 domain:v14 fds:v15 domainDirFd:v70 snapshotPath:v16 relativePath:v17 depth:v60 stats:v37];
            objc_autoreleasePoolPop(v50);
          }

          else
          {
            v51 = 0;
          }

          v21 = v73;
          v28 = v72;
          v39 = v51;
          v19 = v39;
          goto LABEL_61;
        }

        v39 = v44;
        v19 = v39;
      }

      v21 = v73;
      v28 = v72;
LABEL_61:
      v22 = v39;
      goto LABEL_62;
    }

    v40 = [MBError errnoForError:v39];
    v71 = [(MBFileScanner *)self delegate];
    if (v40 == 2)
    {
      v41 = MBGetDefaultLog();
      v42 = v41;
      v21 = v73;
      if (a7)
      {
        v28 = v72;
        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
        {
          v43 = [v72 absolutePath];
          *v76 = 138412290;
          v77 = v43;
          _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "=scanning= Deleted while scanning: %@", v76, 0xCu);

          v61 = [v72 absolutePath];
          _MBLog();

          v21 = v73;
        }

        [(MBDebugContext *)self->_debugContext setFlag:@"FileDeletedWhileScanning"];
        [(NSMutableSet *)self->_modifiedDomains addObject:v14];
        goto LABEL_59;
      }

      v28 = v72;
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
      {
        v48 = [v72 absolutePath];
        *v76 = 138412290;
        v77 = v48;
        _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEBUG, "=scanning= Doesn't exist: %@", v76, 0xCu);

        v46 = [v72 absolutePath];
        goto LABEL_57;
      }
    }

    else
    {
      v28 = v72;
      v21 = v73;
      if (![MBError isError:v39 withCode:241])
      {
        v68 = v39;
        if (![MBError isError:v39 withCode:242])
        {
          if ((objc_opt_respondsToSelector() & 1) != 0 && [v71 fileScanner:self failedToStatFile:v72 withErrno:v40])
          {
            v52 = [v72 absolutePath];
            v53 = [v72 domain];
            v54 = [v53 volumeMountPoint];

            v55 = MBGetDefaultLog();
            if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
            {
              *v76 = 138412802;
              v77 = v52;
              v78 = 2112;
              v79 = v17;
              v80 = 1024;
              v81 = v40;
              _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_INFO, "=scanning= Skipping file with MBNodeForRelativePathAt() failure %@ (%@): %{errno}d", v76, 0x1Cu);
              _MBLog();
            }

            sub_100010364(v52, v16, v54, v40, "MBNodeForRelativePathAt");
            v19 = 0;
            v21 = v73;
          }

          else
          {
            v56 = [v72 absolutePath];
            v57 = [v72 domain];
            v58 = [v57 volumeMountPoint];

            v59 = MBGetDefaultLog();
            if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
            {
              *v76 = 138412802;
              v77 = v56;
              v78 = 2112;
              v79 = v17;
              v80 = 1024;
              v81 = v40;
              _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_ERROR, "=scanning= MBNodeForRelativePathAt() failed at %@ (%@): %{errno}d", v76, 0x1Cu);
              _MBLog();
            }

            sub_100010364(v56, v16, v58, v40, "MBNodeForRelativePathAt");
            v19 = [MBError errorWithErrno:v40 code:101 path:v56 format:@"MBNodeForRelativePathAt() error"];

            v28 = v72;
            v21 = v73;
          }

          v39 = v68;
          goto LABEL_60;
        }

        v42 = MBGetDefaultLog();
        if (!os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_58;
        }

        v47 = [v72 absolutePath];
        *v76 = 138412546;
        v77 = v47;
        v78 = 2112;
        v79 = v39;
        _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEBUG, "=scanning= Skipping unsupported mbNode type: %@ %@", v76, 0x16u);

        v46 = [v72 absolutePath];
        goto LABEL_57;
      }

      v42 = MBGetDefaultLog();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
      {
        v45 = [v72 absolutePath];
        *v76 = 138412546;
        v77 = v45;
        v78 = 2112;
        v79 = v39;
        _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "=scanning= Skipping due to unsupported protection class: %@ %@", v76, 0x16u);

        v46 = [v72 absolutePath];
LABEL_57:
        _MBLog();

        v21 = v73;
      }
    }

LABEL_58:

LABEL_59:
    v19 = 0;
LABEL_60:

    goto LABEL_61;
  }

  v19 = 0;
LABEL_21:
  v28 = v72;
  v21 = v73;
LABEL_62:

LABEL_63:
  objc_autoreleasePoolPop(v21);
LABEL_64:

  return v19;
}

- (id)_scanDirectory:(id)a3 domain:(id)a4 fds:(id)a5 domainDirFd:(int)a6 snapshotPath:(id)a7 relativePath:(id)a8 depth:(int)a9 stats:(_MBFileScannerDomainStats *)a10
{
  v15 = a3;
  v121 = a4;
  v119 = a5;
  v122 = a7;
  v16 = a8;
  if ([v16 length])
  {
    v17 = [v16 fileSystemRepresentation];
  }

  else
  {
    v17 = ".";
  }

  v18 = openat(a6, v17, 256, 0);
  if (v18 < 0)
  {
    v26 = *__error();
    v27 = [(MBFileScanner *)self delegate];
    if (v26 == 2)
    {
      v28 = MBGetDefaultLog();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        v29 = [v15 absolutePath];
        LODWORD(v129.d_ino) = 138412290;
        *(&v129.d_ino + 4) = v29;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "=scanning= Modification error when opening directory %@ while scanning", &v129, 0xCu);

        v97 = [v15 absolutePath];
        _MBLog();
      }

      [(NSMutableSet *)self->_modifiedDomains addObject:v121];
    }

    else
    {
      if ((objc_opt_respondsToSelector() & 1) == 0 || ![v27 fileScanner:self failedToOpenFile:v15 withErrno:v26])
      {
        v43 = MBGetDefaultLog();
        if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
        {
          v44 = [v15 absolutePath];
          LODWORD(v129.d_ino) = 138412802;
          *(&v129.d_ino + 4) = v44;
          WORD2(v129.d_seekoff) = 2080;
          *(&v129.d_seekoff + 6) = v17;
          *&v129.d_name[1] = 1024;
          *&v129.d_name[3] = v26;
          _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_ERROR, "=scanning= openat failed at %@ (%s): %{errno}d", &v129, 0x1Cu);

          v101 = [v15 absolutePath];
          _MBLog();
        }

        v45 = [v15 absolutePath];
        v30 = [MBError errorWithErrno:v26 code:101 path:v45 format:@"open error"];

        v46 = [v15 absolutePath];
        sub_10000D2DC(v46, v26, "openat");

        goto LABEL_32;
      }

      v36 = MBGetDefaultLog();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
      {
        v37 = [v15 absolutePath];
        LODWORD(v129.d_ino) = 138412802;
        *(&v129.d_ino + 4) = v37;
        WORD2(v129.d_seekoff) = 2080;
        *(&v129.d_seekoff + 6) = v17;
        *&v129.d_name[1] = 1024;
        *&v129.d_name[3] = v26;
        _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_INFO, "=scanning= Skipping file with openat failure %@ (%s): %{errno}d", &v129, 0x1Cu);

        v99 = [v15 absolutePath];
        _MBLog();
      }
    }

    v30 = 0;
LABEL_32:

    goto LABEL_88;
  }

  v19 = v18;
  if (!v122)
  {
    memset(&v129, 0, 144);
    if (!fstat(v18, &v129))
    {
      v58 = v17;
      d_seekoff = v129.d_seekoff;
      if (d_seekoff != [v15 inodeNumber])
      {
        v86 = MBGetDefaultLog();
        if (os_log_type_enabled(v86, OS_LOG_TYPE_DEFAULT))
        {
          v87 = [v15 absolutePath];
          *buf = 138412290;
          *v131 = v87;
          _os_log_impl(&_mh_execute_header, v86, OS_LOG_TYPE_DEFAULT, "=scanning= Modification error when opening directory %@ while scanning", buf, 0xCu);

          v106 = [v15 absolutePath];
          _MBLog();
        }

        [(NSMutableSet *)self->_modifiedDomains addObject:v121];
        close(v19);
        goto LABEL_106;
      }

      v17 = v58;
      goto LABEL_6;
    }

    v31 = *__error();
    v32 = [(MBFileScanner *)self delegate];
    if (v31 == 2)
    {
      v33 = MBGetDefaultLog();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        v34 = [v15 absolutePath];
        *buf = 138412290;
        *v131 = v34;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "=scanning= Modification error when stating directory %@ while scanning", buf, 0xCu);

        v98 = [v15 absolutePath];
        _MBLog();
      }

      [(NSMutableSet *)self->_modifiedDomains addObject:v121];
    }

    else
    {
      if ((objc_opt_respondsToSelector() & 1) == 0 || ![v32 fileScanner:self failedToStatFile:v15 withErrno:v31])
      {
        v64 = MBGetDefaultLog();
        if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
        {
          v65 = [v15 absolutePath];
          *buf = 138412802;
          *v131 = v65;
          *&v131[8] = 2080;
          *&v131[10] = v17;
          *&v131[18] = 1024;
          *&v131[20] = v31;
          _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_ERROR, "=scanning= fstat failed at %@ (%s): %{errno}d", buf, 0x1Cu);

          v104 = [v15 absolutePath];
          _MBLog();
        }

        v66 = [v15 absolutePath];
        v35 = [MBError errorWithErrno:v31 code:101 path:v66 format:@"stat error"];

        goto LABEL_76;
      }

      v62 = MBGetDefaultLog();
      if (os_log_type_enabled(v62, OS_LOG_TYPE_INFO))
      {
        v63 = [v15 absolutePath];
        *buf = 138412802;
        *v131 = v63;
        *&v131[8] = 2080;
        *&v131[10] = v17;
        *&v131[18] = 1024;
        *&v131[20] = v31;
        _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_INFO, "=scanning= Skipping file with fstat failure %@ (%s): %{errno}d", buf, 0x1Cu);

        v103 = [v15 absolutePath];
        _MBLog();
      }
    }

    v35 = 0;
LABEL_76:
    close(v19);
    v30 = v35;

LABEL_87:
    goto LABEL_88;
  }

LABEL_6:
  v118 = v15;
  v20 = +[NSMutableArray array];
  v21 = fdopendir(v19);
  if (!v21)
  {
    v38 = *__error();
    v39 = MBGetDefaultLog();
    v40 = v39;
    if (v38 == 2)
    {
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        v41 = [v15 absolutePath];
        LODWORD(v129.d_ino) = 138412290;
        *(&v129.d_ino + 4) = v41;
        _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "=scanning= Modification error when opening directory %@ while scanning", &v129, 0xCu);

        v100 = [v15 absolutePath];
        _MBLog();
      }

      [(NSMutableSet *)self->_modifiedDomains addObject:v121];
      v42 = 0;
    }

    else
    {
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        v60 = [v15 absolutePath];
        LODWORD(v129.d_ino) = 138412802;
        *(&v129.d_ino + 4) = v60;
        WORD2(v129.d_seekoff) = 2080;
        *(&v129.d_seekoff + 6) = v17;
        *&v129.d_name[1] = 1024;
        *&v129.d_name[3] = v38;
        _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_ERROR, "=scanning= fdopendir failed at %@ (%s): %{errno}d", &v129, 0x1Cu);

        v102 = [v15 absolutePath];
        _MBLog();
      }

      v61 = [v15 absolutePath];
      v42 = [MBError errorWithErrno:v38 code:101 path:v61 format:@"fdopendir error"];
    }

    close(v19);
LABEL_86:
    v30 = v42;

    goto LABEL_87;
  }

  v22 = v21;
  v116 = v16;
  v115 = a6;
  v23 = objc_autoreleasePoolPush();
  memset(&v129, 0, 512);
  v127 = 0;
  v24 = readdir_r(v22, &v129, &v127);
  if (!v24)
  {
    v117 = 0;
    while (2)
    {
      v16 = v116;
      while (1)
      {
        if (!v127)
        {
          v42 = 0;
          goto LABEL_81;
        }

        if (*v129.d_name != 46 && *v129.d_name ^ 0x2E2E | v129.d_name[2])
        {
          break;
        }

        objc_autoreleasePoolPop(v23);
        v23 = objc_autoreleasePoolPush();
        memset(&v129, 0, 512);
        v127 = 0;
        v47 = readdir_r(v22, &v129, &v127);
        if (v47)
        {
          v25 = v47;
          goto LABEL_78;
        }
      }

      ++v117;
      v48 = [NSString mb_stringWithFileSystemRepresentation:v129.d_name];
      if (v48)
      {
        if (v129.d_type == 4)
        {
          v49 = v48;
          [v116 stringByAppendingPathComponent:v48];
          v50 = v111 = v17;
          v42 = [(MBFileScanner *)self _scanFilesUsingReaddirForDomain:v121 fds:v119 snapshotPath:v122 relativePath:v50 depth:(a9 + 1) stats:a10];

          v17 = v111;
          if (v42)
          {

            goto LABEL_81;
          }
        }

        else
        {
          v49 = v48;
          [v20 addObject:v48];
        }

        HIDWORD(v54) = 989560465 * v117;
        LODWORD(v54) = 989560465 * v117;
        v48 = v49;
        if ((v54 >> 4) > 0x68DB8)
        {
LABEL_58:

          objc_autoreleasePoolPop(v23);
          v23 = objc_autoreleasePoolPush();
          memset(&v129, 0, 512);
          v127 = 0;
          v25 = readdir_r(v22, &v129, &v127);
          if (!v25)
          {
            continue;
          }

          goto LABEL_78;
        }

        v51 = MBGetDefaultLog();
        if (!os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
        {
LABEL_57:

          goto LABEL_58;
        }

        v112 = v49;
        [v121 name];
        v55 = v20;
        v57 = v56 = v17;
        *buf = 67109634;
        *v131 = v117;
        *&v131[4] = 2082;
        *&v131[6] = v56;
        *&v131[14] = 2114;
        *&v131[16] = v57;
        _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "=scanning= Found %u items under %{public}s (%{public}@)", buf, 0x1Cu);

        v17 = v56;
        v20 = v55;
        v53 = [v121 name];
      }

      else
      {
        v51 = [NSData dataWithBytes:v129.d_name length:v129.d_namlen];
        v52 = MBGetDefaultLog();
        if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          *v131 = v51;
          _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_ERROR, "=scanning= Unexpected file name: %@", buf, 0xCu);
          _MBLog();
        }

        if (MBIsInternalInstall())
        {
          v112 = 0;
          v53 = MBGetDefaultLog();
          if (!os_log_type_enabled(v53, OS_LOG_TYPE_FAULT))
          {
LABEL_54:

            v48 = v112;
            goto LABEL_57;
          }

          *buf = 138412290;
          *v131 = v51;
          _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_FAULT, "=scanning= Unexpected file name: %@", buf, 0xCu);
        }

        else
        {
          if (dword_10011E4B0 || atomic_fetch_add_explicit(&dword_10011E4B0, 1u, memory_order_relaxed))
          {
            goto LABEL_57;
          }

          v112 = 0;
          v53 = MBGetDefaultLog();
          if (!os_log_type_enabled(v53, OS_LOG_TYPE_FAULT))
          {
            goto LABEL_54;
          }

          *buf = 0;
          _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_FAULT, "=scanning= =scanning= Unexpected file name", buf, 2u);
        }
      }

      break;
    }

    _MBLog();
    goto LABEL_54;
  }

  v25 = v24;
  v117 = 0;
LABEL_78:
  v67 = v20;
  v68 = v17;
  v69 = MBGetDefaultLog();
  if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
  {
    v70 = [v118 absolutePath];
    *buf = 138412546;
    *v131 = v70;
    *&v131[8] = 1024;
    *&v131[10] = v25;
    _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_ERROR, "=scanning= readdir_r failed at %@: %d", buf, 0x12u);

    v105 = [v118 absolutePath];
    _MBLog();
  }

  v71 = *__error();
  v72 = [v118 absolutePath];
  v42 = [MBError errorWithErrno:v71 code:101 path:v72 format:@"readdir error"];

  v17 = v68;
  v20 = v67;
  v16 = v116;
LABEL_81:
  objc_autoreleasePoolPop(v23);
  if (v117 >> 4 >= 0x271)
  {
    v73 = MBGetDefaultLog();
    if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
    {
      [v121 name];
      v113 = v20;
      v75 = v74 = v17;
      LODWORD(v129.d_ino) = 67109634;
      HIDWORD(v129.d_ino) = v117;
      LOWORD(v129.d_seekoff) = 2082;
      *(&v129.d_seekoff + 2) = v74;
      v129.d_namlen = 2114;
      *&v129.d_type = v75;
      _os_log_impl(&_mh_execute_header, v73, OS_LOG_TYPE_DEFAULT, "=scanning= Found a total of %u items under %{public}s (%{public}@)", &v129, 0x1Cu);

      v110 = [v121 name];
      _MBLog();

      v17 = v74;
      v20 = v113;
      v16 = v116;
    }
  }

  closedir(v22);
  v15 = v118;
  if (v42)
  {
    goto LABEL_86;
  }

  v114 = v17;
  [v20 sortUsingComparator:&stru_1000FE6B0];
  v125 = 0u;
  v126 = 0u;
  v123 = 0u;
  v124 = 0u;
  v77 = v20;
  v78 = [v77 countByEnumeratingWithState:&v123 objects:v128 count:16];
  if (v78)
  {
    v79 = v78;
    v80 = *v124;
    while (2)
    {
      for (i = 0; i != v79; i = i + 1)
      {
        if (*v124 != v80)
        {
          objc_enumerationMutation(v77);
        }

        v82 = *(*(&v123 + 1) + 8 * i);
        v83 = objc_autoreleasePoolPush();
        v84 = [v16 stringByAppendingPathComponent:v82];
        v85 = [(MBFileScanner *)self _scanFilesUsingReaddirForDomain:v121 fds:v119 snapshotPath:v122 relativePath:v84 depth:(a9 + 1) stats:a10];
        if (v85)
        {
          v30 = v85;

          objc_autoreleasePoolPop(v83);
          goto LABEL_102;
        }

        objc_autoreleasePoolPop(v83);
      }

      v79 = [v77 countByEnumeratingWithState:&v123 objects:v128 count:16];
      if (v79)
      {
        continue;
      }

      break;
    }
  }

  if (!v122)
  {
    memset(&v129, 0, 144);
    v15 = v118;
    if (!fstatat(v115, v114, &v129, 32))
    {
      v90 = v129.d_seekoff;
      if (v90 == [v118 inodeNumber])
      {
        [(MBFileScanner *)self _detectModifiedDomain:v121 relativePath:v16 lastModified:*&v129.d_name[27]];
LABEL_106:
        v30 = 0;
        goto LABEL_88;
      }

LABEL_112:
      v91 = MBGetDefaultLog();
      if (os_log_type_enabled(v91, OS_LOG_TYPE_DEFAULT))
      {
        v92 = [v118 absolutePath];
        *buf = 138412290;
        *v131 = v92;
        _os_log_impl(&_mh_execute_header, v91, OS_LOG_TYPE_DEFAULT, "=scanning= Deleted/modified while scanning: %@", buf, 0xCu);

        v107 = [v118 absolutePath];
        _MBLog();
      }

      [(MBDebugContext *)self->_debugContext setFlag:@"FileDeletedWhileScanning"];
      [(NSMutableSet *)self->_modifiedDomains addObject:v121];
      goto LABEL_106;
    }

    v88 = *__error();
    v89 = [(MBFileScanner *)self delegate];
    v27 = v89;
    if (v88 == 2)
    {

      goto LABEL_112;
    }

    if ((objc_opt_respondsToSelector() & 1) != 0 && [v27 fileScanner:self failedToStatFile:v118 withErrno:v88])
    {
      v93 = MBGetDefaultLog();
      if (os_log_type_enabled(v93, OS_LOG_TYPE_INFO))
      {
        v94 = [v118 absolutePath];
        *buf = 138412802;
        *v131 = v94;
        *&v131[8] = 2080;
        *&v131[10] = v114;
        *&v131[18] = 1024;
        *&v131[20] = v88;
        _os_log_impl(&_mh_execute_header, v93, OS_LOG_TYPE_INFO, "=scanning= Skipping file with fstat failure %@ (%s): %{errno}d", buf, 0x1Cu);

        v108 = [v118 absolutePath];
        _MBLog();
      }

      v30 = 0;
    }

    else
    {
      v95 = MBGetDefaultLog();
      if (os_log_type_enabled(v95, OS_LOG_TYPE_ERROR))
      {
        v96 = [v118 absolutePath];
        *buf = 138412802;
        *v131 = v96;
        *&v131[8] = 2080;
        *&v131[10] = v114;
        *&v131[18] = 1024;
        *&v131[20] = v88;
        _os_log_impl(&_mh_execute_header, v95, OS_LOG_TYPE_ERROR, "=scanning= fstatat failed at %@ (%s): %{errno}d", buf, 0x1Cu);

        v109 = [v118 absolutePath];
        _MBLog();
      }

      v93 = [v118 absolutePath];
      v30 = [MBError errorWithErrno:v88 code:101 path:v93 format:@"stat error"];
    }

    goto LABEL_32;
  }

  v30 = 0;
LABEL_102:
  v15 = v118;
LABEL_88:

  return v30;
}

- (id)_scanFilesUsingGetattrlistbulkForDomain:(id)a3 fds:(id)a4 snapshotPath:(id)a5 relativePath:(id)a6 stats:(_MBFileScannerDomainStats *)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = atomic_load(&self->_canceled);
  if (v16)
  {
    v17 = [MBError errorWithCode:202 format:@"File scan cancelled"];
    goto LABEL_61;
  }

  v86 = 0;
  v18 = [v13 cachedFDForDomain:v12 withSnapshotPath:v14 error:&v86];
  v19 = v86;
  v20 = v19;
  if (v18 < 0)
  {
    v24 = [MBError isError:v19 withCode:4];
    v25 = MBGetDefaultLog();
    v26 = v25;
    if (v24)
    {
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        v27 = [v12 name];
        v28 = [v12 rootPath];
        *buf = 138412802;
        *&buf[4] = v27;
        *&buf[12] = 2112;
        *&buf[14] = v28;
        *&buf[22] = 2112;
        *&buf[24] = v14;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "=scanning= No domain root present for %@ found at %@ under %@", buf, 0x20u);

        v29 = [v12 name];
        v68 = [v12 rootPath];
        _MBLog();
      }

      v17 = 0;
    }

    else
    {
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v30 = [v12 name];
        *buf = 138412546;
        *&buf[4] = v30;
        *&buf[12] = 2112;
        *&buf[14] = v20;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "=scanning= Failed to fetch cached file descriptor for domain %@: %@", buf, 0x16u);

        v64 = [v12 name];
        _MBLog();
      }

      v20 = v20;
      v17 = v20;
    }

    goto LABEL_60;
  }

  v92 = 0;
  v90 = 0u;
  v91 = 0u;
  memset(buf, 0, sizeof(buf));
  v85 = v19;
  v21 = sub_10008E430(v18, v15, buf, &v85);
  v22 = v85;

  if ((v21 & 1) == 0)
  {
    if (([MBError isError:v22 withCode:4]& 1) != 0)
    {
      v17 = 0;
    }

    else
    {
      v22 = v22;
      v17 = v22;
    }

    goto LABEL_59;
  }

  v23 = [MBFile fileWithDomain:v12 snapshotPath:v14 relativePath:v15];
  [v23 setNode:buf];
  if ([(MBFileScanner *)self _shouldNotBackupFile:v23 domain:v12])
  {
LABEL_6:
    v17 = 0;
    goto LABEL_58;
  }

  v31 = [(MBFileScanner *)self _foundFile:v23 snapshotPath:v14 stats:a7];

  if (v31)
  {
    v22 = v31;
    v17 = v22;
    goto LABEL_58;
  }

  if (![v23 isDirectory])
  {
    v22 = 0;
    goto LABEL_6;
  }

  v71 = v23;
  v32 = objc_opt_new();
  [v32 addObject:v15];
  v33 = objc_opt_new();
  v34 = [NSNumber numberWithUnsignedInt:*buf];
  v76 = v33;
  [v33 addObject:v34];

  v35 = v32;
  v74 = [NSMutableData dataWithLength:0x4000];
  if (![v32 count])
  {
    v57 = 0;
    goto LABEL_57;
  }

  v36 = 0;
  v75 = v35;
  while (1)
  {
    v37 = objc_autoreleasePoolPush();
    v38 = v37;
    v39 = atomic_load(&self->_canceled);
    if (v39)
    {
      v56 = [MBError errorWithCode:202 format:@"File scan cancelled"];
      goto LABEL_56;
    }

    v77 = v37;
    v40 = [v35 lastObject];
    [v35 removeLastObject];
    v41 = [v76 lastObject];
    v80 = [v41 unsignedIntValue];

    [v76 removeLastObject];
    v84 = v36;
    v42 = [v13 cachedFDForDomain:v12 withSnapshotPath:v14 error:&v84];
    v43 = v84;

    v83 = v40;
    if (v42 < 0)
    {
      v61 = MBGetDefaultLog();
      if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
      {
        v62 = [v12 name];
        *v87 = 138412546;
        *v88 = v62;
        *&v88[8] = 2112;
        *&v88[10] = v43;
        _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_ERROR, "=scanning= Failed to fetch cached file descriptor for domain %@: %@", v87, 0x16u);

        [v12 name];
        v66 = v56 = v43;
        _MBLog();
      }

      else
      {
        v56 = v43;
      }

      v35 = v75;
      v38 = v77;
      goto LABEL_55;
    }

    v82 = v43;
    v44 = [v40 length] ? objc_msgSend(v40, "fileSystemRepresentation") : ".";
    v38 = v77;
    v45 = v80;
    v46 = openat(v42, v44, 256, 0);
    if ((v46 & 0x80000000) == 0)
    {
      break;
    }

    v49 = *__error();
    v50 = [(MBFileScanner *)self delegate];
    v51 = [MBFile fileWithDomain:v12 snapshotPath:v14 relativePath:v83];
    v78 = v49;
    v81 = v51;
    v73 = v50;
    if ((objc_opt_respondsToSelector() & 1) != 0 && [v50 fileScanner:self failedToOpenFile:v51 withErrno:v49])
    {
      v52 = MBGetDefaultLog();
      if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
      {
        v53 = [v51 absolutePath];
        *v87 = 138412802;
        *v88 = v53;
        *&v88[8] = 2112;
        *&v88[10] = v83;
        *&v88[18] = 1024;
        *&v88[20] = v78;
        _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_INFO, "=scanning= Skipping file with openat failure %@ (%@): %{errno}d", v87, 0x1Cu);

        [v51 absolutePath];
        v67 = v83;
        v65 = v70 = v78;
        _MBLog();
      }

      v54 = 0;
    }

    else
    {
      v58 = MBGetDefaultLog();
      if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
      {
        v59 = [v51 absolutePath];
        *v87 = 138412802;
        *v88 = v59;
        *&v88[8] = 2112;
        *&v88[10] = v83;
        *&v88[18] = 1024;
        *&v88[20] = v78;
        _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_ERROR, "=scanning= openat failed at %@ (%@): %{errno}d", v87, 0x1Cu);

        [v51 absolutePath];
        v67 = v83;
        v65 = v70 = v78;
        _MBLog();
      }

      v60 = [v51 absolutePath];
      v72 = [MBError errorWithErrno:v78 code:101 path:v60 format:@"open error"];

      v52 = [v51 absolutePath];
      sub_10000D2DC(v52, v78, "openat");
      v54 = 1;
      v82 = v72;
    }

    v35 = v75;

    objc_autoreleasePoolPop(v38);
    v57 = v82;
    if (v54)
    {
      goto LABEL_57;
    }

LABEL_44:
    v36 = v57;
    if (![v35 count])
    {
      goto LABEL_57;
    }
  }

  v47 = v46;
  if (v80 > 0x61A8)
  {
    v55 = MBGetDefaultLog();
    if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
    {
      v79 = [v12 name];
      *v87 = 67109634;
      *v88 = v80;
      *&v88[4] = 2114;
      *&v88[6] = v79;
      *&v88[14] = 2114;
      *&v88[16] = v83;
      _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_INFO, "=scanning= Found a direntcount of %u under %{public}@ (%{public}@)", v87, 0x1Cu);

      v69 = [v12 name];
      v45 = v80;
      _MBLog();
    }

    v35 = v75;
    v48 = [(MBFileScanner *)self _performTwoPassEnumerationForDomain:v12 snapshotPath:v14 relativePath:v83 buffer:v74 dirFd:v47 direntCount:v45 directoryPathStack:v75 directoryCountStack:v76 stats:a7];
  }

  else
  {
    v35 = v75;
    v48 = [(MBFileScanner *)self _performSinglePassEnumerationForDomain:v12 snapshotPath:v14 relativePath:v83 buffer:v74 dirFd:v46 direntCount:v80 directoryPathStack:v75 directoryCountStack:v76 stats:a7];
  }

  v56 = v48;

  close(v47);
  if (!v56)
  {

    objc_autoreleasePoolPop(v38);
    v57 = 0;
    goto LABEL_44;
  }

  v61 = MBGetDefaultLog();
  if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
  {
    *v87 = 138412290;
    *v88 = v56;
    _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_ERROR, "=scanning= Error performing file enumeration: %@", v87, 0xCu);
    _MBLog();
  }

LABEL_55:

  v36 = v83;
LABEL_56:

  objc_autoreleasePoolPop(v38);
  v57 = v56;
LABEL_57:
  v22 = v57;

  v17 = v22;
  v23 = v71;
LABEL_58:

LABEL_59:
  v20 = v22;
LABEL_60:

LABEL_61:

  return v17;
}

- (id)_performTwoPassEnumerationForDomain:(id)a3 snapshotPath:(id)a4 relativePath:(id)a5 buffer:(id)a6 dirFd:(int)a7 direntCount:(unsigned int)a8 directoryPathStack:(id)a9 directoryCountStack:(id)a10 stats:(_MBFileScannerDomainStats *)a11
{
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v48 = a9;
  v49 = a10;
  v80 = 0;
  v81 = &v80;
  v82 = 0x2020000000;
  v83 = 0;
  v74 = 0;
  v75 = &v74;
  v76 = 0x3032000000;
  v77 = sub_10008B33C;
  v78 = sub_10008B34C;
  v79 = 0;
  v65[0] = _NSConcreteStackBlock;
  v65[1] = 3221225472;
  v65[2] = sub_10008BCC0;
  v65[3] = &unk_1000FE700;
  v20 = v16;
  v66 = v20;
  v21 = v18;
  v67 = v21;
  v68 = self;
  v45 = self;
  v70 = &v74;
  v71 = &v80;
  v22 = v19;
  v23 = a8;
  v73 = a8;
  v24 = v17;
  v69 = v24;
  v72 = a11;
  sub_10008DCA8(a7, v22, v65);
  if (v81[3] >> 4 >= 0x271)
  {
    v25 = MBGetDefaultLog();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v26 = v25;
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        v44 = v22;
        v27 = v81[3];
        v28 = [v20 name];
        *buf = 134218754;
        v85 = v27;
        v86 = 1024;
        v87 = a8;
        v88 = 2114;
        v89 = v21;
        v90 = 2114;
        v91 = v28;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "=scanning= Found a total of %llu/%u items under %{public}@ (%{public}@), first pass", buf, 0x26u);

        v22 = v44;
      }

      v29 = v81[3];
      v42 = [v20 name];
      _MBLog();
    }
  }

  v30 = v75[5];
  if (v30)
  {
    v31 = v30;
LABEL_9:
    v32 = v31;
    goto LABEL_18;
  }

  if (lseek(a7, 0, 0) < 0)
  {
    v31 = [MBError errorWithErrno:*__error() path:v21 format:@"lseek error"];
    goto LABEL_9;
  }

  v33 = v22;
  v61 = 0;
  v62 = &v61;
  v63 = 0x2020000000;
  v64 = 0;
  v50[0] = _NSConcreteStackBlock;
  v50[1] = 3221225472;
  v50[2] = sub_10008C030;
  v50[3] = &unk_1000FE6D8;
  v34 = v20;
  v51 = v34;
  v35 = v21;
  v52 = v35;
  v53 = v45;
  v57 = &v74;
  v58 = &v61;
  v60 = a8;
  v54 = v24;
  v59 = a11;
  v55 = v48;
  v56 = v49;
  sub_10008DCA8(a7, v22, v50);
  if (v62[3] >> 4 >= 0x271)
  {
    v36 = MBGetDefaultLog();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      v47 = v35;
      v37 = v36;
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        v38 = v62[3];
        v39 = [v34 name];
        *buf = 134218754;
        v85 = v38;
        v86 = 1024;
        v87 = v23;
        v88 = 2114;
        v89 = v47;
        v90 = 2114;
        v91 = v39;
        _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "=scanning= Found a total of %llu/%u items under %{public}@ (%{public}@), second pass", buf, 0x26u);

        v22 = v33;
      }

      v40 = v62[3];
      v43 = [v34 name];
      _MBLog();
    }
  }

  v32 = v75[5];

  _Block_object_dispose(&v61, 8);
LABEL_18:

  _Block_object_dispose(&v74, 8);
  _Block_object_dispose(&v80, 8);

  return v32;
}

- (id)_foundFile:(id)a3 snapshotPath:(id)a4 stats:(_MBFileScannerDomainStats *)a5
{
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [(MBFileScanner *)self _updateStats:a5 file:v8];
  if (!v9)
  {
    v11 = [v8 domain];
    v12 = [v8 relativePath];
    -[MBFileScanner _detectModifiedDomain:relativePath:lastModified:](self, "_detectModifiedDomain:relativePath:lastModified:", v11, v12, [v8 lastModified]);
  }

  if (![v8 isRegularFile])
  {
    v21 = 0;
    goto LABEL_70;
  }

  v113 = 0u;
  v114 = 0u;
  v111 = 0u;
  v112 = 0u;
  v13 = MBSQLiteJournalSuffixes();
  v14 = [v13 countByEnumeratingWithState:&v111 objects:v123 count:16];
  if (!v14)
  {
    v21 = 0;
    goto LABEL_60;
  }

  v15 = v14;
  v103 = WeakRetained;
  v16 = *v112;
  while (2)
  {
    for (i = 0; i != v15; i = i + 1)
    {
      if (*v112 != v16)
      {
        objc_enumerationMutation(v13);
      }

      v18 = *(*(&v111 + 1) + 8 * i);
      v19 = [v8 relativePath];
      v20 = [v19 hasSuffix:v18];

      if (v20)
      {
        v22 = [v8 relativePath];
        v23 = [v8 relativePath];
        v24 = [v22 substringToIndex:{objc_msgSend(v23, "length") - objc_msgSend(v18, "length")}];

        v25 = [v8 domain];
        v26 = [v25 rootPath];
        v27 = [v26 stringByAppendingPathComponent:v24];

        v28 = [v8 domain];
        v29 = [v28 volumeMountPoint];
        v101 = v27;
        v30 = sub_100077FF4(v27, v9, v29);

        v31 = [v8 domain];
        v32 = [MBFileID fileIDWithDomain:v31 relativePath:v24];

        if ([v18 hasSuffix:@"-wal"])
        {
          [(NSMutableDictionary *)self->_lastModifiedDateBySQLiteFileID removeObjectForKey:v32];
        }

        v102 = v32;
        v110 = 0;
        v33 = [MBProtectionClassUtils getWithPath:v30 error:&v110];
        v34 = v110;
        if (v33 == 255)
        {
          if (![MBError isError:v34 withCode:4])
          {
            v21 = v34;

            v44 = v21;
LABEL_46:
            WeakRetained = v103;
            goto LABEL_77;
          }

          v45 = MBGetDefaultLog();
          v46 = v101;
          if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            *&buf[4] = v30;
            _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_INFO, "=scanning= Potential SQLite database not found: %@", buf, 0xCu);
            v88 = v30;
            _MBLog();
          }

          v47 = v34;
          v34 = 0;
        }

        else
        {
          if ((self->_policy & 8) == 0 || [MBProtectionClassUtils canOpenWhenLocked:v33])
          {
            v100 = v24;
            v109 = 0;
            v108 = v34;
            v35 = [MBSQLiteFileHandle isSQLiteFileAtPath:v30 result:&v109 error:&v108];
            v36 = v108;

            if (v35)
            {
              if (v109)
              {
                if ((self->_policy & 0x40) == 0)
                {
LABEL_22:
                  v37 = MBGetDefaultLog();
                  if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
                  {
                    v38 = [v8 absolutePath];
                    *buf = 138412290;
                    *&buf[4] = v38;
                    _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_INFO, "=scanning= Not backing up SQLite file: %@", buf, 0xCu);

                    v89 = [v8 absolutePath];
                    _MBLog();
                  }

                  if ([v18 hasSuffix:@"-wal"])
                  {
                    v39 = [v8 lastModifiedDate];
                    [v39 timeIntervalSince1970];
                    v41 = v40;

                    v42 = MBGetDefaultLog();
                    if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
                    {
                      *buf = 134218498;
                      *&buf[4] = v41;
                      *&buf[12] = 2112;
                      *&buf[14] = v30;
                      *&buf[22] = 2112;
                      *&buf[24] = v102;
                      _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_INFO, "=scanning= Saving last modified date of SQLite file's WAL (%lu): %@ (%@)", buf, 0x20u);
                      _MBLog();
                    }

                    v43 = [v8 lastModifiedDate];
                    [(NSMutableDictionary *)self->_lastModifiedDateBySQLiteFileID setObject:v43 forKeyedSubscript:v102];
                  }

                  v44 = 0;
                  goto LABEL_45;
                }

                v51 = [v8 domain];
                v52 = [MBFile fileWithDomain:v51 snapshotPath:v9 relativePath:v100];

                v122 = 0;
                v120 = 0u;
                v121 = 0u;
                memset(buf, 0, sizeof(buf));
                v107 = v36;
                v53 = sub_10008E314(v30, buf, &v107);
                v21 = v107;

                v99 = v52;
                if (v53)
                {
                  [v52 setNode:buf];
                  if ([v52 isRegularFile])
                  {
                    v105 = v21;
                    v106 = 0;
                    v54 = [MBSQLiteFileHandle lastModifiedForSQLiteFileAtPath:v30 time:&v106 error:&v105];
                    v36 = v105;

                    if (v54)
                    {
                      [v52 setLastModified:v106];
                      if (![v103 fileScanner:self isFileAddedOrModified:v52])
                      {

                        goto LABEL_22;
                      }

                      v55 = MBGetDefaultLog();
                      if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
                      {
                        v56 = [v8 absolutePath];
                        *v115 = 138412290;
                        *v116 = v56;
                        _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_INFO, "=scanning= Backing up SQLite file: %@", v115, 0xCu);

                        v88 = [v8 absolutePath];
                        _MBLog();
                      }

                      v57 = 2;
                      v21 = v36;
                      WeakRetained = v103;
                    }

                    else
                    {
                      if ([MBError isError:v36 withCode:4])
                      {
                        v86 = MBGetDefaultLog();
                        if (os_log_type_enabled(v86, OS_LOG_TYPE_INFO))
                        {
                          *v115 = 138412290;
                          *v116 = v30;
                          _os_log_impl(&_mh_execute_header, v86, OS_LOG_TYPE_INFO, "=scanning= Potential SQLite database not found: %@", v115, 0xCu);
                          v88 = v30;
                          _MBLog();
                        }

                        v57 = 2;
                      }

                      else
                      {
                        v87 = v36;
                        v57 = 1;
                      }

                      v21 = v36;
                      WeakRetained = v103;
                    }

LABEL_98:

                    v44 = v21;
                    if (v57 == 2)
                    {
                      goto LABEL_61;
                    }

                    goto LABEL_77;
                  }

                  v78 = MBGetDefaultLog();
                  if (os_log_type_enabled(v78, OS_LOG_TYPE_INFO))
                  {
                    v80 = [v8 mode];
                    *v115 = 67109378;
                    *v116 = v80;
                    *&v116[4] = 2112;
                    *&v116[6] = v30;
                    _os_log_impl(&_mh_execute_header, v78, OS_LOG_TYPE_INFO, "=scanning= Potential SQLite database is not a regular file (0%o): %@", v115, 0x12u);
                    v88 = [v8 mode];
                    v92 = v30;
                    _MBLog();
                  }

                  v57 = 2;
                  WeakRetained = v103;
LABEL_97:

                  goto LABEL_98;
                }

                v77 = [MBError errnoForError:v21];
                v78 = [(MBFileScanner *)self delegate];
                if (v77 == 2)
                {
                  v79 = MBGetDefaultLog();
                  if (os_log_type_enabled(v79, OS_LOG_TYPE_INFO))
                  {
                    *v115 = 138412290;
                    *v116 = v30;
                    _os_log_impl(&_mh_execute_header, v79, OS_LOG_TYPE_INFO, "=scanning= Potential SQLite database not found: %@", v115, 0xCu);
                    v88 = v30;
                    _MBLog();
                  }
                }

                else
                {
                  if ((objc_opt_respondsToSelector() & 1) == 0 || ![v78 fileScanner:self failedToStatFile:v52 withErrno:v77])
                  {
                    v84 = MBGetDefaultLog();
                    if (os_log_type_enabled(v84, OS_LOG_TYPE_ERROR))
                    {
                      *v115 = 138412546;
                      *v116 = v30;
                      *&v116[8] = 2114;
                      *&v116[10] = v21;
                      _os_log_impl(&_mh_execute_header, v84, OS_LOG_TYPE_ERROR, "=scanning= MBNodeForPath() failed at %@: %{public}@", v115, 0x16u);
                      v88 = v30;
                      v92 = v21;
                      _MBLog();
                    }

                    v85 = v21;
                    v57 = 1;
                    goto LABEL_96;
                  }

                  v81 = MBGetDefaultLog();
                  if (os_log_type_enabled(v81, OS_LOG_TYPE_INFO))
                  {
                    v97 = [v99 absolutePath];
                    v82 = [v99 relativePath];
                    *v115 = 138412802;
                    *v116 = v97;
                    *&v116[8] = 2112;
                    *&v116[10] = v82;
                    v83 = v82;
                    v117 = 1024;
                    v118 = v77;
                    _os_log_impl(&_mh_execute_header, v81, OS_LOG_TYPE_INFO, "=scanning= Skipping SQLite file with lstat failure %@ (%@): %{errno}d", v115, 0x1Cu);

                    v98 = [v99 absolutePath];
                    v92 = [v99 relativePath];
                    v94 = v77;
                    v88 = v98;
                    _MBLog();
                  }
                }

                v57 = 2;
LABEL_96:
                WeakRetained = v103;
                goto LABEL_97;
              }

              v48 = MBGetDefaultLog();
              if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
              {
                *buf = 138412290;
                v49 = v30;
                *&buf[4] = v30;
                _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_INFO, "=scanning= Potential SQLite database isn't: %@", buf, 0xCu);
                v24 = v100;
                goto LABEL_43;
              }

              v24 = v100;
            }

            else
            {
              if (![MBError isError:v36 withCode:4])
              {
                v36 = v36;
                v44 = v36;
LABEL_45:

                v21 = v36;
                goto LABEL_46;
              }

              v48 = MBGetDefaultLog();
              v24 = v100;
              if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
              {
                *buf = 138412290;
                v49 = v30;
                *&buf[4] = v30;
                _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_INFO, "=scanning= Potential SQLite database not found: %@", buf, 0xCu);
LABEL_43:
                v46 = v101;
                v88 = v49;
                _MBLog();
LABEL_58:

                goto LABEL_59;
              }
            }

            v46 = v101;
            goto LABEL_58;
          }

          v47 = MBGetDefaultLog();
          if (!os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
          {
            v46 = v101;
            goto LABEL_48;
          }

          v50 = [v8 absolutePath];
          *buf = 138412290;
          *&buf[4] = v50;
          _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_INFO, "=scanning= Backing up protected SQLite journal: %@", buf, 0xCu);

          v45 = [v8 absolutePath];
          v88 = v45;
          _MBLog();
          v46 = v101;
        }

LABEL_48:
        v36 = v34;
LABEL_59:

        v21 = v36;
        WeakRetained = v103;
        goto LABEL_60;
      }
    }

    v15 = [v13 countByEnumeratingWithState:&v111 objects:v123 count:16];
    if (v15)
    {
      continue;
    }

    break;
  }

  v21 = 0;
  WeakRetained = v103;
LABEL_60:

LABEL_61:
  lastModifiedDateBySQLiteFileID = self->_lastModifiedDateBySQLiteFileID;
  v59 = [v8 fileID];
  v60 = [(NSMutableDictionary *)lastModifiedDateBySQLiteFileID objectForKeyedSubscript:v59];

  if (v60)
  {
    [v60 timeIntervalSince1970];
    v62 = v61;
    v63 = MBGetDefaultLog();
    if (os_log_type_enabled(v63, OS_LOG_TYPE_INFO))
    {
      v64 = [v8 lastModified];
      *buf = 134218498;
      *&buf[4] = v64;
      *&buf[12] = 2048;
      *&buf[14] = v62;
      *&buf[22] = 2112;
      *&buf[24] = v8;
      _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_INFO, "=scanning= Overriding last modified date of SQLite file (%lu) with WAL's (%lu): %@", buf, 0x20u);
      v93 = v62;
      v95 = v8;
      v90 = [v8 lastModified];
      _MBLog();
    }

    [v8 setLastModified:v62];
  }

  v65 = [MBFileSystemManager fileSystemCapacity:v90];
  if ([v8 size] > v65)
  {
    v66 = MBGetDefaultLog();
    if (os_log_type_enabled(v66, OS_LOG_TYPE_FAULT))
    {
      v67 = [v8 size];
      [v8 absolutePath];
      v68 = v104 = WeakRetained;
      *buf = 134218498;
      *&buf[4] = v67;
      *&buf[12] = 2048;
      *&buf[14] = v65;
      *&buf[22] = 2114;
      *&buf[24] = v68;
      _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_FAULT, "=scanning= Found a file with unexpected size (%llu/%llu) at %{public}@", buf, 0x20u);

      [v8 size];
      v96 = [v8 absolutePath];
      _MBLog();

      WeakRetained = v104;
    }

    v69 = [v8 absolutePath];
    sub_10000D2DC(v69, 28, "[MBFileScanner _foundFile:snapshotPath:stats:]");
  }

LABEL_70:
  v70 = v21;
  v71 = objc_autoreleasePoolPush();
  v21 = (self->_delegateImpOfFileScannerDidFindFile)(WeakRetained, "fileScanner:didFindFile:", self, v8);

  objc_autoreleasePoolPop(v71);
  if (v21)
  {
    if ([MBError isError:v21 withCode:4])
    {
      v72 = MBGetDefaultLog();
      if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
      {
        v73 = [v8 absolutePath];
        *buf = 138412290;
        *&buf[4] = v73;
        _os_log_impl(&_mh_execute_header, v72, OS_LOG_TYPE_DEFAULT, "=scanning= Deleted while scanning: %@", buf, 0xCu);

        v91 = [v8 absolutePath];
        _MBLog();
      }

      [(MBDebugContext *)self->_debugContext setFlag:@"FileDeletedWhileScanning"];
      modifiedDomains = self->_modifiedDomains;
      v75 = [v8 domain];
      [(NSMutableSet *)modifiedDomains addObject:v75];

      goto LABEL_75;
    }

    v21 = v21;
    v44 = v21;
  }

  else
  {
LABEL_75:
    v44 = 0;
  }

LABEL_77:

  return v44;
}

- (void)_detectModifiedDomain:(id)a3 relativePath:(id)a4 lastModified:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  if (self->_startTime <= a5 && [(MBDebugContext *)self->_debugContext time]>= a5)
  {
    v10 = [v8 relativePathsNotToCheckIfModifiedDuringBackup];
    v11 = [v10 count];

    if (v11)
    {
      v26 = v9;
      v12 = [v9 pathComponents];
      v13 = [v12 count];
      v14 = 0;
      while (1)
      {
        v15 = objc_autoreleasePoolPush();
        v16 = [v12 subarrayWithRange:{0, v14}];
        v17 = [NSString pathWithComponents:v16];

        v18 = [v8 relativePathsNotToCheckIfModifiedDuringBackup];
        v19 = [v18 containsObject:v17];

        if (v19)
        {
          break;
        }

        objc_autoreleasePoolPop(v15);
        if (++v14 > v13)
        {
          v20 = MBGetDefaultLog();
          v9 = v26;
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            startTime = self->_startTime;
            *buf = 138412802;
            v28 = v26;
            v29 = 2048;
            v30 = startTime;
            v31 = 2048;
            v32 = a5;
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "=scanning= Modified while scanning: %@ (startTime:%ld, lastModified:%ld)", buf, 0x20u);
            v24 = self->_startTime;
            _MBLog();
          }

          [(MBDebugContext *)self->_debugContext setFlag:@"FileModifiedWhileScanning"];
          [(NSMutableSet *)self->_modifiedDomains addObject:v8];
          goto LABEL_13;
        }
      }

      v22 = MBGetDefaultLog();
      v9 = v26;
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = self->_startTime;
        *buf = 138412802;
        v28 = v26;
        v29 = 2048;
        v30 = v23;
        v31 = 2048;
        v32 = a5;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "=scanning= Ignoring path modified while scanning: %@ (startTime:%ld, lastModified:%ld)", buf, 0x20u);
        v25 = self->_startTime;
        _MBLog();
      }

      objc_autoreleasePoolPop(v15);
LABEL_13:
    }
  }
}

- (MBFileScannerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end