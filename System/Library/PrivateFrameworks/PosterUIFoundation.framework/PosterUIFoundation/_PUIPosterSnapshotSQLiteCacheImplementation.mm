@interface _PUIPosterSnapshotSQLiteCacheImplementation
- (BOOL)checkCacheIsReachableWithError:(id *)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)prepareCacheWithError:(id *)a3;
- (_PUIPosterSnapshotSQLiteCacheImplementation)initWithURL:(id)a3 fileManager:(id)a4 options:(int64_t)a5 cacheQueue:(id)a6 scheduler:(id)a7 error:(id *)a8;
- (id)cacheSnapshotBundle:(id)a3 options:(id)a4;
- (id)discardSnapshotBundlesMatchingSQLPredicate:(id)a3;
- (id)snapshotBundlesMatchingSQLPredicate:(id)a3 orderedBy:(id)a4 limit:(id)a5;
- (unint64_t)hash;
- (void)dealloc;
- (void)invalidate;
@end

@implementation _PUIPosterSnapshotSQLiteCacheImplementation

- (_PUIPosterSnapshotSQLiteCacheImplementation)initWithURL:(id)a3 fileManager:(id)a4 options:(int64_t)a5 cacheQueue:(id)a6 scheduler:(id)a7 error:(id *)a8
{
  v70[3] = *MEMORY[0x1E69E9840];
  v14 = a3;
  v15 = a4;
  v16 = a6;
  v17 = a7;
  v64.receiver = self;
  v64.super_class = _PUIPosterSnapshotSQLiteCacheImplementation;
  v18 = [(_PUIPosterSnapshotSQLiteCacheImplementation *)&v64 init];
  if (!v18)
  {
LABEL_25:
    v24 = v18;
    goto LABEL_26;
  }

  v19 = objc_opt_new();
  invalidationFlag = v18->_invalidationFlag;
  v18->_invalidationFlag = v19;

  v18->_options = a5;
  v21 = [v14 URLByStandardizingPath];
  cacheURL = v18->_cacheURL;
  v18->_cacheURL = v21;

  if ([(NSURL *)v18->_cacheURL checkResourceIsReachableAndReturnError:a8])
  {
    if (v15)
    {
      v23 = v15;
    }

    else
    {
      v23 = objc_opt_new();
    }

    fileManager = v18->_fileManager;
    v18->_fileManager = v23;

    v26 = [(NSURL *)v18->_cacheURL URLByAppendingPathComponent:@"PosterSnapshotCache.bundle" conformingToType:*MEMORY[0x1E6982D00]];
    rootCacheURL = v18->_rootCacheURL;
    v18->_rootCacheURL = v26;

    v28 = [(NSURL *)v18->_rootCacheURL URLByAppendingPathComponent:@"SnapshotBundles"];
    snapshotBundleContainerURL = v18->_snapshotBundleContainerURL;
    v18->_snapshotBundleContainerURL = v28;

    v30 = [(NSURL *)v18->_rootCacheURL URLByAppendingPathComponent:@"cache.db"];
    databaseURL = v18->_databaseURL;
    v18->_databaseURL = v30;

    if ((v18->_options & 4) == 0)
    {
      v55 = a6;
      v56 = a7;
      v57 = v17;
      v58 = v16;
      v32 = MEMORY[0x1E695DFF8];
      v33 = [(NSURL *)v18->_databaseURL path];
      v34 = [v33 stringByAppendingString:@"-shm"];
      v35 = [v32 fileURLWithPath:v34];

      v36 = MEMORY[0x1E695DFF8];
      v37 = [(NSURL *)v18->_databaseURL path];
      v38 = [v37 stringByAppendingString:@"-wal"];
      v39 = [v36 fileURLWithPath:v38];

      v70[0] = v18->_databaseURL;
      v70[1] = v35;
      v53 = v39;
      v54 = v35;
      v70[2] = v39;
      [MEMORY[0x1E695DEC8] arrayWithObjects:v70 count:3];
      v60 = 0u;
      v61 = 0u;
      v62 = 0u;
      v40 = v63 = 0u;
      v41 = [v40 countByEnumeratingWithState:&v60 objects:v69 count:16];
      if (v41)
      {
        v42 = v41;
        v43 = *v61;
        do
        {
          for (i = 0; i != v42; ++i)
          {
            if (*v61 != v43)
            {
              objc_enumerationMutation(v40);
            }

            v45 = *(*(&v60 + 1) + 8 * i);
            if ([v45 checkResourceIsReachableAndReturnError:0])
            {
              if ([v45 pf_allowSuspendWithOpenFileHandle])
              {
                v46 = 0;
              }

              else
              {
                v59 = 0;
                v47 = [v45 pf_setAllowSuspendWithOpenFileHandle:1 error:&v59];
                v46 = v59;
                if ((v47 & 1) == 0)
                {
                  v48 = PUILogSnapshotCache();
                  if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
                  {
                    v49 = [v45 lastPathComponent];
                    *buf = 138543618;
                    v66 = v49;
                    v67 = 2114;
                    v68 = v46;
                    _os_log_error_impl(&dword_1A8C85000, v48, OS_LOG_TYPE_ERROR, "<_PUIPosterSnapshotSQLiteCacheImplementation init> Unable to change allow-suspend-with-open-file-handle for sqlite database url %{public}@: %{public}@", buf, 0x16u);
                  }
                }
              }
            }
          }

          v42 = [v40 countByEnumeratingWithState:&v60 objects:v69 count:16];
        }

        while (v42);
      }

      v17 = v57;
      v16 = v58;
      a6 = v55;
      a7 = v56;
    }

    objc_storeStrong(&v18->_cacheQueue, a6);
    objc_storeStrong(&v18->_cacheQueueScheduler, a7);
    v50 = [MEMORY[0x1E696AFB0] UUID];
    identifier = v18->_identifier;
    v18->_identifier = v50;

    goto LABEL_25;
  }

  [(BSAtomicSignal *)v18->_invalidationFlag signal];
  v24 = 0;
LABEL_26:

  return v24;
}

- (void)dealloc
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_2_1();
    OUTLINED_FUNCTION_1_0(&dword_1A8C85000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_invalidationFlag && [_invalidationFlag hasBeenSignalled]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = v4;
  if (v5)
  {
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  if (v8)
  {
    v9 = [(NSUUID *)self->_identifier isEqual:v8[4]];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x1E698E6B8]);
  v4 = [v3 appendObject:self->_identifier];
  v5 = [v3 hash];

  return v5;
}

- (void)invalidate
{
  v2 = NSStringFromSelector(aSelector);
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_9(&dword_1A8C85000, v3, v4, "<%p> invalidating the database connection from: %@", v5, v6, v7, v8, 2u);
}

- (BOOL)prepareCacheWithError:(id *)a3
{
  v4 = self;
  v174 = *MEMORY[0x1E69E9840];
  if ([(BSAtomicSignal *)self->_invalidationFlag hasBeenSignalled])
  {
    if (a3)
    {
      v5 = PFFunctionNameForAddress();
      *a3 = PFGeneralErrorFromObjectWithLocalizedFailureReason();
    }

    return 0;
  }

  v6 = [(_PUIPosterSnapshotSQLiteCacheImplementation *)v4 databaseConnectionAcquisitionError];

  if (!v6)
  {
    if (v4->_databaseConnection)
    {
      return 1;
    }

    v9 = PUILogSnapshotCache();
    v10 = os_signpost_id_generate(v9);

    v11 = PUILogSnapshotCache();
    v12 = v11;
    if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1A8C85000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v10, "SnapshotCachePrepare", &unk_1A8D256D3, buf, 2u);
    }

    v146 = v4->_fileManager;
    v13 = v4->_databaseURL;
    v145 = v4->_cacheLogIdentifier;
    options = v4->_options;
    v15 = [(NSURL *)v4->_cacheURL URLByAppendingPathComponent:@"PosterSnapshots" isDirectory:1];
    v164[0] = MEMORY[0x1E69E9820];
    v164[1] = 3221225472;
    v164[2] = __69___PUIPosterSnapshotSQLiteCacheImplementation_prepareCacheWithError___block_invoke;
    v164[3] = &unk_1E78554F8;
    v164[4] = v4;
    v164[5] = v10;
    v16 = MEMORY[0x1AC5769F0](v164);
    if ((options & 6) != 0)
    {
      if ([v15 checkResourceIsReachableAndReturnError:0])
      {
        v17 = PFFunctionNameForAddress();
        PFGeneralErrorFromObjectWithLocalizedFailureReason();
        *a3 = v7 = 0;
LABEL_131:

        goto LABEL_132;
      }

      if (![(NSURL *)v4->_databaseURL checkResourceIsReachableAndReturnError:a3]|| ![(NSURL *)v4->_snapshotBundleContainerURL checkResourceIsReachableAndReturnError:a3])
      {
        v7 = 0;
LABEL_132:

        return v7;
      }
    }

    if ([v15 checkResourceIsReachableAndReturnError:0])
    {
      v163 = 0;
      v18 = [(NSFileManager *)v146 removeItemAtURL:v15 error:&v163];
      v19 = v163;
      v17 = v19;
      if (!v18)
      {
        v56 = v19;
        *a3 = v17;
        (v16)[2](v16, v17);
        v57 = PUILogSnapshotCache();
        if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
        {
          [_PUIPosterSnapshotSQLiteCacheImplementation prepareCacheWithError:];
        }

        goto LABEL_69;
      }

      v20 = PUILogSnapshotCache();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        [_PUIPosterSnapshotSQLiteCacheImplementation prepareCacheWithError:];
      }
    }

    else
    {
      v17 = PUILogSnapshotCache();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        [_PUIPosterSnapshotSQLiteCacheImplementation prepareCacheWithError:];
      }
    }

    if ([(NSURL *)v4->_rootCacheURL checkResourceIsReachableAndReturnError:0])
    {
      v21 = [(NSURL *)v4->_databaseURL checkResourceIsReachableAndReturnError:0];
      [(NSURL *)v4->_snapshotBundleContainerURL checkResourceIsReachableAndReturnError:0];
      goto LABEL_31;
    }

    rootCacheURL = v4->_rootCacheURL;
    v23 = PFPosterPathFileAttributes();
    v162 = 0;
    LOBYTE(rootCacheURL) = [(NSFileManager *)v146 createDirectoryAtURL:rootCacheURL withIntermediateDirectories:0 attributes:v23 error:&v162];
    v17 = v162;

    if (rootCacheURL)
    {

      v21 = 0;
LABEL_31:
      v24 = PUILogSnapshotCache();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
      {
        [_PUIPosterSnapshotSQLiteCacheImplementation prepareCacheWithError:];
      }

      v131 = v21;
      if (!(v21 | (options >> 2) & 1))
      {
        v133 = a3;
        v135 = v16;
        v138 = v15;
        v140 = v13;
        v130 = v4;
        v25 = v4->_databaseURL;
        v26 = MEMORY[0x1E695DFF8];
        v27 = [(NSURL *)v25 path];
        v28 = [v27 stringByAppendingString:@"-shm"];
        v29 = [v26 fileURLWithPath:v28];

        v30 = MEMORY[0x1E695DFF8];
        v31 = [(NSURL *)v25 path];
        v32 = [v31 stringByAppendingString:@"-wal"];
        v33 = [v30 fileURLWithPath:v32];

        v160 = 0u;
        v161 = 0u;
        v158 = 0u;
        v159 = 0u;
        v128 = v29;
        v172[0] = v25;
        v172[1] = v29;
        v127 = v33;
        v172[2] = v33;
        v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:v172 count:3];
        v35 = [v34 countByEnumeratingWithState:&v158 objects:v173 count:16];
        if (!v35)
        {
          goto LABEL_48;
        }

        v36 = v35;
        v37 = *v159;
        while (1)
        {
          v38 = 0;
          do
          {
            if (*v159 != v37)
            {
              objc_enumerationMutation(v34);
            }

            v39 = *(*(&v158 + 1) + 8 * v38);
            v40 = [v39 path];
            v41 = [MEMORY[0x1E695DEF0] data];
            v42 = PFPosterPathFileAttributes();
            [(NSFileManager *)v146 createFileAtPath:v40 contents:v41 attributes:v42];

            v157 = 0;
            LOBYTE(v42) = [v39 pf_setAllowSuspendWithOpenFileHandle:1 error:&v157];
            v43 = v157;
            v44 = PUILogSnapshotCache();
            v45 = v44;
            if (v42)
            {
              if (!os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_44;
              }

              v46 = [v39 lastPathComponent];
              *buf = 138543874;
              v167 = v145;
              v168 = 2114;
              v169 = v46;
              v170 = 2114;
              v171 = v43;
              _os_log_impl(&dword_1A8C85000, v45, OS_LOG_TYPE_DEFAULT, "<%{public}@> Changed allow-suspend-with-open-file-handle for sqlite database url %{public}@: %{public}@", buf, 0x20u);
              goto LABEL_42;
            }

            if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
            {
              v46 = [v39 lastPathComponent];
              *buf = 138543874;
              v167 = v145;
              v168 = 2114;
              v169 = v46;
              v170 = 2114;
              v171 = v43;
              _os_log_error_impl(&dword_1A8C85000, v45, OS_LOG_TYPE_ERROR, "<%{public}@> Unable to change allow-suspend-with-open-file-handle for sqlite database url %{public}@: %{public}@", buf, 0x20u);
LABEL_42:
            }

LABEL_44:

            ++v38;
          }

          while (v36 != v38);
          v47 = [v34 countByEnumeratingWithState:&v158 objects:v173 count:16];
          v36 = v47;
          if (!v47)
          {
LABEL_48:

            v15 = v138;
            v13 = v140;
            a3 = v133;
            v16 = v135;
            v4 = v130;
            break;
          }
        }
      }

      if ((options & 2) != 0)
      {
        v48 = 2;
      }

      else
      {
        v48 = 6;
      }

      if ((options & 4) != 0)
      {
        v49 = 1;
      }

      else
      {
        v49 = v48;
      }

      v50 = objc_alloc(MEMORY[0x1E69C51A0]);
      databaseURL = v4->_databaseURL;
      v156 = 0;
      v52 = [v50 initWithFileURL:databaseURL options:v49 dataProtectionClass:1 error:&v156];
      v17 = v156;
      databaseConnection = v4->_databaseConnection;
      v4->_databaseConnection = v52;

      if (v17)
      {
        v54 = v17;
        *a3 = v17;
        (v16)[2](v16, v17);
        v55 = PUILogSnapshotCache();
        if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
        {
          [_PUIPosterSnapshotSQLiteCacheImplementation prepareCacheWithError:];
        }

        v7 = 0;
        goto LABEL_130;
      }

      v58 = PUILogSnapshotCache();
      if (os_log_type_enabled(v58, OS_LOG_TYPE_DEBUG))
      {
        [_PUIPosterSnapshotSQLiteCacheImplementation prepareCacheWithError:];
      }

      v59 = v4->_databaseConnection;
      v155 = 0;
      [(PFSQLiteDatabaseConnection *)v59 executeQuery:@"PRAGMA journal_mode=WAL;" error:&v155];
      v60 = v155;
      v55 = v60;
      if (v60)
      {
        v61 = v60;
        *a3 = v55;
        (v16)[2](v16, v55);
        v62 = PUILogSnapshotCache();
        if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
        {
          [_PUIPosterSnapshotSQLiteCacheImplementation prepareCacheWithError:];
        }

        v7 = 0;
        goto LABEL_129;
      }

      v64 = objc_alloc(MEMORY[0x1E69C5188]);
      v65 = v4->_databaseConnection;
      v154 = 0;
      v66 = [v64 initWithDatabaseConnection:v65 error:&v154];
      v62 = v154;
      archiver = v4->_archiver;
      v4->_archiver = v66;

      if (v62)
      {
        v68 = v62;
        *a3 = v62;
        (v16)[2](v16, v62);
        v69 = PUILogSnapshotCache();
        if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
        {
          [_PUIPosterSnapshotSQLiteCacheImplementation prepareCacheWithError:];
        }

        v7 = 0;
        goto LABEL_128;
      }

      v70 = PUILogSnapshotCache();
      if (os_log_type_enabled(v70, OS_LOG_TYPE_DEBUG))
      {
        [_PUIPosterSnapshotSQLiteCacheImplementation prepareCacheWithError:];
      }

      v71 = objc_alloc(MEMORY[0x1E69C51B0]);
      v72 = v4->_databaseConnection;
      v153 = 0;
      v142 = [v71 initWithDatabaseConnection:v72 error:&v153];
      v73 = v153;
      keyedArchiver = v4->_keyedArchiver;
      v4->_keyedArchiver = v142;

      if (v73)
      {
        v75 = v73;
        *a3 = v73;
        (v16)[2](v16, v73);
        v76 = PUILogSnapshotCache();
        v69 = v73;
        if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
        {
          [_PUIPosterSnapshotSQLiteCacheImplementation prepareCacheWithError:];
        }

        v7 = 0;
        goto LABEL_127;
      }

      v77 = PUILogSnapshotCache();
      if (os_log_type_enabled(v77, OS_LOG_TYPE_DEBUG))
      {
        [_PUIPosterSnapshotSQLiteCacheImplementation prepareCacheWithError:];
      }

      v129 = [(PFSQLiteKeyedArchiver *)v4->_keyedArchiver objectForKey:@"schema_version" ofClass:objc_opt_class()];
      v78 = [v129 unsignedIntegerValue]| options & 4;
      v126 = v78 != 0;
      v139 = v15;
      v141 = v13;
      if (!v78)
      {
        v132 = options;
        v134 = a3;
        v136 = v16;
        v79 = PUILogSnapshotCache();
        if (os_log_type_enabled(v79, OS_LOG_TYPE_DEBUG))
        {
          [_PUIPosterSnapshotSQLiteCacheImplementation prepareCacheWithError:];
        }

        v151 = 0u;
        v152 = 0u;
        v149 = 0u;
        v150 = 0u;
        v80 = v4;
        v81 = [(PFSQLiteDatabaseConnection *)v4->_databaseConnection tableNames];
        v82 = [v81 countByEnumeratingWithState:&v149 objects:v165 count:16];
        if (v82)
        {
          v83 = v82;
          v84 = *v150;
          do
          {
            for (i = 0; i != v83; ++i)
            {
              if (*v150 != v84)
              {
                objc_enumerationMutation(v81);
              }

              v86 = *(*(&v149 + 1) + 8 * i);
              if (([v86 isEqualToString:@"_PFSQLiteKeyedArchiverEntry"] & 1) == 0)
              {
                v87 = v80->_databaseConnection;
                v88 = [MEMORY[0x1E696AEC0] stringWithFormat:@"DROP TABLE %@", v86];
                [(PFSQLiteDatabaseConnection *)v87 executeQuery:v88 error:0];
              }
            }

            v83 = [v81 countByEnumeratingWithState:&v149 objects:v165 count:16];
          }

          while (v83);
        }

        v4 = v80;
        [(NSFileManager *)v146 removeItemAtURL:v80->_snapshotBundleContainerURL error:0];
        [(PFSQLiteKeyedArchiver *)v80->_keyedArchiver setInteger:1 forKey:@"schema_version"];
        v89 = PUILogSnapshotCache();
        v16 = v136;
        if (os_log_type_enabled(v89, OS_LOG_TYPE_DEBUG))
        {
          [_PUIPosterSnapshotSQLiteCacheImplementation prepareCacheWithError:];
        }

        LOBYTE(options) = v132;
        a3 = v134;
        v17 = 0;
      }

      v90 = +[_PUIPosterSnapshotCacheRecord pf_sqliteCodingDescriptor];
      v143 = v4->_archiver;
      v91 = objc_opt_class();
      v148 = 0;
      v92 = v143;
      v144 = v90;
      LOBYTE(v90) = [(PFSQLiteArchiver *)v92 setupForDescriptor:v90 forClass:v91 error:&v148];
      v93 = v148;
      v94 = v93;
      if ((v90 & 1) == 0)
      {
        v105 = v93;
        *a3 = v94;
        (v16)[2](v16, v94);
        v106 = PUILogSnapshotCache();
        v62 = 0;
        v107 = v94;
        if (os_log_type_enabled(v106, OS_LOG_TYPE_ERROR))
        {
          [_PUIPosterSnapshotSQLiteCacheImplementation prepareCacheWithError:];
        }

        v7 = 0;
        v76 = v129;
        v69 = 0;
        goto LABEL_126;
      }

      v137 = v93;
      v95 = PUILogSnapshotCache();
      if (os_log_type_enabled(v95, OS_LOG_TYPE_DEBUG))
      {
        [_PUIPosterSnapshotSQLiteCacheImplementation prepareCacheWithError:];
      }

      if (![(NSURL *)v4->_snapshotBundleContainerURL checkResourceIsReachableAndReturnError:0])
      {
        v96 = v16;
        if ((options & 4) != 0)
        {
          v97 = PUILogSnapshotCache();
          if (os_log_type_enabled(v97, OS_LOG_TYPE_DEBUG))
          {
            [_PUIPosterSnapshotSQLiteCacheImplementation prepareCacheWithError:];
          }

          goto LABEL_123;
        }

        fileManager = v4->_fileManager;
        snapshotBundleContainerURL = v4->_snapshotBundleContainerURL;
        v110 = PFPosterPathFileAttributes();
        v147 = 0;
        LOBYTE(snapshotBundleContainerURL) = [(NSFileManager *)fileManager createDirectoryAtURL:snapshotBundleContainerURL withIntermediateDirectories:1 attributes:v110 error:&v147];
        v111 = v147;

        if ((snapshotBundleContainerURL & 1) == 0)
        {
          v113 = v111;
          *a3 = v111;
          (v96)[2](v96, v111);
          v114 = PUILogSnapshotCache();
          if (os_log_type_enabled(v114, OS_LOG_TYPE_ERROR))
          {
            [_PUIPosterSnapshotSQLiteCacheImplementation prepareCacheWithError:];
          }

          v7 = 0;
          v16 = v96;
          v55 = 0;
          v17 = 0;
          goto LABEL_125;
        }

        v112 = PUILogSnapshotCache();
        if (os_log_type_enabled(v112, OS_LOG_TYPE_DEBUG))
        {
          [_PUIPosterSnapshotSQLiteCacheImplementation prepareCacheWithError:];
        }

        v16 = v96;
        v55 = 0;
        v17 = 0;
      }

      if (!v131 || (options & 4) != 0 || !v126)
      {
        goto LABEL_124;
      }

      v96 = v16;
      v97 = [v144 columnForName:@"_snapshotBundleUUID"];
      v98 = v4;
      v99 = v4->_archiver;
      v100 = objc_opt_self();
      v101 = [(PFSQLiteArchiver *)v99 objectsOfClass:v100 column:v97 predicate:0 limitOffset:0 orderedBy:0 error:0];
      v102 = [v101 set];
      v103 = v102;
      if (v102)
      {
        v104 = v102;
      }

      else
      {
        v104 = [MEMORY[0x1E695DFD8] set];
      }

      v115 = v104;

      v116 = MEMORY[0x1E695DFD8];
      v117 = [(NSFileManager *)v146 contentsOfDirectoryAtURL:v98->_snapshotBundleContainerURL includingPropertiesForKeys:0 options:1 error:0];
      v118 = [v116 setWithArray:v117];
      v119 = [v118 bs_map:&__block_literal_global_563];

      if (([v115 isEqualToSet:v119] & 1) == 0)
      {
        v120 = [v115 mutableCopy];
        [v120 minusSet:v119];
        v121 = MEMORY[0x1E69C51C8];
        v122 = [v120 allObjects];
        v123 = [v121 predicateWithColumn:v97 operatorType:6 value:v122];

        v124 = v98->_archiver;
        v125 = objc_opt_self();
        [(PFSQLiteArchiver *)v124 deleteObjectsOfClass:v125 predicate:v123 error:0];
      }

LABEL_123:
      v15 = v139;
      v13 = v141;
      v16 = v96;
      v55 = 0;
      v17 = 0;
LABEL_124:
      v16[2](v16, 0);
      v7 = 1;
LABEL_125:
      v69 = 0;
      v62 = 0;
      v76 = v129;
      v107 = v137;
LABEL_126:

LABEL_127:
LABEL_128:

LABEL_129:
LABEL_130:

      goto LABEL_131;
    }

    v63 = v17;
    *a3 = v17;
    (v16)[2](v16, v17);
    v57 = PUILogSnapshotCache();
    if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
    {
      [_PUIPosterSnapshotSQLiteCacheImplementation prepareCacheWithError:];
    }

LABEL_69:

    v7 = 0;
    goto LABEL_131;
  }

  if (!a3)
  {
    return 0;
  }

  [(_PUIPosterSnapshotSQLiteCacheImplementation *)v4 databaseConnectionAcquisitionError];
  *a3 = v7 = 0;
  return v7;
}

- (BOOL)checkCacheIsReachableWithError:(id *)a3
{
  if (![(NSURL *)self->_cacheURL checkResourceIsReachableAndReturnError:?]|| ![(NSURL *)self->_rootCacheURL checkResourceIsReachableAndReturnError:a3]|| ![(NSURL *)self->_databaseURL checkResourceIsReachableAndReturnError:a3])
  {
    return 0;
  }

  snapshotBundleContainerURL = self->_snapshotBundleContainerURL;

  return [(NSURL *)snapshotBundleContainerURL checkResourceIsReachableAndReturnError:a3];
}

- (id)discardSnapshotBundlesMatchingSQLPredicate:(id)a3
{
  v39 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([(BSAtomicSignal *)self->_invalidationFlag hasBeenSignalled])
  {
    v5 = MEMORY[0x1E69C5258];
    v6 = PFFunctionNameForAddress();
    v7 = PFGeneralErrorFromObjectWithLocalizedFailureReason();
    v8 = [v5 futureWithError:{v7, 0}];
  }

  else
  {
    v9 = self->_fileManager;
    v10 = self->_snapshotBundleContainerURL;
    v11 = self->_cacheQueueScheduler;
    v12 = self->_cacheLogIdentifier;
    if ((self->_options & 4) != 0)
    {
      v21 = MEMORY[0x1E69C5258];
      v22 = PFFunctionNameForAddress();
      v23 = PFGeneralErrorFromObjectWithLocalizedFailureReason();
      v8 = [v21 futureWithError:{v23, v12}];
    }

    else
    {
      v13 = PUILogSnapshotCache();
      v14 = os_signpost_id_generate(v13);

      v15 = PUILogSnapshotCache();
      v16 = v15;
      if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
      {
        *buf = 138543362;
        v38 = v4;
        _os_signpost_emit_with_name_impl(&dword_1A8C85000, v16, OS_SIGNPOST_INTERVAL_BEGIN, v14, "discardSnapshotBundlesMatchingSQLPredicate:", "predicate %{public}@", buf, 0xCu);
      }

      v17 = self->_archiver;
      v18 = MEMORY[0x1E69C5258];
      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 3221225472;
      v31[2] = __90___PUIPosterSnapshotSQLiteCacheImplementation_discardSnapshotBundlesMatchingSQLPredicate___block_invoke;
      v31[3] = &unk_1E7855568;
      v32 = v17;
      v33 = v4;
      v19 = v12;
      v34 = v19;
      v35 = v10;
      v36 = v9;
      v20 = v17;
      v8 = [v18 futureWithBlock:v31 scheduler:v11];
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __90___PUIPosterSnapshotSQLiteCacheImplementation_discardSnapshotBundlesMatchingSQLPredicate___block_invoke_571;
      v28[3] = &unk_1E7855590;
      v30 = v14;
      v29 = v19;
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __90___PUIPosterSnapshotSQLiteCacheImplementation_discardSnapshotBundlesMatchingSQLPredicate___block_invoke_573;
      v25[3] = &unk_1E78554F8;
      v27 = v14;
      v26 = v29;
      [v8 addSuccessBlock:v28 andFailureBlock:v25];
    }
  }

  return v8;
}

- (id)snapshotBundlesMatchingSQLPredicate:(id)a3 orderedBy:(id)a4 limit:(id)a5
{
  v49 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([(BSAtomicSignal *)self->_invalidationFlag hasBeenSignalled])
  {
    v11 = MEMORY[0x1E69C5258];
    v12 = PFFunctionNameForAddress();
    v13 = PFGeneralErrorFromObjectWithLocalizedFailureReason();
    v14 = [v11 futureWithError:{v13, 0}];
  }

  else
  {
    v15 = self->_snapshotBundleContainerURL;
    v16 = self->_cacheQueueScheduler;
    v17 = self->_cacheLogIdentifier;
    v18 = self->_archiver;
    v19 = PUILogSnapshotCache();
    v20 = os_signpost_id_generate(v19);

    v21 = PUILogSnapshotCache();
    v22 = v21;
    if (v20 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
    {
      *buf = 138543874;
      v44 = v8;
      v45 = 2114;
      v46 = v9;
      v47 = 2114;
      v48 = v10;
      _os_signpost_emit_with_name_impl(&dword_1A8C85000, v22, OS_SIGNPOST_INTERVAL_BEGIN, v20, "snapshotBundlesMatchingSQLPredicate:orderedBy:limit:", "predicate %{public}@ orderedBy %{public}@ limit %{public}@", buf, 0x20u);
    }

    v23 = MEMORY[0x1E69C5258];
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = __99___PUIPosterSnapshotSQLiteCacheImplementation_snapshotBundlesMatchingSQLPredicate_orderedBy_limit___block_invoke;
    v35[3] = &unk_1E78555E0;
    v36 = v18;
    v37 = v8;
    v38 = v10;
    v39 = v9;
    v40 = self;
    v24 = v17;
    v41 = v24;
    v42 = v15;
    v25 = v15;
    v26 = v18;
    v14 = [v23 futureWithBlock:v35 scheduler:v16];
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __99___PUIPosterSnapshotSQLiteCacheImplementation_snapshotBundlesMatchingSQLPredicate_orderedBy_limit___block_invoke_581;
    v32[3] = &unk_1E7855608;
    v34 = v20;
    v33 = v24;
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __99___PUIPosterSnapshotSQLiteCacheImplementation_snapshotBundlesMatchingSQLPredicate_orderedBy_limit___block_invoke_583;
    v29[3] = &unk_1E78554F8;
    v30 = v33;
    v31 = v20;
    v27 = v33;
    [v14 addSuccessBlock:v32 andFailureBlock:v29];
  }

  return v14;
}

- (id)cacheSnapshotBundle:(id)a3 options:(id)a4
{
  v57[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if ([(BSAtomicSignal *)self->_invalidationFlag hasBeenSignalled])
  {
    v9 = MEMORY[0x1E69C5258];
    v10 = PFFunctionNameForAddress();
    v11 = PFGeneralErrorFromObjectWithLocalizedFailureReason();
    v12 = [v9 futureWithError:{v11, 0}];
  }

  else
  {
    if (!v7)
    {
      [_PUIPosterSnapshotSQLiteCacheImplementation cacheSnapshotBundle:a2 options:?];
    }

    v13 = [v7 bundleURL];
    v14 = [v13 checkResourceIsReachableAndReturnError:0];

    if (v14)
    {
      v15 = self->_cacheLogIdentifier;
      if ((self->_options & 4) != 0)
      {
        v33 = MEMORY[0x1E69C5258];
        v34 = PFFunctionNameForAddress();
        v35 = PFGeneralErrorFromObjectWithLocalizedFailureReason();
        v12 = [v33 futureWithError:{v35, v15}];
      }

      else
      {
        v16 = self->_fileManager;
        v17 = self->_snapshotBundleContainerURL;
        v37 = self->_cacheQueueScheduler;
        v18 = self->_archiver;
        v19 = PUILogSnapshotCache();
        v20 = os_signpost_id_generate(v19);

        v21 = PUILogSnapshotCache();
        v22 = v21;
        if (v20 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
        {
          v23 = [v7 bundleURL];
          *buf = 138543618;
          v53 = v15;
          v54 = 2114;
          v55 = v23;
          _os_signpost_emit_with_name_impl(&dword_1A8C85000, v22, OS_SIGNPOST_INTERVAL_BEGIN, v20, "cacheSnapshotBundle", "<%{public}@> snapshotBundle URL %{public}@", buf, 0x16u);
        }

        v24 = MEMORY[0x1E69C5258];
        v44[0] = MEMORY[0x1E69E9820];
        v44[1] = 3221225472;
        v44[2] = __75___PUIPosterSnapshotSQLiteCacheImplementation_cacheSnapshotBundle_options___block_invoke;
        v44[3] = &unk_1E7855658;
        v45 = v7;
        v46 = v17;
        v47 = self;
        v25 = v15;
        v48 = v25;
        v49 = v18;
        v50 = v8;
        v51 = v16;
        v26 = v16;
        v27 = v18;
        v28 = v17;
        v12 = [v24 futureWithBlock:v44 scheduler:v37];
        v41[0] = MEMORY[0x1E69E9820];
        v41[1] = 3221225472;
        v41[2] = __75___PUIPosterSnapshotSQLiteCacheImplementation_cacheSnapshotBundle_options___block_invoke_3;
        v41[3] = &unk_1E7855680;
        v43 = v20;
        v42 = v25;
        v38[0] = MEMORY[0x1E69E9820];
        v38[1] = 3221225472;
        v38[2] = __75___PUIPosterSnapshotSQLiteCacheImplementation_cacheSnapshotBundle_options___block_invoke_589;
        v38[3] = &unk_1E78554F8;
        v40 = v20;
        v39 = v42;
        [v12 addSuccessBlock:v41 andFailureBlock:v38];
      }
    }

    else
    {
      v29 = MEMORY[0x1E69C5258];
      v30 = MEMORY[0x1E696ABC0];
      v56 = *MEMORY[0x1E696A588];
      v57[0] = @"Snapshot bundle is not valid.";
      v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v57 forKeys:&v56 count:1];
      v32 = [v30 pui_errorWithCode:3 userInfo:v31];
      v12 = [v29 futureWithError:v32];
    }
  }

  return v12;
}

- (void)prepareCacheWithError:.cold.2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)prepareCacheWithError:.cold.4()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)prepareCacheWithError:.cold.6()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)prepareCacheWithError:.cold.8()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)prepareCacheWithError:.cold.9()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)prepareCacheWithError:.cold.11()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)prepareCacheWithError:.cold.15()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)prepareCacheWithError:.cold.17()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)cacheSnapshotBundle:(char *)a1 options:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_2_1();
    OUTLINED_FUNCTION_1_0(&dword_1A8C85000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"incomingSnapshotBundle", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end