@interface PLModelMigrationAction
@end

@implementation PLModelMigrationAction

void __95__PLModelMigrationAction_RevalidateFaceAreaPoints_performActionWithManagedObjectContext_error___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  [v7 revalidateFaceAreaPoints];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __95__PLModelMigrationAction_RevalidateFaceAreaPoints_performActionWithManagedObjectContext_error___block_invoke_2;
  v13[3] = &unk_1E7577B90;
  v13[4] = *(a1 + 32);
  v13[5] = a3;
  if (__ROR8__(0x1CAC083126E978D5 * a3, 3) <= 0x4189374BC6A7EFuLL && a3 != 0)
  {
    __95__PLModelMigrationAction_RevalidateFaceAreaPoints_performActionWithManagedObjectContext_error___block_invoke_2(v13);
  }

  if (*(*(*(a1 + 48) + 8) + 24) == 1)
  {
    v9 = *(a1 + 32);
    v10 = [v7 addedDate];
    v11 = *(*(a1 + 56) + 8);
    obj = *(v11 + 40);
    LODWORD(v9) = [v9 isCancelledWithResumeMarker:v10 error:&obj];
    objc_storeStrong((v11 + 40), obj);

    if (v9)
    {
      *(*(*(a1 + 48) + 8) + 24) = 2;
      *a4 = 1;
    }
  }

  [*(a1 + 40) setCompletedUnitCount:{objc_msgSend(*(a1 + 40), "completedUnitCount") + 1}];
}

void __95__PLModelMigrationAction_RevalidateFaceAreaPoints_performActionWithManagedObjectContext_error___block_invoke_2(uint64_t a1)
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
      v6 = *(a1 + 40);
      v12 = 134217984;
      v13 = v6;
      LODWORD(v11) = 12;
      v7 = _os_log_send_and_compose_impl();

      v8 = [*(a1 + 32) logger];
      [v8 logWithMessage:v7 fromCodeLocation:"PLModelMigrationActionBackground.m" type:{232, 1}];

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
        v10 = *(a1 + 40);
        *buf = 134217984;
        *&buf[4] = v10;
        _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_INFO, "Updated %lu assets", buf, 0xCu);
      }
    }
  }
}

void __102__PLModelMigrationAction_CinematicVideoPopulateDepthType_performActionWithManagedObjectContext_error___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v19 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = [v7 metadataFromMediaPropertiesOrOriginalResource];
  if (v8)
  {
    [v7 setDepthTypeFromMetadata:v8];
  }

  else
  {
    v9 = PLMigrationGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v10 = [v7 uuid];
      *buf = 138543362;
      v18 = v10;
      _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_DEBUG, "No metadata associated with asset: %{public}@", buf, 0xCu);
    }
  }

  if (*(*(*(a1 + 48) + 8) + 24) == 1)
  {
    v11 = *(a1 + 32);
    v12 = [v7 addedDate];
    v13 = *(*(a1 + 56) + 8);
    obj = *(v13 + 40);
    LODWORD(v11) = [v11 isCancelledWithResumeMarker:v12 error:&obj];
    objc_storeStrong((v13 + 40), obj);

    if (v11)
    {
      *(*(*(a1 + 48) + 8) + 24) = 2;
      *a4 = 1;
    }
  }

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __102__PLModelMigrationAction_CinematicVideoPopulateDepthType_performActionWithManagedObjectContext_error___block_invoke_198;
  v15[3] = &unk_1E7577B90;
  v15[4] = *(a1 + 32);
  v15[5] = a3;
  if (__ROR8__(0x1CAC083126E978D5 * a3, 3) <= 0x4189374BC6A7EFuLL && a3 != 0)
  {
    __102__PLModelMigrationAction_CinematicVideoPopulateDepthType_performActionWithManagedObjectContext_error___block_invoke_198(v15);
  }

  [*(a1 + 40) setCompletedUnitCount:{objc_msgSend(*(a1 + 40), "completedUnitCount") + 1}];
}

void __102__PLModelMigrationAction_CinematicVideoPopulateDepthType_performActionWithManagedObjectContext_error___block_invoke_198(uint64_t a1)
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
      v6 = *(a1 + 40);
      v12 = 134217984;
      v13 = v6;
      LODWORD(v11) = 12;
      v7 = _os_log_send_and_compose_impl();

      v8 = [*(a1 + 32) logger];
      [v8 logWithMessage:v7 fromCodeLocation:"PLModelMigrationActionBackground.m" type:{333, 1}];

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
        v10 = *(a1 + 40);
        *buf = 134217984;
        *&buf[4] = v10;
        _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_INFO, "Updated %lu assets", buf, 0xCu);
      }
    }
  }
}

void __85__PLModelMigrationAction_updateACVideos_performActionWithManagedObjectContext_error___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  v8 = [v7 metadataFromMediaPropertiesOrOriginalResource];
  if ([v8 isActionCam])
  {
    [v7 setKindSubtype:104];
  }

  if (*(*(*(a1 + 48) + 8) + 24) == 1)
  {
    v9 = *(a1 + 32);
    v10 = [v7 addedDate];
    v11 = *(*(a1 + 56) + 8);
    obj = *(v11 + 40);
    LODWORD(v9) = [v9 isCancelledWithResumeMarker:v10 error:&obj];
    objc_storeStrong((v11 + 40), obj);

    if (v9)
    {
      *(*(*(a1 + 48) + 8) + 24) = 2;
      *a4 = 1;
    }
  }

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __85__PLModelMigrationAction_updateACVideos_performActionWithManagedObjectContext_error___block_invoke_2;
  v13[3] = &unk_1E7577B90;
  v13[4] = *(a1 + 32);
  v13[5] = a3;
  if (__ROR8__(0x1CAC083126E978D5 * a3, 3) <= 0x4189374BC6A7EFuLL && a3 != 0)
  {
    __85__PLModelMigrationAction_updateACVideos_performActionWithManagedObjectContext_error___block_invoke_2(v13);
  }

  [*(a1 + 40) setCompletedUnitCount:{objc_msgSend(*(a1 + 40), "completedUnitCount") + 1}];
}

void __85__PLModelMigrationAction_updateACVideos_performActionWithManagedObjectContext_error___block_invoke_2(uint64_t a1)
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
      v6 = *(a1 + 40);
      v12 = 134217984;
      v13 = v6;
      LODWORD(v11) = 12;
      v7 = _os_log_send_and_compose_impl();

      v8 = [*(a1 + 32) logger];
      [v8 logWithMessage:v7 fromCodeLocation:"PLModelMigrationActionBackground.m" type:{434, 1}];

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
        v10 = *(a1 + 40);
        *buf = 134217984;
        *&buf[4] = v10;
        _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_INFO, "Updated %lu assets", buf, 0xCu);
      }
    }
  }
}

BOOL __95__PLModelMigrationAction_RemoveAllPurgeableClones_performActionWithManagedObjectContext_error___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[4];
  v34 = 0;
  v5 = [v4 isCancelledWithResumeMarker:0 error:&v34];
  v6 = v34;
  v7 = v6;
  if (!v5)
  {
    v12 = a1[5];
    v33 = 0;
    v13 = [v3 resourceValuesForKeys:v12 error:&v33];
    v14 = v33;
    v11 = v14;
    if (v13)
    {
      v15 = [v13 objectForKeyedSubscript:*MEMORY[0x1E695DBA8]];
      v16 = [v15 BOOLValue];

      if (!v16)
      {
        v10 = 1;
LABEL_16:

        goto LABEL_17;
      }

      v17 = [v3 lastPathComponent];
      if ([v17 length] >= a1[9])
      {
        v20 = objc_alloc(MEMORY[0x1E696AFB0]);
        v21 = [v17 substringToIndex:a1[9]];
        v22 = [v20 initWithUUIDString:v21];
        v23 = [v22 UUIDString];

        if (v23)
        {
          v24 = a1[4];
          v25 = a1[6];
          v32 = 0;
          v26 = [v24 removePurgableClonesForAssetUUID:v23 withMOC:v25 error:&v32];
          v27 = v32;
          *(*(a1[7] + 8) + 24) = v26;
          v28 = *(*(a1[7] + 8) + 24);
          v10 = v28 == 1;
          if (v28 != 1)
          {
            v29 = *(a1[8] + 8);
            v30 = *(v29 + 40);
            *(v29 + 40) = v27;
            v27 = v30;
          }
        }

        else
        {
          v10 = 1;
        }
      }

      else
      {
        v10 = 1;
      }
    }

    else
    {
      *(*(a1[7] + 8) + 24) = 3;
      v18 = *(a1[8] + 8);
      v19 = v14;
      v10 = 0;
      v17 = *(v18 + 40);
      *(v18 + 40) = v19;
    }

    goto LABEL_16;
  }

  *(*(a1[7] + 8) + 24) = 2;
  v8 = *(a1[8] + 8);
  v9 = v6;
  v10 = 0;
  v11 = *(v8 + 40);
  *(v8 + 40) = v9;
LABEL_17:

  return v10;
}

void __107__PLModelMigrationAction_FixDuplicateMergeCrashRecoveryAssets_performActionWithManagedObjectContext_error___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  [*(a1 + 32) _processForRepairWithAsset:v7 repairCount:*(*(a1 + 48) + 8) + 24];
  if (*(*(*(a1 + 56) + 8) + 24) == 1)
  {
    v8 = *(a1 + 32);
    v9 = [v7 addedDate];
    v10 = *(*(a1 + 64) + 8);
    obj = *(v10 + 40);
    LODWORD(v8) = [v8 isCancelledWithResumeMarker:v9 error:&obj];
    objc_storeStrong((v10 + 40), obj);

    if (v8)
    {
      *(*(*(a1 + 56) + 8) + 24) = 2;
      *a4 = 1;
    }
  }

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __107__PLModelMigrationAction_FixDuplicateMergeCrashRecoveryAssets_performActionWithManagedObjectContext_error___block_invoke_2;
  v12[3] = &unk_1E7577B90;
  v12[4] = *(a1 + 32);
  v12[5] = a3;
  if (__ROR8__(0x1CAC083126E978D5 * a3, 3) <= 0x4189374BC6A7EFuLL && a3 != 0)
  {
    __107__PLModelMigrationAction_FixDuplicateMergeCrashRecoveryAssets_performActionWithManagedObjectContext_error___block_invoke_2(v12);
  }

  [*(a1 + 40) setCompletedUnitCount:{objc_msgSend(*(a1 + 40), "completedUnitCount") + 1}];
}

void __107__PLModelMigrationAction_FixDuplicateMergeCrashRecoveryAssets_performActionWithManagedObjectContext_error___block_invoke_2(uint64_t a1)
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
      v6 = *(a1 + 40);
      v12 = 134217984;
      v13 = v6;
      LODWORD(v11) = 12;
      v7 = _os_log_send_and_compose_impl();

      v8 = [*(a1 + 32) logger];
      [v8 logWithMessage:v7 fromCodeLocation:"PLModelMigrationActionBackground.m" type:{727, 1}];

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
        v10 = *(a1 + 40);
        *buf = 134217984;
        *&buf[4] = v10;
        _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_INFO, "Updated %lu assets", buf, 0xCu);
      }
    }
  }
}

void __106__PLModelMigrationAction_setInitialIsDetectedScreenshotValue_performActionWithManagedObjectContext_error___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [*(a1 + 32) cancellableDiscreteProgressWithTotalUnitCount:objc_msgSend(a2 pendingParentUnitCount:{"count"), 0}];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void __106__PLModelMigrationAction_setInitialIsDetectedScreenshotValue_performActionWithManagedObjectContext_error___block_invoke_3(void *a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v6 = a3;
  v7 = [v6 objectID];
  v8 = a1[4];
  v9 = *(a1[5] + 8);
  obj = *(v9 + 40);
  v10 = [v8 isCancelledWithResumeMarker:v7 error:&obj];
  objc_storeStrong((v9 + 40), obj);
  if (v10)
  {
    *(*(a1[6] + 8) + 24) = 2;
    *a4 = 1;
  }

  else
  {
    [v6 recalculateIsDetectedScreenshot];
    ++*(*(a1[7] + 8) + 24);
    v11 = *(*(a1[8] + 8) + 40);
    [v11 setCompletedUnitCount:{objc_msgSend(v11, "completedUnitCount") + 1}];
  }
}

void __107__PLModelMigrationAction_dedupeResourcesWithSimilarCompactUTI_performActionWithManagedObjectContext_error___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [*(a1 + 32) cancellableDiscreteProgressWithTotalUnitCount:objc_msgSend(a2 pendingParentUnitCount:{"count"), 0}];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void __107__PLModelMigrationAction_dedupeResourcesWithSimilarCompactUTI_performActionWithManagedObjectContext_error___block_invoke_3(void *a1, void *a2, void *a3, _BYTE *a4)
{
  v93 = *MEMORY[0x1E69E9840];
  v50 = a2;
  v7 = a3;
  v8 = [v7 objectID];
  v9 = a1[4];
  v10 = *(a1[5] + 8);
  obj = *(v10 + 40);
  v11 = [v9 isCancelledWithResumeMarker:v8 error:&obj];
  objc_storeStrong((v10 + 40), obj);
  if (v11)
  {
    *(*(a1[6] + 8) + 24) = 2;
    *a4 = 1;
  }

  else
  {
    v12 = [v7 uniformTypeIdentifier];
    v13 = [v12 identifier];
    v14 = PLFileTypeFromIdentifier(v13);

    if (v14)
    {
      v48 = v12;
      v49 = v8;
      v51 = a1;
      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v53 = 0u;
      v15 = [v7 asset];
      v16 = [v15 modernResources];

      v17 = [v16 countByEnumeratingWithState:&v52 objects:v92 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v53;
        do
        {
          for (i = 0; i != v18; ++i)
          {
            if (*v53 != v19)
            {
              objc_enumerationMutation(v16);
            }

            v21 = *(*(&v52 + 1) + 8 * i);
            v22 = [v21 objectID];
            v23 = [v7 objectID];
            v24 = [v22 isEqual:v23];

            if ((v24 & 1) == 0 && ([v21 isDeleted] & 1) == 0)
            {
              v25 = [v21 fingerprint];
              v26 = [v7 fingerprint];
              IsEqual = PLObjectIsEqual();

              if (IsEqual)
              {
                v28 = [v21 dataStoreKey];
                v29 = [v7 dataStoreKey];
                v30 = PLObjectIsEqual();

                if (v30)
                {
                  if (PLResourceIdentityIsEqual(v21, v7))
                  {
                    v31 = PLMigrationGetLog();
                    v32 = os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT);

                    v33 = v51;
                    if (v32)
                    {
                      v34 = [v51[4] logger];

                      if (v34)
                      {
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
                        memset(buf, 0, sizeof(buf));
                        v35 = PLMigrationGetLog();
                        os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT);
                        v36 = [v7 objectID];
                        v37 = [v21 objectID];
                        v57 = 138543618;
                        v58 = v36;
                        v59 = 2114;
                        v60 = v37;
                        LODWORD(v47) = 22;
                        v38 = _os_log_send_and_compose_impl();

                        v39 = [v51[4] logger];
                        [v39 logWithMessage:v38 fromCodeLocation:"PLModelMigrationActionBackground.m" type:{956, 0}];

                        v33 = v51;
                        if (v38 != buf)
                        {
                          free(v38);
                        }
                      }

                      else
                      {
                        v40 = PLMigrationGetLog();
                        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
                        {
                          v41 = [v7 objectID];
                          v42 = [v21 objectID];
                          *buf = 138543618;
                          *&buf[4] = v41;
                          *&buf[12] = 2114;
                          *&buf[14] = v42;
                          _os_log_impl(&dword_19BF1F000, v40, OS_LOG_TYPE_DEFAULT, "Deleting resource: %{public}@ as it duplicates another resource with an optimized version of the same UTI (%{public}@)", buf, 0x16u);
                        }

                        v33 = v51;
                      }
                    }

                    [v50 deleteObject:v7];
                    ++*(*(v33[7] + 8) + 24);
                    v43 = [v7 asset];
                    v44 = PLCanIncludeResourceInHints(v7, v43);

                    if (v44)
                    {
                      v45 = [v7 asset];
                      [v45 recalculateImageRequestHints];
                    }
                  }
                }
              }
            }
          }

          v18 = [v16 countByEnumeratingWithState:&v52 objects:v92 count:16];
        }

        while (v18);
      }

      v12 = v48;
      v8 = v49;
      a1 = v51;
    }

    v46 = *(*(a1[8] + 8) + 40);
    [v46 setCompletedUnitCount:{objc_msgSend(v46, "completedUnitCount") + 1}];
  }
}

void __91__PLModelMigrationAction_DrawAssetPersonEdges_performActionWithManagedObjectContext_error___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [*(a1 + 32) cancellableDiscreteProgressWithTotalUnitCount:objc_msgSend(a2 pendingParentUnitCount:{"count"), 0}];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void __91__PLModelMigrationAction_DrawAssetPersonEdges_performActionWithManagedObjectContext_error___block_invoke_3(void *a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v6 = a3;
  v7 = [v6 firstObject];
  v8 = [v7 objectID];

  v9 = a1[4];
  v10 = *(a1[6] + 8);
  obj = *(v10 + 40);
  v11 = [v9 isCancelledWithResumeMarker:v8 error:&obj];
  objc_storeStrong((v10 + 40), obj);
  if (v11)
  {
    *(*(a1[7] + 8) + 24) = 2;
    *a4 = 1;
  }

  else
  {
    v12 = [v6 _pl_map:&__block_literal_global_372];
    v13 = a1[5];
    v14 = *(a1[6] + 8);
    v17 = *(v14 + 40);
    v15 = [PLSocialGroupAssetContainment updateAndSaveAssetPersonEdgesForAssetsWithIDs:v12 inContext:v13 error:&v17];
    objc_storeStrong((v14 + 40), v17);
    if (!v15)
    {
      *a4 = 1;
    }

    v16 = *(*(a1[8] + 8) + 40);
    [v16 setCompletedUnitCount:{objc_msgSend(v16, "completedUnitCount") + objc_msgSend(v6, "count")}];
  }
}

void __91__PLModelMigrationAction_DrawAssetPersonEdges_performActionWithManagedObjectContext_error___block_invoke_376(uint64_t a1)
{
  v60 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) managedObjectContext];
  v25 = 0;
  v3 = [PLSocialGroup runAssetContainmentOnAllSocialGroupsInContext:v2 error:&v25];
  v4 = v25;

  v5 = PLMigrationGetLog();
  v6 = v5;
  if (v3)
  {
    v7 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

    if (!v7)
    {
      goto LABEL_16;
    }

    v8 = [*(a1 + 40) logger];

    if (v8)
    {
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
      v35 = 0u;
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      *buf = 0u;
      v9 = PLMigrationGetLog();
      os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
      LOWORD(v26) = 0;
      LODWORD(v24) = 2;
      v10 = _os_log_send_and_compose_impl();

      v11 = [*(a1 + 40) logger];
      v12 = v11;
      v13 = v10;
      v14 = 1038;
      v15 = 0;
      goto LABEL_8;
    }

    v19 = PLMigrationGetLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v20 = "Successfully ran asset containment on all groups in library";
      v21 = v19;
      v22 = OS_LOG_TYPE_DEFAULT;
      v23 = 2;
LABEL_14:
      _os_log_impl(&dword_19BF1F000, v21, v22, v20, buf, v23);
      goto LABEL_15;
    }

    goto LABEL_15;
  }

  v16 = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);

  if (!v16)
  {
    goto LABEL_16;
  }

  v17 = [*(a1 + 40) logger];

  if (!v17)
  {
    v19 = PLMigrationGetLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      *&buf[4] = v4;
      v20 = "Failed to update containment for all groups with error: %@";
      v21 = v19;
      v22 = OS_LOG_TYPE_ERROR;
      v23 = 12;
      goto LABEL_14;
    }

LABEL_15:

    goto LABEL_16;
  }

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
  v35 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  *buf = 0u;
  v18 = PLMigrationGetLog();
  os_log_type_enabled(v18, OS_LOG_TYPE_ERROR);
  v26 = 138412290;
  v27 = v4;
  LODWORD(v24) = 12;
  v10 = _os_log_send_and_compose_impl();

  v11 = [*(a1 + 40) logger];
  v12 = v11;
  v13 = v10;
  v14 = 1036;
  v15 = 16;
LABEL_8:
  [v11 logWithMessage:v13 fromCodeLocation:"PLModelMigrationActionBackground.m" type:{v14, v15}];

  if (v10 != buf)
  {
    free(v10);
  }

LABEL_16:
}

void __98__PLModelMigrationAction_UpdateAssetAdjustmentsState_performActionWithManagedObjectContext_error___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [*(a1 + 32) cancellableDiscreteProgressWithTotalUnitCount:objc_msgSend(a2 pendingParentUnitCount:{"count"), 0}];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void __98__PLModelMigrationAction_UpdateAssetAdjustmentsState_performActionWithManagedObjectContext_error___block_invoke_3(void *a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v6 = a3;
  v7 = a1[4];
  v8 = *(a1[5] + 8);
  obj = *(v8 + 40);
  v9 = [v7 isCancelledWithResumeMarker:0 error:&obj];
  objc_storeStrong((v8 + 40), obj);
  if (v9)
  {
    *(*(a1[6] + 8) + 24) = 2;
    *a4 = 1;
  }

  else
  {
    [v6 updateAssetAdjustmentsStateIfNeededFromAdjustmentFile];
    ++*(*(a1[7] + 8) + 24);
    v10 = *(*(a1[8] + 8) + 40);
    [v10 setCompletedUnitCount:{objc_msgSend(v10, "completedUnitCount") + 1}];
  }
}

void __93__PLModelMigrationAction_UpdateAssetAdjustmentsState_isResetAfterRebuildRequiredWithLibrary___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695D5E0];
  v3 = +[PLManagedAsset entityName];
  v4 = [v2 fetchRequestWithEntityName:v3];

  v5 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K = %d", @"adjustmentsState", 1];
  [v4 setPredicate:v5];

  [v4 setFetchLimit:1];
  [v4 setResultType:4];
  v6 = [*(a1 + 32) managedObjectContext];
  v7 = *(*(a1 + 48) + 8);
  obj = *(v7 + 40);
  v8 = [v6 countForFetchRequest:v4 error:&obj];
  objc_storeStrong((v7 + 40), obj);
  *(*(*(a1 + 40) + 8) + 24) = v8;

  if (*(*(*(a1 + 40) + 8) + 24) == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = PLMigrationGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = *(*(*(a1 + 48) + 8) + 40);
      *buf = 138412290;
      v13 = v10;
      _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_ERROR, "Failed to get count of Asset.adjustmentsState. Error: %@", buf, 0xCu);
    }
  }
}

void __101__PLModelMigrationAction_setInitialIsRecentlySavedValue_performActionWithManagedObjectContext_error___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [*(a1 + 32) cancellableDiscreteProgressWithTotalUnitCount:objc_msgSend(a2 pendingParentUnitCount:{"count"), 0}];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void __101__PLModelMigrationAction_setInitialIsRecentlySavedValue_performActionWithManagedObjectContext_error___block_invoke_3(void *a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v6 = a3;
  v7 = [v6 objectID];
  v8 = a1[4];
  v9 = *(a1[5] + 8);
  obj = *(v9 + 40);
  v10 = [v8 isCancelledWithResumeMarker:v7 error:&obj];
  objc_storeStrong((v9 + 40), obj);
  if (v10)
  {
    *(*(a1[6] + 8) + 24) = 2;
    *a4 = 1;
  }

  else
  {
    [v6 recalculateIsRecentlySaved];
    ++*(*(a1[7] + 8) + 24);
    v11 = *(*(a1[8] + 8) + 40);
    [v11 setCompletedUnitCount:{objc_msgSend(v11, "completedUnitCount") + 1}];
  }
}

void __122__PLModelMigrationAction_setInitialhasPeopleSceneMidOrGreaterConfidenceValue_performActionWithManagedObjectContext_error___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [*(a1 + 32) cancellableDiscreteProgressWithTotalUnitCount:objc_msgSend(a2 pendingParentUnitCount:{"count"), 0}];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void __122__PLModelMigrationAction_setInitialhasPeopleSceneMidOrGreaterConfidenceValue_performActionWithManagedObjectContext_error___block_invoke_3(void *a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v6 = a3;
  v7 = [v6 objectID];
  v8 = a1[4];
  v9 = *(a1[5] + 8);
  obj = *(v9 + 40);
  v10 = [v8 isCancelledWithResumeMarker:v7 error:&obj];
  objc_storeStrong((v9 + 40), obj);
  if (v10)
  {
    *(*(a1[6] + 8) + 24) = 2;
    *a4 = 1;
  }

  else
  {
    [v6 recalculatehasPeopleSceneMidOrGreaterConfidence];
    ++*(*(a1[7] + 8) + 24);
    v11 = *(*(a1[8] + 8) + 40);
    [v11 setCompletedUnitCount:{objc_msgSend(v11, "completedUnitCount") + 1}];
  }
}

void __104__PLModelMigrationAction_AddMissingExtendedAttributes_2024_performActionWithManagedObjectContext_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 metadataFromMediaPropertiesOrOriginalResource];
  v5 = *(a1 + 32);
  v8 = 0;
  v6 = [PLModelMigrationActionUtility processExtendedAttributesWithAction:v5 asset:v3 metadata:v4 error:&v8];
  v7 = v8;
  if (v6)
  {
    [*(a1 + 32) updateSleetPropertiesForAsset:v3 metadata:v4];
    [*(a1 + 32) updateSpatialPropertiesForAsset:v3 metadata:v4];
  }
}

void __102__PLModelMigrationAction_AddMissingAdjustedMediaMetadata_performActionWithManagedObjectContext_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 additionalAttributes];
  v2 = [v3 mediaMetadata];

  if (!v2)
  {
    [v3 setMediaMetadataData:0];
  }
}

uint64_t __113__PLModelMigrationAction_RemoveOrphanGeneratedAssetDescriptionNodes_performActionWithManagedObjectContext_error___block_invoke(uint64_t a1, void *a2, uint64_t *a3)
{
  v41[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = MEMORY[0x1E695D5E0];
  v7 = +[PLGraphEdge entityName];
  v8 = [v6 fetchRequestWithEntityName:v7];

  v9 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K IN %@", @"targetNode", v5];
  [v8 setPredicate:v9];

  v41[0] = @"targetNode";
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v41 count:1];
  [v8 setRelationshipKeyPathsForPrefetching:v10];

  v11 = [*(a1 + 32) executeFetchRequest:v8 error:a3];
  if (v11)
  {
    v12 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __113__PLModelMigrationAction_RemoveOrphanGeneratedAssetDescriptionNodes_performActionWithManagedObjectContext_error___block_invoke_466;
    v34[3] = &unk_1E7564AE8;
    v35 = v12;
    v13 = v12;
    [v11 enumerateObjectsUsingBlock:v34];
    v14 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithArray:v5];
    [v14 minusSet:v13];
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __113__PLModelMigrationAction_RemoveOrphanGeneratedAssetDescriptionNodes_performActionWithManagedObjectContext_error___block_invoke_2;
    v31[3] = &unk_1E7564B10;
    v15 = *(a1 + 32);
    v16 = *(a1 + 56);
    v32 = v15;
    v33 = v16;
    [v14 enumerateObjectsUsingBlock:v31];

    v17 = 1;
  }

  else
  {
    v18 = PLMigrationGetLog();
    v19 = os_log_type_enabled(v18, OS_LOG_TYPE_ERROR);

    if (v19)
    {
      v20 = [*(a1 + 40) logger];

      if (v20)
      {
        memset(buf, 0, sizeof(buf));
        v21 = PLMigrationGetLog();
        os_log_type_enabled(v21, OS_LOG_TYPE_ERROR);
        v22 = *(a1 + 48);
        v23 = *a3;
        v36 = 138543618;
        v37 = v22;
        v38 = 2112;
        v39 = v23;
        LODWORD(v30) = 22;
        v24 = _os_log_send_and_compose_impl();

        v25 = [*(a1 + 40) logger];
        [v25 logWithMessage:v24 fromCodeLocation:"PLModelMigrationActionBackground.m" type:{1436, 16}];

        if (v24 != buf)
        {
          free(v24);
        }
      }

      else
      {
        v26 = PLMigrationGetLog();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          v27 = *(a1 + 48);
          v28 = *a3;
          LODWORD(buf[0]) = 138543618;
          *(buf + 4) = v27;
          WORD6(buf[0]) = 2112;
          *(buf + 14) = v28;
          _os_log_impl(&dword_19BF1F000, v26, OS_LOG_TYPE_ERROR, "Failed to fetch edges for %{public}@. Error: %@", buf, 0x16u);
        }
      }
    }

    v17 = 3;
  }

  return v17;
}

void __113__PLModelMigrationAction_RemoveOrphanGeneratedAssetDescriptionNodes_performActionWithManagedObjectContext_error___block_invoke_466(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 targetNode];

  if (v3)
  {
    v4 = *(a1 + 32);
    v5 = [v6 targetNode];
    [v4 addObject:v5];
  }
}

uint64_t __113__PLModelMigrationAction_RemoveOrphanGeneratedAssetDescriptionNodes_performActionWithManagedObjectContext_error___block_invoke_2(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + 32) deleteObject:a2];
  ++*(*(*(a1 + 40) + 8) + 24);
  return result;
}

void __104__PLModelMigrationAction_AddMissingExtendedAttributes_2025_performActionWithManagedObjectContext_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 metadataFromMediaPropertiesOrOriginalResource];
  v5 = *(a1 + 32);
  v8 = 0;
  v6 = [PLModelMigrationActionUtility processExtendedAttributesWithAction:v5 asset:v3 metadata:v4 error:&v8];
  v7 = v8;
  if (v6)
  {
    [*(a1 + 32) updateVideoProResPropertiesForAsset:v3 metadata:v4];
  }
}

void __124__PLModelMigrationAction_AddDuplicateBackgroundJobItems__managedAssetOIDsFromDuplicateAlbumOIDs_managedObjectContext_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 assets];
  v6 = [v3 valueForKey:@"objectID"];

  v4 = *(a1 + 32);
  v5 = [v6 array];
  [v4 addObjectsFromArray:v5];
}

void __135__PLModelMigrationAction_AddDuplicateBackgroundJobItems__managedAssetOIDsFromAdditionalAssetAttributesOIDs_managedObjectContext_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 allValues];
  [v2 addObjectsFromArray:v3];
}

void __130__PLModelMigrationAction_AddDuplicateBackgroundJobItems__convertToPLManagedAssetOIDsFromSelectionOIDs_managedObjectContext_error___block_invoke(uint64_t a1, void *a2)
{
  v57 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 entity];
  v5 = [v4 isEqual:*(a1 + 32)];

  if (v5)
  {
    v6 = *(a1 + 40);
LABEL_7:
    [v6 addObject:v3];
    goto LABEL_8;
  }

  v7 = [v3 entity];
  v8 = [v7 isEqual:*(a1 + 48)];

  if (v8)
  {
    v6 = *(a1 + 56);
    goto LABEL_7;
  }

  v9 = [v3 entity];
  v10 = [v9 isEqual:*(a1 + 64)];

  if (v10)
  {
    v6 = *(a1 + 72);
    goto LABEL_7;
  }

  v11 = PLMigrationGetLog();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);

  if (v12)
  {
    v13 = [*(a1 + 80) logger];

    if (v13)
    {
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
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      *buf = 0u;
      v26 = 0u;
      v14 = PLMigrationGetLog();
      os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);
      v15 = [v3 entity];
      v16 = [v15 name];
      v23 = 138543362;
      v24 = v16;
      LODWORD(v22) = 12;
      v17 = _os_log_send_and_compose_impl();

      v18 = [*(a1 + 80) logger];
      [v18 logWithMessage:v17 fromCodeLocation:"PLModelMigrationActionBackground.m" type:{1811, 16}];

      if (v17 != buf)
      {
        free(v17);
      }
    }

    else
    {
      v19 = PLMigrationGetLog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 = [v3 entity];
        v21 = [v20 name];
        *buf = 138543362;
        *&buf[4] = v21;
        _os_log_impl(&dword_19BF1F000, v19, OS_LOG_TYPE_ERROR, "Unexpected entity type for limited selection: %{public}@", buf, 0xCu);
      }
    }
  }

LABEL_8:
}

void __112__PLModelMigrationAction_AddDuplicateBackgroundJobItems__processTransactionIterator_managedObjectContext_error___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v35 = *MEMORY[0x1E69E9840];
  v5 = a2;
  ++*(*(*(a1 + 72) + 8) + 24);
  v6 = [v5 changes];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v31;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v31 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(a1 + 32) _validObjectIDFromChange:*(*(&v30 + 1) + 8 * i) entityDescriptionMap:*(a1 + 40)];
        v12 = [*(a1 + 48) containsObject:v11];
        if (v11 && (v12 & 1) == 0)
        {
          [*(a1 + 48) addObject:v11];
          [*(a1 + 56) addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v8);
  }

  HIDWORD(v13) = -1030792151 * *(*(*(a1 + 72) + 8) + 24) + 85899344;
  LODWORD(v13) = HIDWORD(v13);
  if ((v13 >> 3) < 0x147AE15 || [*(a1 + 56) count] >= 0x3E9)
  {
    if ([*(a1 + 56) count])
    {
      v14 = *(a1 + 32);
      v15 = *(a1 + 56);
      v16 = *(a1 + 64);
      v17 = *(*(a1 + 88) + 8);
      obj = *(v17 + 40);
      v18 = [v14 _processWithLimitedSelection:v15 managedObjectContext:v16 error:&obj];
      objc_storeStrong((v17 + 40), obj);
      *(*(*(a1 + 80) + 8) + 24) = v18;
      [*(a1 + 56) removeAllObjects];
    }

    v19 = *(a1 + 80);
    if (*(*(v19 + 8) + 24) == 1)
    {
      v20 = *(a1 + 32);
      v21 = [v5 token];
      [PLModelMigrationActionUtility setHistoryTokenWithAction:v20 key:@"LastDuplicateDetectorProcessingToken" value:v21 managedObjectContext:*(a1 + 64)];

      v22 = *(a1 + 64);
      v23 = *(*(a1 + 88) + 8);
      v28 = *(v23 + 40);
      LOBYTE(v20) = [v22 save:&v28];
      objc_storeStrong((v23 + 40), v28);
      v19 = *(a1 + 80);
      if ((v20 & 1) == 0)
      {
        *(*(v19 + 8) + 24) = 3;
        v19 = *(a1 + 80);
      }
    }

    if (*(*(v19 + 8) + 24) == 1)
    {
      v24 = *(a1 + 32);
      v25 = *(*(a1 + 88) + 8);
      v27 = *(v25 + 40);
      v26 = [v24 isCancelledWithResumeMarker:0 error:&v27];
      objc_storeStrong((v25 + 40), v27);
      v19 = *(a1 + 80);
      if (v26)
      {
        *(*(v19 + 8) + 24) = 2;
        v19 = *(a1 + 80);
      }
    }

    if (a3 && *(*(v19 + 8) + 24) != 1)
    {
      *a3 = 1;
    }
  }
}

void __110__PLModelMigrationAction_PrepareSharedAssetContainerUpdateWorker_performActionWithManagedObjectContext_error___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  ++*(*(*(a1 + 64) + 8) + 24);
  ++*(*(*(a1 + 72) + 8) + 24);
  v5 = [a2 changes];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = [v10 changedObjectID];
        v12 = [v11 entity];
        if ([v12 isEqual:*(a1 + 32)] && objc_msgSend(v10, "changeType") == 1)
        {
          v13 = [v10 updatedProperties];
          v14 = [v13 containsObject:*(a1 + 40)];

          if (v14)
          {
            [*(a1 + 48) addObject:v11];
          }
        }

        else
        {
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  if ([*(a1 + 48) count] > 0x3E7 || *(*(*(a1 + 72) + 8) + 24) >= 10000)
  {
    *a3 = 1;
  }

  HIDWORD(v15) = -1030792151 * *(*(*(a1 + 64) + 8) + 24) + 85899344;
  LODWORD(v15) = HIDWORD(v15);
  if ((v15 >> 3) <= 0x147AE14 && [*(a1 + 56) isCancelledWithResumeMarker:0 error:0])
  {
    *a3 = 1;
  }
}

void __92__PLModelMigrationAction_AddCloudFeedEntryUUID_performActionWithManagedObjectContext_error___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v2 = [v5 uuid];

  if (!v2)
  {
    v3 = [MEMORY[0x1E696AFB0] UUID];
    v4 = [v3 UUIDString];
    [v5 setUuid:v4];
  }
}

void __62__PLModelMigrationAction_DropManualIndexes__dropManualIndexes__block_invoke(uint64_t a1, uint64_t a2)
{
  v46 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"DROP INDEX IF EXISTS %@", a2];;
  v4 = PLMigrationGetLog();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    v6 = [*(a1 + 32) logger];

    if (v6)
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
      v7 = PLMigrationGetLog();
      os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
      v12 = 138543362;
      v13 = v3;
      LODWORD(v11) = 12;
      v8 = _os_log_send_and_compose_impl();

      v9 = [*(a1 + 32) logger];
      [v9 logWithMessage:v8 fromCodeLocation:"PLModelMigrationActions_19000.m" type:{526, 0}];

      if (v8 != buf)
      {
        free(v8);
      }
    }

    else
    {
      v10 = PLMigrationGetLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        *&buf[4] = v3;
        _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_DEFAULT, "Executing statement with sql text '%{public}@'", buf, 0xCu);
      }
    }
  }

  *(*(*(a1 + 40) + 8) + 24) = sqlite3_exec(*(a1 + 48), [v3 UTF8String], 0, 0, 0);
}

id __111__PLModelMigrationAction_MigrateCloudSharedAlbumToCollectionShare_performActionWithManagedObjectContext_error___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = [PLPhotoLibraryBundleController sharedAssetsdClientForPhotoLibraryURL:*(a1 + 32)];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void __111__PLModelMigrationAction_MigrateCloudSharedAlbumToCollectionShare_performActionWithManagedObjectContext_error___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [*(a1 + 32) cancellableDiscreteProgressWithTotalUnitCount:objc_msgSend(a2 pendingParentUnitCount:{"count"), 0}];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void __111__PLModelMigrationAction_MigrateCloudSharedAlbumToCollectionShare_performActionWithManagedObjectContext_error___block_invoke_3(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v83 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = *(a1 + 32);
  v10 = *(*(a1 + 64) + 8);
  obj = *(v10 + 40);
  v11 = [v9 isCancelledWithError:&obj];
  objc_storeStrong((v10 + 40), obj);
  if (v11)
  {
    *(*(*(a1 + 72) + 8) + 24) = 2;
    *a4 = 1;
  }

  else
  {
    v12 = [*(a1 + 32) _insertCollectionShareForCloudSharedAlbum:v8 moc:*(a1 + 40)];
    v13 = +[PLShareParticipant entityName];
    v14 = PLSafeInsertNewObjectForEntityForNameInManagedObjectContext(v13, *(a1 + 40), 0);

    v15 = [MEMORY[0x1E69BF320] UUIDString];
    [v14 setUuid:v15];

    [v14 setRole:1];
    [v14 setPermission:3];
    [v14 setAcceptanceStatus:2];
    [v14 setParticipantKind:1];
    v16 = objc_alloc_init(MEMORY[0x1E696ADF0]);
    v17 = [v8 cloudOwnerFirstName];
    if (v17)
    {
      [v16 setGivenName:v17];
    }

    v18 = [v8 cloudOwnerLastName];
    if (v18)
    {
      [v16 setFamilyName:v18];
    }

    v60 = v18;
    v61 = v16;
    [v14 setNameComponents:v16];
    v19 = *(a1 + 48);
    v20 = [v8 cloudOwnerEmailKey];
    v21 = [v19 emailAddressForKey:v20];

    if (!v21)
    {
      v22 = *(a1 + 56);
      v23 = [v8 cloudOwnerHashedPersonID];
      v21 = [v22 emailForPersonID:v23];
    }

    v59 = v21;
    [v14 setEmailAddress:v21];
    v24 = [v8 cloudOwnerHashedPersonID];
    [v14 setHashedPersonID:v24];

    [v14 setAllowlistedState:{objc_msgSend(v8, "cloudOwnerIsWhitelisted")}];
    v25 = [v8 cloudSubscriptionDate];
    [v14 setSubscriptionDate:v25];

    [v14 setIsCurrentUser:{objc_msgSend(v12, "status") == 1}];
    [v14 setShare:v12];
    v62 = v14;
    if ([v14 isCurrentUser])
    {
      v26 = [v14 hashedPersonID];
    }

    else
    {
      v26 = 0;
    }

    v78 = 0u;
    v79 = 0u;
    v76 = 0u;
    v77 = 0u;
    v63 = v8;
    v27 = [v8 invitationRecords];
    v28 = [v27 countByEnumeratingWithState:&v76 objects:v82 count:16];
    v64 = v7;
    if (v28)
    {
      v29 = v28;
      v30 = *v77;
      do
      {
        for (i = 0; i != v29; ++i)
        {
          if (*v77 != v30)
          {
            objc_enumerationMutation(v27);
          }

          v32 = *(*(&v76 + 1) + 8 * i);
          if ([v32 isMine])
          {
            v33 = [v32 inviteeHashedPersonID];

            v26 = v33;
          }

          [PLModelMigrationAction_MigrateCloudSharedAlbumToCollectionShare insertParticipantForCloudSharedAlbumInvitationRecord:v32 collectionShare:v12 personInfoManager:*(a1 + 56) moc:*(a1 + 40)];
        }

        v29 = [v27 countByEnumeratingWithState:&v76 objects:v82 count:16];
      }

      while (v29);
    }

    v34 = MEMORY[0x1E696AE18];
    v35 = [v12 scopeIdentifier];
    v36 = [v34 predicateWithFormat:@"albumGUID == %@ && album == nil", v35];

    v37 = objc_alloc_init(MEMORY[0x1E695D5E0]);
    v38 = +[PLCloudSharedAlbumInvitationRecord entityName];
    v39 = PLSafeEntityForNameInManagedObjectContext(v38, *(a1 + 40), 0);
    [v37 setEntity:v39];

    v58 = v36;
    [v37 setPredicate:v36];
    v40 = *(a1 + 40);
    v75 = 0;
    v57 = v37;
    v41 = [v40 executeFetchRequest:v37 error:&v75];
    v56 = v75;
    v71 = 0u;
    v72 = 0u;
    v73 = 0u;
    v74 = 0u;
    v42 = v41;
    v43 = [v42 countByEnumeratingWithState:&v71 objects:v81 count:16];
    if (v43)
    {
      v44 = v43;
      v45 = *v72;
      do
      {
        for (j = 0; j != v44; ++j)
        {
          if (*v72 != v45)
          {
            objc_enumerationMutation(v42);
          }

          v47 = *(*(&v71 + 1) + 8 * j);
          if ([v47 isMine])
          {
            v48 = [v47 inviteeHashedPersonID];

            v26 = v48;
          }

          [PLModelMigrationAction_MigrateCloudSharedAlbumToCollectionShare insertParticipantForCloudSharedAlbumInvitationRecord:v47 collectionShare:v12 personInfoManager:*(a1 + 56) moc:*(a1 + 40)];
          [v47 delete];
        }

        v44 = [v42 countByEnumeratingWithState:&v71 objects:v81 count:16];
      }

      while (v44);
    }

    v49 = [v63 assets];
    v50 = [v49 copy];

    v51 = *(a1 + 40);
    v52 = [v50 array];
    v65[0] = MEMORY[0x1E69E9820];
    v65[1] = 3221225472;
    v65[2] = __111__PLModelMigrationAction_MigrateCloudSharedAlbumToCollectionShare_performActionWithManagedObjectContext_error___block_invoke_4;
    v65[3] = &unk_1E7567E38;
    v66 = v12;
    v67 = *(a1 + 40);
    v68 = *(a1 + 56);
    v69 = v26;
    v70 = *(a1 + 32);
    v53 = v26;
    v54 = v12;
    v55 = [v51 enumerateWithIncrementalSaveUsingObjects:v52 withBlock:v65];

    v8 = v63;
    [v54 recomputeCachedValues];
    [v63 deleteFromDatabaseOnly];
    [*(*(*(a1 + 80) + 8) + 40) setCompletedUnitCount:{objc_msgSend(*(*(*(a1 + 80) + 8) + 40), "completedUnitCount") + 1}];

    v7 = v64;
  }
}

void __111__PLModelMigrationAction_MigrateCloudSharedAlbumToCollectionShare_performActionWithManagedObjectContext_error___block_invoke_4(uint64_t a1, void *a2)
{
  v49 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 cloudOwnerHashedPersonID];
  v5 = [PLShareParticipant participantWithHashedPersonID:v4 inScope:*(a1 + 32) inManagedObjectContext:*(a1 + 40)];

  if (v5)
  {
    goto LABEL_4;
  }

  if ([v3 cloudIsMyAsset])
  {
    v5 = [PLShareParticipant participantWithHashedPersonID:*(a1 + 56) inScope:*(a1 + 32) inManagedObjectContext:*(a1 + 40)];
    if (v5)
    {
LABEL_4:
      [v3 setCollectionShare:*(a1 + 32) withContributor:v5];

      goto LABEL_5;
    }
  }

  else
  {
    v6 = [v3 cloudOwnerHashedPersonID];
    v5 = [PLShareParticipant insertRemovedSharedStreamParticipantWithCloudOwnerHashedPersonID:v6 collectionShare:*(a1 + 32) personInfoManager:*(a1 + 48) moc:*(a1 + 40)];

    if (v5)
    {
      goto LABEL_4;
    }
  }

  [v3 setCollectionShare:*(a1 + 32) withContributor:0];
  v7 = PLMigrationGetLog();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);

  if (v8)
  {
    v9 = [*(a1 + 64) logger];

    if (v9)
    {
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
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      *buf = 0u;
      v18 = 0u;
      v10 = PLMigrationGetLog();
      os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
      v15 = 138412290;
      v16 = v3;
      LODWORD(v14) = 12;
      v11 = _os_log_send_and_compose_impl();

      v12 = [*(a1 + 64) logger];
      [v12 logWithMessage:v11 fromCodeLocation:"PLModelMigrationActions_19000.m" type:{257, 16}];

      if (v11 != buf)
      {
        free(v11);
      }
    }

    else
    {
      v13 = PLMigrationGetLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        *&buf[4] = v3;
        _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_ERROR, "Failed to set contributor for asset %@ due to missing participant", buf, 0xCu);
      }
    }
  }

LABEL_5:
  [v3 setAlbums:0];
}

id __138__PLModelMigrationAction_MigrateOrphanedCloudSharedAlbumInvitationRecordsToShareParticipants_performActionWithManagedObjectContext_error___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = [PLPhotoLibraryBundleController sharedAssetsdClientForPhotoLibraryURL:*(a1 + 32)];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void __138__PLModelMigrationAction_MigrateOrphanedCloudSharedAlbumInvitationRecordsToShareParticipants_performActionWithManagedObjectContext_error___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 albumGUID];
  v5 = [(PLShare *)PLCollectionShare shareWithScopeIdentifier:v4 includeTrashed:0 inManagedObjectContext:*(a1 + 32)];

  if (v5)
  {
    v6 = [v3 inviteeHashedPersonID];
    v7 = [PLShareParticipant participantWithHashedPersonID:v6 inScope:v5 inManagedObjectContext:*(a1 + 32)];

    if (v7 || (+[PLModelMigrationAction_MigrateCloudSharedAlbumToCollectionShare insertParticipantForCloudSharedAlbumInvitationRecord:collectionShare:personInfoManager:moc:](PLModelMigrationAction_MigrateCloudSharedAlbumToCollectionShare, "insertParticipantForCloudSharedAlbumInvitationRecord:collectionShare:personInfoManager:moc:", v3, v5, *(a1 + 40), *(a1 + 32)), ![v3 isMine]))
    {
      v8 = 0;
    }

    else
    {
      v8 = [v3 inviteeHashedPersonID];
    }

    v9 = *(a1 + 32);
    v10 = [v5 collectionShareAssets];
    v11 = [v10 allObjects];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __138__PLModelMigrationAction_MigrateOrphanedCloudSharedAlbumInvitationRecordsToShareParticipants_performActionWithManagedObjectContext_error___block_invoke_3;
    v14[3] = &unk_1E7567F48;
    v15 = v5;
    v16 = *(a1 + 32);
    v17 = v8;
    v12 = v8;
    v13 = [v9 enumerateWithIncrementalSaveUsingObjects:v11 withBlock:v14];

    [v3 delete];
  }
}

void __138__PLModelMigrationAction_MigrateOrphanedCloudSharedAlbumInvitationRecordsToShareParticipants_performActionWithManagedObjectContext_error___block_invoke_3(void *a1, void *a2)
{
  v7 = a2;
  v3 = [v7 collectionShareContributor];

  if (!v3)
  {
    v4 = [v7 cloudOwnerHashedPersonID];
    v5 = [PLShareParticipant participantWithHashedPersonID:v4 inScope:a1[4] inManagedObjectContext:a1[5]];

    if (v5)
    {
LABEL_3:
      [v7 setCollectionShare:a1[4] withContributor:v5];

      goto LABEL_7;
    }

    if ([v7 cloudIsMyAsset])
    {
      v6 = [PLShareParticipant participantWithHashedPersonID:a1[6] inScope:a1[4] inManagedObjectContext:a1[5]];
      if (v6)
      {
        v5 = v6;
        goto LABEL_3;
      }
    }
  }

LABEL_7:
}

void __117__PLModelMigrationAction_RelocateEdgesAndNormalizeNodeValues__migrateEdgesToNativelyModeledObjectsWithError_context___block_invoke_2(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v178 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v95 = v5;
  v94 = [PLGraphLabel fetchBuiltInLabelWithCode:2000 inContext:v5];
  v96 = [MEMORY[0x1E695DF90] dictionary];
  v106 = [MEMORY[0x1E695DFA8] set];
  v105 = [MEMORY[0x1E695DFA8] set];
  v7 = [MEMORY[0x1E695DFA8] set];
  v132 = 0u;
  v133 = 0u;
  v134 = 0u;
  v135 = 0u;
  obj = v6;
  v101 = [obj countByEnumeratingWithState:&v132 objects:v177 count:16];
  if (v101)
  {
    v99 = *v133;
    do
    {
      v8 = 0;
      do
      {
        if (*v133 != v99)
        {
          objc_enumerationMutation(obj);
        }

        v103 = v8;
        v9 = *(*(&v132 + 1) + 8 * v8);
        v128 = 0u;
        v129 = 0u;
        v130 = 0u;
        v131 = 0u;
        v10 = [&unk_1F0FBF598 countByEnumeratingWithState:&v128 objects:v176 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v129;
          do
          {
            for (i = 0; i != v11; ++i)
            {
              if (*v129 != v12)
              {
                objc_enumerationMutation(&unk_1F0FBF598);
              }

              v14 = [v9 valueForKey:*(*(&v128 + 1) + 8 * i)];
              v15 = [v14 objectID];

              if (v15)
              {
                [v106 addObject:v15];
              }
            }

            v11 = [&unk_1F0FBF598 countByEnumeratingWithState:&v128 objects:v176 count:16];
          }

          while (v11);
        }

        v126 = 0u;
        v127 = 0u;
        v124 = 0u;
        v125 = 0u;
        v16 = [&unk_1F0FBF5B0 countByEnumeratingWithState:&v124 objects:v175 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = *v125;
          do
          {
            for (j = 0; j != v17; ++j)
            {
              if (*v125 != v18)
              {
                objc_enumerationMutation(&unk_1F0FBF5B0);
              }

              v20 = [v9 valueForKey:*(*(&v124 + 1) + 8 * j)];
              v21 = [v20 objectID];

              if (v21)
              {
                [v105 addObject:v21];
              }
            }

            v17 = [&unk_1F0FBF5B0 countByEnumeratingWithState:&v124 objects:v175 count:16];
          }

          while (v17);
        }

        v122 = 0u;
        v123 = 0u;
        v120 = 0u;
        v121 = 0u;
        v22 = [&unk_1F0FBF5C8 countByEnumeratingWithState:&v120 objects:v174 count:16];
        if (v22)
        {
          v23 = v22;
          v24 = *v121;
          do
          {
            for (k = 0; k != v23; ++k)
            {
              if (*v121 != v24)
              {
                objc_enumerationMutation(&unk_1F0FBF5C8);
              }

              v26 = [v9 valueForKey:*(*(&v120 + 1) + 8 * k)];
              v27 = [v26 objectID];

              if (v27)
              {
                [v7 addObject:v27];
              }
            }

            v23 = [&unk_1F0FBF5C8 countByEnumeratingWithState:&v120 objects:v174 count:16];
          }

          while (v23);
        }

        v8 = v103 + 1;
      }

      while ((v103 + 1) != v101);
      v101 = [obj countByEnumeratingWithState:&v132 objects:v177 count:16];
    }

    while (v101);
  }

  v28 = +[PLGraphNode fetchRequest];
  v29 = [MEMORY[0x1E696AE18] predicateWithFormat:@"primaryLabelCode = %d AND (actingAsset IN %@ OR actingPerson IN %@ or actingMoment IN %@)", 2000, v106, v105, v7];
  [v28 setPredicate:v29];

  v119 = 0;
  v30 = [v5 executeFetchRequest:v28 error:&v119];
  v31 = v119;
  v32 = v31;
  if (v30)
  {
    v91 = v31;
    v92 = v30;
    v100 = v28;
    v117 = 0u;
    v118 = 0u;
    v115 = 0u;
    v116 = 0u;
    v102 = v30;
    v33 = [v102 countByEnumeratingWithState:&v115 objects:v138 count:16];
    v34 = v96;
    if (v33)
    {
      v35 = v33;
      v104 = *v116;
      while (1)
      {
        v36 = 0;
LABEL_39:
        if (*v116 != v104)
        {
          objc_enumerationMutation(v102);
        }

        v37 = *(*(&v115 + 1) + 8 * v36);
        v111 = 0u;
        v112 = 0u;
        v113 = 0u;
        v114 = 0u;
        v38 = [&unk_1F0FBF5E0 countByEnumeratingWithState:&v111 objects:v137 count:16];
        if (!v38)
        {
          break;
        }

        v39 = v38;
        v40 = *v112;
LABEL_43:
        v41 = 0;
        while (1)
        {
          if (*v112 != v40)
          {
            objc_enumerationMutation(&unk_1F0FBF5E0);
          }

          v42 = [v37 valueForKey:*(*(&v111 + 1) + 8 * v41)];
          v43 = [v42 objectID];

          if (v43)
          {
            break;
          }

          if (v39 == ++v41)
          {
            v39 = [&unk_1F0FBF5E0 countByEnumeratingWithState:&v111 objects:v137 count:16];
            if (v39)
            {
              goto LABEL_43;
            }

            goto LABEL_66;
          }
        }

        v34 = v96;
        [v96 setObject:v37 forKeyedSubscript:v43];

        if (++v36 != v35)
        {
          goto LABEL_39;
        }

        v35 = [v102 countByEnumeratingWithState:&v115 objects:v138 count:16];
        if (!v35)
        {
          goto LABEL_52;
        }
      }

LABEL_66:
      v68 = PLMigrationGetLog();
      v69 = os_log_type_enabled(v68, OS_LOG_TYPE_ERROR);

      v46 = v94;
      v34 = v96;
      v30 = v92;
      if (v69)
      {
        v70 = [*(a1 + 32) logger];

        if (v70)
        {
          v173 = 0u;
          v172 = 0u;
          v171 = 0u;
          v170 = 0u;
          v169 = 0u;
          v168 = 0u;
          v167 = 0u;
          v166 = 0u;
          v165 = 0u;
          v164 = 0u;
          v163 = 0u;
          v162 = 0u;
          v161 = 0u;
          v160 = 0u;
          v159 = 0u;
          v158 = 0u;
          v157 = 0u;
          v156 = 0u;
          v155 = 0u;
          v154 = 0u;
          v153 = 0u;
          v152 = 0u;
          v151 = 0u;
          v150 = 0u;
          v149 = 0u;
          v148 = 0u;
          v147 = 0u;
          v146 = 0u;
          v145 = 0u;
          v144 = 0u;
          memset(buf, 0, sizeof(buf));
          v71 = PLMigrationGetLog();
          os_log_type_enabled(v71, OS_LOG_TYPE_ERROR);
          v139 = 138412290;
          v140 = v37;
          LODWORD(v90) = 12;
          v72 = _os_log_send_and_compose_impl();

          v73 = [*(a1 + 32) logger];
          [v73 logWithMessage:v72 fromCodeLocation:"PLModelMigrationActions_19000.m" type:{1038, 16}];

          if (v72 != buf)
          {
            free(v72);
          }
        }

        else
        {
          v85 = PLMigrationGetLog();
          if (os_log_type_enabled(v85, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            *&buf[4] = v37;
            _os_log_impl(&dword_19BF1F000, v85, OS_LOG_TYPE_ERROR, "RelocateEdgesAndNormalizeNodeValues: migrating edges: failed to identify actorObject for actorNode: %@", buf, 0xCu);
          }
        }
      }

      *(*(*(a1 + 40) + 8) + 24) = 0;
      *a4 = 1;

      v28 = v100;
    }

    else
    {
LABEL_52:

      v109 = 0u;
      v110 = 0u;
      v107 = 0u;
      v108 = 0u;
      v44 = obj;
      v45 = [v44 countByEnumeratingWithState:&v107 objects:v136 count:16];
      v46 = v94;
      v47 = a1;
      if (v45)
      {
        v48 = v45;
        v49 = *v108;
        do
        {
          for (m = 0; m != v48; ++m)
          {
            if (*v108 != v49)
            {
              objc_enumerationMutation(v44);
            }

            v51 = *(*(&v107 + 1) + 8 * m);
            v52 = [v51 sourceNode];

            if (!v52)
            {
              v53 = objc_opt_class();
              v54 = [v51 sourceAsset];
              [v53 _encloseActor:v54 fromEdge:v51 isSource:1 actorLabel:v94 cache:v34];

              v55 = objc_opt_class();
              v56 = [v51 sourcePerson];
              [v55 _encloseActor:v56 fromEdge:v51 isSource:1 actorLabel:v94 cache:v34];

              v57 = objc_opt_class();
              v58 = [v51 sourceMoment];
              [v57 _encloseActor:v58 fromEdge:v51 isSource:1 actorLabel:v94 cache:v34];

              v47 = a1;
            }

            v59 = [v51 targetNode];

            if (!v59)
            {
              v60 = objc_opt_class();
              v61 = [v51 targetAsset];
              [v60 _encloseActor:v61 fromEdge:v51 isSource:0 actorLabel:v94 cache:v34];

              v62 = objc_opt_class();
              v63 = [v51 targetPerson];
              [v62 _encloseActor:v63 fromEdge:v51 isSource:0 actorLabel:v94 cache:v34];

              v64 = objc_opt_class();
              v65 = [v51 targetMoment];
              [v64 _encloseActor:v65 fromEdge:v51 isSource:0 actorLabel:v94 cache:v34];

              v47 = a1;
            }

            ++*(*(*(v47 + 48) + 8) + 24);
          }

          v48 = [v44 countByEnumeratingWithState:&v107 objects:v136 count:16];
        }

        while (v48);
      }

      v66 = PLMigrationGetLog();
      if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
      {
        v67 = *(*(*(v47 + 48) + 8) + 24);
        *buf = 134217984;
        *&buf[4] = v67;
        _os_log_impl(&dword_19BF1F000, v66, OS_LOG_TYPE_DEFAULT, "RelocateEdgesAndNormalizeNodeValues: migrating edges: %ld items processed...", buf, 0xCu);
      }

      v28 = v100;
      v30 = v92;
    }

    v32 = v91;
  }

  else
  {
    v74 = PLMigrationGetLog();
    v75 = os_log_type_enabled(v74, OS_LOG_TYPE_ERROR);

    v46 = v94;
    v34 = v96;
    if (v75)
    {
      v76 = [*(a1 + 32) logger];

      if (v76)
      {
        v173 = 0u;
        v172 = 0u;
        v171 = 0u;
        v170 = 0u;
        v169 = 0u;
        v168 = 0u;
        v167 = 0u;
        v166 = 0u;
        v165 = 0u;
        v164 = 0u;
        v163 = 0u;
        v162 = 0u;
        v161 = 0u;
        v160 = 0u;
        v159 = 0u;
        v158 = 0u;
        v157 = 0u;
        v156 = 0u;
        v155 = 0u;
        v154 = 0u;
        v153 = 0u;
        v152 = 0u;
        v151 = 0u;
        v150 = 0u;
        v149 = 0u;
        v148 = 0u;
        v147 = 0u;
        v146 = 0u;
        v145 = 0u;
        v144 = 0u;
        memset(buf, 0, sizeof(buf));
        v77 = PLMigrationGetLog();
        os_log_type_enabled(v77, OS_LOG_TYPE_ERROR);
        v78 = objc_opt_class();
        v79 = NSStringFromClass(v78);
        v80 = v32;
        v81 = v79;
        v139 = 138543618;
        v140 = v79;
        v141 = 2112;
        v82 = v80;
        v142 = v80;
        LODWORD(v90) = 22;
        v83 = _os_log_send_and_compose_impl();

        v84 = [*(a1 + 32) logger];
        [v84 logWithMessage:v83 fromCodeLocation:"PLModelMigrationActions_19000.m" type:{1019, 16}];

        if (v83 != buf)
        {
          free(v83);
        }

        v34 = v96;
        v32 = v82;
      }

      else
      {
        v86 = PLMigrationGetLog();
        if (os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
        {
          v87 = objc_opt_class();
          v88 = NSStringFromClass(v87);
          *buf = 138543618;
          *&buf[4] = v88;
          *&buf[12] = 2112;
          *&buf[14] = v32;
          _os_log_impl(&dword_19BF1F000, v86, OS_LOG_TYPE_ERROR, "Failed to perform a fetch operation for %{public}@. Error: %@", buf, 0x16u);
        }
      }
    }

    *(*(*(a1 + 40) + 8) + 24) = 0;
    v89 = v32;
    **(a1 + 56) = v32;
    *a4 = 1;
  }
}

void __102__PLModelMigrationAction_RelocateEdgesAndNormalizeNodeValues__migrateNodePropertiesWithError_context___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  [v7 willChangeValueForKey:@"externalIdentifier"];
  v3 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(*(a1 + 32), "takeNextAvailableExternalIdentifierInContext:forIdentifierEntity:", *(a1 + 40), 0)}];
  [v7 setPrimitiveValue:v3 forKey:@"externalIdentifier"];

  [v7 didChangeValueForKey:@"externalIdentifier"];
  v4 = [v7 primitiveValueForKey:@"uuid"];
  if (!v4)
  {
    [v7 willChangeValueForKey:@"uuid"];
    v5 = [MEMORY[0x1E696AFB0] UUID];
    v6 = [v5 UUIDString];
    [v7 setPrimitiveValue:v6 forKey:@"uuid"];

    [v7 didChangeValueForKey:@"uuid"];
  }
}

void __103__PLModelMigrationAction_RelocateEdgesAndNormalizeNodeValues__migrateGraphEdgeValuesWithError_context___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 primitiveValueForKey:@"obsoleted_valueName"];
  v5 = [*(*(a1 + 32) + 48) objectForKeyedSubscript:v4];
  v6 = v5;
  if (v5)
  {
    [v3 setNameCode:{objc_msgSend(v5, "intValue")}];
    [v3 pl_setValue:0 forKey:@"obsoleted_valueName" valueDidChangeHandler:0];
  }

  else
  {
    v7 = PLMigrationGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = [v3 objectID];
      v9 = 138543618;
      v10 = v8;
      v11 = 2114;
      v12 = v4;
      _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_ERROR, "Deleting edge value row (objectID: %{public}@) with unexpected name: %{public}@...", &v9, 0x16u);
    }
  }
}

void __103__PLModelMigrationAction_RelocateEdgesAndNormalizeNodeValues__migrateGraphNodeValuesWithError_context___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 primitiveValueForKey:@"obsoleted_valueName"];
  v5 = [*(*(a1 + 32) + 48) objectForKeyedSubscript:v4];
  v6 = v5;
  if (v5)
  {
    [v3 setNameCode:{objc_msgSend(v5, "intValue")}];
    [v3 pl_setValue:0 forKey:@"obsoleted_valueName" valueDidChangeHandler:0];
  }

  else
  {
    v7 = PLMigrationGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = [v3 objectID];
      v9 = 138543618;
      v10 = v8;
      v11 = 2114;
      v12 = v4;
      _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_ERROR, "Deleting node value row (objectID: %{public}@) with unexpected name: %{public}@...", &v9, 0x16u);
    }
  }
}

void __99__PLModelMigrationAction_WriteEdgeExternalIdentifiers_performActionWithManagedObjectContext_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v7 = a2;
  v4 = [v3 pl_graphCache];
  v5 = [v4 takeNextAvailableExternalIdentifierInContext:*(a1 + 32) forIdentifierEntity:1];

  [v7 willChangeValueForKey:*(a1 + 40)];
  v6 = [MEMORY[0x1E696AD98] numberWithLongLong:v5];
  [v7 setPrimitiveValue:v6 forKey:*(a1 + 40)];

  [v7 didChangeValueForKey:*(a1 + 40)];
}

id __98__PLModelMigrationAction_RestoreSocialGroupUserPicks_performActionWithManagedObjectContext_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 URIRepresentation];
  v4 = [*(a1 + 32) persistentStoreCoordinator];
  v5 = [v4 managedObjectIDForURIRepresentation:v3];

  return v5;
}

void __98__PLModelMigrationAction_RestoreSocialGroupUserPicks_performActionWithManagedObjectContext_error___block_invoke_499(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  [v4 addLabel:v3];
  [v4 addLabel:a1[5]];
  [v4 addLabel:a1[6]];
}

void __137__PLModelMigrationAction_RemoveVisionComputeResources__removeComputedResourcesFromAssetOIDs_pendingParentUnitCount_managedObjectContext___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) recipeIDs];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __137__PLModelMigrationAction_RemoveVisionComputeResources__removeComputedResourcesFromAssetOIDs_pendingParentUnitCount_managedObjectContext___block_invoke_2;
  v7[3] = &unk_1E7568128;
  v5 = v3;
  v8 = v5;
  [v4 enumerateObjectsUsingBlock:v7];
  v6 = [v5 additionalAttributes];
  if ([v6 viewPresentation] >= 2)
  {
    [v6 setViewPresentation:0];
  }

  [v5 recalculateImageRequestHints];
}

void __137__PLModelMigrationAction_RemoveVisionComputeResources__removeComputedResourcesFromAssetOIDs_pendingParentUnitCount_managedObjectContext___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 intValue];
  v4 = *(a1 + 32);
  v5 = [v4 pathForAlchemistV2ResourceFileWithRecipeID:v3];
  [v4 removeComputeResourceWithRecipeID:v3 atPath:v5];
}

void __64__PLModelMigrationAction_RemoveVisionComputeResources_recipeIDs__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a2];
  [v2 addObject:v3];
}

void __99__PLModelMigrationAction_RemoveVisionComputeResources_performActionWithManagedObjectContext_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(*(*(a1 + 32) + 8) + 40);
  v4 = [a2 asset];
  v3 = [v4 objectID];
  if (v3)
  {
    [v2 addObject:v3];
  }
}

void __121__PLModelMigrationAction_SetShareParticipantOnOrphanedCollectionShareAssets_performActionWithManagedObjectContext_error___block_invoke(uint64_t a1, void *a2)
{
  v66 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 collectionShare];
  if (!v4)
  {
    v10 = PLMigrationGetLog();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);

    if (v11)
    {
      v12 = [*(a1 + 32) logger];

      if (v12)
      {
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
        v13 = PLMigrationGetLog();
        os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
        v14 = objc_opt_class();
        v15 = NSStringFromClass(v14);
        v16 = [v3 uuid];
        v31 = 138543618;
        v32 = v15;
        v33 = 2114;
        v34 = v16;
        LODWORD(v30) = 22;
        v17 = _os_log_send_and_compose_impl();

        v18 = [*(a1 + 32) logger];
        [v18 logWithMessage:v17 fromCodeLocation:"PLModelMigrationActions_19000.m" type:{1460, 0}];

        if (v17 != buf)
        {
          free(v17);
        }
      }

      else
      {
        v26 = PLMigrationGetLog();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          v27 = objc_opt_class();
          v28 = NSStringFromClass(v27);
          v29 = [v3 uuid];
          *buf = 138543618;
          *&buf[4] = v28;
          *&buf[12] = 2114;
          *&buf[14] = v29;
          _os_log_impl(&dword_19BF1F000, v26, OS_LOG_TYPE_DEFAULT, "%{public}@: Asset missing collectionShare, uuid: %{public}@", buf, 0x16u);
        }
      }
    }

    goto LABEL_19;
  }

  if ([v3 cloudIsMyAsset])
  {
    v5 = PLMigrationGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      v8 = [v3 uuid];
      *buf = 138543618;
      *&buf[4] = v7;
      *&buf[12] = 2114;
      *&buf[14] = v8;
      _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: could not find current user participant for Asset, attempting to set one now. Asset uuid: %{public}@", buf, 0x16u);
    }

    v9 = [v4 currentUserParticipant];
    if (!v9)
    {
LABEL_19:
      ++*(*(*(a1 + 40) + 8) + 24);
      goto LABEL_20;
    }
  }

  else
  {
    v19 = [v3 cloudOwnerHashedPersonID];

    if (!v19)
    {
      goto LABEL_19;
    }

    v20 = PLMigrationGetLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = objc_opt_class();
      v22 = NSStringFromClass(v21);
      v23 = [v3 cloudOwnerHashedPersonID];
      v24 = [v3 uuid];
      *buf = 138543874;
      *&buf[4] = v22;
      *&buf[12] = 2114;
      *&buf[14] = v23;
      *&buf[22] = 2114;
      *&buf[24] = v24;
      _os_log_impl(&dword_19BF1F000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@: could not find other participant with hashedPersonID: %{public}@, attempting to set one now. Asset uuid: %{public}@", buf, 0x20u);
    }

    v25 = [v3 cloudOwnerHashedPersonID];
    v9 = [PLShareParticipant participantWithHashedPersonID:v25 inCollectionShare:v4];

    if (!v9)
    {
      goto LABEL_19;
    }
  }

  [v3 setCollectionShare:v4 withContributor:v9];

LABEL_20:
}

void __86__PLModelMigrationAction_UpdateAlchemistAssetResourcesUniformTypeIdentifier_recipeIDs__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a2];
  [v2 addObject:v3];
}

void __121__PLModelMigrationAction_UpdateAlchemistAssetResourcesUniformTypeIdentifier_performActionWithManagedObjectContext_error___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [v7 uniformTypeIdentifier];
  v4 = [v3 identifier];
  v5 = [*MEMORY[0x1E6982D60] identifier];
  v6 = [v4 isEqualToString:v5];

  if (v6)
  {
    [v7 setUniformTypeIdentifier:*(a1 + 32)];
  }
}

void __107__PLModelMigrationAction_RemoveExcessSocialGroupKeyAssetEdges_performActionWithManagedObjectContext_error___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  [v5 addLabel:v4];
  [v5 addLabel:*(a1 + 40)];
}

void __105__PLModelMigrationAction_SetShareParticipantOnCloudComments_performActionWithManagedObjectContext_error___block_invoke(uint64_t a1, void *a2)
{
  v89 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 collectionShare];
  if (!v4)
  {
    v16 = PLMigrationGetLog();
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);

    if (v17)
    {
      v18 = [*(a1 + 32) logger];

      if (v18)
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
        v19 = PLMigrationGetLog();
        os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
        v20 = objc_opt_class();
        v21 = NSStringFromClass(v20);
        v22 = [v3 cloudGUID];
        v52 = 138543618;
        v53 = v21;
        v54 = 2114;
        v55 = v22;
        LODWORD(v51) = 22;
        v23 = _os_log_send_and_compose_impl();

        v24 = [*(a1 + 32) logger];
        [v24 logWithMessage:v23 fromCodeLocation:"PLModelMigrationActions_19000.m" type:{1291, 0}];

        if (v23 != buf)
        {
          free(v23);
        }
      }

      else
      {
        v36 = PLMigrationGetLog();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          v37 = objc_opt_class();
          v38 = NSStringFromClass(v37);
          v39 = [v3 cloudGUID];
          *buf = 138543618;
          *&buf[4] = v38;
          *&buf[12] = 2114;
          *&buf[14] = v39;
          _os_log_impl(&dword_19BF1F000, v36, OS_LOG_TYPE_DEFAULT, "%{public}@: CloudSharedComment missing collectionShare, uuid: %{public}@", buf, 0x16u);
        }
      }
    }

    goto LABEL_28;
  }

  v5 = [v3 isMyComment];
  v6 = [v5 BOOLValue];

  if (!v6)
  {
    v25 = [v3 commenterHashedPersonID];

    if (v25)
    {
      v26 = PLMigrationGetLog();
      v27 = os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT);

      if (v27)
      {
        v28 = [*(a1 + 32) logger];

        if (v28)
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
          v29 = PLMigrationGetLog();
          os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT);
          v30 = objc_opt_class();
          v31 = NSStringFromClass(v30);
          v32 = [v3 commenterHashedPersonID];
          v33 = [v3 cloudGUID];
          v52 = 138543874;
          v53 = v31;
          v54 = 2114;
          v55 = v32;
          v56 = 2114;
          v57 = v33;
          LODWORD(v51) = 32;
          v34 = _os_log_send_and_compose_impl();

          v35 = [*(a1 + 32) logger];
          [v35 logWithMessage:v34 fromCodeLocation:"PLModelMigrationActions_19000.m" type:{1301, 0}];

          if (v34 != buf)
          {
            free(v34);
          }
        }

        else
        {
          v45 = PLMigrationGetLog();
          if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
          {
            v46 = objc_opt_class();
            v47 = NSStringFromClass(v46);
            v48 = [v3 commenterHashedPersonID];
            v49 = [v3 cloudGUID];
            *buf = 138543874;
            *&buf[4] = v47;
            *&buf[12] = 2114;
            *&buf[14] = v48;
            *&buf[22] = 2114;
            *&buf[24] = v49;
            _os_log_impl(&dword_19BF1F000, v45, OS_LOG_TYPE_DEFAULT, "%{public}@: could not find participant with hashedPersonID: %{public}@ for CloudSharedComment, uuid: %{public}@", buf, 0x20u);
          }
        }
      }

      v50 = [v3 commenterHashedPersonID];
      v44 = [PLShareParticipant participantWithHashedPersonID:v50 inCollectionShare:v4];

      if (v44)
      {
        goto LABEL_23;
      }
    }

LABEL_28:
    ++*(*(*(a1 + 40) + 8) + 24);
    goto LABEL_29;
  }

  v7 = PLMigrationGetLog();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

  if (v8)
  {
    v9 = [*(a1 + 32) logger];

    if (v9)
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
      v10 = PLMigrationGetLog();
      os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      v13 = [v3 cloudGUID];
      v52 = 138543618;
      v53 = v12;
      v54 = 2114;
      v55 = v13;
      LODWORD(v51) = 22;
      v14 = _os_log_send_and_compose_impl();

      v15 = [*(a1 + 32) logger];
      [v15 logWithMessage:v14 fromCodeLocation:"PLModelMigrationActions_19000.m" type:{1297, 0}];

      if (v14 != buf)
      {
        free(v14);
      }
    }

    else
    {
      v40 = PLMigrationGetLog();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        v41 = objc_opt_class();
        v42 = NSStringFromClass(v41);
        v43 = [v3 cloudGUID];
        *buf = 138543618;
        *&buf[4] = v42;
        *&buf[12] = 2114;
        *&buf[14] = v43;
        _os_log_impl(&dword_19BF1F000, v40, OS_LOG_TYPE_DEFAULT, "%{public}@: could not find current participant for CloudSharedComment, uuid: %{public}@", buf, 0x16u);
      }
    }
  }

  v44 = [v4 currentUserParticipant];
  if (!v44)
  {
    goto LABEL_28;
  }

LABEL_23:
  [v3 setShareParticipant:v44];
  ++*(*(*(a1 + 48) + 8) + 24);

LABEL_29:
}

void __133__PLModelMigrationAction_FixMultipleCurrentUserOwnerShareParticipantsOnCollectionShares_performActionWithManagedObjectContext_error___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [v3 participants];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v11 + 1) + 8 * i);
        if ([v10 role] == 1 && objc_msgSend(v10, "isCurrentUser"))
        {
          if (v7)
          {
            [*(a1 + 32) updateTargetParticipant:v7 duplicateParticipant:v10 collectionShare:v3 managedObjectContext:*(a1 + 40)];
            [*(a1 + 40) deleteObject:v10];
          }

          else
          {
            v7 = v10;
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }
}

void __135__PLModelMigrationAction_ResetSensitivityProcessingStateForAssetsContributedByCurrentUser_performActionWithManagedObjectContext_error___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5 collectionShareContributor];
  v4 = [v3 isCurrentUser];

  if (v4)
  {
    [v5 setSensitivityAnalysisState:4];
    ++*(*(*(a1 + 32) + 8) + 24);
  }
}

void __120__PLModelMigrationAction_DeleteFullSizeRenderVideosForLegacyAdjustedSlomos_performActionWithManagedObjectContext_error___block_invoke(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = [v9 asset];
  v4 = [v3 additionalAttributes];
  v5 = [v4 unmanagedAdjustment];

  v6 = MEMORY[0x1E69C0910];
  v7 = [v5 adjustmentFormatIdentifier];
  v8 = [v5 adjustmentFormatVersion];
  LODWORD(v6) = [v6 isRecognizedSlowMotionFormatWithIdentifier:v7 version:v8];

  if (v6)
  {
    [*(a1 + 32) deleteObject:v9];
    ++*(*(*(a1 + 40) + 8) + 24);
  }
}

void __105__PLModelMigrationAction_SetStartEndDatesOnCollectionShares_performActionWithManagedObjectContext_error___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [*(a1 + 32) cancellableDiscreteProgressWithTotalUnitCount:objc_msgSend(a2 pendingParentUnitCount:{"count"), 0}];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void __105__PLModelMigrationAction_SetStartEndDatesOnCollectionShares_performActionWithManagedObjectContext_error___block_invoke_3(void *a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v6 = a3;
  v7 = a1[4];
  v8 = *(a1[5] + 8);
  obj = *(v8 + 40);
  v9 = [v7 isCancelledWithError:&obj];
  objc_storeStrong((v8 + 40), obj);
  if (v9)
  {
    *(*(a1[6] + 8) + 24) = 2;
    *a4 = 1;
  }

  else
  {
    [v6 recomputeCachedValues];
    [*(*(a1[7] + 8) + 40) setCompletedUnitCount:{objc_msgSend(*(*(a1[7] + 8) + 40), "completedUnitCount") + 1}];
  }
}

void __99__PLModelMigrationAction_SetPrivacyStateOnSmartAlbums_performActionWithManagedObjectContext_error___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = [v6 userQueryData];
  v8 = [PLQueryHandler constructQueryFromData:v7];

  if ([PLQueryHandler includesHiddenAssetsInQuery:v8])
  {
    [v6 setPrivacyState:1];
  }

  v9 = *(a1 + 32);
  v10 = *(*(a1 + 48) + 8);
  obj = *(v10 + 40);
  v11 = [v9 isCancelledWithError:&obj];
  objc_storeStrong((v10 + 40), obj);
  if (v11)
  {
    *(*(*(a1 + 56) + 8) + 24) = 2;
    *a4 = 1;
  }

  [*(a1 + 40) setCompletedUnitCount:{objc_msgSend(*(a1 + 40), "completedUnitCount") + 1}];
}

void __122__PLModelMigrationAction_RemovePeopleMergeCandidatesForConfidenceComputation_performActionWithManagedObjectContext_error___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v44 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v33 = [v4 personUUID];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v30 = v4;
  v5 = [v4 mergeCandidates];
  v6 = [v5 copy];

  v7 = [v6 countByEnumeratingWithState:&v35 objects:v43 count:16];
  if (v7)
  {
    v8 = v7;
    v32 = 0;
    v9 = *v36;
    v31 = v6;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v36 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v35 + 1) + 8 * i);
        v12 = objc_autoreleasePoolPush();
        if (![v11 verifiedType])
        {
          v13 = [v11 mergeCandidates];
          if ([v13 count] == 1)
          {
            v14 = [v11 mergeCandidates];
            v15 = [v14 anyObject];
            v16 = [v15 personUUID];
            v17 = [v33 isEqualToString:v16];

            if (v17)
            {
              v18 = PLMigrationGetLog();
              if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
              {
                v19 = [v11 personUUID];
                *buf = 138543618;
                v40 = v33;
                v41 = 2114;
                v42 = v19;
                _os_log_impl(&dword_19BF1F000, v18, OS_LOG_TYPE_DEFAULT, "Removing merge candidate relationship between %{public}@ and %{public}@", buf, 0x16u);
              }

              v20 = v32;
              if (!v32)
              {
                v20 = [v30 mutableMergeCandidates];
                ++*(*(*(a1 + 48) + 8) + 24);
              }

              v32 = v20;
              [v20 removeObject:v11];
              v21 = [v11 associatedFaceGroup];
              [v21 setPersonBuilderState:1];

              v22 = [v11 mergeCandidatesWithConfidence];
              v23 = [v22 count];

              if (v23)
              {
                v24 = [v11 mutableMergeCandidatesWithConfidence];
                [v24 removeAllObjects];

                [v11 setMergeCandidateConfidence:0.0];
              }
            }

            v6 = v31;
          }

          else
          {
          }
        }

        objc_autoreleasePoolPop(v12);
      }

      v8 = [v6 countByEnumeratingWithState:&v35 objects:v43 count:16];
    }

    while (v8);
  }

  else
  {
    v32 = 0;
  }

  v25 = *(a1 + 32);
  v26 = *(*(a1 + 56) + 8);
  obj = *(v26 + 40);
  v27 = [v25 isCancelledWithError:&obj];
  objc_storeStrong((v26 + 40), obj);
  if (v27)
  {
    *(*(*(a1 + 64) + 8) + 24) = 2;
    *a4 = 1;
  }

  [*(a1 + 40) setCompletedUnitCount:{objc_msgSend(*(a1 + 40), "completedUnitCount") + 1}];
}

uint64_t __113__PLModelMigrationAction_ResetSharedLibrarySharingSuggestionsAssets_performActionWithManagedObjectContext_error___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  PLLibraryScopeAssetRemoveSuggestedByClientType(a2);
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

void __134__PLModelMigrationAction_UpdateDuplicateAssetVisibilityStateMostRelevant_updateKeyAssetVisibilityStateWithManagedObjectContext_error___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = [a2 assets];
  v7 = [v6 firstObject];

  if ([v7 duplicateAssetVisibilityState] == 1)
  {
    [v7 setDuplicateAssetVisibilityState:2];
  }

  v8 = *(a1 + 32);
  v9 = *(*(a1 + 48) + 8);
  obj = *(v9 + 40);
  v10 = [v8 isCancelledWithError:&obj];
  objc_storeStrong((v9 + 40), obj);
  if (v10)
  {
    *(*(*(a1 + 56) + 8) + 24) = 2;
    *a4 = 1;
  }

  [*(a1 + 40) setCompletedUnitCount:{objc_msgSend(*(a1 + 40), "completedUnitCount") + 1}];
}

void __120__PLModelMigrationAction_RepairUnknownAssetTypeAndUnsupportedPlaybackStyle_performActionWithManagedObjectContext_error___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  if ([v6 kind] == 3)
  {
    v7 = [v6 originalUniformTypeIdentifier];
    v8 = [PLManagedAsset assetTypeFromUniformTypeIdentifier:v7];

    if (v8 == 3)
    {
      v9 = 56;
    }

    else
    {
      [v6 setKind:v8];
      v9 = 48;
    }

    ++*(*(*(a1 + v9) + 8) + 24);
  }

  if ([v6 kind] != 3 && !objc_msgSend(v6, "playbackStyle"))
  {
    [v6 setPlaybackStyle:{+[PLManagedAsset defaultPlaybackStyleFromAssetType:subtype:playbackVariation:](PLManagedAsset, "defaultPlaybackStyleFromAssetType:subtype:playbackVariation:", objc_msgSend(v6, "kind"), objc_msgSend(v6, "kindSubtype"), objc_msgSend(v6, "playbackVariation"))}];
    ++*(*(*(a1 + 64) + 8) + 24);
  }

  v10 = *(a1 + 32);
  v11 = *(*(a1 + 72) + 8);
  obj = *(v11 + 40);
  v12 = [v10 isCancelledWithError:&obj];
  objc_storeStrong((v11 + 40), obj);
  if (v12)
  {
    *(*(*(a1 + 80) + 8) + 24) = 2;
    *a4 = 1;
  }

  [*(a1 + 40) setCompletedUnitCount:{objc_msgSend(*(a1 + 40), "completedUnitCount") + 1}];
}

void __90__PLModelMigrationAction_DeleteOrphanedFaces_performActionWithManagedObjectContext_error___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = *(a1 + 32);
  v8 = *(*(a1 + 56) + 8);
  obj = *(v8 + 40);
  v9 = [v7 isCancelledWithError:&obj];
  objc_storeStrong((v8 + 40), obj);
  if (v9)
  {
    *(*(*(a1 + 64) + 8) + 24) = 2;
    *a4 = 1;
  }

  else
  {
    [*(a1 + 40) deleteObject:v6];
  }

  [*(a1 + 48) setCompletedUnitCount:{objc_msgSend(*(a1 + 48), "completedUnitCount") + 1}];
}

void __114__PLModelMigrationAction_FixUnpushedVideoComplementResourcesAfterFDR_performActionWithManagedObjectContext_error___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = [v6 masterResourceForCPLType:1];
  v8 = [v6 masterResourceForCPLType:18];
  v9 = [MEMORY[0x1E696AC08] defaultManager];
  v10 = [v8 cplFileURL];
  v11 = [v10 path];
  v12 = [v9 fileExistsAtPath:v11];

  v13 = [v6 master];
  if ([v13 cloudLocalState] != 3)
  {
    v15 = [v6 master];
    if ([v15 cloudLocalState] == 1 && objc_msgSend(v7, "cloudLocalState") == 3)
    {
      v16 = ([v8 cloudLocalState] == 1) & v12;

      if ((v16 & 1) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_8;
    }

LABEL_10:
    goto LABEL_11;
  }

  if ([v7 cloudLocalState] != 3)
  {
    goto LABEL_10;
  }

  v14 = ([v8 cloudLocalState] == 1) & v12;

  if (v14 == 1)
  {
LABEL_8:
    [v6 setCloudLocalState:0];
    v17 = [v6 master];
    [v17 setCloudLocalState:0];

    [v8 setCloudLocalState:0];
    ++*(*(*(a1 + 48) + 8) + 24);
  }

LABEL_11:
  v18 = *(a1 + 32);
  v19 = *(*(a1 + 56) + 8);
  obj = *(v19 + 40);
  v20 = [v18 isCancelledWithError:&obj];
  objc_storeStrong((v19 + 40), obj);
  if (v20)
  {
    *(*(*(a1 + 64) + 8) + 24) = 2;
    *a4 = 1;
  }

  [*(a1 + 40) setCompletedUnitCount:{objc_msgSend(*(a1 + 40), "completedUnitCount") + 1}];
}

void __129__PLModelMigrationAction_MigrateSuggestedByClientTypeCameraSmartSharing_performActionWithManagedObjectContext_error_shouldForce___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  if (([v6 libraryScopeShareState] & 0x18) == 8)
  {
    PLLibraryScopeAssetRemoveSuggestedByClientType(v6);
    PLLibraryScopeAssetSetSuggestedByClientType(2, v6);
    ++*(*(*(a1 + 48) + 8) + 24);
  }

  v7 = *(a1 + 32);
  v8 = *(*(a1 + 56) + 8);
  obj = *(v8 + 40);
  v9 = [v7 isCancelledWithError:&obj];
  objc_storeStrong((v8 + 40), obj);
  if (v9)
  {
    *(*(*(a1 + 64) + 8) + 24) = 2;
    *a4 = 1;
  }

  [*(a1 + 40) setCompletedUnitCount:{objc_msgSend(*(a1 + 40), "completedUnitCount") + 1}];
}

void __94__PLModelMigrationAction_UnTrashSharedDuplicates_performActionWithManagedObjectContext_error___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = [v6 master];
  v8 = [v7 objectIDsForRelationshipNamed:@"assets"];
  v9 = [v8 count];

  if (v9 >= 2)
  {
    [v6 unTrash];
    if ([v6 cloudLocalState] == 4)
    {
      [v6 setUploadAttempts:0];
      [v6 setLastUploadAttemptDate:0];
    }

    [v6 setCloudLocalState:0];
    [v6 persistMetadataToFilesystem];
    ++*(*(*(a1 + 48) + 8) + 24);
  }

  v10 = *(a1 + 32);
  v11 = *(*(a1 + 56) + 8);
  obj = *(v11 + 40);
  v12 = [v10 isCancelledWithError:&obj];
  objc_storeStrong((v11 + 40), obj);
  if (v12)
  {
    *(*(*(a1 + 64) + 8) + 24) = 2;
    *a4 = 1;
  }

  [*(a1 + 40) setCompletedUnitCount:{objc_msgSend(*(a1 + 40), "completedUnitCount") + 1}];
}

void __115__PLModelMigrationAction_UpdateDuplicateProcessingState_processAssetStateMap_pendingParentUnitCount_context_error___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = [v6 additionalAttributes];
  v8 = [v7 duplicateDetectorPerceptualProcessingState];

  v9 = [*(a1 + 32) shortValue] | v8;
  v10 = [v6 additionalAttributes];
  [v10 setDuplicateDetectorPerceptualProcessingState:v9];

  v11 = [v6 additionalAttributes];
  v12 = [v11 containsDuplicateDetectorPerceptualProcessingState:16];

  if (v12)
  {
    v13 = *(a1 + 40);
    v14 = [v6 objectID];
    [v13 addObject:v14];
  }

  v15 = [v6 additionalAttributes];
  v16 = [v15 containsDuplicateDetectorPerceptualProcessingState:64];

  if (v16)
  {
    v17 = *(a1 + 40);
    v18 = [v6 objectID];
    [v17 addObject:v18];
  }

  v19 = *(a1 + 48);
  v20 = *(*(a1 + 64) + 8);
  obj = *(v20 + 40);
  v21 = [v19 isCancelledWithError:&obj];
  objc_storeStrong((v20 + 40), obj);
  if (v21)
  {
    *(*(*(a1 + 72) + 8) + 24) = 2;
    *a4 = 1;
  }

  [*(a1 + 56) setCompletedUnitCount:{objc_msgSend(*(a1 + 56), "completedUnitCount") + 1}];
}

void __101__PLModelMigrationAction_GenerateMemoryStartAndEndDates_performActionWithManagedObjectContext_error___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [*(a1 + 32) cancellableDiscreteProgressWithTotalUnitCount:objc_msgSend(a2 pendingParentUnitCount:{"count"), 0}];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void __101__PLModelMigrationAction_GenerateMemoryStartAndEndDates_performActionWithManagedObjectContext_error___block_invoke_3(void *a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v6 = a3;
  v7 = a1[4];
  v8 = *(a1[5] + 8);
  obj = *(v8 + 40);
  v9 = [v7 isCancelledWithError:&obj];
  objc_storeStrong((v8 + 40), obj);
  if (v9)
  {
    *(*(a1[6] + 8) + 24) = 2;
    *a4 = 1;
  }

  else
  {
    [v6 recalculateStartAndEndDates];
    ++*(*(a1[7] + 8) + 24);
    v10 = *(*(a1[8] + 8) + 40);
    [v10 setCompletedUnitCount:{objc_msgSend(v10, "completedUnitCount") + 1}];
  }
}

id __115__PLModelMigrationAction_moveLocalVersionTokenFromPlistToGlobalValues_performActionWithManagedObjectContext_error___block_invoke(uint64_t a1)
{
  v51 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696ACD0];
  v3 = objc_opt_class();
  v4 = *(a1 + 32);
  v16 = 0;
  v5 = [v2 unarchivedObjectOfClass:v3 fromData:v4 error:&v16];
  v6 = v16;
  if (!v5)
  {
    v7 = PLMigrationGetLog();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);

    if (v8)
    {
      v9 = [*(a1 + 40) logger];

      if (v9)
      {
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
        v31 = 0u;
        v32 = 0u;
        v29 = 0u;
        v30 = 0u;
        v27 = 0u;
        v28 = 0u;
        v26 = 0u;
        v24 = 0u;
        v25 = 0u;
        v22 = 0u;
        v23 = 0u;
        v20 = 0u;
        v21 = 0u;
        *buf = 0u;
        v10 = PLMigrationGetLog();
        os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
        v17 = 138412290;
        v18 = v6;
        LODWORD(v15) = 12;
        v11 = _os_log_send_and_compose_impl();

        v12 = [*(a1 + 40) logger];
        [v12 logWithMessage:v11 fromCodeLocation:"PLModelMigrationActions_18000.m" type:{274, 16}];

        if (v11 != buf)
        {
          free(v11);
        }
      }

      else
      {
        v13 = PLMigrationGetLog();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          *&buf[4] = v6;
          _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_ERROR, "Unable to unarchive token data: %@", buf, 0xCu);
        }
      }
    }
  }

  return v5;
}

void __115__PLModelMigrationAction_MigrateMemoryPendingStateStoryToCreationType_performActionWithManagedObjectContext_error___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [*(a1 + 32) cancellableDiscreteProgressWithTotalUnitCount:objc_msgSend(a2 pendingParentUnitCount:{"count"), 0}];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void __115__PLModelMigrationAction_MigrateMemoryPendingStateStoryToCreationType_performActionWithManagedObjectContext_error___block_invoke_3(void *a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v6 = a3;
  v7 = a1[4];
  v8 = *(a1[5] + 8);
  obj = *(v8 + 40);
  v9 = [v7 isCancelledWithError:&obj];
  objc_storeStrong((v8 + 40), obj);
  if (v9)
  {
    *(*(a1[6] + 8) + 24) = 2;
    *a4 = 1;
  }

  else
  {
    [v6 setPendingState:0];
    [v6 setCreationType:1];
    ++*(*(a1[7] + 8) + 24);
    v10 = *(*(a1[8] + 8) + 40);
    [v10 setCompletedUnitCount:{objc_msgSend(v10, "completedUnitCount") + 1}];
  }
}

void __106__PLModelMigrationAction_UpdatePlaybackControlBadgeAttribute_performActionWithManagedObjectContext_error___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [*(a1 + 32) cancellableDiscreteProgressWithTotalUnitCount:objc_msgSend(a2 pendingParentUnitCount:{"count"), 0}];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void __106__PLModelMigrationAction_UpdatePlaybackControlBadgeAttribute_performActionWithManagedObjectContext_error___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  v4 = [v6 packedBadgeAttributes];
  if (v4 != (v4 | 0x20))
  {
    [v6 setPackedBadgeAttributes:?];
  }

  v5 = *(*(*(a1 + 32) + 8) + 40);
  [v5 setCompletedUnitCount:{objc_msgSend(v5, "completedUnitCount") + 1}];
}

void __98__PLModelMigrationAction_RemoveLabelsFromSyndication_performActionWithManagedObjectContext_error___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [*(a1 + 32) cancellableDiscreteProgressWithTotalUnitCount:objc_msgSend(a2 pendingParentUnitCount:{"count"), 0}];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void __98__PLModelMigrationAction_RemoveLabelsFromSyndication_performActionWithManagedObjectContext_error___block_invoke_3(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v73 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = *(*(a1 + 48) + 8);
  obj = *(v8 + 40);
  v9 = [v7 isCancelledWithError:&obj];
  objc_storeStrong((v8 + 40), obj);
  if (!v9)
  {
    v10 = *(*(a1 + 48) + 8);
    v36 = *(v10 + 40);
    v11 = [v6 removeFromAdditionalLabelsOnAllEdgesWithError:&v36];
    objc_storeStrong((v10 + 40), v36);
    if (v11)
    {
      v12 = *(*(a1 + 48) + 8);
      v35 = *(v12 + 40);
      v13 = [v6 removeFromAdditionalLabelsOnAllNodesWithError:&v35];
      objc_storeStrong((v12 + 40), v35);
      if (v13)
      {
        [*(a1 + 40) deleteObject:v6];
        v14 = *(*(*(a1 + 64) + 8) + 40);
        [v14 setCompletedUnitCount:{objc_msgSend(v14, "completedUnitCount") + 1}];
        goto LABEL_21;
      }

      v25 = PLMigrationGetLog();
      v26 = os_log_type_enabled(v25, OS_LOG_TYPE_ERROR);

      if (v26)
      {
        v27 = [*(a1 + 32) logger];

        if (v27)
        {
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
          v46 = 0u;
          v44 = 0u;
          v45 = 0u;
          v43 = 0u;
          memset(buf, 0, sizeof(buf));
          v28 = PLMigrationGetLog();
          os_log_type_enabled(v28, OS_LOG_TYPE_ERROR);
          v29 = *(*(*(a1 + 48) + 8) + 40);
          v38 = 138412546;
          v39 = v6;
          v40 = 2112;
          v41 = v29;
          LODWORD(v34) = 22;
          v20 = _os_log_send_and_compose_impl();

          v21 = [*(a1 + 32) logger];
          v22 = v21;
          v23 = v20;
          v24 = 594;
LABEL_12:
          [v21 logWithMessage:v23 fromCodeLocation:"PLModelMigrationActions_18000.m" type:{v24, 16}];

          if (v20 != buf)
          {
            free(v20);
          }

          goto LABEL_20;
        }

        v30 = PLMigrationGetLog();
        if (!os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_19;
        }

        v33 = *(*(*(a1 + 48) + 8) + 40);
        *buf = 138412546;
        *&buf[4] = v6;
        *&buf[12] = 2112;
        *&buf[14] = v33;
        v32 = "failed to disassociate label: %@, from nodes with error: %@";
LABEL_18:
        _os_log_impl(&dword_19BF1F000, v30, OS_LOG_TYPE_ERROR, v32, buf, 0x16u);
LABEL_19:
      }
    }

    else
    {
      v15 = PLMigrationGetLog();
      v16 = os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);

      if (v16)
      {
        v17 = [*(a1 + 32) logger];

        if (v17)
        {
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
          v46 = 0u;
          v44 = 0u;
          v45 = 0u;
          v43 = 0u;
          memset(buf, 0, sizeof(buf));
          v18 = PLMigrationGetLog();
          os_log_type_enabled(v18, OS_LOG_TYPE_ERROR);
          v19 = *(*(*(a1 + 48) + 8) + 40);
          v38 = 138412546;
          v39 = v6;
          v40 = 2112;
          v41 = v19;
          LODWORD(v34) = 22;
          v20 = _os_log_send_and_compose_impl();

          v21 = [*(a1 + 32) logger];
          v22 = v21;
          v23 = v20;
          v24 = 598;
          goto LABEL_12;
        }

        v30 = PLMigrationGetLog();
        if (!os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_19;
        }

        v31 = *(*(*(a1 + 48) + 8) + 40);
        *buf = 138412546;
        *&buf[4] = v6;
        *&buf[12] = 2112;
        *&buf[14] = v31;
        v32 = "failed to disassociate label: %@, from edges with error: %@";
        goto LABEL_18;
      }
    }

LABEL_20:
    *(*(*(a1 + 56) + 8) + 24) = 3;
    goto LABEL_21;
  }

  *(*(*(a1 + 56) + 8) + 24) = 2;
  *a4 = 1;
LABEL_21:
}

void __117__PLModelMigrationAction_DeletePLGeneratedAssetDescriptionNodesAndLabel_performActionWithManagedObjectContext_error___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [*(a1 + 32) cancellableDiscreteProgressWithTotalUnitCount:objc_msgSend(a2 pendingParentUnitCount:{"count"), 0}];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void __117__PLModelMigrationAction_DeletePLGeneratedAssetDescriptionNodesAndLabel_performActionWithManagedObjectContext_error___block_invoke_3(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = *(*(a1 + 48) + 8);
  obj = *(v8 + 40);
  v9 = [v7 isCancelledWithError:&obj];
  objc_storeStrong((v8 + 40), obj);
  if (v9)
  {
    *(*(*(a1 + 56) + 8) + 24) = 2;
    *a4 = 1;
  }

  else
  {
    [*(a1 + 40) deleteObject:v6];
  }
}

void __105__PLModelMigrationAction_FixSignExtended32bSceneIdentifiers_performActionWithManagedObjectContext_error___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [*(a1 + 32) cancellableDiscreteProgressWithTotalUnitCount:objc_msgSend(a2 pendingParentUnitCount:{"count"), 0}];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void __105__PLModelMigrationAction_FixSignExtended32bSceneIdentifiers_performActionWithManagedObjectContext_error___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if ([v5 sceneIdentifier] >> 32)
  {
    [v5 setSceneIdentifier:{objc_msgSend(v5, "sceneIdentifier")}];
  }

  v4 = *(*(*(a1 + 32) + 8) + 40);
  [v4 setCompletedUnitCount:{objc_msgSend(v4, "completedUnitCount") + 1}];
}

void __107__PLModelMigrationAction_ReKeyResourcesIncorrectlyStoredAsM4A_performActionWithManagedObjectContext_error___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [*(a1 + 32) cancellableDiscreteProgressWithTotalUnitCount:objc_msgSend(a2 pendingParentUnitCount:{"count"), 0}];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void __107__PLModelMigrationAction_ReKeyResourcesIncorrectlyStoredAsM4A_performActionWithManagedObjectContext_error___block_invoke_3(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v71 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = *(*(a1 + 40) + 8);
  obj = *(v8 + 40);
  v9 = [v7 isCancelledWithError:&obj];
  objc_storeStrong((v8 + 40), obj);
  if (v9)
  {
    *(*(*(a1 + 48) + 8) + 24) = 2;
    *a4 = 1;
  }

  else
  {
    v10 = [v6 dataStoreKeyData];
    buf[0] = 0;
    [v10 getBytes:buf length:1];
    v11 = buf[0];

    if (v11 == 3)
    {
      v12 = objc_alloc(MEMORY[0x1E695DF88]);
      v13 = [v6 dataStoreKeyData];
      v14 = [v12 initWithData:v13];

      v15 = [v14 mutableBytes];
      v16 = *(v15 + 1) | (*(v15 + 5) << 32);
      if ((v16 & 0x7F80000000) == 0xE00000000)
      {
        v17 = v16 & 0x8C7FFFFFFFLL;
        *(v15 + 1) = v17;
        *(v15 + 5) = BYTE4(v17);
        [v6 setDataStoreKeyData:v14];
        v18 = PLMigrationGetLog();
        v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);

        if (v19)
        {
          v20 = [*(a1 + 32) logger];

          if (v20)
          {
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
            memset(buf, 0, sizeof(buf));
            v21 = PLMigrationGetLog();
            os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
            v22 = [v6 objectID];
            v23 = [v6 dataStoreKey];
            v24 = [v6 assetID];
            v25 = [v23 fileURLForAssetID:v24];
            v36 = 138412546;
            v37 = v22;
            v38 = 2112;
            v39 = v25;
            LODWORD(v34) = 22;
            v26 = _os_log_send_and_compose_impl();

            v27 = [*(a1 + 32) logger];
            [v27 logWithMessage:v26 fromCodeLocation:"PLModelMigrationActions_18000.m" type:{661, 0}];

            if (v26 != buf)
            {
              free(v26);
            }
          }

          else
          {
            v28 = PLMigrationGetLog();
            if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
            {
              v29 = [v6 objectID];
              v30 = [v6 dataStoreKey];
              v31 = [v6 assetID];
              v32 = [v30 fileURLForAssetID:v31];
              *buf = 138412546;
              *&buf[4] = v29;
              *&buf[12] = 2112;
              *&buf[14] = v32;
              _os_log_impl(&dword_19BF1F000, v28, OS_LOG_TYPE_DEFAULT, "Patched dataStoreKeyData for resource with ID: %@, now points to: %@", buf, 0x16u);
            }
          }
        }

        v33 = *(*(*(a1 + 56) + 8) + 40);
        [v33 setCompletedUnitCount:{objc_msgSend(v33, "completedUnitCount") + 1}];
      }
    }
  }
}

void __97__PLModelMigrationAction_DeleteDanglingPLGraphEdges_performActionWithManagedObjectContext_error___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [*(a1 + 32) cancellableDiscreteProgressWithTotalUnitCount:objc_msgSend(a2 pendingParentUnitCount:{"count"), 0}];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

uint64_t __97__PLModelMigrationAction_DeleteDanglingPLGraphEdges_performActionWithManagedObjectContext_error___block_invoke_3(uint64_t a1, void *a2)
{
  [a2 deleteObject:?];
  v3 = *(*(*(a1 + 32) + 8) + 40);
  v4 = [v3 completedUnitCount] + 1;

  return [v3 setCompletedUnitCount:v4];
}

void __99__PLModelMigrationAction_RemoveUnverifiedSocialGroups_performActionWithManagedObjectContext_error___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [*(a1 + 32) cancellableDiscreteProgressWithTotalUnitCount:objc_msgSend(a2 pendingParentUnitCount:{"count"), 0}];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void __99__PLModelMigrationAction_RemoveUnverifiedSocialGroups_performActionWithManagedObjectContext_error___block_invoke_3(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = *(*(a1 + 48) + 8);
  obj = *(v8 + 40);
  v9 = [v7 isCancelledWithError:&obj];
  objc_storeStrong((v8 + 40), obj);
  if (v9)
  {
    *(*(*(a1 + 56) + 8) + 24) = 2;
    *a4 = 1;
  }

  else
  {
    v10 = [(PLGraphNodeContainer *)PLSocialGroup newNodeContainerWithNode:v6];
    if (![v10 socialGroupVerifiedType])
    {
      [*(a1 + 40) deleteObject:v6];
    }

    v11 = *(*(*(a1 + 64) + 8) + 40);
    [v11 setCompletedUnitCount:{objc_msgSend(v11, "completedUnitCount") + 1}];
  }
}

uint64_t __107__PLModelMigrationAction_PopulateCloudFeedEntryIsMine__migrateEntriesWithFetchRequest_moc_progress_result___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  [a3 recalcIsMine];
  v4 = *(a1 + 32);
  v5 = [v4 completedUnitCount] + 1;

  return [v4 setCompletedUnitCount:v5];
}

void __88__PLModelMigrationAction_PopulateKeyAssets_performActionWithManagedObjectContext_error___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [*(a1 + 32) cancellableDiscreteProgressWithTotalUnitCount:objc_msgSend(a2 pendingParentUnitCount:{"count"), 0}];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void __88__PLModelMigrationAction_PopulateKeyAssets_performActionWithManagedObjectContext_error___block_invoke_3(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = *(*(a1 + 48) + 8);
  obj = *(v8 + 40);
  v9 = [v7 isCancelledWithError:&obj];
  objc_storeStrong((v8 + 40), obj);
  if (v9)
  {
    *(*(*(a1 + 56) + 8) + 24) = 2;
    *a4 = 1;
  }

  else
  {
    [*(a1 + 40) refreshObject:v6 mergeChanges:1];
    [v6 updateKeyAssetsIfNeeded];
    v10 = *(*(*(a1 + 64) + 8) + 40);
    [v10 setCompletedUnitCount:{objc_msgSend(v10, "completedUnitCount") + 1}];
  }
}

void __110__PLModelMigrationAction_ReevaluateAllowedForAnalysisForGPAssets_performActionWithManagedObjectContext_error___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [*(a1 + 32) cancellableDiscreteProgressWithTotalUnitCount:objc_msgSend(a2 pendingParentUnitCount:{"count"), 0}];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void __110__PLModelMigrationAction_ReevaluateAllowedForAnalysisForGPAssets_performActionWithManagedObjectContext_error___block_invoke_3(void *a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v6 = a3;
  v7 = a1[4];
  v8 = *(a1[5] + 8);
  obj = *(v8 + 40);
  v9 = [v7 isCancelledWithError:&obj];
  objc_storeStrong((v8 + 40), obj);
  if (v9)
  {
    *(*(a1[6] + 8) + 24) = 2;
    *a4 = 1;
  }

  else
  {
    v10 = [v6 asset];
    v11 = [v10 additionalAttributes];
    [v11 updateAllowedForAnalysis];

    v12 = *(*(a1[7] + 8) + 40);
    [v12 setCompletedUnitCount:{objc_msgSend(v12, "completedUnitCount") + 1}];
  }
}

void __106__PLModelMigrationAction_FixComputeSyncResourceFileExtension_performActionWithManagedObjectContext_error___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [*(a1 + 32) cancellableDiscreteProgressWithTotalUnitCount:objc_msgSend(a2 pendingParentUnitCount:{"count"), 0}];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void __106__PLModelMigrationAction_FixComputeSyncResourceFileExtension_performActionWithManagedObjectContext_error___block_invoke_3(void *a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v6 = a3;
  v7 = a1[4];
  v8 = *(a1[5] + 8);
  obj = *(v8 + 40);
  v9 = [v7 isCancelledWithError:&obj];
  objc_storeStrong((v8 + 40), obj);
  if (v9)
  {
    *(*(a1[6] + 8) + 24) = 2;
    *a4 = 1;
  }

  else
  {
    v10 = [v6 cloudLastOnDemandDownloadDate];

    v11 = [v6 asset];
    v12 = [MEMORY[0x1E696AC08] defaultManager];
    v13 = [v6 fileURL];
    v14 = [v13 path];
    v15 = [v12 fileExistsAtPath:v14];

    if (v15)
    {
      v16 = [v6 fileURL];
      v17 = [v16 path];
      v18 = [v11 pathForComputeSyncWrapperFile];
      [v12 moveItemAtPath:v17 toPath:v18 error:0];
    }

    [v11 updateComputeSyncResourceAfterDownloadWithResource:v6 onDemandDownload:v10 != 0];
    v19 = *(*(a1[7] + 8) + 40);
    [v19 setCompletedUnitCount:{objc_msgSend(v19, "completedUnitCount") + 1}];
  }
}

void __100__PLModelMigrationAction_UpdateTripHighlightDateTitles_performActionWithManagedObjectContext_error___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [*(a1 + 32) cancellableDiscreteProgressWithTotalUnitCount:objc_msgSend(a2 pendingParentUnitCount:{"count"), 0}];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

uint64_t __100__PLModelMigrationAction_UpdateTripHighlightDateTitles_performActionWithManagedObjectContext_error___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  [PLPhotosHighlightGenerator updateTitlesForHighlight:a3 dateRangeTitleGenerator:*(a1 + 32) options:0];
  v4 = *(*(*(a1 + 40) + 8) + 40);
  v5 = [v4 completedUnitCount] + 1;

  return [v4 setCompletedUnitCount:v5];
}

void __96__PLModelMigrationAction_DeleteInvalidSocialGroups_performActionWithManagedObjectContext_error___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [*(a1 + 32) cancellableDiscreteProgressWithTotalUnitCount:objc_msgSend(a2 pendingParentUnitCount:{"count"), 0}];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void __96__PLModelMigrationAction_DeleteInvalidSocialGroups_performActionWithManagedObjectContext_error___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = a3;
  v4 = [(PLGraphNodeContainer *)PLSocialGroup newNodeContainerWithNode:?];
  v5 = [v4 members];
  v6 = [v5 count];

  if (v6 <= 1)
  {
    [*(a1 + 32) deleteObject:v8];
    ++*(*(*(a1 + 40) + 8) + 24);
  }

  v7 = *(*(*(a1 + 48) + 8) + 40);
  [v7 setCompletedUnitCount:{objc_msgSend(v7, "completedUnitCount") + 1}];
}

void __99__PLModelMigrationAction_UpdateHighlightCollageAssets_performActionWithManagedObjectContext_error___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [*(a1 + 32) cancellableDiscreteProgressWithTotalUnitCount:objc_msgSend(a2 pendingParentUnitCount:{"count"), 0}];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

uint64_t __99__PLModelMigrationAction_UpdateHighlightCollageAssets_performActionWithManagedObjectContext_error___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  [a3 recalculateCollageAssets];
  v4 = *(*(*(a1 + 32) + 8) + 40);
  v5 = [v4 completedUnitCount] + 1;

  return [v4 setCompletedUnitCount:v5];
}

void __98__PLModelMigrationAction_FixBlankPhotosFromVideoMode_performActionWithManagedObjectContext_error___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [*(a1 + 32) cancellableDiscreteProgressWithTotalUnitCount:objc_msgSend(a2 pendingParentUnitCount:{"count"), 0}];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void __98__PLModelMigrationAction_FixBlankPhotosFromVideoMode_performActionWithManagedObjectContext_error___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [v6 modernResources];
  v8 = [v7 count];

  if (v8 != 2)
  {
    goto LABEL_18;
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v9 = [v6 modernResources];
  v10 = [v9 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (!v10)
  {

LABEL_18:
    v12 = 0;
    goto LABEL_19;
  }

  v11 = v10;
  v22 = a1;
  v23 = v6;
  v24 = 0;
  v12 = 0;
  v13 = *v27;
  v25 = *MEMORY[0x1E6982E58];
  do
  {
    for (i = 0; i != v11; ++i)
    {
      if (*v27 != v13)
      {
        objc_enumerationMutation(v9);
      }

      v15 = *(*(&v26 + 1) + 8 * i);
      if ([v15 recipeID] == 65938)
      {
        v16 = v12;
        v12 = v15;
      }

      else
      {
        v16 = [v15 uniformTypeIdentifier];
        v17 = [v16 identifier];
        v18 = [v25 identifier];
        if (v17 == v18)
        {
          v19 = [v15 fileURL];
          v20 = v19 != 0;

          v24 |= v20;
        }
      }
    }

    v11 = [v9 countByEnumeratingWithState:&v26 objects:v30 count:16];
  }

  while (v11);

  if (v12)
  {
    v21 = [v12 dataStoreKeyData];
    v6 = v23;
    if (v21)
    {
    }

    else if ((([v12 localAvailability] == -1) & v24) == 1)
    {
      [v23 setAdjustmentsState:0];
      [v12 deleteResource];
      [*(*(*(v22 + 32) + 8) + 40) setCompletedUnitCount:{objc_msgSend(*(*(*(v22 + 32) + 8) + 40), "completedUnitCount") + 1}];
    }
  }

  else
  {
    v6 = v23;
  }

LABEL_19:
}

void __124__PLModelMigrationAction_ReprocessInvalidDuplicateHashes_removeDuplicateHashesAndResetAlbumsWithManagedObjectContext_error___block_invoke(uint64_t a1, void *a2)
{
  v10 = a2;
  v3 = [v10 additionalAttributes];
  v4 = [v3 sceneprint];

  v5 = *(a1 + 32);
  v6 = [v4 duplicateMatchingData];
  if ([v5 containsObject:v6])
  {
  }

  else
  {
    v7 = *(a1 + 32);
    v8 = [v4 duplicateMatchingAlternateData];
    LODWORD(v7) = [v7 containsObject:v8];

    if (!v7)
    {
      goto LABEL_5;
    }
  }

  [v10 removeFromDuplicateAlbum];
  PLResetMediaProcessingStateOnAsset(2, v10, 1uLL);
  v9 = [v10 additionalAttributes];
  [v9 setDuplicateMatchingData:0 duplicateMatchingAlternateData:0 processingSucceeded:1];

LABEL_5:
}

void __114__PLModelMigrationAction_ResetCustomSocialGroupDataForRejectedGroups_performActionWithManagedObjectContext_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = [(PLGraphNodeContainer *)PLSocialGroup newNodeContainerWithNode:a2];
  if ([v3 socialGroupVerifiedType] == -1)
  {
    v4 = *(*(a1 + 32) + 8);
    obj = *(v4 + 40);
    v5 = [v3 resetCustomDataWithError:&obj];
    objc_storeStrong((v4 + 40), obj);
    if ((v5 & 1) == 0)
    {
      v6 = PLMigrationGetLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v7 = [v3 uuid];
        v8 = *(*(*(a1 + 32) + 8) + 40);
        *buf = 138412546;
        v11 = v7;
        v12 = 2112;
        v13 = v8;
        _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_ERROR, "PLModelMigrationAction_ResetCustomSocialGroupDataForRejectedGroups: error removing custom data for socialGroup with UUID: %@. Error: %@", buf, 0x16u);
      }
    }
  }
}

uint64_t __104__PLModelMigrationAction_UpdateEditSuggestionImageRecipeID_performActionWithManagedObjectContext_error___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 setRecipeID:66137];
  ++*(*(*(a1 + 32) + 8) + 24);
  return result;
}

void __103__PLModelMigrationAction_updateBrokenStyleableFromRebuild_performActionWithManagedObjectContext_error___block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = [v8 metadataFromMediaPropertiesOrOriginalResource];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 smartStyleIsReversible];
    v6 = [v5 BOOLValue];

    if (v6)
    {
      v7 = [v8 additionalAttributes];
      [v7 setSleetIsReversible:1];

      [*(a1 + 32) setCompletedUnitCount:{objc_msgSend(*(a1 + 32), "completedUnitCount") + 1}];
    }
  }
}

void __104__PLModelMigrationAction_FixAssetsWithMissingSaliencyRects_performActionWithManagedObjectContext_error___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [*(a1 + 32) cancellableDiscreteProgressWithTotalUnitCount:objc_msgSend(a2 pendingParentUnitCount:{"count"), 0}];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void __104__PLModelMigrationAction_FixAssetsWithMissingSaliencyRects_performActionWithManagedObjectContext_error___block_invoke_3(void *a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v6 = a3;
  v7 = a1[4];
  v8 = *(a1[5] + 8);
  obj = *(v8 + 40);
  v9 = [v7 isCancelledWithError:&obj];
  objc_storeStrong((v8 + 40), obj);
  if (v9)
  {
    *(*(a1[6] + 8) + 24) = 2;
    *a4 = 1;
  }

  else
  {
    v10 = [v6 additionalAttributes];
    [v10 setSceneAnalysisVersion:0];

    v11 = [v6 additionalAttributes];
    [v11 setSceneAnalysisTimestamp:0];

    ++*(*(a1[7] + 8) + 24);
    v12 = *(*(a1[8] + 8) + 40);
    [v12 setCompletedUnitCount:{objc_msgSend(v12, "completedUnitCount") + 1}];
  }
}

void __106__PLModelMigrationAction_InstallComputeSyncResourcesIfNeeded_performActionWithManagedObjectContext_error___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [*(a1 + 32) cancellableDiscreteProgressWithTotalUnitCount:objc_msgSend(a2 pendingParentUnitCount:{"count"), 0}];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void __106__PLModelMigrationAction_InstallComputeSyncResourcesIfNeeded_performActionWithManagedObjectContext_error___block_invoke_3(void *a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v6 = a3;
  v7 = a1[4];
  v8 = *(a1[5] + 8);
  obj = *(v8 + 40);
  v9 = [v7 isCancelledWithError:&obj];
  objc_storeStrong((v8 + 40), obj);
  if (v9)
  {
    *(*(a1[6] + 8) + 24) = 2;
    *a4 = 1;
  }

  else
  {
    v10 = [v6 asset];
    if ([v10 installSparseFullStageComputeSyncResourceIfNeeded])
    {
      ++*(*(a1[7] + 8) + 24);
    }

    v11 = *(*(a1[8] + 8) + 40);
    [v11 setCompletedUnitCount:{objc_msgSend(v11, "completedUnitCount") + 1}];
  }
}

void __94__PLModelMigrationAction_ProcessAlbumAssociation_performActionWithManagedObjectContext_error___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [v3 albums];
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        if ([*(*(&v9 + 1) + 8 * i) supportsAssetAssociativity])
        {
          [v3 setAlbumAssociativity:1];
          ++*(*(*(a1 + 32) + 8) + 24);
          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

void __93__PLModelMigrationAction_DeleteEmptyGraphGroups_performActionWithManagedObjectContext_error___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [(PLGraphNodeContainer *)PLSocialGroup newNodeContainerWithNode:?];
  if ([v3 socialGroupVerifiedType] == 2)
  {
    v4 = [v3 exclusiveAssetIDs];
    v5 = [v4 count];

    if (!v5)
    {
      [*(a1 + 32) deleteObject:v6];
    }
  }
}

void __105__PLModelMigrationAction_UpdateGenericAlbumModificationDate_performActionWithManagedObjectContext_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 creationDate];
  [v2 setLastModifiedDate:v3];
}

void __100__PLModelMigrationAction_PromoteLeftoverDeferredAssets_performActionWithManagedObjectContext_error___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  [v6 setLocalAvailabilityTarget:1];
  [v6 setLocalAvailability:0xFFFFFFFFLL];
  v7 = [v6 photoLibrary];

  v8 = [v7 libraryServicesManager];
  v9 = [v8 backgroundJobService];
  [v9 signalBackgroundProcessingNeededOnLibrary:v7];

  v10 = *(a1 + 32);
  v11 = *(*(a1 + 48) + 8);
  obj = *(v11 + 40);
  LODWORD(v9) = [v10 isCancelledWithError:&obj];
  objc_storeStrong((v11 + 40), obj);
  if (v9)
  {
    *(*(*(a1 + 56) + 8) + 24) = 2;
    *a4 = 1;
  }

  [*(a1 + 40) setCompletedUnitCount:{objc_msgSend(*(a1 + 40), "completedUnitCount") + 1}];
}

uint64_t __124__PLModelMigrationAction_FixResourcesIncorrectlyAssignedToSyndicationDataStore_performActionWithManagedObjectContext_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setDataStoreClassID:2];
  [v3 setDataStoreSubtype:3];
  if ([v3 isLocallyAvailable])
  {
    v4 = 1;
  }

  else
  {
    v4 = 0xFFFFFFFFLL;
  }

  [v3 setLocalAvailability:v4];

  v5 = *(a1 + 32);
  v6 = [v5 completedUnitCount] + 1;

  return [v5 setCompletedUnitCount:v6];
}

uint64_t __105__PLModelMigrationAction_MigrateProResPackedBadgeAttributes_performActionWithManagedObjectContext_error___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  [a2 setProResBadgeAttribute:1];
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

void __124__PLModelMigrationAction_RelocateBundleScopeData_updateResourceFilePathWithManagedObjectContext_bundleScope_progress_error___block_invoke(uint64_t a1, void *a2)
{
  v18 = a2;
  v3 = [v18 dataStoreKey];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = [*(a1 + 32) pathManager];
    v6 = [v5 photoDirectoryWithType:*(a1 + 56)];

    v7 = [*(a1 + 32) legacyPrefixPathWithType:*(a1 + 56)];
    v8 = [v18 fileURL];
    v9 = [v8 path];

    if ([v9 hasPrefix:v7])
    {
      v10 = [v9 substringFromIndex:{objc_msgSend(v7, "length")}];
      v11 = [v6 stringByAppendingPathComponent:v10];

      v12 = [PLPrimaryResourceDataStoreFilePathKey alloc];
      v13 = [v18 asset];
      v14 = [v13 assetID];
      v15 = [v14 libraryID];
      v16 = [(PLPrimaryResourceDataStoreFilePathKey *)v12 initWithFilePath:v11 andLibraryID:v15];

      v17 = [(PLPrimaryResourceDataStoreFilePathKey *)v16 keyData];
      [v18 setDataStoreKeyData:v17];

      ++*(*(*(a1 + 48) + 8) + 24);
    }
  }

  [*(a1 + 40) setCompletedUnitCount:{objc_msgSend(*(a1 + 40), "completedUnitCount") + 1}];
}

uint64_t __100__PLModelMigrationAction_SetDefaultFaceAnalysisVersion_performActionWithManagedObjectContext_error___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = [a2 additionalAttributes];
  [v6 setFaceAnalysisVersion:*(a1 + 64)];

  v7 = *(a1 + 32);
  v8 = *(*(a1 + 48) + 8);
  obj = *(v8 + 40);
  v9 = [v7 isCancelledWithError:&obj];
  objc_storeStrong((v8 + 40), obj);
  if (v9)
  {
    *(*(*(a1 + 56) + 8) + 24) = 2;
    *a4 = 1;
  }

  return [*(a1 + 40) setCompletedUnitCount:{objc_msgSend(*(a1 + 40), "completedUnitCount") + 1}];
}

void __125__PLModelMigrationAction_FixBackgroundResourceWorkerModifyingIncorrectResources_performActionWithManagedObjectContext_error___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = [v6 dataStoreKey];

  v8 = v6;
  if (v7)
  {
    v9 = 1;
  }

  else
  {
    if ([v6 dataStoreSubtype] == 1)
    {
      v10 = [v6 asset];
      v11 = [v10 pathForOriginalFile];
      [v6 markAsLocallyAvailableWithFilePath:v11];

      goto LABEL_7;
    }

    v8 = v6;
    v9 = 0xFFFFFFFFLL;
  }

  [v8 setLocalAvailability:v9];
LABEL_7:
  v12 = *(a1 + 32);
  v13 = *(*(a1 + 48) + 8);
  obj = *(v13 + 40);
  v14 = [v12 isCancelledWithError:&obj];
  objc_storeStrong((v13 + 40), obj);
  if (v14)
  {
    *(*(*(a1 + 56) + 8) + 24) = 2;
    *a4 = 1;
  }

  [*(a1 + 40) setCompletedUnitCount:{objc_msgSend(*(a1 + 40), "completedUnitCount") + 1}];
}

void __88__PLModelMigrationAction_ResetGraphPersons_performActionWithManagedObjectContext_error___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  [v5 resetAllFacesToDefault];
  if ([v5 isValidForPersistence])
  {
    v3 = [v5 personUUID];
    v4 = [*(a1 + 32) pathManager];
    [PLPersistedPersonMetadata deleteMetadataFileForPersonUUID:v3 pathManager:v4];
  }

  [v5 deletePersonWithReason:2];
  [*(a1 + 40) setCompletedUnitCount:{objc_msgSend(*(a1 + 40), "completedUnitCount") + 1}];
}

void __109__PLModelMigrationAction_FixPackedBadgeAttributesForRAWPlusJPEG_performActionWithManagedObjectContext_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 asset];
  [v3 recalculateRAWBadgeAttribute];
  [*(a1 + 32) setCompletedUnitCount:{objc_msgSend(*(a1 + 32), "completedUnitCount") + 1}];
}

void __193__PLModelMigrationAction_DeletePetPersonsAndDetectedFaces_deleteManagedObjectsWithManagedObjectContext_entity_predicate_pendingParentUnitCount_deletedIdentifiers_entityIdentifierKeyPath_error___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = *(a1 + 32);
  if (v3)
  {
    NSSelectorFromString(v3);
    if (objc_opt_respondsToSelector())
    {
      v4 = *(a1 + 40);
      v5 = [v6 valueForKey:*(a1 + 32)];
      [v4 addObject:v5];
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v6 deletePersonWithReason:8];
  }

  else
  {
    [*(a1 + 48) deleteObject:v6];
  }

  [*(a1 + 56) setCompletedUnitCount:{objc_msgSend(*(a1 + 56), "completedUnitCount") + 1}];
}

void __101__PLModelMigrationAction_PushAssetsWithPetSyncableFaces_performActionWithManagedObjectContext_error___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v60 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = [v6 assetForFace];
  v8 = v7;
  if (v7)
  {
    if ([v7 cloudLocalState] == 4)
    {
      [v8 setUploadAttempts:0];
      [v8 setLastUploadAttemptDate:0];
    }

    [v8 setCloudLocalState:0];
    v9 = PLMigrationGetLog();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);

    if (v10)
    {
      v11 = [*(a1 + 32) logger];

      if (v11)
      {
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
        v34 = 0u;
        v35 = 0u;
        v32 = 0u;
        v33 = 0u;
        v30 = 0u;
        v31 = 0u;
        memset(buf, 0, sizeof(buf));
        v12 = PLMigrationGetLog();
        os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
        v13 = [v8 scopedIdentifier];
        v14 = [v6 uuid];
        v25 = 138543618;
        v26 = v13;
        v27 = 2114;
        v28 = v14;
        LODWORD(v23) = 22;
        v15 = _os_log_send_and_compose_impl();

        v16 = [*(a1 + 32) logger];
        [v16 logWithMessage:v15 fromCodeLocation:"PLModelMigrationActions_17000.m" type:{336, 0}];

        if (v15 != buf)
        {
          free(v15);
        }
      }

      else
      {
        v17 = PLMigrationGetLog();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v18 = [v8 scopedIdentifier];
          v19 = [v6 uuid];
          *buf = 138543618;
          *&buf[4] = v18;
          *&buf[12] = 2114;
          *&buf[14] = v19;
          _os_log_impl(&dword_19BF1F000, v17, OS_LOG_TYPE_DEFAULT, "[PushAssetsWithPetSyncableFaces] Setting asset %{public}@ to unpushed due to syncable pet face: %{public}@", buf, 0x16u);
        }
      }
    }
  }

  v20 = *(a1 + 32);
  v21 = *(*(a1 + 48) + 8);
  obj = *(v21 + 40);
  v22 = [v20 isCancelledWithError:&obj];
  objc_storeStrong((v21 + 40), obj);
  if (v22)
  {
    *(*(*(a1 + 56) + 8) + 24) = 2;
    *a4 = 1;
  }

  [*(a1 + 40) setCompletedUnitCount:{objc_msgSend(*(a1 + 40), "completedUnitCount") + 1}];
}

void __106__PLModelMigrationAction_MergeDetectedFacesAndDetectedTorsos_performActionWithManagedObjectContext_error___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [*(a1 + 32) cancellableDiscreteProgressWithTotalUnitCount:objc_msgSend(a2 pendingParentUnitCount:{"count"), 0}];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void __106__PLModelMigrationAction_MergeDetectedFacesAndDetectedTorsos_performActionWithManagedObjectContext_error___block_invoke_3(void *a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v6 = a3;
  v7 = [v6 personForTorso];

  if (v7)
  {
    v8 = [v6 personForTorso];
    [v6 setPersonForFace:v8];

    [v6 migration_setPersonForTorso:0];
  }

  v9 = [v6 assetForTorso];

  if (v9)
  {
    v10 = [v6 assetForTorso];
    [v6 setAssetForFace:v10];

    [v6 migration_setAssetForTorso:0];
  }

  v11 = a1[4];
  v12 = *(a1[5] + 8);
  obj = *(v12 + 40);
  v13 = [v11 isCancelledWithError:&obj];
  objc_storeStrong((v12 + 40), obj);
  if (v13)
  {
    *(*(a1[6] + 8) + 24) = 2;
    *a4 = 1;
  }

  v14 = *(*(a1[7] + 8) + 40);
  [v14 setCompletedUnitCount:{objc_msgSend(v14, "completedUnitCount") + 1}];
}

void __109__PLModelMigrationAction_CopyStickerConfidenceScoreToAssetTable_performActionWithManagedObjectContext_error___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [*(a1 + 32) cancellableDiscreteProgressWithTotalUnitCount:objc_msgSend(a2 pendingParentUnitCount:{"count"), 0}];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void __109__PLModelMigrationAction_CopyStickerConfidenceScoreToAssetTable_performActionWithManagedObjectContext_error___block_invoke_3(void *a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v6 = a3;
  v7 = [v6 mediaAnalysisAttributes];
  v8 = [v7 visualSearchAttributes];

  v9 = +[PLVisualSearchAttributes stickerConfidenceScoreKey];
  [v8 pl_floatValueForKey:v9];
  v11 = v10;

  LODWORD(v12) = v11;
  [v6 setStickerConfidenceScore:v12];

  ++*(*(a1[5] + 8) + 24);
  v13 = a1[4];
  v14 = *(a1[6] + 8);
  obj = *(v14 + 40);
  LODWORD(v9) = [v13 isCancelledWithError:&obj];
  objc_storeStrong((v14 + 40), obj);
  if (v9)
  {
    *(*(a1[7] + 8) + 24) = 2;
    *a4 = 1;
  }

  v15 = *(*(a1[8] + 8) + 40);
  [v15 setCompletedUnitCount:{objc_msgSend(v15, "completedUnitCount") + 1}];
}

void __100__PLModelMigrationAction_LibraryScopeTrashedStateFixup_performActionWithManagedObjectContext_error___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [*(a1 + 32) cancellableDiscreteProgressWithTotalUnitCount:objc_msgSend(a2 pendingParentUnitCount:{"count"), 0}];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

uint64_t __100__PLModelMigrationAction_LibraryScopeTrashedStateFixup_performActionWithManagedObjectContext_error___block_invoke_3(void *a1, uint64_t a2, void *a3, _BYTE *a4)
{
  [a3 untrash];
  ++*(*(a1[5] + 8) + 24);
  v6 = a1[4];
  v7 = *(a1[6] + 8);
  obj = *(v7 + 40);
  v8 = [v6 isCancelledWithError:&obj];
  objc_storeStrong((v7 + 40), obj);
  if (v8)
  {
    *(*(a1[7] + 8) + 24) = 2;
    *a4 = 1;
  }

  v9 = *(*(a1[8] + 8) + 40);
  return [v9 setCompletedUnitCount:{objc_msgSend(v9, "completedUnitCount") + 1}];
}

void __103__PLModelMigrationAction_PopulatePersonCloudDetectionType_performActionWithManagedObjectContext_error___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [*(a1 + 32) cancellableDiscreteProgressWithTotalUnitCount:objc_msgSend(a2 pendingParentUnitCount:{"count"), 0}];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void __103__PLModelMigrationAction_PopulatePersonCloudDetectionType_performActionWithManagedObjectContext_error___block_invoke_3(void *a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v6 = a3;
  v7 = a1[4];
  v8 = *(a1[5] + 8);
  obj = *(v8 + 40);
  v9 = [v7 isCancelledWithError:&obj];
  objc_storeStrong((v8 + 40), obj);
  if (v9)
  {
    *(*(a1[6] + 8) + 24) = 2;
    *a4 = 1;
  }

  else
  {
    [v6 setCloudDetectionType:{objc_msgSend(v6, "detectionType")}];
    v10 = *(*(a1[7] + 8) + 40);
    [v10 setCompletedUnitCount:{objc_msgSend(v10, "completedUnitCount") + 1}];
  }
}

void __103__PLModelMigrationAction_SetUniqueEdgeExternalIdentifiers_performActionWithManagedObjectContext_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 willChangeValueForKey:@"externalIdentifier"];
  v4 = [MEMORY[0x1E696AD98] numberWithLongLong:*(*(*(a1 + 32) + 8) + 24)];
  [v3 setPrimitiveValue:v4 forKey:@"externalIdentifier"];

  [v3 didChangeValueForKey:@"externalIdentifier"];
  ++*(*(*(a1 + 32) + 8) + 24);
}

void __103__PLModelMigrationAction_SetUniqueEdgeExternalIdentifiers_performActionWithManagedObjectContext_error___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 willChangeValueForKey:@"edgeExternalIdentifierDataHavingLabel"];
  [v2 setPrimitiveValue:0 forKey:@"edgeExternalIdentifierDataHavingLabel"];
  [v2 didChangeValueForKey:@"edgeExternalIdentifierDataHavingLabel"];
}

id __102__PLModelMigrationAction_RepairSingletons__repairRootFolderFixedOrderKeysInStore_context_pathManager___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) persistentStoreCoordinator];
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a2];
  v6 = PLManagedObjectContextForMigrationActionWithCoordinator(v4, v5, *(a1 + 40), 0);

  return v6;
}

void __102__PLModelMigrationAction_RepairSingletons__repairRootFolderFixedOrderKeysInStore_context_pathManager___block_invoke_2(uint64_t a1)
{
  v2 = [(PLGenericAlbum *)PLManagedFolder albumWithKind:3999 inManagedObjectContext:*(a1 + 32)];
  [v2 enforceFixedOrderKeyComplianceWithOrderKeyManager:*(a1 + 40)];
}

@end