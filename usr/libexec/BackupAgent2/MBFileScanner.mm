@interface MBFileScanner
+ (id)_stringValueForStats:(_MBFileScannerDomainStats *)stats;
+ (id)treeWithPaths:(id)paths;
- (BOOL)_shouldNotBackupFile:(id)file domain:(id)domain;
- (MBFileScanner)initWithDelegate:(id)delegate mode:(unint64_t)mode enginePolicy:(unint64_t)policy debugContext:(id)context;
- (MBFileScannerDelegate)delegate;
- (id)_foundFile:(id)file snapshotPath:(id)path stats:(_MBFileScannerDomainStats *)stats;
- (id)_performTwoPassEnumerationForDomain:(id)domain snapshotPath:(id)path relativePath:(id)relativePath buffer:(id)buffer dirFd:(int)fd direntCount:(unsigned int)count directoryPathStack:(id)stack directoryCountStack:(id)self0 stats:(_MBFileScannerDomainStats *)self1;
- (id)_scanDirectory:(id)directory domain:(id)domain fds:(id)fds domainDirFd:(int)fd snapshotPath:(id)path relativePath:(id)relativePath depth:(int)depth stats:(_MBFileScannerDomainStats *)self0;
- (id)_scanDomain:(id)domain snapshotPath:(id)path stats:(_MBFileScannerDomainStats *)stats;
- (id)_scanFilesForDomain:(id)domain fds:(id)fds snapshotPath:(id)path relativePath:(id)relativePath stats:(_MBFileScannerDomainStats *)stats;
- (id)_scanFilesUsingGetattrlistbulkForDomain:(id)domain fds:(id)fds snapshotPath:(id)path relativePath:(id)relativePath stats:(_MBFileScannerDomainStats *)stats;
- (id)_scanFilesUsingReaddirForDomain:(id)domain fds:(id)fds snapshotPath:(id)path relativePath:(id)relativePath depth:(int)depth stats:(_MBFileScannerDomainStats *)stats;
- (id)_scanTree:(id)tree forDomain:(id)domain fds:(id)fds snapshotPath:(id)path relativePath:(id)relativePath stats:(_MBFileScannerDomainStats *)stats;
- (id)loggableStats;
- (id)scanDomain:(id)domain snapshotMountPoint:(id)point;
- (void)_detectModifiedDomain:(id)domain relativePath:(id)path lastModified:(int64_t)modified;
- (void)_updateStats:(_MBFileScannerDomainStats *)stats file:(id)file;
- (void)cancel;
- (void)reset;
@end

@implementation MBFileScanner

- (MBFileScanner)initWithDelegate:(id)delegate mode:(unint64_t)mode enginePolicy:(unint64_t)policy debugContext:(id)context
{
  delegateCopy = delegate;
  contextCopy = context;
  if (!mode)
  {
    sub_1000A058C();
  }

  v12 = contextCopy;
  v21.receiver = self;
  v21.super_class = MBFileScanner;
  v13 = [(MBFileScanner *)&v21 init];
  v14 = v13;
  if (v13)
  {
    objc_storeWeak(&v13->_delegate, delegateCopy);
    v14->_mode = mode;
    v14->_policy = policy;
    objc_storeStrong(&v14->_debugContext, context);
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

- (id)scanDomain:(id)domain snapshotMountPoint:(id)point
{
  domainCopy = domain;
  pointCopy = point;
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
  name = [domainCopy name];
  rootPath = [domainCopy rootPath];
  volumeMountPoint = [domainCopy volumeMountPoint];
  if (![rootPath length])
  {
    v12 = MBGetDefaultLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      buf[0].i32[0] = 138412290;
      *(buf[0].i64 + 4) = rootPath;
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
    v26 = name;
    v27 = 2112;
    v28 = rootPath;
    v29 = 2112;
    v30 = volumeMountPoint;
    v31 = 2112;
    v32 = pointCopy;
    v33 = 2048;
    v34 = mode;
    v35 = 2048;
    v36 = policy;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "=scanning= Scanning domain %{public}@ at %@ with mtpt %@ from snapshot %@ mode:0x%lx policy:0x%lx", v25, 0x3Eu);
    v23 = self->_mode;
    v24 = self->_policy;
    _MBLog();
  }

  v16 = [(MBFileScanner *)self _scanDomain:domainCopy snapshotPath:pointCopy stats:buf];
  v17 = MBGetDefaultLog();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = [objc_opt_class() _stringValueForStats:buf];
    *v25 = 138543874;
    v26 = name;
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

+ (id)_stringValueForStats:(_MBFileScannerDomainStats *)stats
{
  v4 = [NSByteCountFormatter stringFromByteCount:stats->totalFileSize countStyle:0];
  minFileSize = stats->minFileSize;
  if (minFileSize == 0x7FFFFFFFFFFFFFFFLL)
  {
    minFileSize = -1;
  }

  maxFileSize = stats->maxFileSize;
  if (maxFileSize == 0x8000000000000000)
  {
    maxFileSize = -1;
  }

  v7 = *&stats->fileCount;
  v8 = [NSString stringWithFormat:@"size:%lld (%@)/%lld/%lld, files:%llu, dirs:%llu, clones:%llu/%llu, hardlinks:%llu, symlinks:%llu", stats->totalFileSize, v4, minFileSize, maxFileSize, stats->fileCount, stats->dirCount, stats->fullCloneCount, stats->rootCloneCount, stats->hardLinkCount, stats->symLinkCount];

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
      selfCopy = self;
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

- (void)_updateStats:(_MBFileScannerDomainStats *)stats file:(id)file
{
  fileCopy = file;
  type = [fileCopy type];
  switch(type)
  {
    case 0x4000u:
      v14 = stats->dirCount + 1;
      stats->dirCount = v14;
      if (__ROR8__(0xD288CE703AFB7E91 * v14, 4) <= 0x68DB8BAC710CBuLL)
      {
        v15 = MBGetDefaultLog();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          dirCount = stats->dirCount;
          domain = [fileCopy domain];
          name = [domain name];
          *buf = 134218242;
          v34 = dirCount;
          v35 = 2114;
          v36 = name;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "=scanning= Found %llu dirs (%{public}@)", buf, 0x16u);

          v19 = stats->dirCount;
          domain2 = [fileCopy domain];
          name2 = [domain2 name];
LABEL_27:
          _MBLog();
        }

LABEL_28:
      }

      break;
    case 0xA000u:
      ++stats->symLinkCount;
      break;
    case 0x8000u:
      v7 = [fileCopy size];
      v8 = v7;
      minFileSize = stats->minFileSize;
      if (minFileSize >= v7)
      {
        minFileSize = v7;
      }

      stats->totalFileSize += v7;
      stats->minFileSize = minFileSize;
      maxFileSize = stats->maxFileSize;
      v11 = stats->fileCount + 1;
      if (maxFileSize <= v7)
      {
        maxFileSize = v7;
      }

      stats->maxFileSize = maxFileSize;
      stats->fileCount = v11;
      if ([fileCopy isHardLink])
      {
        ++stats->hardLinkCount;
      }

      if ([fileCopy isFullClone])
      {
        inodeNumber = [fileCopy inodeNumber];
        if (inodeNumber == [fileCopy cloneID])
        {
          v13 = 48;
        }

        else
        {
          if (![fileCopy isFullClone])
          {
            goto LABEL_20;
          }

          v13 = 40;
        }

        ++*(&stats->totalFileSize + v13);
      }

LABEL_20:
      if (v8 >= 0x6FC23AC00)
      {
        v22 = MBGetDefaultLog();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          absolutePath = [fileCopy absolutePath];
          domain3 = [fileCopy domain];
          name3 = [domain3 name];
          *buf = 134218498;
          v34 = v8;
          v35 = 2114;
          v36 = absolutePath;
          v37 = 2114;
          v38 = name3;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "=scanning= Found large file (%lld) at %{public}@ (%{public}@)", buf, 0x20u);

          absolutePath2 = [fileCopy absolutePath];
          domain4 = [fileCopy domain];
          name4 = [domain4 name];
          _MBLog();
        }
      }

      if (__ROR8__(0xD288CE703AFB7E91 * stats->fileCount, 4) <= 0x68DB8BAC710CBuLL)
      {
        v15 = MBGetDefaultLog();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          fileCount = stats->fileCount;
          domain5 = [fileCopy domain];
          name5 = [domain5 name];
          *buf = 134218242;
          v34 = fileCount;
          v35 = 2114;
          v36 = name5;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "=scanning= Found %llu files (%{public}@)", buf, 0x16u);

          v31 = stats->fileCount;
          domain2 = [fileCopy domain];
          name2 = [domain2 name];
          goto LABEL_27;
        }

        goto LABEL_28;
      }

      break;
  }
}

- (id)_scanDomain:(id)domain snapshotPath:(id)path stats:(_MBFileScannerDomainStats *)stats
{
  domainCopy = domain;
  pathCopy = path;
  name = [domainCopy name];
  if ([domainCopy isUninstalledAppDomain])
  {
    v11 = MBGetDefaultLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v32 = name;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "=scanning= Not scanning uninstalled app domain %{public}@", buf, 0xCu);
      _MBLog();
    }

    v12 = 0;
  }

  else
  {
    [(MBDebugContext *)self->_debugContext setValue:name forName:@"DomainName"];
    v11 = objc_opt_new();
    relativePathsToBackup = [domainCopy relativePathsToBackup];
    v14 = [relativePathsToBackup containsObject:&stru_1000FF270];

    if (v14)
    {
      v12 = [(MBFileScanner *)self _scanFilesForDomain:domainCopy fds:v11 snapshotPath:pathCopy relativePath:&stru_1000FF270 stats:stats];
    }

    else
    {
      relativePathsToBackup2 = [domainCopy relativePathsToBackup];
      v16 = [MBFileScanner treeWithPaths:relativePathsToBackup2];

      v17 = [(MBFileScanner *)self _scanTree:v16 forDomain:domainCopy fds:v11 snapshotPath:pathCopy relativePath:&stru_1000FF270 stats:stats];
      if (v17)
      {
        v12 = v17;
      }

      else
      {
        [domainCopy relativePathsToBackupLive];
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

              v23 = [(MBFileScanner *)self _scanFilesForDomain:domainCopy fds:v11 snapshotPath:0 relativePath:*(*(&v26 + 1) + 8 * i) stats:stats];
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

+ (id)treeWithPaths:(id)paths
{
  pathsCopy = paths;
  v26 = objc_opt_new();
  v22 = objc_autoreleasePoolPush();
  v21 = [[NSSortDescriptor alloc] initWithKey:0 ascending:1];
  v41 = v21;
  v4 = [NSArray arrayWithObjects:&v41 count:1];
  v23 = pathsCopy;
  v5 = [pathsCopy sortedArrayUsingDescriptors:v4];

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
        pathComponents = [v7 pathComponents];
        v10 = [pathComponents countByEnumeratingWithState:&v29 objects:v39 count:16];
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
                objc_enumerationMutation(pathComponents);
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
            v11 = [pathComponents countByEnumeratingWithState:&v29 objects:v39 count:16];
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

- (BOOL)_shouldNotBackupFile:(id)file domain:(id)domain
{
  fileCopy = file;
  domainCopy = domain;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v8 = WeakRetained;
  if (!self->_delegateRespondsToFileScannerShouldExcludeFile || ([WeakRetained fileScanner:self shouldExcludeFile:fileCopy] & 1) == 0)
  {
    policy = self->_policy;
    if ((policy & 0x21) == 0x20)
    {
      sub_1000A05B8();
    }

    context = (policy & 0x22);
    domain2 = context != 0;
    v11 = (policy & 0x2A);
    relativePath = [fileCopy relativePath];
    v13 = _os_feature_enabled_impl();
    if (v11 == 8 && (v13 & 1) == 0 && [fileCopy isDataless])
    {
      domain2 = MBGetDefaultLog();
      if (os_log_type_enabled(domain2, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *v120 = fileCopy;
        _os_log_impl(&_mh_execute_header, domain2, OS_LOG_TYPE_DEFAULT, "=scanning= Not backed up (SF_DATALESS): %@", buf, 0xCu);
LABEL_57:
        _MBLog();
        goto LABEL_58;
      }

      goto LABEL_58;
    }

    v102 = (policy & 0x22) != 0;
    if ([fileCopy isCompressed])
    {
      if ([fileCopy isRegularFile])
      {
        [fileCopy absolutePath];
        policy = v14 = policy;
        domain2 = open([policy fileSystemRepresentation], 256);

        LOBYTE(policy) = v14;
        if ((domain2 & 0x80000000) == 0)
        {
          v15 = pread(domain2, &__buf, 1uLL, 0);
          v16 = *__error();
          close(domain2);
          if (v15 < 0)
          {
            v17 = MBGetDefaultLog();
            domain2 = v17;
            if ((v16 & 0xFFFFFFFD) == 9)
            {
              if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412546;
                *v120 = fileCopy;
                *&v120[8] = 1024;
                *&v120[10] = v16;
                _os_log_impl(&_mh_execute_header, domain2, OS_LOG_TYPE_DEFAULT, "=scanning= Not backed up (UF_COMPRESSED): %@ (%{errno}d)", buf, 0x12u);
                goto LABEL_57;
              }

LABEL_58:

              LOBYTE(domain2) = 1;
LABEL_59:

              goto LABEL_60;
            }

            if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
            {
              v18 = domain2;
              if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412546;
                *v120 = relativePath;
                *&v120[8] = 1024;
                *&v120[10] = v16;
                _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "=scanning= pread failed for %@: %{errno}d", buf, 0x12u);
              }

              v84 = relativePath;
              v86 = v16;
              _MBLog();
            }
          }

          LOBYTE(policy) = v14;
        }
      }
    }

    domain = [fileCopy domain];
    relativePathsNotToBackup = [domain relativePathsNotToBackup];
    if ([relativePathsNotToBackup containsObject:relativePath])
    {
      goto LABEL_27;
    }

    if (context)
    {
      domain3 = v11;
      domain2 = [fileCopy domain];
      relativePathsNotToBackupToDrive = [domain2 relativePathsNotToBackupToDrive];
      if ([relativePathsNotToBackupToDrive containsObject:relativePath])
      {

LABEL_27:
        goto LABEL_55;
      }

      v97 = relativePathsNotToBackupToDrive;
    }

    v99 = domain2;
    v101 = v8;
    v107 = relativePath;
    if (v11 == 8)
    {
      domain3 = [fileCopy domain];
      relativePathsNotToBackupToService = [domain3 relativePathsNotToBackupToService];
      if ([relativePathsNotToBackupToService containsObject:relativePath])
      {
        v22 = 1;
        goto LABEL_52;
      }
    }

    v23 = policy & 6;
    if (v23 == 2)
    {
      domain4 = [fileCopy domain];
      relativePathsNotToBackupToLocal = [domain4 relativePathsNotToBackupToLocal];
      if ([relativePathsNotToBackupToLocal containsObject:v107])
      {
        v22 = 1;
LABEL_48:

LABEL_49:
        v8 = v101;
        relativePath = v107;
        if (v11 != 8)
        {
          v29 = v97;
          if (!v102)
          {
LABEL_54:

            if (v22)
            {
LABEL_55:
              domain2 = MBGetDefaultLog();
              if (os_log_type_enabled(domain2, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                *v120 = fileCopy;
                _os_log_impl(&_mh_execute_header, domain2, OS_LOG_TYPE_DEFAULT, "=scanning= Not backed up (explicit): %@", buf, 0xCu);
                goto LABEL_57;
              }

              goto LABEL_58;
            }

            selfCopy = self;
            absolutePath = [fileCopy absolutePath];
            if (strlen([absolutePath fileSystemRepresentation]) >= 0x3E6)
            {
              v32 = MBGetDefaultLog();
              if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                *v120 = absolutePath;
                _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "=scanning= WARNING: File name too long - excluding file and continuing with backup. Please contact the developer and include this log message. Path: %@", buf, 0xCu);
LABEL_64:
                _MBLog();
              }

LABEL_65:

              LOBYTE(domain2) = 1;
LABEL_66:

              goto LABEL_59;
            }

            hasXattrs = [fileCopy hasXattrs];
            v91 = policy;
            if (context)
            {
              v98 = hasXattrs;
              v100 = absolutePath;
              relativePathsToIgnoreExclusionsForDrive = [domainCopy relativePathsToIgnoreExclusionsForDrive];
              v115 = 0u;
              v116 = 0u;
              v117 = 0u;
              v118 = 0u;
              v35 = relativePathsToIgnoreExclusionsForDrive;
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
                    if ([(__CFError *)v40 hasSuffix:@"/", name2, v87])
                    {
                      v41 = MBGetDefaultLog();
                      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
                      {
                        v42 = v41;
                        if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
                        {
                          name = [domainCopy name];
                          *buf = 138412546;
                          *v120 = name;
                          *&v120[8] = 2112;
                          *&v120[10] = v40;
                          _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_ERROR, "=scanning= Found an invalid path in relativePathsToIgnoreExclusionsForDrive for %@: %@", buf, 0x16u);
                        }

                        name2 = [domainCopy name];
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
                absolutePath = v100;
                LOBYTE(policy) = v91;
                if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138412290;
                  *v120 = fileCopy;
                  _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEBUG, "=scanning= Skipping exclusion check for %@", buf, 0xCu);
                  name2 = fileCopy;
                  _MBLog();
                }

                goto LABEL_134;
              }

              absolutePath = v100;
            }

            else if (!hasXattrs)
            {
              if (![fileCopy isRegularFile])
              {
                goto LABEL_166;
              }

LABEL_135:
              if ((policy & 8) != 0)
              {
                protectionClass = [fileCopy protectionClass];
                if (protectionClass)
                {
                  v68 = protectionClass;
                  v32 = 0;
                }

                else
                {
                  v109 = 0;
                  v68 = [MBProtectionClassUtils getWithPath:absolutePath error:&v109];
                  v32 = v109;
                }

                if ((v68 - 1 < 2 || v68 == 255 && +[MBError isError:withCode:](MBError, "isError:withCode:", v32, 24)) && [fileCopy isCompressed])
                {
                  v69 = MBGetDefaultLog();
                  if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 67109378;
                    *v120 = v68;
                    *&v120[4] = 2112;
                    *&v120[6] = fileCopy;
                    _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_DEFAULT, "=scanning= Not backed up (compressed, pc:%d): %@", buf, 0x12u);
                    _MBLog();
                  }

                  goto LABEL_65;
                }
              }

              v70 = [absolutePath length];
              if (v70 - [@".plist.1234567" length] >= 1)
              {
                v71 = [absolutePath substringFromIndex:?];
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
                    *v120 = absolutePath;
                    _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_INFO, "=scanning= Not backing up failed plist safe save: %@", buf, 0xCu);
                  }

                  goto LABEL_171;
                }
              }

              pathExtension = [absolutePath pathExtension];
              if ([pathExtension isEqualToString:@"dat"])
              {
                v74 = [absolutePath containsString:@"binarycookies_tmp"];

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
                    *v120 = absolutePath;
                    _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_INFO, "=scanning= Not backing up temporary cookie: %@", buf, 0xCu);
                  }

                  goto LABEL_171;
                }
              }

              else
              {
              }

              lastPathComponent = [absolutePath lastPathComponent];
              v76 = [lastPathComponent hasPrefix:@".dat.nosync"];

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
                  *v120 = absolutePath;
                  _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEBUG, "=scanning= Not backing up .dat.nosync file: %@", buf, 0xCu);
                }
              }

              else
              {
LABEL_166:
                domain2 = [fileCopy snapshotPath];
                if (!domain2)
                {
                  goto LABEL_66;
                }

                relativePath2 = [fileCopy relativePath];
                v78 = [domainCopy shouldBackupRelativePathFromLiveFileSystem:relativePath2];

                if (!v78)
                {
                  LOBYTE(domain2) = 0;
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
                  *v120 = fileCopy;
                  _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_INFO, "=scanning= Not backing up %@ from the APFS snapshot because it needs to be backed up from the live filesystem", buf, 0xCu);
                }
              }

LABEL_171:

              goto LABEL_64;
            }

            isDirectory = [fileCopy isDirectory];
            v47 = [NSURL fileURLWithPath:absolutePath isDirectory:isDirectory];
            v114 = 0;
            v113 = 0;
            v48 = [v47 getResourceValue:&v114 forKey:NSURLIsExcludedFromBackupKey error:&v113];
            v49 = v114;
            v50 = v113;
            if (v48)
            {
              if ([v49 BOOLValue])
              {
                if (isDirectory && [absolutePath hasSuffix:@"/Preferences"])
                {
                  v51 = objc_autoreleasePoolPush();
                  livePath = [fileCopy livePath];
                  if (([(__CFError *)livePath isEqualToString:@"/var/mobile/Library/Preferences"]& 1) != 0)
                  {
                    contextb = v51;
                    v53 = v47;
                    v54 = absolutePath;
                    v55 = [NSURL fileURLWithPath:livePath];

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
                          *&v120[10] = livePath;
                          _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEFAULT, "=scanning= Removed %@ at %@", buf, 0x16u);
                        }

                        name2 = NSURLIsExcludedFromBackupKey;
                        v87 = livePath;
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
                        *&v120[10] = livePath;
                        v121 = 2112;
                        v122 = v56;
                        _os_log_impl(&_mh_execute_header, v80, OS_LOG_TYPE_ERROR, "=scanning= Failed to remove %@ at %@: %@", buf, 0x20u);
                      }

                      v87 = livePath;
                      v88 = v56;
                      name2 = NSURLIsExcludedFromBackupKey;
                      goto LABEL_182;
                    }

                    v81 = livePath;

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

                      name2 = NSURLIsExcludedFromBackupKey;
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
                              *v120 = fileCopy;
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
                      if ((v91 & 0x20) != 0 || (selfCopy->_policy & 1) == 0)
                      {
LABEL_133:

                        absolutePath = v54;
                        v35 = v32;
LABEL_134:

                        v8 = v101;
                        relativePath = v107;
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
                              *v120 = fileCopy;
                              _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_DEFAULT, "=scanning= Not backed up to iCloud (attribute): %@", buf, 0xCu);
                              goto LABEL_122;
                            }

LABEL_123:

                            v50 = v56;
                            absolutePath = v54;
LABEL_177:

                            v8 = v101;
                            relativePath = v107;
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

                        name2 = v62;
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
                  *v120 = fileCopy;
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
                  *v120 = fileCopy;
                  *&v120[8] = 2112;
                  *&v120[10] = v50;
                  _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEFAULT, "=scanning= Error getting NSURLIsExcludedFromBackupKey resource: %@: %@", buf, 0x16u);
                }

                name2 = fileCopy;
                v87 = v50;
                _MBLog();
              }

              v32 = v47;
              v54 = absolutePath;

              goto LABEL_108;
            }

            v32 = v47;
            v54 = absolutePath;
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
      domain5 = [fileCopy domain];
      relativePathsNotToBackupInMegaBackup = [domain5 relativePathsNotToBackupInMegaBackup];
      if ([relativePathsNotToBackupInMegaBackup containsObject:v107])
      {

        v22 = 1;
        v102 = 1;
        goto LABEL_47;
      }

      v89 = relativePathsNotToBackupInMegaBackup;
      v90 = domain5;
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

    selfCopy2 = self;
    domain6 = [fileCopy domain];
    [domain6 relativePathsNotToTransferDeviceToDevice];
    policy = v28 = policy;
    v22 = [policy containsObject:v107];

    LOBYTE(policy) = v28;
    if ((v28 & 0x20) == 0)
    {
      self = selfCopy2;
LABEL_47:
      if (v23 != 2)
      {
        goto LABEL_49;
      }

      goto LABEL_48;
    }

    v102 = 1;
    self = selfCopy2;
LABEL_45:

    goto LABEL_47;
  }

  LOBYTE(domain2) = 1;
LABEL_60:

  return domain2;
}

- (id)_scanTree:(id)tree forDomain:(id)domain fds:(id)fds snapshotPath:(id)path relativePath:(id)relativePath stats:(_MBFileScannerDomainStats *)stats
{
  treeCopy = tree;
  domainCopy = domain;
  fdsCopy = fds;
  pathCopy = path;
  relativePathCopy = relativePath;
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
  statsCopy = stats;
  v24 = [(MBDebugContext *)self->_debugContext performSelectorForName:@"Scanning" withObject:self->_debugContext];
  [(MBDebugContext *)self->_debugContext setValue:relativePathCopy forName:@"RelativePath"];
  v25 = [MBFile fileWithDomain:domainCopy snapshotPath:pathCopy relativePath:relativePathCopy];
  v63 = 0;
  memset(v62, 0, sizeof(v62));
  absolutePath = [v25 absolutePath];
  v61 = 0;
  v27 = sub_10008E314(absolutePath, v62, &v61);
  v28 = v61;

  if ((v27 & 1) == 0)
  {
    if ([MBError isError:v28 withCode:4])
    {
      v30 = MBGetDefaultLog();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
      {
        absolutePath2 = [v25 absolutePath];
        *buf = 138412290;
        v66 = absolutePath2;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEBUG, "=scanning= Doesn't exist: %@", buf, 0xCu);

        absolutePath3 = [v25 absolutePath];
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

        absolutePath4 = [v25 absolutePath];
        *buf = 138412546;
        v66 = absolutePath4;
        v67 = 2112;
        v68 = v28;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "=scanning= Skipping due to unsupported mbNode type: %@ %@", buf, 0x16u);

        absolutePath3 = [v25 absolutePath];
        goto LABEL_18;
      }

      v30 = MBGetDefaultLog();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        absolutePath5 = [v25 absolutePath];
        *buf = 138412546;
        v66 = absolutePath5;
        v67 = 2112;
        v68 = v28;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "=scanning= Skipping due to unsupported protection class: %@ %@", buf, 0x16u);

        absolutePath3 = [v25 absolutePath];
        goto LABEL_18;
      }
    }

LABEL_19:
    v29 = v25;

    v23 = 0;
    goto LABEL_20;
  }

  [v25 setNode:v62];
  if ([(MBFileScanner *)self _shouldNotBackupFile:v25 domain:domainCopy])
  {
    v29 = v25;
    v23 = 0;
  }

  else
  {
    v33 = [(MBFileScanner *)self _foundFile:v25 snapshotPath:pathCopy stats:statsCopy];

    if (!v33)
    {
      v48 = v25;
      if ([v25 isDirectory])
      {
        v59 = 0u;
        v60 = 0u;
        v57 = 0u;
        v58 = 0u;
        allKeys = [treeCopy allKeys];
        v38 = [allKeys sortedArrayUsingComparator:&stru_1000FE690];

        obj = v38;
        v51 = [v38 countByEnumeratingWithState:&v57 objects:v64 count:16];
        if (v51)
        {
          v52 = pathCopy;
          v53 = fdsCopy;
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
              v42 = treeCopy;
              v43 = [treeCopy objectForKeyedSubscript:v40];
              v44 = [relativePathCopy stringByAppendingPathComponent:v40];
              relativePathsNotToBackup = [domainCopy relativePathsNotToBackup];
              v46 = [relativePathsNotToBackup containsObject:v44];

              if (v46)
              {
                sub_1000A05E4(v54, self, domainCopy, v44);
              }

              if ([v43 count])
              {
                [(MBFileScanner *)self _scanTree:v43 forDomain:domainCopy fds:v53 snapshotPath:v52 relativePath:v44 stats:statsCopy];
              }

              else
              {
                [(MBFileScanner *)self _scanFilesForDomain:domainCopy fds:v53 snapshotPath:v52 relativePath:v44 stats:statsCopy];
              }
              v47 = ;
              treeCopy = v42;
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
          pathCopy = v52;
          fdsCopy = v53;
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

- (id)_scanFilesForDomain:(id)domain fds:(id)fds snapshotPath:(id)path relativePath:(id)relativePath stats:(_MBFileScannerDomainStats *)stats
{
  domainCopy = domain;
  fdsCopy = fds;
  pathCopy = path;
  relativePathCopy = relativePath;
  mode = self->_mode;
  if (mode)
  {
    v17 = [(MBFileScanner *)self _scanFilesUsingReaddirForDomain:domainCopy fds:fdsCopy snapshotPath:pathCopy relativePath:relativePathCopy depth:0 stats:stats];
    if (v17)
    {
      goto LABEL_7;
    }

    mode = self->_mode;
  }

  if ((mode & 2) != 0)
  {
    v17 = [(MBFileScanner *)self _scanFilesUsingGetattrlistbulkForDomain:domainCopy fds:fdsCopy snapshotPath:pathCopy relativePath:relativePathCopy stats:stats];
  }

  else
  {
    v17 = 0;
  }

LABEL_7:

  return v17;
}

- (id)_scanFilesUsingReaddirForDomain:(id)domain fds:(id)fds snapshotPath:(id)path relativePath:(id)relativePath depth:(int)depth stats:(_MBFileScannerDomainStats *)stats
{
  domainCopy = domain;
  fdsCopy = fds;
  pathCopy = path;
  relativePathCopy = relativePath;
  v18 = atomic_load(&self->_canceled);
  if (v18)
  {
    v19 = [MBError errorWithCode:202 format:@"File scan cancelled"];
    goto LABEL_64;
  }

  v20 = objc_autoreleasePoolPush();
  v21 = v20;
  if (depth >= 239)
  {
    v22 = MBGetDefaultLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
    {
      *buf = 67109378;
      *&buf[4] = depth;
      *&buf[8] = 2114;
      *&buf[10] = relativePathCopy;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_FAULT, "=scanning= Reached max directory depth (%d) under %{public}@", buf, 0x12u);
      _MBLog();
    }

    v19 = 0;
    goto LABEL_63;
  }

  v73 = v20;
  v75 = 0;
  v23 = [fdsCopy cachedFDForDomain:domainCopy withSnapshotPath:pathCopy error:&v75];
  v22 = v75;
  if (v23 == -1)
  {
    v28 = MBGetDefaultLog();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      rootPath = [domainCopy rootPath];
      *buf = 138412802;
      *&buf[4] = domainCopy;
      *&buf[12] = 2112;
      *&buf[14] = rootPath;
      *&buf[22] = 2112;
      *&buf[24] = v22;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "=scanning= Unable to open domain directory at %@:%@: %@", buf, 0x20u);

      rootPath2 = [domainCopy rootPath];
      _MBLog();
    }

    v19 = 0;
    v21 = v73;
    goto LABEL_62;
  }

  v24 = [(MBDebugContext *)self->_debugContext performSelectorForName:@"Scanning" withObject:self->_debugContext];
  [(MBDebugContext *)self->_debugContext setValue:relativePathCopy forName:@"RelativePath"];
  v72 = [MBFile fileWithDomain:domainCopy snapshotPath:pathCopy relativePath:relativePathCopy];
  if (!pathCopy)
  {
    goto LABEL_38;
  }

  name = [domainCopy name];
  if (![name isEqualToString:@"HomeDomain"])
  {
LABEL_37:

    goto LABEL_38;
  }

  v26 = name;
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

  if (([relativePathCopy isEqualToString:@"Library/Application Support/CloudDocs/backup"]& 1) == 0 && ([relativePathCopy hasPrefix:@"Library/Application Support/CloudDocs/backup/"]& 1) == 0 && ([relativePathCopy isEqualToString:@"Library/Application Support/FileProvider/backup"]& 1) == 0 && ([relativePathCopy hasPrefix:@"Library/Application Support/FileProvider/backup/"]& 1) == 0)
  {
    if (([relativePathCopy isEqualToString:@"Library/Application Support/CloudDocs"]& 1) != 0 || [relativePathCopy isEqualToString:@"Library/Application Support/FileProvider"])
    {
      v67 = [relativePathCopy stringByAppendingPathComponent:@"backup"];
      v65 = [MBFile fileWithDomain:domainCopy snapshotPath:0 relativePath:?];
      absolutePath = [v65 absolutePath];
      v76[0] = 0;
      v30 = +[NSFileManager defaultManager];
      v31 = [v30 fileExistsAtPath:absolutePath isDirectory:v76];
      v63 = v76[0];
      v64 = v31;

      v32 = MBGetDefaultLog();
      v33 = os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT);
      if (v64 && (v63 & 1) != 0)
      {
        if (v33)
        {
          *buf = 138412290;
          *&buf[4] = absolutePath;
          _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "=scanning= Scanning the live path at %@", buf, 0xCu);
          v60 = absolutePath;
          _MBLog();
        }

        v34 = [(MBFileScanner *)self _scanFilesUsingReaddirForDomain:domainCopy fds:fdsCopy snapshotPath:0 relativePath:v67 depth:(depth + 1) stats:stats];
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
          *&buf[4] = absolutePath;
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
          *&buf[4] = absolutePath;
          _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "=scanning= No directory found at live path %@", buf, 0xCu);
LABEL_34:
          name = v67;
          v60 = absolutePath;
          _MBLog();
LABEL_36:

          goto LABEL_37;
        }
      }

      name = v67;
      goto LABEL_36;
    }

LABEL_38:
    v36 = v23;
    statsCopy = stats;
    v85 = 0;
    v83 = 0u;
    v84 = 0u;
    memset(buf, 0, sizeof(buf));
    v74 = v22;
    v70 = v36;
    v38 = sub_10008E430(v36, relativePathCopy, buf, &v74);
    v39 = v74;

    if (v38)
    {
      [v72 setNode:buf];
      if ([(MBFileScanner *)self _shouldNotBackupFile:v72 domain:domainCopy])
      {
        v19 = 0;
      }

      else
      {
        v44 = [(MBFileScanner *)self _foundFile:v72 snapshotPath:pathCopy stats:statsCopy];

        if (!v44)
        {
          if ([v72 isDirectory])
          {
            v50 = objc_autoreleasePoolPush();
            LODWORD(v60) = depth;
            v51 = [(MBFileScanner *)self _scanDirectory:v72 domain:domainCopy fds:fdsCopy domainDirFd:v70 snapshotPath:pathCopy relativePath:relativePathCopy depth:v60 stats:statsCopy];
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
    delegate = [(MBFileScanner *)self delegate];
    if (v40 == 2)
    {
      v41 = MBGetDefaultLog();
      v42 = v41;
      v21 = v73;
      if (depth)
      {
        v28 = v72;
        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
        {
          absolutePath2 = [v72 absolutePath];
          *v76 = 138412290;
          v77 = absolutePath2;
          _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "=scanning= Deleted while scanning: %@", v76, 0xCu);

          absolutePath3 = [v72 absolutePath];
          _MBLog();

          v21 = v73;
        }

        [(MBDebugContext *)self->_debugContext setFlag:@"FileDeletedWhileScanning"];
        [(NSMutableSet *)self->_modifiedDomains addObject:domainCopy];
        goto LABEL_59;
      }

      v28 = v72;
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
      {
        absolutePath4 = [v72 absolutePath];
        *v76 = 138412290;
        v77 = absolutePath4;
        _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEBUG, "=scanning= Doesn't exist: %@", v76, 0xCu);

        absolutePath5 = [v72 absolutePath];
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
          if ((objc_opt_respondsToSelector() & 1) != 0 && [delegate fileScanner:self failedToStatFile:v72 withErrno:v40])
          {
            absolutePath6 = [v72 absolutePath];
            domain = [v72 domain];
            volumeMountPoint = [domain volumeMountPoint];

            v55 = MBGetDefaultLog();
            if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
            {
              *v76 = 138412802;
              v77 = absolutePath6;
              v78 = 2112;
              v79 = relativePathCopy;
              v80 = 1024;
              v81 = v40;
              _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_INFO, "=scanning= Skipping file with MBNodeForRelativePathAt() failure %@ (%@): %{errno}d", v76, 0x1Cu);
              _MBLog();
            }

            sub_100010364(absolutePath6, pathCopy, volumeMountPoint, v40, "MBNodeForRelativePathAt");
            v19 = 0;
            v21 = v73;
          }

          else
          {
            absolutePath7 = [v72 absolutePath];
            domain2 = [v72 domain];
            volumeMountPoint2 = [domain2 volumeMountPoint];

            v59 = MBGetDefaultLog();
            if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
            {
              *v76 = 138412802;
              v77 = absolutePath7;
              v78 = 2112;
              v79 = relativePathCopy;
              v80 = 1024;
              v81 = v40;
              _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_ERROR, "=scanning= MBNodeForRelativePathAt() failed at %@ (%@): %{errno}d", v76, 0x1Cu);
              _MBLog();
            }

            sub_100010364(absolutePath7, pathCopy, volumeMountPoint2, v40, "MBNodeForRelativePathAt");
            v19 = [MBError errorWithErrno:v40 code:101 path:absolutePath7 format:@"MBNodeForRelativePathAt() error"];

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

        absolutePath8 = [v72 absolutePath];
        *v76 = 138412546;
        v77 = absolutePath8;
        v78 = 2112;
        v79 = v39;
        _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEBUG, "=scanning= Skipping unsupported mbNode type: %@ %@", v76, 0x16u);

        absolutePath5 = [v72 absolutePath];
        goto LABEL_57;
      }

      v42 = MBGetDefaultLog();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
      {
        absolutePath9 = [v72 absolutePath];
        *v76 = 138412546;
        v77 = absolutePath9;
        v78 = 2112;
        v79 = v39;
        _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "=scanning= Skipping due to unsupported protection class: %@ %@", v76, 0x16u);

        absolutePath5 = [v72 absolutePath];
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

- (id)_scanDirectory:(id)directory domain:(id)domain fds:(id)fds domainDirFd:(int)fd snapshotPath:(id)path relativePath:(id)relativePath depth:(int)depth stats:(_MBFileScannerDomainStats *)self0
{
  directoryCopy = directory;
  domainCopy = domain;
  fdsCopy = fds;
  pathCopy = path;
  relativePathCopy = relativePath;
  if ([relativePathCopy length])
  {
    fileSystemRepresentation = [relativePathCopy fileSystemRepresentation];
  }

  else
  {
    fileSystemRepresentation = ".";
  }

  v18 = openat(fd, fileSystemRepresentation, 256, 0);
  if (v18 < 0)
  {
    v26 = *__error();
    delegate = [(MBFileScanner *)self delegate];
    if (v26 == 2)
    {
      v28 = MBGetDefaultLog();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        absolutePath = [directoryCopy absolutePath];
        LODWORD(v129.d_ino) = 138412290;
        *(&v129.d_ino + 4) = absolutePath;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "=scanning= Modification error when opening directory %@ while scanning", &v129, 0xCu);

        absolutePath2 = [directoryCopy absolutePath];
        _MBLog();
      }

      [(NSMutableSet *)self->_modifiedDomains addObject:domainCopy];
    }

    else
    {
      if ((objc_opt_respondsToSelector() & 1) == 0 || ![delegate fileScanner:self failedToOpenFile:directoryCopy withErrno:v26])
      {
        v43 = MBGetDefaultLog();
        if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
        {
          absolutePath3 = [directoryCopy absolutePath];
          LODWORD(v129.d_ino) = 138412802;
          *(&v129.d_ino + 4) = absolutePath3;
          WORD2(v129.d_seekoff) = 2080;
          *(&v129.d_seekoff + 6) = fileSystemRepresentation;
          *&v129.d_name[1] = 1024;
          *&v129.d_name[3] = v26;
          _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_ERROR, "=scanning= openat failed at %@ (%s): %{errno}d", &v129, 0x1Cu);

          absolutePath4 = [directoryCopy absolutePath];
          _MBLog();
        }

        absolutePath5 = [directoryCopy absolutePath];
        v30 = [MBError errorWithErrno:v26 code:101 path:absolutePath5 format:@"open error"];

        absolutePath6 = [directoryCopy absolutePath];
        sub_10000D2DC(absolutePath6, v26, "openat");

        goto LABEL_32;
      }

      v36 = MBGetDefaultLog();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
      {
        absolutePath7 = [directoryCopy absolutePath];
        LODWORD(v129.d_ino) = 138412802;
        *(&v129.d_ino + 4) = absolutePath7;
        WORD2(v129.d_seekoff) = 2080;
        *(&v129.d_seekoff + 6) = fileSystemRepresentation;
        *&v129.d_name[1] = 1024;
        *&v129.d_name[3] = v26;
        _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_INFO, "=scanning= Skipping file with openat failure %@ (%s): %{errno}d", &v129, 0x1Cu);

        absolutePath8 = [directoryCopy absolutePath];
        _MBLog();
      }
    }

    v30 = 0;
LABEL_32:

    goto LABEL_88;
  }

  v19 = v18;
  if (!pathCopy)
  {
    memset(&v129, 0, 144);
    if (!fstat(v18, &v129))
    {
      v58 = fileSystemRepresentation;
      d_seekoff = v129.d_seekoff;
      if (d_seekoff != [directoryCopy inodeNumber])
      {
        v86 = MBGetDefaultLog();
        if (os_log_type_enabled(v86, OS_LOG_TYPE_DEFAULT))
        {
          absolutePath9 = [directoryCopy absolutePath];
          *buf = 138412290;
          *v131 = absolutePath9;
          _os_log_impl(&_mh_execute_header, v86, OS_LOG_TYPE_DEFAULT, "=scanning= Modification error when opening directory %@ while scanning", buf, 0xCu);

          absolutePath10 = [directoryCopy absolutePath];
          _MBLog();
        }

        [(NSMutableSet *)self->_modifiedDomains addObject:domainCopy];
        close(v19);
        goto LABEL_106;
      }

      fileSystemRepresentation = v58;
      goto LABEL_6;
    }

    v31 = *__error();
    delegate2 = [(MBFileScanner *)self delegate];
    if (v31 == 2)
    {
      v33 = MBGetDefaultLog();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        absolutePath11 = [directoryCopy absolutePath];
        *buf = 138412290;
        *v131 = absolutePath11;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "=scanning= Modification error when stating directory %@ while scanning", buf, 0xCu);

        absolutePath12 = [directoryCopy absolutePath];
        _MBLog();
      }

      [(NSMutableSet *)self->_modifiedDomains addObject:domainCopy];
    }

    else
    {
      if ((objc_opt_respondsToSelector() & 1) == 0 || ![delegate2 fileScanner:self failedToStatFile:directoryCopy withErrno:v31])
      {
        v64 = MBGetDefaultLog();
        if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
        {
          absolutePath13 = [directoryCopy absolutePath];
          *buf = 138412802;
          *v131 = absolutePath13;
          *&v131[8] = 2080;
          *&v131[10] = fileSystemRepresentation;
          *&v131[18] = 1024;
          *&v131[20] = v31;
          _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_ERROR, "=scanning= fstat failed at %@ (%s): %{errno}d", buf, 0x1Cu);

          absolutePath14 = [directoryCopy absolutePath];
          _MBLog();
        }

        absolutePath15 = [directoryCopy absolutePath];
        v35 = [MBError errorWithErrno:v31 code:101 path:absolutePath15 format:@"stat error"];

        goto LABEL_76;
      }

      v62 = MBGetDefaultLog();
      if (os_log_type_enabled(v62, OS_LOG_TYPE_INFO))
      {
        absolutePath16 = [directoryCopy absolutePath];
        *buf = 138412802;
        *v131 = absolutePath16;
        *&v131[8] = 2080;
        *&v131[10] = fileSystemRepresentation;
        *&v131[18] = 1024;
        *&v131[20] = v31;
        _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_INFO, "=scanning= Skipping file with fstat failure %@ (%s): %{errno}d", buf, 0x1Cu);

        absolutePath17 = [directoryCopy absolutePath];
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
  v118 = directoryCopy;
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
        absolutePath18 = [directoryCopy absolutePath];
        LODWORD(v129.d_ino) = 138412290;
        *(&v129.d_ino + 4) = absolutePath18;
        _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "=scanning= Modification error when opening directory %@ while scanning", &v129, 0xCu);

        absolutePath19 = [directoryCopy absolutePath];
        _MBLog();
      }

      [(NSMutableSet *)self->_modifiedDomains addObject:domainCopy];
      v42 = 0;
    }

    else
    {
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        absolutePath20 = [directoryCopy absolutePath];
        LODWORD(v129.d_ino) = 138412802;
        *(&v129.d_ino + 4) = absolutePath20;
        WORD2(v129.d_seekoff) = 2080;
        *(&v129.d_seekoff + 6) = fileSystemRepresentation;
        *&v129.d_name[1] = 1024;
        *&v129.d_name[3] = v38;
        _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_ERROR, "=scanning= fdopendir failed at %@ (%s): %{errno}d", &v129, 0x1Cu);

        absolutePath21 = [directoryCopy absolutePath];
        _MBLog();
      }

      absolutePath22 = [directoryCopy absolutePath];
      v42 = [MBError errorWithErrno:v38 code:101 path:absolutePath22 format:@"fdopendir error"];
    }

    close(v19);
LABEL_86:
    v30 = v42;

    goto LABEL_87;
  }

  v22 = v21;
  v116 = relativePathCopy;
  fdCopy = fd;
  v23 = objc_autoreleasePoolPush();
  memset(&v129, 0, 512);
  v127 = 0;
  v24 = readdir_r(v22, &v129, &v127);
  if (!v24)
  {
    v117 = 0;
    while (2)
    {
      relativePathCopy = v116;
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
          v50 = v111 = fileSystemRepresentation;
          v42 = [(MBFileScanner *)self _scanFilesUsingReaddirForDomain:domainCopy fds:fdsCopy snapshotPath:pathCopy relativePath:v50 depth:(depth + 1) stats:stats];

          fileSystemRepresentation = v111;
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
        [domainCopy name];
        v55 = v20;
        v57 = v56 = fileSystemRepresentation;
        *buf = 67109634;
        *v131 = v117;
        *&v131[4] = 2082;
        *&v131[6] = v56;
        *&v131[14] = 2114;
        *&v131[16] = v57;
        _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "=scanning= Found %u items under %{public}s (%{public}@)", buf, 0x1Cu);

        fileSystemRepresentation = v56;
        v20 = v55;
        name = [domainCopy name];
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
          name = MBGetDefaultLog();
          if (!os_log_type_enabled(name, OS_LOG_TYPE_FAULT))
          {
LABEL_54:

            v48 = v112;
            goto LABEL_57;
          }

          *buf = 138412290;
          *v131 = v51;
          _os_log_impl(&_mh_execute_header, name, OS_LOG_TYPE_FAULT, "=scanning= Unexpected file name: %@", buf, 0xCu);
        }

        else
        {
          if (dword_10011E4B0 || atomic_fetch_add_explicit(&dword_10011E4B0, 1u, memory_order_relaxed))
          {
            goto LABEL_57;
          }

          v112 = 0;
          name = MBGetDefaultLog();
          if (!os_log_type_enabled(name, OS_LOG_TYPE_FAULT))
          {
            goto LABEL_54;
          }

          *buf = 0;
          _os_log_impl(&_mh_execute_header, name, OS_LOG_TYPE_FAULT, "=scanning= =scanning= Unexpected file name", buf, 2u);
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
  v68 = fileSystemRepresentation;
  v69 = MBGetDefaultLog();
  if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
  {
    absolutePath23 = [v118 absolutePath];
    *buf = 138412546;
    *v131 = absolutePath23;
    *&v131[8] = 1024;
    *&v131[10] = v25;
    _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_ERROR, "=scanning= readdir_r failed at %@: %d", buf, 0x12u);

    absolutePath24 = [v118 absolutePath];
    _MBLog();
  }

  v71 = *__error();
  absolutePath25 = [v118 absolutePath];
  v42 = [MBError errorWithErrno:v71 code:101 path:absolutePath25 format:@"readdir error"];

  fileSystemRepresentation = v68;
  v20 = v67;
  relativePathCopy = v116;
LABEL_81:
  objc_autoreleasePoolPop(v23);
  if (v117 >> 4 >= 0x271)
  {
    v73 = MBGetDefaultLog();
    if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
    {
      [domainCopy name];
      v113 = v20;
      v75 = v74 = fileSystemRepresentation;
      LODWORD(v129.d_ino) = 67109634;
      HIDWORD(v129.d_ino) = v117;
      LOWORD(v129.d_seekoff) = 2082;
      *(&v129.d_seekoff + 2) = v74;
      v129.d_namlen = 2114;
      *&v129.d_type = v75;
      _os_log_impl(&_mh_execute_header, v73, OS_LOG_TYPE_DEFAULT, "=scanning= Found a total of %u items under %{public}s (%{public}@)", &v129, 0x1Cu);

      name2 = [domainCopy name];
      _MBLog();

      fileSystemRepresentation = v74;
      v20 = v113;
      relativePathCopy = v116;
    }
  }

  closedir(v22);
  directoryCopy = v118;
  if (v42)
  {
    goto LABEL_86;
  }

  v114 = fileSystemRepresentation;
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
        v84 = [relativePathCopy stringByAppendingPathComponent:v82];
        v85 = [(MBFileScanner *)self _scanFilesUsingReaddirForDomain:domainCopy fds:fdsCopy snapshotPath:pathCopy relativePath:v84 depth:(depth + 1) stats:stats];
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

  if (!pathCopy)
  {
    memset(&v129, 0, 144);
    directoryCopy = v118;
    if (!fstatat(fdCopy, v114, &v129, 32))
    {
      v90 = v129.d_seekoff;
      if (v90 == [v118 inodeNumber])
      {
        [(MBFileScanner *)self _detectModifiedDomain:domainCopy relativePath:relativePathCopy lastModified:*&v129.d_name[27]];
LABEL_106:
        v30 = 0;
        goto LABEL_88;
      }

LABEL_112:
      v91 = MBGetDefaultLog();
      if (os_log_type_enabled(v91, OS_LOG_TYPE_DEFAULT))
      {
        absolutePath26 = [v118 absolutePath];
        *buf = 138412290;
        *v131 = absolutePath26;
        _os_log_impl(&_mh_execute_header, v91, OS_LOG_TYPE_DEFAULT, "=scanning= Deleted/modified while scanning: %@", buf, 0xCu);

        absolutePath27 = [v118 absolutePath];
        _MBLog();
      }

      [(MBDebugContext *)self->_debugContext setFlag:@"FileDeletedWhileScanning"];
      [(NSMutableSet *)self->_modifiedDomains addObject:domainCopy];
      goto LABEL_106;
    }

    v88 = *__error();
    delegate3 = [(MBFileScanner *)self delegate];
    delegate = delegate3;
    if (v88 == 2)
    {

      goto LABEL_112;
    }

    if ((objc_opt_respondsToSelector() & 1) != 0 && [delegate fileScanner:self failedToStatFile:v118 withErrno:v88])
    {
      absolutePath32 = MBGetDefaultLog();
      if (os_log_type_enabled(absolutePath32, OS_LOG_TYPE_INFO))
      {
        absolutePath28 = [v118 absolutePath];
        *buf = 138412802;
        *v131 = absolutePath28;
        *&v131[8] = 2080;
        *&v131[10] = v114;
        *&v131[18] = 1024;
        *&v131[20] = v88;
        _os_log_impl(&_mh_execute_header, absolutePath32, OS_LOG_TYPE_INFO, "=scanning= Skipping file with fstat failure %@ (%s): %{errno}d", buf, 0x1Cu);

        absolutePath29 = [v118 absolutePath];
        _MBLog();
      }

      v30 = 0;
    }

    else
    {
      v95 = MBGetDefaultLog();
      if (os_log_type_enabled(v95, OS_LOG_TYPE_ERROR))
      {
        absolutePath30 = [v118 absolutePath];
        *buf = 138412802;
        *v131 = absolutePath30;
        *&v131[8] = 2080;
        *&v131[10] = v114;
        *&v131[18] = 1024;
        *&v131[20] = v88;
        _os_log_impl(&_mh_execute_header, v95, OS_LOG_TYPE_ERROR, "=scanning= fstatat failed at %@ (%s): %{errno}d", buf, 0x1Cu);

        absolutePath31 = [v118 absolutePath];
        _MBLog();
      }

      absolutePath32 = [v118 absolutePath];
      v30 = [MBError errorWithErrno:v88 code:101 path:absolutePath32 format:@"stat error"];
    }

    goto LABEL_32;
  }

  v30 = 0;
LABEL_102:
  directoryCopy = v118;
LABEL_88:

  return v30;
}

- (id)_scanFilesUsingGetattrlistbulkForDomain:(id)domain fds:(id)fds snapshotPath:(id)path relativePath:(id)relativePath stats:(_MBFileScannerDomainStats *)stats
{
  domainCopy = domain;
  fdsCopy = fds;
  pathCopy = path;
  relativePathCopy = relativePath;
  v16 = atomic_load(&self->_canceled);
  if (v16)
  {
    v17 = [MBError errorWithCode:202 format:@"File scan cancelled"];
    goto LABEL_61;
  }

  v86 = 0;
  v18 = [fdsCopy cachedFDForDomain:domainCopy withSnapshotPath:pathCopy error:&v86];
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
        name = [domainCopy name];
        rootPath = [domainCopy rootPath];
        *buf = 138412802;
        *&buf[4] = name;
        *&buf[12] = 2112;
        *&buf[14] = rootPath;
        *&buf[22] = 2112;
        *&buf[24] = pathCopy;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "=scanning= No domain root present for %@ found at %@ under %@", buf, 0x20u);

        name2 = [domainCopy name];
        rootPath2 = [domainCopy rootPath];
        _MBLog();
      }

      v17 = 0;
    }

    else
    {
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        name3 = [domainCopy name];
        *buf = 138412546;
        *&buf[4] = name3;
        *&buf[12] = 2112;
        *&buf[14] = v20;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "=scanning= Failed to fetch cached file descriptor for domain %@: %@", buf, 0x16u);

        name4 = [domainCopy name];
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
  v21 = sub_10008E430(v18, relativePathCopy, buf, &v85);
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

  v23 = [MBFile fileWithDomain:domainCopy snapshotPath:pathCopy relativePath:relativePathCopy];
  [v23 setNode:buf];
  if ([(MBFileScanner *)self _shouldNotBackupFile:v23 domain:domainCopy])
  {
LABEL_6:
    v17 = 0;
    goto LABEL_58;
  }

  v31 = [(MBFileScanner *)self _foundFile:v23 snapshotPath:pathCopy stats:stats];

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
  [v32 addObject:relativePathCopy];
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
    lastObject = [v35 lastObject];
    [v35 removeLastObject];
    lastObject2 = [v76 lastObject];
    unsignedIntValue = [lastObject2 unsignedIntValue];

    [v76 removeLastObject];
    v84 = v36;
    v42 = [fdsCopy cachedFDForDomain:domainCopy withSnapshotPath:pathCopy error:&v84];
    v43 = v84;

    v83 = lastObject;
    if (v42 < 0)
    {
      v61 = MBGetDefaultLog();
      if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
      {
        name5 = [domainCopy name];
        *v87 = 138412546;
        *v88 = name5;
        *&v88[8] = 2112;
        *&v88[10] = v43;
        _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_ERROR, "=scanning= Failed to fetch cached file descriptor for domain %@: %@", v87, 0x16u);

        [domainCopy name];
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
    v44 = [lastObject length] ? objc_msgSend(lastObject, "fileSystemRepresentation") : ".";
    v38 = v77;
    v45 = unsignedIntValue;
    v46 = openat(v42, v44, 256, 0);
    if ((v46 & 0x80000000) == 0)
    {
      break;
    }

    v49 = *__error();
    delegate = [(MBFileScanner *)self delegate];
    v51 = [MBFile fileWithDomain:domainCopy snapshotPath:pathCopy relativePath:v83];
    v78 = v49;
    v81 = v51;
    v73 = delegate;
    if ((objc_opt_respondsToSelector() & 1) != 0 && [delegate fileScanner:self failedToOpenFile:v51 withErrno:v49])
    {
      absolutePath4 = MBGetDefaultLog();
      if (os_log_type_enabled(absolutePath4, OS_LOG_TYPE_INFO))
      {
        absolutePath = [v51 absolutePath];
        *v87 = 138412802;
        *v88 = absolutePath;
        *&v88[8] = 2112;
        *&v88[10] = v83;
        *&v88[18] = 1024;
        *&v88[20] = v78;
        _os_log_impl(&_mh_execute_header, absolutePath4, OS_LOG_TYPE_INFO, "=scanning= Skipping file with openat failure %@ (%@): %{errno}d", v87, 0x1Cu);

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
        absolutePath2 = [v51 absolutePath];
        *v87 = 138412802;
        *v88 = absolutePath2;
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

      absolutePath3 = [v51 absolutePath];
      v72 = [MBError errorWithErrno:v78 code:101 path:absolutePath3 format:@"open error"];

      absolutePath4 = [v51 absolutePath];
      sub_10000D2DC(absolutePath4, v78, "openat");
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
  if (unsignedIntValue > 0x61A8)
  {
    v55 = MBGetDefaultLog();
    if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
    {
      name6 = [domainCopy name];
      *v87 = 67109634;
      *v88 = unsignedIntValue;
      *&v88[4] = 2114;
      *&v88[6] = name6;
      *&v88[14] = 2114;
      *&v88[16] = v83;
      _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_INFO, "=scanning= Found a direntcount of %u under %{public}@ (%{public}@)", v87, 0x1Cu);

      name7 = [domainCopy name];
      v45 = unsignedIntValue;
      _MBLog();
    }

    v35 = v75;
    v48 = [(MBFileScanner *)self _performTwoPassEnumerationForDomain:domainCopy snapshotPath:pathCopy relativePath:v83 buffer:v74 dirFd:v47 direntCount:v45 directoryPathStack:v75 directoryCountStack:v76 stats:stats];
  }

  else
  {
    v35 = v75;
    v48 = [(MBFileScanner *)self _performSinglePassEnumerationForDomain:domainCopy snapshotPath:pathCopy relativePath:v83 buffer:v74 dirFd:v46 direntCount:unsignedIntValue directoryPathStack:v75 directoryCountStack:v76 stats:stats];
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

- (id)_performTwoPassEnumerationForDomain:(id)domain snapshotPath:(id)path relativePath:(id)relativePath buffer:(id)buffer dirFd:(int)fd direntCount:(unsigned int)count directoryPathStack:(id)stack directoryCountStack:(id)self0 stats:(_MBFileScannerDomainStats *)self1
{
  domainCopy = domain;
  pathCopy = path;
  relativePathCopy = relativePath;
  bufferCopy = buffer;
  stackCopy = stack;
  countStackCopy = countStack;
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
  v20 = domainCopy;
  v66 = v20;
  v21 = relativePathCopy;
  v67 = v21;
  selfCopy = self;
  selfCopy2 = self;
  v70 = &v74;
  v71 = &v80;
  v22 = bufferCopy;
  countCopy = count;
  countCopy2 = count;
  v24 = pathCopy;
  v69 = v24;
  statsCopy = stats;
  sub_10008DCA8(fd, v22, v65);
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
        name = [v20 name];
        *buf = 134218754;
        v85 = v27;
        v86 = 1024;
        countCopy3 = count;
        v88 = 2114;
        v89 = v21;
        v90 = 2114;
        v91 = name;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "=scanning= Found a total of %llu/%u items under %{public}@ (%{public}@), first pass", buf, 0x26u);

        v22 = v44;
      }

      v29 = v81[3];
      name2 = [v20 name];
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

  if (lseek(fd, 0, 0) < 0)
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
  v53 = selfCopy2;
  v57 = &v74;
  v58 = &v61;
  countCopy4 = count;
  v54 = v24;
  statsCopy2 = stats;
  v55 = stackCopy;
  v56 = countStackCopy;
  sub_10008DCA8(fd, v22, v50);
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
        name3 = [v34 name];
        *buf = 134218754;
        v85 = v38;
        v86 = 1024;
        countCopy3 = countCopy;
        v88 = 2114;
        v89 = v47;
        v90 = 2114;
        v91 = name3;
        _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "=scanning= Found a total of %llu/%u items under %{public}@ (%{public}@), second pass", buf, 0x26u);

        v22 = v33;
      }

      v40 = v62[3];
      name4 = [v34 name];
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

- (id)_foundFile:(id)file snapshotPath:(id)path stats:(_MBFileScannerDomainStats *)stats
{
  fileCopy = file;
  pathCopy = path;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [(MBFileScanner *)self _updateStats:stats file:fileCopy];
  if (!pathCopy)
  {
    domain = [fileCopy domain];
    relativePath = [fileCopy relativePath];
    -[MBFileScanner _detectModifiedDomain:relativePath:lastModified:](self, "_detectModifiedDomain:relativePath:lastModified:", domain, relativePath, [fileCopy lastModified]);
  }

  if (![fileCopy isRegularFile])
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
      relativePath2 = [fileCopy relativePath];
      v20 = [relativePath2 hasSuffix:v18];

      if (v20)
      {
        relativePath3 = [fileCopy relativePath];
        relativePath4 = [fileCopy relativePath];
        v24 = [relativePath3 substringToIndex:{objc_msgSend(relativePath4, "length") - objc_msgSend(v18, "length")}];

        domain2 = [fileCopy domain];
        rootPath = [domain2 rootPath];
        v27 = [rootPath stringByAppendingPathComponent:v24];

        domain3 = [fileCopy domain];
        volumeMountPoint = [domain3 volumeMountPoint];
        v101 = v27;
        v30 = sub_100077FF4(v27, pathCopy, volumeMountPoint);

        domain4 = [fileCopy domain];
        v32 = [MBFileID fileIDWithDomain:domain4 relativePath:v24];

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

          absolutePath8 = MBGetDefaultLog();
          v46 = v101;
          if (os_log_type_enabled(absolutePath8, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            *&buf[4] = v30;
            _os_log_impl(&_mh_execute_header, absolutePath8, OS_LOG_TYPE_INFO, "=scanning= Potential SQLite database not found: %@", buf, 0xCu);
            absolutePath4 = v30;
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
                    absolutePath = [fileCopy absolutePath];
                    *buf = 138412290;
                    *&buf[4] = absolutePath;
                    _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_INFO, "=scanning= Not backing up SQLite file: %@", buf, 0xCu);

                    absolutePath2 = [fileCopy absolutePath];
                    _MBLog();
                  }

                  if ([v18 hasSuffix:@"-wal"])
                  {
                    lastModifiedDate = [fileCopy lastModifiedDate];
                    [lastModifiedDate timeIntervalSince1970];
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

                    lastModifiedDate2 = [fileCopy lastModifiedDate];
                    [(NSMutableDictionary *)self->_lastModifiedDateBySQLiteFileID setObject:lastModifiedDate2 forKeyedSubscript:v102];
                  }

                  v44 = 0;
                  goto LABEL_45;
                }

                domain5 = [fileCopy domain];
                v52 = [MBFile fileWithDomain:domain5 snapshotPath:pathCopy relativePath:v100];

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
                        absolutePath3 = [fileCopy absolutePath];
                        *v115 = 138412290;
                        *v116 = absolutePath3;
                        _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_INFO, "=scanning= Backing up SQLite file: %@", v115, 0xCu);

                        absolutePath4 = [fileCopy absolutePath];
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
                          absolutePath4 = v30;
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

                  delegate = MBGetDefaultLog();
                  if (os_log_type_enabled(delegate, OS_LOG_TYPE_INFO))
                  {
                    mode = [fileCopy mode];
                    *v115 = 67109378;
                    *v116 = mode;
                    *&v116[4] = 2112;
                    *&v116[6] = v30;
                    _os_log_impl(&_mh_execute_header, delegate, OS_LOG_TYPE_INFO, "=scanning= Potential SQLite database is not a regular file (0%o): %@", v115, 0x12u);
                    absolutePath4 = [fileCopy mode];
                    relativePath6 = v30;
                    _MBLog();
                  }

                  v57 = 2;
                  WeakRetained = v103;
LABEL_97:

                  goto LABEL_98;
                }

                v77 = [MBError errnoForError:v21];
                delegate = [(MBFileScanner *)self delegate];
                if (v77 == 2)
                {
                  v79 = MBGetDefaultLog();
                  if (os_log_type_enabled(v79, OS_LOG_TYPE_INFO))
                  {
                    *v115 = 138412290;
                    *v116 = v30;
                    _os_log_impl(&_mh_execute_header, v79, OS_LOG_TYPE_INFO, "=scanning= Potential SQLite database not found: %@", v115, 0xCu);
                    absolutePath4 = v30;
                    _MBLog();
                  }
                }

                else
                {
                  if ((objc_opt_respondsToSelector() & 1) == 0 || ![delegate fileScanner:self failedToStatFile:v52 withErrno:v77])
                  {
                    v84 = MBGetDefaultLog();
                    if (os_log_type_enabled(v84, OS_LOG_TYPE_ERROR))
                    {
                      *v115 = 138412546;
                      *v116 = v30;
                      *&v116[8] = 2114;
                      *&v116[10] = v21;
                      _os_log_impl(&_mh_execute_header, v84, OS_LOG_TYPE_ERROR, "=scanning= MBNodeForPath() failed at %@: %{public}@", v115, 0x16u);
                      absolutePath4 = v30;
                      relativePath6 = v21;
                      _MBLog();
                    }

                    v85 = v21;
                    v57 = 1;
                    goto LABEL_96;
                  }

                  v81 = MBGetDefaultLog();
                  if (os_log_type_enabled(v81, OS_LOG_TYPE_INFO))
                  {
                    absolutePath5 = [v99 absolutePath];
                    relativePath5 = [v99 relativePath];
                    *v115 = 138412802;
                    *v116 = absolutePath5;
                    *&v116[8] = 2112;
                    *&v116[10] = relativePath5;
                    v83 = relativePath5;
                    v117 = 1024;
                    v118 = v77;
                    _os_log_impl(&_mh_execute_header, v81, OS_LOG_TYPE_INFO, "=scanning= Skipping SQLite file with lstat failure %@ (%@): %{errno}d", v115, 0x1Cu);

                    absolutePath6 = [v99 absolutePath];
                    relativePath6 = [v99 relativePath];
                    v94 = v77;
                    absolutePath4 = absolutePath6;
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
                absolutePath4 = v49;
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

          absolutePath7 = [fileCopy absolutePath];
          *buf = 138412290;
          *&buf[4] = absolutePath7;
          _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_INFO, "=scanning= Backing up protected SQLite journal: %@", buf, 0xCu);

          absolutePath8 = [fileCopy absolutePath];
          absolutePath4 = absolutePath8;
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
  fileID = [fileCopy fileID];
  v60 = [(NSMutableDictionary *)lastModifiedDateBySQLiteFileID objectForKeyedSubscript:fileID];

  if (v60)
  {
    [v60 timeIntervalSince1970];
    v62 = v61;
    v63 = MBGetDefaultLog();
    if (os_log_type_enabled(v63, OS_LOG_TYPE_INFO))
    {
      lastModified = [fileCopy lastModified];
      *buf = 134218498;
      *&buf[4] = lastModified;
      *&buf[12] = 2048;
      *&buf[14] = v62;
      *&buf[22] = 2112;
      *&buf[24] = fileCopy;
      _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_INFO, "=scanning= Overriding last modified date of SQLite file (%lu) with WAL's (%lu): %@", buf, 0x20u);
      v93 = v62;
      v95 = fileCopy;
      lastModified2 = [fileCopy lastModified];
      _MBLog();
    }

    [fileCopy setLastModified:v62];
  }

  v65 = [MBFileSystemManager fileSystemCapacity:lastModified2];
  if ([fileCopy size] > v65)
  {
    v66 = MBGetDefaultLog();
    if (os_log_type_enabled(v66, OS_LOG_TYPE_FAULT))
    {
      v67 = [fileCopy size];
      [fileCopy absolutePath];
      v68 = v104 = WeakRetained;
      *buf = 134218498;
      *&buf[4] = v67;
      *&buf[12] = 2048;
      *&buf[14] = v65;
      *&buf[22] = 2114;
      *&buf[24] = v68;
      _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_FAULT, "=scanning= Found a file with unexpected size (%llu/%llu) at %{public}@", buf, 0x20u);

      [fileCopy size];
      absolutePath9 = [fileCopy absolutePath];
      _MBLog();

      WeakRetained = v104;
    }

    absolutePath10 = [fileCopy absolutePath];
    sub_10000D2DC(absolutePath10, 28, "[MBFileScanner _foundFile:snapshotPath:stats:]");
  }

LABEL_70:
  v70 = v21;
  v71 = objc_autoreleasePoolPush();
  v21 = (self->_delegateImpOfFileScannerDidFindFile)(WeakRetained, "fileScanner:didFindFile:", self, fileCopy);

  objc_autoreleasePoolPop(v71);
  if (v21)
  {
    if ([MBError isError:v21 withCode:4])
    {
      v72 = MBGetDefaultLog();
      if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
      {
        absolutePath11 = [fileCopy absolutePath];
        *buf = 138412290;
        *&buf[4] = absolutePath11;
        _os_log_impl(&_mh_execute_header, v72, OS_LOG_TYPE_DEFAULT, "=scanning= Deleted while scanning: %@", buf, 0xCu);

        absolutePath12 = [fileCopy absolutePath];
        _MBLog();
      }

      [(MBDebugContext *)self->_debugContext setFlag:@"FileDeletedWhileScanning"];
      modifiedDomains = self->_modifiedDomains;
      domain6 = [fileCopy domain];
      [(NSMutableSet *)modifiedDomains addObject:domain6];

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

- (void)_detectModifiedDomain:(id)domain relativePath:(id)path lastModified:(int64_t)modified
{
  domainCopy = domain;
  pathCopy = path;
  if (self->_startTime <= modified && [(MBDebugContext *)self->_debugContext time]>= modified)
  {
    relativePathsNotToCheckIfModifiedDuringBackup = [domainCopy relativePathsNotToCheckIfModifiedDuringBackup];
    v11 = [relativePathsNotToCheckIfModifiedDuringBackup count];

    if (v11)
    {
      v26 = pathCopy;
      pathComponents = [pathCopy pathComponents];
      v13 = [pathComponents count];
      v14 = 0;
      while (1)
      {
        v15 = objc_autoreleasePoolPush();
        v16 = [pathComponents subarrayWithRange:{0, v14}];
        v17 = [NSString pathWithComponents:v16];

        relativePathsNotToCheckIfModifiedDuringBackup2 = [domainCopy relativePathsNotToCheckIfModifiedDuringBackup];
        v19 = [relativePathsNotToCheckIfModifiedDuringBackup2 containsObject:v17];

        if (v19)
        {
          break;
        }

        objc_autoreleasePoolPop(v15);
        if (++v14 > v13)
        {
          v20 = MBGetDefaultLog();
          pathCopy = v26;
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            startTime = self->_startTime;
            *buf = 138412802;
            v28 = v26;
            v29 = 2048;
            v30 = startTime;
            v31 = 2048;
            modifiedCopy2 = modified;
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "=scanning= Modified while scanning: %@ (startTime:%ld, lastModified:%ld)", buf, 0x20u);
            v24 = self->_startTime;
            _MBLog();
          }

          [(MBDebugContext *)self->_debugContext setFlag:@"FileModifiedWhileScanning"];
          [(NSMutableSet *)self->_modifiedDomains addObject:domainCopy];
          goto LABEL_13;
        }
      }

      v22 = MBGetDefaultLog();
      pathCopy = v26;
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = self->_startTime;
        *buf = 138412802;
        v28 = v26;
        v29 = 2048;
        v30 = v23;
        v31 = 2048;
        modifiedCopy2 = modified;
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