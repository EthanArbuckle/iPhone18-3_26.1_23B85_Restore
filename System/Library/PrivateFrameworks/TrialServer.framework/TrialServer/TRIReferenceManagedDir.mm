@interface TRIReferenceManagedDir
+ ($A5A652246548B43F8BC05201A1C72A70)_acquireLockOnDir:(id)dir withLockingMode:(int)mode andRunBlock:(id)block;
+ (BOOL)_deleteReferenceManagedDirectory:(id)directory usingTempDir:(id)dir managedDirWasDeleted:(BOOL *)deleted;
+ (BOOL)_isTargetOfSymlink:(id)symlink containedInManagedDir:(id)dir;
+ (BOOL)_removePaths:(id)paths withLockWitness:(TRIFlockWitness_ *)witness numRemoved:(unsigned int *)removed;
+ (BOOL)_testDeletionEligibilityForManagedDir:(id)dir withExternalReferenceStore:(id)store flockWitness:(TRIFlockWitness_ *)witness logPrefix:(id)prefix isEligible:(BOOL *)eligible;
+ (BOOL)collectDeferredDeletionItemsWithManagedDir:(id)dir;
+ (BOOL)collectGarbageForManagedDir:(id)dir withExternalReferenceStore:(id)store usingTempDir:(id)tempDir managedDirWasDeleted:(BOOL *)deleted;
+ (BOOL)createFromDir:(id)dir;
+ (BOOL)isPathInManagedDir:(id)dir;
+ (BOOL)removeFileInManagedDirWithPath:(id)path inUseDeletionBehavior:(unsigned __int8)behavior wasDeleted:(BOOL *)deleted;
+ (BOOL)saveFromGarbageCollectionItemWithPath:(id)path;
+ (BOOL)symlinkFromCurrentPath:(id)path withFuturePath:(id)futurePath toManagedPath:(id)managedPath;
+ (id)_collectDeadSymlinksForManagedDir:(id)dir withLockWitness:(TRIFlockWitness_ *)witness liveSymlinkCount:(unsigned int *)count;
+ (id)_containingManagedDirForPath:(id)path resolvedAbsPath:(id *)absPath;
+ (id)_metadataDirForManagedDir:(id)dir;
+ (id)_reverseLinksDirForManagedDir:(id)dir;
@end

@implementation TRIReferenceManagedDir

+ (id)_metadataDirForManagedDir:(id)dir
{
  dirCopy = dir;
  v4 = objc_autoreleasePoolPush();
  v5 = [dirCopy stringByAppendingPathComponent:@"_refs"];
  objc_autoreleasePoolPop(v4);

  return v5;
}

+ (id)_reverseLinksDirForManagedDir:(id)dir
{
  dirCopy = dir;
  v5 = objc_autoreleasePoolPush();
  v6 = [self _metadataDirForManagedDir:dirCopy];
  v7 = [v6 stringByAppendingPathComponent:@"revlinks"];

  objc_autoreleasePoolPop(v5);

  return v7;
}

+ ($A5A652246548B43F8BC05201A1C72A70)_acquireLockOnDir:(id)dir withLockingMode:(int)mode andRunBlock:(id)block
{
  v34 = *MEMORY[0x277D85DE8];
  dirCopy = dir;
  blockCopy = block;
  v9 = objc_autoreleasePoolPush();
  v10 = open([dirCopy fileSystemRepresentation], 0);
  if (v10 < 0)
  {
    v13 = TRILogCategory_Server();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v19 = __error();
      v20 = strerror(*v19);
      v21 = *__error();
      v28 = 138543874;
      v29 = dirCopy;
      v30 = 2080;
      v31 = v20;
      v32 = 1024;
      v33 = v21;
      _os_log_error_impl(&dword_26F567000, v13, OS_LOG_TYPE_ERROR, "Failed to open lock dir %{public}@: %s (%d)", &v28, 0x1Cu);
    }

    v12.var0 = 2;
  }

  else
  {
    v11 = v10;
    if (flock(v10, mode))
    {
      if (*__error() == 35)
      {
        v12.var0 = 1;
      }

      else
      {
        v16 = TRILogCategory_Server();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          v22 = __error();
          v23 = strerror(*v22);
          v24 = *__error();
          v28 = 138543874;
          v29 = dirCopy;
          v30 = 2080;
          v31 = v23;
          v32 = 1024;
          v33 = v24;
          _os_log_error_impl(&dword_26F567000, v16, OS_LOG_TYPE_ERROR, "Failed to acquire lock dir %{public}@: %s (%d)", &v28, 0x1Cu);
        }

        v12.var0 = 2;
      }
    }

    else
    {
      v14 = objc_autoreleasePoolPush();
      v28 = v11;
      blockCopy[2](blockCopy, &v28);
      objc_autoreleasePoolPop(v14);
      if (flock(v11, 8))
      {
        v15 = TRILogCategory_Server();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          v25 = __error();
          v26 = strerror(*v25);
          v27 = *__error();
          v28 = 138543874;
          v29 = dirCopy;
          v30 = 2080;
          v31 = v26;
          v32 = 1024;
          v33 = v27;
          _os_log_error_impl(&dword_26F567000, v15, OS_LOG_TYPE_ERROR, "Failed to unlock lock dir %{public}@: %s (%d)", &v28, 0x1Cu);
        }
      }

      v12.var0 = 0;
    }

    close(v11);
  }

  objc_autoreleasePoolPop(v9);

  v17 = *MEMORY[0x277D85DE8];
  return v12;
}

+ (id)_containingManagedDirForPath:(id)path resolvedAbsPath:(id *)absPath
{
  v39 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  bzero(v38, 0x400uLL);
  v7 = realpath_DARWIN_EXTSN([pathCopy fileSystemRepresentation], v38);
  if (v7)
  {
    v8 = v7;
    if (absPath)
    {
      v9 = stringForUTF8Path(v7);
      v10 = *absPath;
      *absPath = v9;
    }

    while (1)
    {
      v11 = stringForUTF8Path(v8);
      v25 = 0;
      defaultManager = [MEMORY[0x277CCAA00] defaultManager];
      v13 = [self _metadataDirForManagedDir:v11];
      v14 = [defaultManager fileExistsAtPath:v13 isDirectory:&v25];
      v15 = v25;

      if (v14)
      {
        if (v15)
        {
          break;
        }
      }

      if (!dirname_r(v8, buf))
      {
        v19 = TRILogCategory_Server();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          v22 = __error();
          v23 = strerror(*v22);
          v24 = *__error();
          *v26 = 138543874;
          v27 = pathCopy;
          v28 = 2080;
          v29 = v23;
          v30 = 1024;
          v31 = v24;
          _os_log_error_impl(&dword_26F567000, v19, OS_LOG_TYPE_ERROR, "dirname_r() failure on upward-traversal of path %{public}@: %s (%d)", v26, 0x1Cu);
        }

        goto LABEL_14;
      }

      v8 = v38;
      __strlcpy_chk();

      if (v38[0] == 47)
      {
        goto LABEL_15;
      }
    }
  }

  else
  {
    v11 = TRILogCategory_Server();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v16 = __error();
      v17 = strerror(*v16);
      v18 = *__error();
      *buf = 138543874;
      v33 = pathCopy;
      v34 = 2080;
      v35 = v17;
      v36 = 1024;
      v37 = v18;
      _os_log_error_impl(&dword_26F567000, v11, OS_LOG_TYPE_ERROR, "Failed to resolve absolute path for possibly-managed path %{public}@: %s (%d)", buf, 0x1Cu);
    }

LABEL_14:

LABEL_15:
    v11 = 0;
  }

  v20 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (BOOL)createFromDir:(id)dir
{
  v21 = *MEMORY[0x277D85DE8];
  dirCopy = dir;
  v16 = 0;
  v5 = [self _containingManagedDirForPath:dirCopy resolvedAbsPath:&v16];
  if (v5)
  {
    v6 = v5;
    LODWORD(self) = [v5 isEqualToString:v16];
    v7 = TRILogCategory_Server();
    v8 = v7;
    if (self)
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v18 = v6;
        _os_log_impl(&dword_26F567000, v8, OS_LOG_TYPE_DEFAULT, "Reference-managed directory already exists at %{public}@", buf, 0xCu);
      }
    }

    else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v18 = dirCopy;
      v19 = 2114;
      v20 = v6;
      _os_log_error_impl(&dword_26F567000, v8, OS_LOG_TYPE_ERROR, "Cannot create reference-managed directory %{public}@ because it is nested in reference-managed directory: %{public}@", buf, 0x16u);
    }
  }

  else
  {

    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v10 = [self _metadataDirForManagedDir:dirCopy];
    v15 = 0;
    LOBYTE(self) = [defaultManager createDirectoryAtPath:v10 withIntermediateDirectories:0 attributes:0 error:&v15];
    v11 = v15;

    if ((self & 1) == 0)
    {
      v12 = TRILogCategory_Server();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v18 = dirCopy;
        v19 = 2114;
        v20 = v11;
        _os_log_error_impl(&dword_26F567000, v12, OS_LOG_TYPE_ERROR, "Failed to create reference-managed directory from %{public}@: %{public}@", buf, 0x16u);
      }
    }
  }

  v13 = *MEMORY[0x277D85DE8];
  return self;
}

+ (BOOL)symlinkFromCurrentPath:(id)path withFuturePath:(id)futurePath toManagedPath:(id)managedPath
{
  v62 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  futurePathCopy = futurePath;
  managedPathCopy = managedPath;
  if (pathCopy)
  {
    if (futurePathCopy)
    {
      goto LABEL_3;
    }

LABEL_52:
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIReferenceManagedDir.m" lineNumber:178 description:{@"Invalid parameter not satisfying: %@", @"symlinkFuturePath"}];

    if (managedPathCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_53;
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"TRIReferenceManagedDir.m" lineNumber:177 description:{@"Invalid parameter not satisfying: %@", @"symlinkCurrentPath"}];

  if (!futurePathCopy)
  {
    goto LABEL_52;
  }

LABEL_3:
  if (managedPathCopy)
  {
    goto LABEL_4;
  }

LABEL_53:
  currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"TRIReferenceManagedDir.m" lineNumber:179 description:{@"Invalid parameter not satisfying: %@", @"managedPath"}];

LABEL_4:
  if (![pathCopy length])
  {
    v14 = TRILogCategory_Server();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v55 = "+[TRIReferenceManagedDir symlinkFromCurrentPath:withFuturePath:toManagedPath:]";
      _os_log_error_impl(&dword_26F567000, v14, OS_LOG_TYPE_ERROR, "%s has empty path arg: symlinkCurrentPath", buf, 0xCu);
    }

    goto LABEL_23;
  }

  if (![futurePathCopy length])
  {
    v14 = TRILogCategory_Server();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v55 = "+[TRIReferenceManagedDir symlinkFromCurrentPath:withFuturePath:toManagedPath:]";
      _os_log_error_impl(&dword_26F567000, v14, OS_LOG_TYPE_ERROR, "%s has empty path arg: symlinkFuturePath", buf, 0xCu);
    }

    goto LABEL_23;
  }

  if (![managedPathCopy length])
  {
    v14 = TRILogCategory_Server();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v55 = "+[TRIReferenceManagedDir symlinkFromCurrentPath:withFuturePath:toManagedPath:]";
      _os_log_error_impl(&dword_26F567000, v14, OS_LOG_TYPE_ERROR, "%s has empty path arg: managedPath", buf, 0xCu);
    }

    goto LABEL_23;
  }

  if (([futurePathCopy isAbsolutePath] & 1) == 0)
  {
    v14 = TRILogCategory_Server();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v55 = futurePathCopy;
      _os_log_error_impl(&dword_26F567000, v14, OS_LOG_TYPE_ERROR, "symlinkFuturePath %{public}@ is not absolute.", buf, 0xCu);
    }

    goto LABEL_23;
  }

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v13 = [defaultManager fileExistsAtPath:pathCopy];

  if (v13)
  {
    v14 = TRILogCategory_Server();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v55 = pathCopy;
      _os_log_error_impl(&dword_26F567000, v14, OS_LOG_TYPE_ERROR, "Unable to create symlink at %{public}@: file already exists", buf, 0xCu);
    }

LABEL_23:

LABEL_24:
    v15 = 0;
    goto LABEL_25;
  }

  bzero(buf, 0x400uLL);
  stringByDeletingLastPathComponent = [pathCopy stringByDeletingLastPathComponent];
  v19 = realpath_DARWIN_EXTSN([stringByDeletingLastPathComponent fileSystemRepresentation], buf);

  if (!v19)
  {
    v30 = TRILogCategory_Server();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      v33 = __error();
      v34 = strerror(*v33);
      v35 = *__error();
      *v52 = 138543874;
      *&v52[4] = pathCopy;
      *&v52[12] = 2080;
      *&v52[14] = v34;
      *&v52[22] = 1024;
      v53 = v35;
      _os_log_error_impl(&dword_26F567000, v30, OS_LOG_TYPE_ERROR, "Unable to resolve parent dir for %{public}@: %s (%d)", v52, 0x1Cu);
    }

    goto LABEL_24;
  }

  v20 = stringForUTF8Path(v19);
  lastPathComponent = [pathCopy lastPathComponent];
  v22 = [v20 stringByAppendingPathComponent:lastPathComponent];

  if (!v22)
  {
    currentHandler4 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler4 handleFailureInMethod:a2 object:self file:@"TRIReferenceManagedDir.m" lineNumber:209 description:{@"Invalid parameter not satisfying: %@", @"absSymlinkCurrentPath"}];
  }

  v51 = 0;
  v23 = [self _containingManagedDirForPath:managedPathCopy resolvedAbsPath:&v51];
  if (v23)
  {
    if (!v51)
    {
      currentHandler5 = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler5 handleFailureInMethod:a2 object:self file:@"TRIReferenceManagedDir.m" lineNumber:217 description:{@"Invalid parameter not satisfying: %@", @"absLinkTarget"}];
    }

    *v52 = 0;
    *&v52[8] = v52;
    *&v52[16] = 0x2020000000;
    LOBYTE(v53) = 1;
    v24 = [self _metadataDirForManagedDir:v23];
    v46[0] = MEMORY[0x277D85DD0];
    v46[1] = 3221225472;
    v46[2] = __78__TRIReferenceManagedDir_symlinkFromCurrentPath_withFuturePath_toManagedPath___block_invoke;
    v46[3] = &unk_279DE2770;
    selfCopy = self;
    v25 = v23;
    v47 = v25;
    v48 = futurePathCopy;
    v49 = v52;
    v26 = [self _acquireLockOnDir:v24 withLockingMode:2 andRunBlock:v46];

    if (v26 || (*(*&v52[8] + 24) & 1) == 0)
    {
      v15 = 0;
    }

    else
    {
      fileSystemRepresentation = [v51 fileSystemRepresentation];
      v28 = v22;
      if (symlink(fileSystemRepresentation, [v22 fileSystemRepresentation]))
      {
        v29 = TRILogCategory_Server();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          v40 = v51;
          v41 = __error();
          v42 = strerror(*v41);
          v43 = *__error();
          *buf = 138544130;
          v55 = v22;
          v56 = 2114;
          v57 = v40;
          v58 = 2080;
          v59 = v42;
          v60 = 1024;
          v61 = v43;
          _os_log_error_impl(&dword_26F567000, v29, OS_LOG_TYPE_ERROR, "Failed to create symlink %{public}@ --> %{public}@: %s (%d)", buf, 0x26u);
        }

        v15 = 0;
      }

      else
      {
        defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
        v29 = [defaultManager2 triPath:managedPathCopy relativeToParentPath:v25];

        if (([v29 isEqualToString:@"."]& 1) != 0)
        {
          v15 = 1;
        }

        else
        {
          v36 = [[TRIDeferredDeleter alloc] initForRootDir:v25];
          v15 = [v36 unmarkItemAtRelativePath:v29];
        }
      }
    }

    _Block_object_dispose(v52, 8);
  }

  else
  {
    v31 = TRILogCategory_Server();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v55 = managedPathCopy;
      _os_log_error_impl(&dword_26F567000, v31, OS_LOG_TYPE_ERROR, "Attempting to symlink to a non-managed path: %{public}@", buf, 0xCu);
    }

    v15 = 0;
  }

LABEL_25:
  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

void __78__TRIReferenceManagedDir_symlinkFromCurrentPath_withFuturePath_toManagedPath___block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCAA00] defaultManager];
  v3 = [*(a1 + 56) _reverseLinksDirForManagedDir:*(a1 + 32)];
  v20 = 0;
  v4 = [v2 createDirectoryAtPath:v3 withIntermediateDirectories:1 attributes:0 error:&v20];
  v5 = v20;

  if ((v4 & 1) == 0)
  {
    v6 = TRILogCategory_Server();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v22 = v5;
      _os_log_error_impl(&dword_26F567000, v6, OS_LOG_TYPE_ERROR, "Failed to create reverse link dir: %{public}@", buf, 0xCu);
    }
  }

  v7 = objc_autoreleasePoolPush();
  v8 = [*(a1 + 56) _reverseLinksDirForManagedDir:*(a1 + 32)];
  v9 = objc_alloc(MEMORY[0x277CCACA8]);
  v10 = objc_opt_new();
  v11 = [v10 UUIDString];
  v12 = [v9 initWithFormat:@"link-%@", v11];
  v13 = [v8 stringByAppendingPathComponent:v12];

  objc_autoreleasePoolPop(v7);
  if (symlink([*(a1 + 40) fileSystemRepresentation], objc_msgSend(v13, "fileSystemRepresentation")))
  {
    v14 = TRILogCategory_Server();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v16 = *(a1 + 40);
      v17 = __error();
      v18 = strerror(*v17);
      v19 = *__error();
      *buf = 138544130;
      v22 = v13;
      v23 = 2114;
      v24 = v16;
      v25 = 2080;
      v26 = v18;
      v27 = 1024;
      v28 = v19;
      _os_log_error_impl(&dword_26F567000, v14, OS_LOG_TYPE_ERROR, "Failed to create symlink %{public}@ --> %{public}@: %s (%d)", buf, 0x26u);
    }

    *(*(*(a1 + 48) + 8) + 24) = 0;
  }

  v15 = *MEMORY[0x277D85DE8];
}

+ (BOOL)_isTargetOfSymlink:(id)symlink containedInManagedDir:(id)dir
{
  v42 = *MEMORY[0x277D85DE8];
  symlinkCopy = symlink;
  dirCopy = dir;
  if ([symlinkCopy length])
  {
    v9 = objc_autoreleasePoolPush();
    bzero(buf, 0x400uLL);
    *__error() = 0;
    v10 = readlink([symlinkCopy fileSystemRepresentation], buf, 0x400uLL);
    if ((v10 & 0x8000000000000000) != 0)
    {
      if (*__error() == 2)
      {
        v17 = 0;
LABEL_24:
        v16 = 0;
LABEL_25:

        objc_autoreleasePoolPop(v9);
        goto LABEL_26;
      }

      v11 = TRILogCategory_Server();
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_20;
      }

      v24 = __error();
      v25 = strerror(*v24);
      v26 = *__error();
      *v32 = 138543874;
      v33 = symlinkCopy;
      v34 = 2080;
      v35 = v25;
      v36 = 1024;
      v37 = v26;
      v12 = "Failed to resolve symlink %{public}@: %s (%d)";
      v13 = v11;
      v14 = 28;
    }

    else
    {
      if (v10 < 0x400)
      {
        buf[v10] = 0;
        v17 = stringForUTF8Path(buf);
        if ([v17 hasPrefix:@"/"])
        {
          if (!v17)
          {
            currentHandler = [MEMORY[0x277CCA890] currentHandler];
            [currentHandler handleFailureInMethod:a2 object:self file:@"TRIReferenceManagedDir.m" lineNumber:303 description:{@"Invalid parameter not satisfying: %@", @"absLinkTarget"}];
          }

          bzero(buf, 0x400uLL);
          v18 = realpath_DARWIN_EXTSN([dirCopy fileSystemRepresentation], buf);
          if (v18)
          {
            v19 = stringForUTF8Path(v18);
            if (!v19)
            {
              currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
              [currentHandler2 handleFailureInMethod:a2 object:self file:@"TRIReferenceManagedDir.m" lineNumber:317 description:{@"Invalid parameter not satisfying: %@", @"absManagedDir"}];
            }

            if ([v17 isEqualToString:v19])
            {
              v16 = 1;
            }

            else
            {
              v23 = [v19 stringByAppendingString:@"/"];

              v16 = [v17 hasPrefix:v23];
              v19 = v23;
            }
          }

          else
          {
            v22 = TRILogCategory_Server();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
            {
              v27 = __error();
              v28 = strerror(*v27);
              v29 = *__error();
              *v32 = 138543874;
              v33 = dirCopy;
              v34 = 2080;
              v35 = v28;
              v36 = 1024;
              v37 = v29;
              _os_log_error_impl(&dword_26F567000, v22, OS_LOG_TYPE_ERROR, "Failed to canonicalize reference-managed directory %{public}@: %s (%d)", v32, 0x1Cu);
            }

            v19 = 0;
            v16 = 0;
          }

          goto LABEL_25;
        }

        v11 = TRILogCategory_Server();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          *v32 = 138543618;
          v33 = symlinkCopy;
          v34 = 2114;
          v35 = v17;
          _os_log_error_impl(&dword_26F567000, v11, OS_LOG_TYPE_ERROR, "Symlink into managed directory is expected to be absolute: %{public}@ --> %{public}@", v32, 0x16u);
        }

        goto LABEL_23;
      }

      v11 = TRILogCategory_Server();
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
LABEL_20:
        v17 = 0;
LABEL_23:

        goto LABEL_24;
      }

      *v32 = 138543362;
      v33 = symlinkCopy;
      v12 = "Target of symlink %{public}@ exceeds maximum length.";
      v13 = v11;
      v14 = 12;
    }

    _os_log_error_impl(&dword_26F567000, v13, OS_LOG_TYPE_ERROR, v12, v32, v14);
    goto LABEL_20;
  }

  v15 = TRILogCategory_Server();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543618;
    v39 = symlinkCopy;
    v40 = 2114;
    v41 = dirCopy;
    _os_log_error_impl(&dword_26F567000, v15, OS_LOG_TYPE_ERROR, "Failed to derive file system encoding of symlin: %{public}@ in managed directory: %{public}@", buf, 0x16u);
  }

  v16 = 0;
LABEL_26:

  v20 = *MEMORY[0x277D85DE8];
  return v16;
}

+ (id)_collectDeadSymlinksForManagedDir:(id)dir withLockWitness:(TRIFlockWitness_ *)witness liveSymlinkCount:(unsigned int *)count
{
  v46 = *MEMORY[0x277D85DE8];
  dirCopy = dir;
  v9 = objc_autoreleasePoolPush();
  *count = 0;
  v10 = objc_opt_new();
  if (!v10)
  {
    v33 = 0;
    goto LABEL_26;
  }

  v37 = a2;
  v11 = MEMORY[0x277CBEBC0];
  selfCopy = self;
  v12 = [self _reverseLinksDirForManagedDir:dirCopy];
  v13 = [v11 fileURLWithPath:v12 isDirectory:1];

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v15 = [defaultManager enumeratorAtURL:v13 includingPropertiesForKeys:0 options:1 errorHandler:0];

  v16 = objc_autoreleasePoolPush();
  nextObject = [v15 nextObject];
  if (!nextObject)
  {
LABEL_23:
    objc_autoreleasePoolPop(v16);
    v33 = v10;
    goto LABEL_24;
  }

  nextObject2 = nextObject;
  while (1)
  {
    ++*count;
    path = [nextObject2 path];
    if (!path)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:v37 object:selfCopy file:@"TRIReferenceManagedDir.m" lineNumber:360 description:{@"Invalid parameter not satisfying: %@", @"reverseLinkPath"}];
    }

    bzero(v45, 0x400uLL);
    v20 = readlink([path fileSystemRepresentation], v45, 0x400uLL);
    if ((v20 & 0x8000000000000000) == 0)
    {
      break;
    }

    v21 = TRILogCategory_Server();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v24 = __error();
      v36 = v10;
      v25 = dirCopy;
      v26 = v13;
      v27 = v9;
      v28 = strerror(*v24);
      v29 = *__error();
      *buf = 138543874;
      v40 = path;
      v41 = 2080;
      v42 = v28;
      v9 = v27;
      v13 = v26;
      dirCopy = v25;
      v10 = v36;
      v43 = 1024;
      v44 = v29;
      v22 = v21;
      v23 = "Failed to resolve reverse-link %{public}@: %s (%d)";
      v30 = 28;
      goto LABEL_22;
    }

LABEL_14:

    v31 = 0;
LABEL_15:

    objc_autoreleasePoolPop(v16);
    v16 = objc_autoreleasePoolPush();
    nextObject2 = [v15 nextObject];
    if (!nextObject2)
    {
      goto LABEL_23;
    }
  }

  if (!v20)
  {
    v21 = TRILogCategory_Server();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v40 = path;
      v22 = v21;
      v23 = "Target of reverse-link %{public}@ resolves to an empty string.";
LABEL_21:
      v30 = 12;
LABEL_22:
      _os_log_error_impl(&dword_26F567000, v22, OS_LOG_TYPE_ERROR, v23, buf, v30);
      goto LABEL_14;
    }

    goto LABEL_14;
  }

  if (v20 >= 0x400)
  {
    v21 = TRILogCategory_Server();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v40 = path;
      v22 = v21;
      v23 = "Target of reverse-link %{public}@ exceeds max path length.";
      goto LABEL_21;
    }

    goto LABEL_14;
  }

  v45[v20] = 0;
  v31 = stringForUTF8Path(v45);
  if ([selfCopy _isTargetOfSymlink:v31 containedInManagedDir:dirCopy])
  {
    goto LABEL_15;
  }

  if ([v10 addString:path])
  {
    --*count;
    goto LABEL_15;
  }

  objc_autoreleasePoolPop(v16);
  v33 = 0;
LABEL_24:

LABEL_26:
  objc_autoreleasePoolPop(v9);

  v34 = *MEMORY[0x277D85DE8];

  return v33;
}

+ (BOOL)_removePaths:(id)paths withLockWitness:(TRIFlockWitness_ *)witness numRemoved:(unsigned int *)removed
{
  pathsCopy = paths;
  v7 = pathsCopy;
  if (removed)
  {
    *removed = 0;
  }

  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 1;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __66__TRIReferenceManagedDir__removePaths_withLockWitness_numRemoved___block_invoke;
  v10[3] = &unk_279DE26D0;
  v10[4] = &v11;
  v10[5] = removed;
  if ([pathsCopy enumerateStringsWithBlock:v10])
  {
    v8 = *(v12 + 24);
  }

  else
  {
    v8 = 0;
  }

  _Block_object_dispose(&v11, 8);

  return v8 & 1;
}

void __66__TRIReferenceManagedDir__removePaths_withLockWitness_numRemoved___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([v3 length])
  {
    if (unlink([v3 fileSystemRepresentation]))
    {
      v4 = TRILogCategory_Server();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        v7 = __error();
        v8 = strerror(*v7);
        v9 = *__error();
        v10 = 138543874;
        v11 = v3;
        v12 = 2080;
        v13 = v8;
        v14 = 1024;
        v15 = v9;
        _os_log_error_impl(&dword_26F567000, v4, OS_LOG_TYPE_ERROR, "Failed to unlink %{public}@: %s (%d)", &v10, 0x1Cu);
      }

      *(*(*(a1 + 32) + 8) + 24) = 0;
    }

    else
    {
      v5 = *(a1 + 40);
      if (v5)
      {
        ++*v5;
      }
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

+ (BOOL)_deleteReferenceManagedDirectory:(id)directory usingTempDir:(id)dir managedDirWasDeleted:(BOOL *)deleted
{
  v56 = *MEMORY[0x277D85DE8];
  directoryCopy = directory;
  dirCopy = dir;
  v9 = objc_autoreleasePoolPush();
  v10 = TRILogCategory_Server();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v49 = directoryCopy;
    _os_log_impl(&dword_26F567000, v10, OS_LOG_TYPE_DEFAULT, "GC is deleting reference-managed directory: %{public}@", buf, 0xCu);
  }

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v47 = 0;
  v12 = [defaultManager triRemoveCachedANEBinariesForModelsFromPath:directoryCopy error:&v47];
  v13 = v47;
  if ((v12 & 1) == 0)
  {
    v14 = TRILogCategory_Server();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v49 = v13;
      _os_log_error_impl(&dword_26F567000, v14, OS_LOG_TYPE_ERROR, "Failed to purge ANE cache during GC: %{public}@", buf, 0xCu);
    }
  }

  v44 = dirCopy;
  if (dirCopy)
  {
    v15 = defaultManager;
    deletedCopy = deleted;
    defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
    v46 = 0;
    v18 = [defaultManager2 createDirectoryAtPath:dirCopy withIntermediateDirectories:1 attributes:0 error:&v46];
    v19 = v46;

    if ((v18 & 1) == 0)
    {
      v20 = TRILogCategory_Server();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v49 = v19;
        _os_log_error_impl(&dword_26F567000, v20, OS_LOG_TYPE_ERROR, "Failed to create local temp directory: %{public}@", buf, 0xCu);
      }
    }

    v21 = objc_alloc(MEMORY[0x277CCACA8]);
    uUIDString = objc_opt_new();
    [uUIDString UUIDString];
    v23 = v13;
    v25 = v24 = v9;
    v26 = [v21 initWithFormat:@"delete-%@", v25];
    v27 = [v44 stringByAppendingPathComponent:v26];

    v9 = v24;
    v13 = v23;
    deleted = deletedCopy;
    defaultManager = v15;
  }

  else
  {
    v28 = objc_alloc(MEMORY[0x277CCACA8]);
    v19 = objc_opt_new();
    uUIDString = [v19 UUIDString];
    v27 = [v28 initWithFormat:@"%@-delete-%@", directoryCopy, uUIDString];
  }

  fileSystemRepresentation = [directoryCopy fileSystemRepresentation];
  fileSystemRepresentation2 = [v27 fileSystemRepresentation];
  rename(fileSystemRepresentation, fileSystemRepresentation2, v31);
  if (v32)
  {
    v33 = TRILogCategory_Server();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v41 = __error();
      v42 = strerror(*v41);
      v43 = *__error();
      *buf = 138544130;
      v49 = directoryCopy;
      v50 = 2114;
      v51 = v27;
      v52 = 2080;
      v53 = v42;
      v54 = 1024;
      v55 = v43;
      _os_log_error_impl(&dword_26F567000, v33, OS_LOG_TYPE_ERROR, "Failed to rename %{public}@ --> %{public}@: %s (%d)", buf, 0x26u);
    }

    v34 = 0;
    goto LABEL_22;
  }

  if (deleted)
  {
    *deleted = 1;
  }

  defaultManager3 = [MEMORY[0x277CCAA00] defaultManager];
  v45 = 0;
  v36 = [defaultManager3 triForceRemoveItemAtPath:v27 error:&v45];
  v33 = v45;

  if (v36)
  {
    v34 = 1;
LABEL_22:
    v37 = v44;
    goto LABEL_23;
  }

  v40 = TRILogCategory_Server();
  v37 = v44;
  if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v49 = v33;
    _os_log_error_impl(&dword_26F567000, v40, OS_LOG_TYPE_ERROR, "Failed to remove GC'd reference-managed directory: %{public}@", buf, 0xCu);
  }

  v34 = 0;
LABEL_23:

  objc_autoreleasePoolPop(v9);
  v38 = *MEMORY[0x277D85DE8];
  return v34;
}

+ (BOOL)_testDeletionEligibilityForManagedDir:(id)dir withExternalReferenceStore:(id)store flockWitness:(TRIFlockWitness_ *)witness logPrefix:(id)prefix isEligible:(BOOL *)eligible
{
  *&v34[13] = *MEMORY[0x277D85DE8];
  dirCopy = dir;
  storeCopy = store;
  prefixCopy = prefix;
  LOBYTE(v30) = 0;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v16 = [self _metadataDirForManagedDir:dirCopy];
  v17 = [defaultManager fileExistsAtPath:v16 isDirectory:&v30];

  if (!v17 || (v30 & 1) == 0)
  {
    v24 = TRILogCategory_Server();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v32 = prefixCopy;
      v33 = 2114;
      *v34 = dirCopy;
      _os_log_error_impl(&dword_26F567000, v24, OS_LOG_TYPE_ERROR, "%{public}@Attempted to garbage-collect directory which is not reference-managed: %{public}@", buf, 0x16u);
    }

    goto LABEL_17;
  }

  v30 = 0;
  v18 = [self _collectDeadSymlinksForManagedDir:dirCopy withLockWitness:witness liveSymlinkCount:&v30];
  if (!v18)
  {
LABEL_17:
    v25 = 0;
    goto LABEL_18;
  }

  v19 = v18;
  v20 = TRILogCategory_Server();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    v32 = prefixCopy;
    v33 = 1024;
    *v34 = v30;
    v34[2] = 2114;
    *&v34[3] = dirCopy;
    _os_log_impl(&dword_26F567000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@GC scan found %u live symlinks into reference-managed directory: %{public}@", buf, 0x1Cu);
  }

  v29 = 0;
  if (![self _removePaths:v19 withLockWitness:witness numRemoved:&v29])
  {

    goto LABEL_17;
  }

  v21 = TRILogCategory_Server();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    v32 = prefixCopy;
    v33 = 1024;
    *v34 = v29;
    v34[2] = 2114;
    *&v34[3] = dirCopy;
    _os_log_impl(&dword_26F567000, v21, OS_LOG_TYPE_DEFAULT, "%{public}@Removed %u dead symlinks from reference-managed directory: %{public}@", buf, 0x1Cu);
  }

  if (storeCopy && [storeCopy hasReferenceToPath:dirCopy])
  {
    v22 = TRILogCategory_Server();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v32 = prefixCopy;
      v33 = 2114;
      *v34 = dirCopy;
      _os_log_impl(&dword_26F567000, v22, OS_LOG_TYPE_DEFAULT, "%{public}@GC scan found a nonzero external reference count for reference-managed directory: %{public}@", buf, 0x16u);
    }

    v23 = 0;
  }

  else
  {
    v22 = TRILogCategory_Server();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v32 = prefixCopy;
      v33 = 2114;
      *v34 = dirCopy;
      _os_log_impl(&dword_26F567000, v22, OS_LOG_TYPE_DEFAULT, "%{public}@GC scan found no external references for reference-managed directory: %{public}@", buf, 0x16u);
    }

    v23 = 1;
  }

  if (v30)
  {
    v28 = 0;
  }

  else
  {
    v28 = v23;
  }

  *eligible = v28;
  v25 = 1;
LABEL_18:

  v26 = *MEMORY[0x277D85DE8];
  return v25;
}

+ (BOOL)collectGarbageForManagedDir:(id)dir withExternalReferenceStore:(id)store usingTempDir:(id)tempDir managedDirWasDeleted:(BOOL *)deleted
{
  v49 = *MEMORY[0x277D85DE8];
  dirCopy = dir;
  storeCopy = store;
  tempDirCopy = tempDir;
  if (!dirCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIReferenceManagedDir.m" lineNumber:528 description:{@"Invalid parameter not satisfying: %@", @"managedDir"}];
  }

  if (![dirCopy length])
  {
    v21 = TRILogCategory_Server();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      LODWORD(v46) = 136315138;
      *(&v46 + 4) = "+[TRIReferenceManagedDir collectGarbageForManagedDir:withExternalReferenceStore:usingTempDir:managedDirWasDeleted:]";
      _os_log_error_impl(&dword_26F567000, v21, OS_LOG_TYPE_ERROR, "%s has empty path arg: managedDir", &v46, 0xCu);
    }

    goto LABEL_29;
  }

  if (tempDirCopy && ![tempDirCopy length])
  {
    v21 = TRILogCategory_Server();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      LODWORD(v46) = 136315138;
      *(&v46 + 4) = "+[TRIReferenceManagedDir collectGarbageForManagedDir:withExternalReferenceStore:usingTempDir:managedDirWasDeleted:]";
      _os_log_error_impl(&dword_26F567000, v21, OS_LOG_TYPE_ERROR, "%s has empty path arg: tempDir", &v46, 0xCu);
    }

LABEL_29:

    v20 = 0;
    goto LABEL_30;
  }

  *&v46 = 0;
  *(&v46 + 1) = &v46;
  v47 = 0x2020000000;
  v48 = 1;
  if (deleted)
  {
    *deleted = 0;
  }

  v40 = 0;
  v41 = &v40;
  v42 = 0x2020000000;
  v43 = 0;
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __115__TRIReferenceManagedDir_collectGarbageForManagedDir_withExternalReferenceStore_usingTempDir_managedDirWasDeleted___block_invoke;
  v34[3] = &unk_279DE3230;
  v37 = &v46;
  selfCopy = self;
  v14 = dirCopy;
  v35 = v14;
  v15 = storeCopy;
  v36 = v15;
  v38 = &v40;
  v16 = [self _acquireLockOnDir:v14 withLockingMode:5 andRunBlock:v34];
  if (v16 == 1)
  {
    v22 = TRILogCategory_Server();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v45 = v14;
      _os_log_impl(&dword_26F567000, v22, OS_LOG_TYPE_DEFAULT, "[LOCK_SH] GC scan found active usage of reference-managed directory: %{public}@", buf, 0xCu);
    }

    v20 = 1;
LABEL_25:

    goto LABEL_26;
  }

  if (v16 != 2 && *(*(&v46 + 1) + 24) == 1)
  {
    if (*(v41 + 24) != 1)
    {
      v20 = 1;
      goto LABEL_26;
    }

    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __115__TRIReferenceManagedDir_collectGarbageForManagedDir_withExternalReferenceStore_usingTempDir_managedDirWasDeleted___block_invoke_67;
    v26[3] = &unk_279DE3258;
    v30 = &v40;
    v31 = &v46;
    selfCopy2 = self;
    v17 = v14;
    v27 = v17;
    v28 = v15;
    v29 = tempDirCopy;
    deletedCopy = deleted;
    v18 = [self _acquireLockOnDir:v17 withLockingMode:6 andRunBlock:v26];
    if (v18 == 2)
    {
      v20 = 0;
    }

    else
    {
      if (v18 == 1)
      {
        v19 = TRILogCategory_Server();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v45 = v17;
          _os_log_impl(&dword_26F567000, v19, OS_LOG_TYPE_DEFAULT, "[LOCK_EX] GC scan found active usage of reference-managed directory: %{public}@", buf, 0xCu);
        }
      }

      v20 = *(*(&v46 + 1) + 24);
    }

    v22 = v27;
    goto LABEL_25;
  }

  v20 = 0;
LABEL_26:

  _Block_object_dispose(&v40, 8);
  _Block_object_dispose(&v46, 8);
LABEL_30:

  v23 = *MEMORY[0x277D85DE8];
  return v20 & 1;
}

void __115__TRIReferenceManagedDir_collectGarbageForManagedDir_withExternalReferenceStore_usingTempDir_managedDirWasDeleted___block_invoke(uint64_t a1, uint64_t a2)
{
  *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 64) _testDeletionEligibilityForManagedDir:*(a1 + 32) withExternalReferenceStore:*(a1 + 40) flockWitness:a2 logPrefix:@"[LOCK_SH] " isEligible:*(*(a1 + 56) + 8) + 24];
  if (*(*(*(a1 + 48) + 8) + 24) == 1 && (*(*(*(a1 + 56) + 8) + 24) & 1) == 0)
  {
    v4 = [[TRIDeferredDeleter alloc] initForRootDir:*(a1 + 32)];
    *(*(*(a1 + 48) + 8) + 24) = [v4 collectGarbageWithRootDirLockWitness:a2 externalReferenceStore:*(a1 + 40)];
  }
}

uint64_t __115__TRIReferenceManagedDir_collectGarbageForManagedDir_withExternalReferenceStore_usingTempDir_managedDirWasDeleted___block_invoke_67(uint64_t a1, uint64_t a2)
{
  *(*(*(a1 + 56) + 8) + 24) = 0;
  result = [*(a1 + 72) _testDeletionEligibilityForManagedDir:*(a1 + 32) withExternalReferenceStore:*(a1 + 40) flockWitness:a2 logPrefix:@"[LOCK_EX] " isEligible:*(*(a1 + 56) + 8) + 24];
  *(*(*(a1 + 64) + 8) + 24) = result;
  if (*(*(*(a1 + 64) + 8) + 24) == 1 && *(*(*(a1 + 56) + 8) + 24) == 1)
  {
    result = [*(a1 + 72) _deleteReferenceManagedDirectory:*(a1 + 32) usingTempDir:*(a1 + 48) managedDirWasDeleted:*(a1 + 80)];
    *(*(*(a1 + 64) + 8) + 24) = result;
  }

  return result;
}

+ (BOOL)collectDeferredDeletionItemsWithManagedDir:(id)dir
{
  v22 = *MEMORY[0x277D85DE8];
  dirCopy = dir;
  if (!dirCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIReferenceManagedDir.m" lineNumber:619 description:{@"Invalid parameter not satisfying: %@", @"managedDir"}];
  }

  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 1;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __69__TRIReferenceManagedDir_collectDeferredDeletionItemsWithManagedDir___block_invoke;
  v13[3] = &unk_279DE3280;
  v6 = dirCopy;
  v14 = v6;
  v15 = &v16;
  v7 = [self _acquireLockOnDir:v6 withLockingMode:5 andRunBlock:v13];
  if (v7 == 1)
  {
    v9 = TRILogCategory_Server();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v21 = v6;
      _os_log_impl(&dword_26F567000, v9, OS_LOG_TYPE_DEFAULT, "[LOCK_SH] GC scan found active usage of reference-managed directory: %{public}@", buf, 0xCu);
    }

    v8 = 1;
  }

  else if (v7 == 2)
  {
    v8 = 0;
  }

  else
  {
    v8 = *(v17 + 24);
  }

  _Block_object_dispose(&v16, 8);
  v10 = *MEMORY[0x277D85DE8];
  return v8 & 1;
}

void __69__TRIReferenceManagedDir_collectDeferredDeletionItemsWithManagedDir___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [[TRIDeferredDeleter alloc] initForRootDir:*(a1 + 32)];
  *(*(*(a1 + 40) + 8) + 24) = [v4 collectGarbageWithRootDirLockWitness:a2 externalReferenceStore:0];
}

+ (BOOL)isPathInManagedDir:(id)dir
{
  v3 = [self _containingManagedDirForPath:dir resolvedAbsPath:0];
  v4 = v3 != 0;

  return v4;
}

+ (BOOL)removeFileInManagedDirWithPath:(id)path inUseDeletionBehavior:(unsigned __int8)behavior wasDeleted:(BOOL *)deleted
{
  behaviorCopy = behavior;
  v41 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  v10 = objc_autoreleasePoolPush();
  *deleted = 0;
  if (!pathCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIReferenceManagedDir.m" lineNumber:654 description:{@"Invalid parameter not satisfying: %@", @"pathToRemove"}];
  }

  if ([pathCopy length])
  {
    *&v38 = 0;
    *(&v38 + 1) = &v38;
    v39 = 0x2020000000;
    v40 = 0;
    v11 = [objc_opt_class() _containingManagedDirForPath:pathCopy resolvedAbsPath:0];
    if (v11)
    {
      defaultManager = [MEMORY[0x277CCAA00] defaultManager];
      v13 = [defaultManager triPath:pathCopy relativeToParentPath:v11];

      if (![v13 isEqualToString:@"."])
      {
        defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
        v20 = [defaultManager2 fileExistsAtPath:pathCopy];

        if (v20)
        {
          if (behaviorCopy == 3)
          {
            defaultManager3 = [MEMORY[0x277CCAA00] defaultManager];
            v35 = 0;
            v16 = [defaultManager3 triForceRemoveItemAtPath:pathCopy error:&v35];
            v22 = v35;

            v23 = TRILogCategory_Server();
            v24 = v23;
            if (v16)
            {
              if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v37 = pathCopy;
                _os_log_impl(&dword_26F567000, v24, OS_LOG_TYPE_DEFAULT, "Successfully removed asset immediately: %@", buf, 0xCu);
              }

              *deleted = 1;
            }

            else
            {
              if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v37 = v22;
                _os_log_error_impl(&dword_26F567000, v24, OS_LOG_TYPE_ERROR, "Failed to remove path: %@", buf, 0xCu);
              }
            }
          }

          else
          {
            v31[0] = MEMORY[0x277D85DD0];
            v31[1] = 3221225472;
            v31[2] = __90__TRIReferenceManagedDir_removeFileInManagedDirWithPath_inUseDeletionBehavior_wasDeleted___block_invoke;
            v31[3] = &unk_279DE32A8;
            v25 = pathCopy;
            v32 = v25;
            v33 = &v38;
            deletedCopy = deleted;
            if ([self _acquireLockOnDir:v11 withLockingMode:6 andRunBlock:v31] == 1)
            {
              v26 = TRILogCategory_Server();
              if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138543362;
                v37 = v11;
                _os_log_impl(&dword_26F567000, v26, OS_LOG_TYPE_DEFAULT, "File removal attempt found active usage of reference-managed directory: %{public}@", buf, 0xCu);
              }

              if (behaviorCopy == 1)
              {
                v27 = TRILogCategory_Server();
                if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138543362;
                  v37 = v25;
                  _os_log_impl(&dword_26F567000, v27, OS_LOG_TYPE_DEFAULT, "Marking file %{public}@ for deferred deletion", buf, 0xCu);
                }

                v28 = [[TRIDeferredDeleter alloc] initForRootDir:v11];
                v29 = [v28 markItemAtRelativePath:v13];
                *(*(&v38 + 1) + 24) = v29;
              }

              else
              {
                *(*(&v38 + 1) + 24) = 1;
              }
            }

            v16 = *(*(&v38 + 1) + 24);
          }
        }

        else
        {
          v16 = 1;
          *deleted = 1;
        }

        goto LABEL_15;
      }

      v14 = TRILogCategory_Server();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v37 = v11;
        _os_log_error_impl(&dword_26F567000, v14, OS_LOG_TYPE_ERROR, "Managed directory file found to be same as root managed directory: %{public}@", buf, 0xCu);
      }
    }

    else
    {
      v13 = TRILogCategory_Server();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v37 = pathCopy;
        _os_log_error_impl(&dword_26F567000, v13, OS_LOG_TYPE_ERROR, "Managed directory file at path %{public}@ was not found inside a valid managed directory", buf, 0xCu);
      }
    }

    v16 = 0;
LABEL_15:

    _Block_object_dispose(&v38, 8);
    goto LABEL_16;
  }

  v15 = TRILogCategory_Server();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    LODWORD(v38) = 136315138;
    *(&v38 + 4) = "+[TRIReferenceManagedDir removeFileInManagedDirWithPath:inUseDeletionBehavior:wasDeleted:]";
    _os_log_error_impl(&dword_26F567000, v15, OS_LOG_TYPE_ERROR, "%s has empty path arg: pathToRemove", &v38, 0xCu);
  }

  v16 = 0;
LABEL_16:
  objc_autoreleasePoolPop(v10);

  v17 = *MEMORY[0x277D85DE8];
  return v16 & 1;
}

void __90__TRIReferenceManagedDir_removeFileInManagedDirWithPath_inUseDeletionBehavior_wasDeleted___block_invoke(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCAA00] defaultManager];
  v3 = a1[4];
  v9 = 0;
  v4 = [v2 triForceRemoveItemAtPath:v3 error:&v9];
  v5 = v9;

  if (v4)
  {
    v6 = a1[6];
    *(*(a1[5] + 8) + 24) = 1;
    *v6 = 1;
  }

  else
  {
    v7 = TRILogCategory_Server();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v11 = v5;
      _os_log_error_impl(&dword_26F567000, v7, OS_LOG_TYPE_ERROR, "Failed to remove path: %{public}@", buf, 0xCu);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

+ (BOOL)saveFromGarbageCollectionItemWithPath:(id)path
{
  v14 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  v4 = [objc_opt_class() _containingManagedDirForPath:pathCopy resolvedAbsPath:0];
  if (v4)
  {
    v5 = [[TRIDeferredDeleter alloc] initForRootDir:v4];
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v7 = [defaultManager triPath:pathCopy relativeToParentPath:v4];

    v8 = [v5 unmarkItemAtRelativePath:v7];
  }

  else
  {
    v9 = TRILogCategory_Server();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v12 = 138543362;
      v13 = pathCopy;
      _os_log_error_impl(&dword_26F567000, v9, OS_LOG_TYPE_ERROR, "Managed directory file at path %{public}@ was not found inside a valid managed directory", &v12, 0xCu);
    }

    v8 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];
  return v8;
}

@end