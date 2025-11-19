uint64_t __Block_byref_object_copy__33658(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

__CFString *PLDescriptionForBackgroundJobServiceState(uint64_t a1)
{
  if ((a1 - 1) > 9)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E756B010[a1 - 1];
  }
}

void sub_19C1E984C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C1E9A64(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 128), 8);
  _Block_object_dispose((v1 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_19C1EA6E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id PLBurstUuidFromImageProperties(void *a1)
{
  v1 = [a1 objectForKeyedSubscript:*MEMORY[0x1E696DE30]];
  v2 = [v1 objectForKeyedSubscript:*MEMORY[0x1E69867B0]];

  return v2;
}

id PLSOCGroupIdentifierFromImageProperties(void *a1)
{
  v1 = [a1 objectForKeyedSubscript:*MEMORY[0x1E696DE30]];
  v2 = [v1 objectForKeyedSubscript:*MEMORY[0x1E6986888]];

  return v2;
}

id PLExifColorSpaceFromImageProperties(void *a1)
{
  v1 = [a1 objectForKeyedSubscript:*MEMORY[0x1E696D9B0]];
  v2 = [v1 objectForKeyedSubscript:*MEMORY[0x1E696D968]];

  return v2;
}

id PLExifPixelXDimensionFromImageProperties(void *a1)
{
  v1 = [a1 objectForKeyedSubscript:*MEMORY[0x1E696D9B0]];
  v2 = [v1 objectForKeyedSubscript:*MEMORY[0x1E696DAA8]];

  return v2;
}

id PLExifPixelYDimensionFromImageProperties(void *a1)
{
  v1 = [a1 objectForKeyedSubscript:*MEMORY[0x1E696D9B0]];
  v2 = [v1 objectForKeyedSubscript:*MEMORY[0x1E696DAB0]];

  return v2;
}

uint64_t PLKillProcessNamed()
{
  result = PLPIDForProcessNamed();
  if ((result & 0x80000000) == 0)
  {

    return kill(result, 15);
  }

  return result;
}

uint64_t PLKillPhotoProcesses()
{
  NSLog(&cfstr_KillingPhotoPr.isa);
  PLKillProcessNamed();
  PLKillProcessNamed();
  PLKillProcessNamed();
  PLKillProcessNamed();
  PLKillProcessNamed();
  PLKillProcessNamed();
  PLKillProcessNamed();
  PLKillProcessNamed();
  v0 = PLPIDForProcessNamed();
  v1 = v0;
  if ((v0 & 0x80000000) == 0)
  {
    kill(v0, 9);
  }

  return v1;
}

uint64_t PLResetPhotosState(void *a1, uint64_t a2)
{
  v3 = a1;
  PLKillPhotoProcesses();
  v4 = [v3 photoDirectoryWithType:29];

  v5 = [MEMORY[0x1E696AC08] defaultManager];
  v6 = [v5 removeItemAtPath:v4 error:a2];

  return v6;
}

uint64_t PLResetLocalPhotos(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = PLResetPhotosState(v3, a2);
  v5 = [v3 photoDirectoryWithType:4];

  v6 = [MEMORY[0x1E696AC08] defaultManager];
  LODWORD(a2) = [v6 removeItemAtPath:v5 error:a2];

  return v4 & a2;
}

__CFString *PLStringForResetCloudLibraryMode(unint64_t a1)
{
  if (a1 > 3)
  {
    return @"unknown";
  }

  else
  {
    return off_1E756B2A8[a1];
  }
}

void PLResetSyncStatusWithLibrary(void *a1, void *a2, unint64_t a3, unint64_t a4, int a5)
{
  v10 = a1;
  v9 = a2;
  if ((PLIsAssetsd() & 1) == 0)
  {
    __assert_rtn("PLResetSyncStatusWithLibrary", "PLSProcessAndStateHelper.m", 296, "PLIsAssetsd()");
  }

  PLResetSyncStatusWithLibraryImpl(v10, v9, a3, a4, a5);
}

void PLResetSyncStatusWithLibraryImpl(void *a1, void *a2, unint64_t a3, unint64_t a4, int a5)
{
  v29 = *MEMORY[0x1E69E9840];
  v9 = a1;
  v10 = a2;
  if ((*MEMORY[0x1E6994D48] & 1) == 0)
  {
    v11 = __CPLAssetsdOSLogDomain();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      if (a3 > 3)
      {
        v12 = @"unknown";
      }

      else
      {
        v12 = off_1E756B2A8[a3];
      }

      if (a4 > 2)
      {
        v13 = @"unknown";
      }

      else
      {
        v13 = off_1E756E888[a4];
      }

      v14 = v13;
      *buf = 138412802;
      v24 = v12;
      v25 = 2112;
      v26 = v14;
      v27 = 1024;
      v28 = a5;
      _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_DEFAULT, "Resetting library for CPL with mode: %@, configuration: %@, isAppleTV: %d", buf, 0x1Cu);
    }
  }

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __PLResetSyncStatusWithLibraryImpl_block_invoke;
  v17[3] = &unk_1E756B288;
  v20 = a3;
  v21 = a4;
  v22 = a5;
  v18 = v9;
  v19 = v10;
  v15 = v10;
  v16 = v9;
  [v16 performBlockAndWait:v17];
}

uint64_t __PLResetSyncStatusWithLibraryImpl_block_invoke(uint64_t a1)
{
  v82[2] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 48);
  if (v2 == 3)
  {
    if ((*(a1 + 56) - 1) >= 2)
    {
      goto LABEL_30;
    }

    goto LABEL_10;
  }

  if ((v2 - 1) >= 2)
  {
    goto LABEL_30;
  }

  if (v2 != 2 || *(a1 + 64) != 1)
  {
LABEL_10:
    v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v82[0] = @"modernResources";
    v82[1] = @"additionalAttributes";
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v82 count:2];
    [v10 addObjectsFromArray:v11];

    v12 = +[PLMemory keyPathsForMemoriesBeingAssets];
    [v10 addObjectsFromArray:v12];

    if (*(a1 + 48) == 3)
    {
      [v10 addObject:@"libraryScope"];
      [v10 addObject:@"master"];
      v13 = [*(a1 + 32) managedObjectContext];
      v14 = [PLLibraryScope activeLibraryScopeInManagedObjectContext:v13];
    }

    else
    {
      v14 = 0;
    }

    v15 = MEMORY[0x1E695D5E0];
    v16 = +[PLManagedAsset entityName];
    v7 = [v15 fetchRequestWithEntityName:v16];

    v17 = +[PLManagedAsset predicateForAssetsToCheckForDeletionOnCPLDisable];
    [v7 setPredicate:v17];

    [v7 setRelationshipKeyPathsForPrefetching:v10];
    v18 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v68 = 0;
    v69 = &v68;
    v70 = 0x2020000000;
    v71 = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __PLResetSyncStatusWithLibraryImpl_block_invoke_98;
    aBlock[3] = &unk_1E756B0B0;
    v52 = v18;
    v66 = v52;
    v67 = &v68;
    v19 = _Block_copy(aBlock);
    v20 = [*(a1 + 32) libraryServicesManager];
    v21 = [v20 databaseContext];

    v5 = v10;
    *&v77 = 0;
    *(&v77 + 1) = &v77;
    v78 = 0x3032000000;
    v79 = __Block_byref_object_copy__34009;
    v80 = __Block_byref_object_dispose__34010;
    v81 = 0;
    v22 = [PLEnumerateAndSaveController alloc];
    v23 = [*(a1 + 32) name];
    v24 = [*(a1 + 32) managedObjectContext];
    v60[0] = MEMORY[0x1E69E9820];
    v60[1] = 3221225472;
    v60[2] = __PLResetSyncStatusWithLibraryImpl_block_invoke_3;
    v60[3] = &unk_1E756B0D8;
    v63 = &v77;
    v25 = v21;
    v61 = v25;
    v26 = *(a1 + 32);
    v27 = *(a1 + 48);
    v62 = v26;
    v64 = v27;
    v54[0] = MEMORY[0x1E69E9820];
    v54[1] = 3221225472;
    v54[2] = __PLResetSyncStatusWithLibraryImpl_block_invoke_4;
    v54[3] = &unk_1E756B260;
    v58 = v27;
    v28 = v19;
    v29 = *(a1 + 56);
    v57 = v28;
    v59 = v29;
    v51 = v14;
    v55 = v51;
    v56 = *(a1 + 40);
    v30 = [(PLEnumerateAndSaveController *)v22 initWithName:v23 fetchRequest:v7 context:v24 options:4 generateContextBlock:v60 didFetchObjectIDsBlock:0 processResultsBlock:v54];

    v53 = 0;
    LODWORD(v24) = [(PLEnumerateAndSaveController *)v30 processObjectsWithError:&v53];
    v31 = v53;
    v32 = MEMORY[0x1E6994D48];
    v33 = *MEMORY[0x1E6994D48];
    if ((v24 | v33))
    {
      if (v33)
      {
LABEL_22:
        [v52 removeAllObjects];

        _Block_object_dispose(&v77, 8);
        _Block_object_dispose(&v68, 8);
        goto LABEL_23;
      }
    }

    else
    {
      v34 = __CPLAssetsdOSLogDomain();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v74 = v7;
        v75 = 2112;
        v76 = v31;
        _os_log_impl(&dword_19BF1F000, v34, OS_LOG_TYPE_ERROR, "Error processing assets for CPL disable: %@ error: %@", buf, 0x16u);
      }

      if (*v32)
      {
        goto LABEL_22;
      }
    }

    v35 = __CPLAssetsdOSLogDomain();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      v36 = v69[3];
      v37 = [v52 count];
      *buf = 134218240;
      v74 = v36;
      v75 = 2048;
      v76 = v37;
      _os_log_impl(&dword_19BF1F000, v35, OS_LOG_TYPE_DEFAULT, "Deleted %lu assets, %lu memories", buf, 0x16u);
    }

    goto LABEL_22;
  }

  v3 = MEMORY[0x1E695D5E0];
  v4 = +[PLManagedAsset entityName];
  v5 = [v3 fetchRequestWithEntityName:v4];

  v51 = [MEMORY[0x1E69BF328] predicateForExcludeMask:objc_msgSend(MEMORY[0x1E69BF328] useIndex:{"maskForCloudSharedAsset"), 1}];
  [v5 setPredicate:v51];
  [v5 setFetchBatchSize:100];
  v6 = [*(a1 + 32) managedObjectContext];
  v72 = 0;
  v52 = [v6 executeFetchRequest:v5 error:&v72];
  v7 = v72;

  if (![v52 count] || v7)
  {
    if (!v7 || (*MEMORY[0x1E6994D48] & 1) != 0)
    {
      goto LABEL_36;
    }

    v8 = __CPLAssetsdOSLogDomain();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      LODWORD(v77) = 138412290;
      *(&v77 + 4) = v7;
      _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_ERROR, "Error on fetch: %@", &v77, 0xCu);
    }
  }

  else
  {
    v8 = [*(a1 + 32) managedObjectContext];
    v9 = [v8 enumerateWithIncrementalSaveUsingObjects:v52 withBlock:&__block_literal_global_34003];
  }

LABEL_36:
  [PLGenericAlbum removeAllUserAlbumsAndFoldersInLibrary:*(a1 + 32)];
  [PLMemory deleteAllMemoriesInPhotoLibrary:*(a1 + 32)];
LABEL_23:

  v38 = *(a1 + 48);
  if (v38 == 3)
  {
    v39 = (a1 + 32);
    v43 = *(a1 + 56);
    v44 = [*(a1 + 32) managedObjectContext];
    [(PLShare *)PLMomentShare deleteAllSharesInManagedObjectContext:v44];

    if (((v43 < 3) & (3u >> (v43 & 7))) != 0)
    {
      goto LABEL_28;
    }
  }

  else
  {
    if (v38 != 2)
    {
      goto LABEL_28;
    }

    v39 = (a1 + 32);
    v40 = [*(a1 + 32) managedObjectContext];
    [PLGenericAlbum removeTrashedAlbumsAndFoldersForCloudResetInManagedObjectContext:v40];

    v41 = [*(a1 + 32) managedObjectContext];
    [PLGenericAlbum removeEmptyAlbumsAndFoldersForCloudResetInManagedObjectContext:v41];

    v42 = [*(a1 + 32) managedObjectContext];
    [(PLShare *)PLMomentShare deleteAllSharesInManagedObjectContext:v42];
  }

  v45 = [*v39 managedObjectContext];
  [(PLShare *)PLLibraryScope deleteAllSharesInManagedObjectContext:v45];

LABEL_28:
  if ((*(a1 + 48) - 1) <= 1)
  {
    v46 = [*(a1 + 32) managedObjectContext];
    [PLCloudMaster deleteAllCloudMastersInManagedObjectContext:v46];
  }

LABEL_30:
  v47 = (a1 + 32);
  v48 = [*(a1 + 32) managedObjectContext];
  [PLInternalResource resetCloudResourcesStateForCloudInManagedObjectContext:v48 hardReset:(*(a1 + 48) - 1) < 2];

  [PLGenericAlbum resetAlbumStateForCloudInLibrary:*(a1 + 32)];
  [PLManagedAsset resetAssetsCloudStateInLibrary:*(a1 + 32)];
  v49 = [*(a1 + 32) managedObjectContext];
  [PLCloudMaster resetCloudMastersStateInManagedObjectContext:v49];

  [PLMemory resetCloudStateInPhotoLibrary:*v47];
  [PLSuggestion resetCloudStateInPhotoLibrary:*v47];
  [PLPerson resetCloudStateInPhotoLibrary:*v47];
  [PLFaceCrop resetCloudStateInPhotoLibrary:*v47];
  return [PLDetectedFace resetCloudStateInPhotoLibrary:*v47];
}

void sub_19C1ECF98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36)
{
  _Block_object_dispose((v36 - 192), 8);
  _Block_object_dispose(&a36, 8);
  _Unwind_Resume(a1);
}

void __PLResetSyncStatusWithLibraryImpl_block_invoke_98(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = [PLMemory memoriesContainingAsset:v6];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __PLResetSyncStatusWithLibraryImpl_block_invoke_2_99;
  v8[3] = &unk_1E756B088;
  v9 = *(a1 + 32);
  [v7 enumerateObjectsUsingBlock:v8];
  [v6 setLocalOnlyDelete:1];
  [v6 deleteWithReason:v5];

  ++*(*(*(a1 + 40) + 8) + 24);
}

uint64_t __Block_byref_object_copy__34009(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id __PLResetSyncStatusWithLibraryImpl_block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) newShortLivedLibraryWithName:{"void PLResetSyncStatusWithLibraryImpl(PLPhotoLibrary *__strong, CPLLibraryManager *__strong, PLResetCloudLibraryMode, PLCPLDeviceLibraryConfiguration, BOOL)_block_invoke_3"}];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = [*(*(*(a1 + 48) + 8) + 40) managedObjectContext];
  v6 = [*(a1 + 40) managedObjectContext];
  [v5 setChangeSource:{objc_msgSend(v6, "changeSource")}];

  v7 = [*(a1 + 40) managedObjectContext];
  [v5 setLocalOnlyDelete:{objc_msgSend(v7, "isLocalOnlyDelete")}];

  [v5 setResetCloudLibraryMode:*(a1 + 56)];

  return v5;
}

void __PLResetSyncStatusWithLibraryImpl_block_invoke_4(uint64_t a1, uint64_t a2, void *a3)
{
  v64 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v41 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v59 objects:v63 count:16];
  v7 = v5;
  if (!v6)
  {
LABEL_30:

    goto LABEL_31;
  }

  v8 = v6;
  v42 = 0;
  v9 = *v60;
  v43 = v5;
  do
  {
    for (i = 0; i != v8; ++i)
    {
      if (*v60 != v9)
      {
        objc_enumerationMutation(v5);
      }

      v11 = *(*(&v59 + 1) + 8 * i);
      v12 = [v11 checkAllResourcesRequiredForCPLDisableWithReachableBlock:&__block_literal_global_107_34014];
      v13 = v12;
      v14 = *(a1 + 56);
      if ((v14 - 1) <= 1)
      {
        if (v12)
        {
          continue;
        }

        v15 = MEMORY[0x1E696AEC0];
        v16 = [v11 uuid];
        v17 = [v15 stringWithFormat:@"[PLResetSyncStatusWithLibrary] Deleting asset without all required resources on disk: %@", v16];
        v18 = [PLAssetTransactionReason transactionReason:v17];

        (*(*(a1 + 48) + 16))();
        goto LABEL_24;
      }

      if (v14 != 3)
      {
        continue;
      }

      v19 = *(a1 + 64);
      v18 = [v11 libraryScope];
      v20 = [v18 uuid];
      v21 = [*(a1 + 32) uuid];
      v22 = v21;
      if (v19 == 1)
      {
        v26 = [v20 isEqualToString:v21];

        if (v26)
        {
LABEL_18:
          v5 = v43;
          continue;
        }
      }

      else
      {
        if (v19 != 2)
        {

          goto LABEL_23;
        }

        if (!v20)
        {
          goto LABEL_18;
        }
      }

      if (v13)
      {
        v18 = [v11 allRequiredResourcesForCPLDisable];
        v23 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{objc_msgSend(v18, "count")}];
        v57[0] = MEMORY[0x1E69E9820];
        v57[1] = 3221225472;
        v57[2] = __PLResetSyncStatusWithLibraryImpl_block_invoke_116;
        v57[3] = &unk_1E756B120;
        v24 = v23;
        v58 = v24;
        [v18 enumerateObjectsUsingBlock:v57];
        v25 = [v24 count];
        if (v25 == [v18 count])
        {
          v54[0] = MEMORY[0x1E69E9820];
          v54[1] = 3221225472;
          v54[2] = __PLResetSyncStatusWithLibraryImpl_block_invoke_2_118;
          v54[3] = &unk_1E756B148;
          v55 = v41;
          v56 = v11;
          [v24 enumerateObjectsUsingBlock:v54];
          ++v42;
        }

        v5 = v43;

        goto LABEL_24;
      }

      v27 = *(a1 + 64);
      v28 = @"unknown";
      if (v27 <= 2)
      {
        v28 = off_1E756E888[v27];
      }

      v29 = MEMORY[0x1E696AEC0];
      v30 = v28;
      v31 = [v11 uuid];
      v32 = [v29 stringWithFormat:@"[PLResetSyncStatusWithLibrary] Deleting non-qualifying asset for device-library configuration %@: %@", v30, v31];
      v18 = [PLAssetTransactionReason transactionReason:v32];

      (*(*(a1 + 48) + 16))();
LABEL_23:
      v5 = v43;
LABEL_24:
    }

    v8 = [v5 countByEnumeratingWithState:&v59 objects:v63 count:16];
  }

  while (v8);

  if (*(a1 + 40) && v42)
  {
    v33 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:v42];
    v34 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, &__block_literal_global_122_34017);
    v35 = *(a1 + 40);
    v36 = [v41 allKeys];
    v50[0] = MEMORY[0x1E69E9820];
    v50[1] = 3221225472;
    v50[2] = __PLResetSyncStatusWithLibraryImpl_block_invoke_4_123;
    v50[3] = &unk_1E756B1C0;
    v37 = v41;
    v51 = v37;
    v38 = v33;
    v52 = v38;
    v53 = v34;
    v7 = v34;
    [v35 checkResourcesAreSafeToPrune:v36 checkServerIfNecessary:0 completionHandler:v50];

    v5 = v43;
    dispatch_block_wait(v7, 0xFFFFFFFFFFFFFFFFLL);
    v47[0] = MEMORY[0x1E69E9820];
    v47[1] = 3221225472;
    v47[2] = __PLResetSyncStatusWithLibraryImpl_block_invoke_7;
    v47[3] = &unk_1E756B210;
    v39 = *(a1 + 64);
    v48 = v38;
    v49 = v39;
    v40 = v38;
    [v37 enumerateKeysAndObjectsUsingBlock:v47];
    v44[0] = MEMORY[0x1E69E9820];
    v44[1] = 3221225472;
    v44[2] = __PLResetSyncStatusWithLibraryImpl_block_invoke_129;
    v44[3] = &unk_1E756B238;
    v46 = *(a1 + 64);
    v45 = *(a1 + 48);
    [v40 enumerateObjectsUsingBlock:v44];

    goto LABEL_30;
  }

LABEL_31:
}

void __PLResetSyncStatusWithLibraryImpl_block_invoke_116(uint64_t a1, void *a2)
{
  v3 = [a2 cplResourceIncludeFile:1 createDirectoryIfNeeded:0];
  if (v3)
  {
    v4 = v3;
    [*(a1 + 32) addObject:v3];
    v3 = v4;
  }
}

void __PLResetSyncStatusWithLibraryImpl_block_invoke_2_118(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [*(a1 + 32) objectForKeyedSubscript:?];
  if (!v3)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    [*(a1 + 32) setObject:v3 forKeyedSubscript:v4];
  }

  [v3 addObject:*(a1 + 40)];
}

void __PLResetSyncStatusWithLibraryImpl_block_invoke_4_123(uint64_t a1, void *a2)
{
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __PLResetSyncStatusWithLibraryImpl_block_invoke_5_124;
  v7[3] = &unk_1E756B198;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  [a2 enumerateObjectsUsingBlock:v7];
  (*(*(a1 + 48) + 16))(*(a1 + 48), v4, v5, v6);
}

void __PLResetSyncStatusWithLibraryImpl_block_invoke_7(uint64_t a1, uint64_t a2, void *a3)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __PLResetSyncStatusWithLibraryImpl_block_invoke_8;
  v5[3] = &unk_1E756B1E8;
  v4 = *(a1 + 32);
  v7 = *(a1 + 40);
  v6 = v4;
  [a3 enumerateObjectsUsingBlock:v5];
}

void __PLResetSyncStatusWithLibraryImpl_block_invoke_129(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = *(a1 + 40);
  v5 = a2;
  if (v4 > 2)
  {
    v6 = @"unknown";
  }

  else
  {
    v6 = off_1E756E888[v4];
  }

  v7 = v6;
  v8 = [v5 uuid];
  v9 = [v3 stringWithFormat:@"[PLResetSyncStatusWithLibrary] Deleting non-qualifying asset for device-library configuration %@: %@", v7, v8];
  v10 = [PLAssetTransactionReason transactionReason:v9];

  (*(*(a1 + 32) + 16))();
}

void __PLResetSyncStatusWithLibraryImpl_block_invoke_8(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ((*MEMORY[0x1E6994D48] & 1) == 0)
  {
    v4 = __CPLAssetsdOSLogDomain();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 40);
      if (v5 > 2)
      {
        v6 = @"unknown";
      }

      else
      {
        v6 = off_1E756E888[v5];
      }

      v7 = v6;
      v8 = [v3 uuid];
      v9 = 138412546;
      v10 = v7;
      v11 = 2112;
      v12 = v8;
      _os_log_impl(&dword_19BF1F000, v4, OS_LOG_TYPE_DEFAULT, "Not deleting asset not qualifying for configuration %@, not safe to delete some resources: %@", &v9, 0x16u);
    }
  }

  [*(a1 + 32) removeObject:v3];
}

void __PLResetSyncStatusWithLibraryImpl_block_invoke_5_124(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 objectForKeyedSubscript:v4];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __PLResetSyncStatusWithLibraryImpl_block_invoke_6;
  v6[3] = &unk_1E756B170;
  v7 = *(a1 + 40);
  [v5 enumerateObjectsUsingBlock:v6];
  [*(a1 + 32) removeObjectForKey:v4];
}

void __PLResetSyncStatusWithLibraryImpl_block_invoke_5(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = a3;
  if (([v5 isLocallyAvailable] & 1) == 0)
  {
    if ((*MEMORY[0x1E6994D48] & 1) == 0)
    {
      v6 = __CPLAssetsdOSLogDomain();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v7 = [MEMORY[0x1E6994B90] shortDescriptionForResourceType:{objc_msgSend(v5, "cplType")}];
        v9 = 138412546;
        v10 = v4;
        v11 = 2114;
        v12 = v7;
        _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_ERROR, "Resource marked as unavailable but actually on-disk, updating availability: %@ (%{public}@)", &v9, 0x16u);
      }
    }

    v8 = [v4 path];
    [v5 markAsLocallyAvailableWithFilePath:v8];
  }
}

void __PLResetSyncStatusWithLibraryImpl_block_invoke_2_99(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v9 = v3;
  v5 = [v3 uuid];
  LOBYTE(v4) = [v4 containsObject:v5];

  if ((v4 & 1) == 0)
  {
    v6 = *(a1 + 32);
    v7 = [v9 uuid];
    [v6 addObject:v7];

    v8 = [v9 managedObjectContext];
    [v8 deleteObject:v9];
  }
}

void __PLResetSyncStatusWithLibraryImpl_block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [PLAssetTransactionReason transactionReason:@"[PLResetSyncStatusWithLibrary]Deleting a CPL asset for Apple TV"];
  [v2 deleteWithReason:v3];
}

id PLAssetsMissingOriginals(void *a1)
{
  v1 = a1;
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__34009;
  v12 = __Block_byref_object_dispose__34010;
  v13 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __PLAssetsMissingOriginals_block_invoke;
  v5[3] = &unk_1E7578910;
  v7 = &v8;
  v2 = v1;
  v6 = v2;
  [v2 performTransactionAndWait:v5];
  v3 = v9[5];

  _Block_object_dispose(&v8, 8);

  return v3;
}

void sub_19C1EE07C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __PLAssetsMissingOriginals_block_invoke(uint64_t a1)
{
  v30[2] = *MEMORY[0x1E69E9840];
  v24 = [MEMORY[0x1E695D5E0] fetchRequestWithEntityName:@"Asset"];
  v21 = [MEMORY[0x1E696AE18] predicateWithFormat:@"kindSubtype != %d && cameraProcessingAdjustmentState == %d && (master == nil OR (SUBQUERY(master.resources, $r, $r.type == %ul AND $r.isLocallyAvailable == YES AND $r.assetUuid == uuid).@count != 0))", 2, 0, 1];
  v23 = [MEMORY[0x1E696AE18] predicateWithFormat:@"kindSubtype == %d && cameraProcessingAdjustmentState == %d && (master == nil OR ((SUBQUERY(master.resources, $r, $r.type == %ul AND $r.isLocallyAvailable == YES AND $r.assetUuid == uuid).@count != 0) && (SUBQUERY(master.resources, $r, $r.type == %ul AND $r.isLocallyAvailable == YES AND $r.assetUuid == uuid).@count != 0)))", 2, 0, 1, 18];
  v1 = +[PLManagedAsset predicateForSpatialOverCaptureAssets];
  v2 = [MEMORY[0x1E696AE18] predicateWithFormat:@"kindSubtype == %d && (master == nil OR ((SUBQUERY(master.resources, $r, $r.type == %ul AND $r.isLocallyAvailable == YES AND $r.assetUuid == uuid).@count != 0) && (SUBQUERY(master.resources, $r, $r.type == %ul AND $r.isLocallyAvailable == YES AND $r.assetUuid == uuid).@count != 0)))", 2, 1, 23];
  v3 = MEMORY[0x1E696AB28];
  v30[0] = v2;
  v30[1] = v1;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:2];
  v22 = [v3 andPredicateWithSubpredicates:v4];

  v5 = [MEMORY[0x1E696AE18] predicateWithFormat:@"kindSubtype == %d && (master == nil OR ((SUBQUERY(master.resources, $r, $r.type == %ul AND $r.isLocallyAvailable == YES AND $r.assetUuid == uuid).@count != 0) && (SUBQUERY(master.resources, $r, $r.type == %ul AND $r.isLocallyAvailable == YES AND $r.assetUuid == uuid).@count != 0) && (SUBQUERY(master.resources, $r, $r.type == %ul AND $r.isLocallyAvailable == YES AND $r.assetUuid == uuid).@count != 0)))", 2, 1, 18, 24];
  v6 = MEMORY[0x1E696AB28];
  v29[0] = v5;
  v29[1] = v1;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:2];
  v8 = [v6 andPredicateWithSubpredicates:v7];

  v9 = MEMORY[0x1E696AB28];
  v28[0] = v21;
  v28[1] = v23;
  v28[2] = v22;
  v28[3] = v8;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:4];
  v11 = [v9 orPredicateWithSubpredicates:v10];

  v12 = [MEMORY[0x1E69BF328] predicateForIncludeMask:objc_msgSend(MEMORY[0x1E69BF328] useIndex:{"maskForAssetsEligibleForCloudKitTransport"), 1}];
  v13 = MEMORY[0x1E696AB28];
  v27[0] = v12;
  v27[1] = v11;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:2];
  v15 = [v13 andPredicateWithSubpredicates:v14];
  [v24 setPredicate:v15];

  v16 = [*(a1 + 32) managedObjectContext];
  v26 = 0;
  v17 = [v16 executeFetchRequest:v24 error:&v26];
  v18 = v26;
  v19 = *(*(a1 + 40) + 8);
  v20 = *(v19 + 40);
  *(v19 + 40) = v17;
}

void PLDownloadMissingOriginals(void *a1)
{
  v1 = a1;
  v2 = [v1 assetsdClient];
  v3 = [v2 debugClient];

  v4 = PLAssetsMissingOriginals(v1);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __PLDownloadMissingOriginals_block_invoke;
  v7[3] = &unk_1E7578848;
  v8 = v4;
  v9 = v3;
  v5 = v3;
  v6 = v4;
  [v1 performTransactionAndWait:v7];
}

void __PLDownloadMissingOriginals_block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(a1 + 40);
        v8 = [*(*(&v9 + 1) + 8 * v6) objectID];
        [v7 privateDownloadCloudPhotoLibraryAsset:v8 resourceType:1 highPriority:1 completionHandler:0];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }
}

id _urlForKeyStruct(unsigned __int16 *a1, void *a2, void *a3)
{
  v48[2] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  v39 = __Block_byref_object_copy__34087;
  v40 = __Block_byref_object_dispose__34088;
  v41 = 0;
  v7 = [v5 uuid];
  if (v7)
  {
    v8 = [v5 libraryID];
    v9 = v8 == 0;

    if (!v9)
    {
      v10 = MEMORY[0x1E695D5E0];
      v11 = +[PLInternalResource entityName];
      v12 = [v10 fetchRequestWithEntityName:v11];

      v48[0] = @"fileSystemBookmark";
      v48[1] = @"fileSystemVolume";
      v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v48 count:2];
      [v12 setRelationshipKeyPathsForPrefetching:v13];

      v14 = MEMORY[0x1E696AE18];
      v15 = [v5 uuid];
      v16 = [v14 predicateWithFormat:@"%K = %@ AND %K = %d AND %K != nil", @"asset.uuid", v15, @"resourceType", (*a1 >> 10) & 0x1F, @"fileSystemBookmark"];
      [v12 setPredicate:v16];

      if (v6)
      {
        v17 = 0;
      }

      else
      {
        v18 = MEMORY[0x1E695DFF8];
        v19 = [v5 libraryID];
        v20 = MEMORY[0x19EAEE560]();
        v21 = [v18 fileURLWithPath:v20 isDirectory:1];

        LODWORD(v19) = PLIsAssetsdProxyService();
        v22 = objc_alloc_init(PLPhotoLibraryOptions);
        v23 = v22;
        if (v19)
        {
          v24 = 1;
        }

        else
        {
          v24 = 6;
        }

        [(PLPhotoLibraryOptions *)v22 setRequiredState:v24];
        v35 = 0;
        v17 = [PLPhotoLibrary newPhotoLibraryWithName:"NSURL *_urlForKeyStruct(PLPrimaryDataStore_ReferenceFileStrategy_KeyStruct_V1 * loadedFromURL:__strong id<PLAssetID> options:NSManagedObjectContext *__strong)" error:v21, v23, &v35];
        v25 = v35;
        if (!v17)
        {
          v26 = PLImageManagerGetLog();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446722;
            v43 = "NSURL *_urlForKeyStruct(PLPrimaryDataStore_ReferenceFileStrategy_KeyStruct_V1 *, __strong id<PLAssetID>, NSManagedObjectContext *__strong)";
            v44 = 2112;
            v45 = v21;
            v46 = 2112;
            v47 = v25;
            _os_log_impl(&dword_19BF1F000, v26, OS_LOG_TYPE_ERROR, "failed to load photo library %{public}s with url %@, %@", buf, 0x20u);
          }
        }

        v6 = [v17 managedObjectContext];
      }

      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = ___urlForKeyStruct_block_invoke;
      v30[3] = &unk_1E75778C0;
      v6 = v6;
      v31 = v6;
      v27 = v12;
      v32 = v27;
      v34 = &v36;
      v33 = v5;
      [v6 performBlockAndWait:v30];
    }
  }

  v28 = v37[5];
  _Block_object_dispose(&v36, 8);

  return v28;
}

void sub_19C1EEAB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__34087(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void ___urlForKeyStruct_block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) executeFetchRequest:*(a1 + 40) error:0];
  if ([v2 count])
  {
    v3 = [v2 objectAtIndexedSubscript:0];
    v4 = [v3 fileSystemBookmark];

    v5 = [v2 objectAtIndexedSubscript:0];
    v6 = [v5 fileSystemVolume];

    v7 = *(*(a1 + 56) + 8);
    obj = *(v7 + 40);
    v8 = PLPrimaryResourceDataStoreReferenceFileURL(v4, v6, &obj);
    objc_storeStrong((v7 + 40), obj);
    if (v8 == 3)
    {
      v9 = PLImageManagerGetLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v11 = [*(a1 + 48) uuid];
        v12 = *(*(*(a1 + 56) + 8) + 40);
        *buf = 138543618;
        v15 = v11;
        v16 = 2112;
        v17 = v12;
        _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_DEFAULT, "No volume URL for referenced resource for asset %{public}@, using artificial volume for URL %@", buf, 0x16u);
      }
    }

    else
    {
      if (v8)
      {
LABEL_9:

        goto LABEL_10;
      }

      v9 = PLImageManagerGetLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = [*(a1 + 48) uuid];
        *buf = 138543362;
        v15 = v10;
        _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_ERROR, "Failed to resolve bookmark URL for asset %{public}@", buf, 0xCu);
      }
    }

    goto LABEL_9;
  }

LABEL_10:
}

uint64_t PLPrimaryResourceDataStoreReferenceFileURL(void *a1, void *a2, void *a3)
{
  v26[1] = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = [v5 fileSystemURL];
  if (v7)
  {
    v8 = v7;
    goto LABEL_3;
  }

  v13 = [v5 pathRelativeToVolume];

  if (!v13)
  {
    v8 = 0;
LABEL_3:
    v9 = 1;
    if (!a3)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v14 = [v6 predictedURL];
  if (v14)
  {
    v15 = v14;
    v9 = 1;
  }

  else
  {
    v16 = [v5 bookmarkData];

    if (v16 && (v17 = MEMORY[0x1E695DFF8], v26[0] = *MEMORY[0x1E695DDE8], v18 = v26[0], [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:1], v19 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "bookmarkData"), v20 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v17, "resourceValuesForKeys:fromBookmarkData:", v19, v20), v21 = objc_claimAutoreleasedReturnValue(), v20, v19, objc_msgSend(v21, "objectForKeyedSubscript:", v18), v22 = objc_claimAutoreleasedReturnValue(), +[PLFileSystemVolume predictedURLForVolumeName:](PLFileSystemVolume, "predictedURLForVolumeName:", v22), v15 = objc_claimAutoreleasedReturnValue(), v22, v21, v15))
    {
      v9 = 2;
    }

    else
    {
      v23 = [MEMORY[0x1E696AFB0] UUID];
      v24 = [v23 UUIDString];

      v15 = [PLFileSystemVolume predictedURLForVolumeName:v24];

      v9 = 3;
    }
  }

  v25 = [v5 pathRelativeToVolume];
  v8 = [v15 URLByAppendingPathComponent:v25];

  if (a3)
  {
LABEL_4:
    v10 = v8;
    *a3 = v8;
  }

LABEL_5:
  if (v8)
  {
    v11 = v9;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

void sub_19C1EF388(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a19, 8);
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose((v29 - 144), 8);
  _Block_object_dispose((v29 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__34183(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__34451(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id __copy_helper_block_e8_64n11_8_8_s0_t8w8(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 64);
  *(a1 + 64) = result;
  *(a1 + 72) = *(a2 + 72);
  return result;
}

void sub_19C1F6030(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v17 - 160), 8);
  _Block_object_dispose((v17 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__34750(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_19C1F641C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C1F657C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C1F68EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C1F6B20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C1F6F54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C1F7398(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_19C1F75CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C1F78A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C1F8DC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va1, a12);
  va_start(va, a12);
  v14 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v12 - 120), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__34921(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_19C1F9B24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__35113(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

__CFString *PLDetectionTraitTypeDescription(__int16 a1)
{
  if ((a1 - 1) > 3u)
  {
    return @"unknown";
  }

  else
  {
    return off_1E756B570[(a1 - 1)];
  }
}

void sub_19C1FAFD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_19C1FB22C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 48), 8);
  _Unwind_Resume(a1);
}

void sub_19C1FDE30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose((v31 - 136), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__35572(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_19C1FEA24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getVCPMediaAnalyzerClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!MediaAnalysisLibraryCore_frameworkLibrary_35769)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __MediaAnalysisLibraryCore_block_invoke_35770;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E756B768;
    v8 = 0;
    MediaAnalysisLibraryCore_frameworkLibrary_35769 = _sl_dlopen();
  }

  if (!MediaAnalysisLibraryCore_frameworkLibrary_35769)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *MediaAnalysisLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"PLSearchEmbeddingDefines.h" lineNumber:26 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("VCPMediaAnalyzer");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getVCPMediaAnalyzerClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"PLSearchEmbeddingDefines.h" lineNumber:31 description:{@"Unable to find class %s", "VCPMediaAnalyzer"}];

LABEL_10:
    __break(1u);
  }

  getVCPMediaAnalyzerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __MediaAnalysisLibraryCore_block_invoke_35770()
{
  result = _sl_dlopen();
  MediaAnalysisLibraryCore_frameworkLibrary_35769 = result;
  return result;
}

id PLExtensionRunnerWorkerDelaySchedule()
{
  v3[5] = *MEMORY[0x1E69E9840];
  v2[0] = &unk_1F0FBC658;
  v2[1] = &unk_1F0FBC670;
  v3[0] = &unk_1F0FC0408;
  v3[1] = &unk_1F0FC0418;
  v2[2] = &unk_1F0FBC688;
  v2[3] = &unk_1F0FBC6A0;
  v3[2] = &unk_1F0FC0428;
  v3[3] = &unk_1F0FC0438;
  v2[4] = &unk_1F0FBC640;
  v3[4] = &unk_1F0FC0448;
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:v2 count:5];

  return v0;
}

void sub_19C1FF470(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C1FF78C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__35898(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_19C1FFEB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C2001C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C200F68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C20110C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C2021A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C20243C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C20320C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__36069(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_19C206CE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 64), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__36536(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

double PLAssertMinimumCoreDataVersion()
{
  v13 = *MEMORY[0x1E69E9840];
  if (!*MEMORY[0x1E695D308])
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void PLAssertMinimumCoreDataVersion(void)"];
    [v5 handleFailureInFunction:v6 file:@"PLCoreDataVersion.m" lineNumber:27 description:@"CoreData is missing NSEntityRenamingShouldRebaseKey"];
  }

  v0 = PLBackendGetLog();
  v1 = os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG);
  v2 = MEMORY[0x1E695D2E8];
  if (v1)
  {
    v3 = *MEMORY[0x1E695D2E8];
    v9 = 134218240;
    v10 = v3;
    v11 = 2048;
    v12 = 0x4091400000000000;
    _os_log_impl(&dword_19BF1F000, v0, OS_LOG_TYPE_DEBUG, "Crash if NSCoreDataVersionNumber (%f) < PLMinimumCoreDataVersion (%f)", &v9, 0x16u);
  }

  result = *v2;
  if (*v2 < 1104.0)
  {
    v7 = PLBackendGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = *v2;
      v9 = 134218240;
      v10 = v8;
      v11 = 2048;
      v12 = 0x4091400000000000;
      _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_ERROR, "CoreData version is too old: %f is less than required %f", &v9, 0x16u);
    }

    qword_1EAFF9EC8 = "CoreData version is too old for assetsd";
    __break(1u);
  }

  return result;
}

void sub_19C20C2AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, void *a10, os_signpost_id_t a11, os_activity_scope_state_s a12, SEL sel, __int128 buf)
{
  if (a9 == 1)
  {
    os_activity_scope_leave(&a12);
  }

  if (a11)
  {
    v15 = PLRequestGetLog();
    v16 = v15;
    if (a11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
    {
      Name = sel_getName(sel);
      LODWORD(buf) = 136446210;
      *(&buf + 4) = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v16, OS_SIGNPOST_INTERVAL_END, a11, "########## Syncing with Cloud Photo Library!", "%{public}s", &buf, 0xCu);
    }
  }

  _Unwind_Resume(a1);
}

void sub_19C20C760(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, void *a22, os_signpost_id_t a23, os_activity_scope_state_s a24, SEL sel)
{
  if (a21 == 1)
  {
    os_activity_scope_leave(&a24);
  }

  if (a23)
  {
    v28 = PLRequestGetLog();
    v29 = v28;
    if (a23 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v28))
    {
      Name = sel_getName(sel);
      *(v26 - 128) = 136446210;
      *(v25 + 4) = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v29, OS_SIGNPOST_INTERVAL_END, a23, "########## Syncing with Cloud Photo Library!", "%{public}s", (v26 - 128), 0xCu);
    }
  }

  _Unwind_Resume(a1);
}

void sub_19C20D3E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__37202(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_19C20D884(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, void *a16, os_signpost_id_t a17, os_activity_scope_state_s a18, SEL sel, __int128 buf)
{
  if (a15 == 1)
  {
    os_activity_scope_leave(&a18);
  }

  if (a17)
  {
    v21 = PLRequestGetLog();
    v22 = v21;
    if (a17 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
    {
      Name = sel_getName(sel);
      LODWORD(buf) = 136446210;
      *(&buf + 4) = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v22, OS_SIGNPOST_INTERVAL_END, a17, "########## Syncing with Cloud Photo Library!", "%{public}s", &buf, 0xCu);
    }
  }

  _Unwind_Resume(a1);
}

void sub_19C212920(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_19C213EF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, void *a10, os_signpost_id_t a11, os_activity_scope_state_s a12, SEL sel, __int128 buf)
{
  if (a9 == 1)
  {
    os_activity_scope_leave(&a12);
  }

  if (a11)
  {
    v15 = PLRequestGetLog();
    v16 = v15;
    if (a11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
    {
      Name = sel_getName(sel);
      LODWORD(buf) = 136446210;
      *(&buf + 4) = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v16, OS_SIGNPOST_INTERVAL_END, a11, "########## Syncing with Cloud Photo Library!", "%{public}s", &buf, 0xCu);
    }
  }

  _Unwind_Resume(a1);
}

void sub_19C214290(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, void *a16, os_signpost_id_t a17, os_activity_scope_state_s a18, SEL sel)
{
  if (a15 == 1)
  {
    os_activity_scope_leave(&a18);
  }

  if (a17)
  {
    v21 = PLRequestGetLog();
    v22 = v21;
    if (a17 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
    {
      Name = sel_getName(sel);
      *(v19 - 64) = 136446210;
      *(v19 - 60) = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v22, OS_SIGNPOST_INTERVAL_END, a17, "########## Syncing with Cloud Photo Library!", "%{public}s", (v19 - 64), 0xCu);
    }
  }

  _Unwind_Resume(a1);
}

void sub_19C214744(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, void *a14, os_signpost_id_t a15, os_activity_scope_state_s a16, SEL sel, __int128 buf)
{
  if (a13 == 1)
  {
    os_activity_scope_leave(&a16);
  }

  if (a15)
  {
    v19 = PLRequestGetLog();
    v20 = v19;
    if (a15 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
    {
      Name = sel_getName(sel);
      LODWORD(buf) = 136446210;
      *(&buf + 4) = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v20, OS_SIGNPOST_INTERVAL_END, a15, "########## Syncing with Cloud Photo Library!", "%{public}s", &buf, 0xCu);
    }
  }

  _Unwind_Resume(a1);
}

void sub_19C214A38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, void *a10, os_signpost_id_t a11, os_activity_scope_state_s a12, SEL sel, __int128 buf)
{
  if (a9 == 1)
  {
    os_activity_scope_leave(&a12);
  }

  if (a11)
  {
    v15 = PLRequestGetLog();
    v16 = v15;
    if (a11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
    {
      Name = sel_getName(sel);
      LODWORD(buf) = 136446210;
      *(&buf + 4) = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v16, OS_SIGNPOST_INTERVAL_END, a11, "########## Syncing with Cloud Photo Library!", "%{public}s", &buf, 0xCu);
    }
  }

  _Unwind_Resume(a1);
}

void sub_19C214FE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, void *a10, os_signpost_id_t a11, os_activity_scope_state_s a12, SEL sel, __int128 buf)
{
  if (a9 == 1)
  {
    os_activity_scope_leave(&a12);
  }

  if (a11)
  {
    v15 = PLRequestGetLog();
    v16 = v15;
    if (a11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
    {
      Name = sel_getName(sel);
      LODWORD(buf) = 136446210;
      *(&buf + 4) = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v16, OS_SIGNPOST_INTERVAL_END, a11, "########## Syncing with Cloud Photo Library!", "%{public}s", &buf, 0xCu);
    }
  }

  _Unwind_Resume(a1);
}

void sub_19C2154DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, void *a10, os_signpost_id_t a11, os_activity_scope_state_s a12, SEL sel, __int128 buf)
{
  if (a9 == 1)
  {
    os_activity_scope_leave(&a12);
  }

  if (a11)
  {
    v15 = PLRequestGetLog();
    v16 = v15;
    if (a11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
    {
      Name = sel_getName(sel);
      LODWORD(buf) = 136446210;
      *(&buf + 4) = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v16, OS_SIGNPOST_INTERVAL_END, a11, "########## Syncing with Cloud Photo Library!", "%{public}s", &buf, 0xCu);
    }
  }

  _Unwind_Resume(a1);
}

void sub_19C217978(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C217B44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C217F68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C218638(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v13 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v11 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__37479(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_19C218B84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C218D60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C218EC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C21DA54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v13 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v11 - 128), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__37882(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_19C21E1C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C21FAE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C22428C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void enumerateToken(const __CFString *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 16);
  v8 = *(a4 + 24);
  v10 = *(v9 + 56);
  v11 = *(v9 + 32);
  v31 = 0;
  _normalizeString(a1, v8, *(a4 + 40), &v31);
  v12 = v31;
  v13 = v31 + 4;
  if (*(a4 + 40) < v31 + 4)
  {
    v14 = 2 * v13;
    *(a4 + 40) = v13;
    v15 = *(a4 + 24);
    if (v15 == *(a4 + 32))
    {
      v16 = malloc_type_malloc(v14, 0x562ADBE8uLL);
    }

    else
    {
      v16 = reallocf(v15, v14);
    }

    *(a4 + 24) = v16;
    _normalizeString(a1, v16, *(a4 + 40), 0);
    v12 = v31;
  }

  v17 = v12;
  if ((*(a4 + 8) & 2) != 0)
  {
    v18 = *(a4 + 24);
    v17 = v12 + 1;
    v31 = v12 + 1;
    *(v18 + 2 * v12) = 42;
  }

  v19 = *v9;
  if (*v9)
  {
    v20 = *(a4 + 24);
    v31 = v17 + 1;
    v20[v17] = 32;
    CFStringAppendCharacters(v19, v20, v17 + 1);
    v21 = *(a4 + 24);
    v17 = v31 - 1;
    v31 = v17;
    *(v21 + 2 * v17) = 0;
  }

  v22 = MEMORY[0x1E695E480];
  if (*(v9 + 8))
  {
    v23 = CFStringCreateWithCharacters(*MEMORY[0x1E695E480], *(a4 + 24), v17);
    [*(v9 + 8) addObject:v23];
    CFRelease(v23);
  }

  if (*(v9 + 16))
  {
    Copy = CFStringCreateCopy(*v22, a1);
    [*(v9 + 16) addObject:Copy];
    CFRelease(Copy);
  }

  v25 = *(v9 + 24);
  if (v25)
  {
    v26 = *(v9 + 40);
    if (v26 < v11)
    {
      *(v9 + 40) = v26 + 1;
      v27 = (v25 + 16 * v26);
      *v27 = a2;
      v27[1] = v12;
    }
  }

  v28 = *(v9 + 48);
  if (v28)
  {
    v29 = *(v9 + 64);
    if (v29 < v10)
    {
      *(v9 + 64) = v29 + 1;
      v30 = (v28 + 16 * v29);
      *v30 = a2;
      v30[1] = a3;
    }
  }
}

BOOL _normalizeString(const __CFString *a1, UniChar *a2, CFIndex a3, void *a4)
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = ___normalizeString_block_invoke;
  aBlock[3] = &unk_1E756BDE8;
  aBlock[4] = &v17;
  v8 = _Block_copy(aBlock);
  Length = CFStringGetLength(a1);
  if (a2 && (v10 = Length, Length <= a3))
  {
    v21.location = 0;
    v21.length = Length;
    CFStringGetCharacters(a1, v21, a2);
    MutableWithExternalCharactersNoCopy = CFStringCreateMutableWithExternalCharactersNoCopy(*MEMORY[0x1E695E480], a2, v10, a3, *MEMORY[0x1E695E498]);
    v8[2](v8, MutableWithExternalCharactersNoCopy);
    CharactersPtr = CFStringGetCharactersPtr(MutableWithExternalCharactersNoCopy);
    CFRelease(MutableWithExternalCharactersNoCopy);
    if (CharactersPtr != a2)
    {
      v13 = 0;
      if (!a4)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    v13 = v18[3] <= a3;
    if (a4)
    {
LABEL_10:
      *a4 = v18[3];
    }
  }

  else
  {
    if (a4)
    {
      MutableCopy = CFStringCreateMutableCopy(*MEMORY[0x1E695E480], 0, a1);
      v8[2](v8, MutableCopy);
      CFRelease(MutableCopy);
      v13 = 0;
      goto LABEL_10;
    }

    v13 = 0;
  }

LABEL_11:

  _Block_object_dispose(&v17, 8);
  return v13;
}

void sub_19C227800(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void ___normalizeString_block_invoke(uint64_t a1, CFMutableStringRef theString)
{
  CFStringNormalize(theString, kCFStringNormalizationFormD);
  CFStringFold(theString, 0x181uLL, 0);
  *(*(*(a1 + 32) + 8) + 24) = CFStringGetLength(theString);
  v4 = *MEMORY[0x1E695E480];
  v5 = *MEMORY[0x1E695E498];
  v6 = off_1E756BD88;
  v7 = 6;
  do
  {
    v8 = CFStringCreateWithCStringNoCopy(v4, *(v6 - 1), 0x8000100u, v5);
    v9 = CFStringCreateWithCStringNoCopy(v4, *v6, 0x8000100u, v5);
    v10.length = *(*(*(a1 + 32) + 8) + 24);
    v10.location = 0;
    if (CFStringFindAndReplace(theString, v8, v9, v10, 0x181uLL) >= 1)
    {
      *(*(*(a1 + 32) + 8) + 24) = CFStringGetLength(theString);
    }

    if (v8)
    {
      CFRelease(v8);
    }

    if (v9)
    {
      CFRelease(v9);
    }

    v6 += 2;
    --v7;
  }

  while (v7);
}

void sub_19C22A67C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__39092(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_19C22B244(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id PLSafeInsertNewObjectForEntityForNameInManagedObjectContext(uint64_t a1, uint64_t a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v4 = [MEMORY[0x1E695D5B8] insertNewObjectForEntityForName:a1 inManagedObjectContext:a2];
  }

  else
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"NSManagedObjectContext is NULL inserting a new object for entity named %@", a1];
    v6 = PLBackendGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v15 = v5;
      _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
    }

    v7 = MEMORY[0x1E696ABC0];
    v8 = *MEMORY[0x1E69BFF48];
    v12 = *MEMORY[0x1E696A578];
    v13 = v5;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v13 forKeys:&v12 count:1];
    v10 = [v7 errorWithDomain:v8 code:46301 userInfo:v9];
    if (a3)
    {
      v10 = v10;
      *a3 = v10;
    }

    v4 = 0;
  }

  return v4;
}

id PLShortObjectIDFromURL(void *a1)
{
  v1 = a1;
  v2 = [v1 pathComponents];
  v3 = [v2 count];
  v4 = v3 - 2;
  if (v3 < 2)
  {
    v7 = [v1 path];
  }

  else
  {
    v5 = MEMORY[0x1E696AEC0];
    v6 = [v2 subarrayWithRange:{v4, 2}];
    v7 = [v5 pathWithComponents:v6];
  }

  return v7;
}

void sub_19C22E3AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__39652(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_19C22E954(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose((v29 - 160), 8);
  _Unwind_Resume(a1);
}

void sub_19C22FCAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__39784(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_19C232F48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47)
{
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(&a47, 8);
  _Unwind_Resume(a1);
}

CGImageRef PLThumbnailCreateSquareCroppedImage(CGImageRef image)
{
  if (!image)
  {
    return image;
  }

  CGImageGetWidth(image);
  CGImageGetHeight(image);
  v2 = PLSizeMake();
  if (v2 == HIDWORD(v2))
  {
    CFRetain(image);
    return image;
  }

  PLRectByCenteringSquareToFitDimensions();

  return CGImageCreateWithImageInRect(image, *&v4);
}

const __CFData *CreateCGImageFromJPEGData(const __CFData *result)
{
  if (result)
  {
    v1 = CGDataProviderCreateWithCFData(result);
    v2 = CGImageCreateWithJPEGDataProvider(v1, 0, 1, kCGRenderingIntentDefault);
    CGDataProviderRelease(v1);
    return v2;
  }

  return result;
}

__CFData *PLJPEGDataFromImage(CGImage *a1, uint64_t a2, void *a3, double a4)
{
  v47[2] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = objc_alloc_init(MEMORY[0x1E695DF88]);
  v9 = [*MEMORY[0x1E6982E58] identifier];
  v10 = CGImageDestinationCreateWithData(v8, v9, 1uLL, 0);

  if (v10)
  {
    v36 = v8;
    v46[0] = *MEMORY[0x1E696D358];
    v11 = [MEMORY[0x1E696AD98] numberWithInt:a2];
    v47[0] = v11;
    v46[1] = *MEMORY[0x1E696D338];
    v12 = [MEMORY[0x1E696AD98] numberWithDouble:a4];
    v47[1] = v12;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v47 forKeys:v46 count:2];

    v34 = v13;
    CGImageDestinationAddImage(v10, a1, v13);
    Width = CGImageGetWidth(a1);
    Height = CGImageGetHeight(a1);
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v35 = v7;
    obj = v7;
    v16 = [obj countByEnumeratingWithState:&v39 objects:v45 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = Height;
      v19 = Width;
      v20 = *v40;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v40 != v20)
          {
            objc_enumerationMutation(obj);
          }

          v22 = *(*(&v39 + 1) + 8 * i);
          v23 = [v22 identifier];
          [v22 effectiveScaleFactorForDestinationImageSize:{v19, v18}];
          v25 = v24;
          v26 = MEMORY[0x1E69C06B8];
          v43 = v23;
          v27 = [v22 auxiliaryImageInfo];
          v44 = v27;
          v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v44 forKeys:&v43 count:1];
          v29 = [v26 transformAuxiliaryImages:v28 scaleFactor:objc_msgSend(v22 applyingOrientation:{"sourceImageOrientation"), v25}];

          v30 = [v29 objectForKeyedSubscript:v23];
          CGImageDestinationAddAuxiliaryDataInfo(v10, v23, v30);
        }

        v17 = [obj countByEnumeratingWithState:&v39 objects:v45 count:16];
      }

      while (v17);
    }

    v7 = v35;
    v8 = v36;
    if (!CGImageDestinationFinalize(v10))
    {
      v31 = PLThumbnailsGetLog();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_19BF1F000, v31, OS_LOG_TYPE_ERROR, "Unable to finalize thumbnail", buf, 2u);
      }
    }

    CFRelease(v10);
    v32 = v34;
  }

  else
  {
    v32 = PLThumbnailsGetLog();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19BF1F000, v32, OS_LOG_TYPE_ERROR, "Unable to create mutable data image destination", buf, 2u);
    }
  }

  return v8;
}

BOOL PLCreateDownscaledIOSurfaceFromIOSurface(IOSurfaceRef surface, uint64_t a2, IOSurfaceRef *a3)
{
  v3 = 0;
  if (surface && a2 >= 1 && SHIDWORD(a2) >= 1)
  {
    pixelBufferOut = 0;
    pixelBuffer = 0;
    pixelTransferSessionOut = 0;
    v5 = *MEMORY[0x1E695E480];
    v3 = !CVPixelBufferCreateWithIOSurface(*MEMORY[0x1E695E480], surface, 0, &pixelBufferOut) && !VTPixelTransferSessionCreate(v5, &pixelTransferSessionOut) && !FigCreateIOSurfaceBackedCVPixelBuffer() && VTPixelTransferSessionTransferImage(pixelTransferSessionOut, pixelBufferOut, pixelBuffer) == 0;
    CVPixelBufferRelease(pixelBufferOut);
    if (pixelTransferSessionOut)
    {
      CFRelease(pixelTransferSessionOut);
    }

    v6 = pixelBuffer;
    if (a3 && pixelBuffer)
    {
      IOSurface = CVPixelBufferGetIOSurface(pixelBuffer);
      CFRetain(IOSurface);
      *a3 = IOSurface;
      v6 = pixelBuffer;
    }

    CVPixelBufferRelease(v6);
  }

  return v3;
}

void myIndexMapDescriptionApplier(void *a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  v7 = [a2 pl_shortDescription];
  [v5 appendFormat:@", filter %p: {%@}", v6, v7];
}

void sub_19C23614C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *PLShareParticipantKindDescription(int a1)
{
  if (a1)
  {
    return @"SharedStream";
  }

  else
  {
    return @"CPL";
  }
}

__CFString *PLSearchHomeItemTypeName(uint64_t a1)
{
  if ((a1 - 1) > 7)
  {
    return @"PLSearchHomeItemTypePerson";
  }

  else
  {
    return off_1E756C030[a1 - 1];
  }
}

void ___shouldIndexAssetUUIDForDebugging_block_invoke()
{
  if (MEMORY[0x19EAEE230]())
  {
    v0 = [MEMORY[0x1E695E000] standardUserDefaults];
    _shouldIndexAssetUUIDForDebugging_shouldIndexAssetUUIDForDebugging = [v0 BOOLForKey:@"com.apple.photos.search.spotlight.indexAssetUUIDForDebugging"];
  }

  else
  {
    _shouldIndexAssetUUIDForDebugging_shouldIndexAssetUUIDForDebugging = 0;
  }
}

__CFString *PLSearchIndexingAssetPropertySetDescription(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v3 = v2;
  if (a1)
  {
    [v2 addObject:@"core"];
  }

  if ((a1 & 2) != 0)
  {
    [v3 addObject:@"ocr"];
  }

  if ([v3 count])
  {
    v4 = [v3 componentsJoinedByString:@"|"];
  }

  else if (a1)
  {
    v4 = @"invalid";
  }

  else
  {
    v4 = @"none";
  }

  return v4;
}

__CFString *PLCloudDeletionKeyForType(uint64_t a1)
{
  if ((a1 - 1) > 0x10)
  {
    return @"cloudUnknownDeleteGUIDs";
  }

  else
  {
    return off_1E756C158[a1 - 1];
  }
}

uint64_t PLIsCloudPhotoLibraryEnabledForPhotoLibraryURL(void *a1)
{
  v1 = MEMORY[0x1E69BF2A0];
  v2 = a1;
  v3 = [[v1 alloc] initWithLibraryURL:v2];

  if ([v3 isSystemPhotoLibraryPathManager])
  {
    v4 = _PLIsCloudPhotoLibraryEnabledForCurrentUserWithDataclass(*MEMORY[0x1E6959638]);
  }

  else
  {
    v5 = [PLCPLSettings settingsWithPathManager:v3];
    v4 = [v5 isCloudPhotoLibraryEnabled];
  }

  return v4;
}

uint64_t PLIsCloudPhotoLibraryEnabledForPhotoLibraryBundle(uint64_t a1)
{
  v1 = [PLCPLSettings settingsWithLibraryBundle:a1];
  v2 = [v1 isCloudPhotoLibraryEnabled];

  return v2;
}

uint64_t PLIsCloudPhotoLibraryDisableInProgressForPhotoLibraryBundle(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 && (PLIsCloudPhotoLibraryEnabledForPhotoLibraryBundle(v1) & 1) == 0)
  {
    v4 = [v2 indicatorFileCoordinator];
    v3 = [v4 isDisableICloudPhotos];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id PLCloudCopyDefaultSerialQueueAttributes()
{
  if (PLCloudCopyDefaultSerialQueueAttributes_onceToken != -1)
  {
    dispatch_once(&PLCloudCopyDefaultSerialQueueAttributes_onceToken, &__block_literal_global_58);
  }

  v1 = PLCloudCopyDefaultSerialQueueAttributes_attr;

  return v1;
}

void __PLCloudCopyDefaultSerialQueueAttributes_block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_attr_make_with_qos_class(v2, QOS_CLASS_BACKGROUND, 0);
  v1 = PLCloudCopyDefaultSerialQueueAttributes_attr;
  PLCloudCopyDefaultSerialQueueAttributes_attr = v0;
}

uint64_t __Block_byref_object_copy__41484(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

__CFString *PLCollectionShareKindDescription(int a1)
{
  v1 = @"Unknown";
  if (a1 == 1)
  {
    v1 = @"CPL";
  }

  if (a1 == 2)
  {
    return @"SharedStream";
  }

  else
  {
    return v1;
  }
}

void PLSearchSeasonStringsForDate(void *a1, void *a2, void *a3)
{
  v5 = a3;
  if (a1 && a2)
  {
    v14 = v5;
    v6 = a2;
    v7 = a1;
    v8 = [v6 locale];
    v9 = [v6 component:8 fromDate:v7];

    v10 = [PLSeasonsUtilities _seasonForMonthNumber:v9 locale:v8];
    if (v10 - 1 > 3)
    {
      v11 = 0;
    }

    else
    {
      v11 = off_1E756C328[v10 - 1];
    }

    if ([(__CFString *)v11 length])
    {
      v12 = PLServicesLocalizedFrameworkString();
      v13 = PLSearchLocalizedSynonymsForKey(v11);
      v14[2](v14, v10, v12, v13);
    }

    v5 = v14;
  }
}

void _PLLikeAssetWithCloudAssetUUID(void *a1)
{
  v1 = a1;
  v2 = +[PLPhotoLibrary cloudSharingPhotoLibrary];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = ___PLLikeAssetWithCloudAssetUUID_block_invoke;
  v5[3] = &unk_1E7578848;
  v6 = v2;
  v7 = v1;
  v3 = v1;
  v4 = v2;
  [v4 performTransaction:v5];
}

void _PLSSendCommentToAssetWithCloudAssetUUID(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 length])
  {
    v5 = +[PLPhotoLibrary cloudSharingPhotoLibrary];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = ___PLSSendCommentToAssetWithCloudAssetUUID_block_invoke;
    v7[3] = &unk_1E75761B8;
    v8 = v5;
    v9 = v4;
    v10 = v3;
    v6 = v5;
    [v6 performTransaction:v7];
  }
}

uint64_t PLProcessNotificationResponse(void *a1)
{
  v40[2] = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [v1 actionIdentifier];
  v3 = PLBackendGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v36 = v2;
    _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_DEFAULT, "User invoked notification action with identifier: %@", buf, 0xCu);
  }

  v4 = [v1 notification];
  v5 = [v4 request];
  v6 = [v5 content];

  v7 = [v6 userInfo];
  v8 = [v6 categoryIdentifier];
  if ([v2 isEqualToString:*MEMORY[0x1E69C0108]])
  {
    v9 = [v7 objectForKey:*MEMORY[0x1E69C01B0]];
    _PLLikeAssetWithCloudAssetUUID(v9);
LABEL_14:
    v16 = 1;
    goto LABEL_15;
  }

  if ([v2 isEqualToString:*MEMORY[0x1E69C00A8]])
  {
    v9 = [v7 objectForKey:*MEMORY[0x1E69C01B0]];
    v10 = [v1 userText];
    _PLSSendCommentToAssetWithCloudAssetUUID(v10, v9);
LABEL_7:

    goto LABEL_14;
  }

  v11 = *MEMORY[0x1E69C00A0];
  if (([v2 isEqualToString:*MEMORY[0x1E69C00A0]]& 1) != 0 || [v2 isEqualToString:*MEMORY[0x1E69C00F8]])
  {
    v12 = [v2 isEqualToString:v11];
    v9 = [v7 objectForKey:*MEMORY[0x1E69C0180]];
    if (PLIsAssetsd())
    {
      v13 = +[PLNotificationManager sharedManager];
      [v13 sendResponse:v12 toPhotoStreamInvitationForAlbumWithCloudGUID:v9];
    }

    else
    {
      v13 = +[PLPhotoLibrary cloudSharingPhotoLibrary];
      v14 = [v13 assetsdClient];
      v15 = [v14 notificationClient];
      [v15 asyncNotifyResponseToPhotoStreamInvitationForAlbumWithCloudGUID:v9 acceptInvitation:v12];
    }

    goto LABEL_14;
  }

  if ([v2 isEqualToString:*MEMORY[0x1E69C0100]])
  {
    v9 = [v7 objectForKey:*MEMORY[0x1E69C0180]];
    if (PLIsAssetsd())
    {
      v10 = +[PLNotificationManager sharedManager];
      [v10 reportAsJunkPhotoStreamInvitationForAlbumWithCloudGUID:v9];
      goto LABEL_7;
    }

    v10 = +[PLPhotoLibrary cloudSharingPhotoLibrary];
    v23 = [v10 assetsdClient];
    v30 = [v23 notificationClient];
    [v30 asyncNotifyReportAsJunkPhotoStreamInvitationForAlbumWithCloudGUID:v9];

LABEL_33:
    goto LABEL_7;
  }

  v18 = *MEMORY[0x1E69C0158];
  if ([v8 isEqualToString:*MEMORY[0x1E69C0158]] && -[NSObject isEqualToString:](v2, "isEqualToString:", *MEMORY[0x1E69C0618]))
  {
    v9 = [MEMORY[0x1E695DFF8] URLWithString:@"photos://forYou?type=sharedLibrarySuggestions&source=notification"];
    v19 = [MEMORY[0x1E6963608] defaultWorkspace];
    v20 = *MEMORY[0x1E699F970];
    v39[0] = *MEMORY[0x1E699F990];
    v39[1] = v20;
    v40[0] = MEMORY[0x1E695E118];
    v40[1] = MEMORY[0x1E695E118];
    v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v40 forKeys:v39 count:2];
    v32 = 0;
    v22 = [v19 openSensitiveURL:v9 withOptions:v21 error:&v32];
    v10 = v32;

    if (v22)
    {
      goto LABEL_7;
    }

    v23 = PLBackendGetLog();
    if (!os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_33;
    }

LABEL_31:
    *buf = 138412546;
    v36 = v9;
    v37 = 2112;
    v38 = v10;
    _os_log_impl(&dword_19BF1F000, v23, OS_LOG_TYPE_ERROR, "Failed to navigate to URL: %@ with error: %@", buf, 0x16u);
    goto LABEL_33;
  }

  if ([v8 isEqualToString:v18] && -[NSObject isEqualToString:](v2, "isEqualToString:", *MEMORY[0x1E69C0110]))
  {
    v24 = objc_alloc(MEMORY[0x1E696AFB8]);
    v9 = [v24 initWithStoreIdentifier:*MEMORY[0x1E69C0DA0] type:0];
    v25 = [MEMORY[0x1E695DF00] date];
    [v9 setObject:v25 forKey:*MEMORY[0x1E69C0D90]];

    [v9 synchronize];
    goto LABEL_14;
  }

  if ([v8 isEqualToString:*MEMORY[0x1E69C0150]] && -[NSObject isEqualToString:](v2, "isEqualToString:", *MEMORY[0x1E69C0618]))
  {
    v9 = [MEMORY[0x1E695DFF8] URLWithString:@"photos://album?name=recently-deleted"];
    v26 = [MEMORY[0x1E6963608] defaultWorkspace];
    v27 = *MEMORY[0x1E699F970];
    v33[0] = *MEMORY[0x1E699F990];
    v33[1] = v27;
    v34[0] = MEMORY[0x1E695E118];
    v34[1] = MEMORY[0x1E695E118];
    v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:v33 count:2];
    v31 = 0;
    v29 = [v26 openSensitiveURL:v9 withOptions:v28 error:&v31];
    v10 = v31;

    if (v29)
    {
      goto LABEL_7;
    }

    v23 = PLBackendGetLog();
    if (!os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_33;
    }

    goto LABEL_31;
  }

  v9 = PLBackendGetLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v36 = v2;
    _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_DEBUG, "Ignoring unknown action identifier: %@", buf, 0xCu);
  }

  v16 = 0;
LABEL_15:

  return v16;
}

void sub_19C252B64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C253450(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__42875(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_19C255C64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getLNSpotlightAppEntityMapperClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!LinkServicesLibraryCore_frameworkLibrary)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __LinkServicesLibraryCore_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E756C4B8;
    v8 = 0;
    LinkServicesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!LinkServicesLibraryCore_frameworkLibrary)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *LinkServicesLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"PLSpotlightTranslatorUtilities.m" lineNumber:26 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("LNSpotlightAppEntityMapper");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getLNSpotlightAppEntityMapperClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"PLSpotlightTranslatorUtilities.m" lineNumber:27 description:{@"Unable to find class %s", "LNSpotlightAppEntityMapper"}];

LABEL_10:
    __break(1u);
  }

  getLNSpotlightAppEntityMapperClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __LinkServicesLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  LinkServicesLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_19C2578D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, void *a10, os_signpost_id_t a11, os_activity_scope_state_s a12, SEL sel, __int128 buf)
{
  if (a9 == 1)
  {
    os_activity_scope_leave(&a12);
  }

  if (a11)
  {
    v15 = PLRequestGetLog();
    v16 = v15;
    if (a11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
    {
      Name = sel_getName(sel);
      LODWORD(buf) = 136446210;
      *(&buf + 4) = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v16, OS_SIGNPOST_INTERVAL_END, a11, "PLXPC Sync", "%{public}s", &buf, 0xCu);
    }
  }

  _Unwind_Resume(a1);
}

void sub_19C257ED8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, void *a16, os_signpost_id_t a17, os_activity_scope_state_s a18, SEL sel)
{
  if (a15 == 1)
  {
    os_activity_scope_leave(&a18);
  }

  if (a17)
  {
    v21 = PLRequestGetLog();
    v22 = v21;
    if (a17 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
    {
      Name = sel_getName(sel);
      *(v19 - 80) = 136446210;
      *(v19 - 76) = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v22, OS_SIGNPOST_INTERVAL_END, a17, "PLXPC Sync", "%{public}s", (v19 - 80), 0xCu);
    }
  }

  _Unwind_Resume(a1);
}

__CFString *PLDebugStringForSuggestionType(uint64_t a1)
{
  if ((a1 - 1) > 3)
  {
    return @"PLSearchSuggestionTypeNone";
  }

  else
  {
    return off_1E756C590[a1 - 1];
  }
}

__CFString *PLDebugStringForSuggestionMatchType(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return @"PLSearchSuggestionMatchTypeUndefined";
  }

  else
  {
    return off_1E756C5B0[a1 - 1];
  }
}

void sub_19C2608AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49)
{
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose(&a43, 8);
  _Block_object_dispose(&a49, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__43771(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_19C26286C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49)
{
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose(&a43, 8);
  _Block_object_dispose(&a49, 8);
  _Unwind_Resume(a1);
}

void sub_19C2645E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45)
{
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose(&a39, 8);
  _Block_object_dispose(&a45, 8);
  _Unwind_Resume(a1);
}

void sub_19C26589C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45)
{
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose(&a39, 8);
  _Block_object_dispose(&a45, 8);
  _Unwind_Resume(a1);
}

void sub_19C266860(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49)
{
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose(&a43, 8);
  _Block_object_dispose(&a49, 8);
  _Unwind_Resume(a1);
}

void sub_19C268D44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45)
{
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose(&a39, 8);
  _Block_object_dispose(&a45, 8);
  _Unwind_Resume(a1);
}

void sub_19C269FB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45)
{
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose(&a39, 8);
  _Block_object_dispose(&a45, 8);
  _Unwind_Resume(a1);
}

void sub_19C26A880(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43)
{
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose(&a43, 8);
  _Unwind_Resume(a1);
}

void sub_19C26BE08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43)
{
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose(&a43, 8);
  _Unwind_Resume(a1);
}

void sub_19C26CE94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose(&a37, 8);
  _Unwind_Resume(a1);
}

void sub_19C26EE84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C26F1D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C270E70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49)
{
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose(&a43, 8);
  _Block_object_dispose(&a49, 8);
  _Unwind_Resume(a1);
}

void sub_19C2717BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49)
{
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose(&a43, 8);
  _Block_object_dispose(&a49, 8);
  _Unwind_Resume(a1);
}

void sub_19C2721E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void PLModelMigrationActionRegistration_18000(void *a1)
{
  v63 = a1;
  v1 = [v63 migrationContext];
  v2 = [v1 previousStoreVersion];

  v3 = [v63 migrationContext];
  v4 = [v3 libraryIdentifier];
  v5 = v4;
  v6 = v2 - 18002;
  v7 = v4 == 1 && v2 - 18002 < 0x80;
  v8 = v4 == 1 && v6 < 0x2A;
  v9 = v4 == 1 && v2 < 0x4677;
  v10 = v4 == 1 && v2 < 0x4661;
  v11 = v4 == 1 && v2 < 0x4657;

  [v63 registerActionClass:objc_opt_class() onCondition:v2 < 0x4653];
  [v63 registerActionClass:objc_opt_class() onCondition:v2 < 0x4655];
  [v63 registerActionClass:objc_opt_class() onCondition:v11];
  [v63 registerActionClass:objc_opt_class() onCondition:v2 - 18001 < 0xA];
  [v63 registerActionClass:objc_opt_class() onCondition:v2 >> 4 == 1125];
  [v63 registerActionClass:objc_opt_class() onCondition:v10];
  [v63 registerActionClass:objc_opt_class() onCondition:v2 - 18000 < 0x12];
  [v63 registerActionClass:objc_opt_class() onCondition:v2 - 16000 < 0x7E3];
  [v63 registerActionClass:objc_opt_class() onCondition:v6 < 0x17];
  [v63 registerActionClass:objc_opt_class() onCondition:v2 - 18000 < 0x1A];
  [v63 registerActionClass:objc_opt_class() onCondition:v2 < 0x466D];
  [v63 registerActionClass:objc_opt_class() onCondition:v9];
  [v63 registerActionClass:objc_opt_class() onCondition:v8];
  [v63 registerActionClass:objc_opt_class() onCondition:v2 < 0x4683];
  v12 = objc_opt_class();
  v13 = v5 == 3 && v6 < 0x50;
  v14 = v5 != 3 && v6 < 0x5E;
  [v63 registerActionClass:v12 onCondition:v13];
  [v63 registerActionClass:objc_opt_class() onCondition:v2 < 0x46A2];
  [v63 registerActionClass:objc_opt_class() onCondition:v2 - 18055 < 0x1F];
  [v63 registerActionClass:objc_opt_class() onCondition:v2 - 18034 < 0x36];
  [v63 registerActionClass:objc_opt_class() onCondition:v2 - 18035 < 0x37];
  [v63 registerActionClass:objc_opt_class() onCondition:v2 - 18040 < 0x31];
  [v63 registerActionClass:objc_opt_class() onCondition:v14];
  [v63 registerActionClass:objc_opt_class() onCondition:v6 < 0x5F];
  [v63 registerActionClass:objc_opt_class() onCondition:v7];
  [v63 registerActionClass:objc_opt_class() onCondition:v2 < 0x46E1];
  [v63 registerActionClass:objc_opt_class() onCondition:v2 - 18054 < 0x65];
  v15 = objc_opt_class();
  v17 = v2 >> 5 < 0x239 && v5 == 0;
  [v63 registerActionClass:v15 onCondition:v17];
  [v63 registerActionClass:objc_opt_class() onCondition:v2 - 18000 < 0xA2];
  v18 = objc_opt_class();
  v19 = 0;
  if (v2 <= 0x4706 && v5 != 3)
  {
    v19 = PLPlatformMomentsSupported();
  }

  [v63 registerActionClass:v18 onCondition:v19];
  v20 = objc_opt_class();
  v22 = (v2 - 18002) < 0xB7u && v5 != 3;
  [v63 registerActionClass:v20 onCondition:v22];
  v23 = objc_opt_class();
  v24 = 0;
  if (v2 <= 0x470A && v5 != 3)
  {
    v24 = PLPlatformMomentsSupported();
  }

  [v63 registerActionClass:v23 onCondition:v24];
  [v63 registerActionClass:objc_opt_class() onCondition:(v2 - 18002) < 0xBBu];
  v25 = objc_opt_class();
  v27 = v2 < 0x470E && v5 != 3;
  [v63 registerActionClass:v25 onCondition:v27];
  v28 = objc_opt_class();
  if ((v2 - 18000) > 0x130u)
  {
    v29 = 0;
  }

  else
  {
    v29 = MEMORY[0x19EAEE230]();
  }

  [v63 registerActionClass:v28 onCondition:v29];
  v30 = objc_opt_class();
  v32 = (v2 - 18002) < 0xC1u && v5 != 3;
  [v63 registerActionClass:v30 onCondition:v32];
  v33 = objc_opt_class();
  v35 = (v2 - 18000) < 0xC4u && v5 == 1;
  [v63 registerActionClass:v33 onCondition:v35];
  v36 = objc_opt_class();
  if (v2 >= 0x4715)
  {
    [v63 registerActionClass:v36 onCondition:0];
  }

  else
  {
    v37 = [v63 migrationContext];
    v38 = [v37 pathManager];
    [v63 registerActionClass:v36 onCondition:{objc_msgSend(v38, "isDCIM")}];
  }

  v39 = objc_opt_class();
  v40 = [v63 migrationContext];
  v41 = [v40 pathManager];
  v42 = [v41 isUBF];
  if (v5 == 3)
  {
    v43 = 0;
  }

  else
  {
    v43 = v42;
  }

  v44 = (v2 - 18002);
  v45 = v5 != 3 && v2 - 17501 < 0x326;
  if (v44 < 0xC4)
  {
    v46 = v43;
  }

  else
  {
    v46 = 0;
  }

  [v63 registerActionClass:v39 onCondition:v46];

  [v63 registerActionClass:objc_opt_class() onCondition:0];
  [v63 registerActionClass:objc_opt_class() onCondition:(v2 - 18000) < 0xD2u];
  [v63 registerActionClass:objc_opt_class() onCondition:(v2 - 18000) < 0x132u];
  [v63 registerActionClass:objc_opt_class() onCondition:v45];
  v47 = objc_opt_class();
  v49 = v2 < 0x4786 || v2 == 18400;
  v50 = v5 == 1 && v2 - 18300 < 9;
  v51 = v5 == 1 && v49;
  [v63 registerActionClass:v47 onCondition:v50];
  [v63 registerActionClass:objc_opt_class() onCondition:v2 >> 5 < 0x23F];
  [v63 registerActionClass:objc_opt_class() onCondition:v51];
  v52 = objc_opt_class();
  v53 = 0;
  if (v2 <= 0x4A3A)
  {
    v54 = [v63 migrationContext];
    v55 = [v54 libraryIdentifier];

    v53 = v55 == 1;
  }

  [v63 registerActionClass:v52 onCondition:v53];
  [v63 registerActionClass:objc_opt_class() onCondition:v2 < 0x4847];
  [v63 registerActionClass:objc_opt_class() onCondition:v44 < 0x1F6];
  v56 = objc_opt_class();
  v57 = v5 != 3 && v2 < 0x4849;
  [v63 registerActionClass:v56 onCondition:v57];
  v58 = objc_opt_class();
  v60 = v2 < 0x4A6A && v5 == 1;
  [v63 registerActionClass:v58 onCondition:v60];
  v61 = objc_opt_class();
  v62 = 0;
  if (v2 <= 0x4849 && v5 != 3)
  {
    v62 = PLPlatformMomentsSupported();
  }

  [v63 resetBackgroundActionClass:v61 onCondition:v62];
  [v63 resetBackgroundActionClass:objc_opt_class() onCondition:v2 < 0x46AD];
  [v63 resetBackgroundActionClass:objc_opt_class() onCondition:v2 < 0x4723];
}

void sub_19C273F28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__44497(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

__CFString *PLDescriptionForCSVecDataFormat(unsigned int a1)
{
  if (a1 > 2)
  {
    return @"unknown";
  }

  else
  {
    return off_1E756CA38[a1];
  }
}

__CFString *PLDescriptionForCSVecDimensions(unsigned int a1)
{
  if (a1 > 2)
  {
    return @"unknown";
  }

  else
  {
    return off_1E756CA50[a1];
  }
}

id PLSearchJSONForCSEmbedding(void *a1)
{
  v11[3] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = a1;
    v2 = [v1 vectors];
    v3 = PFMap();

    v10[0] = @"format";
    v4 = [v1 format];
    if (v4 > 2)
    {
      v5 = @"unknown";
    }

    else
    {
      v5 = off_1E756CA38[v4];
    }

    v11[0] = v5;
    v10[1] = @"dimension";
    v7 = [v1 dimension];

    if (v7 > 2)
    {
      v8 = @"unknown";
    }

    else
    {
      v8 = off_1E756CA50[v7];
    }

    v10[2] = @"vectors";
    v11[1] = v8;
    v11[2] = v3;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:3];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id getVCPMediaAnalyzerClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getVCPMediaAnalyzerClass_softClass_44793;
  v7 = getVCPMediaAnalyzerClass_softClass_44793;
  if (!getVCPMediaAnalyzerClass_softClass_44793)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getVCPMediaAnalyzerClass_block_invoke_44794;
    v3[3] = &unk_1E7577EA0;
    v3[4] = &v4;
    __getVCPMediaAnalyzerClass_block_invoke_44794(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_19C275FC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getVCPMediaAnalyzerClass_block_invoke_44794(uint64_t a1)
{
  MediaAnalysisLibrary_44795();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("VCPMediaAnalyzer");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getVCPMediaAnalyzerClass_softClass_44793 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getVCPMediaAnalyzerClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"PLMediaAnalysisServiceRequestAdapter.m" lineNumber:39 description:{@"Unable to find class %s", "VCPMediaAnalyzer"}];

    __break(1u);
  }
}

void *MediaAnalysisLibrary_44795()
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!MediaAnalysisLibraryCore_frameworkLibrary_44806)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __MediaAnalysisLibraryCore_block_invoke_44807;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E756CAE0;
    v6 = 0;
    MediaAnalysisLibraryCore_frameworkLibrary_44806 = _sl_dlopen();
  }

  v0 = MediaAnalysisLibraryCore_frameworkLibrary_44806;
  if (!MediaAnalysisLibraryCore_frameworkLibrary_44806)
  {
    v0 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *MediaAnalysisLibrary(void)"];
    [v0 handleFailureInFunction:v3 file:@"PLMediaAnalysisServiceRequestAdapter.m" lineNumber:37 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t __MediaAnalysisLibraryCore_block_invoke_44807()
{
  result = _sl_dlopen();
  MediaAnalysisLibraryCore_frameworkLibrary_44806 = result;
  return result;
}

void getVCPPhotosPECProcessingVersion()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getVCPPhotosPECProcessingVersionSymbolLoc_ptr;
  v7 = getVCPPhotosPECProcessingVersionSymbolLoc_ptr;
  if (!getVCPPhotosPECProcessingVersionSymbolLoc_ptr)
  {
    v1 = MediaAnalysisLibrary_44795();
    v5[3] = dlsym(v1, "VCPPhotosPECProcessingVersion");
    getVCPPhotosPECProcessingVersionSymbolLoc_ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (!v0)
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"const int32_t getVCPPhotosPECProcessingVersion(void)"];
    [v2 handleFailureInFunction:v3 file:@"PLMediaAnalysisServiceRequestAdapter.m" lineNumber:50 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_19C2763E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getVCPPhotosPECProcessingVersionSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaAnalysisLibrary_44795();
  result = dlsym(v2, "VCPPhotosPECProcessingVersion");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getVCPPhotosPECProcessingVersionSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_19C2765F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getVCPPhotosVisualSearchProcessingVersionSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaAnalysisLibrary_44795();
  result = dlsym(v2, "VCPPhotosVisualSearchProcessingVersion");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getVCPPhotosVisualSearchProcessingVersionSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_19C2767DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getVCPPhotosOCRProcessingVersionSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaAnalysisLibrary_44795();
  result = dlsym(v2, "VCPPhotosOCRProcessingVersion");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getVCPPhotosOCRProcessingVersionSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_19C2769B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getVCPPhotosVisualSearchAlgorithmVersionSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaAnalysisLibrary_44795();
  result = dlsym(v2, "VCPPhotosVisualSearchAlgorithmVersion");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getVCPPhotosVisualSearchAlgorithmVersionSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_19C276B80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getVCPPhotosCaptionProcessingVersionSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaAnalysisLibrary_44795();
  result = dlsym(v2, "VCPPhotosCaptionProcessingVersion");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getVCPPhotosCaptionProcessingVersionSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void getMediaAnalysisVersion()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getMediaAnalysisVersionSymbolLoc_ptr;
  v7 = getMediaAnalysisVersionSymbolLoc_ptr;
  if (!getMediaAnalysisVersionSymbolLoc_ptr)
  {
    v1 = MediaAnalysisLibrary_44795();
    v5[3] = dlsym(v1, "MediaAnalysisVersion");
    getMediaAnalysisVersionSymbolLoc_ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (!v0)
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"const int32_t getMediaAnalysisVersion(void)"];
    [v2 handleFailureInFunction:v3 file:@"PLMediaAnalysisServiceRequestAdapter.m" lineNumber:47 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_19C276D64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getMediaAnalysisVersionSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaAnalysisLibrary_44795();
  result = dlsym(v2, "MediaAnalysisVersion");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMediaAnalysisVersionSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_19C276F34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getMediaAnalysisEmbeddingChangedVersionSymbolLoc_block_invoke_44824(uint64_t a1)
{
  v2 = MediaAnalysisLibrary_44795();
  result = dlsym(v2, "MediaAnalysisEmbeddingChangedVersion");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMediaAnalysisEmbeddingChangedVersionSymbolLoc_ptr_44823 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getVCPMediaAnalysisServiceClass_44829()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getVCPMediaAnalysisServiceClass_softClass_44831;
  v7 = getVCPMediaAnalysisServiceClass_softClass_44831;
  if (!getVCPMediaAnalysisServiceClass_softClass_44831)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getVCPMediaAnalysisServiceClass_block_invoke_44832;
    v3[3] = &unk_1E7577EA0;
    v3[4] = &v4;
    __getVCPMediaAnalysisServiceClass_block_invoke_44832(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_19C277168(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getVCPMediaAnalysisServiceClass_block_invoke_44832(uint64_t a1)
{
  MediaAnalysisLibrary_44795();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("VCPMediaAnalysisService");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getVCPMediaAnalysisServiceClass_softClass_44831 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getVCPMediaAnalysisServiceClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"PLMediaAnalysisServiceRequestAdapter.m" lineNumber:38 description:{@"Unable to find class %s", "VCPMediaAnalysisService"}];

    __break(1u);
  }
}

id getMADServiceClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getMADServiceClass_softClass;
  v7 = getMADServiceClass_softClass;
  if (!getMADServiceClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getMADServiceClass_block_invoke;
    v3[3] = &unk_1E7577EA0;
    v3[4] = &v4;
    __getMADServiceClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_19C27760C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getMADServiceClass_block_invoke(uint64_t a1)
{
  MediaAnalysisServicesLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("MADService");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMADServiceClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getMADServiceClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"PLMediaAnalysisServiceRequestAdapter.m" lineNumber:77 description:{@"Unable to find class %s", "MADService"}];

    __break(1u);
  }
}

void MediaAnalysisServicesLibrary()
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!MediaAnalysisServicesLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __MediaAnalysisServicesLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E756CAF8;
    v5 = 0;
    MediaAnalysisServicesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!MediaAnalysisServicesLibraryCore_frameworkLibrary)
  {
    v1 = [MEMORY[0x1E696AAA8] currentHandler];
    v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *MediaAnalysisServicesLibrary(void)"];
    [v1 handleFailureInFunction:v2 file:@"PLMediaAnalysisServiceRequestAdapter.m" lineNumber:76 description:{@"%s", v3[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v0 = v3[0];
  if (v3[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t __MediaAnalysisServicesLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  MediaAnalysisServicesLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_19C277BD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__44949(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_19C277FF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C278344(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getMADVideoSafetyClassificationRequestClass_block_invoke(uint64_t a1)
{
  MediaAnalysisServicesLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("MADVideoSafetyClassificationRequest");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMADVideoSafetyClassificationRequestClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getMADVideoSafetyClassificationRequestClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"PLMediaAnalysisServiceRequestAdapter.m" lineNumber:78 description:{@"Unable to find class %s", "MADVideoSafetyClassificationRequest"}];

    __break(1u);
  }
}

void getVCPMediaAnalysisService_AllowOnDemandOption()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = getVCPMediaAnalysisService_AllowOnDemandOptionSymbolLoc_ptr;
  v9 = getVCPMediaAnalysisService_AllowOnDemandOptionSymbolLoc_ptr;
  if (!getVCPMediaAnalysisService_AllowOnDemandOptionSymbolLoc_ptr)
  {
    v1 = MediaAnalysisLibrary_44795();
    v7[3] = dlsym(v1, "VCPMediaAnalysisService_AllowOnDemandOption");
    getVCPMediaAnalysisService_AllowOnDemandOptionSymbolLoc_ptr = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v0)
  {
    v2 = *v0;

    v3 = v2;
  }

  else
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getVCPMediaAnalysisService_AllowOnDemandOption(void)"];
    [v4 handleFailureInFunction:v5 file:@"PLMediaAnalysisServiceRequestAdapter.m" lineNumber:40 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_19C27865C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C278ED8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getMediaAnalysisResultCollectionThemeVersionAttributeKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaAnalysisLibrary_44795();
  result = dlsym(v2, "MediaAnalysisResultCollectionThemeVersionAttributeKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMediaAnalysisResultCollectionThemeVersionAttributeKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_19C27908C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getMediaAnalysisResultCollectionThemeAttributeKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaAnalysisLibrary_44795();
  result = dlsym(v2, "MediaAnalysisResultCollectionThemeAttributeKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMediaAnalysisResultCollectionThemeAttributeKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_19C279240(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getMediaAnalysisCollectionThemeResultsKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaAnalysisLibrary_44795();
  result = dlsym(v2, "MediaAnalysisCollectionThemeResultsKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMediaAnalysisCollectionThemeResultsKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_19C279F18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C27A0CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C27A280(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C27A434(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C27A5F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getMediaAnalysisResultsKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaAnalysisLibrary_44795();
  result = dlsym(v2, "MediaAnalysisResultsKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMediaAnalysisResultsKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_19C27A7A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getMediaAnalysisQualityKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaAnalysisLibrary_44795();
  result = dlsym(v2, "MediaAnalysisQualityKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMediaAnalysisQualityKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_19C27A95C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getMediaAnalysisResultDurationKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaAnalysisLibrary_44795();
  result = dlsym(v2, "MediaAnalysisResultDurationKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMediaAnalysisResultDurationKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_19C27AB10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getMediaAnalysisResultStartKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaAnalysisLibrary_44795();
  result = dlsym(v2, "MediaAnalysisResultStartKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMediaAnalysisResultStartKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_19C27ACC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getMediaAnalysisMovieHighlightResultsKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaAnalysisLibrary_44795();
  result = dlsym(v2, "MediaAnalysisMovieHighlightResultsKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMediaAnalysisMovieHighlightResultsKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void getMediaAnalysisResultImageCaptionConfidenceAttributeKey()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = getMediaAnalysisResultImageCaptionConfidenceAttributeKeySymbolLoc_ptr;
  v9 = getMediaAnalysisResultImageCaptionConfidenceAttributeKeySymbolLoc_ptr;
  if (!getMediaAnalysisResultImageCaptionConfidenceAttributeKeySymbolLoc_ptr)
  {
    v1 = MediaAnalysisLibrary_44795();
    v7[3] = dlsym(v1, "MediaAnalysisResultImageCaptionConfidenceAttributeKey");
    getMediaAnalysisResultImageCaptionConfidenceAttributeKeySymbolLoc_ptr = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v0)
  {
    v2 = *v0;

    v3 = v2;
  }

  else
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getMediaAnalysisResultImageCaptionConfidenceAttributeKey(void)"];
    [v4 handleFailureInFunction:v5 file:@"PLMediaAnalysisServiceRequestAdapter.m" lineNumber:65 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_19C27AE7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getMediaAnalysisResultImageCaptionConfidenceAttributeKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaAnalysisLibrary_44795();
  result = dlsym(v2, "MediaAnalysisResultImageCaptionConfidenceAttributeKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMediaAnalysisResultImageCaptionConfidenceAttributeKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_19C27B0D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getMediaAnalysisResultPersonIDAttributeKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaAnalysisLibrary_44795();
  result = dlsym(v2, "MediaAnalysisResultPersonIDAttributeKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMediaAnalysisResultPersonIDAttributeKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_19C27B284(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getMediaAnalysisFaceResultsKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaAnalysisLibrary_44795();
  result = dlsym(v2, "MediaAnalysisFaceResultsKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMediaAnalysisFaceResultsKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_19C27B438(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getMediaAnalysisResultVideoCaptionTextAttributeKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaAnalysisLibrary_44795();
  result = dlsym(v2, "MediaAnalysisResultVideoCaptionTextAttributeKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMediaAnalysisResultVideoCaptionTextAttributeKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_19C27B5EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getMediaAnalysisMiCaVideoCaptionResultsKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaAnalysisLibrary_44795();
  result = dlsym(v2, "MediaAnalysisMiCaVideoCaptionResultsKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMediaAnalysisMiCaVideoCaptionResultsKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_19C27B7A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getMediaAnalysisResultImageCaptionTextAttributeKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaAnalysisLibrary_44795();
  result = dlsym(v2, "MediaAnalysisResultImageCaptionTextAttributeKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMediaAnalysisResultImageCaptionTextAttributeKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_19C27B958(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getMediaAnalysisResultAttributesKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaAnalysisLibrary_44795();
  result = dlsym(v2, "MediaAnalysisResultAttributesKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMediaAnalysisResultAttributesKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_19C27BB0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getMediaAnalysisMiCaImageCaptionResultsKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaAnalysisLibrary_44795();
  result = dlsym(v2, "MediaAnalysisMiCaImageCaptionResultsKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMediaAnalysisMiCaImageCaptionResultsKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_19C27BCC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getMediaAnalysisResultVideoCaptionPreferenceAttributeKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaAnalysisLibrary_44795();
  result = dlsym(v2, "MediaAnalysisResultVideoCaptionPreferenceAttributeKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMediaAnalysisResultVideoCaptionPreferenceAttributeKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_19C27BE74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getMediaAnalysisVideoCaptionPreferenceResultsKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaAnalysisLibrary_44795();
  result = dlsym(v2, "MediaAnalysisVideoCaptionPreferenceResultsKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMediaAnalysisVideoCaptionPreferenceResultsKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_19C27C150(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void getVCPMediaAnalysisService_AllowStreamingOption()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = getVCPMediaAnalysisService_AllowStreamingOptionSymbolLoc_ptr;
  v9 = getVCPMediaAnalysisService_AllowStreamingOptionSymbolLoc_ptr;
  if (!getVCPMediaAnalysisService_AllowStreamingOptionSymbolLoc_ptr)
  {
    v1 = MediaAnalysisLibrary_44795();
    v7[3] = dlsym(v1, "VCPMediaAnalysisService_AllowStreamingOption");
    getVCPMediaAnalysisService_AllowStreamingOptionSymbolLoc_ptr = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v0)
  {
    v2 = *v0;

    v3 = v2;
  }

  else
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getVCPMediaAnalysisService_AllowStreamingOption(void)"];
    [v4 handleFailureInFunction:v5 file:@"PLMediaAnalysisServiceRequestAdapter.m" lineNumber:41 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_19C27C2B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C27CED4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__45089(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_19C27D960(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49)
{
  _Block_object_dispose(&a45, 8);
  _Block_object_dispose(&a49, 8);
  _Unwind_Resume(a1);
}

void sub_19C27E8D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  objc_destroyWeak((v23 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak(&a22);
  _Unwind_Resume(a1);
}

id PLBackgroundMigrationActionQueue()
{
  if (PLBackgroundMigrationActionQueue_onceToken != -1)
  {
    dispatch_once(&PLBackgroundMigrationActionQueue_onceToken, &__block_literal_global_45165);
  }

  v1 = PLBackgroundMigrationActionQueue_sBackgroundMigrationActionQueue;

  return v1;
}

void PLDeregisterBackgroundMigrationLibraryURL(void *a1)
{
  if (a1)
  {
    v1 = a1;
    os_unfair_lock_lock(&sBackgroundDefaultsUpdateLock);
    v2 = [MEMORY[0x1E695E000] standardUserDefaults];
    v3 = [v2 dictionaryForKey:@"PLBackgroundMigrationPaths"];
    v6 = [v3 mutableCopy];

    v4 = [v1 path];

    [v6 removeObjectForKey:v4];
    v5 = [MEMORY[0x1E695E000] standardUserDefaults];
    [v5 setObject:v6 forKey:@"PLBackgroundMigrationPaths"];

    os_unfair_lock_unlock(&sBackgroundDefaultsUpdateLock);
  }
}

uint64_t PLBumpBackgroundMigrationLibraryURL(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = a1;
  os_unfair_lock_lock(&sBackgroundDefaultsUpdateLock);
  v2 = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [v2 dictionaryForKey:@"PLBackgroundMigrationPaths"];
  v4 = [v3 mutableCopy];

  v5 = [v1 path];
  v6 = [v4 objectForKeyedSubscript:v5];
  v7 = [v6 intValue];

  v8 = (v7 + 1);
  v9 = [MEMORY[0x1E696AD98] numberWithInt:v8];
  v10 = [v1 path];

  [v4 setObject:v9 forKeyedSubscript:v10];
  v11 = [MEMORY[0x1E695E000] standardUserDefaults];
  [v11 setObject:v4 forKey:@"PLBackgroundMigrationPaths"];

  os_unfair_lock_unlock(&sBackgroundDefaultsUpdateLock);
  return v8;
}

void __PLBackgroundMigrationActionQueue_block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("com.apple.photos.BackgroundMigrationActionProcessing", v2);
  v1 = PLBackgroundMigrationActionQueue_sBackgroundMigrationActionQueue;
  PLBackgroundMigrationActionQueue_sBackgroundMigrationActionQueue = v0;
}

void PLRegisterBackgroundMigrationLibraryURL(void *a1)
{
  v8 = a1;
  if (v8)
  {
    os_unfair_lock_lock(&sBackgroundDefaultsUpdateLock);
    v1 = [MEMORY[0x1E695E000] standardUserDefaults];
    v2 = [v1 dictionaryForKey:@"PLBackgroundMigrationPaths"];
    v3 = [v2 mutableCopy];

    if (!v3)
    {
      v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    }

    v4 = [v8 path];
    v5 = [v3 objectForKeyedSubscript:v4];

    if (!v5)
    {
      v6 = [v8 path];
      [v3 setObject:&unk_1F0FBC910 forKeyedSubscript:v6];

      v7 = [MEMORY[0x1E695E000] standardUserDefaults];
      [v7 setObject:v3 forKey:@"PLBackgroundMigrationPaths"];
    }

    os_unfair_lock_unlock(&sBackgroundDefaultsUpdateLock);
  }
}

id PLRegisteredBackgroundMigrationPaths()
{
  v0 = [MEMORY[0x1E695E000] standardUserDefaults];
  v1 = [v0 dictionaryForKey:@"PLBackgroundMigrationPaths"];

  v2 = [v1 allKeys];

  return v2;
}

void *PLIsFinalBackgroundMigrationRetryAttempt(void *result)
{
  if (result)
  {
    v1 = result;
    os_unfair_lock_lock(&sBackgroundDefaultsUpdateLock);
    v2 = [MEMORY[0x1E695E000] standardUserDefaults];
    v3 = [v2 dictionaryForKey:@"PLBackgroundMigrationPaths"];
    v4 = [v3 mutableCopy];

    v5 = [v1 path];

    v6 = [v4 objectForKeyedSubscript:v5];
    LODWORD(v3) = [v6 intValue];

    os_unfair_lock_unlock(&sBackgroundDefaultsUpdateLock);
    return (v3 > 2);
  }

  return result;
}

id _PLDuplicateAssetLogString(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [MEMORY[0x1E696AD60] stringWithString:a1];
  if ([v5 length])
  {
    [v7 appendFormat:@". Property: %@", v5];
  }

  if ([v6 length])
  {
    [v7 appendFormat:@". %@", v6];
  }

  return v7;
}

void sub_19C285218(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C289820(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getMBManagerClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!MobileBackupLibraryCore_frameworkLibrary)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __MobileBackupLibraryCore_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E756CEC8;
    v8 = 0;
    MobileBackupLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!MobileBackupLibraryCore_frameworkLibrary)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *MobileBackupLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"PLLibraryServicesManager.m" lineNumber:96 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("MBManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getMBManagerClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"PLLibraryServicesManager.m" lineNumber:97 description:{@"Unable to find class %s", "MBManager"}];

LABEL_10:
    __break(1u);
  }

  getMBManagerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __MobileBackupLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  MobileBackupLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_19C28A95C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9)
{
  if (a2 == 1)
  {
    v10 = objc_begin_catch(exception_object);
    v11 = PLLibraryServicesGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = [v9 logPrefix];
      LODWORD(a9) = 138543618;
      *(&a9 + 4) = v12;
      WORD6(a9) = 2112;
      *(&a9 + 14) = v10;
      _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_ERROR, "%{public}@: Exception raised during _stopObservingLibraryStateCompletedAllOperations %@", &a9, 0x16u);
    }

    objc_end_catch();
    JUMPOUT(0x19C28A920);
  }

  _Unwind_Resume(exception_object);
}

void sub_19C28BB58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C28BF8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 48), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__46470(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_19C28C950(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  _Block_object_dispose(&a22, 8);
  _Block_object_dispose(&a28, 8);
  _Block_object_dispose(&a32, 8);
  _Unwind_Resume(a1);
}

void sub_19C28CFF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C28DB94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C28DF3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_19C28EAF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19C28F56C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_19C28F848(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_19C290538(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_19C290690(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C2909A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C290CD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19C2925C4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 160));
  _Unwind_Resume(a1);
}

void sub_19C293D90(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_19C293F50(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_19C2942CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19C294E90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__46760(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_19C2951D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C295314(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 48), 8);
  _Unwind_Resume(a1);
}

void sub_19C296190(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__46858(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __PLIndexRevGeoPlace_block_invoke(uint64_t a1, void *a2, unint64_t a3)
{
  v5 = a2;
  if ([v5 length])
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __PLIndexRevGeoPlace_block_invoke_2;
    aBlock[3] = &unk_1E756F2F0;
    v6 = v5;
    v9 = v6;
    v7 = _Block_copy(aBlock);
    if (a3 <= 0xC && ((1 << a3) & 0x1420) != 0 || [*(a1 + 32) indexOfObjectPassingTest:v7] == 0x7FFFFFFFFFFFFFFFLL)
    {
      [*(a1 + 40) addContentString:v6 category:a3 owningCategory:0];
    }
  }
}

uint64_t __PLIndexRevGeoPlace_block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 text];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

void sub_19C2A4CFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C2A5060(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__48476(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_19C2A5344(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v17 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_19C2A9AEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(&a35, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__48702(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

BOOL PLNumberIsEqual(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  v6 = (v3 | v4) == 0;
  if (v3 && v4)
  {
    [v3 doubleValue];
    v8 = v7;
    [v5 doubleValue];
    v6 = vabdd_f64(v8, v9) < 2.22044605e-16;
  }

  return v6;
}

__CFString *PLBackgroundJobWorkerSearchJobFlagsDescription(uint64_t a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v3 = v2;
    if (v1)
    {
      [v2 addObject:@"delete"];
      if ((v1 & 2) == 0)
      {
LABEL_4:
        if ((v1 & 4) == 0)
        {
          goto LABEL_5;
        }

        goto LABEL_24;
      }
    }

    else if ((v1 & 2) == 0)
    {
      goto LABEL_4;
    }

    [v3 addObject:@"insert"];
    if ((v1 & 4) == 0)
    {
LABEL_5:
      if ((v1 & 8) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_25;
    }

LABEL_24:
    [v3 addObject:@"asset-core"];
    if ((v1 & 8) == 0)
    {
LABEL_6:
      if ((v1 & 0x10) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_26;
    }

LABEL_25:
    [v3 addObject:@"asset-ocr"];
    if ((v1 & 0x10) == 0)
    {
LABEL_7:
      if ((v1 & 0x20) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_27;
    }

LABEL_26:
    [v3 addObject:@"asset-face"];
    if ((v1 & 0x20) == 0)
    {
LABEL_8:
      if ((v1 & 0x1000) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_28;
    }

LABEL_27:
    [v3 addObject:@"album"];
    if ((v1 & 0x1000) == 0)
    {
LABEL_9:
      if ((v1 & 0x40) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_29;
    }

LABEL_28:
    [v3 addObject:@"collectionShare"];
    if ((v1 & 0x40) == 0)
    {
LABEL_10:
      if ((v1 & 0x80) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_30;
    }

LABEL_29:
    [v3 addObject:@"highlight"];
    if ((v1 & 0x80) == 0)
    {
LABEL_11:
      if ((v1 & 0x100) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_31;
    }

LABEL_30:
    [v3 addObject:@"memory"];
    if ((v1 & 0x100) == 0)
    {
LABEL_12:
      if ((v1 & 0x2000) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_32;
    }

LABEL_31:
    [v3 addObject:@"assets-person"];
    if ((v1 & 0x2000) == 0)
    {
LABEL_13:
      if ((v1 & 0x400) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_33;
    }

LABEL_32:
    [v3 addObject:@"person"];
    if ((v1 & 0x400) == 0)
    {
LABEL_14:
      if ((v1 & 0x200) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_34;
    }

LABEL_33:
    [v3 addObject:@"assets-searchentity"];
    if ((v1 & 0x200) == 0)
    {
LABEL_15:
      if ((v1 & 0x800) == 0)
      {
LABEL_17:
        v4 = [v3 componentsJoinedByString:@"|"];

        goto LABEL_19;
      }

LABEL_16:
      [v3 addObject:@"assets-moment"];
      goto LABEL_17;
    }

LABEL_34:
    [v3 addObject:@"searchentity-rankingscore"];
    if ((v1 & 0x800) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  v4 = @"none";
LABEL_19:

  return v4;
}

uint64_t PLSearchIndexingAssetPropertySetFromSearchJobFlags(unint64_t a1)
{
  v1 = (a1 >> 2) & 2;
  if ((a1 & 0x14) != 0)
  {
    ++v1;
  }

  if ((a1 & 2) != 0)
  {
    return 3;
  }

  else
  {
    return v1;
  }
}

void sub_19C2AE2E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a33, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__49070(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_19C2AF1A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C2AF9D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C2B1308(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C2B16D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__49436(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_19C2B1964(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v13 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v11 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_19C2B1D60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v13 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v11 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_19C2B20AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v13 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v11 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_19C2B2618(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C2B31EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45)
{
  _Block_object_dispose(&a39, 8);
  _Block_object_dispose(&a45, 8);
  _Block_object_dispose((v45 - 240), 8);
  _Unwind_Resume(a1);
}

void sub_19C2B35A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C2B3E5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a28, 8);
  _Unwind_Resume(a1);
}

void sub_19C2B5D40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51)
{
  _Block_object_dispose(&a39, 8);
  _Block_object_dispose(&a45, 8);
  _Block_object_dispose(&a51, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__49893(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_19C2B7B70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C2B8418(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

__CFString *PLDescriptionForCriteriaBGSTTaskPriority(uint64_t a1)
{
  if (a1)
  {
    return @"utility";
  }

  else
  {
    return @"maintenance";
  }
}

void sub_19C2BE58C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a39, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__51017(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_19C2C7C84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _PLEnsureIntermediateDirectoriesExistForFilePath(void *a1, uint64_t a2)
{
  v3 = [a1 stringByDeletingLastPathComponent];
  v4 = MEMORY[0x1E69BF238];
  v5 = [MEMORY[0x1E696AC08] defaultManager];
  v6 = [v4 createDirectoryAtPath:v3 error:a2 usingFileManager:v5];

  return v6;
}

void sub_19C2CF5B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_19C2CF954(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C2CFC04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C2D595C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__51815(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_19C2D7B7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49)
{
  _Block_object_dispose(&a43, 8);
  _Block_object_dispose(&a49, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__51940(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_19C2D8948(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v9 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_19C2D8F64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a19, 8);
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a29, 8);
  _Unwind_Resume(a1);
}

void sub_19C2D94C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose((v31 - 144), 8);
  _Unwind_Resume(a1);
}

void photosPersonInfoChanged(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v14 = *MEMORY[0x1E69E9840];
  v7 = [a5 objectForKey:@"personID"];
  v8 = PLPhotoSharingGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412546;
    v11 = objc_opt_class();
    v12 = 2112;
    v13 = a5;
    v9 = v11;
    _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_DEFAULT, "%@ got photosPersonInfoChanged %@", &v10, 0x16u);
  }

  [a2 clearCacheForPersonID:v7];
}

uint64_t PLPrimaryDataStoreKeyStrategyFromByte(uint64_t result)
{
  if (result >= 0x10)
  {
    return 16;
  }

  else
  {
    return result;
  }
}

id PLPrimaryDataStoreKeyClassFromStrategy(int a1)
{
  if (a1 == 3 || a1 == 4 || a1 == 16)
  {
    v2 = objc_opt_class();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t PLPrimaryDataStoreKeyStrategyFromData(void *a1)
{
  v2 = 0;
  [a1 getBytes:&v2 length:1];
  if (v2 >= 0x10u)
  {
    return 16;
  }

  else
  {
    return v2;
  }
}

id PLPrimaryDataStoreKeyClassFromData(void *a1)
{
  v5 = 0;
  [a1 getBytes:&v5 length:1];
  v1 = v5;
  if (v5 >= 0x10u)
  {
    v1 = 16;
  }

  if (v1 == 3 || v1 == 4 || v1 == 16)
  {
    v2 = objc_opt_class();
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;

  return v3;
}

void sub_19C2DF124(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getRTRoutineManagerClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getRTRoutineManagerClass_softClass;
  v7 = getRTRoutineManagerClass_softClass;
  if (!getRTRoutineManagerClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getRTRoutineManagerClass_block_invoke;
    v3[3] = &unk_1E7577EA0;
    v3[4] = &v4;
    __getRTRoutineManagerClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_19C2E0C4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getRTRoutineManagerClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!CoreRoutineLibraryCore_frameworkLibrary)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __CoreRoutineLibraryCore_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E756DB00;
    v8 = 0;
    CoreRoutineLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!CoreRoutineLibraryCore_frameworkLibrary)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *CoreRoutineLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"PLRoutineService.m" lineNumber:28 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("RTRoutineManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getRTRoutineManagerClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"PLRoutineService.m" lineNumber:29 description:{@"Unable to find class %s", "RTRoutineManager"}];

LABEL_10:
    __break(1u);
  }

  getRTRoutineManagerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __CoreRoutineLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  CoreRoutineLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_19C2E2774(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__52880(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_19C2E2C30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C2E4CF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __PLDiffArrays_block_invoke(uint64_t a1, uint64_t a2)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v3 = 0x7FFFFFFFFFFFFFFFLL;
  v11 = 0x7FFFFFFFFFFFFFFFLL;
  v4 = *(a1 + 32);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __PLDiffArrays_block_invoke_2;
  v7[3] = &unk_1E7570240;
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7[6] = a2;
  v7[7] = v6;
  v7[4] = &v8;
  v7[5] = v5;
  [v4 enumerateIndexesUsingBlock:v7];
  if (v9[3] != 0x7FFFFFFFFFFFFFFFLL)
  {
    [*(a1 + 32) removeIndex:?];
    v3 = v9[3];
  }

  CFArrayAppendValue(*(a1 + 56), v3);
  _Block_object_dispose(&v8, 8);
}

void *__PLDiffArrays_block_invoke_2(void *result, uint64_t a2, _BYTE *a3)
{
  if (*(result[5] + 8 * result[6]) == *(result[7] + 8 * a2))
  {
    *a3 = 1;
    *(*(result[4] + 8) + 24) = a2;
  }

  return result;
}

void sub_19C2E6838(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__53337(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_19C2E7B44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

void sub_19C2E817C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C2E99E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a29, 8);
  _Unwind_Resume(a1);
}

void sub_19C2EA600(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

void PLModelMigrationActionRegistration_15000(void *a1)
{
  v29 = a1;
  v1 = [v29 migrationContext];
  v2 = [v1 previousStoreVersion];

  v3 = [v29 migrationContext];
  v4 = [v3 libraryIdentifier];

  v5 = [v29 migrationContext];
  v6 = [v5 pathManager];

  v7 = objc_opt_class();
  v8 = v2 - 15000;
  v10 = v2 >> 2 < 0xE29 || v8 < 0x43;
  [v29 registerActionClass:v7 onCondition:v10];
  [v29 registerActionClass:objc_opt_class() onCondition:v2 < 0x3AE5];
  v11 = objc_opt_class();
  v13 = v2 < 0x38A7 || v8 < 0x54;
  [v29 registerActionClass:v11 onCondition:v13];
  [v29 registerActionClass:objc_opt_class() onCondition:v2 < 0x3AED];
  v14 = objc_opt_class();
  v16 = v2 < 0x3AFB && v4 != 3;
  [v29 registerActionClass:v14 onCondition:v16];
  [v29 registerActionClass:objc_opt_class() onCondition:v8 < 0x77];
  v17 = objc_opt_class();
  if (v2 >> 4 > 0x3B0)
  {
    v18 = 0;
  }

  else
  {
    v18 = [v6 isDCIM];
  }

  [v29 registerActionClass:v17 onCondition:v18];
  [v29 registerActionClass:objc_opt_class() onCondition:v2 == 15120];
  [v29 registerActionClass:objc_opt_class() onCondition:v2 >> 3 < 0x763];
  v19 = objc_opt_class();
  if (v2 > 0x3B18)
  {
    v20 = 0;
  }

  else
  {
    v20 = [v6 isUBF];
  }

  [v29 registerActionClass:v19 onCondition:v20];
  [v29 registerActionClass:objc_opt_class() onCondition:v2 < 0x3B33];
  [v29 registerActionClass:objc_opt_class() onCondition:v2 >> 3 < 0x769];
  v21 = objc_opt_class();
  v23 = (v2 - 15000) < 0xCCu && v4 == 3;
  [v29 registerActionClass:v21 onCondition:v23];
  [v29 registerActionClass:objc_opt_class() onCondition:v2 < 0x3B65];
  [v29 registerActionClass:objc_opt_class() onCondition:{+[PLModelMigrator graphPersonResetRequiredForPreviousStoreVersion:](PLModelMigrator, "graphPersonResetRequiredForPreviousStoreVersion:", v2)}];
  v24 = objc_opt_class();
  v26 = (v2 - 15000) < 0x132u || v2 >> 1 == 7660;
  [v29 registerActionClass:v24 onCondition:v26];
  v27 = objc_opt_class();
  if (v2 > 0x3BE2)
  {
    v28 = 0;
  }

  else
  {
    v28 = PLIsChinaSKU();
  }

  [v29 registerActionClass:v27 onCondition:v28];
  [v29 registerActionClass:objc_opt_class() onCondition:v2 < 0x3C8D];
}

void sub_19C2EF498(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a29, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__53822(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_19C2EFDB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43)
{
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose(&a43, 8);
  _Unwind_Resume(a1);
}

void sub_19C2F0744(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51)
{
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose(&a39, 8);
  _Block_object_dispose(&a45, 8);
  _Block_object_dispose(&a51, 8);
  _Unwind_Resume(a1);
}

void sub_19C2F1474(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49)
{
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose(&a43, 8);
  _Block_object_dispose(&a49, 8);
  _Unwind_Resume(a1);
}

void sub_19C2F1CE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43)
{
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose(&a43, 8);
  _Unwind_Resume(a1);
}

void PLModelMigrationActionRegistration_17000(void *a1)
{
  v12 = a1;
  v1 = [v12 migrationContext];
  v2 = [v1 previousStoreVersion];

  v3 = [v12 migrationContext];
  v4 = [v3 libraryIdentifier];

  [v12 registerActionClass:objc_opt_class() onCondition:v2 >> 2 == 4250];
  v5 = v2 - 17000;
  [v12 registerActionClass:objc_opt_class() onCondition:v2 - 17000 < 0xF];
  [v12 registerActionClass:objc_opt_class() onCondition:v2 - 17000 < 0xA];
  [v12 registerActionClass:objc_opt_class() onCondition:v2 - 17000 < 0x1B];
  [v12 registerActionClass:objc_opt_class() onCondition:v2 - 17000 < 0xD];
  [v12 registerActionClass:objc_opt_class() onCondition:v2 - 17000 < 0x17];
  [v12 registerActionClass:objc_opt_class() onCondition:v2 >> 3 < 0x84F];
  [v12 registerActionClass:objc_opt_class() onCondition:v2 - 17000 < 0x30];
  [v12 registerActionClass:objc_opt_class() onCondition:v2 < 0x4299];
  [v12 registerActionClass:objc_opt_class() onCondition:v2 < 0x429B];
  v6 = objc_opt_class();
  v7 = v4 != 3 && v2 - 17000 < 0x3A;
  v8 = v4 != 3 && v2 - 17000 < 0x66;
  [v12 registerActionClass:v6 onCondition:v7];
  v9 = objc_opt_class();
  v11 = v5 < 0x3B && v4 == 1;
  [v12 registerActionClass:v9 onCondition:v11];
  [v12 registerActionClass:objc_opt_class() onCondition:v2 - 17041 < 0x5C];
  [v12 registerActionClass:objc_opt_class() onCondition:v2 - 17041 < 0x5F];
  [v12 registerActionClass:objc_opt_class() onCondition:v5 < 0x30];
  [v12 registerActionClass:objc_opt_class() onCondition:v2 < 0x433B];
  [v12 registerActionClass:objc_opt_class() onCondition:v2 >> 3 < 0x87F];
  [v12 registerActionClass:objc_opt_class() onCondition:v2 < 0x43F9];
  [v12 resetBackgroundActionClass:objc_opt_class() onCondition:v8];
  [v12 resetBackgroundActionClass:objc_opt_class() onCondition:v2 >> 4 < 0x42D];
}

void sub_19C2F3098(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__54082(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

__CFString *PLStringFromTaskContraintRole(uint64_t a1)
{
  v1 = @"AutomaticCameraViewfinderSession";
  if (a1 != 2)
  {
    v1 = 0;
  }

  if (a1 == 1)
  {
    return @"CameraAppKeepAlive";
  }

  else
  {
    return v1;
  }
}

void sub_19C2F45EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C2F8700(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *a16)
{
  _Block_object_dispose(&STACK[0x200], 8);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__54702(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id __copy_helper_block_e8_128n11_8_8_s0_t8w8(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 128);
  *(a1 + 128) = result;
  *(a1 + 136) = *(a2 + 136);
  return result;
}

id __copy_helper_block_e8_88n11_8_8_s0_t8w8(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 88);
  *(a1 + 88) = result;
  *(a1 + 96) = *(a2 + 96);
  return result;
}

void sub_19C2FDD54(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 128), 8);
  _Block_object_dispose((v1 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_19C2FF424(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47)
{
  _Block_object_dispose(&a47, 8);
  _Block_object_dispose((v47 - 128), 8);
  _Unwind_Resume(a1);
}

uint64_t PLSearchIndexingPermissionsForLibraryIdentifier(uint64_t a1)
{
  if (a1)
  {
    if (a1 == 3)
    {
      if (PLSearchEnablePSIForSyndicationLibrary_onceToken != -1)
      {
        dispatch_once(&PLSearchEnablePSIForSyndicationLibrary_onceToken, &__block_literal_global_54984);
      }

      if (PLSearchEnablePSIForSyndicationLibrary_enablePSIForSyndicationLibrary)
      {
        return 3;
      }

      else
      {
        return 2;
      }
    }

    else if (a1 == 1)
    {
      return 15;
    }

    else
    {
      return 0;
    }
  }

  else if ([PLSpotlightDonationUtilities shouldUseSpotlightPrivateIndexForLibraryIdentifier:0])
  {
    return 15;
  }

  else
  {
    return 1;
  }
}

void __PLSearchEnablePSIForSyndicationLibrary_block_invoke()
{
  v6 = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E695E000] standardUserDefaults];
  PLSearchEnablePSIForSyndicationLibrary_enablePSIForSyndicationLibrary = [v0 BOOLForKey:@"enablePSIForSyndicationLibrary"];
  v1 = PLSearchBackendIndexingEngineGetLog();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    if (PLSearchEnablePSIForSyndicationLibrary_enablePSIForSyndicationLibrary)
    {
      v2 = @"YES";
    }

    else
    {
      v2 = @"NO";
    }

    v3 = v2;
    v4 = 138412290;
    v5 = v3;
    _os_log_impl(&dword_19BF1F000, v1, OS_LOG_TYPE_DEFAULT, "enablePSIForSyndicationLibrary: %@.", &v4, 0xCu);
  }
}

void sub_19C300714(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v24 + 32));
  objc_destroyWeak((v23 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t PLSearchEnablePSIForSyndicationLibrary()
{
  if (PLSearchEnablePSIForSyndicationLibrary_onceToken != -1)
  {
    dispatch_once(&PLSearchEnablePSIForSyndicationLibrary_onceToken, &__block_literal_global_54984);
  }

  return PLSearchEnablePSIForSyndicationLibrary_enablePSIForSyndicationLibrary;
}

__CFString *PSIObjectTypeName(unint64_t a1)
{
  if (a1 > 2)
  {
    return @"unknown";
  }

  else
  {
    return off_1E756E1E8[a1];
  }
}

uint64_t __Block_byref_object_copy__55763(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_19C30DA3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t PLAlbumListFilterFromAlbumFilter(int a1)
{
  if (a1 == 1)
  {
    return 1;
  }

  else
  {
    return 2 * (a1 == 2);
  }
}

void sub_19C312430(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__56697(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

__CFString *PLDescriptionForPLCPLComputeStateDirection(uint64_t a1)
{
  if (a1)
  {
    return @"download";
  }

  else
  {
    return @"upload";
  }
}

void sub_19C312AC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__56805(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_19C313428(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(&a35, 8);
  _Unwind_Resume(a1);
}

void sub_19C313D64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47)
{
  _Block_object_dispose(&a43, 8);
  _Block_object_dispose(&a47, 8);
  _Unwind_Resume(a1);
}

void sub_19C313F38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, uint64_t a18, __int16 a19, uint64_t a20, uint64_t buf, uint8_t a22, uint64_t a23, __int128 a24, __int128 a25, __int128 a26)
{
  if (v26)
  {
    objc_end_catch();
  }

  _Unwind_Resume(exception_object);
}

void sub_19C31910C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *PLStringFromMigrationType(uint64_t a1, int a2)
{
  if (a1 <= 1)
  {
    if (!a1)
    {
      v4 = @"none";
      goto LABEL_16;
    }

    if (a1 == 1)
    {
      v2 = @"rebuilt";
      v3 = @"rebuilding";
      goto LABEL_11;
    }

LABEL_15:
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"unknown-%d", a1];
    goto LABEL_16;
  }

  if (a1 == 2)
  {
    v4 = @"lightweight";
    goto LABEL_16;
  }

  if (a1 == 4)
  {
    v2 = @"failed";
    v3 = @"failing";
    goto LABEL_11;
  }

  if (a1 != 3)
  {
    goto LABEL_15;
  }

  v2 = @"created";
  v3 = @"creating";
LABEL_11:
  if (a2)
  {
    v2 = v3;
  }

  v4 = v2;
LABEL_16:

  return v4;
}

__CFString *PLCPLErrorDebugDescription(uint64_t a1)
{
  if (a1 > 99)
  {
    switch(a1)
    {
      case 'd':
        v3 = @"PLCPLErrorShareNotFound";

        break;
      case 'e':
        v3 = @"PLCPLErrorShareTrashed";

        break;
      case 'f':
        v3 = @"PLCPLErrorShareInvalidAction";

        break;
      default:
LABEL_69:
        v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid PLCPLError: %ld", a1];
LABEL_70:

        break;
    }
  }

  else
  {
    v3 = @"PLCPLErrorNone";
    switch(a1)
    {
      case 0:
        goto LABEL_70;
      case 1:
        v3 = @"PLCPLErrorPaused";

        break;
      case 2:
        v3 = @"PLCPLErrorStart";

        break;
      case 3:
        v3 = @"PLCPLErrorPhotoNotFound";

        break;
      case 4:
        v3 = @"PLCPLErrorVideoNotFound";

        break;
      case 5:
        v3 = @"PLCPLErrorXPC";

        break;
      case 6:
        v3 = @"PLCPLErrorRampedAndDisabled";

        break;
      case 7:
        v3 = @"PLCPLErrorInsufficientCloudStorage";

        break;
      case 8:
        v3 = @"PLCPLErrorServerError";

        break;
      case 9:
        v3 = @"PLCPLErrorAccountNotFound";

        break;
      case 10:
        v3 = @"PLCPLErrorAccountNeedsToVerifyTerms";

        break;
      case 11:
        v3 = @"PLCPLErrorNoConnection";

        break;
      case 12:
        v3 = @"PLCPLErrorResourceNotFound";

        break;
      case 13:
        v3 = @"PLCPLErrorFeatureRestricted";

        break;
      case 14:
        v3 = @"PLCPLErrorDeviceNotCapable";

        break;
      case 15:
        v3 = @"PLCPLErrorCloudPhotoLibraryNotEnabled";

        break;
      case 16:
        v3 = @"PLCPLErrorHasiTunesSyncedContent";

        break;
      case 17:
        v3 = @"PLCPLErrorAccountInSuspendedMode";

        break;
      case 18:
        v3 = @"PLCPLErrorFeatureDisabled";

        break;
      default:
        goto LABEL_69;
    }
  }

  return v3;
}

uint64_t PLResourceRecipeIDIsCPLImageDerivative(int a1)
{
  v1 = 1;
  if ((a1 - 65937) > 0xE)
  {
    goto LABEL_5;
  }

  if (((1 << (a1 + 111)) & 0x4AD1) != 0)
  {
    return 0;
  }

  if (a1 != 65938)
  {
LABEL_5:
    if ((a1 - 65737) > 0xC || ((1 << (a1 + 55)) & 0x155) == 0)
    {
      return 0;
    }
  }

  return v1;
}

__CFString *PLResourceRecipeIDDescription(uint64_t a1, int a2)
{
  if (a1 > 131080)
  {
    if (a1 > 327682)
    {
      if (a1 > 327692)
      {
        if (a1 <= 327696)
        {
          if (a1 == 327693)
          {
            v3 = @"GenerativePlaygroundFaceResources";
            v4 = @"PLDataDerivativeRecipeID_GenerativePlaygroundFaceResources";
            goto LABEL_96;
          }

          if (a1 == 327695)
          {
            v3 = @"AlchemistV2OneUp";
            v4 = @"PLDataDerivativeRecipeID_AlchemistV2OneUp";
            goto LABEL_96;
          }
        }

        else
        {
          switch(a1)
          {
            case 0x50011:
              v3 = @"AlchemistV2Widget1x1";
              v4 = @"PLDataDerivativeRecipeID_AlchemistV2Widget1x1";
              goto LABEL_96;
            case 0x50013:
              v3 = @"AlchemistV2Widget1x2";
              v4 = @"PLDataDerivativeRecipeID_AlchemistV2Widget1x2";
              goto LABEL_96;
            case 0x50015:
              v3 = @"AlchemistV2Wallpaper";
              v4 = @"PLDataDerivativeRecipeID_AlchemistV2Wallpaper";
              goto LABEL_96;
          }
        }

        goto LABEL_102;
      }

      if (a1 <= 327686)
      {
        if (a1 == 327683)
        {
          v3 = @"MediaMetadataOverflow";
          v4 = @"PLDataDerivativeRecipeID_MediaMetadata_Overflow";
          goto LABEL_96;
        }

        if (a1 == 327685)
        {
          v3 = @"MediaMetadataDatabase";
          v4 = @"PLDataDerivativeRecipeID_MediaMetadata_Database";
          goto LABEL_96;
        }

        goto LABEL_102;
      }

      if (a1 == 327687)
      {
        v3 = @"WallpaperComputeResources";
        v4 = @"PLDataDerivativeRecipeID_WallpaperComputeResources";
        goto LABEL_96;
      }

      if (a1 == 327689)
      {
        v3 = @"ComputeSyncWrapper";
        v4 = @"PLDataDerivativeRecipeID_ComputeSyncWrapper";
        goto LABEL_96;
      }

      if (a1 != 327691)
      {
        goto LABEL_102;
      }

      v3 = @"ComputeSyncMediaAnalysisPayload";
      v4 = @"PLDataDerivativeRecipeID_ComputeSyncMediaAnalysisPayload";
    }

    else
    {
      if (a1 > 131279)
      {
        if (a1 <= 269158)
        {
          if (a1 == 131280)
          {
            v3 = @"VidCmp_DPP_Final";
            v4 = @"VidCmp_Pri_DeferredProcessingFinalVideo";
            goto LABEL_96;
          }

          if (a1 == 131475)
          {
            v2 = @"HDR_Medium";
            goto LABEL_99;
          }
        }

        else
        {
          switch(a1)
          {
            case 0x41B67:
              v3 = @"AspectLong360Thumb";
              v4 = @"JPEG_DisplayColorSpace_AspectLong_360";
              goto LABEL_96;
            case 0x42717:
              v3 = @"AspectShort256Thumb";
              v4 = @"JPEG_DisplayColorSpace_AspectShort_256";
              goto LABEL_96;
            case 0x4271B:
              v3 = @"AspectShort360Thumb";
              v4 = @"JPEG_DisplayColorSpace_AspectShort_360";
              goto LABEL_96;
          }
        }

        goto LABEL_102;
      }

      if (a1 <= 131274)
      {
        if (a1 == 131081)
        {
          v2 = @"H264_Small";
          goto LABEL_99;
        }

        if (a1 == 131272)
        {
          v2 = @"VidCmp H264_RenderedFull";
          goto LABEL_99;
        }

        goto LABEL_102;
      }

      if (a1 == 131275)
      {
        v2 = @"VidCmp H264_Medium";
        goto LABEL_99;
      }

      if (a1 == 131277)
      {
        v2 = @"VidCmp H264_Small";
        goto LABEL_99;
      }

      if (a1 != 131279)
      {
        goto LABEL_102;
      }

      v3 = @"VidCmp_DPP_FrameDropRecovery";
      v4 = @"VidCmp_Pri_DeferredProcessingPreview_FrameDropRecovery";
    }
  }

  else
  {
    if (a1 <= 65942)
    {
      if (a1 <= 65746)
      {
        if (a1 <= 65740)
        {
          if (a1 == 65737)
          {
            v2 = @"JPEG_SourceColorSpace_Full";
            goto LABEL_99;
          }

          if (a1 == 65739)
          {
            v2 = @"JPEG_SourceColorSpace_Large";
            goto LABEL_99;
          }
        }

        else
        {
          switch(a1)
          {
            case 0x100CD:
              v2 = @"JPEG_SourceColorSpace_Medium";
              goto LABEL_99;
            case 0x100CF:
              v2 = @"JPEG_SourceColorSpace_Thumb";
              goto LABEL_99;
            case 0x100D1:
              v2 = @"JPEG_sRGBColorSpace_Medium";
              goto LABEL_99;
          }
        }

        goto LABEL_102;
      }

      if (a1 <= 65936)
      {
        if (a1 == 65747)
        {
          v3 = @"1K";
          v4 = @"PLImageRecipeID_Pri_SourceColorSpace_1K";
          goto LABEL_96;
        }

        if (a1 == 65749)
        {
          v3 = @"LocalVideoKeyFrame";
          v4 = @"PLImageRecipeID_Pri_SourceColorSpace_LocalVideoKeyFrame";
          goto LABEL_96;
        }
      }

      else
      {
        switch(a1)
        {
          case 0x10191:
            v2 = @"JPEG_SourceColorSpace_SubStdRend";
            goto LABEL_99;
          case 0x10192:
            v3 = @"FullSizeRender";
            v4 = @"JPEG_SourceColorSpace_RenderedFull";
            goto LABEL_96;
          case 0x10195:
            v3 = @"AsyncRenderPreview";
            v4 = @"PLImageRecipeID_Pri_EditorColorSpace_AsyncRenderPreview";
            goto LABEL_96;
        }
      }

LABEL_102:
      v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Undocumented recipeID: %d", a1];
      goto LABEL_99;
    }

    if (a1 > 66136)
    {
      if (a1 > 131074)
      {
        switch(a1)
        {
          case 0x20003:
            v2 = @"H264_Full";
            goto LABEL_99;
          case 0x20005:
            v2 = @"HEVC_Large";
            goto LABEL_99;
          case 0x20007:
            v2 = @"H264_Medium";
            goto LABEL_99;
        }

        goto LABEL_102;
      }

      if (a1 == 66137)
      {
        v3 = @"Alchemist";
        v4 = @"PLImageRecipeID_Pri_EditorColorSpace_Alchemist";
        goto LABEL_96;
      }

      if (a1 == 0x20000)
      {
        v2 = @"H264_Rendered_Full";
        goto LABEL_99;
      }

      goto LABEL_102;
    }

    if (a1 <= 65945)
    {
      if (a1 == 65943)
      {
        v3 = @"DPPreview_DeepFusion";
        v4 = @"PLImageRecipeID_Pri_EditorColorSpace_DeferredProcessingPreview_DeepFusion";
        goto LABEL_96;
      }

      if (a1 == 65944)
      {
        v3 = @"DP_FinalImage";
        v4 = @"PLImageRecipeID_Pri_EditorColorSpace_DeferredProcessingFinalImage";
        goto LABEL_96;
      }

      goto LABEL_102;
    }

    if (a1 == 65946)
    {
      v3 = @"DP_SOCImage";
      v4 = @"PLImageRecipeID_Pri_EditorColorSpace_DeferredProcessingFinalSpatialOverCaptureImage";
      goto LABEL_96;
    }

    if (a1 == 65948)
    {
      v3 = @"DP_VideoPoster";
      v4 = @"PLImageRecipeID_Pri_EditorColorSpace_DeferredProcessingVideoPosterFrame";
      goto LABEL_96;
    }

    if (a1 != 65951)
    {
      goto LABEL_102;
    }

    v3 = @"DPPreview_SemDev";
    v4 = @"PLImageRecipeID_Pri_EditorColorSpace_DeferredProcessingPreview_SemDev";
  }

LABEL_96:
  if (a2)
  {
    v3 = v4;
  }

  v2 = v3;
LABEL_99:

  return v2;
}

void sub_19C320458(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    objc_begin_catch(exception_object);
    dispatch_resume(*(v2 + 16));
    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

void sub_19C3208E4(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    objc_begin_catch(exception_object);
    dispatch_resume(*(v2 + 16));
    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

void sub_19C3213C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__57990(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void PLSendCTMScheduleAnalytics(void *a1, uint64_t a2, uint64_t a3)
{
  v28[9] = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = [v5 dateCreated];
  [v6 timeIntervalSinceNow];
  v8 = v7;

  v9 = MEMORY[0x1E696AD98];
  if (v5)
  {
    [v5 photoIrisVideoDuration];
  }

  else
  {
    memset(&time, 0, sizeof(time));
  }

  v10 = [v9 numberWithDouble:CMTimeGetSeconds(&time) * 1000.0];
  v11 = [MEMORY[0x1E696AB90] notANumber];
  v12 = [v10 isEqualToNumber:v11];

  if (v12)
  {

    v10 = &unk_1F0FBD138;
  }

  v27[0] = *MEMORY[0x1E69BF598];
  v25 = [MEMORY[0x1E696AD98] numberWithDouble:fabs(v8) * 1000.0];
  v28[0] = v25;
  v27[1] = *MEMORY[0x1E69BF568];
  v13 = [MEMORY[0x1E696AD98] numberWithBool:a2];
  v28[1] = v13;
  v27[2] = *MEMORY[0x1E69BF578];
  v14 = [MEMORY[0x1E696AD98] numberWithInt:a2 ^ 1];
  v28[2] = v14;
  v27[3] = *MEMORY[0x1E69BF590];
  v15 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  v28[3] = v15;
  v27[4] = *MEMORY[0x1E69BF570];
  v16 = [MEMORY[0x1E696AD98] numberWithInt:a3 ^ 1];
  v28[4] = v16;
  v27[5] = *MEMORY[0x1E69BF580];
  if ([v5 kind])
  {
    v17 = @"NO";
  }

  else
  {
    v17 = @"YES";
  }

  v28[5] = v17;
  v27[6] = *MEMORY[0x1E69BF588];
  v18 = v17;
  if ([v5 kindSubtype] == 2)
  {
    v19 = @"YES";
  }

  else
  {
    v19 = @"NO";
  }

  v28[6] = v19;
  v27[7] = *MEMORY[0x1E69BF558];
  v20 = MEMORY[0x1E696AD98];
  v21 = v19;
  [v5 duration];
  v23 = [v20 numberWithDouble:v22 * 1000.0];
  v27[8] = *MEMORY[0x1E69BF560];
  v28[7] = v23;
  v28[8] = v10;
  v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:v27 count:9];

  PLSendCoreAnalyticEvent();
}

void sub_19C329E4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void PLCPLSetKeepOriginalsEnabled(unsigned int a1)
{
  v4 = [MEMORY[0x1E69BF2A0] systemLibraryURL];
  v2 = +[PLPhotoLibraryBundleController sharedBundleController];
  v3 = [v2 openBundleAtLibraryURL:v4];

  [PLCPLSettings setPrefetchMode:a1 withLibraryBundle:v3 error:0];
}

uint64_t PLCloudPhotoLibraryKeepOriginalsIsEnabled()
{
  v0 = [MEMORY[0x1E69BF2A0] systemLibraryURL];
  v1 = +[PLPhotoLibraryBundleController sharedBundleController];
  v2 = [v1 openBundleAtLibraryURL:v0];

  v3 = [PLCPLSettings settingsWithLibraryBundle:v2];
  v4 = [v3 isKeepOriginalsEnabled];

  return v4;
}

id PLReadCloudPhotoLibraryKeepOriginalsEnabled_Legacy()
{
  CFPreferencesAppSynchronize(@"com.apple.mobileslideshow");
  keyExistsAndHasValidFormat = 0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"downloadAndKeepOriginals", @"com.apple.mobileslideshow", &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    v1 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:AppBooleanValue];
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

uint64_t PLWriteCloudPhotoLibraryKeepOriginalsEnabled_Legacy(uint64_t a1)
{
  v1 = [MEMORY[0x1E696AD98] numberWithBool:a1];
  CFPreferencesSetAppValue(@"downloadAndKeepOriginals", v1, @"com.apple.mobileslideshow");

  return CFPreferencesAppSynchronize(@"com.apple.mobileslideshow");
}

__CFString *PLStringForCPLDeviceLibraryConfiguration(unint64_t a1)
{
  if (a1 > 2)
  {
    return @"unknown";
  }

  else
  {
    return off_1E756E888[a1];
  }
}

CFIndex PLGetCPLDeviceLibraryConfiguration(void *a1)
{
  v2 = PLGetPendingCPLDeviceLibraryConfiguration();
  v3 = v2;
  if (a1)
  {
    v4 = v2;
    *a1 = v3;
  }

  keyExistsAndHasValidFormat = 0;
  AppIntegerValue = CFPreferencesGetAppIntegerValue(@"deviceLibraryConfiguration", @"com.apple.mobileslideshow", &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    v6 = AppIntegerValue;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id PLGetPendingCPLDeviceLibraryConfiguration()
{
  CFPreferencesAppSynchronize(@"com.apple.mobileslideshow");
  keyExistsAndHasValidFormat = 0;
  AppIntegerValue = CFPreferencesGetAppIntegerValue(@"pendingDeviceLibraryConfiguration", @"com.apple.mobileslideshow", &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    v1 = [MEMORY[0x1E696AD98] numberWithInteger:AppIntegerValue];
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

void PLSetCPLDeviceLibraryConfiguration(uint64_t a1)
{
  v1 = [MEMORY[0x1E696AD98] numberWithInteger:a1];
  CFPreferencesSetAppValue(@"deviceLibraryConfiguration", v1, @"com.apple.mobileslideshow");

  CFPreferencesSetAppValue(@"pendingDeviceLibraryConfiguration", 0, @"com.apple.mobileslideshow");
  CFPreferencesAppSynchronize(@"com.apple.mobileslideshow");
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.mobileslideshow.PLNotificationDeviceLibraryConfigurationChanged", 0, 0, 1u);
}

void PLSetPendingCPLDeviceLibraryConfiguration(CFPropertyListRef value)
{
  CFPreferencesSetAppValue(@"pendingDeviceLibraryConfiguration", value, @"com.apple.mobileslideshow");
  CFPreferencesAppSynchronize(@"com.apple.mobileslideshow");
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.mobileslideshow.PLNotificationPendingDeviceLibraryConfigurationChanged", 0, 0, 1u);
}

uint64_t PLSharedStateQualifiesForCPLDeviceLibraryConfiguration(uint64_t a1, void *a2)
{
  if (a1 == 2)
  {
    return a2 == 0;
  }

  if (a1 == 1)
  {
    return [a2 isEqualToString:?];
  }

  return 1;
}

void PLAddCPLDeviceLibraryConfigurationChangedObserver(void *a1)
{
  observer = a1;
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, observer, _cplDeviceLibraryConfigurationChanged, @"com.apple.mobileslideshow.PLNotificationDeviceLibraryConfigurationChanged", 0, 1024);
  v2 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(v2, observer, _cplPendingDeviceLibraryConfigurationChanged, @"com.apple.mobileslideshow.PLNotificationPendingDeviceLibraryConfigurationChanged", 0, 1024);
}

void PLRemoveCPLDeviceLibraryConfigurationChangedObserver(void *a1)
{
  observer = a1;
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, observer, @"com.apple.mobileslideshow.PLNotificationDeviceLibraryConfigurationChanged", 0);
  v2 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(v2, observer, @"com.apple.mobileslideshow.PLNotificationPendingDeviceLibraryConfigurationChanged", 0);
}

uint64_t PLIsCPLDataclassEnabled()
{
  if (![MEMORY[0x1E69BF2A0] isMultiLibraryModeEnabled] || (objc_msgSend(MEMORY[0x1E696AAE8], "mainBundle"), v0 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v0, "bundleIdentifier"), v1 = objc_claimAutoreleasedReturnValue(), v2 = objc_msgSend(v1, "isEqualToString:", @"com.apple.mobileslideshow"), v1, v0, (v2 & 1) == 0))
  {
    [MEMORY[0x1E69BF2A0] assertSingleLibraryMode];
  }

  v3 = *MEMORY[0x1E6959638];

  return _PLIsCloudPhotoLibraryEnabledForCurrentUserWithDataclass(v3);
}

id CPLStatusFromPathManager(void *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [v1 cplDataDirectoryCreateIfNeeded:0];
  if (v2)
  {
    v3 = PLCloudPhotoLibraryLocalModeEnabled(v1);
    v4 = objc_alloc(MEMORY[0x1E6994BE8]);
    [MEMORY[0x1E695DFF8] fileURLWithPath:v2 isDirectory:1];
    if (v3)
      v5 = {;
      v6 = [PLFakeCPLLibraryManager fakeCPLStatusBaseURLWithBaseURL:v5];
      v7 = [v4 initWithClientLibraryBaseURL:v6];
    }

    else
      v9 = {;
      v7 = [v4 initWithClientLibraryBaseURL:v9];
    }
  }

  else
  {
    v8 = PLBackendGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v11 = 138412290;
      v12 = v1;
      _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_ERROR, "Unable to obtain cplPath from %@", &v11, 0xCu);
    }

    v7 = 0;
  }

  return v7;
}

id CPLMetricsFromPathManager(void *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [v1 cplDataDirectoryCreateIfNeeded:0];
  if (v2)
  {
    v3 = PLCloudPhotoLibraryLocalModeEnabled(v1);
    v4 = objc_alloc(MEMORY[0x1E6994B20]);
    [MEMORY[0x1E695DFF8] fileURLWithPath:v2 isDirectory:1];
    if (v3)
      v5 = {;
      v6 = [PLFakeCPLLibraryManager fakeCPLStatusBaseURLWithBaseURL:v5];
      v7 = [v4 initWithClientLibraryBaseURL:v6];
    }

    else
      v9 = {;
      v7 = [v4 initWithClientLibraryBaseURL:v9];
    }
  }

  else
  {
    v8 = PLBackendGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v11 = 138412290;
      v12 = v1;
      _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_ERROR, "Unable to obtain cplPath from %@", &v11, 0xCu);
    }

    v7 = 0;
  }

  return v7;
}

uint64_t PLCPLIsExceedingPrimarySyncQuota()
{
  v0 = [MEMORY[0x1E69BF2A0] systemLibraryPathManager];
  v1 = CPLStatusFromPathManager(v0);

  if ([v1 isExceedingQuota])
  {
    v2 = [v1 isExceedingSharedLibraryQuota] ^ 1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

BOOL PLCloudPhotoLibraryHasFinishedInitialSync()
{
  v0 = [MEMORY[0x1E69BF2A0] systemLibraryPathManager];
  v1 = CPLStatusFromPathManager(v0);

  v2 = [v1 initialSyncDate];
  v3 = v2 != 0;

  return v3;
}

uint64_t PLCPLIsCellularRestricted()
{
  v0 = [MEMORY[0x1E69BF2A0] systemLibraryPathManager];
  v1 = CPLStatusFromPathManager(v0);

  v2 = [v1 isCellularRestricted];
  return v2;
}

uint64_t PLCPLIsInAirplaneMode()
{
  v0 = [MEMORY[0x1E69BF2A0] systemLibraryPathManager];
  v1 = CPLStatusFromPathManager(v0);

  v2 = [v1 isInAirplaneMode];
  return v2;
}

void PLDisableCPLIfExited(void *a1)
{
  v1 = a1;
  v2 = +[PLAccountStore pl_sharedAccountStore];
  v3 = [v2 cachedPrimaryAppleAccount];
  v4 = *MEMORY[0x1E6959AE8];
  if ([v3 isEnabledForDataclass:*MEMORY[0x1E6959AE8]])
  {
    v5 = [MEMORY[0x1E69BF2A0] systemLibraryPathManager];
    v6 = CPLStatusFromPathManager(v5);

    if ([v6 iCloudLibraryHasBeenWiped])
    {
      v7 = PLBackendGetLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_DEFAULT, "Has exited iCPL: WILL disable the iCPL account setting...", buf, 2u);
      }

      v8 = [v2 aa_primaryAppleAccount];
      [v8 setEnabled:0 forDataclass:v4];
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __PLDisableCPLIfExited_block_invoke;
      v9[3] = &unk_1E75774A8;
      v10 = v1;
      [v2 saveAccount:v8 withDataclassActions:0 doVerify:0 completion:v9];
    }

    else
    {
      (*(v1 + 2))(v1, 0);
    }
  }

  else
  {
    (*(v1 + 2))(v1, 0);
  }
}

uint64_t __PLDisableCPLIfExited_block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = PLBackendGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_19BF1F000, v4, OS_LOG_TYPE_DEFAULT, "Has exited iCPL: DID disable the iCPL account setting", v6, 2u);
  }

  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2);
  }

  return result;
}

id PLPrimaryAppleAccountCloudStorageInfo(void *a1)
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__60177;
  v23 = __Block_byref_object_dispose__60178;
  v24 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__60177;
  v17 = __Block_byref_object_dispose__60178;
  v18 = 0;
  v2 = +[PLAccountStore pl_sharedAccountStore];
  v3 = [v2 cachedPrimaryAppleAccount];

  v4 = dispatch_semaphore_create(0);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __PLPrimaryAppleAccountCloudStorageInfo_block_invoke;
  v9[3] = &unk_1E756E7E8;
  v11 = &v19;
  v12 = &v13;
  v5 = v4;
  v10 = v5;
  _PLRequestCloudStorageInfoForAccount(v3, v9);
  dispatch_semaphore_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
  v6 = v20[5];
  if (a1 && !v6)
  {
    *a1 = v14[5];
    v6 = v20[5];
  }

  v7 = v6;

  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v19, 8);

  return v7;
}

void sub_19C3306B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__60177(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __PLPrimaryAppleAccountCloudStorageInfo_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_semaphore_signal(*(a1 + 32));
}

void _PLRequestCloudStorageInfoForAccount(void *a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = PLPreferencesGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v21 = v3;
    _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_INFO, "Querying iCloud storage quota for %@", buf, 0xCu);
  }

  v6 = [v3 propertiesForDataclass:@"com.apple.Dataclass.Quota"];
  v7 = [v6 objectForKey:@"storageInfoURL"];

  v8 = [v7 stringByAddingPercentEscapesUsingEncoding:4];
  v9 = [PLQuotaRequest alloc];
  v10 = [v3 aa_authToken];
  v11 = [v3 aa_personID];
  v12 = [(PLQuotaRequest *)v9 initWithURLString:v8 authToken:v10 personID:v11];

  v13 = objc_alloc(MEMORY[0x1E698B970]);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = ___PLRequestCloudStorageInfoForAccount_block_invoke;
  v18[3] = &unk_1E756E868;
  v19 = v4;
  v14 = v4;
  v15 = [v13 initWithRequest:v12 handler:v18];
  v16 = dispatch_queue_create("PLRequestCloudStorageInfoForAccount", 0);
  [v15 setHandlerQueue:v16];

  v17 = qos_class_self();
  if (v17 == QOS_CLASS_USER_INTERACTIVE || v17 == QOS_CLASS_USER_INITIATED)
  {
    [v15 setQualityOfService:25];
  }

  pl_dispatch_once();
  [_WorkQueue addOperation:v15];
}

uint64_t iCloudStorageSizeInBytes()
{
  v8 = *MEMORY[0x1E69E9840];
  v5 = 0;
  v0 = PLPrimaryAppleAccountCloudStorageInfo(&v5);
  v1 = v5;
  if (v0)
  {
    v2 = [v0 totalBytes];
  }

  else
  {
    v3 = PLMigrationGetLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v7 = v1;
      _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_ERROR, "ComputeCachePolicyDataSource: Failed to access iCloud Storage Info. Error: %@", buf, 0xCu);
    }

    v2 = -1;
  }

  return v2;
}

void PLCPLSetAllowsUnlimitedSyncOverCellular(uint64_t a1)
{
  v1 = [MEMORY[0x1E696AD98] numberWithBool:a1];
  CFPreferencesSetAppValue(@"unlimitedSyncOverCellular", v1, @"com.apple.mobileslideshow");

  CFPreferencesAppSynchronize(@"com.apple.mobileslideshow");
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.mobileslideshow.PLNotificationUnlimitedSyncOverCellularChanged", 0, 0, 1u);
}

void PLRequestSizeOfOriginalResourcesForLibrary(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3)
  {
    if (v4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void PLRequestSizeOfOriginalResourcesForLibrary(NSURL *__strong, void (^__strong)(int64_t, NSError * _Nullable __strong))"}];
    [v9 handleFailureInFunction:v10 file:@"PLCloudPhotoLibraryStateHelper.m" lineNumber:721 description:{@"Invalid parameter not satisfying: %@", @"libraryURL"}];

    if (v5)
    {
      goto LABEL_3;
    }
  }

  v11 = [MEMORY[0x1E696AAA8] currentHandler];
  v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void PLRequestSizeOfOriginalResourcesForLibrary(NSURL *__strong, void (^__strong)(int64_t, NSError * _Nullable __strong))"}];
  [v11 handleFailureInFunction:v12 file:@"PLCloudPhotoLibraryStateHelper.m" lineNumber:722 description:{@"Invalid parameter not satisfying: %@", @"completion"}];

LABEL_3:
  v6 = objc_alloc_init(PLPhotoLibraryOptions);
  [(PLPhotoLibraryOptions *)v6 setRequiredState:6];
  v18 = 0;
  v7 = [PLPhotoLibrary newPhotoLibraryWithName:"void PLRequestSizeOfOriginalResourcesForLibrary(NSURL *__strong loadedFromURL:void (^__strong)(int64_t options:NSError * _Nullable __strong))" error:v3, v6, &v18];
  v8 = v18;
  v17[0] = 0;
  v17[1] = v17;
  v17[2] = 0x2020000000;
  v17[3] = -1;
  if (v7)
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __PLRequestSizeOfOriginalResourcesForLibrary_block_invoke;
    v13[3] = &unk_1E7577918;
    v14 = v7;
    v16 = v17;
    v15 = v5;
    [v14 performBlock:v13];
  }

  else
  {
    (v5)[2](v5, -1, v8);
  }

  _Block_object_dispose(v17, 8);
}

void sub_19C33135C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __PLRequestSizeOfOriginalResourcesForLibrary_block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) librarySizesFromDB];
  v2 = [&unk_1F0FBD198 stringValue];
  v3 = [v4 objectForKeyedSubscript:v2];
  *(*(*(a1 + 48) + 8) + 24) = [v3 longLongValue];

  (*(*(a1 + 40) + 16))();
}

void PLRequestCloudPhotoLibraryTransferProgressForLibrary(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3)
  {
    if (v4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void PLRequestCloudPhotoLibraryTransferProgressForLibrary(PLPhotoLibrary *__strong, void (^__strong)(PLiCPLTransferProgress *__strong, NSError *__strong))"}];
    [v9 handleFailureInFunction:v10 file:@"PLCloudPhotoLibraryStateHelper.m" lineNumber:741 description:{@"Invalid parameter not satisfying: %@", @"library"}];

    if (v5)
    {
      goto LABEL_3;
    }
  }

  v11 = [MEMORY[0x1E696AAA8] currentHandler];
  v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void PLRequestCloudPhotoLibraryTransferProgressForLibrary(PLPhotoLibrary *__strong, void (^__strong)(PLiCPLTransferProgress *__strong, NSError *__strong))"}];
  [v11 handleFailureInFunction:v12 file:@"PLCloudPhotoLibraryStateHelper.m" lineNumber:742 description:{@"Invalid parameter not satisfying: %@", @"completion"}];

LABEL_3:
  if (PLIsAssetsd())
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void PLRequestCloudPhotoLibraryTransferProgressForLibrary(PLPhotoLibrary *__strong, void (^__strong)(PLiCPLTransferProgress *__strong, NSError *__strong))"}];
    [v13 handleFailureInFunction:v14 file:@"PLCloudPhotoLibraryStateHelper.m" lineNumber:743 description:{@"Invalid parameter not satisfying: %@", @"!PLIsAssetsd()"}];
  }

  v6 = [v3 assetsdClient];
  v7 = [v6 cloudInternalClient];

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __PLRequestCloudPhotoLibraryTransferProgressForLibrary_block_invoke;
  v15[3] = &unk_1E756E810;
  v16 = v5;
  v8 = v5;
  [v7 getNotUploadedCount:v15];
}

void __PLRequestCloudPhotoLibraryTransferProgressForLibrary_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = a5;
  v10 = objc_alloc_init(PLiCPLTransferProgress);
  [(PLiCPLTransferProgress *)v10 setNotUploadedPhotosCount:a2];
  [(PLiCPLTransferProgress *)v10 setNotUploadedVideosCount:a3];
  [(PLiCPLTransferProgress *)v10 setNotUploadedItemsCount:a4];
  (*(*(a1 + 32) + 16))();
}

id _insufficientStorageError(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = [PLCloudPhotoLibraryError createErrorWithType:7];
  v9 = [MEMORY[0x1E695DF90] dictionary];
  v10 = v9;
  if (v5)
  {
    [v9 setObject:v5 forKeyedSubscript:@"PLCloudPhotoLibraryEnableErrorStorageInfoKey"];
  }

  if (v6)
  {
    [v10 setObject:v6 forKeyedSubscript:@"PLCloudPhotoLibraryEnableErrorLocalLibrarySizeInBytesKey"];
  }

  if (v7)
  {
    [v10 setObject:v7 forKeyedSubscript:@"PLCloudPhotoLibraryQuotaPhotoAndVideoUsageKey"];
  }

  v11 = objc_alloc(MEMORY[0x1E696ABC0]);
  v12 = [v8 domain];
  v13 = [v11 initWithDomain:v12 code:objc_msgSend(v8 userInfo:{"code"), v10}];

  return v13;
}

BOOL PLCanEnableMediaStreamForAccount(void *a1)
{
  v1 = a1;
  v2 = PLPlatformMediaStreamSupported();
  v3 = [MEMORY[0x1E69ADFB8] sharedConnection];
  v4 = [v3 BOOLRestrictionForFeature:*MEMORY[0x1E69ADF18]];
  IsRamped = PLAccountIsRamped(v1);
  v6 = MGGetBoolAnswer();
  if (v1)
  {
    v7 = [v1 provisionedDataclasses];
    v8 = [v7 containsObject:*MEMORY[0x1E6959B30]];

    v9 = v8 ^ 1;
  }

  else
  {
    v9 = 1;
  }

  v10 = (v1 == 0) | v2 ^ 1 | IsRamped | v6 ^ 1 | v9 | PLIsEDUMode() | (v4 == 2);

  return (v10 & 1) == 0;
}

BOOL PLAccountIsRamped(void *a1)
{
  v1 = [a1 propertiesForDataclass:@"com.apple.Dataclass.Account"];
  v2 = v1;
  if (v1)
  {
    v3 = [v1 objectForKey:@"notAvailable"];
    v4 = v3 != 0;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

BOOL PLCanEnableSharedStreamsForAccount(void *a1)
{
  v1 = a1;
  v2 = PLPlatformSharedStreamsSupported();
  v3 = [MEMORY[0x1E69ADFB8] sharedConnection];
  v4 = [v3 BOOLRestrictionForFeature:*MEMORY[0x1E69ADF60]];
  IsRamped = PLAccountIsRamped(v1);
  if (v1)
  {
    v6 = [v1 provisionedDataclasses];
    v7 = [v6 containsObject:*MEMORY[0x1E6959B50]];

    v8 = v7 ^ 1;
  }

  else
  {
    v8 = 1;
  }

  v9 = v4 == 2;
  v10 = MGGetBoolAnswer();
  v11 = PLIsEDUMode();
  v12 = (v1 == 0) | v2 ^ 1 | IsRamped | v8 | v9 | ~v10 | v11 | PLIsLockdownMode();

  return (v12 & 1) == 0;
}

BOOL PLIsCloudPhotoLibraryRestricted()
{
  v0 = [MEMORY[0x1E69ADFB8] sharedConnection];
  v1 = [v0 BOOLRestrictionForFeature:*MEMORY[0x1E69ADE38]] == 2;

  return v1;
}

void PLCanEnableCloudPhotoLibrary(void *a1)
{
  v1 = a1;
  v2 = +[PLAccountStore pl_sharedAccountStore];
  v3 = [v2 cachedPrimaryAppleAccount];

  PLCanEnableCloudPhotoLibraryForAccount(v3, v1);
}

void PLCanEnableCloudPhotoLibraryForAccount(void *a1, void *a2)
{
  v43 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  address = xmmword_19C60B0A0;
  v5 = SCNetworkReachabilityCreateWithAddress(*MEMORY[0x1E695E480], &address);
  v6 = v5;
  if (v5)
  {
    LODWORD(flags) = 0;
    SCNetworkReachabilityGetFlags(v5, &flags);
    v7 = flags;
    CFRelease(v6);
    LODWORD(v6) = (v7 >> 1) & 1;
  }

  if (PLIsCloudPhotoLibraryRestricted())
  {
    v8 = PLPreferencesGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      LOWORD(flags) = 0;
      _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_ERROR, "Cannot enable CPL: allowCloudPhotoLibrary restriction is set to false", &flags, 2u);
    }

    v9 = [PLCloudPhotoLibraryError createErrorWithType:13];
    v4[2](v4, 0, v9);
  }

  else if (v3)
  {
    if ([v3 aa_isSuspended])
    {
      v10 = PLPreferencesGetLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        LOWORD(flags) = 0;
        _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_ERROR, "Cannot enable CPL: account is in gray mode", &flags, 2u);
      }

      v11 = [PLCloudPhotoLibraryError createErrorWithType:17];
      v4[2](v4, 0, v11);
    }

    else if (PLIsEDUMode())
    {
      v14 = PLPreferencesGetLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        LOWORD(flags) = 0;
        _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_ERROR, "Enabling CPL for EDU Mode", &flags, 2u);
      }

      v4[2](v4, 1, 0);
    }

    else if (MGGetBoolAnswer())
    {
      if (v6)
      {
        v15 = +[PLPhotoLibrary cplPhotoLibrary];
        v16 = [v15 hasITunesSyncedContent];

        if (v16)
        {
          v17 = PLPreferencesGetLog();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            LOWORD(flags) = 0;
            _os_log_impl(&dword_19BF1F000, v17, OS_LOG_TYPE_ERROR, "Cannot enable CPL: has iTunes synced content", &flags, 2u);
          }

          v18 = [PLCloudPhotoLibraryError createErrorWithType:16];
          v4[2](v4, 0, v18);
        }

        else
        {
          if ((_PLIsCloudPhotoLibraryEnabledForCurrentUserWithDataclass(*MEMORY[0x1E6959638]) & 1) == 0)
          {
            PLCPLSetKeepOriginalsEnabled(0);
          }

          v23 = +[PLPhotoLibrary cplPhotoLibrary];
          v24 = PLPreferencesGetLog();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
          {
            v25 = [v23 pathManager];
            v26 = [v25 libraryURL];
            LODWORD(flags) = 138412290;
            *(&flags + 4) = v26;
            _os_log_impl(&dword_19BF1F000, v24, OS_LOG_TYPE_INFO, "Checking size of system photo library at %@", &flags, 0xCu);
          }

          *&flags = 0;
          *(&flags + 1) = &flags;
          v40 = 0x2020000000;
          v41 = 0;
          v34[0] = MEMORY[0x1E69E9820];
          v34[1] = 3221225472;
          v34[2] = __PLCanEnableCloudPhotoLibraryForAccount_block_invoke;
          v34[3] = &unk_1E7578910;
          v27 = v23;
          v35 = v27;
          p_flags = &flags;
          [v27 performBlockAndWait:v34];
          v28 = PLPreferencesGetLog();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
          {
            v29 = *(*(&flags + 1) + 24);
            *buf = 134217984;
            v38 = v29;
            _os_log_impl(&dword_19BF1F000, v28, OS_LOG_TYPE_INFO, "Original resource size for system photo library: %lld bytes", buf, 0xCu);
          }

          if (*(*(&flags + 1) + 24))
          {
            v31[0] = MEMORY[0x1E69E9820];
            v31[1] = 3221225472;
            v31[2] = __PLCanEnableCloudPhotoLibraryForAccount_block_invoke_297;
            v31[3] = &unk_1E756E838;
            v32 = v4;
            v33 = &flags;
            _PLRequestCloudStorageInfoForAccount(v3, v31);
          }

          else
          {
            v30 = PLPreferencesGetLog();
            if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&dword_19BF1F000, v30, OS_LOG_TYPE_INFO, "Empty system photo library, sufficient cloud storage to enable iCPL", buf, 2u);
            }

            v4[2](v4, 1, 0);
          }

          _Block_object_dispose(&flags, 8);
        }
      }

      else
      {
        v21 = PLPreferencesGetLog();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          LOWORD(flags) = 0;
          _os_log_impl(&dword_19BF1F000, v21, OS_LOG_TYPE_ERROR, "Cannot enable CPL: no internet connection", &flags, 2u);
        }

        v22 = [PLCloudPhotoLibraryError createErrorWithType:11];
        v4[2](v4, 0, v22);
      }
    }

    else
    {
      v19 = PLPreferencesGetLog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        LOWORD(flags) = 0;
        _os_log_impl(&dword_19BF1F000, v19, OS_LOG_TYPE_ERROR, "Cannot enable CPL: device is not supported", &flags, 2u);
      }

      v20 = [PLCloudPhotoLibraryError createErrorWithType:14];
      v4[2](v4, 0, v20);
    }
  }

  else
  {
    v12 = PLPreferencesGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      LOWORD(flags) = 0;
      _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_ERROR, "Cannot enable CPL: no Apple account found", &flags, 2u);
    }

    v13 = [PLCloudPhotoLibraryError createErrorWithType:9];
    v4[2](v4, 0, v13);
  }
}

void sub_19C33222C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __PLCanEnableCloudPhotoLibraryForAccount_block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) librarySizesFromDB];
  v2 = [&unk_1F0FBD198 stringValue];
  v3 = [v4 objectForKeyedSubscript:v2];
  *(*(*(a1 + 40) + 8) + 24) = [v3 longLongValue];
}

void __PLCanEnableCloudPhotoLibraryForAccount_block_invoke_297(uint64_t a1, void *a2, void *a3)
{
  v35 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = PLPreferencesGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v33 = 138412290;
      v34 = v6;
      v8 = "Unable to check storage status due to quota check error: %@";
      v9 = v7;
      v10 = OS_LOG_TYPE_ERROR;
      v11 = 12;
LABEL_19:
      _os_log_impl(&dword_19BF1F000, v9, v10, v8, &v33, v11);
      goto LABEL_20;
    }

    goto LABEL_20;
  }

  v12 = [v5 totalBytes];
  v13 = [v5 availableBytes];
  v14 = [v5 cameraRollBackupBytes];
  v15 = [v5 iCloudPhotosBytes];
  v16 = PLPreferencesGetLog();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = *(*(*(a1 + 40) + 8) + 24);
    v33 = 134217984;
    v34 = v17;
    _os_log_impl(&dword_19BF1F000, v16, OS_LOG_TYPE_INFO, "Calculated size of local photo library: %lld bytes", &v33, 0xCu);
  }

  v18 = PLPreferencesGetLog();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    v33 = 134217984;
    v34 = v12;
    _os_log_impl(&dword_19BF1F000, v18, OS_LOG_TYPE_INFO, "Total Tier Storage:                     %lld bytes", &v33, 0xCu);
  }

  v19 = PLPreferencesGetLog();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    v33 = 134217984;
    v34 = v13;
    _os_log_impl(&dword_19BF1F000, v19, OS_LOG_TYPE_INFO, "Available iCloud Storage:               %lld bytes", &v33, 0xCu);
  }

  v20 = PLPreferencesGetLog();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    v33 = 134217984;
    v34 = v14;
    _os_log_impl(&dword_19BF1F000, v20, OS_LOG_TYPE_INFO, "Camera Roll Backup Size:                %lld bytes", &v33, 0xCu);
  }

  v21 = v14 + v13;

  v22 = PLPreferencesGetLog();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
  {
    v33 = 134217984;
    v34 = v15;
    _os_log_impl(&dword_19BF1F000, v22, OS_LOG_TYPE_INFO, "iCloud Photos Size:                     %lld bytes", &v33, 0xCu);
  }

  v23 = v21 + v15;

  v24 = PLPreferencesGetLog();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
  {
    v33 = 134217984;
    v34 = v23;
    _os_log_impl(&dword_19BF1F000, v24, OS_LOG_TYPE_INFO, "Total Available Space for Photos:       %lld bytes", &v33, 0xCu);
  }

  v25 = *(*(*(a1 + 40) + 8) + 24);
  if (v23 > v25)
  {
    v7 = PLPreferencesGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      LOWORD(v33) = 0;
      v8 = "Can enable CPL: Sufficient cloud storage for local library.";
      v9 = v7;
      v10 = OS_LOG_TYPE_INFO;
      v11 = 2;
      goto LABEL_19;
    }

LABEL_20:

    (*(*(a1 + 32) + 16))();
    goto LABEL_21;
  }

  v26 = PLPreferencesGetLog();
  v27 = os_log_type_enabled(v26, OS_LOG_TYPE_INFO);
  if (v12 <= v25)
  {
    if (v27)
    {
      LOWORD(v33) = 0;
      _os_log_impl(&dword_19BF1F000, v26, OS_LOG_TYPE_INFO, "Cannot enable CPL: Insufficient cloud storage tier for local library.", &v33, 2u);
    }

    v31 = [MEMORY[0x1E696AD98] numberWithLongLong:*(*(*(a1 + 40) + 8) + 24)];
    v32 = _insufficientStorageError(v5, v31, 0);

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    if (v27)
    {
      LOWORD(v33) = 0;
      _os_log_impl(&dword_19BF1F000, v26, OS_LOG_TYPE_INFO, "Cannot enable CPL: Insufficient cloud storage for local library.", &v33, 2u);
    }

    v28 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v5, "iCloudPhotosBytes")}];
    v29 = [MEMORY[0x1E696AD98] numberWithLongLong:*(*(*(a1 + 40) + 8) + 24)];
    v30 = _insufficientStorageError(v5, v29, v28);

    (*(*(a1 + 32) + 16))();
  }

LABEL_21:
}

void PLShouldShowSharedLibrarySetting(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (PLIsAssetsd())
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void PLShouldShowSharedLibrarySetting(PLPhotoLibrary *__strong, void (^__strong)(BOOL, NSError *__strong))"}];
    [v16 handleFailureInFunction:v17 file:@"PLCloudPhotoLibraryStateHelper.m" lineNumber:946 description:{@"Invalid parameter not satisfying: %@", @"!PLIsAssetsd()"}];
  }

  v5 = PLBackendSharingGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_INFO, "PLShouldShowSharedLibrarySetting: Checking if Shared Library can be enabled...", buf, 2u);
  }

  if (!_os_feature_enabled_impl() || ([v3 libraryServicesManager], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "isSyndicationPhotoLibrary"), v6, (v7 & 1) != 0))
  {
    *buf = 0;
    v25 = buf;
    v26 = 0x3032000000;
    v27 = __Block_byref_object_copy__60177;
    v28 = __Block_byref_object_dispose__60178;
    v29 = 0;
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __PLShouldShowSharedLibrarySetting_block_invoke;
    v21[3] = &unk_1E7578910;
    v23 = buf;
    v8 = v3;
    v22 = v8;
    [v8 performBlockAndWait:v21];
    if ([*(v25 + 5) count])
    {
      v9 = PLBackendSharingGetLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *v20 = 0;
        v10 = "PLShouldShowSharedLibrarySetting: Returning YES because a local LibraryScope was found";
LABEL_13:
        _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_INFO, v10, v20, 2u);
      }
    }

    else
    {
      v11 = [MEMORY[0x1E695E000] standardUserDefaults];
      v12 = [v11 BOOLForKey:@"PLCloudPhotoLibrarySharedLibraryCanEnableKey"];

      if (!v12)
      {
        v14 = [v8 assetsdClient];
        v15 = [v14 cloudInternalClient];

        v18[0] = MEMORY[0x1E69E9820];
        v18[1] = 3221225472;
        v18[2] = __PLShouldShowSharedLibrarySetting_block_invoke_303;
        v18[3] = &unk_1E75774A8;
        v19 = v4;
        [v15 sharedLibraryRampCheckWithCompletionHandler:v18];

        goto LABEL_15;
      }

      v9 = PLBackendSharingGetLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *v20 = 0;
        v10 = "PLShouldShowSharedLibrarySetting: Returning YES because PLCloudPhotoLibrarySharedLibraryCanEnableKey default exists";
        goto LABEL_13;
      }
    }

    (*(v4 + 2))(v4, 1, 0);
LABEL_15:

    _Block_object_dispose(buf, 8);
    goto LABEL_19;
  }

  v13 = PLBackendSharingGetLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_INFO, "PLShouldShowSharedLibrarySetting: Returning YES because the 'localMode' feture is enabled", buf, 2u);
  }

  (*(v4 + 2))(v4, 1, 0);
LABEL_19:
}

void sub_19C332B40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __PLShouldShowSharedLibrarySetting_block_invoke(uint64_t a1)
{
  v6 = [MEMORY[0x1E696AE18] predicateWithValue:1];
  v2 = [*(a1 + 32) managedObjectContext];
  v3 = [(PLShare *)PLLibraryScope sharesWithPredicate:v6 fetchLimit:1 inManagedObjectContext:v2];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void __PLShouldShowSharedLibrarySetting_block_invoke_303(uint64_t a1, int a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a2)
  {
    v6 = [MEMORY[0x1E695E000] standardUserDefaults];
    [v6 setBool:1 forKey:@"PLCloudPhotoLibrarySharedLibraryCanEnableKey"];

    v7 = [MEMORY[0x1E695E000] standardUserDefaults];
    v8 = [MEMORY[0x1E695DF00] date];
    [v7 setObject:v8 forKey:@"PLCloudPhotoLibrarySharedLibraryCanEnableTimestampKey"];

    v9 = PLBackendSharingGetLog();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      goto LABEL_7;
    }

    LOWORD(v12) = 0;
    v10 = "PLShouldShowSharedLibrarySetting: Returning YES after checking directly with server";
  }

  else
  {
    v9 = PLBackendSharingGetLog();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      goto LABEL_7;
    }

    LOWORD(v12) = 0;
    v10 = "PLShouldShowSharedLibrarySetting: Returning NO after checking directly with server";
  }

  _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_INFO, v10, &v12, 2u);
LABEL_7:

  if (v5)
  {
    v11 = PLBackendSharingGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = 138412290;
      v13 = v5;
      _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_ERROR, "PLShouldShowSharedLibrarySetting: sharedLibraryRampCheckWithCompletionHandler returned error %@", &v12, 0xCu);
    }
  }

  (*(*(a1 + 32) + 16))();
}

uint64_t PLCPLLocalStorageAvailableForResources(int a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = MGCopyAnswer();
  v3 = [v2 objectForKey:*MEMORY[0x1E69E5120]];
  v4 = [v3 longLongValue];

  v5 = [v2 objectForKey:*MEMORY[0x1E69E5108]];
  v6 = [v5 longLongValue];

  v7 = 0.9;
  if (a1)
  {
    v7 = 0.85;
  }

  v8 = (v7 * v4);
  v9 = fmax((1.0 - v7) * v4, 536870912.0);
  v10 = v6 - v9;
  if (v6 < v9)
  {
    v10 = 0;
  }

  if (v6 >= v8)
  {
    v11 = v8;
  }

  else
  {
    v11 = v10;
  }

  v12 = PLPreferencesGetLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = @"download and keep originals";
    if (a1)
    {
      v13 = @"optimize";
    }

    v15 = 138412546;
    v16 = v13;
    v17 = 2048;
    v18 = v11;
    _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_INFO, "Max local storage to use for %@ mode: %lld bytes", &v15, 0x16u);
  }

  return v11;
}

void PLCPLRecordEnableForCurrentAccount()
{
  v0 = +[PLAccountStore pl_sharedAccountStore];
  v6 = [v0 cachedPrimaryAppleAccount];

  v1 = v6;
  if (v6)
  {
    v2 = [v6 identifier];
    v3 = CFPreferencesCopyAppValue(@"iCloudPhotoLibraryHasBeenEnabledAccountIdentifiers", @"com.apple.mobileslideshow");
    if (!v3)
    {
      v3 = [MEMORY[0x1E695DEC8] array];
    }

    v4 = [MEMORY[0x1E695DFA8] setWithArray:v3];
    [v4 addObject:v2];
    v5 = [v4 allObjects];
    CFPreferencesSetAppValue(@"iCloudPhotoLibraryHasBeenEnabledAccountIdentifiers", v5, @"com.apple.mobileslideshow");

    v1 = v6;
  }
}

void PLCPLRecordWelcomeForCurrentAccount()
{
  v0 = +[PLAccountStore pl_sharedAccountStore];
  v6 = [v0 cachedPrimaryAppleAccount];

  v1 = v6;
  if (v6)
  {
    v2 = [v6 identifier];
    v3 = CFPreferencesCopyAppValue(@"iCloudPhotoLibraryHasBeenWelcomedAccountIdentifiers", @"com.apple.mobileslideshow");
    if (!v3)
    {
      v3 = [MEMORY[0x1E695DEC8] array];
    }

    v4 = [MEMORY[0x1E695DFA8] setWithArray:v3];
    [v4 addObject:v2];
    v5 = [v4 allObjects];
    CFPreferencesSetAppValue(@"iCloudPhotoLibraryHasBeenWelcomedAccountIdentifiers", v5, @"com.apple.mobileslideshow");

    v1 = v6;
  }
}

uint64_t _PLCPLHasBeenEnabledForCurrentAccount(void *a1)
{
  v2 = +[PLAccountStore pl_sharedAccountStore];
  v3 = [v2 cachedPrimaryAppleAccount];

  if (!v3)
  {
    v6 = 0;
    v4 = 0;
    if (!a1)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v4 = [v3 identifier];
  v5 = CFPreferencesCopyAppValue(@"iCloudPhotoLibraryHasBeenEnabledAccountIdentifiers", @"com.apple.mobileslideshow");
  v6 = [v5 containsObject:v4];

  if (a1)
  {
LABEL_3:
    *a1 = [v4 copy];
  }

LABEL_4:

  return v6;
}

uint64_t _PLCPLHasBeenWelcomedForCurrentAccount(void *a1)
{
  v2 = +[PLAccountStore pl_sharedAccountStore];
  v3 = [v2 cachedPrimaryAppleAccount];

  if (!v3)
  {
    v6 = 0;
    v4 = 0;
    if (!a1)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v4 = [v3 identifier];
  v5 = CFPreferencesCopyAppValue(@"iCloudPhotoLibraryHasBeenWelcomedAccountIdentifiers", @"com.apple.mobileslideshow");
  v6 = [v5 containsObject:v4];

  if (a1)
  {
LABEL_3:
    *a1 = [v4 copy];
  }

LABEL_4:

  return v6;
}

uint64_t PLCPLShouldNotifyDeleteBehaviorForCurrentAccount()
{
  v6 = 0;
  v0 = _PLCPLHasBeenEnabledForCurrentAccount(&v6);
  v1 = v6;
  v2 = v1;
  v3 = 0;
  if (v0 && v1)
  {
    v4 = CFPreferencesCopyAppValue(@"CPLDidNotifyDeleteBehavior", @"com.apple.mobileslideshow");
    v3 = [v4 containsObject:v2] ^ 1;
  }

  return v3;
}

void PLCPLRecordDidNotifyDeleteBehaviorForCurrentAccount()
{
  v6 = 0;
  v0 = _PLCPLHasBeenEnabledForCurrentAccount(&v6);
  v1 = v6;
  v2 = v1;
  if (v0 && v1)
  {
    v3 = CFPreferencesCopyAppValue(@"CPLDidNotifyDeleteBehavior", @"com.apple.mobileslideshow");
    if (([v3 containsObject:v2] & 1) == 0)
    {
      if (v3)
      {
        v4 = [v3 mutableCopy];
      }

      else
      {
        v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
      }

      v5 = v4;
      [v4 addObject:v2];
      CFPreferencesSetAppValue(@"CPLDidNotifyDeleteBehavior", v5, @"com.apple.mobileslideshow");
      CFPreferencesAppSynchronize(@"com.apple.mobileslideshow");
    }
  }
}

BOOL PLCPLShouldRequireStorageUpgradeForError(void *a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if ([v1 code] == 7)
  {
    v2 = [v1 userInfo];
    v3 = [v2 objectForKeyedSubscript:@"PLCloudPhotoLibraryEnableErrorLocalLibrarySizeInBytesKey"];
    v4 = [v3 longLongValue];

    v5 = [v2 objectForKeyedSubscript:@"PLCloudPhotoLibraryEnableErrorStorageInfoKey"];
    v6 = [v2 objectForKeyedSubscript:@"PLCloudPhotoLibraryQuotaPhotoAndVideoUsageKey"];
    v7 = PLPreferencesGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v17 = 138412802;
      v18 = v5;
      v19 = 2048;
      v20 = v4;
      v21 = 2112;
      v22 = v6;
      _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_INFO, "Checking if require storage upgrade with cloudStorageInfo: %@ localLibrarySize %lld photoAndVideoUsage %@", &v17, 0x20u);
    }

    v8 = [(__CFString *)v5 totalBytes];
    if (v6)
    {
      v9 = [v6 unsignedIntegerValue];
      if (v9 >= v4)
      {
        v10 = v4;
      }

      else
      {
        v10 = v9;
      }

      v11 = [(__CFString *)v5 totalBytes];
      v12 = v10 + v11 - [(__CFString *)v5 usedBytes];
    }

    else
    {
      v12 = v8;
    }

    v13 = v4 > v12;
    v14 = PLPreferencesGetLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = @"NO";
      if (v4 > v12)
      {
        v15 = @"YES";
      }

      v17 = 138412546;
      v18 = v15;
      v19 = 2048;
      v20 = v12;
      _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_INFO, "Should require storage upgrade: %@ greatestPossibleSpace %lld", &v17, 0x16u);
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

void PLRecordiCPLEnableState(uint64_t a1, void *a2)
{
  v6 = a2;
  CFPreferencesSetAppValue(@"iCPL-enable-reason", [MEMORY[0x1E696AD98] numberWithInteger:a1], @"com.apple.mobileslideshow");
  v3 = [v6 domain];
  v4 = [v3 isEqualToString:@"PLCloudPhotoLibraryErrorDomain"];

  if (v4)
  {
    v5 = [v6 code];
    CFPreferencesSetAppValue(@"iCPL-enable-error-code", [MEMORY[0x1E696AD98] numberWithInteger:v5], @"com.apple.mobileslideshow");
  }
}

void PLRecordiCPLDisableState(uint64_t a1, void *a2)
{
  v6 = a2;
  CFPreferencesSetAppValue(@"iCPL-disable-reason", [MEMORY[0x1E696AD98] numberWithInteger:a1], @"com.apple.mobileslideshow");
  v3 = [v6 domain];
  v4 = [v3 isEqualToString:@"PLCloudPhotoLibraryErrorDomain"];

  if (v4)
  {
    v5 = [v6 code];
    CFPreferencesSetAppValue(@"iCPL-disable-error-code", [MEMORY[0x1E696AD98] numberWithInteger:v5], @"com.apple.mobileslideshow");
  }
}

void PLRecordLibrarySizeWithReason(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(PLPhotoLibraryOptions);
  [(PLPhotoLibraryOptions *)v2 setRequiredState:6];
  v3 = [MEMORY[0x1E69BF2A0] systemLibraryURL];
  v10 = 0;
  v4 = [PLPhotoLibrary newPhotoLibraryWithName:"void PLRecordLibrarySizeWithReason(PLReportLibrarySizeReason)" loadedFromURL:v3 options:v2 error:&v10];
  v5 = v10;

  if (v4)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __PLRecordLibrarySizeWithReason_block_invoke;
    v7[3] = &unk_1E7577B90;
    v9 = a1;
    v8 = v4;
    [v8 performBlockAndWait:v7];
    v6 = v8;
  }

  else
  {
    v6 = PLPreferencesGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v12 = "void PLRecordLibrarySizeWithReason(PLReportLibrarySizeReason)";
      v13 = 2112;
      v14 = v5;
      _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_ERROR, "Failed to load photo library %s error: %@", buf, 0x16u);
    }
  }
}

void __PLRecordLibrarySizeWithReason_block_invoke(uint64_t a1)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 40);
  if (v1 > 2)
  {
    v2 = 0;
  }

  else
  {
    v2 = off_1E756E8A0[v1];
  }

  v3 = [*(a1 + 32) librarySizesFromDB];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu", 32];
  v5 = [v3 objectForKeyedSubscript:v4];

  v11 = v2;
  v6 = [v5 stringValue];
  v12[0] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];

  CFPreferencesSetAppValue(@"iCPL-welcome-librarySize", v7, @"com.apple.mobileslideshow");
  v8 = PLPreferencesGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v10 = v7;
    _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_INFO, "Recording library size result %@", buf, 0xCu);
  }
}

void PLRecordRebuildHistory(void *a1)
{
  v5 = a1;
  v1 = CFPreferencesCopyAppValue(@"rebuild-history", @"com.apple.mobileslideshow");
  v2 = v1;
  if (v1)
  {
    v3 = [v1 mutableCopy];
    [v3 addEntriesFromDictionary:v5];

    v4 = v3;
  }

  else
  {
    v4 = v5;
  }

  v6 = v4;
  CFPreferencesSetAppValue(@"rebuild-history", v4, @"com.apple.mobileslideshow");
}

id PLReportiCPLState()
{
  v0 = [MEMORY[0x1E695DF90] dictionary];
  v1 = CFPreferencesCopyAppValue(@"iCPL-welcome-librarySize", @"com.apple.mobileslideshow");
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __PLReportiCPLState_block_invoke;
  v23[3] = &unk_1E7577D60;
  v2 = v0;
  v24 = v2;
  [v1 enumerateKeysAndObjectsUsingBlock:v23];
  v3 = CFPreferencesCopyAppValue(@"rebuild-history", @"com.apple.mobileslideshow");
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __PLReportiCPLState_block_invoke_2;
  v21[3] = &unk_1E75728D8;
  v4 = v2;
  v22 = v4;
  [v3 enumerateKeysAndObjectsUsingBlock:v21];
  keyExistsAndHasValidFormat = 0;
  AppIntegerValue = CFPreferencesGetAppIntegerValue(@"iCPL-enable-reason", @"com.apple.mobileslideshow", &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithInteger:AppIntegerValue];
    v7 = [v6 stringValue];
    [v4 setObject:v7 forKey:@"iCPL-enable-reason"];
  }

  v8 = CFPreferencesGetAppIntegerValue(@"iCPL-disable-reason", @"com.apple.mobileslideshow", &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithInteger:v8];
    v10 = [v9 stringValue];
    [v4 setObject:v10 forKey:@"iCPL-disable-reason"];
  }

  v11 = CFPreferencesGetAppIntegerValue(@"iCPL-enable-error-code", @"com.apple.mobileslideshow", &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    v12 = [MEMORY[0x1E696AD98] numberWithInteger:v11];
    v13 = [v12 stringValue];
    [v4 setObject:v13 forKey:@"iCPL-enable-error-code"];
  }

  v14 = CFPreferencesGetAppIntegerValue(@"iCPL-disable-error-code", @"com.apple.mobileslideshow", &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    v15 = [MEMORY[0x1E696AD98] numberWithInteger:v14];
    v16 = [v15 stringValue];
    [v4 setObject:v16 forKey:@"iCPL-disable-error-code"];
  }

  v17 = v22;
  v18 = v4;

  return v4;
}

void __PLReportiCPLState_block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  [v5 setObject:a2 forKey:@"rebuildDate"];
  v7 = *(a1 + 32);
  v8 = [v6 stringValue];

  [v7 setObject:v8 forKey:@"rebuildReason"];
}

void PLFinishReportiCPLState()
{
  CFPreferencesSetAppValue(@"iCPL-welcome-librarySize", 0, @"com.apple.mobileslideshow");
  CFPreferencesSetAppValue(@"iCPL-enable-reason", 0, @"com.apple.mobileslideshow");
  CFPreferencesSetAppValue(@"iCPL-disable-reason", 0, @"com.apple.mobileslideshow");
  CFPreferencesSetAppValue(@"iCPL-enable-error-code", 0, @"com.apple.mobileslideshow");
  CFPreferencesSetAppValue(@"iCPL-disable-error-code", 0, @"com.apple.mobileslideshow");

  CFPreferencesSetAppValue(@"rebuild-history", 0, @"com.apple.mobileslideshow");
}

uint64_t PLCloudPhotoLibraryMultiLibarySyncingEnabled()
{
  if (PLCloudPhotoLibraryMultiLibarySyncingEnabled_onceToken != -1)
  {
    dispatch_once(&PLCloudPhotoLibraryMultiLibarySyncingEnabled_onceToken, &__block_literal_global_60348);
  }

  return PLCloudPhotoLibraryMultiLibarySyncingEnabled_multiLibrarySyncingEnabled;
}

void __PLCloudPhotoLibraryMultiLibarySyncingEnabled_block_invoke()
{
  v0 = [MEMORY[0x1E695E000] standardUserDefaults];
  PLCloudPhotoLibraryMultiLibarySyncingEnabled_multiLibrarySyncingEnabled = [v0 BOOLForKey:@"PLCloudPhotoLibraryMultiLibrarySyncingEnabled"];
}

BOOL PLCloudPhotoLibraryServerCopySupported()
{
  if (PLCloudPhotoLibraryMultiLibarySyncingEnabled_onceToken != -1)
  {
    dispatch_once(&PLCloudPhotoLibraryMultiLibarySyncingEnabled_onceToken, &__block_literal_global_60348);
  }

  return (PLCloudPhotoLibraryMultiLibarySyncingEnabled_multiLibrarySyncingEnabled & 1) == 0;
}

uint64_t __Block_byref_object_copy__60370(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id _originalResourceOfType(void *a1, int a2)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = ___originalResourceOfType_block_invoke;
  v4[3] = &__block_descriptor_36_e28_B16__0__PLInternalResource_8l;
  v5 = a2;
  v2 = [a1 firstPersistedResourceMatching:v4];

  return v2;
}

id _pathForResourceType(void *a1, int a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (a2 > 9)
  {
    if (a2 == 10)
    {
      v5 = [v3 pathForSpatialOverCaptureContentFile];
      goto LABEL_10;
    }

    if (a2 == 11)
    {
      v5 = [v3 pathForVideoComplementSpatialOverCaptureContentFile];
      goto LABEL_10;
    }
  }

  else
  {
    if (a2 < 2)
    {
      v5 = [v3 pathForOriginalFile];
LABEL_10:
      v6 = v5;
      goto LABEL_11;
    }

    if (a2 == 3)
    {
      v5 = [v3 pathForVideoComplementFile];
      goto LABEL_10;
    }
  }

  v8 = PLBackendGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v9[0] = 67240192;
    v9[1] = a2;
    _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_ERROR, "Unexpected resource type: %{public}d", v9, 8u);
  }

  v6 = 0;
LABEL_11:

  return v6;
}

uint64_t ___originalResourceOfType_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 resourceType] == *(a1 + 32) && !objc_msgSend(v3, "version"))
  {
    v4 = [v3 isDerivative] ^ 1;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void sub_19C335994(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C336150(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL _haveSameSaveAsType(void *a1, void *a2)
{
  v3 = a2;
  LODWORD(a1) = [a1 savedAssetType];
  v4 = [v3 savedAssetType];

  return a1 == v4;
}

void sub_19C338F30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__60974(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_19C339880(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  _Block_object_dispose(&a19, 8);
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a41, 8);
  _Block_object_dispose((v41 - 208), 8);
  _Unwind_Resume(a1);
}

void sub_19C33A0CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location, id a24)
{
  objc_destroyWeak((v24 + 56));
  objc_destroyWeak((v24 + 48));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a24);
  _Block_object_dispose((v25 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_19C342BA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose(&a37, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__61699(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_19C345630(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_19C345F7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v17 - 128), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__62036(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_19C3465B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, void *a18, os_signpost_id_t a19, os_activity_scope_state_s a20, SEL sel)
{
  if (a17 == 1)
  {
    os_activity_scope_leave(&a20);
  }

  if (a19)
  {
    v24 = PLRequestGetLog();
    v25 = v24;
    if (a19 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v24))
    {
      Name = sel_getName(sel);
      *(v22 - 96) = 136446210;
      *(v21 + 4) = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v25, OS_SIGNPOST_INTERVAL_END, a19, "PLXPC Sync", "%{public}s", (v22 - 96), 0xCu);
    }
  }

  _Unwind_Resume(a1);
}

id MOCSaveAndReturnError(void *a1)
{
  v1 = a1;
  v10 = 0;
  v2 = [v1 save:&v10];
  v3 = v10;
  v4 = 0;
  if ((v2 & 1) == 0)
  {
    [v1 rollback];
    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v6 = MEMORY[0x1E696AEC0];
    v7 = [v3 localizedDescription];
    v8 = [v6 stringWithFormat:@"Save failed with error %@", v7];
    [v5 setObject:v8 forKeyedSubscript:*MEMORY[0x1E696A578]];

    [v5 setObject:v3 forKeyedSubscript:*MEMORY[0x1E696AA08]];
    v4 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E69BFF48] code:46301 userInfo:v5];
  }

  return v4;
}

void sub_19C3470A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, void *a30, os_signpost_id_t a31, os_activity_scope_state_s a32, SEL sel)
{
  if (a29 == 1)
  {
    os_activity_scope_leave(&a32);
  }

  if (a31)
  {
    v35 = PLRequestGetLog();
    v36 = v35;
    if (a31 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v35))
    {
      Name = sel_getName(sel);
      *(v33 - 128) = 136446210;
      *(v33 - 124) = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v36, OS_SIGNPOST_INTERVAL_END, a31, "PLXPC Sync", "%{public}s", (v33 - 128), 0xCu);
    }
  }

  _Unwind_Resume(a1);
}

void sub_19C347A38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getMPMediaLibraryClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getMPMediaLibraryClass_softClass;
  v7 = getMPMediaLibraryClass_softClass;
  if (!getMPMediaLibraryClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getMPMediaLibraryClass_block_invoke;
    v3[3] = &unk_1E7577EA0;
    v3[4] = &v4;
    __getMPMediaLibraryClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_19C347F64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getMPMediaLibraryClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!MediaPlayerLibraryCore_frameworkLibrary)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __MediaPlayerLibraryCore_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E756EE28;
    v8 = 0;
    MediaPlayerLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!MediaPlayerLibraryCore_frameworkLibrary)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *MediaPlayerLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"PLAssetsdResourceService.m" lineNumber:30 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("MPMediaLibrary");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getMPMediaLibraryClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"PLAssetsdResourceService.m" lineNumber:31 description:{@"Unable to find class %s", "MPMediaLibrary"}];

LABEL_10:
    __break(1u);
  }

  getMPMediaLibraryClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __MediaPlayerLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  MediaPlayerLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_19C34A2C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, char a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a48, 8);
  _Block_object_dispose(&a65, 8);
  _Block_object_dispose(&a71, 8);
  _Block_object_dispose(&STACK[0x220], 8);
  _Block_object_dispose(&STACK[0x250], 8);
  _Block_object_dispose(&STACK[0x280], 8);
  _Block_object_dispose((v71 - 224), 8);
  _Block_object_dispose((v71 - 176), 8);
  _Unwind_Resume(a1);
}

void sub_19C34ACDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  _Block_object_dispose(&a20, 8);
  _Block_object_dispose(&a26, 8);
  _Unwind_Resume(a1);
}

void sub_19C34B6F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47, void *a48, os_signpost_id_t a49, os_activity_scope_state_s a50, SEL sel, char a52)
{
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose((v52 - 160), 8);
  _Block_object_dispose(&a43, 8);
  if (a47 == 1)
  {
    os_activity_scope_leave(&a50);
  }

  if (a49)
  {
    v54 = PLRequestGetLog();
    v55 = v54;
    v56 = a49;
    if (a49 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v54))
    {
      Name = sel_getName(sel);
      *(v52 - 160) = 136446210;
      STACK[0x204] = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v55, OS_SIGNPOST_INTERVAL_END, v56, "PLXPC Sync", "%{public}s", (v52 - 160), 0xCu);
    }
  }

  _Unwind_Resume(a1);
}

void __asyncImageDataFromAsset_block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (v2)
  {
    v23 = 0;
    v3 = *MEMORY[0x1E695DB50];
    v22 = 0;
    v4 = [v2 getResourceValue:&v23 forKey:v3 error:&v22];
    v5 = v23;
    v6 = v22;
    if ((v4 & 1) == 0)
    {
      v9 = PLGatekeeperXPCGetLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = [*(a1 + 32) lastPathComponent];
        *buf = 138412546;
        v25 = v10;
        v26 = 2112;
        v27 = v6;
        _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_ERROR, "PLXPC Sync", buf, 0x16u);
      }

      (*(*(a1 + 48) + 16))();
      goto LABEL_25;
    }

    if (*(a1 + 66))
    {
      v7 = 0;
    }

    else
    {
      v7 = PLCreateMemoryMappedXPCObjectFromFileURL();
      v18 = 0;
      if (v18)
      {
        v19 = PLGatekeeperXPCGetLog();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          v20 = [v18 localizedDescription];
          *buf = 138412290;
          v25 = v20;
          _os_log_impl(&dword_19BF1F000, v19, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
        }
      }
    }

    (*(*(a1 + 48) + 16))(*(a1 + 48), v7, v5, *(a1 + 32), *(a1 + 64), *(a1 + 56));
LABEL_24:

LABEL_25:
    return;
  }

  if (*(a1 + 67) == 1)
  {
    v8 = *(*(a1 + 48) + 16);
  }

  else
  {
    if (*(a1 + 40))
    {
      v11 = DCIM_CGImageRefFromPLImage();
      MEMORY[0x19EAED900](*(a1 + 40));
      v12 = PLExifOrientationFromImageOrientation();
      v5 = imageDataFromImageRef(v11, 0, v12, 0);
      v13 = [v5 length];
      v6 = 0;
      if ((*(a1 + 66) & 1) == 0)
      {
        v21 = 0;
        v6 = PLCreateMemoryMappedXPCObjectFromData();
        v14 = 0;
        if (v14)
        {
          v15 = PLGatekeeperXPCGetLog();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            v16 = [v14 localizedDescription];
            *buf = 138412290;
            v25 = v16;
            _os_log_impl(&dword_19BF1F000, v15, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
          }
        }
      }

      v17 = *(a1 + 48);
      v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:{v13, v21}];
      (*(v17 + 16))(v17, v6, v7, 0, *(a1 + 64), *(a1 + 56));
      goto LABEL_24;
    }

    v8 = *(*(a1 + 48) + 16);
  }

  v8();
}

void sub_19C34DE24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, void *a30, os_signpost_id_t a31, os_activity_scope_state_s a32, SEL sel)
{
  _Block_object_dispose((v34 - 160), 8);
  _Block_object_dispose(&a25, 8);
  if (a29 == 1)
  {
    os_activity_scope_leave(&a32);
  }

  if (a31)
  {
    v36 = PLRequestGetLog();
    v37 = v36;
    v38 = a31;
    if (a31 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v36))
    {
      Name = sel_getName(sel);
      *(v34 - 160) = 136446210;
      *(v33 + 4) = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v37, OS_SIGNPOST_INTERVAL_END, v38, "PLXPC Sync", "%{public}s", (v34 - 160), 0xCu);
    }
  }

  _Unwind_Resume(a1);
}

void sub_19C34FE78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void _settingsDidChange(uint64_t a1, void *a2)
{
  v2 = a2[2];
  v3 = a2;
  [v2 resetObject];
  WeakRetained = objc_loadWeakRetained(v3 + 3);
  [WeakRetained cplSettingsDidChange:v3];
}

void sub_19C3500FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19C350AF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__62544(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_19C351348(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47)
{
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose(&a41, 8);
  _Block_object_dispose((v47 - 176), 8);
  _Block_object_dispose(&a47, 8);
  _Unwind_Resume(a1);
}

void sub_19C351A44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C352174(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_19C352AFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_19C352EDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_19C35430C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C3583F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__63205(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_19C3586C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C35899C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C358C68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C35A7F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__63374(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_19C35B5A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C35BED4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C35CD00(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_19C35D408(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C35D7B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C3619AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *PLBackgroundJobTypeDescription(unsigned int a1)
{
  if (a1 > 0xA)
  {
    return @"unknown";
  }

  else
  {
    return off_1E756F240[a1];
  }
}

id PLSearchSocialGroupLookupIdentifier(void *a1)
{
  v1 = [a1 sortedArrayUsingSelector:sel_compare_];
  v2 = [v1 componentsJoinedByString:{@", "}];

  return v2;
}