@interface PLModelMigrationAction_PrepareSharedAssetContainerUpdateWorker
- (BOOL)_insertWorkItemsForAssetObjectIDs:(id)a3 inManagedObjectContext:(id)a4 error:(id *)a5;
- (int64_t)_markEntireLibraryNeedingProcessingWithManagedObjectContext:(id)a3 error:(id *)a4;
- (int64_t)performActionWithManagedObjectContext:(id)a3 error:(id *)a4;
@end

@implementation PLModelMigrationAction_PrepareSharedAssetContainerUpdateWorker

- (int64_t)_markEntireLibraryNeedingProcessingWithManagedObjectContext:(id)a3 error:(id *)a4
{
  v142 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = PLMigrationGetLog();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

  if (v8)
  {
    v9 = [(PLModelMigrationActionBackground *)self logger];

    if (v9)
    {
      v140 = 0u;
      v141 = 0u;
      v138 = 0u;
      v139 = 0u;
      v136 = 0u;
      v137 = 0u;
      v134 = 0u;
      v135 = 0u;
      v132 = 0u;
      v133 = 0u;
      v130 = 0u;
      v131 = 0u;
      v128 = 0u;
      v129 = 0u;
      v126 = 0u;
      v127 = 0u;
      v124 = 0u;
      v125 = 0u;
      v122 = 0u;
      v123 = 0u;
      v120 = 0u;
      v121 = 0u;
      v118 = 0u;
      v119 = 0u;
      v116 = 0u;
      v117 = 0u;
      v114 = 0u;
      v115 = 0u;
      v112 = 0u;
      v113 = 0u;
      buf = 0u;
      v111 = 0u;
      v10 = PLMigrationGetLog();
      os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
      LOWORD(v107) = 0;
      LODWORD(v88) = 2;
      v11 = _os_log_send_and_compose_impl();

      v12 = [(PLModelMigrationActionBackground *)self logger:&v107];
      [v12 logWithMessage:v11 fromCodeLocation:"PLModelMigrationActionBackground.m" type:{2121, 0}];

      if (v11 != &buf)
      {
        free(v11);
      }
    }

    else
    {
      v13 = PLMigrationGetLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_DEFAULT, "Marking the entire library as needing processing", &buf, 2u);
      }
    }
  }

  v14 = objc_alloc(MEMORY[0x1E695D5E0]);
  v15 = +[PLMemory entityName];
  v16 = [v14 initWithEntityName:v15];

  [v16 setResultType:2];
  v109[0] = @"objectID";
  v109[1] = @"uuid";
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v109 count:2];
  [v16 setPropertiesToFetch:v17];

  [v16 setFetchBatchSize:100];
  v103 = 0;
  v18 = [v6 executeFetchRequest:v16 error:&v103];
  v19 = v103;
  v20 = PLMigrationGetLog();
  v21 = v20;
  if (!v18)
  {
    v28 = os_log_type_enabled(v20, OS_LOG_TYPE_ERROR);

    if (v28)
    {
      v29 = [(PLModelMigrationActionBackground *)self logger];

      if (!v29)
      {
        v82 = PLMigrationGetLog();
        if (os_log_type_enabled(v82, OS_LOG_TYPE_ERROR))
        {
          LODWORD(buf) = 138412290;
          *(&buf + 4) = v19;
          _os_log_impl(&dword_19BF1F000, v82, OS_LOG_TYPE_ERROR, "Failed to fetch memories for entire library: %@", &buf, 0xCu);
        }

        if (!a4)
        {
          goto LABEL_19;
        }

        goto LABEL_18;
      }

      v140 = 0u;
      v141 = 0u;
      v138 = 0u;
      v139 = 0u;
      v136 = 0u;
      v137 = 0u;
      v134 = 0u;
      v135 = 0u;
      v132 = 0u;
      v133 = 0u;
      v130 = 0u;
      v131 = 0u;
      v128 = 0u;
      v129 = 0u;
      v126 = 0u;
      v127 = 0u;
      v124 = 0u;
      v125 = 0u;
      v122 = 0u;
      v123 = 0u;
      v120 = 0u;
      v121 = 0u;
      v118 = 0u;
      v119 = 0u;
      v116 = 0u;
      v117 = 0u;
      v114 = 0u;
      v115 = 0u;
      v112 = 0u;
      v113 = 0u;
      buf = 0u;
      v111 = 0u;
      v30 = PLMigrationGetLog();
      os_log_type_enabled(v30, OS_LOG_TYPE_ERROR);
      v107 = 138412290;
      v108 = v19;
      LODWORD(v88) = 12;
      v31 = _os_log_send_and_compose_impl();

      v32 = [(PLModelMigrationActionBackground *)self logger:&v107];
      [v32 logWithMessage:v31 fromCodeLocation:"PLModelMigrationActionBackground.m" type:{2132, 16}];

      if (v31 != &buf)
      {
        free(v31);
      }
    }

    if (!a4)
    {
LABEL_19:

LABEL_70:
      v75 = 3;
      goto LABEL_71;
    }

LABEL_18:
    v33 = v19;
    *a4 = v19;
    goto LABEL_19;
  }

  v91 = v19;
  v89 = a4;
  v22 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);

  if (v22)
  {
    v23 = [(PLModelMigrationActionBackground *)self logger];

    if (v23)
    {
      v140 = 0u;
      v141 = 0u;
      v138 = 0u;
      v139 = 0u;
      v136 = 0u;
      v137 = 0u;
      v134 = 0u;
      v135 = 0u;
      v132 = 0u;
      v133 = 0u;
      v130 = 0u;
      v131 = 0u;
      v128 = 0u;
      v129 = 0u;
      v126 = 0u;
      v127 = 0u;
      v124 = 0u;
      v125 = 0u;
      v122 = 0u;
      v123 = 0u;
      v120 = 0u;
      v121 = 0u;
      v118 = 0u;
      v119 = 0u;
      v116 = 0u;
      v117 = 0u;
      v114 = 0u;
      v115 = 0u;
      v112 = 0u;
      v113 = 0u;
      buf = 0u;
      v111 = 0u;
      v24 = PLMigrationGetLog();
      os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);
      v25 = [v18 count];
      v107 = 134217984;
      v108 = v25;
      LODWORD(v88) = 12;
      v26 = _os_log_send_and_compose_impl();

      v27 = [(PLModelMigrationActionBackground *)self logger:&v107];
      [v27 logWithMessage:v26 fromCodeLocation:"PLModelMigrationActionBackground.m" type:{2136, 0}];

      if (v26 != &buf)
      {
        free(v26);
      }
    }

    else
    {
      v34 = PLMigrationGetLog();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        v35 = [v18 count];
        LODWORD(buf) = 134217984;
        *(&buf + 4) = v35;
        _os_log_impl(&dword_19BF1F000, v34, OS_LOG_TYPE_DEFAULT, "Inserting work items for %tu memories", &buf, 0xCu);
      }
    }
  }

  v90 = self;
  v101 = 0u;
  v102 = 0u;
  v99 = 0u;
  v100 = 0u;
  v36 = v18;
  v37 = [v36 countByEnumeratingWithState:&v99 objects:v106 count:16];
  if (v37)
  {
    v38 = v37;
    v39 = *v100;
    do
    {
      for (i = 0; i != v38; ++i)
      {
        if (*v100 != v39)
        {
          objc_enumerationMutation(v36);
        }

        v41 = *(*(&v99 + 1) + 8 * i);
        v42 = [v6 photoLibrary];
        v43 = [v41 objectForKeyedSubscript:@"uuid"];
        v44 = [v42 addBackgroundJobWorkItemWithIdentifier:v43 jobType:9 jobFlags:2];
      }

      v38 = [v36 countByEnumeratingWithState:&v99 objects:v106 count:16];
    }

    while (v38);
  }

  v45 = objc_alloc(MEMORY[0x1E695D5E0]);
  v46 = +[PLSuggestion entityName];
  v16 = [v45 initWithEntityName:v46];

  [v16 setResultType:2];
  v105[0] = @"objectID";
  v105[1] = @"uuid";
  v47 = [MEMORY[0x1E695DEC8] arrayWithObjects:v105 count:2];
  [v16 setPropertiesToFetch:v47];

  [v16 setFetchBatchSize:100];
  v98 = 0;
  v48 = [v6 executeFetchRequest:v16 error:&v98];
  v49 = v98;
  v50 = PLMigrationGetLog();
  v51 = v50;
  if (!v48)
  {
    v58 = os_log_type_enabled(v50, OS_LOG_TYPE_ERROR);

    if (v58)
    {
      v59 = [(PLModelMigrationActionBackground *)v90 logger];

      if (v59)
      {
        v140 = 0u;
        v141 = 0u;
        v138 = 0u;
        v139 = 0u;
        v136 = 0u;
        v137 = 0u;
        v134 = 0u;
        v135 = 0u;
        v132 = 0u;
        v133 = 0u;
        v130 = 0u;
        v131 = 0u;
        v128 = 0u;
        v129 = 0u;
        v126 = 0u;
        v127 = 0u;
        v124 = 0u;
        v125 = 0u;
        v122 = 0u;
        v123 = 0u;
        v120 = 0u;
        v121 = 0u;
        v118 = 0u;
        v119 = 0u;
        v116 = 0u;
        v117 = 0u;
        v114 = 0u;
        v115 = 0u;
        v112 = 0u;
        v113 = 0u;
        buf = 0u;
        v111 = 0u;
        v60 = PLMigrationGetLog();
        os_log_type_enabled(v60, OS_LOG_TYPE_ERROR);
        v107 = 138412290;
        v108 = v49;
        LODWORD(v88) = 12;
        v61 = _os_log_send_and_compose_impl();

        v62 = [(PLModelMigrationActionBackground *)v90 logger:&v107];
        [v62 logWithMessage:v61 fromCodeLocation:"PLModelMigrationActionBackground.m" type:{2151, 16}];

        if (v61 != &buf)
        {
          free(v61);
        }
      }

      else
      {
        v83 = PLMigrationGetLog();
        if (os_log_type_enabled(v83, OS_LOG_TYPE_ERROR))
        {
          LODWORD(buf) = 138412290;
          *(&buf + 4) = v49;
          _os_log_impl(&dword_19BF1F000, v83, OS_LOG_TYPE_ERROR, "Failed to fetch suggestions for entire library: %@", &buf, 0xCu);
        }
      }
    }

    if (v89)
    {
      v84 = v49;
      *v89 = v49;
    }

    goto LABEL_70;
  }

  v92 = v49;
  v52 = os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT);

  if (v52)
  {
    v53 = [(PLModelMigrationActionBackground *)v90 logger];

    if (v53)
    {
      v140 = 0u;
      v141 = 0u;
      v138 = 0u;
      v139 = 0u;
      v136 = 0u;
      v137 = 0u;
      v134 = 0u;
      v135 = 0u;
      v132 = 0u;
      v133 = 0u;
      v130 = 0u;
      v131 = 0u;
      v128 = 0u;
      v129 = 0u;
      v126 = 0u;
      v127 = 0u;
      v124 = 0u;
      v125 = 0u;
      v122 = 0u;
      v123 = 0u;
      v120 = 0u;
      v121 = 0u;
      v118 = 0u;
      v119 = 0u;
      v116 = 0u;
      v117 = 0u;
      v114 = 0u;
      v115 = 0u;
      v112 = 0u;
      v113 = 0u;
      buf = 0u;
      v111 = 0u;
      v54 = PLMigrationGetLog();
      os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT);
      v55 = [v48 count];
      v107 = 134217984;
      v108 = v55;
      LODWORD(v88) = 12;
      v56 = _os_log_send_and_compose_impl();

      v57 = [(PLModelMigrationActionBackground *)v90 logger:&v107];
      [v57 logWithMessage:v56 fromCodeLocation:"PLModelMigrationActionBackground.m" type:{2155, 0}];

      if (v56 != &buf)
      {
        free(v56);
      }
    }

    else
    {
      v63 = PLMigrationGetLog();
      if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
      {
        v64 = [v48 count];
        LODWORD(buf) = 134217984;
        *(&buf + 4) = v64;
        _os_log_impl(&dword_19BF1F000, v63, OS_LOG_TYPE_DEFAULT, "Inserting work items for %tu suggestions", &buf, 0xCu);
      }
    }
  }

  v96 = 0u;
  v97 = 0u;
  v94 = 0u;
  v95 = 0u;
  v65 = v48;
  v66 = [v65 countByEnumeratingWithState:&v94 objects:v104 count:16];
  if (v66)
  {
    v67 = v66;
    v68 = *v95;
    do
    {
      for (j = 0; j != v67; ++j)
      {
        if (*v95 != v68)
        {
          objc_enumerationMutation(v65);
        }

        v70 = *(*(&v94 + 1) + 8 * j);
        v71 = [v6 photoLibrary];
        v72 = [v70 objectForKeyedSubscript:@"uuid"];
        v73 = [v71 addBackgroundJobWorkItemWithIdentifier:v72 jobType:9 jobFlags:4];
      }

      v67 = [v65 countByEnumeratingWithState:&v94 objects:v104 count:16];
    }

    while (v67);
  }

  v93 = 0;
  v74 = [v6 save:&v93];
  v16 = v93;
  if ((v74 & 1) == 0)
  {
    v76 = PLMigrationGetLog();
    v77 = os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT);

    if (v77)
    {
      v78 = [(PLModelMigrationActionBackground *)v90 logger];

      if (v78)
      {
        v140 = 0u;
        v141 = 0u;
        v138 = 0u;
        v139 = 0u;
        v136 = 0u;
        v137 = 0u;
        v134 = 0u;
        v135 = 0u;
        v132 = 0u;
        v133 = 0u;
        v130 = 0u;
        v131 = 0u;
        v128 = 0u;
        v129 = 0u;
        v126 = 0u;
        v127 = 0u;
        v124 = 0u;
        v125 = 0u;
        v122 = 0u;
        v123 = 0u;
        v120 = 0u;
        v121 = 0u;
        v118 = 0u;
        v119 = 0u;
        v116 = 0u;
        v117 = 0u;
        v114 = 0u;
        v115 = 0u;
        v112 = 0u;
        v113 = 0u;
        buf = 0u;
        v111 = 0u;
        v79 = PLMigrationGetLog();
        os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT);
        v107 = 138412290;
        v108 = v16;
        LODWORD(v88) = 12;
        v80 = _os_log_send_and_compose_impl();

        v81 = [(PLModelMigrationActionBackground *)v90 logger:&v107];
        [v81 logWithMessage:v80 fromCodeLocation:"PLModelMigrationActionBackground.m" type:{2163, 0}];

        if (v80 != &buf)
        {
          free(v80);
        }
      }

      else
      {
        v85 = PLMigrationGetLog();
        if (os_log_type_enabled(v85, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(buf) = 138412290;
          *(&buf + 4) = v16;
          _os_log_impl(&dword_19BF1F000, v85, OS_LOG_TYPE_DEFAULT, "Saving work items failed. Error: %@", &buf, 0xCu);
        }
      }
    }

    if (v89)
    {
      v86 = v16;
      *v89 = v16;
    }

    goto LABEL_70;
  }

  v75 = 1;
LABEL_71:

  return v75;
}

- (BOOL)_insertWorkItemsForAssetObjectIDs:(id)a3 inManagedObjectContext:(id)a4 error:(id *)a5
{
  v114[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  if ([v8 count])
  {
    v10 = MEMORY[0x1E695D5E0];
    v11 = +[PLManagedAsset entityName];
    v12 = [v10 fetchRequestWithEntityName:v11];

    [v12 setResultType:2];
    v114[0] = @"uuid";
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v114 count:1];
    [v12 setPropertiesToFetch:v13];

    v14 = [MEMORY[0x1E696AE18] predicateWithFormat:@"self IN %@", v8];
    [v12 setPredicate:v14];

    v78 = 0;
    v15 = [v9 executeFetchRequest:v12 error:&v78];
    v16 = v78;
    if (v15)
    {
      v72 = v9;
      if ([v15 count])
      {
        v68 = v8;
        v69 = v16;
        v66 = v15;
        v71 = self;
        v67 = v12;
        v76 = 0u;
        v77 = 0u;
        v74 = 0u;
        v75 = 0u;
        v17 = v15;
        v18 = [v17 countByEnumeratingWithState:&v74 objects:v79 count:16];
        v70 = v17;
        if (v18)
        {
          v19 = v18;
          v20 = *v75;
          do
          {
            for (i = 0; i != v19; ++i)
            {
              if (*v75 != v20)
              {
                objc_enumerationMutation(v17);
              }

              v22 = [*(*(&v74 + 1) + 8 * i) objectForKeyedSubscript:@"uuid"];
              if (v22)
              {
                v23 = [PLBackgroundJobWorkItem insertBackgroundJobWorkItemWithIdentifier:v22 jobType:9 jobFlags:1 inManagedObjectContext:v9];
              }

              else
              {
                v24 = PLMigrationGetLog();
                v25 = os_log_type_enabled(v24, OS_LOG_TYPE_INFO);

                v9 = v72;
                if (v25)
                {
                  v26 = [(PLModelMigrationActionBackground *)self logger];

                  if (v26)
                  {
                    v112 = 0u;
                    v113 = 0u;
                    v110 = 0u;
                    v111 = 0u;
                    v108 = 0u;
                    v109 = 0u;
                    v106 = 0u;
                    v107 = 0u;
                    v104 = 0u;
                    v105 = 0u;
                    v102 = 0u;
                    v103 = 0u;
                    v100 = 0u;
                    v101 = 0u;
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
                    buf = 0u;
                    v83 = 0u;
                    v27 = PLMigrationGetLog();
                    os_log_type_enabled(v27, OS_LOG_TYPE_INFO);
                    LOWORD(v80) = 0;
                    LODWORD(v65) = 2;
                    v28 = _os_log_send_and_compose_impl();

                    v29 = [(PLModelMigrationActionBackground *)self logger:&v80];
                    [v29 logWithMessage:v28 fromCodeLocation:"PLModelMigrationActionBackground.m" type:{2104, 1}];

                    if (v28 != &buf)
                    {
                      free(v28);
                    }
                  }

                  else
                  {
                    v30 = PLMigrationGetLog();
                    if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
                    {
                      LOWORD(buf) = 0;
                      _os_log_impl(&dword_19BF1F000, v30, OS_LOG_TYPE_INFO, "Failed to get uuid for asset", &buf, 2u);
                    }
                  }

                  v9 = v72;
                  v17 = v70;
                }
              }
            }

            v19 = [v17 countByEnumeratingWithState:&v74 objects:v79 count:16];
          }

          while (v19);
        }

        v73 = v69;
        v31 = [v9 save:&v73];
        v32 = v73;

        v33 = PLMigrationGetLog();
        v34 = os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT);

        if ((v31 & 1) == 0)
        {
          v12 = v67;
          v8 = v68;
          v9 = v72;
          v15 = v66;
          if (v34)
          {
            v54 = [(PLModelMigrationActionBackground *)v71 logger];

            if (v54)
            {
              v112 = 0u;
              v113 = 0u;
              v110 = 0u;
              v111 = 0u;
              v108 = 0u;
              v109 = 0u;
              v106 = 0u;
              v107 = 0u;
              v104 = 0u;
              v105 = 0u;
              v102 = 0u;
              v103 = 0u;
              v100 = 0u;
              v101 = 0u;
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
              buf = 0u;
              v83 = 0u;
              v55 = PLMigrationGetLog();
              os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT);
              v80 = 138412290;
              v81 = v32;
              LODWORD(v65) = 12;
              v56 = _os_log_send_and_compose_impl();

              v57 = [(PLModelMigrationActionBackground *)v71 logger:&v80];
              [v57 logWithMessage:v56 fromCodeLocation:"PLModelMigrationActionBackground.m" type:{2111, 0}];

              if (v56 != &buf)
              {
                free(v56);
              }
            }

            else
            {
              v62 = PLMigrationGetLog();
              if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
              {
                LODWORD(buf) = 138412290;
                *(&buf + 4) = v32;
                _os_log_impl(&dword_19BF1F000, v62, OS_LOG_TYPE_DEFAULT, "Saving work items failed. Error: %@", &buf, 0xCu);
              }
            }
          }

          if (a5)
          {
            v63 = v32;
            v40 = 0;
            *a5 = v32;
          }

          else
          {
            v40 = 0;
          }

          goto LABEL_61;
        }

        v12 = v67;
        v8 = v68;
        v15 = v66;
        if (v34)
        {
          v35 = [(PLModelMigrationActionBackground *)v71 logger];

          if (v35)
          {
            v112 = 0u;
            v113 = 0u;
            v110 = 0u;
            v111 = 0u;
            v108 = 0u;
            v109 = 0u;
            v106 = 0u;
            v107 = 0u;
            v104 = 0u;
            v105 = 0u;
            v102 = 0u;
            v103 = 0u;
            v100 = 0u;
            v101 = 0u;
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
            buf = 0u;
            v83 = 0u;
            v36 = PLMigrationGetLog();
            os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT);
            v37 = [v70 count];
            v80 = 134217984;
            v81 = v37;
            LODWORD(v65) = 12;
            v38 = _os_log_send_and_compose_impl();

            v39 = [(PLModelMigrationActionBackground *)v71 logger:&v80];
            [v39 logWithMessage:v38 fromCodeLocation:"PLModelMigrationActionBackground.m" type:{2115, 0}];

            v9 = v72;
            if (v38 != &buf)
            {
              free(v38);
            }
          }

          else
          {
            v60 = PLMigrationGetLog();
            v9 = v72;
            if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
            {
              v61 = [v70 count];
              LODWORD(buf) = 134217984;
              *(&buf + 4) = v61;
              _os_log_impl(&dword_19BF1F000, v60, OS_LOG_TYPE_DEFAULT, "Inserted work items for %tu assets", &buf, 0xCu);
            }
          }

          v40 = 1;
LABEL_61:
          v16 = v32;
          goto LABEL_62;
        }

        v40 = 1;
        v16 = v32;
      }

      else
      {
        v48 = PLMigrationGetLog();
        v40 = 1;
        v49 = os_log_type_enabled(v48, OS_LOG_TYPE_INFO);

        if (v49)
        {
          v50 = [(PLModelMigrationActionBackground *)self logger];

          if (v50)
          {
            v112 = 0u;
            v113 = 0u;
            v110 = 0u;
            v111 = 0u;
            v108 = 0u;
            v109 = 0u;
            v106 = 0u;
            v107 = 0u;
            v104 = 0u;
            v105 = 0u;
            v102 = 0u;
            v103 = 0u;
            v100 = 0u;
            v101 = 0u;
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
            buf = 0u;
            v83 = 0u;
            v51 = PLMigrationGetLog();
            os_log_type_enabled(v51, OS_LOG_TYPE_INFO);
            LOWORD(v80) = 0;
            LODWORD(v65) = 2;
            v52 = _os_log_send_and_compose_impl();

            v53 = [(PLModelMigrationActionBackground *)self logger:&v80];
            [v53 logWithMessage:v52 fromCodeLocation:"PLModelMigrationActionBackground.m" type:{2096, 1}];

            v9 = v72;
            if (v52 != &buf)
            {
              free(v52);
            }

            v40 = 1;
          }

          else
          {
            v59 = PLMigrationGetLog();
            v9 = v72;
            if (os_log_type_enabled(v59, OS_LOG_TYPE_INFO))
            {
              LOWORD(buf) = 0;
              _os_log_impl(&dword_19BF1F000, v59, OS_LOG_TYPE_INFO, "Found no assets for object ids", &buf, 2u);
            }

            v40 = 1;
          }

          goto LABEL_62;
        }
      }

      v9 = v72;
LABEL_62:

      goto LABEL_63;
    }

    v41 = PLMigrationGetLog();
    v42 = os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT);

    if (v42)
    {
      v43 = [(PLModelMigrationActionBackground *)self logger];

      if (!v43)
      {
        v58 = PLMigrationGetLog();
        if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(buf) = 138412290;
          *(&buf + 4) = v16;
          _os_log_impl(&dword_19BF1F000, v58, OS_LOG_TYPE_DEFAULT, "Failed to fetch assets. Error: %@", &buf, 0xCu);
        }

        if (a5)
        {
          goto LABEL_32;
        }

        goto LABEL_47;
      }

      v112 = 0u;
      v113 = 0u;
      v110 = 0u;
      v111 = 0u;
      v108 = 0u;
      v109 = 0u;
      v106 = 0u;
      v107 = 0u;
      v104 = 0u;
      v105 = 0u;
      v102 = 0u;
      v103 = 0u;
      v100 = 0u;
      v101 = 0u;
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
      buf = 0u;
      v83 = 0u;
      v44 = PLMigrationGetLog();
      os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT);
      v80 = 138412290;
      v81 = v16;
      LODWORD(v65) = 12;
      v45 = _os_log_send_and_compose_impl();

      v46 = [(PLModelMigrationActionBackground *)self logger:&v80];
      [v46 logWithMessage:v45 fromCodeLocation:"PLModelMigrationActionBackground.m" type:{2090, 0}];

      if (v45 != &buf)
      {
        free(v45);
      }
    }

    if (a5)
    {
LABEL_32:
      v47 = v16;
      v40 = 0;
      *a5 = v16;
      goto LABEL_62;
    }

LABEL_47:
    v40 = 0;
    goto LABEL_62;
  }

  v40 = 1;
LABEL_63:

  return v40;
}

- (int64_t)performActionWithManagedObjectContext:(id)a3 error:(id *)a4
{
  v123 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v65 = [[PLGlobalValues alloc] initWithManagedObjectContext:v6];
  if (([(PLGlobalValues *)v65 libraryCreateOptions]& 0x40) == 0)
  {
    v61 = a4;
    v62 = [PLModelMigrationActionUtility getHistoryTokenWithAction:self key:@"LastSharedAssetContainerUpdateToken" managedObjectContext:v6];
    if (v62)
    {
      if ([PLModelMigrationActionUtility shouldProcessHistoryTokenWithAction:self token:v62 cutoffPercent:v6 managedObjectContext:0.5])
      {
        v80 = 0;
        v66 = [PLPersistentHistoryTransactionIterator iteratorSinceToken:v62 withManagedObjectObjectContext:v6 error:&v80];
        v7 = v80;
        if (v66)
        {
          v8 = MEMORY[0x1E695D5B8];
          v9 = +[PLManagedAsset entityName];
          v64 = [v8 entityForName:v9 inManagedObjectContext:v6];

          v10 = [v64 relationshipsByName];
          v63 = [v10 objectForKeyedSubscript:@"libraryScope"];

          v11 = 0;
          *&v88 = 0;
          *(&v88 + 1) = &v88;
          v89 = 0x2020000000;
          v90 = 0;
          v12 = 1;
          do
          {
            if (![v66 hasMoreTransactions])
            {
              break;
            }

            v13 = objc_autoreleasePoolPush();
            v14 = objc_alloc_init(MEMORY[0x1E695DFA8]);
            *&v85 = 0;
            *(&v85 + 1) = &v85;
            v86 = 0x2020000000;
            v87 = 0;
            v72[0] = MEMORY[0x1E69E9820];
            v72[1] = 3221225472;
            v72[2] = __110__PLModelMigrationAction_PrepareSharedAssetContainerUpdateWorker_performActionWithManagedObjectContext_error___block_invoke;
            v72[3] = &unk_1E7564C00;
            v77 = &v88;
            v78 = &v85;
            v73 = v64;
            v74 = v63;
            v15 = v14;
            v75 = v15;
            v76 = self;
            [v66 enumerateRemainingTransactionsWithBlock:v72];
            v71 = v7;
            v16 = [(PLModelMigrationActionBackground *)self isCancelledWithResumeMarker:0 error:&v71];
            v17 = v71;

            if (v16)
            {
              v18 = 0;
              v11 = 1;
              v12 = 2;
              v7 = v17;
            }

            else
            {
              v19 = [v15 copy];
              v70 = v17;
              v20 = [(PLModelMigrationAction_PrepareSharedAssetContainerUpdateWorker *)self _insertWorkItemsForAssetObjectIDs:v19 inManagedObjectContext:v6 error:&v70];
              v21 = v70;

              if (v20)
              {
                v22 = [v66 lastIteratedToken];
                [PLModelMigrationActionUtility setHistoryTokenWithAction:self key:@"LastSharedAssetContainerUpdateToken" value:v22 managedObjectContext:v6];

                v68 = v21;
                LOBYTE(v22) = [v6 save:&v68];
                v7 = v68;

                if (v22)
                {
                  v18 = 1;
                }

                else
                {
                  v23 = PLMigrationGetLog();
                  v24 = os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);

                  if (v24)
                  {
                    v25 = [(PLModelMigrationActionBackground *)self logger];
                    v26 = v25 == 0;

                    if (v26)
                    {
                      v30 = PLMigrationGetLog();
                      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
                      {
                        LODWORD(buf) = 138412290;
                        *(&buf + 4) = v7;
                        _os_log_impl(&dword_19BF1F000, v30, OS_LOG_TYPE_DEFAULT, "Failed to update history token. Error: %@", &buf, 0xCu);
                      }
                    }

                    else
                    {
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
                      v97 = 0u;
                      v98 = 0u;
                      v95 = 0u;
                      v96 = 0u;
                      v93 = 0u;
                      v94 = 0u;
                      buf = 0u;
                      v92 = 0u;
                      v27 = PLMigrationGetLog();
                      os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT);
                      v83 = 138412290;
                      v84 = v7;
                      LODWORD(v60) = 12;
                      v28 = _os_log_send_and_compose_impl();

                      v29 = [(PLModelMigrationActionBackground *)self logger:&v83];
                      [v29 logWithMessage:v28 fromCodeLocation:"PLModelMigrationActionBackground.m" type:{2050, 0}];

                      if (v28 != &buf)
                      {
                        free(v28);
                      }
                    }
                  }

                  v18 = 0;
                  v11 = 1;
                  v12 = 3;
                }
              }

              else
              {
                v69 = v21;
                v12 = [(PLModelMigrationAction_PrepareSharedAssetContainerUpdateWorker *)self _markEntireLibraryNeedingProcessingWithManagedObjectContext:v6 error:&v69];
                v7 = v69;

                v18 = 0;
                v11 = 1;
              }
            }

            _Block_object_dispose(&v85, 8);
            objc_autoreleasePoolPop(v13);
          }

          while ((v18 & 1) != 0);
          if (v11)
          {
            v31 = v7;
            v32 = v31;
            if (v12 != 1 && v61)
            {
              v33 = v31;
              *v61 = v32;
            }
          }

          else
          {
            v49 = [v6 photoLibrary];
            [v49 signalBackgroundProcessingNeeded];

            [PLModelMigrationActionUtility setHistoryTokenWithAction:self key:@"LastSharedAssetContainerUpdateToken" value:0 managedObjectContext:v6];
            v67 = v7;
            LOBYTE(v49) = [v6 save:&v67];
            v32 = v67;

            if (v49)
            {
              [(PLModelMigrationActionBackground *)self finalizeProgress];
              v12 = 1;
            }

            else
            {
              v50 = PLMigrationGetLog();
              v51 = os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT);

              if (v51)
              {
                v52 = [(PLModelMigrationActionBackground *)self logger];
                v53 = v52 == 0;

                if (v53)
                {
                  v58 = PLMigrationGetLog();
                  if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
                  {
                    LODWORD(buf) = 138412290;
                    *(&buf + 4) = v32;
                    _os_log_impl(&dword_19BF1F000, v58, OS_LOG_TYPE_DEFAULT, "Failed to delete history token. Error: %@", &buf, 0xCu);
                  }
                }

                else
                {
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
                  v97 = 0u;
                  v98 = 0u;
                  v95 = 0u;
                  v96 = 0u;
                  v93 = 0u;
                  v94 = 0u;
                  buf = 0u;
                  v92 = 0u;
                  v54 = PLMigrationGetLog();
                  os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT);
                  LODWORD(v85) = 138412290;
                  *(&v85 + 4) = v32;
                  LODWORD(v60) = 12;
                  v55 = _os_log_send_and_compose_impl();

                  v56 = [(PLModelMigrationActionBackground *)self logger:&v85];
                  [v56 logWithMessage:v55 fromCodeLocation:"PLModelMigrationActionBackground.m" type:{2069, 0}];

                  if (v55 != &buf)
                  {
                    free(v55);
                  }
                }
              }

              v12 = 3;
            }
          }

          _Block_object_dispose(&v88, 8);

          v7 = v64;
        }

        else
        {
          v42 = PLMigrationGetLog();
          v43 = os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT);

          if (v43)
          {
            v44 = [(PLModelMigrationActionBackground *)self logger];
            v45 = v44 == 0;

            if (v45)
            {
              v57 = PLMigrationGetLog();
              if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
              {
                LODWORD(buf) = 138412290;
                *(&buf + 4) = v7;
                _os_log_impl(&dword_19BF1F000, v57, OS_LOG_TYPE_DEFAULT, "Failed to create persistent history transaction iterator. Error: %@", &buf, 0xCu);
              }
            }

            else
            {
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
              v97 = 0u;
              v98 = 0u;
              v95 = 0u;
              v96 = 0u;
              v93 = 0u;
              v94 = 0u;
              buf = 0u;
              v92 = 0u;
              v46 = PLMigrationGetLog();
              os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT);
              LODWORD(v88) = 138412290;
              *(&v88 + 4) = v7;
              LODWORD(v60) = 12;
              v47 = _os_log_send_and_compose_impl();

              v48 = [(PLModelMigrationActionBackground *)self logger:&v88];
              [v48 logWithMessage:v47 fromCodeLocation:"PLModelMigrationActionBackground.m" type:{1997, 0}];

              if (v47 != &buf)
              {
                free(v47);
              }
            }
          }

          v79 = v7;
          v12 = [(PLModelMigrationAction_PrepareSharedAssetContainerUpdateWorker *)self _markEntireLibraryNeedingProcessingWithManagedObjectContext:v6 error:&v79];
          v32 = v79;
        }

        goto LABEL_58;
      }

      v81 = 0;
      v12 = [(PLModelMigrationAction_PrepareSharedAssetContainerUpdateWorker *)self _markEntireLibraryNeedingProcessingWithManagedObjectContext:v6 error:&v81];
      v40 = v81;
    }

    else
    {
      v82 = 0;
      v12 = [(PLModelMigrationAction_PrepareSharedAssetContainerUpdateWorker *)self _markEntireLibraryNeedingProcessingWithManagedObjectContext:v6 error:&v82];
      v40 = v82;
    }

    v32 = v40;
LABEL_58:

    goto LABEL_59;
  }

  v34 = PLMigrationGetLog();
  v35 = os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT);

  if (v35)
  {
    v36 = [(PLModelMigrationActionBackground *)self logger];

    if (v36)
    {
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
      v97 = 0u;
      v98 = 0u;
      v95 = 0u;
      v96 = 0u;
      v93 = 0u;
      v94 = 0u;
      buf = 0u;
      v92 = 0u;
      v37 = PLMigrationGetLog();
      os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT);
      LOWORD(v88) = 0;
      LODWORD(v60) = 2;
      v38 = _os_log_send_and_compose_impl();

      v39 = [(PLModelMigrationActionBackground *)self logger:&v88];
      [v39 logWithMessage:v38 fromCodeLocation:"PLModelMigrationActionBackground.m" type:{1981, 0}];

      if (v38 != &buf)
      {
        free(v38);
      }
    }

    else
    {
      v41 = PLMigrationGetLog();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_19BF1F000, v41, OS_LOG_TYPE_DEFAULT, "Skipping migration because background jobs are disabled for this library", &buf, 2u);
      }
    }
  }

  v12 = 1;
LABEL_59:

  return v12;
}

@end