@interface TRIReferenceManagedDir
+ ($A5A652246548B43F8BC05201A1C72A70)_acquireLockOnDir:(id)a3 withLockingMode:(int)a4 andRunBlock:(id)a5;
+ (BOOL)_deleteReferenceManagedDirectory:(id)a3 usingTempDir:(id)a4 managedDirWasDeleted:(BOOL *)a5;
+ (BOOL)_isTargetOfSymlink:(id)a3 containedInManagedDir:(id)a4;
+ (BOOL)_removePaths:(id)a3 withLockWitness:(TRIFlockWitness_ *)a4 numRemoved:(unsigned int *)a5;
+ (BOOL)_testDeletionEligibilityForManagedDir:(id)a3 withExternalReferenceStore:(id)a4 flockWitness:(TRIFlockWitness_ *)a5 logPrefix:(id)a6 isEligible:(BOOL *)a7;
+ (BOOL)collectDeferredDeletionItemsWithManagedDir:(id)a3;
+ (BOOL)collectGarbageForManagedDir:(id)a3 withExternalReferenceStore:(id)a4 usingTempDir:(id)a5 managedDirWasDeleted:(BOOL *)a6;
+ (BOOL)createFromDir:(id)a3;
+ (BOOL)isPathInManagedDir:(id)a3;
+ (BOOL)removeFileInManagedDirWithPath:(id)a3 inUseDeletionBehavior:(unsigned __int8)a4 wasDeleted:(BOOL *)a5;
+ (BOOL)saveFromGarbageCollectionItemWithPath:(id)a3;
+ (BOOL)symlinkFromCurrentPath:(id)a3 withFuturePath:(id)a4 toManagedPath:(id)a5;
+ (id)_collectDeadSymlinksForManagedDir:(id)a3 withLockWitness:(TRIFlockWitness_ *)a4 liveSymlinkCount:(unsigned int *)a5;
+ (id)_containingManagedDirForPath:(id)a3 resolvedAbsPath:(id *)a4;
+ (id)_metadataDirForManagedDir:(id)a3;
+ (id)_reverseLinksDirForManagedDir:(id)a3;
@end

@implementation TRIReferenceManagedDir

+ (id)_metadataDirForManagedDir:(id)a3
{
  v3 = a3;
  v4 = objc_autoreleasePoolPush();
  v5 = [v3 stringByAppendingPathComponent:@"_refs"];
  objc_autoreleasePoolPop(v4);

  return v5;
}

+ (id)_reverseLinksDirForManagedDir:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = [a1 _metadataDirForManagedDir:v4];
  v7 = [v6 stringByAppendingPathComponent:@"revlinks"];

  objc_autoreleasePoolPop(v5);

  return v7;
}

+ ($A5A652246548B43F8BC05201A1C72A70)_acquireLockOnDir:(id)a3 withLockingMode:(int)a4 andRunBlock:(id)a5
{
  v34 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a5;
  v9 = objc_autoreleasePoolPush();
  v10 = open([v7 fileSystemRepresentation], 0);
  if (v10 < 0)
  {
    v13 = TRILogCategory_Server();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v19 = __error();
      v20 = strerror(*v19);
      v21 = *__error();
      v28 = 138543874;
      v29 = v7;
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
    if (flock(v10, a4))
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
          v29 = v7;
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
      v8[2](v8, &v28);
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
          v29 = v7;
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

+ (id)_containingManagedDirForPath:(id)a3 resolvedAbsPath:(id *)a4
{
  v39 = *MEMORY[0x277D85DE8];
  v6 = a3;
  bzero(v38, 0x400uLL);
  v7 = realpath_DARWIN_EXTSN([v6 fileSystemRepresentation], v38);
  if (v7)
  {
    v8 = v7;
    if (a4)
    {
      v9 = stringForUTF8Path(v7);
      v10 = *a4;
      *a4 = v9;
    }

    while (1)
    {
      v11 = stringForUTF8Path(v8);
      v25 = 0;
      v12 = [MEMORY[0x277CCAA00] defaultManager];
      v13 = [a1 _metadataDirForManagedDir:v11];
      v14 = [v12 fileExistsAtPath:v13 isDirectory:&v25];
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
          v27 = v6;
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
      v33 = v6;
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

+ (BOOL)createFromDir:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v16 = 0;
  v5 = [a1 _containingManagedDirForPath:v4 resolvedAbsPath:&v16];
  if (v5)
  {
    v6 = v5;
    LODWORD(a1) = [v5 isEqualToString:v16];
    v7 = TRILogCategory_Server();
    v8 = v7;
    if (a1)
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
      v18 = v4;
      v19 = 2114;
      v20 = v6;
      _os_log_error_impl(&dword_26F567000, v8, OS_LOG_TYPE_ERROR, "Cannot create reference-managed directory %{public}@ because it is nested in reference-managed directory: %{public}@", buf, 0x16u);
    }
  }

  else
  {

    v9 = [MEMORY[0x277CCAA00] defaultManager];
    v10 = [a1 _metadataDirForManagedDir:v4];
    v15 = 0;
    LOBYTE(a1) = [v9 createDirectoryAtPath:v10 withIntermediateDirectories:0 attributes:0 error:&v15];
    v11 = v15;

    if ((a1 & 1) == 0)
    {
      v12 = TRILogCategory_Server();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v18 = v4;
        v19 = 2114;
        v20 = v11;
        _os_log_error_impl(&dword_26F567000, v12, OS_LOG_TYPE_ERROR, "Failed to create reference-managed directory from %{public}@: %{public}@", buf, 0x16u);
      }
    }
  }

  v13 = *MEMORY[0x277D85DE8];
  return a1;
}

+ (BOOL)symlinkFromCurrentPath:(id)a3 withFuturePath:(id)a4 toManagedPath:(id)a5
{
  v62 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (v9)
  {
    if (v10)
    {
      goto LABEL_3;
    }

LABEL_52:
    v38 = [MEMORY[0x277CCA890] currentHandler];
    [v38 handleFailureInMethod:a2 object:a1 file:@"TRIReferenceManagedDir.m" lineNumber:178 description:{@"Invalid parameter not satisfying: %@", @"symlinkFuturePath"}];

    if (v11)
    {
      goto LABEL_4;
    }

    goto LABEL_53;
  }

  v37 = [MEMORY[0x277CCA890] currentHandler];
  [v37 handleFailureInMethod:a2 object:a1 file:@"TRIReferenceManagedDir.m" lineNumber:177 description:{@"Invalid parameter not satisfying: %@", @"symlinkCurrentPath"}];

  if (!v10)
  {
    goto LABEL_52;
  }

LABEL_3:
  if (v11)
  {
    goto LABEL_4;
  }

LABEL_53:
  v39 = [MEMORY[0x277CCA890] currentHandler];
  [v39 handleFailureInMethod:a2 object:a1 file:@"TRIReferenceManagedDir.m" lineNumber:179 description:{@"Invalid parameter not satisfying: %@", @"managedPath"}];

LABEL_4:
  if (![v9 length])
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

  if (![v10 length])
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

  if (![v11 length])
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

  if (([v10 isAbsolutePath] & 1) == 0)
  {
    v14 = TRILogCategory_Server();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v55 = v10;
      _os_log_error_impl(&dword_26F567000, v14, OS_LOG_TYPE_ERROR, "symlinkFuturePath %{public}@ is not absolute.", buf, 0xCu);
    }

    goto LABEL_23;
  }

  v12 = [MEMORY[0x277CCAA00] defaultManager];
  v13 = [v12 fileExistsAtPath:v9];

  if (v13)
  {
    v14 = TRILogCategory_Server();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v55 = v9;
      _os_log_error_impl(&dword_26F567000, v14, OS_LOG_TYPE_ERROR, "Unable to create symlink at %{public}@: file already exists", buf, 0xCu);
    }

LABEL_23:

LABEL_24:
    v15 = 0;
    goto LABEL_25;
  }

  bzero(buf, 0x400uLL);
  v18 = [v9 stringByDeletingLastPathComponent];
  v19 = realpath_DARWIN_EXTSN([v18 fileSystemRepresentation], buf);

  if (!v19)
  {
    v30 = TRILogCategory_Server();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      v33 = __error();
      v34 = strerror(*v33);
      v35 = *__error();
      *v52 = 138543874;
      *&v52[4] = v9;
      *&v52[12] = 2080;
      *&v52[14] = v34;
      *&v52[22] = 1024;
      v53 = v35;
      _os_log_error_impl(&dword_26F567000, v30, OS_LOG_TYPE_ERROR, "Unable to resolve parent dir for %{public}@: %s (%d)", v52, 0x1Cu);
    }

    goto LABEL_24;
  }

  v20 = stringForUTF8Path(v19);
  v21 = [v9 lastPathComponent];
  v22 = [v20 stringByAppendingPathComponent:v21];

  if (!v22)
  {
    v44 = [MEMORY[0x277CCA890] currentHandler];
    [v44 handleFailureInMethod:a2 object:a1 file:@"TRIReferenceManagedDir.m" lineNumber:209 description:{@"Invalid parameter not satisfying: %@", @"absSymlinkCurrentPath"}];
  }

  v51 = 0;
  v23 = [a1 _containingManagedDirForPath:v11 resolvedAbsPath:&v51];
  if (v23)
  {
    if (!v51)
    {
      v45 = [MEMORY[0x277CCA890] currentHandler];
      [v45 handleFailureInMethod:a2 object:a1 file:@"TRIReferenceManagedDir.m" lineNumber:217 description:{@"Invalid parameter not satisfying: %@", @"absLinkTarget"}];
    }

    *v52 = 0;
    *&v52[8] = v52;
    *&v52[16] = 0x2020000000;
    LOBYTE(v53) = 1;
    v24 = [a1 _metadataDirForManagedDir:v23];
    v46[0] = MEMORY[0x277D85DD0];
    v46[1] = 3221225472;
    v46[2] = __78__TRIReferenceManagedDir_symlinkFromCurrentPath_withFuturePath_toManagedPath___block_invoke;
    v46[3] = &unk_279DE2770;
    v50 = a1;
    v25 = v23;
    v47 = v25;
    v48 = v10;
    v49 = v52;
    v26 = [a1 _acquireLockOnDir:v24 withLockingMode:2 andRunBlock:v46];

    if (v26 || (*(*&v52[8] + 24) & 1) == 0)
    {
      v15 = 0;
    }

    else
    {
      v27 = [v51 fileSystemRepresentation];
      v28 = v22;
      if (symlink(v27, [v22 fileSystemRepresentation]))
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
        v32 = [MEMORY[0x277CCAA00] defaultManager];
        v29 = [v32 triPath:v11 relativeToParentPath:v25];

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
      v55 = v11;
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

+ (BOOL)_isTargetOfSymlink:(id)a3 containedInManagedDir:(id)a4
{
  v42 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if ([v7 length])
  {
    v9 = objc_autoreleasePoolPush();
    bzero(buf, 0x400uLL);
    *__error() = 0;
    v10 = readlink([v7 fileSystemRepresentation], buf, 0x400uLL);
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
      v33 = v7;
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
            v30 = [MEMORY[0x277CCA890] currentHandler];
            [v30 handleFailureInMethod:a2 object:a1 file:@"TRIReferenceManagedDir.m" lineNumber:303 description:{@"Invalid parameter not satisfying: %@", @"absLinkTarget"}];
          }

          bzero(buf, 0x400uLL);
          v18 = realpath_DARWIN_EXTSN([v8 fileSystemRepresentation], buf);
          if (v18)
          {
            v19 = stringForUTF8Path(v18);
            if (!v19)
            {
              v31 = [MEMORY[0x277CCA890] currentHandler];
              [v31 handleFailureInMethod:a2 object:a1 file:@"TRIReferenceManagedDir.m" lineNumber:317 description:{@"Invalid parameter not satisfying: %@", @"absManagedDir"}];
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
              v33 = v8;
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
          v33 = v7;
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
      v33 = v7;
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
    v39 = v7;
    v40 = 2114;
    v41 = v8;
    _os_log_error_impl(&dword_26F567000, v15, OS_LOG_TYPE_ERROR, "Failed to derive file system encoding of symlin: %{public}@ in managed directory: %{public}@", buf, 0x16u);
  }

  v16 = 0;
LABEL_26:

  v20 = *MEMORY[0x277D85DE8];
  return v16;
}

+ (id)_collectDeadSymlinksForManagedDir:(id)a3 withLockWitness:(TRIFlockWitness_ *)a4 liveSymlinkCount:(unsigned int *)a5
{
  v46 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = objc_autoreleasePoolPush();
  *a5 = 0;
  v10 = objc_opt_new();
  if (!v10)
  {
    v33 = 0;
    goto LABEL_26;
  }

  v37 = a2;
  v11 = MEMORY[0x277CBEBC0];
  v38 = a1;
  v12 = [a1 _reverseLinksDirForManagedDir:v8];
  v13 = [v11 fileURLWithPath:v12 isDirectory:1];

  v14 = [MEMORY[0x277CCAA00] defaultManager];
  v15 = [v14 enumeratorAtURL:v13 includingPropertiesForKeys:0 options:1 errorHandler:0];

  v16 = objc_autoreleasePoolPush();
  v17 = [v15 nextObject];
  if (!v17)
  {
LABEL_23:
    objc_autoreleasePoolPop(v16);
    v33 = v10;
    goto LABEL_24;
  }

  v18 = v17;
  while (1)
  {
    ++*a5;
    v19 = [v18 path];
    if (!v19)
    {
      v32 = [MEMORY[0x277CCA890] currentHandler];
      [v32 handleFailureInMethod:v37 object:v38 file:@"TRIReferenceManagedDir.m" lineNumber:360 description:{@"Invalid parameter not satisfying: %@", @"reverseLinkPath"}];
    }

    bzero(v45, 0x400uLL);
    v20 = readlink([v19 fileSystemRepresentation], v45, 0x400uLL);
    if ((v20 & 0x8000000000000000) == 0)
    {
      break;
    }

    v21 = TRILogCategory_Server();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v24 = __error();
      v36 = v10;
      v25 = v8;
      v26 = v13;
      v27 = v9;
      v28 = strerror(*v24);
      v29 = *__error();
      *buf = 138543874;
      v40 = v19;
      v41 = 2080;
      v42 = v28;
      v9 = v27;
      v13 = v26;
      v8 = v25;
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
    v18 = [v15 nextObject];
    if (!v18)
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
      v40 = v19;
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
      v40 = v19;
      v22 = v21;
      v23 = "Target of reverse-link %{public}@ exceeds max path length.";
      goto LABEL_21;
    }

    goto LABEL_14;
  }

  v45[v20] = 0;
  v31 = stringForUTF8Path(v45);
  if ([v38 _isTargetOfSymlink:v31 containedInManagedDir:v8])
  {
    goto LABEL_15;
  }

  if ([v10 addString:v19])
  {
    --*a5;
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

+ (BOOL)_removePaths:(id)a3 withLockWitness:(TRIFlockWitness_ *)a4 numRemoved:(unsigned int *)a5
{
  v6 = a3;
  v7 = v6;
  if (a5)
  {
    *a5 = 0;
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
  v10[5] = a5;
  if ([v6 enumerateStringsWithBlock:v10])
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

+ (BOOL)_deleteReferenceManagedDirectory:(id)a3 usingTempDir:(id)a4 managedDirWasDeleted:(BOOL *)a5
{
  v56 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = objc_autoreleasePoolPush();
  v10 = TRILogCategory_Server();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v49 = v7;
    _os_log_impl(&dword_26F567000, v10, OS_LOG_TYPE_DEFAULT, "GC is deleting reference-managed directory: %{public}@", buf, 0xCu);
  }

  v11 = [MEMORY[0x277CCAA00] defaultManager];
  v47 = 0;
  v12 = [v11 triRemoveCachedANEBinariesForModelsFromPath:v7 error:&v47];
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

  v44 = v8;
  if (v8)
  {
    v15 = v11;
    v16 = a5;
    v17 = [MEMORY[0x277CCAA00] defaultManager];
    v46 = 0;
    v18 = [v17 createDirectoryAtPath:v8 withIntermediateDirectories:1 attributes:0 error:&v46];
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
    v22 = objc_opt_new();
    [v22 UUIDString];
    v23 = v13;
    v25 = v24 = v9;
    v26 = [v21 initWithFormat:@"delete-%@", v25];
    v27 = [v44 stringByAppendingPathComponent:v26];

    v9 = v24;
    v13 = v23;
    a5 = v16;
    v11 = v15;
  }

  else
  {
    v28 = objc_alloc(MEMORY[0x277CCACA8]);
    v19 = objc_opt_new();
    v22 = [v19 UUIDString];
    v27 = [v28 initWithFormat:@"%@-delete-%@", v7, v22];
  }

  v29 = [v7 fileSystemRepresentation];
  v30 = [v27 fileSystemRepresentation];
  rename(v29, v30, v31);
  if (v32)
  {
    v33 = TRILogCategory_Server();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v41 = __error();
      v42 = strerror(*v41);
      v43 = *__error();
      *buf = 138544130;
      v49 = v7;
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

  if (a5)
  {
    *a5 = 1;
  }

  v35 = [MEMORY[0x277CCAA00] defaultManager];
  v45 = 0;
  v36 = [v35 triForceRemoveItemAtPath:v27 error:&v45];
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

+ (BOOL)_testDeletionEligibilityForManagedDir:(id)a3 withExternalReferenceStore:(id)a4 flockWitness:(TRIFlockWitness_ *)a5 logPrefix:(id)a6 isEligible:(BOOL *)a7
{
  *&v34[13] = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a6;
  LOBYTE(v30) = 0;
  v15 = [MEMORY[0x277CCAA00] defaultManager];
  v16 = [a1 _metadataDirForManagedDir:v12];
  v17 = [v15 fileExistsAtPath:v16 isDirectory:&v30];

  if (!v17 || (v30 & 1) == 0)
  {
    v24 = TRILogCategory_Server();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v32 = v14;
      v33 = 2114;
      *v34 = v12;
      _os_log_error_impl(&dword_26F567000, v24, OS_LOG_TYPE_ERROR, "%{public}@Attempted to garbage-collect directory which is not reference-managed: %{public}@", buf, 0x16u);
    }

    goto LABEL_17;
  }

  v30 = 0;
  v18 = [a1 _collectDeadSymlinksForManagedDir:v12 withLockWitness:a5 liveSymlinkCount:&v30];
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
    v32 = v14;
    v33 = 1024;
    *v34 = v30;
    v34[2] = 2114;
    *&v34[3] = v12;
    _os_log_impl(&dword_26F567000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@GC scan found %u live symlinks into reference-managed directory: %{public}@", buf, 0x1Cu);
  }

  v29 = 0;
  if (![a1 _removePaths:v19 withLockWitness:a5 numRemoved:&v29])
  {

    goto LABEL_17;
  }

  v21 = TRILogCategory_Server();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    v32 = v14;
    v33 = 1024;
    *v34 = v29;
    v34[2] = 2114;
    *&v34[3] = v12;
    _os_log_impl(&dword_26F567000, v21, OS_LOG_TYPE_DEFAULT, "%{public}@Removed %u dead symlinks from reference-managed directory: %{public}@", buf, 0x1Cu);
  }

  if (v13 && [v13 hasReferenceToPath:v12])
  {
    v22 = TRILogCategory_Server();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v32 = v14;
      v33 = 2114;
      *v34 = v12;
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
      v32 = v14;
      v33 = 2114;
      *v34 = v12;
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

  *a7 = v28;
  v25 = 1;
LABEL_18:

  v26 = *MEMORY[0x277D85DE8];
  return v25;
}

+ (BOOL)collectGarbageForManagedDir:(id)a3 withExternalReferenceStore:(id)a4 usingTempDir:(id)a5 managedDirWasDeleted:(BOOL *)a6
{
  v49 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  if (!v11)
  {
    v25 = [MEMORY[0x277CCA890] currentHandler];
    [v25 handleFailureInMethod:a2 object:a1 file:@"TRIReferenceManagedDir.m" lineNumber:528 description:{@"Invalid parameter not satisfying: %@", @"managedDir"}];
  }

  if (![v11 length])
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

  if (v13 && ![v13 length])
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
  if (a6)
  {
    *a6 = 0;
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
  v39 = a1;
  v14 = v11;
  v35 = v14;
  v15 = v12;
  v36 = v15;
  v38 = &v40;
  v16 = [a1 _acquireLockOnDir:v14 withLockingMode:5 andRunBlock:v34];
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
    v32 = a1;
    v17 = v14;
    v27 = v17;
    v28 = v15;
    v29 = v13;
    v33 = a6;
    v18 = [a1 _acquireLockOnDir:v17 withLockingMode:6 andRunBlock:v26];
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

+ (BOOL)collectDeferredDeletionItemsWithManagedDir:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (!v5)
  {
    v12 = [MEMORY[0x277CCA890] currentHandler];
    [v12 handleFailureInMethod:a2 object:a1 file:@"TRIReferenceManagedDir.m" lineNumber:619 description:{@"Invalid parameter not satisfying: %@", @"managedDir"}];
  }

  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 1;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __69__TRIReferenceManagedDir_collectDeferredDeletionItemsWithManagedDir___block_invoke;
  v13[3] = &unk_279DE3280;
  v6 = v5;
  v14 = v6;
  v15 = &v16;
  v7 = [a1 _acquireLockOnDir:v6 withLockingMode:5 andRunBlock:v13];
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

+ (BOOL)isPathInManagedDir:(id)a3
{
  v3 = [a1 _containingManagedDirForPath:a3 resolvedAbsPath:0];
  v4 = v3 != 0;

  return v4;
}

+ (BOOL)removeFileInManagedDirWithPath:(id)a3 inUseDeletionBehavior:(unsigned __int8)a4 wasDeleted:(BOOL *)a5
{
  v6 = a4;
  v41 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = objc_autoreleasePoolPush();
  *a5 = 0;
  if (!v9)
  {
    v30 = [MEMORY[0x277CCA890] currentHandler];
    [v30 handleFailureInMethod:a2 object:a1 file:@"TRIReferenceManagedDir.m" lineNumber:654 description:{@"Invalid parameter not satisfying: %@", @"pathToRemove"}];
  }

  if ([v9 length])
  {
    *&v38 = 0;
    *(&v38 + 1) = &v38;
    v39 = 0x2020000000;
    v40 = 0;
    v11 = [objc_opt_class() _containingManagedDirForPath:v9 resolvedAbsPath:0];
    if (v11)
    {
      v12 = [MEMORY[0x277CCAA00] defaultManager];
      v13 = [v12 triPath:v9 relativeToParentPath:v11];

      if (![v13 isEqualToString:@"."])
      {
        v19 = [MEMORY[0x277CCAA00] defaultManager];
        v20 = [v19 fileExistsAtPath:v9];

        if (v20)
        {
          if (v6 == 3)
          {
            v21 = [MEMORY[0x277CCAA00] defaultManager];
            v35 = 0;
            v16 = [v21 triForceRemoveItemAtPath:v9 error:&v35];
            v22 = v35;

            v23 = TRILogCategory_Server();
            v24 = v23;
            if (v16)
            {
              if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v37 = v9;
                _os_log_impl(&dword_26F567000, v24, OS_LOG_TYPE_DEFAULT, "Successfully removed asset immediately: %@", buf, 0xCu);
              }

              *a5 = 1;
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
            v25 = v9;
            v32 = v25;
            v33 = &v38;
            v34 = a5;
            if ([a1 _acquireLockOnDir:v11 withLockingMode:6 andRunBlock:v31] == 1)
            {
              v26 = TRILogCategory_Server();
              if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138543362;
                v37 = v11;
                _os_log_impl(&dword_26F567000, v26, OS_LOG_TYPE_DEFAULT, "File removal attempt found active usage of reference-managed directory: %{public}@", buf, 0xCu);
              }

              if (v6 == 1)
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
          *a5 = 1;
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
        v37 = v9;
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

+ (BOOL)saveFromGarbageCollectionItemWithPath:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [objc_opt_class() _containingManagedDirForPath:v3 resolvedAbsPath:0];
  if (v4)
  {
    v5 = [[TRIDeferredDeleter alloc] initForRootDir:v4];
    v6 = [MEMORY[0x277CCAA00] defaultManager];
    v7 = [v6 triPath:v3 relativeToParentPath:v4];

    v8 = [v5 unmarkItemAtRelativePath:v7];
  }

  else
  {
    v9 = TRILogCategory_Server();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v12 = 138543362;
      v13 = v3;
      _os_log_error_impl(&dword_26F567000, v9, OS_LOG_TYPE_ERROR, "Managed directory file at path %{public}@ was not found inside a valid managed directory", &v12, 0xCu);
    }

    v8 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];
  return v8;
}

@end