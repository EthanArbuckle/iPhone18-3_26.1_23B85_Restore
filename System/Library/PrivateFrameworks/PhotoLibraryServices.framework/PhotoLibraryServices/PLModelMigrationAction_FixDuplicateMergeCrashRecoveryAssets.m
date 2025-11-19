@interface PLModelMigrationAction_FixDuplicateMergeCrashRecoveryAssets
- (BOOL)_isLibraryRepairRequiredWithManagedObjectContext:(id)a3;
- (int64_t)performActionWithManagedObjectContext:(id)a3 error:(id *)a4;
- (void)_processForRepairWithAsset:(id)a3 repairCount:(int64_t *)a4;
- (void)_repairAsset:(id)a3;
@end

@implementation PLModelMigrationAction_FixDuplicateMergeCrashRecoveryAssets

- (void)_repairAsset:(id)a3
{
  v91 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 duplicateAlbum];
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v6 = [v5 assets];
  v7 = [v6 countByEnumeratingWithState:&v48 objects:v90 count:16];
  if (!v7)
  {
    goto LABEL_34;
  }

  v8 = v7;
  v9 = *v49;
  while (2)
  {
    for (i = 0; i != v8; ++i)
    {
      if (*v49 != v9)
      {
        objc_enumerationMutation(v6);
      }

      v11 = *(*(&v48 + 1) + 8 * i);
      if (([v11 isEqual:v4] & 1) == 0)
      {
        v12 = [v11 master];

        if (v12)
        {
          if ([v11 cloudLocalState] == 1)
          {
            v45 = self;
            v13 = [[PLDuplicateAsset alloc] initWithAsset:v11];
            v14 = [[PLDuplicateAsset alloc] initWithAsset:v4];
            v15 = [v4 photoLibrary];
            v16 = v15;
            v46 = v13;
            if (v13 && v14 && v15)
            {
              v17 = [PLDuplicateMerge alloc];
              v89 = v13;
              v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v89 count:1];
              v42 = v14;
              v43 = v16;
              v19 = [(PLDuplicateMerge *)v17 initWithSourceAssets:v18 targetAsset:v14 photolibrary:v16];

              v47 = 0;
              LOBYTE(v18) = [(PLDuplicateMerge *)v19 mergeResourcesFromSource:v46 error:&v47];
              v20 = v47;
              if ((v18 & 1) == 0)
              {
                v21 = PLMigrationGetLog();
                v22 = os_log_type_enabled(v21, OS_LOG_TYPE_ERROR);

                if (v22)
                {
                  v23 = [(PLModelMigrationActionBackground *)v45 logger];

                  if (v23)
                  {
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
                    v77 = 0u;
                    v78 = 0u;
                    v75 = 0u;
                    v76 = 0u;
                    v73 = 0u;
                    v74 = 0u;
                    v71 = 0u;
                    v72 = 0u;
                    v69 = 0u;
                    v70 = 0u;
                    v67 = 0u;
                    v68 = 0u;
                    v65 = 0u;
                    v66 = 0u;
                    v63 = 0u;
                    v64 = 0u;
                    v61 = 0u;
                    v62 = 0u;
                    v59 = 0u;
                    v60 = 0u;
                    memset(buf, 0, sizeof(buf));
                    v24 = PLMigrationGetLog();
                    os_log_type_enabled(v24, OS_LOG_TYPE_ERROR);
                    v25 = [v4 uuid];
                    v26 = [v11 uuid];
                    v52 = 138543618;
                    v53 = v25;
                    v54 = 2114;
                    *v55 = v26;
                    LODWORD(v41) = 22;
                    v27 = _os_log_send_and_compose_impl();

                    v28 = [(PLModelMigrationActionBackground *)v45 logger:&v52];
                    [v28 logWithMessage:v27 fromCodeLocation:"PLModelMigrationActionBackground.m" type:{806, 16}];

                    if (v27 != buf)
                    {
                      free(v27);
                    }
                  }

                  else
                  {
                    v38 = PLMigrationGetLog();
                    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
                    {
                      v39 = [v4 uuid];
                      v40 = [v11 uuid];
                      *buf = 138543618;
                      *&buf[4] = v39;
                      *&buf[12] = 2114;
                      *&buf[14] = v40;
                      _os_log_impl(&dword_19BF1F000, v38, OS_LOG_TYPE_ERROR, "Failed to repair merge asset %{public}@ using source %{public}@", buf, 0x16u);
                    }
                  }
                }
              }

              v14 = v42;
              v16 = v43;
            }

            else
            {
              v29 = PLMigrationGetLog();
              v30 = os_log_type_enabled(v29, OS_LOG_TYPE_ERROR);

              if (v30)
              {
                v31 = [(PLModelMigrationActionBackground *)v45 logger];

                if (v31)
                {
                  v44 = v16;
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
                  v77 = 0u;
                  v78 = 0u;
                  v75 = 0u;
                  v76 = 0u;
                  v73 = 0u;
                  v74 = 0u;
                  v71 = 0u;
                  v72 = 0u;
                  v69 = 0u;
                  v70 = 0u;
                  v67 = 0u;
                  v68 = 0u;
                  v65 = 0u;
                  v66 = 0u;
                  v63 = 0u;
                  v64 = 0u;
                  v61 = 0u;
                  v62 = 0u;
                  v59 = 0u;
                  v60 = 0u;
                  memset(buf, 0, sizeof(buf));
                  v32 = PLMigrationGetLog();
                  os_log_type_enabled(v32, OS_LOG_TYPE_ERROR);
                  v33 = [v4 uuid];
                  v52 = 138544130;
                  v53 = v33;
                  v54 = 1024;
                  *v55 = v46 != 0;
                  *&v55[4] = 1024;
                  *&v55[6] = v14 != 0;
                  v56 = 1024;
                  v57 = v16 != 0;
                  LODWORD(v41) = 30;
                  v34 = _os_log_send_and_compose_impl();

                  v35 = [(PLModelMigrationActionBackground *)v45 logger:&v52];
                  [v35 logWithMessage:v34 fromCodeLocation:"PLModelMigrationActionBackground.m" type:{809, 16}];

                  if (v34 != buf)
                  {
                    free(v34);
                  }

                  v20 = 0;
                  v16 = v44;
                  goto LABEL_33;
                }

                v36 = PLMigrationGetLog();
                if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
                {
                  v37 = [v4 uuid];
                  *buf = 138544130;
                  *&buf[4] = v37;
                  *&buf[12] = 1024;
                  *&buf[14] = v46 != 0;
                  *&buf[18] = 1024;
                  *&buf[20] = v14 != 0;
                  *&buf[24] = 1024;
                  *&buf[26] = v16 != 0;
                  _os_log_impl(&dword_19BF1F000, v36, OS_LOG_TYPE_ERROR, "Failed to repair merge asset %{public}@. Missing merge parameters: [%d:%d:%d]", buf, 0x1Eu);
                }
              }

              v20 = 0;
            }

LABEL_33:

            goto LABEL_34;
          }
        }
      }
    }

    v8 = [v6 countByEnumeratingWithState:&v48 objects:v90 count:16];
    if (v8)
    {
      continue;
    }

    break;
  }

LABEL_34:
}

- (void)_processForRepairWithAsset:(id)a3 repairCount:(int64_t *)a4
{
  v63 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 masterResourceForCPLType:1];
  v8 = [v7 cplFileURL];
  v25 = 0;
  v9 = [v8 checkResourceIsReachableAndReturnError:&v25];
  v10 = v25;
  if (!v8)
  {
    goto LABEL_4;
  }

  if (v9)
  {
    goto LABEL_6;
  }

  if (!PLIsErrorFileNotFound())
  {
    v11 = PLMigrationGetLog();
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);

    if (v12)
    {
      v13 = [(PLModelMigrationActionBackground *)self logger];

      if (v13)
      {
        v61 = 0u;
        v62 = 0u;
        v59 = 0u;
        v60 = 0u;
        v57 = 0u;
        v58 = 0u;
        v55 = 0u;
        v56 = 0u;
        v53 = 0u;
        v54 = 0u;
        v51 = 0u;
        v52 = 0u;
        v49 = 0u;
        v50 = 0u;
        v47 = 0u;
        v48 = 0u;
        v45 = 0u;
        v46 = 0u;
        v43 = 0u;
        v44 = 0u;
        v41 = 0u;
        v42 = 0u;
        v39 = 0u;
        v40 = 0u;
        v37 = 0u;
        v38 = 0u;
        v35 = 0u;
        v36 = 0u;
        v33 = 0u;
        v34 = 0u;
        memset(buf, 0, sizeof(buf));
        v14 = PLMigrationGetLog();
        os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);
        v15 = objc_opt_class();
        v16 = NSStringFromClass(v15);
        v17 = [v6 uuid];
        v26 = 138543874;
        v27 = v16;
        v28 = 2114;
        v29 = v17;
        v30 = 2112;
        v31 = v10;
        LODWORD(v24) = 32;
        v18 = _os_log_send_and_compose_impl();

        v19 = [(PLModelMigrationActionBackground *)self logger:&v26];
        [v19 logWithMessage:v18 fromCodeLocation:"PLModelMigrationActionBackground.m" type:{780, 16}];

        if (v18 != buf)
        {
          free(v18);
        }
      }

      else
      {
        v20 = PLMigrationGetLog();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          v21 = objc_opt_class();
          v22 = NSStringFromClass(v21);
          v23 = [v6 uuid];
          *buf = 138543874;
          *&buf[4] = v22;
          *&buf[12] = 2114;
          *&buf[14] = v23;
          *&buf[22] = 2112;
          *&buf[24] = v10;
          _os_log_impl(&dword_19BF1F000, v20, OS_LOG_TYPE_ERROR, "Resource check failed in %{public}@ for %{public}@. Error: %@", buf, 0x20u);
        }
      }
    }
  }

  else
  {
LABEL_4:
    [(PLModelMigrationAction_FixDuplicateMergeCrashRecoveryAssets *)self _repairAsset:v6];
    if (a4)
    {
      ++*a4;
    }
  }

LABEL_6:
}

- (BOOL)_isLibraryRepairRequiredWithManagedObjectContext:(id)a3
{
  v4 = a3;
  v5 = [(PLModelMigrationActionBackground *)self pathManager];
  v6 = [v5 libraryURL];
  v7 = PLIsCloudPhotoLibraryEnabledForPhotoLibraryURL(v6);

  if (v7)
  {
    objc_opt_class();
    v8 = v4;
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;

    v11 = [v10 pl_libraryBundle];
    v12 = [v11 indicatorFileCoordinator];

    v13 = [v12 isDisableICloudPhotos] ^ 1;
  }

  else
  {
    LOBYTE(v13) = 0;
  }

  return v13;
}

- (int64_t)performActionWithManagedObjectContext:(id)a3 error:(id *)a4
{
  v129 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  if ([(PLModelMigrationAction_FixDuplicateMergeCrashRecoveryAssets *)self _isLibraryRepairRequiredWithManagedObjectContext:v5])
  {
    v8 = MEMORY[0x1E695D5E0];
    v9 = +[PLManagedAsset entityName];
    v10 = [v8 fetchRequestWithEntityName:v9];

    v11 = MEMORY[0x1E696AB28];
    v12 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K != %d", @"duplicateAssetVisibilityState", 0];
    v97[0] = v12;
    v13 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d", @"activeLibraryScopeParticipationState", 1];
    v97[1] = v13;
    v14 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == nil", @"master"];
    v97[2] = v14;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v97 count:3];
    v16 = [v11 andPredicateWithSubpredicates:v15];
    [v10 setPredicate:v16];

    [v10 setFetchBatchSize:100];
    v96[0] = @"modernResources";
    v96[1] = @"albums";
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v96 count:2];
    [v10 setRelationshipKeyPathsForPrefetching:v17];

    *&v91 = 0;
    *(&v91 + 1) = &v91;
    v92 = 0x3032000000;
    v93 = __Block_byref_object_copy__1060;
    v94 = __Block_byref_object_dispose__1061;
    v95 = 0;
    v81 = 0;
    v82 = &v81;
    v83 = 0x2020000000;
    v84 = 1;
    obj = 0;
    v18 = [v5 executeFetchRequest:v10 error:&obj];
    objc_storeStrong(&v95, obj);
    if (!v18)
    {
      v82[3] = 3;
      v38 = PLMigrationGetLog();
      v39 = os_log_type_enabled(v38, OS_LOG_TYPE_ERROR);

      if (v39)
      {
        v40 = [(PLModelMigrationActionBackground *)self logger];
        v41 = v40 == 0;

        if (v41)
        {
          v62 = PLMigrationGetLog();
          if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
          {
            v63 = objc_opt_class();
            v64 = NSStringFromClass(v63);
            v65 = *(*(&v91 + 1) + 40);
            *buf = 138543618;
            *&buf[4] = v64;
            *&buf[12] = 2112;
            *&buf[14] = v65;
            _os_log_impl(&dword_19BF1F000, v62, OS_LOG_TYPE_ERROR, "Failed to execute fetch request for %{public}@. Error: %@", buf, 0x16u);
          }
        }

        else
        {
          v127 = 0u;
          v128 = 0u;
          v125 = 0u;
          v126 = 0u;
          v123 = 0u;
          v124 = 0u;
          v121 = 0u;
          v122 = 0u;
          v119 = 0u;
          v120 = 0u;
          v117 = 0u;
          v118 = 0u;
          v115 = 0u;
          v116 = 0u;
          v113 = 0u;
          v114 = 0u;
          v111 = 0u;
          v112 = 0u;
          v109 = 0u;
          v110 = 0u;
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
          memset(buf, 0, sizeof(buf));
          v42 = PLMigrationGetLog();
          os_log_type_enabled(v42, OS_LOG_TYPE_ERROR);
          v43 = objc_opt_class();
          v44 = NSStringFromClass(v43);
          v45 = *(*(&v91 + 1) + 40);
          *v89 = 138543618;
          *&v89[4] = v44;
          *&v89[12] = 2112;
          *&v89[14] = v45;
          LODWORD(v73) = 22;
          v46 = _os_log_send_and_compose_impl();

          v47 = [(PLModelMigrationActionBackground *)self logger:v89];
          [v47 logWithMessage:v46 fromCodeLocation:"PLModelMigrationActionBackground.m" type:{740, 16}];

          if (v46 != buf)
          {
            free(v46);
          }
        }
      }

      goto LABEL_36;
    }

    v19 = -[PLModelMigrationActionBackground cancellableDiscreteProgressWithTotalUnitCount:pendingParentUnitCount:](self, "cancellableDiscreteProgressWithTotalUnitCount:pendingParentUnitCount:", [v18 count], 0);
    *v89 = 0;
    *&v89[8] = v89;
    *&v89[16] = 0x2020000000;
    v90 = 0;
    v75[0] = MEMORY[0x1E69E9820];
    v75[1] = 3221225472;
    v75[2] = __107__PLModelMigrationAction_FixDuplicateMergeCrashRecoveryAssets_performActionWithManagedObjectContext_error___block_invoke;
    v75[3] = &unk_1E75726E8;
    v75[4] = self;
    v77 = v89;
    v78 = &v81;
    v79 = &v91;
    v20 = v19;
    v76 = v20;
    v21 = [v5 enumerateWithIncrementalSaveUsingObjects:v18 withBlock:v75];
    if (v21 && (v22 = (*(&v91 + 1) + 40), !*(*(&v91 + 1) + 40)))
    {
      v82[3] = 3;
      objc_storeStrong(v22, v21);
      v50 = PLMigrationGetLog();
      v51 = os_log_type_enabled(v50, OS_LOG_TYPE_ERROR);

      if (!v51)
      {
        goto LABEL_35;
      }

      v52 = [(PLModelMigrationActionBackground *)self logger];
      v53 = v52 == 0;

      if (!v53)
      {
        v127 = 0u;
        v128 = 0u;
        v125 = 0u;
        v126 = 0u;
        v123 = 0u;
        v124 = 0u;
        v121 = 0u;
        v122 = 0u;
        v119 = 0u;
        v120 = 0u;
        v117 = 0u;
        v118 = 0u;
        v115 = 0u;
        v116 = 0u;
        v113 = 0u;
        v114 = 0u;
        v111 = 0u;
        v112 = 0u;
        v109 = 0u;
        v110 = 0u;
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
        memset(buf, 0, sizeof(buf));
        v54 = PLMigrationGetLog();
        os_log_type_enabled(v54, OS_LOG_TYPE_ERROR);
        v55 = objc_opt_class();
        v56 = NSStringFromClass(v55);
        v57 = *(*(&v91 + 1) + 40);
        v85 = 138543618;
        v86 = v56;
        v87 = 2112;
        v88 = v57;
        LODWORD(v73) = 22;
        v58 = _os_log_send_and_compose_impl();

        v59 = [(PLModelMigrationActionBackground *)self logger:&v85];
        [v59 logWithMessage:v58 fromCodeLocation:"PLModelMigrationActionBackground.m" type:{734, 16}];

        if (v58 != buf)
        {
          v31 = v58;
          goto LABEL_25;
        }

LABEL_35:

        _Block_object_dispose(v89, 8);
LABEL_36:
        [(PLModelMigrationActionBackground *)self finalizeProgress];
        v69 = v82[3];
        v70 = *(*(&v91 + 1) + 40);
        if (v69 != 1 && a4)
        {
          v70 = v70;
          *a4 = v70;
        }

        v49 = v82[3];
        _Block_object_dispose(&v81, 8);
        _Block_object_dispose(&v91, 8);

        goto LABEL_40;
      }

      v60 = PLMigrationGetLog();
      if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
      {
        v66 = objc_opt_class();
        v67 = NSStringFromClass(v66);
        v68 = *(*(&v91 + 1) + 40);
        *buf = 138543618;
        *&buf[4] = v67;
        *&buf[12] = 2112;
        *&buf[14] = v68;
        _os_log_impl(&dword_19BF1F000, v60, OS_LOG_TYPE_ERROR, "Asset could not be saved for %{public}@. Error: %@", buf, 0x16u);
      }
    }

    else
    {
      v23 = PLMigrationGetLog();
      v24 = os_log_type_enabled(v23, OS_LOG_TYPE_INFO);

      if (!v24)
      {
        goto LABEL_35;
      }

      v25 = [(PLModelMigrationActionBackground *)self logger];
      v26 = v25 == 0;

      if (!v26)
      {
        v127 = 0u;
        v128 = 0u;
        v125 = 0u;
        v126 = 0u;
        v123 = 0u;
        v124 = 0u;
        v121 = 0u;
        v122 = 0u;
        v119 = 0u;
        v120 = 0u;
        v117 = 0u;
        v118 = 0u;
        v115 = 0u;
        v116 = 0u;
        v113 = 0u;
        v114 = 0u;
        v111 = 0u;
        v112 = 0u;
        v109 = 0u;
        v110 = 0u;
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
        memset(buf, 0, sizeof(buf));
        v27 = PLMigrationGetLog();
        os_log_type_enabled(v27, OS_LOG_TYPE_INFO);
        v28 = *(*&v89[8] + 24);
        v85 = 134217984;
        v86 = v28;
        LODWORD(v73) = 12;
        v29 = _os_log_send_and_compose_impl();

        v30 = [(PLModelMigrationActionBackground *)self logger:&v85];
        [v30 logWithMessage:v29 fromCodeLocation:"PLModelMigrationActionBackground.m" type:{736, 1}];

        if (v29 != buf)
        {
          v31 = v29;
LABEL_25:
          free(v31);
          goto LABEL_35;
        }

        goto LABEL_35;
      }

      v60 = PLMigrationGetLog();
      if (os_log_type_enabled(v60, OS_LOG_TYPE_INFO))
      {
        v61 = *(*&v89[8] + 24);
        *buf = 134217984;
        *&buf[4] = v61;
        _os_log_impl(&dword_19BF1F000, v60, OS_LOG_TYPE_INFO, "Completed repair on %td assets", buf, 0xCu);
      }
    }

    goto LABEL_35;
  }

  v32 = PLMigrationGetLog();
  v33 = os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT);

  if (v33)
  {
    v34 = [(PLModelMigrationActionBackground *)self logger];

    if (v34)
    {
      v127 = 0u;
      v128 = 0u;
      v125 = 0u;
      v126 = 0u;
      v123 = 0u;
      v124 = 0u;
      v121 = 0u;
      v122 = 0u;
      v119 = 0u;
      v120 = 0u;
      v117 = 0u;
      v118 = 0u;
      v115 = 0u;
      v116 = 0u;
      v113 = 0u;
      v114 = 0u;
      v111 = 0u;
      v112 = 0u;
      v109 = 0u;
      v110 = 0u;
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
      memset(buf, 0, sizeof(buf));
      v35 = PLMigrationGetLog();
      os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT);
      LODWORD(v91) = 138543362;
      *(&v91 + 4) = v7;
      LODWORD(v72) = 12;
      v36 = _os_log_send_and_compose_impl();

      v37 = [(PLModelMigrationActionBackground *)self logger:&v91];
      [v37 logWithMessage:v36 fromCodeLocation:"PLModelMigrationActionBackground.m" type:{693, 0}];

      if (v36 != buf)
      {
        free(v36);
      }
    }

    else
    {
      v48 = PLMigrationGetLog();
      if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        *&buf[4] = v7;
        _os_log_impl(&dword_19BF1F000, v48, OS_LOG_TYPE_DEFAULT, "%{public}@ was skipped. Library is not in a valid state for repair", buf, 0xCu);
      }
    }
  }

  v49 = 1;
LABEL_40:

  return v49;
}

@end