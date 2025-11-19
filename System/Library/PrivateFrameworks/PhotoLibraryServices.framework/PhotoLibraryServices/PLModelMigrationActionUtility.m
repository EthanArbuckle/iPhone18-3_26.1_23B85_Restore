@interface PLModelMigrationActionUtility
+ (BOOL)processExtendedAttributesWithAction:(id)a3 asset:(id)a4 metadata:(id)a5 error:(id *)a6;
+ (BOOL)shouldProcessHistoryTokenWithAction:(id)a3 token:(id)a4 cutoffPercent:(double)a5 managedObjectContext:(id)a6;
+ (id)getHistoryTokenWithAction:(id)a3 key:(id)a4 managedObjectContext:(id)a5;
+ (int64_t)processManagedObjectBatchesWithAction:(id)a3 managedObjectContext:(id)a4 fetchRequest:(id)a5 pendingParentUnitCount:(int64_t)a6 useObjectIDResumeMarker:(BOOL)a7 error:(id *)a8 processingBlock:(id)a9;
+ (int64_t)processManagedObjectWithAction:(id)a3 managedObjectContext:(id)a4 fetchRequest:(id)a5 useObjectIDResumeMarker:(BOOL)a6 error:(id *)a7 processingBlock:(id)a8;
+ (int64_t)processManagedObjectsWithAction:(id)a3 managedObjectContext:(id)a4 fetchRequest:(id)a5 pendingParentUnitCount:(int64_t)a6 error:(id *)a7 processingBlock:(id)a8;
+ (int64_t)removeFromDuplicatesWithAction:(id)a3 managedObjectContext:(id)a4 fetchRequest:(id)a5 requiresLibraryReprocessing:(BOOL)a6 error:(id *)a7;
+ (int64_t)removeOrphanedObjectsWithAction:(id)a3 managedObjectContext:(id)a4 fetchRequest:(id)a5 error:(id *)a6;
+ (int64_t)resetDuplicateProcessingWithAction:(id)a3 managedObjectContext:(id)a4 error:(id *)a5;
+ (int64_t)updateExtendedAttributesWithAction:(id)a3 managedObjectContext:(id)a4 fetchRequest:(id)a5 useObjectIDResumeMarker:(BOOL)a6 error:(id *)a7;
+ (void)setHistoryTokenWithAction:(id)a3 key:(id)a4 value:(id)a5 managedObjectContext:(id)a6;
@end

@implementation PLModelMigrationActionUtility

+ (int64_t)processManagedObjectsWithAction:(id)a3 managedObjectContext:(id)a4 fetchRequest:(id)a5 pendingParentUnitCount:(int64_t)a6 error:(id *)a7 processingBlock:(id)a8
{
  v131 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a8;
  v90 = 0;
  v91 = &v90;
  v92 = 0x3032000000;
  v93 = __Block_byref_object_copy__15714;
  v94 = __Block_byref_object_dispose__15715;
  v95 = 0;
  v84 = 0;
  v85 = &v84;
  v86 = 0x3032000000;
  v87 = __Block_byref_object_copy__15714;
  v88 = __Block_byref_object_dispose__15715;
  v89 = 0;
  v80 = 0;
  v81 = &v80;
  v82 = 0x2020000000;
  v83 = 1;
  v16 = objc_opt_class();
  v17 = NSStringFromClass(v16);
  if (v15)
  {
    [v14 setFetchBatchSize:100];
    v18 = [PLEnumerateAndSaveController alloc];
    v78[0] = MEMORY[0x1E69E9820];
    v78[1] = 3221225472;
    v78[2] = __144__PLModelMigrationActionUtility_processManagedObjectsWithAction_managedObjectContext_fetchRequest_pendingParentUnitCount_error_processingBlock___block_invoke;
    v78[3] = &unk_1E7575B30;
    v79 = v13;
    v74[0] = MEMORY[0x1E69E9820];
    v74[1] = 3221225472;
    v74[2] = __144__PLModelMigrationActionUtility_processManagedObjectsWithAction_managedObjectContext_fetchRequest_pendingParentUnitCount_error_processingBlock___block_invoke_2;
    v74[3] = &unk_1E7567CD8;
    v76 = &v84;
    v75 = v12;
    v77 = a6;
    v68[0] = MEMORY[0x1E69E9820];
    v68[1] = 3221225472;
    v68[2] = __144__PLModelMigrationActionUtility_processManagedObjectsWithAction_managedObjectContext_fetchRequest_pendingParentUnitCount_error_processingBlock___block_invoke_3;
    v68[3] = &unk_1E7567D28;
    v70 = v15;
    v71 = &v84;
    v19 = v75;
    v69 = v19;
    v72 = &v80;
    v73 = &v90;
    v20 = [(PLEnumerateAndSaveController *)v18 initWithName:v17 fetchRequest:v14 context:v79 options:4 generateContextBlock:v78 didFetchObjectIDsBlock:v74 processResultBlock:v68];
    v67 = 0;
    v21 = [(PLEnumerateAndSaveController *)v20 processObjectsWithError:&v67];
    v22 = v67;
    if (v21)
    {
      if ([(PLEnumerateAndSaveController *)v20 isCancelled])
      {
        v23 = v91[5];

        v24 = PLMigrationGetLog();
        v25 = os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);

        if (v25)
        {
          v26 = [v19 logger];
          v27 = v26 == 0;

          if (v27)
          {
            v63 = PLMigrationGetLog();
            if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
            {
              v64 = [v85[5] completedUnitCount];
              *buf = 134218242;
              *&buf[4] = v64;
              *&buf[12] = 2112;
              *&buf[14] = v23;
              _os_log_impl(&dword_19BF1F000, v63, OS_LOG_TYPE_DEFAULT, "Cancelled operation after update of %lld objects. Error: %@", buf, 0x16u);
            }
          }

          else
          {
            v129 = 0u;
            v130 = 0u;
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
            memset(buf, 0, sizeof(buf));
            v28 = PLMigrationGetLog();
            os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT);
            v29 = [v85[5] completedUnitCount];
            v96 = 134218242;
            v97 = v29;
            v98 = 2112;
            v99 = v23;
            LODWORD(v65) = 22;
            v30 = _os_log_send_and_compose_impl();

            v31 = [v19 logger];
            [v31 logWithMessage:v30 fromCodeLocation:"PLModelMigrationActionUtility.m" type:{411, 0}];

            if (v30 != buf)
            {
              free(v30);
            }
          }
        }

        goto LABEL_32;
      }

      v46 = PLMigrationGetLog();
      v47 = os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT);

      if (v47)
      {
        v48 = [v19 logger];
        v49 = v48 == 0;

        if (v49)
        {
          v56 = PLMigrationGetLog();
          if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
          {
            v57 = [v85[5] completedUnitCount];
            *buf = 134217984;
            *&buf[4] = v57;
            _os_log_impl(&dword_19BF1F000, v56, OS_LOG_TYPE_DEFAULT, "Completed update of %lld objects.", buf, 0xCu);
          }

          goto LABEL_31;
        }

        v129 = 0u;
        v130 = 0u;
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
        memset(buf, 0, sizeof(buf));
        v50 = PLMigrationGetLog();
        os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT);
        v51 = [v85[5] completedUnitCount];
        v96 = 134217984;
        v97 = v51;
        LODWORD(v65) = 12;
        v44 = _os_log_send_and_compose_impl();

        v52 = [v19 logger];
        [v52 logWithMessage:v44 fromCodeLocation:"PLModelMigrationActionUtility.m" type:{413, 0}];

        goto LABEL_19;
      }
    }

    else if (v81[3] != 2)
    {
      v81[3] = 3;
      v39 = PLMigrationGetLog();
      v40 = os_log_type_enabled(v39, OS_LOG_TYPE_ERROR);

      if (v40)
      {
        v41 = [v19 logger];
        v42 = v41 == 0;

        if (v42)
        {
          v55 = PLMigrationGetLog();
          if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543618;
            *&buf[4] = v17;
            *&buf[12] = 2112;
            *&buf[14] = v22;
            _os_log_impl(&dword_19BF1F000, v55, OS_LOG_TYPE_ERROR, "Failed to perform a save operation for %{public}@. Error: %@", buf, 0x16u);
          }

          goto LABEL_31;
        }

        v129 = 0u;
        v130 = 0u;
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
        memset(buf, 0, sizeof(buf));
        v43 = PLMigrationGetLog();
        os_log_type_enabled(v43, OS_LOG_TYPE_ERROR);
        v96 = 138543618;
        v97 = v17;
        v98 = 2112;
        v99 = v22;
        LODWORD(v65) = 22;
        v44 = _os_log_send_and_compose_impl();

        v45 = [v19 logger];
        [v45 logWithMessage:v44 fromCodeLocation:"PLModelMigrationActionUtility.m" type:{417, 16}];

LABEL_19:
        if (v44 != buf)
        {
          free(v44);
        }
      }
    }

LABEL_31:
    v23 = v22;
LABEL_32:
    v58 = v81[3];
    v59 = v23;
    v60 = v59;
    if (v58 != 1 && a7)
    {
      v61 = v59;
      *a7 = v60;
    }

    v54 = v81[3];
    goto LABEL_36;
  }

  v32 = PLMigrationGetLog();
  v33 = os_log_type_enabled(v32, OS_LOG_TYPE_INFO);

  if (v33)
  {
    v34 = [v12 logger];
    v35 = v34 == 0;

    if (v35)
    {
      v53 = PLMigrationGetLog();
      if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
      {
        *buf = 138543362;
        *&buf[4] = v17;
        _os_log_impl(&dword_19BF1F000, v53, OS_LOG_TYPE_INFO, "Missing processing block for %{public}@", buf, 0xCu);
      }
    }

    else
    {
      v129 = 0u;
      v130 = 0u;
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
      memset(buf, 0, sizeof(buf));
      v36 = PLMigrationGetLog();
      os_log_type_enabled(v36, OS_LOG_TYPE_INFO);
      v96 = 138543362;
      v97 = v17;
      LODWORD(v65) = 12;
      v37 = _os_log_send_and_compose_impl();

      v38 = [v12 logger];
      [v38 logWithMessage:v37 fromCodeLocation:"PLModelMigrationActionUtility.m" type:{378, 1}];

      if (v37 != buf)
      {
        free(v37);
      }
    }
  }

  v54 = v81[3];
LABEL_36:

  _Block_object_dispose(&v80, 8);
  _Block_object_dispose(&v84, 8);

  _Block_object_dispose(&v90, 8);
  return v54;
}

void __144__PLModelMigrationActionUtility_processManagedObjectsWithAction_managedObjectContext_fetchRequest_pendingParentUnitCount_error_processingBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [*(a1 + 32) cancellableDiscreteProgressWithTotalUnitCount:objc_msgSend(a2 pendingParentUnitCount:{"count"), *(a1 + 48)}];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void __144__PLModelMigrationActionUtility_processManagedObjectsWithAction_managedObjectContext_fetchRequest_pendingParentUnitCount_error_processingBlock___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  (*(*(a1 + 40) + 16))();
  v6 = [*(*(*(a1 + 48) + 8) + 40) completedUnitCount];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __144__PLModelMigrationActionUtility_processManagedObjectsWithAction_managedObjectContext_fetchRequest_pendingParentUnitCount_error_processingBlock___block_invoke_4;
  v14[3] = &unk_1E7578910;
  v7 = *(a1 + 32);
  v8 = *(a1 + 48);
  v15 = v7;
  v16 = v8;
  if (v6 && !(v6 % 0x3E8))
  {
    __144__PLModelMigrationActionUtility_processManagedObjectsWithAction_managedObjectContext_fetchRequest_pendingParentUnitCount_error_processingBlock___block_invoke_4(v14);
  }

  if (*(*(*(a1 + 56) + 8) + 24) == 1)
  {
    v9 = *(a1 + 32);
    v10 = *(*(a1 + 64) + 8);
    obj = *(v10 + 40);
    v11 = [v9 isCancelledWithError:&obj];
    objc_storeStrong((v10 + 40), obj);
    if (v11)
    {
      *(*(*(a1 + 56) + 8) + 24) = 2;
      *a4 = 1;
    }
  }

  v12 = *(*(*(a1 + 48) + 8) + 40);
  [v12 setCompletedUnitCount:{objc_msgSend(v12, "completedUnitCount") + 1}];
}

void __144__PLModelMigrationActionUtility_processManagedObjectsWithAction_managedObjectContext_fetchRequest_pendingParentUnitCount_error_processingBlock___block_invoke_4(uint64_t a1)
{
  v46 = *MEMORY[0x1E69E9840];
  v2 = PLMigrationGetLog();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_INFO);

  if (v3)
  {
    v4 = [*(a1 + 32) logger];

    if (v4)
    {
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      *buf = 0u;
      v15 = 0u;
      v5 = PLMigrationGetLog();
      os_log_type_enabled(v5, OS_LOG_TYPE_INFO);
      v6 = [*(*(*(a1 + 40) + 8) + 40) completedUnitCount];
      v12 = 134217984;
      v13 = v6;
      LODWORD(v11) = 12;
      v7 = _os_log_send_and_compose_impl();

      v8 = [*(a1 + 32) logger];
      [v8 logWithMessage:v7 fromCodeLocation:"PLModelMigrationActionUtility.m" type:{393, 1}];

      if (v7 != buf)
      {
        free(v7);
      }
    }

    else
    {
      v9 = PLMigrationGetLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = [*(*(*(a1 + 40) + 8) + 40) completedUnitCount];
        *buf = 134217984;
        *&buf[4] = v10;
        _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_INFO, "Processed %lld records", buf, 0xCu);
      }
    }
  }
}

+ (int64_t)processManagedObjectBatchesWithAction:(id)a3 managedObjectContext:(id)a4 fetchRequest:(id)a5 pendingParentUnitCount:(int64_t)a6 useObjectIDResumeMarker:(BOOL)a7 error:(id *)a8 processingBlock:(id)a9
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a9;
  v52 = 0;
  v53 = &v52;
  v54 = 0x2020000000;
  v55 = 1;
  v50[0] = 0;
  v50[1] = v50;
  v50[2] = 0x3032000000;
  v50[3] = __Block_byref_object_copy__15714;
  v50[4] = __Block_byref_object_dispose__15715;
  v51 = 0;
  v44 = 0;
  v45 = &v44;
  v46 = 0x3032000000;
  v47 = __Block_byref_object_copy__15714;
  v48 = __Block_byref_object_dispose__15715;
  v49 = 0;
  v17 = objc_opt_class();
  v18 = NSStringFromClass(v17);
  v19 = [PLEnumerateAndSaveController alloc];
  v42[0] = MEMORY[0x1E69E9820];
  v42[1] = 3221225472;
  v42[2] = __174__PLModelMigrationActionUtility_processManagedObjectBatchesWithAction_managedObjectContext_fetchRequest_pendingParentUnitCount_useObjectIDResumeMarker_error_processingBlock___block_invoke;
  v42[3] = &unk_1E7575B30;
  v20 = v14;
  v43 = v20;
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __174__PLModelMigrationActionUtility_processManagedObjectBatchesWithAction_managedObjectContext_fetchRequest_pendingParentUnitCount_useObjectIDResumeMarker_error_processingBlock___block_invoke_2;
  v38[3] = &unk_1E7567CD8;
  v40 = v50;
  v39 = v13;
  v41 = a6;
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __174__PLModelMigrationActionUtility_processManagedObjectBatchesWithAction_managedObjectContext_fetchRequest_pendingParentUnitCount_useObjectIDResumeMarker_error_processingBlock___block_invoke_3;
  v32[3] = &unk_1E7567D00;
  v35 = &v52;
  v21 = v16;
  v34 = v21;
  v36 = v50;
  v37 = &v44;
  v22 = v39;
  v33 = v22;
  v23 = [(PLEnumerateAndSaveController *)v19 initWithName:v18 fetchRequest:v15 context:v20 options:4 generateContextBlock:v42 didFetchObjectIDsBlock:v38 processResultsBlock:v32];
  v31 = 0;
  v24 = [(PLEnumerateAndSaveController *)v23 processObjectsWithError:&v31];
  v25 = v31;
  v26 = v31;
  if (!v24)
  {
    v53[3] = 3;
    objc_storeStrong(v45 + 5, v25);
  }

  if (v53[3] != 1)
  {
    v28 = v45[5];
    if (!a8)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  [v22 setResumeMarkerValue:0];
  v27 = v53[3];
  v28 = v45[5];
  if (v27 != 1 && a8)
  {
LABEL_6:
    v28 = v28;
    *a8 = v28;
  }

LABEL_7:

  v29 = v53[3];
  _Block_object_dispose(&v44, 8);

  _Block_object_dispose(v50, 8);
  _Block_object_dispose(&v52, 8);

  return v29;
}

void __174__PLModelMigrationActionUtility_processManagedObjectBatchesWithAction_managedObjectContext_fetchRequest_pendingParentUnitCount_useObjectIDResumeMarker_error_processingBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [*(a1 + 32) cancellableDiscreteProgressWithTotalUnitCount:objc_msgSend(a2 pendingParentUnitCount:{"count"), *(a1 + 48)}];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void __174__PLModelMigrationActionUtility_processManagedObjectBatchesWithAction_managedObjectContext_fetchRequest_pendingParentUnitCount_useObjectIDResumeMarker_error_processingBlock___block_invoke_3(void *a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v6 = a3;
  v7 = a1[5];
  obj[1] = 0;
  v8 = (*(v7 + 16))();
  v9 = 0;
  *(*(a1[6] + 8) + 24) = v8;
  v10 = *(*(a1[7] + 8) + 40);
  [v10 setCompletedUnitCount:{objc_msgSend(v10, "completedUnitCount") + objc_msgSend(v6, "count")}];
  if (*(*(a1[6] + 8) + 24) == 1)
  {
    v11 = [v6 lastObject];
    v12 = [v11 objectID];

    v13 = a1[4];
    v14 = *(a1[8] + 8);
    obj[0] = *(v14 + 40);
    v15 = [v13 isCancelledWithResumeMarker:v12 error:obj];
    objc_storeStrong((v14 + 40), obj[0]);
    if (v15)
    {
      *(*(a1[6] + 8) + 24) = 2;
      *a4 = 1;
    }
  }

  else
  {
    objc_storeStrong((*(a1[8] + 8) + 40), 0);
    *a4 = 1;
  }
}

+ (int64_t)processManagedObjectWithAction:(id)a3 managedObjectContext:(id)a4 fetchRequest:(id)a5 useObjectIDResumeMarker:(BOOL)a6 error:(id *)a7 processingBlock:(id)a8
{
  v9 = a6;
  v141 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v76 = a4;
  v13 = a5;
  v14 = a8;
  v100 = 0;
  v101 = &v100;
  v102 = 0x3032000000;
  v103 = __Block_byref_object_copy__15714;
  v104 = __Block_byref_object_dispose__15715;
  v105 = 0;
  v94 = 0;
  v95 = &v94;
  v96 = 0x3032000000;
  v97 = __Block_byref_object_copy__15714;
  v98 = __Block_byref_object_dispose__15715;
  v99 = 0;
  v90 = 0;
  v91 = &v90;
  v92 = 0x2020000000;
  v93 = 1;
  if (v14)
  {
    [v13 setFetchBatchSize:100];
    v15 = [PLEnumerateAndSaveController alloc];
    v16 = objc_opt_class();
    v17 = NSStringFromClass(v16);
    v88[0] = MEMORY[0x1E69E9820];
    v88[1] = 3221225472;
    v88[2] = __144__PLModelMigrationActionUtility_processManagedObjectWithAction_managedObjectContext_fetchRequest_useObjectIDResumeMarker_error_processingBlock___block_invoke;
    v88[3] = &unk_1E7575B30;
    v89 = v76;
    v85[0] = MEMORY[0x1E69E9820];
    v85[1] = 3221225472;
    v85[2] = __144__PLModelMigrationActionUtility_processManagedObjectWithAction_managedObjectContext_fetchRequest_useObjectIDResumeMarker_error_processingBlock___block_invoke_2;
    v85[3] = &unk_1E7572E50;
    v87 = &v94;
    v86 = v12;
    v74 = v12;
    v78[0] = MEMORY[0x1E69E9820];
    v78[1] = 3221225472;
    v78[2] = __144__PLModelMigrationActionUtility_processManagedObjectWithAction_managedObjectContext_fetchRequest_useObjectIDResumeMarker_error_processingBlock___block_invoke_3;
    v78[3] = &unk_1E7567CB0;
    v80 = v14;
    v81 = &v94;
    v18 = v86;
    v79 = v18;
    v82 = &v90;
    v84 = v9;
    v83 = &v100;
    v19 = [(PLEnumerateAndSaveController *)v15 initWithName:v17 fetchRequest:v13 context:v89 options:4 generateContextBlock:v88 didFetchObjectIDsBlock:v85 processResultBlock:v78];

    v77 = 0;
    v20 = [(PLEnumerateAndSaveController *)v19 processObjectsWithError:&v77];
    v21 = v77;
    if (v20)
    {
      if ([(PLEnumerateAndSaveController *)v19 isCancelled])
      {
        v22 = v101[5];

        v23 = PLMigrationGetLog();
        v24 = os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);

        if (v24)
        {
          v25 = [v18 logger];
          v26 = v25 == 0;

          if (v26)
          {
            v71 = PLMigrationGetLog();
            if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
            {
              v72 = [v95[5] completedUnitCount];
              *buf = 134218242;
              *&buf[4] = v72;
              *&buf[12] = 2112;
              *&buf[14] = v22;
              _os_log_impl(&dword_19BF1F000, v71, OS_LOG_TYPE_DEFAULT, "Cancelled operation after update of %lld assets. Error: %@", buf, 0x16u);
            }
          }

          else
          {
            v139 = 0u;
            v140 = 0u;
            v137 = 0u;
            v138 = 0u;
            v135 = 0u;
            v136 = 0u;
            v133 = 0u;
            v134 = 0u;
            v131 = 0u;
            v132 = 0u;
            v129 = 0u;
            v130 = 0u;
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
            memset(buf, 0, sizeof(buf));
            v27 = PLMigrationGetLog();
            os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT);
            v28 = [v95[5] completedUnitCount];
            v106 = 134218242;
            v107 = v28;
            v108 = 2112;
            v109 = v22;
            LODWORD(v73) = 22;
            v29 = _os_log_send_and_compose_impl();

            v30 = [v18 logger];
            [v30 logWithMessage:v29 fromCodeLocation:"PLModelMigrationActionUtility.m" type:{315, 0}];

            if (v29 != buf)
            {
              free(v29);
            }
          }
        }

        goto LABEL_32;
      }

      v49 = PLMigrationGetLog();
      v50 = os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT);

      if (!v50)
      {
LABEL_31:
        v22 = v21;
LABEL_32:
        v64 = v91;
        if (v9 && v91[3] == 1)
        {
          [v18 setResumeMarkerValue:0];
          v64 = v91;
        }

        v65 = v64[3];
        v66 = v22;
        v67 = v66;
        v68 = v65 == 1;
        v12 = v74;
        if (!v68 && a7)
        {
          v69 = v66;
          *a7 = v67;
        }

        v59 = v91[3];
        goto LABEL_39;
      }

      v51 = [v18 logger];
      v52 = v51 == 0;

      if (!v52)
      {
        v139 = 0u;
        v140 = 0u;
        v137 = 0u;
        v138 = 0u;
        v135 = 0u;
        v136 = 0u;
        v133 = 0u;
        v134 = 0u;
        v131 = 0u;
        v132 = 0u;
        v129 = 0u;
        v130 = 0u;
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
        memset(buf, 0, sizeof(buf));
        v53 = PLMigrationGetLog();
        os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT);
        v54 = [v95[5] completedUnitCount];
        v106 = 134217984;
        v107 = v54;
        LODWORD(v73) = 12;
        v47 = _os_log_send_and_compose_impl();

        v55 = [v18 logger];
        [v55 logWithMessage:v47 fromCodeLocation:"PLModelMigrationActionUtility.m" type:{317, 0}];

LABEL_19:
        if (v47 != buf)
        {
          free(v47);
        }

        goto LABEL_31;
      }

      v60 = PLMigrationGetLog();
      if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
      {
        v63 = [v95[5] completedUnitCount];
        *buf = 134217984;
        *&buf[4] = v63;
        _os_log_impl(&dword_19BF1F000, v60, OS_LOG_TYPE_DEFAULT, "Completed update of %lld assets.", buf, 0xCu);
      }
    }

    else
    {
      if (v91[3] == 2)
      {
        goto LABEL_31;
      }

      v91[3] = 3;
      v40 = PLMigrationGetLog();
      v41 = os_log_type_enabled(v40, OS_LOG_TYPE_ERROR);

      if (!v41)
      {
        goto LABEL_31;
      }

      v42 = [v18 logger];
      v43 = v42 == 0;

      if (!v43)
      {
        v139 = 0u;
        v140 = 0u;
        v137 = 0u;
        v138 = 0u;
        v135 = 0u;
        v136 = 0u;
        v133 = 0u;
        v134 = 0u;
        v131 = 0u;
        v132 = 0u;
        v129 = 0u;
        v130 = 0u;
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
        memset(buf, 0, sizeof(buf));
        v44 = PLMigrationGetLog();
        os_log_type_enabled(v44, OS_LOG_TYPE_ERROR);
        v45 = objc_opt_class();
        v46 = NSStringFromClass(v45);
        v106 = 138543618;
        v107 = v46;
        v108 = 2112;
        v109 = v21;
        LODWORD(v73) = 22;
        v47 = _os_log_send_and_compose_impl();

        v48 = [v18 logger];
        [v48 logWithMessage:v47 fromCodeLocation:"PLModelMigrationActionUtility.m" type:{321, 16}];

        goto LABEL_19;
      }

      v60 = PLMigrationGetLog();
      if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
      {
        v61 = objc_opt_class();
        v62 = NSStringFromClass(v61);
        *buf = 138543618;
        *&buf[4] = v62;
        *&buf[12] = 2112;
        *&buf[14] = v21;
        _os_log_impl(&dword_19BF1F000, v60, OS_LOG_TYPE_ERROR, "Failed to perform a save operation for %{public}@. Error: %@", buf, 0x16u);
      }
    }

    goto LABEL_31;
  }

  v31 = PLMigrationGetLog();
  v32 = os_log_type_enabled(v31, OS_LOG_TYPE_INFO);

  if (v32)
  {
    v33 = [v12 logger];
    v34 = v33 == 0;

    if (v34)
    {
      v56 = PLMigrationGetLog();
      if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
      {
        v57 = objc_opt_class();
        v58 = NSStringFromClass(v57);
        *buf = 138543362;
        *&buf[4] = v58;
        _os_log_impl(&dword_19BF1F000, v56, OS_LOG_TYPE_INFO, "Missing processing block for %{public}@", buf, 0xCu);
      }
    }

    else
    {
      v139 = 0u;
      v140 = 0u;
      v137 = 0u;
      v138 = 0u;
      v135 = 0u;
      v136 = 0u;
      v133 = 0u;
      v134 = 0u;
      v131 = 0u;
      v132 = 0u;
      v129 = 0u;
      v130 = 0u;
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
      memset(buf, 0, sizeof(buf));
      v35 = PLMigrationGetLog();
      os_log_type_enabled(v35, OS_LOG_TYPE_INFO);
      v36 = objc_opt_class();
      v37 = NSStringFromClass(v36);
      v106 = 138543362;
      v107 = v37;
      LODWORD(v73) = 12;
      v38 = _os_log_send_and_compose_impl();

      v39 = [v12 logger];
      [v39 logWithMessage:v38 fromCodeLocation:"PLModelMigrationActionUtility.m" type:{277, 1}];

      if (v38 != buf)
      {
        free(v38);
      }
    }
  }

  v59 = v91[3];
LABEL_39:
  _Block_object_dispose(&v90, 8);
  _Block_object_dispose(&v94, 8);

  _Block_object_dispose(&v100, 8);
  return v59;
}

void __144__PLModelMigrationActionUtility_processManagedObjectWithAction_managedObjectContext_fetchRequest_useObjectIDResumeMarker_error_processingBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [*(a1 + 32) cancellableDiscreteProgressWithTotalUnitCount:objc_msgSend(a2 pendingParentUnitCount:{"count"), 0}];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void __144__PLModelMigrationActionUtility_processManagedObjectWithAction_managedObjectContext_fetchRequest_useObjectIDResumeMarker_error_processingBlock___block_invoke_3(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v6 = a3;
  (*(*(a1 + 40) + 16))();
  v7 = [*(*(*(a1 + 48) + 8) + 40) completedUnitCount];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __144__PLModelMigrationActionUtility_processManagedObjectWithAction_managedObjectContext_fetchRequest_useObjectIDResumeMarker_error_processingBlock___block_invoke_4;
  v16[3] = &unk_1E7578910;
  v8 = *(a1 + 32);
  v9 = *(a1 + 48);
  v17 = v8;
  v18 = v9;
  if (v7 && !(v7 % 0x3E8))
  {
    __144__PLModelMigrationActionUtility_processManagedObjectWithAction_managedObjectContext_fetchRequest_useObjectIDResumeMarker_error_processingBlock___block_invoke_4(v16);
  }

  if (*(*(*(a1 + 56) + 8) + 24) == 1)
  {
    if (*(a1 + 72) == 1)
    {
      v10 = [v6 objectID];
    }

    else
    {
      v10 = 0;
    }

    v11 = *(a1 + 32);
    v12 = *(*(a1 + 64) + 8);
    obj = *(v12 + 40);
    v13 = [v11 isCancelledWithResumeMarker:v10 error:&obj];
    objc_storeStrong((v12 + 40), obj);
    if (v13)
    {
      *(*(*(a1 + 56) + 8) + 24) = 2;
      *a4 = 1;
    }
  }

  v14 = *(*(*(a1 + 48) + 8) + 40);
  [v14 setCompletedUnitCount:{objc_msgSend(v14, "completedUnitCount") + 1}];
}

void __144__PLModelMigrationActionUtility_processManagedObjectWithAction_managedObjectContext_fetchRequest_useObjectIDResumeMarker_error_processingBlock___block_invoke_4(uint64_t a1)
{
  v46 = *MEMORY[0x1E69E9840];
  v2 = PLMigrationGetLog();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_INFO);

  if (v3)
  {
    v4 = [*(a1 + 32) logger];

    if (v4)
    {
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      *buf = 0u;
      v15 = 0u;
      v5 = PLMigrationGetLog();
      os_log_type_enabled(v5, OS_LOG_TYPE_INFO);
      v6 = [*(*(*(a1 + 40) + 8) + 40) completedUnitCount];
      v12 = 134217984;
      v13 = v6;
      LODWORD(v11) = 12;
      v7 = _os_log_send_and_compose_impl();

      v8 = [*(a1 + 32) logger];
      [v8 logWithMessage:v7 fromCodeLocation:"PLModelMigrationActionUtility.m" type:{292, 1}];

      if (v7 != buf)
      {
        free(v7);
      }
    }

    else
    {
      v9 = PLMigrationGetLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = [*(*(*(a1 + 40) + 8) + 40) completedUnitCount];
        *buf = 134217984;
        *&buf[4] = v10;
        _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_INFO, "Updated %lld assets", buf, 0xCu);
      }
    }
  }
}

+ (BOOL)shouldProcessHistoryTokenWithAction:(id)a3 token:(id)a4 cutoffPercent:(double)a5 managedObjectContext:(id)a6
{
  v104 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a6;
  v12 = [PLPersistentHistoryUtilities oldestTransactionWithContext:v11];
  v13 = [PLPersistentHistoryUtilities newestTransactionWithContext:v11];

  if (v12)
  {
    v14 = v13 == 0;
  }

  else
  {
    v14 = 1;
  }

  if (!v14)
  {
    v21 = [PLPersistentHistoryUtilities transactionNumberFromToken:v10];
    v22 = v21;
    if (v21)
    {
      v16 = [v21 integerValue];
      v23 = [v12 transactionNumber];
      v24 = [v13 transactionNumber];
      if (v24 == v16)
      {
        v25 = PLMigrationGetLog();
        v26 = os_log_type_enabled(v25, OS_LOG_TYPE_ERROR);

        if (v26)
        {
          v27 = [v9 logger];

          if (v27)
          {
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
            *buf = 0u;
            v73 = 0u;
            v28 = PLMigrationGetLog();
            os_log_type_enabled(v28, OS_LOG_TYPE_ERROR);
            LOWORD(v70) = 0;
            LODWORD(v69) = 2;
            v29 = _os_log_send_and_compose_impl();

            v30 = [v9 logger];
            v31 = v30;
            v32 = v29;
            v33 = 235;
            goto LABEL_22;
          }

          v56 = PLMigrationGetLog();
          if (!os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_45;
          }

          *buf = 0;
          v57 = "Current token matches latest";
          goto LABEL_44;
        }

LABEL_46:
        LOBYTE(v16) = 0;
LABEL_47:

        goto LABEL_48;
      }

      if (v24 != v23)
      {
        v43 = v24 - v23;
        if (v24 - v23 > 1999)
        {
          if (v43 >= 0xC351)
          {
            v50 = PLMigrationGetLog();
            v51 = os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT);

            if (v51)
            {
              v52 = [v9 logger];

              if (v52)
              {
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
                *buf = 0u;
                v73 = 0u;
                v53 = PLMigrationGetLog();
                os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT);
                LOWORD(v70) = 0;
                LODWORD(v69) = 2;
                v54 = _os_log_send_and_compose_impl();

                v55 = [v9 logger];
                [v55 logWithMessage:v54 fromCodeLocation:"PLModelMigrationActionUtility.m" type:{255, 0}];

                if (v54 != buf)
                {
                  free(v54);
                }
              }

              else
              {
                v60 = PLMigrationGetLog();
                if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&dword_19BF1F000, v60, OS_LOG_TYPE_DEFAULT, "Number of tokens above threshold", buf, 2u);
                }
              }
            }

            if (a5 < 0.75)
            {
              v61 = PLMigrationGetLog();
              v62 = os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT);

              if (v62)
              {
                v63 = [v9 logger];

                if (v63)
                {
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
                  *buf = 0u;
                  v73 = 0u;
                  v64 = PLMigrationGetLog();
                  os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT);
                  v70 = 134217984;
                  v71 = 0x3FE8000000000000;
                  LODWORD(v69) = 12;
                  v65 = _os_log_send_and_compose_impl();

                  v66 = [v9 logger];
                  [v66 logWithMessage:v65 fromCodeLocation:"PLModelMigrationActionUtility.m" type:{257, 0}];

                  if (v65 != buf)
                  {
                    free(v65);
                  }
                }

                else
                {
                  v67 = PLMigrationGetLog();
                  if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 134217984;
                    *&buf[4] = 0x3FE8000000000000;
                    _os_log_impl(&dword_19BF1F000, v67, OS_LOG_TYPE_DEFAULT, "Increasing cutoff to %lf", buf, 0xCu);
                  }
                }
              }

              a5 = 0.75;
            }
          }

          if (v16 == v23)
          {
            v68 = 0;
          }

          else
          {
            v68 = v23;
          }

          LOBYTE(v16) = (v16 - v68) / v43 >= a5;
        }

        else
        {
          v44 = PLMigrationGetLog();
          v45 = os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT);

          if (v45)
          {
            v46 = [v9 logger];

            if (v46)
            {
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
              *buf = 0u;
              v73 = 0u;
              v47 = PLMigrationGetLog();
              os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT);
              LOWORD(v70) = 0;
              LODWORD(v69) = 2;
              v48 = _os_log_send_and_compose_impl();

              v49 = [v9 logger];
              [v49 logWithMessage:v48 fromCodeLocation:"PLModelMigrationActionUtility.m" type:{247, 0}];

              if (v48 != buf)
              {
                free(v48);
              }
            }

            else
            {
              v59 = PLMigrationGetLog();
              if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&dword_19BF1F000, v59, OS_LOG_TYPE_DEFAULT, "Number of tokens below threshold - processing", buf, 2u);
              }
            }
          }

          LOBYTE(v16) = 1;
        }

        goto LABEL_47;
      }

      v38 = PLMigrationGetLog();
      v39 = os_log_type_enabled(v38, OS_LOG_TYPE_ERROR);

      if (!v39)
      {
        goto LABEL_46;
      }

      v40 = [v9 logger];

      if (v40)
      {
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
        *buf = 0u;
        v73 = 0u;
        v41 = PLMigrationGetLog();
        os_log_type_enabled(v41, OS_LOG_TYPE_ERROR);
        LOWORD(v70) = 0;
        LODWORD(v69) = 2;
        v29 = _os_log_send_and_compose_impl();

        v30 = [v9 logger];
        v31 = v30;
        v32 = v29;
        v33 = 241;
LABEL_22:
        [v30 logWithMessage:v32 fromCodeLocation:"PLModelMigrationActionUtility.m" type:{v33, 16}];

        if (v29 != buf)
        {
          free(v29);
        }

        goto LABEL_46;
      }

      v56 = PLMigrationGetLog();
      if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        v57 = "Matching oldest and latest tokens";
        goto LABEL_44;
      }
    }

    else
    {
      v34 = PLMigrationGetLog();
      v35 = os_log_type_enabled(v34, OS_LOG_TYPE_ERROR);

      if (!v35)
      {
        goto LABEL_46;
      }

      v36 = [v9 logger];

      if (v36)
      {
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
        *buf = 0u;
        v73 = 0u;
        v37 = PLMigrationGetLog();
        os_log_type_enabled(v37, OS_LOG_TYPE_ERROR);
        LOWORD(v70) = 0;
        LODWORD(v69) = 2;
        v29 = _os_log_send_and_compose_impl();

        v30 = [v9 logger];
        v31 = v30;
        v32 = v29;
        v33 = 224;
        goto LABEL_22;
      }

      v56 = PLMigrationGetLog();
      if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        v57 = "Invalid transaction number from token";
LABEL_44:
        _os_log_impl(&dword_19BF1F000, v56, OS_LOG_TYPE_ERROR, v57, buf, 2u);
      }
    }

LABEL_45:

    goto LABEL_46;
  }

  v15 = PLMigrationGetLog();
  LODWORD(v16) = os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);

  if (v16)
  {
    v17 = [v9 logger];

    if (v17)
    {
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
      *buf = 0u;
      v73 = 0u;
      v18 = PLMigrationGetLog();
      os_log_type_enabled(v18, OS_LOG_TYPE_ERROR);
      LOWORD(v70) = 0;
      LODWORD(v69) = 2;
      v19 = _os_log_send_and_compose_impl();

      v20 = [v9 logger];
      [v20 logWithMessage:v19 fromCodeLocation:"PLModelMigrationActionUtility.m" type:{217, 16}];

      if (v19 != buf)
      {
        free(v19);
      }
    }

    else
    {
      v42 = PLMigrationGetLog();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_19BF1F000, v42, OS_LOG_TYPE_ERROR, "Failed to fetch the oldest/newest transaction", buf, 2u);
      }
    }

    LOBYTE(v16) = 0;
  }

LABEL_48:

  return v16;
}

+ (void)setHistoryTokenWithAction:(id)a3 key:(id)a4 value:(id)a5 managedObjectContext:(id)a6
{
  v15 = a4;
  v10 = a5;
  v11 = a6;
  v12 = v15;
  v13 = v11;
  if (!v15)
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:a1 file:@"PLModelMigrationActionUtility.m" lineNumber:204 description:{@"Invalid parameter not satisfying: %@", @"key"}];

    v12 = 0;
  }

  [PLGlobalKeyValue setGlobalValue:v10 forKey:v12 managedObjectContext:v13];
}

+ (id)getHistoryTokenWithAction:(id)a3 key:(id)a4 managedObjectContext:(id)a5
{
  v63 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (!v10)
  {
    v28 = [MEMORY[0x1E696AAA8] currentHandler];
    [v28 handleFailureInMethod:a2 object:a1 file:@"PLModelMigrationActionUtility.m" lineNumber:190 description:{@"Invalid parameter not satisfying: %@", @"key"}];
  }

  v12 = [PLGlobalKeyValue globalValueForKey:v10 managedObjectContext:v11];
  if (v12)
  {
    v13 = v12;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_20;
    }

    v14 = PLMigrationGetLog();
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);

    if (v15)
    {
      v16 = [v9 logger];

      if (v16)
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
        *buf = 0u;
        v32 = 0u;
        v17 = PLMigrationGetLog();
        os_log_type_enabled(v17, OS_LOG_TYPE_ERROR);
        v30[0] = 0;
        LODWORD(v29) = 2;
        v18 = _os_log_send_and_compose_impl();

        v19 = [v9 logger];
        [v19 logWithMessage:v18 fromCodeLocation:"PLModelMigrationActionUtility.m" type:{197, 16}];

        if (v18 != buf)
        {
          free(v18);
        }
      }

      else
      {
        v26 = PLMigrationGetLog();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_19BF1F000, v26, OS_LOG_TYPE_ERROR, "Invalid history token", buf, 2u);
        }
      }
    }

LABEL_18:

    goto LABEL_19;
  }

  v20 = PLMigrationGetLog();
  v21 = os_log_type_enabled(v20, OS_LOG_TYPE_ERROR);

  if (v21)
  {
    v22 = [v9 logger];

    if (v22)
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
      *buf = 0u;
      v32 = 0u;
      v23 = PLMigrationGetLog();
      os_log_type_enabled(v23, OS_LOG_TYPE_ERROR);
      v30[0] = 0;
      LODWORD(v29) = 2;
      v24 = _os_log_send_and_compose_impl();

      v25 = [v9 logger];
      [v25 logWithMessage:v24 fromCodeLocation:"PLModelMigrationActionUtility.m" type:{193, 16}];

      if (v24 != buf)
      {
        free(v24);
      }

      goto LABEL_19;
    }

    v13 = PLMigrationGetLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_ERROR, "Missing history token", buf, 2u);
    }

    goto LABEL_18;
  }

LABEL_19:
  v13 = 0;
LABEL_20:

  return v13;
}

+ (int64_t)resetDuplicateProcessingWithAction:(id)a3 managedObjectContext:(id)a4 error:(id *)a5
{
  v134 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = [v7 cancellableDiscreteProgressWithTotalUnitCount:1 pendingParentUnitCount:0];
  v10 = [[PLGlobalValues alloc] initWithManagedObjectContext:v8];
  [(PLGlobalValues *)v10 setDuplicateProcessingStatus:0];
  [(PLGlobalValues *)v10 setLastInitialDuplicateDetectorProcessingCompletedDate:0];
  v11 = MEMORY[0x1E695D5E0];
  v12 = +[PLBackgroundJobWorkItem entityName];
  v13 = [v11 fetchRequestWithEntityName:v12];

  v14 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K = %d", @"jobType", 6];
  [v13 setPredicate:v14];

  v92 = v13;
  v15 = [objc_alloc(MEMORY[0x1E695D538]) initWithFetchRequest:v13];
  [v15 setResultType:2];
  v96 = 0;
  v16 = [v8 executeRequest:v15 error:&v96];
  v17 = v96;
  v18 = PLMigrationGetLog();
  v19 = v18;
  v93 = v16;
  if (v16)
  {
    v20 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);

    v91 = v10;
    if (v20)
    {
      v21 = [v7 logger];

      if (v21)
      {
        v86 = v9;
        v88 = a5;
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
        v110 = 0u;
        v111 = 0u;
        v108 = 0u;
        v109 = 0u;
        v107 = 0u;
        v105 = 0u;
        v106 = 0u;
        v104 = 0u;
        memset(buf, 0, sizeof(buf));
        v22 = PLMigrationGetLog();
        os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);
        v23 = [v93 result];
        v24 = objc_opt_class();
        v25 = NSStringFromClass(v24);
        v97 = 138412802;
        v98 = v23;
        v99 = 2114;
        v100 = v25;
        v101 = 2112;
        v102 = v17;
        LODWORD(v84) = 32;
        v26 = _os_log_send_and_compose_impl();

        v27 = [v7 logger];
        [v27 logWithMessage:v26 fromCodeLocation:"PLModelMigrationActionUtility.m" type:{162, 0}];

        if (v26 != buf)
        {
          free(v26);
        }

        v9 = v86;
        a5 = v88;
      }

      else
      {
        v35 = PLMigrationGetLog();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
        {
          v36 = [v93 result];
          v37 = objc_opt_class();
          NSStringFromClass(v37);
          v39 = v38 = a5;
          *buf = 138412802;
          *&buf[4] = v36;
          *&buf[12] = 2114;
          *&buf[14] = v39;
          *&buf[22] = 2112;
          *&buf[24] = v17;
          _os_log_impl(&dword_19BF1F000, v35, OS_LOG_TYPE_DEFAULT, "Removed %@ duplicate background job items for %{public}@. Error: %@", buf, 0x20u);

          a5 = v38;
        }
      }
    }

    v95 = v17;
    v40 = [v8 save:&v95];
    v41 = v95;

    if (v40)
    {
      v90 = a5;
      v42 = v9;
      v43 = MEMORY[0x1E69BF188];
      v44 = [v7 pathManager];
      v45 = [v44 libraryURL];
      v46 = [v43 appPrivateDataForLibraryURL:v45];

      v94 = v41;
      v85 = v46;
      v47 = [v46 setValue:0 forKey:@"DuplicateProcessingLibraryInterruptMarker" error:&v94];
      v87 = v94;

      if (v47)
      {
        v48 = 1;
LABEL_31:
        v9 = v42;
LABEL_42:
        [v9 setCompletedUnitCount:1];
        v76 = PLMigrationGetLog();
        v77 = os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT);

        if (v77)
        {
          v78 = [v7 logger];

          if (v78)
          {
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
            v110 = 0u;
            v111 = 0u;
            v108 = 0u;
            v109 = 0u;
            v107 = 0u;
            v105 = 0u;
            v106 = 0u;
            v104 = 0u;
            memset(buf, 0, sizeof(buf));
            v79 = PLMigrationGetLog();
            os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT);
            LOWORD(v97) = 0;
            LODWORD(v84) = 2;
            v80 = _os_log_send_and_compose_impl();

            v81 = [v7 logger];
            [v81 logWithMessage:v80 fromCodeLocation:"PLModelMigrationActionUtility.m" type:{177, 0}];

            if (v80 != buf)
            {
              free(v80);
            }
          }

          else
          {
            v82 = PLMigrationGetLog();
            if (os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_19BF1F000, v82, OS_LOG_TYPE_DEFAULT, "Cleared duplicate detector processing token", buf, 2u);
            }
          }
        }

        v57 = v87;
        if (v47)
        {
          v48 = 1;
          v10 = v91;
          goto LABEL_52;
        }

        a5 = v90;
        v10 = v91;
        if (!v90)
        {
          goto LABEL_52;
        }

        goto LABEL_25;
      }

      v59 = PLMigrationGetLog();
      v60 = os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT);

      v9 = v42;
      if (v60)
      {
        v61 = [v7 logger];

        if (v61)
        {
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
          v110 = 0u;
          v111 = 0u;
          v108 = 0u;
          v109 = 0u;
          v107 = 0u;
          v105 = 0u;
          v106 = 0u;
          v104 = 0u;
          memset(buf, 0, sizeof(buf));
          v62 = PLMigrationGetLog();
          os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT);
          v63 = objc_opt_class();
          v64 = NSStringFromClass(v63);
          v97 = 138543618;
          v98 = v64;
          v99 = 2112;
          v100 = v87;
          LODWORD(v84) = 22;
          v65 = _os_log_send_and_compose_impl();

          v66 = [v7 logger];
          [v66 logWithMessage:v65 fromCodeLocation:"PLModelMigrationActionUtility.m" type:{174, 0}];

          if (v65 != buf)
          {
            free(v65);
          }

          v48 = 3;
          goto LABEL_31;
        }

        v73 = PLMigrationGetLog();
        if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
        {
          v74 = objc_opt_class();
          v75 = NSStringFromClass(v74);
          *buf = 138543618;
          *&buf[4] = v75;
          *&buf[12] = 2112;
          *&buf[14] = v87;
          _os_log_impl(&dword_19BF1F000, v73, OS_LOG_TYPE_DEFAULT, "Failed to set the interrupt marker for %{public}@. Error: %@", buf, 0x16u);
        }
      }

      v48 = 3;
      goto LABEL_42;
    }

    v49 = PLMigrationGetLog();
    v50 = os_log_type_enabled(v49, OS_LOG_TYPE_ERROR);

    if (!v50)
    {
      goto LABEL_22;
    }

    v51 = [v7 logger];

    if (v51)
    {
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
      v110 = 0u;
      v111 = 0u;
      v108 = 0u;
      v109 = 0u;
      v107 = 0u;
      v105 = 0u;
      v106 = 0u;
      v104 = 0u;
      memset(buf, 0, sizeof(buf));
      v52 = PLMigrationGetLog();
      os_log_type_enabled(v52, OS_LOG_TYPE_ERROR);
      v53 = objc_opt_class();
      v54 = NSStringFromClass(v53);
      v97 = 138543618;
      v98 = v54;
      v99 = 2112;
      v100 = v41;
      LODWORD(v84) = 22;
      v55 = _os_log_send_and_compose_impl();

      v56 = [v7 logger];
      [v56 logWithMessage:v55 fromCodeLocation:"PLModelMigrationActionUtility.m" type:{180, 16}];

      if (v55 != buf)
      {
        free(v55);
      }

LABEL_22:
      v17 = v41;
LABEL_23:
      v10 = v91;
      goto LABEL_24;
    }

    v70 = PLMigrationGetLog();
    v10 = v91;
    if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
    {
      v71 = objc_opt_class();
      v72 = NSStringFromClass(v71);
      *buf = 138543618;
      *&buf[4] = v72;
      *&buf[12] = 2112;
      *&buf[14] = v41;
      _os_log_impl(&dword_19BF1F000, v70, OS_LOG_TYPE_ERROR, "Failed to perform a save operation for %{public}@. Error: %@", buf, 0x16u);
    }

    v17 = v41;
  }

  else
  {
    v28 = os_log_type_enabled(v18, OS_LOG_TYPE_ERROR);

    if (!v28)
    {
      goto LABEL_24;
    }

    v29 = [v7 logger];

    if (v29)
    {
      v89 = a5;
      v91 = v10;
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
      v110 = 0u;
      v111 = 0u;
      v108 = 0u;
      v109 = 0u;
      v107 = 0u;
      v105 = 0u;
      v106 = 0u;
      v104 = 0u;
      memset(buf, 0, sizeof(buf));
      v30 = PLMigrationGetLog();
      os_log_type_enabled(v30, OS_LOG_TYPE_ERROR);
      v31 = objc_opt_class();
      v32 = NSStringFromClass(v31);
      v97 = 138543618;
      v98 = v32;
      v99 = 2112;
      v100 = v17;
      LODWORD(v84) = 22;
      v33 = _os_log_send_and_compose_impl();

      v34 = [v7 logger];
      [v34 logWithMessage:v33 fromCodeLocation:"PLModelMigrationActionUtility.m" type:{165, 16}];

      if (v33 != buf)
      {
        free(v33);
      }

      a5 = v89;
      goto LABEL_23;
    }

    v67 = PLMigrationGetLog();
    if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
    {
      v68 = objc_opt_class();
      v69 = NSStringFromClass(v68);
      *buf = 138543618;
      *&buf[4] = v69;
      *&buf[12] = 2112;
      *&buf[14] = v17;
      _os_log_impl(&dword_19BF1F000, v67, OS_LOG_TYPE_ERROR, "Failed to remove duplicate background job items for %{public}@. Error: %@", buf, 0x16u);
    }
  }

LABEL_24:
  v57 = v17;
  v48 = 3;
  if (a5)
  {
LABEL_25:
    v58 = v57;
    *a5 = v57;
  }

LABEL_52:

  return v48;
}

+ (int64_t)removeFromDuplicatesWithAction:(id)a3 managedObjectContext:(id)a4 fetchRequest:(id)a5 requiresLibraryReprocessing:(BOOL)a6 error:(id *)a7
{
  v48 = a6;
  v101 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v62 = 0;
  v63 = &v62;
  v64 = 0x2020000000;
  v65 = 1;
  v56 = 0;
  v57 = &v56;
  v58 = 0x3032000000;
  v59 = __Block_byref_object_copy__15714;
  v60 = __Block_byref_object_dispose__15715;
  v61 = 0;
  obj = 0;
  v13 = [v11 executeFetchRequest:v12 error:&obj];
  objc_storeStrong(&v61, obj);
  if ([v13 count])
  {
    v14 = [v10 cancellableDiscreteProgressWithTotalUnitCount:objc_msgSend(v13 pendingParentUnitCount:{"count"), 0}];
    v50[0] = MEMORY[0x1E69E9820];
    v50[1] = 3221225472;
    v50[2] = __132__PLModelMigrationActionUtility_removeFromDuplicatesWithAction_managedObjectContext_fetchRequest_requiresLibraryReprocessing_error___block_invoke;
    v50[3] = &unk_1E756DBE0;
    v47 = v10;
    v51 = v47;
    v53 = &v56;
    v54 = &v62;
    v15 = v14;
    v52 = v15;
    v16 = [v11 enumerateWithIncrementalSaveUsingObjects:v13 withBlock:v50];
    if (v16 && !v57[5])
    {
      objc_storeStrong(v57 + 5, v16);
      v63[3] = 3;
    }

    if (v63[3] == 1)
    {
      v17 = PLMigrationGetLog();
      v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);

      if (v18)
      {
        v19 = [v47 logger];
        v20 = v19 == 0;

        if (!v20)
        {
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
          v77 = 0u;
          v78 = 0u;
          v75 = 0u;
          v76 = 0u;
          v73 = 0u;
          v74 = 0u;
          v71 = 0u;
          v72 = 0u;
          memset(buf, 0, sizeof(buf));
          v21 = PLMigrationGetLog();
          os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
          v22 = [v13 count];
          v66 = 67109120;
          LODWORD(v67) = v22;
          LODWORD(v45) = 8;
          v23 = _os_log_send_and_compose_impl();

          v24 = [v47 logger];
          [v24 logWithMessage:v23 fromCodeLocation:"PLModelMigrationActionUtility.m" type:{128, 0}];

          goto LABEL_14;
        }

        v34 = PLMigrationGetLog();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          v35 = [v13 count];
          *buf = 67109120;
          *&buf[4] = v35;
          _os_log_impl(&dword_19BF1F000, v34, OS_LOG_TYPE_DEFAULT, "Removed %d assets from duplicate albums", buf, 8u);
        }

LABEL_21:
      }
    }

    else
    {
      v25 = PLMigrationGetLog();
      v26 = os_log_type_enabled(v25, OS_LOG_TYPE_ERROR);

      if (v26)
      {
        v27 = [v47 logger];
        v28 = v27 == 0;

        if (!v28)
        {
          v46 = a7;
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
          v77 = 0u;
          v78 = 0u;
          v75 = 0u;
          v76 = 0u;
          v73 = 0u;
          v74 = 0u;
          v71 = 0u;
          v72 = 0u;
          memset(buf, 0, sizeof(buf));
          v29 = PLMigrationGetLog();
          os_log_type_enabled(v29, OS_LOG_TYPE_ERROR);
          v30 = objc_opt_class();
          v31 = NSStringFromClass(v30);
          v32 = v57[5];
          v66 = 138543618;
          v67 = v31;
          v68 = 2114;
          v69 = v32;
          LODWORD(v45) = 22;
          v23 = _os_log_send_and_compose_impl();

          a7 = v46;
          v33 = [v47 logger];
          [v33 logWithMessage:v23 fromCodeLocation:"PLModelMigrationActionUtility.m" type:{130, 16}];

LABEL_14:
          if (v23 != buf)
          {
            free(v23);
          }

          goto LABEL_22;
        }

        v34 = PLMigrationGetLog();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          v36 = objc_opt_class();
          v37 = NSStringFromClass(v36);
          v38 = v57[5];
          *buf = 138543618;
          *&buf[4] = v37;
          *&buf[12] = 2114;
          *&buf[14] = v38;
          _os_log_impl(&dword_19BF1F000, v34, OS_LOG_TYPE_ERROR, "Failed to save managed object context for %{public}@. Error: %{public}@", buf, 0x16u);
        }

        goto LABEL_21;
      }
    }

LABEL_22:

    if (v48 && v63[3] == 1 && (MEMORY[0x19EAEE520]() & 1) == 0)
    {
      v49 = 0;
      v39 = [PLModelMigrationActionUtility resetDuplicateProcessingWithAction:v47 managedObjectContext:v11 error:&v49];
      v40 = v49;
      v63[3] = v39;
    }

    goto LABEL_26;
  }

  if (!v13)
  {
    v63[3] = 3;
  }

LABEL_26:
  v41 = v63[3];
  v42 = v57[5];
  if (v41 != 1 && a7)
  {
    v42 = v42;
    *a7 = v42;
  }

  v43 = v63[3];
  _Block_object_dispose(&v56, 8);

  _Block_object_dispose(&v62, 8);
  return v43;
}

uint64_t __132__PLModelMigrationActionUtility_removeFromDuplicatesWithAction_managedObjectContext_fetchRequest_requiresLibraryReprocessing_error___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  [a2 removeFromDuplicateAlbum];
  v6 = *(a1 + 32);
  v7 = *(*(a1 + 48) + 8);
  obj = *(v7 + 40);
  v8 = [v6 isCancelledWithError:&obj];
  objc_storeStrong((v7 + 40), obj);
  if (v8)
  {
    *(*(*(a1 + 56) + 8) + 24) = 2;
    *a4 = 1;
  }

  return [*(a1 + 40) setCompletedUnitCount:{objc_msgSend(*(a1 + 40), "completedUnitCount") + 1}];
}

+ (BOOL)processExtendedAttributesWithAction:(id)a3 asset:(id)a4 metadata:(id)a5 error:(id *)a6
{
  v66 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v30 = 0;
  v11 = [v10 updateExtendedAttributesWithMetadata:a5 error:&v30];
  v12 = v30;
  if (v11)
  {
    v13 = [v10 extendedAttributes];
    v14 = [v13 dateCreated];
    if (v14)
    {
      v15 = v14;
      v16 = [v13 timezoneName];
      if (v16)
      {

LABEL_14:
        goto LABEL_15;
      }

      v25 = [v13 timezoneOffset];

      if (v25)
      {
LABEL_15:

        goto LABEL_16;
      }
    }

    v15 = [v10 master];
    if (v15)
    {
      [PLManagedAsset fixMissingOriginalDateCreatedIfNeededForAsset:v10 withCloudMaster:v15];
      [PLManagedAsset fixMissingOriginalTimezoneIfNeededForAsset:v10];
    }

    goto LABEL_14;
  }

  v17 = PLMigrationGetLog();
  v18 = os_log_type_enabled(v17, OS_LOG_TYPE_INFO);

  if (v18)
  {
    v19 = [v9 logger];

    if (!v19)
    {
      v27 = PLMigrationGetLog();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        v28 = [v10 uuidDescription];
        *buf = 138543618;
        *&buf[4] = v28;
        *&buf[12] = 2112;
        *&buf[14] = v12;
        _os_log_impl(&dword_19BF1F000, v27, OS_LOG_TYPE_INFO, "Failed updating attributes for asset %{public}@. Error: %@", buf, 0x16u);
      }

      if (a6)
      {
        goto LABEL_10;
      }

      goto LABEL_16;
    }

    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    memset(buf, 0, sizeof(buf));
    v20 = PLMigrationGetLog();
    os_log_type_enabled(v20, OS_LOG_TYPE_INFO);
    v21 = [v10 uuidDescription];
    v31 = 138543618;
    v32 = v21;
    v33 = 2112;
    v34 = v12;
    LODWORD(v29) = 22;
    v22 = _os_log_send_and_compose_impl();

    v23 = [v9 logger];
    [v23 logWithMessage:v22 fromCodeLocation:"PLModelMigrationActionUtility.m" type:{100, 1}];

    if (v22 != buf)
    {
      free(v22);
    }
  }

  if (a6)
  {
LABEL_10:
    v24 = v12;
    *a6 = v12;
  }

LABEL_16:

  return v11;
}

+ (int64_t)updateExtendedAttributesWithAction:(id)a3 managedObjectContext:(id)a4 fetchRequest:(id)a5 useObjectIDResumeMarker:(BOOL)a6 error:(id *)a7
{
  v8 = a6;
  v30[4] = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  [v14 setFetchBatchSize:100];
  v30[0] = @"extendedAttributes";
  v30[1] = @"master";
  v30[2] = @"master.mediaMetadata";
  v30[3] = @"modernResources";
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:4];
  [v14 setRelationshipKeyPathsForPrefetching:v15];

  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__15714;
  v28 = __Block_byref_object_dispose__15715;
  v29 = 0;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __132__PLModelMigrationActionUtility_updateExtendedAttributesWithAction_managedObjectContext_fetchRequest_useObjectIDResumeMarker_error___block_invoke;
  v20[3] = &unk_1E7567C80;
  v23 = a1;
  v16 = v12;
  v21 = v16;
  v22 = &v24;
  v17 = [a1 processManagedObjectWithAction:v16 managedObjectContext:v13 fetchRequest:v14 useObjectIDResumeMarker:v8 error:a7 processingBlock:v20];
  v18 = v25[5];
  if (!v17 && a7)
  {
    v18 = v18;
    *a7 = v18;
  }

  _Block_object_dispose(&v24, 8);
  return v17 != 0;
}

void __132__PLModelMigrationActionUtility_updateExtendedAttributesWithAction_managedObjectContext_fetchRequest_useObjectIDResumeMarker_error___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = [v3 metadataFromMediaPropertiesOrOriginalResource];
  v5 = a1[6];
  v6 = a1[4];
  v7 = *(a1[5] + 8);
  obj = *(v7 + 40);
  [v5 processExtendedAttributesWithAction:v6 asset:v3 metadata:v4 error:&obj];

  objc_storeStrong((v7 + 40), obj);
}

+ (int64_t)removeOrphanedObjectsWithAction:(id)a3 managedObjectContext:(id)a4 fetchRequest:(id)a5 error:(id *)a6
{
  v76 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a5;
  v11 = MEMORY[0x1E695D538];
  v12 = a4;
  v13 = [[v11 alloc] initWithFetchRequest:v10];
  [v13 setResultType:2];
  v40 = 0;
  v14 = [v12 executeRequest:v13 error:&v40];

  v15 = v40;
  v16 = PLMigrationGetLog();
  v17 = v16;
  if (v14)
  {
    v18 = 1;
    v19 = os_log_type_enabled(v16, OS_LOG_TYPE_INFO);

    if (v19)
    {
      v20 = [v9 logger];

      if (v20)
      {
        v74 = 0u;
        v75 = 0u;
        v72 = 0u;
        v73 = 0u;
        v70 = 0u;
        v71 = 0u;
        v68 = 0u;
        v69 = 0u;
        v66 = 0u;
        v67 = 0u;
        v64 = 0u;
        v65 = 0u;
        v62 = 0u;
        v63 = 0u;
        v60 = 0u;
        v61 = 0u;
        v58 = 0u;
        v59 = 0u;
        v56 = 0u;
        v57 = 0u;
        v54 = 0u;
        v55 = 0u;
        v52 = 0u;
        v53 = 0u;
        v50 = 0u;
        v51 = 0u;
        v48 = 0u;
        v49 = 0u;
        v46 = 0u;
        v47 = 0u;
        memset(buf, 0, sizeof(buf));
        v21 = PLMigrationGetLog();
        os_log_type_enabled(v21, OS_LOG_TYPE_INFO);
        v22 = [v14 result];
        v23 = [v10 entityName];
        v41 = 138543618;
        v42 = v22;
        v43 = 2114;
        v44 = v23;
        LODWORD(v39) = 22;
        v24 = _os_log_send_and_compose_impl();

        v25 = [v9 logger];
        [v25 logWithMessage:v24 fromCodeLocation:"PLModelMigrationActionUtility.m" type:{50, 1}];

        if (v24 != buf)
        {
          free(v24);
        }
      }

      else
      {
        v32 = PLMigrationGetLog();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
        {
          v33 = [v14 result];
          v34 = [v10 entityName];
          *buf = 138543618;
          *&buf[4] = v33;
          *&buf[12] = 2114;
          *&buf[14] = v34;
          _os_log_impl(&dword_19BF1F000, v32, OS_LOG_TYPE_INFO, "Deleted %{public}@ %{public}@ objects", buf, 0x16u);
        }
      }

      v18 = 1;
    }

    if (a6)
    {
LABEL_15:
      v35 = v15;
      *a6 = v15;
    }
  }

  else
  {
    v26 = os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);

    if (v26)
    {
      v27 = [v9 logger];

      if (v27)
      {
        v74 = 0u;
        v75 = 0u;
        v72 = 0u;
        v73 = 0u;
        v70 = 0u;
        v71 = 0u;
        v68 = 0u;
        v69 = 0u;
        v66 = 0u;
        v67 = 0u;
        v64 = 0u;
        v65 = 0u;
        v62 = 0u;
        v63 = 0u;
        v60 = 0u;
        v61 = 0u;
        v58 = 0u;
        v59 = 0u;
        v56 = 0u;
        v57 = 0u;
        v54 = 0u;
        v55 = 0u;
        v52 = 0u;
        v53 = 0u;
        v50 = 0u;
        v51 = 0u;
        v48 = 0u;
        v49 = 0u;
        v46 = 0u;
        v47 = 0u;
        memset(buf, 0, sizeof(buf));
        v28 = PLMigrationGetLog();
        os_log_type_enabled(v28, OS_LOG_TYPE_ERROR);
        v29 = [v10 entityName];
        v41 = 138543618;
        v42 = v29;
        v43 = 2112;
        v44 = v15;
        LODWORD(v39) = 22;
        v30 = _os_log_send_and_compose_impl();

        v31 = [v9 logger];
        [v31 logWithMessage:v30 fromCodeLocation:"PLModelMigrationActionUtility.m" type:{53, 16}];

        if (v30 != buf)
        {
          free(v30);
        }
      }

      else
      {
        v37 = PLMigrationGetLog();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          v38 = [v10 entityName];
          *buf = 138543618;
          *&buf[4] = v38;
          *&buf[12] = 2112;
          *&buf[14] = v15;
          _os_log_impl(&dword_19BF1F000, v37, OS_LOG_TYPE_ERROR, "Failed to delete orphaned %{public}@. Error: %@", buf, 0x16u);
        }
      }
    }

    v18 = 3;
    if (a6)
    {
      goto LABEL_15;
    }
  }

  return v18;
}

@end