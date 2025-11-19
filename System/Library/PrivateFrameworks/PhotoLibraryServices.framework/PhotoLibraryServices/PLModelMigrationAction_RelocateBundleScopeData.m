@interface PLModelMigrationAction_RelocateBundleScopeData
- (id)legacyPrefixPathWithType:(unsigned __int8)a3;
- (int64_t)performActionWithManagedObjectContext:(id)a3 error:(id *)a4;
- (int64_t)renameWithDestinationPath:(unsigned __int8)a3 error:(id *)a4;
- (int64_t)updateResourceFilePathWithManagedObjectContext:(id)a3 bundleScope:(unsigned __int16)a4 progress:(id)a5 error:(id *)a6;
@end

@implementation PLModelMigrationAction_RelocateBundleScopeData

- (id)legacyPrefixPathWithType:(unsigned __int8)a3
{
  v3 = a3;
  v5 = [(PLModelMigrationActionCore *)self pathManager];
  v6 = [v5 photoDirectoryWithType:v3];

  v7 = [(PLModelMigrationActionCore *)self pathManager];
  v8 = [v7 photoDirectoryWithType:7];

  v9 = [v6 lastPathComponent];
  v10 = [v8 stringByAppendingPathComponent:v9];

  return v10;
}

- (int64_t)updateResourceFilePathWithManagedObjectContext:(id)a3 bundleScope:(unsigned __int16)a4 progress:(id)a5 error:(id *)a6
{
  v8 = a4;
  v44[2] = *MEMORY[0x1E69E9840];
  v11 = a3;
  v33 = a5;
  if (v8 > 5 || ((1 << v8) & 0x2A) == 0)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"PLModelMigrationActions_15000.m" lineNumber:519 description:{@"Invalid parameter not satisfying: %@", @"scope == PLBundleScopeCMM || scope == PLBundleScopeSyndication || scope == PLBundleScopeCollectionShare"}];
  }

  v13 = MEMORY[0x1E695D5E0];
  v14 = +[PLInternalResource entityName];
  v15 = [v13 fetchRequestWithEntityName:v14];

  v16 = MEMORY[0x1E696AB28];
  v17 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K != NULL", @"dataStoreKeyData"];
  v44[0] = v17;
  v18 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d", @"asset.bundleScope", v8];
  v44[1] = v18;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v44 count:2];
  v20 = [v16 andPredicateWithSubpredicates:v19];
  [v15 setPredicate:v20];

  v43 = @"asset";
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v43 count:1];
  [v15 setRelationshipKeyPathsForPrefetching:v21];

  [v15 setFetchBatchSize:100];
  v38 = 0;
  v22 = [v11 executeFetchRequest:v15 error:&v38];
  v23 = v38;
  if (v22)
  {
    *v41 = 0;
    *&v41[8] = v41;
    *&v41[16] = 0x2020000000;
    v42 = 0;
    v24 = [(PLModelMigrationActionCore *)self pathManager];
    v25 = [v24 photoLibraryPathTypeForBundleScope:v8];

    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __124__PLModelMigrationAction_RelocateBundleScopeData_updateResourceFilePathWithManagedObjectContext_bundleScope_progress_error___block_invoke;
    v34[3] = &unk_1E756DC08;
    v37 = v25;
    v34[4] = self;
    v36 = v41;
    v35 = v33;
    v26 = [v11 enumerateWithIncrementalSaveUsingObjects:v22 withBlock:v34];

    if (v26)
    {
      v27 = PLMigrationGetLog();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446466;
        *v40 = "[PLModelMigrationAction_RelocateBundleScopeData updateResourceFilePathWithManagedObjectContext:bundleScope:progress:error:]";
        *&v40[8] = 2112;
        *&v40[10] = v26;
        _os_log_impl(&dword_19BF1F000, v27, OS_LOG_TYPE_ERROR, "%{public}s: enumerate with incremental save failed: %@", buf, 0x16u);
      }

      v28 = 3;
    }

    else
    {
      v27 = PLMigrationGetLog();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        v30 = *(*&v41[8] + 24);
        *buf = 67109376;
        *v40 = v25;
        *&v40[4] = 2048;
        *&v40[6] = v30;
        _os_log_impl(&dword_19BF1F000, v27, OS_LOG_TYPE_DEFAULT, "Updated file key paths for type %d. %ld assets updated.", buf, 0x12u);
      }

      v28 = 1;
    }

    _Block_object_dispose(v41, 8);
    if (a6)
    {
LABEL_17:
      v31 = v26;
      *a6 = v26;
    }
  }

  else
  {
    v29 = PLMigrationGetLog();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      *v41 = 136446466;
      *&v41[4] = "[PLModelMigrationAction_RelocateBundleScopeData updateResourceFilePathWithManagedObjectContext:bundleScope:progress:error:]";
      *&v41[12] = 2112;
      *&v41[14] = v23;
      _os_log_impl(&dword_19BF1F000, v29, OS_LOG_TYPE_ERROR, "%{public}s: resource fetch failed: %@", v41, 0x16u);
    }

    v28 = 3;
    v26 = v23;
    if (a6)
    {
      goto LABEL_17;
    }
  }

  return v28;
}

- (int64_t)renameWithDestinationPath:(unsigned __int8)a3 error:(id *)a4
{
  v5 = a3;
  v100 = *MEMORY[0x1E69E9840];
  v7 = [(PLModelMigrationActionCore *)self pathManager];
  v8 = [v7 photoDirectoryWithType:v5];

  v9 = [(PLModelMigrationAction_RelocateBundleScopeData *)self legacyPrefixPathWithType:v5];
  v10 = [v9 fileSystemRepresentation];
  v11 = [v8 fileSystemRepresentation];
  rename(v10, v11, v12);
  if (v13)
  {
    if (*__error() != 2)
    {
      v57 = a4;
      v21 = MEMORY[0x1E696ABC0];
      v22 = *MEMORY[0x1E696A798];
      v23 = *__error();
      v68 = *MEMORY[0x1E696A578];
      v24 = v68;
      v25 = MEMORY[0x1E696AEC0];
      v26 = __error();
      v27 = [v25 stringWithUTF8String:strerror(*v26)];
      v69 = v27;
      v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v69 forKeys:&v68 count:1];
      v29 = [v21 errorWithDomain:v22 code:v23 userInfo:v28];

      v30 = MEMORY[0x1E696ABC0];
      v31 = *MEMORY[0x1E69BFF48];
      v32 = *MEMORY[0x1E696AA08];
      v66[0] = v24;
      v66[1] = v32;
      v67[0] = @"Failed to relocate bundle directory";
      v67[1] = v29;
      v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v67 forKeys:v66 count:2];
      v34 = [v30 errorWithDomain:v31 code:46003 userInfo:v33];

      v35 = PLMigrationGetLog();
      LODWORD(v33) = os_log_type_enabled(v35, OS_LOG_TYPE_ERROR);

      if (v33)
      {
        v36 = [(PLModelMigrationActionCore *)self logger];

        if (v36)
        {
          v98 = 0u;
          v99 = 0u;
          v96 = 0u;
          v97 = 0u;
          v94 = 0u;
          v95 = 0u;
          v92 = 0u;
          v93 = 0u;
          v90 = 0u;
          v91 = 0u;
          v88 = 0u;
          v89 = 0u;
          v86 = 0u;
          v87 = 0u;
          v84 = 0u;
          v85 = 0u;
          v82 = 0u;
          v83 = 0u;
          v80 = 0u;
          v81 = 0u;
          v78 = 0u;
          v79 = 0u;
          v76 = 0u;
          v77 = 0u;
          v74 = 0u;
          v75 = 0u;
          v72 = 0u;
          v73 = 0u;
          v71 = 0u;
          memset(buf, 0, sizeof(buf));
          v37 = PLMigrationGetLog();
          os_log_type_enabled(v37, OS_LOG_TYPE_ERROR);
          v38 = [v9 lastPathComponent];
          v39 = [v8 lastPathComponent];
          v40 = *__error();
          v41 = __error();
          v42 = strerror(*v41);
          v58 = 138544130;
          v59 = v38;
          v60 = 2114;
          v61 = v39;
          v62 = 1024;
          v63 = v40;
          v64 = 2082;
          v65 = v42;
          LODWORD(v56) = 38;
          v43 = _os_log_send_and_compose_impl();

          v44 = [(PLModelMigrationActionCore *)self logger:&v58];
          [v44 logWithMessage:v43 fromCodeLocation:"PLModelMigrationActions_15000.m" type:{509, 16}];

          if (v43 != buf)
          {
            free(v43);
          }
        }

        else
        {
          v50 = PLMigrationGetLog();
          if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
          {
            v51 = [v9 lastPathComponent];
            v52 = [v8 lastPathComponent];
            v53 = *__error();
            v54 = __error();
            v55 = strerror(*v54);
            *buf = 138544130;
            *&buf[4] = v51;
            *&buf[12] = 2114;
            *&buf[14] = v52;
            *&buf[22] = 1024;
            *&buf[24] = v53;
            *&buf[28] = 2082;
            *&buf[30] = v55;
            _os_log_impl(&dword_19BF1F000, v50, OS_LOG_TYPE_ERROR, "rename failed: From filename %{public}@ to %{public}@. Error: (%d) %{public}s", buf, 0x26u);
          }
        }
      }

      v47 = 3;
      a4 = v57;
      if (v57)
      {
        goto LABEL_15;
      }

      goto LABEL_16;
    }

    v14 = PLMigrationGetLog();
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);

    if (v15)
    {
      v16 = [(PLModelMigrationActionCore *)self logger];

      if (v16)
      {
        v98 = 0u;
        v99 = 0u;
        v96 = 0u;
        v97 = 0u;
        v94 = 0u;
        v95 = 0u;
        v92 = 0u;
        v93 = 0u;
        v90 = 0u;
        v91 = 0u;
        v88 = 0u;
        v89 = 0u;
        v86 = 0u;
        v87 = 0u;
        v84 = 0u;
        v85 = 0u;
        v82 = 0u;
        v83 = 0u;
        v80 = 0u;
        v81 = 0u;
        v78 = 0u;
        v79 = 0u;
        v76 = 0u;
        v77 = 0u;
        v74 = 0u;
        v75 = 0u;
        v72 = 0u;
        v73 = 0u;
        v71 = 0u;
        memset(buf, 0, sizeof(buf));
        v17 = PLMigrationGetLog();
        os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
        v18 = [v9 lastPathComponent];
        v58 = 138543362;
        v59 = v18;
        LODWORD(v56) = 12;
        v19 = _os_log_send_and_compose_impl();

        v20 = [(PLModelMigrationActionCore *)self logger:&v58];
        [v20 logWithMessage:v19 fromCodeLocation:"PLModelMigrationActions_15000.m" type:{502, 0}];

        if (v19 != buf)
        {
          free(v19);
        }
      }

      else
      {
        v45 = PLMigrationGetLog();
        if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
        {
          v46 = [v9 lastPathComponent];
          *buf = 138543362;
          *&buf[4] = v46;
          _os_log_impl(&dword_19BF1F000, v45, OS_LOG_TYPE_DEFAULT, "skipping rename of filename %{public}@", buf, 0xCu);
        }
      }
    }
  }

  v34 = 0;
  v47 = 1;
  if (a4)
  {
LABEL_15:
    v48 = v34;
    *a4 = v34;
  }

LABEL_16:

  return v47;
}

- (int64_t)performActionWithManagedObjectContext:(id)a3 error:(id *)a4
{
  v110[2] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(PLModelMigrationActionCore *)self pathManager];
  v8 = [v7 isUBF];

  if (v8)
  {
    v9 = MEMORY[0x1E695D5E0];
    v10 = +[PLInternalResource entityName];
    v11 = [v9 fetchRequestWithEntityName:v10];

    v12 = MEMORY[0x1E696AB28];
    v13 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K != NULL", @"dataStoreKeyData"];
    v110[0] = v13;
    v14 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K IN %@", @"asset.bundleScope", &unk_1F0FBFC88];
    v110[1] = v14;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v110 count:2];
    v16 = [v12 andPredicateWithSubpredicates:v15];
    [v11 setPredicate:v16];

    v72 = 0;
    v63 = v11;
    v17 = [v6 countForFetchRequest:v11 error:&v72];
    v18 = v72;
    if (v17 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v19 = PLMigrationGetLog();
      v20 = os_log_type_enabled(v19, OS_LOG_TYPE_ERROR);

      if (v20)
      {
        v21 = [(PLModelMigrationActionCore *)self logger];

        if (v21)
        {
          v107 = 0u;
          v108 = 0u;
          v105 = 0u;
          v106 = 0u;
          v103 = 0u;
          v104 = 0u;
          v101 = 0u;
          v102 = 0u;
          v99 = 0u;
          v100 = 0u;
          v97 = 0u;
          v98 = 0u;
          v95 = 0u;
          v96 = 0u;
          v93 = 0u;
          v94 = 0u;
          v91 = 0u;
          v92 = 0u;
          v89 = 0u;
          v90 = 0u;
          v87 = 0u;
          v88 = 0u;
          v85 = 0u;
          v86 = 0u;
          v83 = 0u;
          v84 = 0u;
          v81 = 0u;
          v82 = 0u;
          v79 = 0u;
          v80 = 0u;
          *buf = 0u;
          v78 = 0u;
          v22 = PLMigrationGetLog();
          os_log_type_enabled(v22, OS_LOG_TYPE_ERROR);
          v75 = 138412290;
          v76 = v18;
          LODWORD(v61) = 12;
          v23 = _os_log_send_and_compose_impl();

          v24 = [(PLModelMigrationActionCore *)self logger:&v75];
          [v24 logWithMessage:v23 fromCodeLocation:"PLModelMigrationActions_15000.m" type:{479, 16}];

          if (v23 != buf)
          {
            free(v23);
          }
        }

        else
        {
          v56 = PLMigrationGetLog();
          if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            *&buf[4] = v18;
            _os_log_impl(&dword_19BF1F000, v56, OS_LOG_TYPE_ERROR, "Failed to obtain count of bundle scoped items. Error: %@", buf, 0xCu);
          }
        }
      }

      v41 = 3;
    }

    else
    {
      v33 = -[PLModelMigrationActionCore cancellableDiscreteProgressWithTotalUnitCount:pendingParentUnitCount:](self, "cancellableDiscreteProgressWithTotalUnitCount:pendingParentUnitCount:", [&unk_1F0FBFCA0 count] + v17, 0);
      v34 = [(PLModelMigrationActionCore *)self pathManager];
      v35 = *MEMORY[0x1E69BFF80];
      v71 = v18;
      v36 = [v34 photoDirectoryWithType:1 leafType:1 additionalPathComponents:v35 createIfNeeded:1 error:&v71];
      v37 = v71;

      v64 = v6;
      if (v36)
      {
        v69 = 0u;
        v70 = 0u;
        v67 = 0u;
        v68 = 0u;
        v38 = [&unk_1F0FBFCA0 countByEnumeratingWithState:&v67 objects:v109 count:16];
        if (v38)
        {
          v39 = v38;
          v40 = *v68;
          v41 = 1;
          v62 = a4;
          while (2)
          {
            for (i = 0; i != v39; ++i)
            {
              if (*v68 != v40)
              {
                objc_enumerationMutation(&unk_1F0FBFCA0);
              }

              v43 = [*(*(&v67 + 1) + 8 * i) unsignedIntValue];
              v44 = [(PLModelMigrationActionCore *)self pathManager];
              v45 = [v44 photoLibraryPathTypeForBundleScope:v43];

              v66 = v37;
              v46 = [(PLModelMigrationAction_RelocateBundleScopeData *)self renameWithDestinationPath:v45 error:&v66];
              v47 = v66;

              if (v46 != 1 || v43 == 2)
              {
                v37 = v47;
              }

              else
              {
                v65 = v47;
                v46 = [(PLModelMigrationAction_RelocateBundleScopeData *)self updateResourceFilePathWithManagedObjectContext:v64 bundleScope:v43 progress:v33 error:&v65];
                v37 = v65;
              }

              [v33 setCompletedUnitCount:{objc_msgSend(v33, "completedUnitCount") + 1}];
              if (v46 != 1)
              {
                v41 = v46;
                a4 = v62;
                goto LABEL_45;
              }
            }

            v39 = [&unk_1F0FBFCA0 countByEnumeratingWithState:&v67 objects:v109 count:16];
            a4 = v62;
            if (v39)
            {
              continue;
            }

            break;
          }
        }

        else
        {
          v41 = 1;
        }
      }

      else
      {
        v50 = PLMigrationGetLog();
        v51 = os_log_type_enabled(v50, OS_LOG_TYPE_ERROR);

        if (v51)
        {
          v52 = [(PLModelMigrationActionCore *)self logger];

          if (v52)
          {
            v107 = 0u;
            v108 = 0u;
            v105 = 0u;
            v106 = 0u;
            v103 = 0u;
            v104 = 0u;
            v101 = 0u;
            v102 = 0u;
            v99 = 0u;
            v100 = 0u;
            v97 = 0u;
            v98 = 0u;
            v95 = 0u;
            v96 = 0u;
            v93 = 0u;
            v94 = 0u;
            v91 = 0u;
            v92 = 0u;
            v89 = 0u;
            v90 = 0u;
            v87 = 0u;
            v88 = 0u;
            v85 = 0u;
            v86 = 0u;
            v83 = 0u;
            v84 = 0u;
            v81 = 0u;
            v82 = 0u;
            v79 = 0u;
            v80 = 0u;
            *buf = 0u;
            v78 = 0u;
            v53 = PLMigrationGetLog();
            os_log_type_enabled(v53, OS_LOG_TYPE_ERROR);
            v75 = 138412290;
            v76 = v37;
            LODWORD(v61) = 12;
            v54 = _os_log_send_and_compose_impl();

            v55 = [(PLModelMigrationActionCore *)self logger:&v75];
            [v55 logWithMessage:v54 fromCodeLocation:"PLModelMigrationActions_15000.m" type:{475, 16}];

            if (v54 != buf)
            {
              free(v54);
            }
          }

          else
          {
            v57 = PLMigrationGetLog();
            if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              *&buf[4] = v37;
              _os_log_impl(&dword_19BF1F000, v57, OS_LOG_TYPE_ERROR, "Failed to create scoped directory. Error: %@", buf, 0xCu);
            }
          }
        }

        v41 = 3;
      }

LABEL_45:

      v18 = v37;
      v6 = v64;
    }
  }

  else
  {
    v25 = MEMORY[0x1E696ABC0];
    v26 = *MEMORY[0x1E69BFF48];
    v73 = *MEMORY[0x1E696A578];
    v74 = @"Unexpected attempt to relocate scoped paths for DCIM";
    v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v74 forKeys:&v73 count:1];
    v18 = [v25 errorWithDomain:v26 code:46003 userInfo:v27];

    v28 = PLMigrationGetLog();
    LODWORD(v26) = os_log_type_enabled(v28, OS_LOG_TYPE_ERROR);

    if (v26)
    {
      v29 = [(PLModelMigrationActionCore *)self logger];

      if (v29)
      {
        v107 = 0u;
        v108 = 0u;
        v105 = 0u;
        v106 = 0u;
        v103 = 0u;
        v104 = 0u;
        v101 = 0u;
        v102 = 0u;
        v99 = 0u;
        v100 = 0u;
        v97 = 0u;
        v98 = 0u;
        v95 = 0u;
        v96 = 0u;
        v93 = 0u;
        v94 = 0u;
        v91 = 0u;
        v92 = 0u;
        v89 = 0u;
        v90 = 0u;
        v87 = 0u;
        v88 = 0u;
        v85 = 0u;
        v86 = 0u;
        v83 = 0u;
        v84 = 0u;
        v81 = 0u;
        v82 = 0u;
        v79 = 0u;
        v80 = 0u;
        *buf = 0u;
        v78 = 0u;
        v30 = PLMigrationGetLog();
        os_log_type_enabled(v30, OS_LOG_TYPE_ERROR);
        LOWORD(v75) = 0;
        LODWORD(v60) = 2;
        v31 = _os_log_send_and_compose_impl();

        v32 = [(PLModelMigrationActionCore *)self logger:&v75];
        [v32 logWithMessage:v31 fromCodeLocation:"PLModelMigrationActions_15000.m" type:{485, 16}];

        if (v31 != buf)
        {
          free(v31);
        }
      }

      else
      {
        v49 = PLMigrationGetLog();
        if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_19BF1F000, v49, OS_LOG_TYPE_ERROR, "Unexpected attempt to relocate scoped paths for DCIM", buf, 2u);
        }
      }
    }

    v41 = 3;
  }

  [(PLModelMigrationActionCore *)self finalizeProgress];
  if (a4)
  {
    v58 = v18;
    *a4 = v18;
  }

  return v41;
}

@end