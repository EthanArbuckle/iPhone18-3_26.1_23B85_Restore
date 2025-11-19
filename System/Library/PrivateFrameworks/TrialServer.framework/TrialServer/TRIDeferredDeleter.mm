@interface TRIDeferredDeleter
+ (BOOL)_createSymlinkIfNonExistentAtPath:(id)a3 withDestinationPath:(id)a4;
+ (BOOL)_removeDeferredDeletedItemWithLink:(id)a3 externalReferenceStore:(id)a4 wasDeleted:(BOOL *)a5;
- (BOOL)_cleanupWithLinksDirLockWitness:(TRIFlockWitness_ *)a3 externalReferenceStore:(id)a4;
- (BOOL)collectGarbageWithRootDirLockWitness:(TRIFlockWitness_ *)a3 externalReferenceStore:(id)a4;
- (BOOL)markItemAtRelativePath:(id)a3;
- (BOOL)unmarkItemAtRelativePath:(id)a3;
- (id)_collectRelativeLinkPathsWithLinksDirLockWitness:(TRIFlockWitness_ *)a3;
- (id)_deferredDeletedLinksDir;
- (id)_linkPathForDeferredDeletedItemAtPath:(id)a3;
- (id)initForRootDir:(id)a3;
@end

@implementation TRIDeferredDeleter

- (id)initForRootDir:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = TRIDeferredDeleter;
  v5 = [(TRIDeferredDeleter *)&v9 init];
  if (v5)
  {
    v6 = [v4 stringByStandardizingPath];
    rootDir = v5->_rootDir;
    v5->_rootDir = v6;
  }

  return v5;
}

- (BOOL)markItemAtRelativePath:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = [(NSString *)self->_rootDir stringByAppendingPathComponent:v4];
  v7 = [v6 stringByStandardizingPath];
  v8 = [v7 isEqualToString:self->_rootDir];

  if (v8)
  {
    v9 = TRILogCategory_Server();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v16 = 138543362;
      v17 = v6;
      _os_log_error_impl(&dword_26F567000, v9, OS_LOG_TYPE_ERROR, "Cannot mark root directory %{public}@ for deferred deletion", &v16, 0xCu);
    }

    v10 = 0;
  }

  else
  {
    v11 = [(TRIDeferredDeleter *)self _deferredDeletedLinksDir];
    v9 = [v11 stringByAppendingPathComponent:v4];

    v12 = [v9 stringByDeletingLastPathComponent];
    if ([MEMORY[0x277CCAA00] triIdempotentCreateDirectoryOrFaultWithPath:v12] && objc_msgSend(objc_opt_class(), "_createSymlinkIfNonExistentAtPath:withDestinationPath:", v9, v6))
    {
      v13 = TRILogCategory_Server();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        v16 = 138543362;
        v17 = v6;
        _os_log_debug_impl(&dword_26F567000, v13, OS_LOG_TYPE_DEBUG, "Marked %{public}@ for deferred deletion", &v16, 0xCu);
      }

      v10 = 1;
    }

    else
    {
      v10 = 0;
    }
  }

  objc_autoreleasePoolPop(v5);
  v14 = *MEMORY[0x277D85DE8];
  return v10;
}

+ (BOOL)_createSymlinkIfNonExistentAtPath:(id)a3 withDestinationPath:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  if (symlink([v6 fileSystemRepresentation], objc_msgSend(v5, "fileSystemRepresentation")) && *__error() != 17)
  {
    v8 = TRILogCategory_Server();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v11 = __error();
      v12 = strerror(*v11);
      v13 = *__error();
      v14 = 138544130;
      v15 = v5;
      v16 = 2114;
      v17 = v6;
      v18 = 2080;
      v19 = v12;
      v20 = 1024;
      v21 = v13;
      _os_log_error_impl(&dword_26F567000, v8, OS_LOG_TYPE_ERROR, "Failed to create symlink %{public}@ --> %{public}@: %s (%d)", &v14, 0x26u);
    }

    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v7;
}

- (BOOL)unmarkItemAtRelativePath:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(NSString *)self->_rootDir stringByAppendingPathComponent:v4];
  v6 = [v5 stringByStandardizingPath];
  v7 = [v6 isEqualToString:self->_rootDir];

  if (v7)
  {
    v8 = TRILogCategory_Server();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v16 = 138543362;
      v17 = v5;
      _os_log_error_impl(&dword_26F567000, v8, OS_LOG_TYPE_ERROR, "Cannot unmark root directory %{public}@ for deferred deletion", &v16, 0xCu);
    }

    v9 = 0;
  }

  else
  {
    v8 = [(TRIDeferredDeleter *)self _linkPathForDeferredDeletedItemAtPath:v4];
    if (unlink([v8 fileSystemRepresentation]) && *__error() != 2)
    {
      v10 = TRILogCategory_Server();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v13 = __error();
        v14 = strerror(*v13);
        v15 = *__error();
        v16 = 138543874;
        v17 = v8;
        v18 = 2080;
        v19 = v14;
        v20 = 1024;
        v21 = v15;
        _os_log_error_impl(&dword_26F567000, v10, OS_LOG_TYPE_ERROR, "Failed to unmark item for deferred deletion at path %{public}@: %s (%d)", &v16, 0x1Cu);
      }

      v9 = 0;
    }

    else
    {
      v10 = TRILogCategory_Server();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        v16 = 138543362;
        v17 = v8;
        _os_log_debug_impl(&dword_26F567000, v10, OS_LOG_TYPE_DEBUG, "Removed deferred deletion mark %{public}@", &v16, 0xCu);
      }

      v9 = 1;
    }
  }

  v11 = *MEMORY[0x277D85DE8];
  return v9;
}

- (BOOL)collectGarbageWithRootDirLockWitness:(TRIFlockWitness_ *)a3 externalReferenceStore:(id)a4
{
  v43 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = [(TRIDeferredDeleter *)self _deferredDeletedLinksDir];
  v7 = open([v6 fileSystemRepresentation], 0);
  if ((v7 & 0x80000000) == 0)
  {
    v8 = v7;
    if (flock(v7, 6))
    {
      v9 = *__error();
      v10 = TRILogCategory_Server();
      v11 = v10;
      if (v9 == 35)
      {
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v38 = v6;
          _os_log_impl(&dword_26F567000, v11, OS_LOG_TYPE_DEFAULT, "Unable to lock deferred deleted items directory %{public}@, skipping garbage collecting deferred deleted items", buf, 0xCu);
        }

        v12 = 0;
        v13 = 1;
      }

      else
      {
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          v27 = __error();
          v28 = strerror(*v27);
          v29 = *__error();
          *buf = 138543874;
          v38 = v6;
          v39 = 2080;
          v40 = v28;
          v41 = 1024;
          v42 = v29;
          _os_log_error_impl(&dword_26F567000, v11, OS_LOG_TYPE_ERROR, "Unable to acquire exclusive lock on deferred deleted items dir %{public}@: %s (%d)", buf, 0x1Cu);
        }

        v13 = 0;
        v12 = 0;
      }

LABEL_31:
      close(v8);
      v18 = v13 | v12;
      goto LABEL_32;
    }

    v19 = TRILogCategory_Server();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v38 = v6;
      _os_log_impl(&dword_26F567000, v19, OS_LOG_TYPE_DEFAULT, "Running garbage collection on deferred deleted items in dir %{public}@", buf, 0xCu);
    }

    *buf = v8;
    if ([(TRIDeferredDeleter *)self _cleanupWithLinksDirLockWitness:buf externalReferenceStore:v5])
    {
      v20 = [MEMORY[0x277CCAA00] defaultManager];
      v21 = [v20 triRemoveNestedEmptyDirectoriesAtPath:v6];

      if (v21)
      {
        v12 = 1;
LABEL_26:
        if (flock(v8, 8))
        {
          v24 = TRILogCategory_Server();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            v33 = __error();
            v34 = strerror(*v33);
            v35 = *__error();
            *buf = 138543874;
            v38 = v6;
            v39 = 2080;
            v40 = v34;
            v41 = 1024;
            v42 = v35;
            _os_log_error_impl(&dword_26F567000, v24, OS_LOG_TYPE_ERROR, "Unable to release exclusive lock on deferred deleted items dir %{public}@: %s (%d)", buf, 0x1Cu);
          }
        }

        v13 = 0;
        goto LABEL_31;
      }

      v22 = TRILogCategory_Server();
      if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
LABEL_25:

        v12 = 0;
        goto LABEL_26;
      }

      *v36 = 0;
      v23 = "Empty deferred link directories cleanup failed";
    }

    else
    {
      v22 = TRILogCategory_Server();
      if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_25;
      }

      *v36 = 0;
      v23 = "Deferred deleted items cleanup failed";
    }

    _os_log_error_impl(&dword_26F567000, v22, OS_LOG_TYPE_ERROR, v23, v36, 2u);
    goto LABEL_25;
  }

  v14 = *__error();
  v15 = TRILogCategory_Server();
  v16 = v15;
  if (v14 == 2)
  {
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      rootDir = self->_rootDir;
      *buf = 138543362;
      v38 = rootDir;
      _os_log_impl(&dword_26F567000, v16, OS_LOG_TYPE_DEFAULT, "No deferred deleted items to garbage collect for root directory %{public}@", buf, 0xCu);
    }

    v18 = 1;
  }

  else
  {
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v30 = __error();
      v31 = strerror(*v30);
      v32 = *__error();
      *buf = 138543874;
      v38 = v6;
      v39 = 2080;
      v40 = v31;
      v41 = 1024;
      v42 = v32;
      _os_log_error_impl(&dword_26F567000, v16, OS_LOG_TYPE_ERROR, "Failed to open lock on dir %{public}@: %s (%d)", buf, 0x1Cu);
    }

    v18 = 0;
  }

LABEL_32:

  v25 = *MEMORY[0x277D85DE8];
  return v18 & 1;
}

- (BOOL)_cleanupWithLinksDirLockWitness:(TRIFlockWitness_ *)a3 externalReferenceStore:(id)a4
{
  v6 = a4;
  v7 = [(TRIDeferredDeleter *)self _collectRelativeLinkPathsWithLinksDirLockWitness:a3];
  if (v7)
  {
    v17 = 0;
    v18 = &v17;
    v19 = 0x2020000000;
    v20 = 1;
    v8 = [(TRIDeferredDeleter *)self _deferredDeletedLinksDir];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __77__TRIDeferredDeleter__cleanupWithLinksDirLockWitness_externalReferenceStore___block_invoke;
    v12[3] = &unk_279DE2888;
    v9 = v8;
    v13 = v9;
    v14 = self;
    v15 = v6;
    v16 = &v17;
    if ([v7 enumerateStringsWithBlock:v12])
    {
      v10 = *(v18 + 24);
    }

    else
    {
      v10 = 0;
    }

    _Block_object_dispose(&v17, 8);
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

void __77__TRIDeferredDeleter__cleanupWithLinksDirLockWitness_externalReferenceStore___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) stringByAppendingPathComponent:v3];
  v6 = 0;
  v5 = *(a1 + 40);
  if (![objc_opt_class() _removeDeferredDeletedItemWithLink:v4 externalReferenceStore:*(a1 + 48) wasDeleted:&v6] || v6 == 1 && (objc_msgSend(*(a1 + 40), "unmarkItemAtRelativePath:", v3) & 1) == 0)
  {
    *(*(*(a1 + 56) + 8) + 24) = 0;
  }
}

- (id)_collectRelativeLinkPathsWithLinksDirLockWitness:(TRIFlockWitness_ *)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = objc_autoreleasePoolPush();
  v5 = [MEMORY[0x277CCAA00] defaultManager];
  v6 = [(TRIDeferredDeleter *)self _deferredDeletedLinksDir];
  v7 = [v5 enumeratorAtPath:v6];

  v8 = objc_opt_new();
  if (v8)
  {
    v9 = objc_autoreleasePoolPush();
    v10 = [v7 nextObject];
    if (v10)
    {
      v12 = v10;
      v13 = *MEMORY[0x277CCA1E8];
      v14 = *MEMORY[0x277CCA1F8];
      *&v11 = 138543362;
      v21 = v11;
      do
      {
        v15 = [v7 fileAttributes];
        v16 = [v15 fileType];

        if (v16 == v13 || v16 == v14)
        {
          if (v16 == v14 && ([v8 addString:v12] & 1) == 0)
          {

            objc_autoreleasePoolPop(v9);
            goto LABEL_14;
          }
        }

        else
        {
          v17 = TRILogCategory_Server();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            *buf = v21;
            v23 = v12;
            _os_log_error_impl(&dword_26F567000, v17, OS_LOG_TYPE_ERROR, "Found unexpected non symbolic link file %{public}@", buf, 0xCu);
          }
        }

        objc_autoreleasePoolPop(v9);
        v9 = objc_autoreleasePoolPush();
        v12 = [v7 nextObject];
      }

      while (v12);
    }

    objc_autoreleasePoolPop(v9);
    v18 = v8;
  }

  else
  {
LABEL_14:
    v18 = 0;
  }

  objc_autoreleasePoolPop(v4);
  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

+ (BOOL)_removeDeferredDeletedItemWithLink:(id)a3 externalReferenceStore:(id)a4 wasDeleted:(BOOL *)a5
{
  v23 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  *a5 = 0;
  v9 = [MEMORY[0x277CCAA00] triTargetPathForSymlink:v7];
  if (!v9)
  {
    v10 = TRILogCategory_Server();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v20 = v7;
      _os_log_error_impl(&dword_26F567000, v10, OS_LOG_TYPE_ERROR, "Found deferred deletion symlink with path %{public}@ with no valid target", buf, 0xCu);
    }

    goto LABEL_16;
  }

  if (v8 && [v8 hasReferenceToPath:v9])
  {
    v10 = TRILogCategory_Server();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v20 = v7;
      _os_log_impl(&dword_26F567000, v10, OS_LOG_TYPE_DEFAULT, "Deferred Deletion garbage collection found a nonzero external reference count for path: %{public}@", buf, 0xCu);
    }

    v11 = 1;
    goto LABEL_17;
  }

  v12 = [MEMORY[0x277CCAA00] defaultManager];
  v18 = 0;
  v13 = [v12 triForceRemoveItemAtPath:v9 error:&v18];
  v10 = v18;

  v14 = TRILogCategory_Server();
  v15 = v14;
  if ((v13 & 1) == 0)
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v20 = v9;
      v21 = 2114;
      v22 = v10;
      _os_log_error_impl(&dword_26F567000, v15, OS_LOG_TYPE_ERROR, "Failed to remove path %{public}@ marked for deferred deletion: %{public}@", buf, 0x16u);
    }

LABEL_16:
    v11 = 0;
    goto LABEL_17;
  }

  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138543362;
    v20 = v9;
    _os_log_debug_impl(&dword_26F567000, v15, OS_LOG_TYPE_DEBUG, "Deleted deferred item %{public}@", buf, 0xCu);
  }

  v11 = 1;
  *a5 = 1;
LABEL_17:

  v16 = *MEMORY[0x277D85DE8];
  return v11;
}

- (id)_linkPathForDeferredDeletedItemAtPath:(id)a3
{
  v4 = a3;
  v5 = [(TRIDeferredDeleter *)self _deferredDeletedLinksDir];
  v6 = [v5 stringByAppendingPathComponent:v4];

  return v6;
}

- (id)_deferredDeletedLinksDir
{
  v3 = objc_autoreleasePoolPush();
  v4 = [(NSString *)self->_rootDir stringByAppendingPathComponent:@"_deferredDeletedLinks"];
  objc_autoreleasePoolPop(v3);

  return v4;
}

@end