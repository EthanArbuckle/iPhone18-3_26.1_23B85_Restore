@interface PUIPosterSnapshotSQLiteCacheImplementation
@end

@implementation PUIPosterSnapshotSQLiteCacheImplementation

void __69___PUIPosterSnapshotSQLiteCacheImplementation_prepareCacheWithError___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v6 = a1 + 32;
    v5 = *(a1 + 32);
    v7 = *(v5 + 56);
    *(v5 + 56) = 0;

    v8 = *(*(a1 + 32) + 64);
    *(*(a1 + 32) + 64) = 0;

    v9 = PUILogSnapshotCache();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      __69___PUIPosterSnapshotSQLiteCacheImplementation_prepareCacheWithError___block_invoke_cold_1(a1 + 32, v4);
    }

    [*(*v6 + 48) invalidate];
    v10 = *(*v6 + 48);
    *(*v6 + 48) = 0;

    objc_storeStrong((*v6 + 40), a2);
  }

  v11 = PUILogSnapshotCache();
  v12 = v11;
  v13 = *(a1 + 40);
  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    *v14 = 0;
    _os_signpost_emit_with_name_impl(&dword_1A8C85000, v12, OS_SIGNPOST_INTERVAL_END, v13, "SnapshotCachePrepare", &unk_1A8D256D3, v14, 2u);
  }
}

id __69___PUIPosterSnapshotSQLiteCacheImplementation_prepareCacheWithError___block_invoke_560(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AFB0];
  v3 = a2;
  v4 = [v2 alloc];
  v5 = [v3 lastPathComponent];

  v6 = [v4 initWithUUIDString:v5];

  return v6;
}

id __90___PUIPosterSnapshotSQLiteCacheImplementation_discardSnapshotBundlesMatchingSQLPredicate___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = objc_opt_new();
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __90___PUIPosterSnapshotSQLiteCacheImplementation_discardSnapshotBundlesMatchingSQLPredicate___block_invoke_2;
  v15[3] = &unk_1E7855540;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  v9 = *(a1 + 64);
  *&v10 = v8;
  *(&v10 + 1) = v9;
  *&v11 = v6;
  *(&v11 + 1) = v7;
  v16 = v11;
  v17 = v10;
  v18 = v4;
  v12 = v4;
  [v5 mutate:v15 error:a2];
  v13 = [v12 copy];

  return v13;
}

BOOL __90___PUIPosterSnapshotSQLiteCacheImplementation_discardSnapshotBundlesMatchingSQLPredicate___block_invoke_2(uint64_t a1, void *a2)
{
  v44 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = objc_opt_self();
  v5 = [v3 unarchiveObjectsOfClass:v4 predicate:*(a1 + 32) error:0];

  v6 = [v5 count];
  if (v6)
  {
    v27 = v6;
    v28 = v5;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    obj = v5;
    v7 = [obj countByEnumeratingWithState:&v35 objects:v43 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v36;
      v29 = v3;
      v30 = *v36;
      do
      {
        v10 = 0;
        v31 = v8;
        do
        {
          if (*v36 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v35 + 1) + 8 * v10);
          v34 = 0;
          v12 = [v3 deleteObject:v11 error:&v34];
          v13 = v34;
          if (v12)
          {
            v14 = [v11 snapshotBundleURLRelativeToURL:*(a1 + 48)];
            v15 = [v14 URLByDeletingLastPathComponent];
            v16 = *(a1 + 56);
            v33 = 0;
            v17 = [v16 removeItemAtURL:v15 error:&v33];
            v18 = v33;
            v19 = PUILogSnapshotCache();
            v20 = v19;
            if (v17)
            {
              if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
              {
                v21 = *(a1 + 40);
                v22 = [v15 lastPathComponent];
                *buf = 138543618;
                v40 = v21;
                v3 = v29;
                v41 = 2114;
                v42 = v22;
                _os_log_impl(&dword_1A8C85000, v20, OS_LOG_TYPE_INFO, "<%{public}@> Deleted snapshot bundle: %{public}@", buf, 0x16u);
              }
            }

            else if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
            {
              v24 = *(a1 + 40);
              *buf = 138543618;
              v40 = v24;
              v41 = 2114;
              v42 = v18;
              _os_log_error_impl(&dword_1A8C85000, v20, OS_LOG_TYPE_ERROR, "<%{public}@> Failed to remove snapshot bundle: %{public}@", buf, 0x16u);
            }

            [*(a1 + 64) addObject:v11];
            v9 = v30;
            v8 = v31;
          }

          else
          {
            v14 = PUILogSnapshotCache();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
            {
              v23 = *(a1 + 40);
              *buf = 138543618;
              v40 = v23;
              v41 = 2114;
              v42 = v13;
              _os_log_error_impl(&dword_1A8C85000, v14, OS_LOG_TYPE_ERROR, "<%{public}@> Failed to delete snapshot bundle record with error: %{public}@", buf, 0x16u);
            }
          }

          ++v10;
        }

        while (v8 != v10);
        v8 = [obj countByEnumeratingWithState:&v35 objects:v43 count:16];
      }

      while (v8);
    }

    v6 = v27;
    v5 = v28;
  }

  v25 = v6 != 0;

  return v25;
}

void __90___PUIPosterSnapshotSQLiteCacheImplementation_discardSnapshotBundlesMatchingSQLPredicate___block_invoke_571(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PUILogSnapshotCache();
  v5 = v4;
  v6 = *(a1 + 40);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    v7 = *(a1 + 32);
    v8 = 138543618;
    v9 = v7;
    v10 = 2112;
    v11 = v3;
    _os_signpost_emit_with_name_impl(&dword_1A8C85000, v5, OS_SIGNPOST_INTERVAL_END, v6, "discardSnapshotBundlesMatchingSQLPredicate:", "<%{public}@> Succeeded with result: %@", &v8, 0x16u);
  }
}

void __90___PUIPosterSnapshotSQLiteCacheImplementation_discardSnapshotBundlesMatchingSQLPredicate___block_invoke_573(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PUILogSnapshotCache();
  v5 = v4;
  v6 = *(a1 + 40);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    v7 = *(a1 + 32);
    v8 = 138543618;
    v9 = v7;
    v10 = 2114;
    v11 = v3;
    _os_signpost_emit_with_name_impl(&dword_1A8C85000, v5, OS_SIGNPOST_INTERVAL_END, v6, "discardSnapshotBundlesMatchingSQLPredicate:", "<%{public}@> Failed with error: %{public}@", &v8, 0x16u);
  }
}

id __99___PUIPosterSnapshotSQLiteCacheImplementation_snapshotBundlesMatchingSQLPredicate_orderedBy_limit___block_invoke(uint64_t a1, void *a2)
{
  v4 = objc_opt_new();
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __99___PUIPosterSnapshotSQLiteCacheImplementation_snapshotBundlesMatchingSQLPredicate_orderedBy_limit___block_invoke_2;
  v18[3] = &unk_1E78555B8;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  *&v8 = *(a1 + 56);
  *(&v8 + 1) = *(a1 + 64);
  *&v9 = v6;
  *(&v9 + 1) = v7;
  v19 = v9;
  v20 = v8;
  v21 = *(a1 + 72);
  v22 = *(a1 + 80);
  v10 = v4;
  v23 = v10;
  v17 = 0;
  [v5 access:v18 error:&v17];
  v11 = v17;
  v12 = v11;
  if (v11)
  {
    v13 = v11;
    v14 = 0;
    *a2 = v12;
  }

  else if (v10 && [v10 count])
  {
    v14 = [v10 copy];
  }

  else
  {
    v15 = PFFunctionNameForAddress();
    *a2 = PFGeneralErrorFromObjectWithLocalizedFailureReason();

    v14 = 0;
  }

  return v14;
}

void __99___PUIPosterSnapshotSQLiteCacheImplementation_snapshotBundlesMatchingSQLPredicate_orderedBy_limit___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v33 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = objc_opt_self();
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v27 = 0;
  v10 = [v5 unarchiveObjectsOfClass:v6 predicate:v7 limitOffset:v8 orderedBy:v9 error:&v27];
  v11 = v27;

  if (v11)
  {
    v12 = v11;
    *a3 = v11;
    v13 = PUILogSnapshotCache();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      __99___PUIPosterSnapshotSQLiteCacheImplementation_snapshotBundlesMatchingSQLPredicate_orderedBy_limit___block_invoke_2_cold_1();
    }
  }

  else
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v13 = v10;
    v14 = [v13 countByEnumeratingWithState:&v23 objects:v32 count:16];
    if (v14)
    {
      v15 = v14;
      v22 = v5;
      v16 = *v24;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v24 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = [*(*(&v23 + 1) + 8 * i) snapshotBundleURLRelativeToURL:*(a1 + 72)];
          v19 = [[PUIPosterSnapshotBundle alloc] initWithURL:v18];
          v20 = PUILogSnapshotCache();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
          {
            v21 = *(a1 + 64);
            *buf = 138543618;
            v29 = v21;
            v30 = 2114;
            v31 = v19;
            _os_log_impl(&dword_1A8C85000, v20, OS_LOG_TYPE_INFO, "<%{public}@> found: %{public}@", buf, 0x16u);
          }

          [*(a1 + 80) bs_safeAddObject:v19];
        }

        v15 = [v13 countByEnumeratingWithState:&v23 objects:v32 count:16];
      }

      while (v15);
      v5 = v22;
      v11 = 0;
    }
  }
}

void __99___PUIPosterSnapshotSQLiteCacheImplementation_snapshotBundlesMatchingSQLPredicate_orderedBy_limit___block_invoke_581(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PUILogSnapshotCache();
  v5 = v4;
  v6 = *(a1 + 40);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    v7 = *(a1 + 32);
    v8 = 138543618;
    v9 = v7;
    v10 = 2112;
    v11 = v3;
    _os_signpost_emit_with_name_impl(&dword_1A8C85000, v5, OS_SIGNPOST_INTERVAL_END, v6, "snapshotBundlesMatchingSQLPredicate:orderedBy:limit:", "<%{public}@> Succeeded with result: %@", &v8, 0x16u);
  }
}

void __99___PUIPosterSnapshotSQLiteCacheImplementation_snapshotBundlesMatchingSQLPredicate_orderedBy_limit___block_invoke_583(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PUILogSnapshotCache();
  v5 = v4;
  v6 = *(a1 + 40);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    v7 = *(a1 + 32);
    v8 = 138543618;
    v9 = v7;
    v10 = 2114;
    v11 = v3;
    _os_signpost_emit_with_name_impl(&dword_1A8C85000, v5, OS_SIGNPOST_INTERVAL_END, v6, "snapshotBundlesMatchingSQLPredicate:orderedBy:limit:", "<%{public}@> Failed with error: %{public}@", &v8, 0x16u);
  }
}

PUIPosterSnapshotBundle *__75___PUIPosterSnapshotSQLiteCacheImplementation_cacheSnapshotBundle_options___block_invoke(uint64_t a1, void *a2)
{
  v4 = [[_PUIPosterSnapshotCacheRecord alloc] initWithSnapshotContext:*(a1 + 32)];
  v5 = [(_PUIPosterSnapshotCacheRecord *)v4 snapshotBundleURLRelativeToURL:*(a1 + 40)];
  v6 = [v5 URLByDeletingLastPathComponent];
  v7 = [*(a1 + 32) bundleURL];
  if ([v5 pf_isUnderlyingFileSystemResourceEqualToURL:v7])
  {
    v8 = PFFunctionNameForAddress();
    *a2 = PFGeneralErrorFromObjectWithLocalizedFailureReason();

    v9 = 0;
  }

  else
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __75___PUIPosterSnapshotSQLiteCacheImplementation_cacheSnapshotBundle_options___block_invoke_2;
    v13[3] = &unk_1E7855630;
    v10 = *(a1 + 64);
    v14 = *(a1 + 72);
    v15 = v4;
    v16 = *(a1 + 80);
    v17 = v6;
    v18 = v7;
    v11 = v5;
    v19 = v11;
    v20 = *(a1 + 40);
    if ([v10 mutate:v13 error:a2])
    {
      v9 = [[PUIPosterSnapshotBundle alloc] initWithURL:v11];
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

uint64_t __75___PUIPosterSnapshotSQLiteCacheImplementation_cacheSnapshotBundle_options___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v79 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = [*(a1 + 32) cleanupPredicates];
  v7 = [v6 count];

  if (v7)
  {
    v8 = objc_opt_new();
    v72 = 0u;
    v73 = 0u;
    v74 = 0u;
    v75 = 0u;
    v9 = [*(a1 + 32) cleanupPredicates];
    v10 = [v9 countByEnumeratingWithState:&v72 objects:v78 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v73;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v73 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = [*(*(&v72 + 1) + 8 * i) SQLitePredicate];
          [v8 addObject:v14];
        }

        v11 = [v9 countByEnumeratingWithState:&v72 objects:v78 count:16];
      }

      while (v11);
    }

    v15 = [MEMORY[0x1E69C51C8] orPredicateWithPredicates:v8];
    v16 = [v5 unarchiveObjectsOfClass:objc_opt_class() predicate:v15 error:0];
  }

  else
  {
    v16 = 0;
  }

  v17 = [v5 archiveObject:*(a1 + 40) error:a3];
  if (!v17)
  {
    goto LABEL_24;
  }

  v18 = *(a1 + 48);
  v19 = *(a1 + 56);
  v20 = PFFileProtectionNoneAttributes();
  v71 = 0;
  LOBYTE(v19) = [v18 createDirectoryAtURL:v19 withIntermediateDirectories:1 attributes:v20 error:&v71];
  v21 = v71;

  v22 = *(a1 + 48);
  if ((v19 & 1) == 0)
  {
    [v22 removeItemAtURL:*(a1 + 56) error:0];
    v48 = v21;
    v17 = 0;
    *a3 = v21;
LABEL_39:

    goto LABEL_40;
  }

  v23 = *(a1 + 64);
  v24 = *(a1 + 72);
  v70 = 0;
  v25 = [v22 copyItemAtURL:v23 toURL:v24 error:&v70];
  v26 = v70;
  if ((v25 & 1) == 0)
  {
    [*(a1 + 48) removeItemAtURL:*(a1 + 56) error:0];
    v49 = v26;
    *a3 = v26;
LABEL_38:

    v17 = 0;
    goto LABEL_39;
  }

  v27 = *(a1 + 56);
  v69 = 0;
  v28 = [v27 pf_setExcludedFromBackup:1 error:&v69];
  v29 = v69;
  v30 = v29;
  if ((v28 & 1) == 0)
  {
    [*(a1 + 48) removeItemAtURL:*(a1 + 56) error:0];
    v50 = v30;
    *a3 = v30;

    goto LABEL_38;
  }

  v54 = v29;
  v55 = v26;
  v57 = v17;
  v53 = a3;
  v56 = v16;
  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  obj = [*(a1 + 48) contentsOfDirectoryAtURL:*(a1 + 56) includingPropertiesForKeys:0 options:0 error:0];
  v31 = [obj countByEnumeratingWithState:&v65 objects:v77 count:16];
  if (v31)
  {
    v32 = v31;
    v33 = *v66;
    while (2)
    {
      for (j = 0; j != v32; ++j)
      {
        if (*v66 != v33)
        {
          objc_enumerationMutation(obj);
        }

        v35 = *(*(&v65 + 1) + 8 * j);
        v36 = *(a1 + 48);
        v37 = PFFileProtectionNoneAttributes();
        v38 = [v35 path];
        v64 = 0;
        LOBYTE(v36) = [v36 setAttributes:v37 ofItemAtPath:v38 error:&v64];
        v39 = v64;

        if ((v36 & 1) == 0)
        {
          [*(a1 + 48) removeItemAtURL:*(a1 + 56) error:0];
          v52 = v39;
          *v53 = v39;

          v17 = 0;
          v16 = v56;
          goto LABEL_39;
        }
      }

      v32 = [obj countByEnumeratingWithState:&v65 objects:v77 count:16];
      if (v32)
      {
        continue;
      }

      break;
    }
  }

  v16 = v56;
  v17 = v57;
LABEL_24:
  if ([v16 count])
  {
    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v21 = v16;
    v40 = [v21 countByEnumeratingWithState:&v60 objects:v76 count:16];
    if (v40)
    {
      v41 = v40;
      v58 = v17;
      v42 = *v61;
      do
      {
        for (k = 0; k != v41; ++k)
        {
          if (*v61 != v42)
          {
            objc_enumerationMutation(v21);
          }

          v44 = *(*(&v60 + 1) + 8 * k);
          if ([v5 deleteObject:v44 error:0])
          {
            v45 = [v44 snapshotBundleURLRelativeToURL:*(a1 + 80)];
            v46 = *(a1 + 48);
            v47 = [v45 URLByDeletingLastPathComponent];
            [v46 removeItemAtURL:v47 error:0];
          }
        }

        v41 = [v21 countByEnumeratingWithState:&v60 objects:v76 count:16];
      }

      while (v41);
      v17 = v58;
    }

    goto LABEL_39;
  }

LABEL_40:

  return v17;
}

void __75___PUIPosterSnapshotSQLiteCacheImplementation_cacheSnapshotBundle_options___block_invoke_3(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PUILogSnapshotCache();
  v5 = v4;
  v6 = *(a1 + 40);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    v7 = *(a1 + 32);
    v8 = 138543618;
    v9 = v7;
    v10 = 2112;
    v11 = v3;
    _os_signpost_emit_with_name_impl(&dword_1A8C85000, v5, OS_SIGNPOST_INTERVAL_END, v6, "cacheSnapshotBundle", "<%{public}@> Succeeded with result: %@", &v8, 0x16u);
  }
}

void __75___PUIPosterSnapshotSQLiteCacheImplementation_cacheSnapshotBundle_options___block_invoke_589(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PUILogSnapshotCache();
  v5 = v4;
  v6 = *(a1 + 40);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    v7 = *(a1 + 32);
    v8 = 138543618;
    v9 = v7;
    v10 = 2114;
    v11 = v3;
    _os_signpost_emit_with_name_impl(&dword_1A8C85000, v5, OS_SIGNPOST_INTERVAL_END, v6, "cacheSnapshotBundle", "<%{public}@> Failed with error: %{public}@", &v8, 0x16u);
  }
}

void __69___PUIPosterSnapshotSQLiteCacheImplementation_prepareCacheWithError___block_invoke_cold_1(uint64_t a1, void *a2)
{
  v2 = [a2 localizedDescription];
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_9(&dword_1A8C85000, v3, v4, "<%p> invalidating the database connection because of a fatal error: %@", v5, v6, v7, v8, 2u);
}

@end