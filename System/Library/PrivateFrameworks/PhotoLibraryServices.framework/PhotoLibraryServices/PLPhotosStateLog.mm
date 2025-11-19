@interface PLPhotosStateLog
- (BOOL)compressFileFromPath:(id)a3 toPath:(id)a4;
- (BOOL)copyFilesMatching:(id)a3 andExcluding:(id)a4 fromPath:(id)a5 toPath:(id)a6 usingCompression:(BOOL)a7;
- (PLPhotosStateLog)initWithPhotoLibrary:(id)a3;
- (void)_logAssets:(id)a3 forAlbum:(id)a4 indent:(unint64_t)a5;
- (void)createSnapshot;
- (void)logAlbum:(id)a3 index:(unint64_t)a4 indent:(unint64_t)a5 completeMetadata:(BOOL)a6 printAssets:(BOOL)a7;
- (void)logAlbumLists;
- (void)logAllAlbums;
- (void)logAssetCounts;
- (void)logMoments;
@end

@implementation PLPhotosStateLog

- (void)createSnapshot
{
  v2 = [(PLPhotosStateLog *)self photoLibrary];
  v3 = [v2 pathManager];
  v4 = [v3 photoDirectoryWithType:2];

  v5 = [@"/var/mobile" stringByAppendingPathComponent:@"Library/Logs/CrashReporter/DiagnosticLogs/"];
  v6 = objc_alloc_init(MEMORY[0x1E696AB78]);
  [v6 setDateFormat:@"YYYY_MM_dd_HH_mm_ssZZZ"];
  v7 = [MEMORY[0x1E695DF00] date];
  v8 = [v6 stringFromDate:v7];

  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"PhotosSnapshot_%@", v8];
  v10 = [v5 stringByAppendingString:v9];
  v11 = [v10 stringByAppendingString:@"/"];

  v12 = dispatch_queue_create("com.apple.photostate.PLPhotosStateLoggingQueue", MEMORY[0x1E69E96A8]);
  v16 = v4;
  v17 = v5;
  v13 = v5;
  v14 = v4;
  v15 = v11;
  pl_dispatch_async();
}

void __34__PLPhotosStateLog_createSnapshot__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AC08] defaultManager];
  v3 = *(a1 + 32);
  v15 = 0;
  v4 = [v2 createDirectoryAtPath:v3 withIntermediateDirectories:1 attributes:0 error:&v15];
  v5 = v15;

  if (v4)
  {
    [*(a1 + 40) copyFilesMatching:@"*.sqlite*" andExcluding:@"*aside*" fromPath:*(a1 + 48) toPath:*(a1 + 32) usingCompression:1];
    [*(a1 + 40) copyFilesMatching:@"com.apple.*" andExcluding:0 fromPath:*(a1 + 56) toPath:*(a1 + 32) usingCompression:1];
  }

  else
  {
    v6 = *(a1 + 32);
    v14 = [v5 localizedDescription];
    logString(@"[PLLogging] Error creating directory %@: %@", v7, v8, v9, v10, v11, v12, v13, v6);

    v5 = v14;
  }
}

- (BOOL)copyFilesMatching:(id)a3 andExcluding:(id)a4 fromPath:(id)a5 toPath:(id)a6 usingCompression:(BOOL)a7
{
  v7 = a7;
  v70 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = v13;
  v16 = v14;
  [MEMORY[0x1E696AC08] defaultManager];
  v61 = v68 = 0;
  v17 = [v61 contentsOfDirectoryAtPath:v13 error:&v68];
  v54 = v68;
  v57 = v11;
  if (v12)
  {
    [MEMORY[0x1E696AE18] predicateWithFormat:@"(SELF like %@) AND (NOT (SELF like %@))", v11, v12];
  }

  else
  {
    [MEMORY[0x1E696AE18] predicateWithFormat:@"SELF like %@", v11, v50];
  }

  v55 = v17;
  v53 = v56 = v12;
  v18 = [v17 filteredArrayUsingPredicate:v53];
  v64 = 0u;
  v65 = 0u;
  v60 = v18 == 0;
  v66 = 0u;
  v67 = 0u;
  obj = v18;
  v19 = [v18 countByEnumeratingWithState:&v64 objects:v69 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v65;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v65 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v23 = *(*(&v64 + 1) + 8 * i);
        v24 = [v15 stringByAppendingString:v23];
        v25 = [v16 stringByAppendingString:v23];
        if (v7)
        {
          v60 = [(PLPhotosStateLog *)self compressFileFromPath:v24 toPath:v25];
        }

        else
        {
          v26 = v7;
          v27 = v15;
          v28 = v61;
          if ([v61 fileExistsAtPath:v25])
          {
            v63 = 0;
            v29 = [v61 removeItemAtPath:v25 error:&v63];
            v30 = v63;
            v31 = v30;
            if ((v29 & 1) == 0)
            {
              v51 = [v30 localizedDescription];
              logString(@"[PLLogging] Error deleting file %@: %@", v32, v33, v34, v35, v36, v37, v38, v25);
            }

            v28 = v61;
          }

          v62 = 0;
          v39 = [v28 copyItemAtPath:v24 toPath:v25 error:&v62];
          v40 = v62;
          v41 = v40;
          if (v39)
          {
            v60 = 1;
          }

          else
          {
            v52 = [v40 localizedDescription];
            logString(@"[PLLogging] Error copying file %@ to %@: %@", v42, v43, v44, v45, v46, v47, v48, v24);
          }

          v15 = v27;
          v7 = v26;
        }
      }

      v20 = [obj countByEnumeratingWithState:&v64 objects:v69 count:16];
    }

    while (v20);
  }

  return v60;
}

- (BOOL)compressFileFromPath:(id)a3 toPath:(id)a4
{
  v68 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v66 = 0;
  v8 = [MEMORY[0x1E696AC08] defaultManager];
  if (![v8 fileExistsAtPath:v6 isDirectory:&v66])
  {
    v18 = 0;
    goto LABEL_31;
  }

  if (v66 != 1)
  {
    v23 = [v7 stringByAppendingPathExtension:@"gz"];

    if ([v8 fileExistsAtPath:v23])
    {
      v59 = 0;
      v24 = [v8 removeItemAtPath:v23 error:&v59];
      v25 = v59;
      v26 = v25;
      if ((v24 & 1) == 0)
      {
        v54 = [v25 localizedDescription];
        logString(@"[PLLogging] Error deleting file %@: %@", v27, v28, v29, v30, v31, v32, v33, v23);
      }
    }

    v34 = fopen([v6 fileSystemRepresentation], "r");
    if (v34)
    {
      v42 = v34;
      v43 = fopen([v23 fileSystemRepresentation], "w");
      if (v43)
      {
        v44 = v43;
        v45 = CPFileCompressionZDeflate();
        fclose(v44);
        fclose(v42);
        if (!v45)
        {
          v18 = 1;
LABEL_27:
          v7 = v23;
          goto LABEL_31;
        }
      }

      else
      {
        fclose(v42);
      }
    }

    logString(@"[PLLogging] Failed to compress %@", v35, v36, v37, v38, v39, v40, v41, v6);
    v18 = 0;
    goto LABEL_27;
  }

  v65 = 0;
  v9 = [v8 contentsOfDirectoryAtPath:v6 error:&v65];
  v10 = v65;
  v64 = 0;
  v11 = [v8 createDirectoryAtPath:v7 withIntermediateDirectories:1 attributes:0 error:&v64];
  v12 = v64;
  v13 = v12;
  if (v11)
  {
    v58 = v12;
    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v14 = v9;
    v15 = [v14 countByEnumeratingWithState:&v60 objects:v67 count:16];
    if (v15)
    {
      v16 = v15;
      v55 = v10;
      v56 = v9;
      v57 = v8;
      v17 = *v61;
      v18 = 1;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v61 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v20 = *(*(&v60 + 1) + 8 * i);
          v21 = [v6 stringByAppendingPathComponent:v20];
          v22 = [v7 stringByAppendingPathComponent:v20];
          v18 = v18 && [(PLPhotosStateLog *)self compressFileFromPath:v21 toPath:v22];
        }

        v16 = [v14 countByEnumeratingWithState:&v60 objects:v67 count:16];
      }

      while (v16);
      v9 = v56;
      v8 = v57;
      v10 = v55;
    }

    else
    {
      v18 = 1;
    }

    v13 = v58;
  }

  else
  {
    v14 = [v12 localizedDescription];
    logString(@"[PLLogging] Error creating directory %@: %@", v46, v47, v48, v49, v50, v51, v52, v7);
    v18 = 0;
  }

LABEL_31:
  return v18;
}

- (void)_logAssets:(id)a3 forAlbum:(id)a4 indent:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  if (v8)
  {
    v10 = objc_alloc_init(MEMORY[0x1E696AB78]);
    [v10 setDateFormat:@"yMMMdd-HH:mm:ss.SS"];
    v11 = [v9 customKeyAsset];
    if (v9)
    {
      v12 = [v9 kindValue] == 1505;
    }

    else
    {
      v12 = 0;
    }

    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __47__PLPhotosStateLog__logAssets_forAlbum_indent___block_invoke;
    v15[3] = &unk_1E75721A8;
    v16 = v11;
    v17 = v10;
    v20 = v12;
    v18 = self;
    v19 = a5;
    v13 = v10;
    v14 = v11;
    [v8 enumerateObjectsUsingBlock:v15];
  }
}

void __47__PLPhotosStateLog__logAssets_forAlbum_indent___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v41 = a2;
  if (*(a1 + 32) == v41)
  {
    v4 = @" (*)";
  }

  else
  {
    v4 = &stru_1F0F06D80;
  }

  v39 = v4;
  v5 = [v41 legacyFaces];
  if ([v5 count])
  {
    v6 = MEMORY[0x1E696AEC0];
    v7 = [v41 legacyFaces];
    v38 = [v6 stringWithFormat:@" %lu legacyFaces", objc_msgSend(v7, "count")];
  }

  else
  {
    v38 = &stru_1F0F06D80;
  }

  v8 = [v41 locationData];
  v9 = @" GPS";
  if (!v8)
  {
    v9 = &stru_1F0F06D80;
  }

  v40 = v9;

  v35 = *(a1 + 56);
  v37 = [v41 shortObjectIDURI];
  v10 = [v41 uuid];
  [v41 effectiveThumbnailIndex];
  v11 = [v41 shortenedFilePath];
  v12 = *(a1 + 40);
  v13 = [v41 dateCreated];
  v14 = [v12 stringFromDate:v13];
  [v41 sortToken];
  if (*(a1 + 64))
  {
    v21 = MEMORY[0x1E696AEC0];
    v22 = [v41 cloudBatchPublishDate];
    [v21 stringWithFormat:@"cloud batch=%@", v22];
    v24 = v38;
    v34 = v23 = v39;
    v25 = v37;
    logStringWithIndent(v35 + 1, @"%2zu: %@ UUID=%@ THUMB=%d %@ %@ sort=%f %@%@%@%@", v26, v27, v28, v29, v30, v31, a3);
  }

  else
  {
    v24 = v38;
    v23 = v39;
    v25 = v37;
    logStringWithIndent(v35 + 1, @"%2zu: %@ UUID=%@ THUMB=%d %@ %@ sort=%f %@%@%@%@", v15, v16, v17, v18, v19, v20, a3);
  }

  v32 = [*(a1 + 48) photoLibrary];
  v33 = [v32 managedObjectContext];
  [v33 refreshObject:v41 mergeChanges:{objc_msgSend(v41, "hasChanges")}];
}

- (void)logAssetCounts
{
  v34 = 0;
  v35 = 0;
  v3 = [(PLPhotosStateLog *)self photoLibrary];
  [v3 getPhotoCount:&v35 videoCount:&v34];

  logString(@" ===== %u photos %u videos =====", v4, v5, v6, v7, v8, v9, v10, v35);
  v11 = [(PLPhotosStateLog *)self photoLibrary];
  v12 = [v11 managedObjectContext];

  v13 = MEMORY[0x1E695D5E0];
  v14 = +[PLManagedAsset entityName];
  v15 = [v13 fetchRequestWithEntityName:v14];

  [v15 setReturnsObjectsAsFaults:0];
  [v15 setFetchBatchSize:100];
  v16 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(complete != 0) AND (kind == %d)"];
  [v15 setPredicate:v16];

  v17 = [v12 executeFetchRequest:v15 error:0];
  logString(@" ===== IMAGES =====", v18, v19, v20, v21, v22, v23, v24, 0);
  [(PLPhotosStateLog *)self _logAssets:v17 forAlbum:0 indent:0];
  v25 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(complete != 0) AND (kind == %d)"];
  [v15 setPredicate:v25];

  v26 = [v12 executeFetchRequest:v15 error:0];
  logString(@" ===== VIDEOS =====", v27, v28, v29, v30, v31, v32, v33, 1);
  [(PLPhotosStateLog *)self _logAssets:v26 forAlbum:0 indent:0];
}

- (void)logAllAlbums
{
  v37 = *MEMORY[0x1E69E9840];
  logTitleWithIndent(0, @"All Albums", v2, v3, v4, v5, v6, v7, v30);
  v9 = [(PLPhotosStateLog *)self photoLibrary];
  v10 = [v9 managedObjectContext];

  v11 = MEMORY[0x1E695D5E0];
  v12 = +[PLGenericAlbum entityName];
  v13 = [v11 fetchRequestWithEntityName:v12];

  v14 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"kind" ascending:1];
  v15 = [MEMORY[0x1E695DEC8] arrayWithObject:v14];
  [v13 setSortDescriptors:v15];

  v35 = 0;
  v16 = [v10 executeFetchRequest:v13 error:&v35];
  v17 = v35;
  v24 = v17;
  if (v16)
  {
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v25 = v16;
    v26 = [v25 countByEnumeratingWithState:&v31 objects:v36 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v32;
      do
      {
        v29 = 0;
        do
        {
          if (*v32 != v28)
          {
            objc_enumerationMutation(v25);
          }

          [(PLPhotosStateLog *)self logAlbum:*(*(&v31 + 1) + 8 * v29++) index:0x7FFFFFFFFFFFFFFFLL indent:0 completeMetadata:0 printAssets:0];
        }

        while (v27 != v29);
        v27 = [v25 countByEnumeratingWithState:&v31 objects:v36 count:16];
      }

      while (v27);
    }
  }

  else
  {
    logStringWithIndent(0, @"Failed to get albums: %@", v18, v19, v20, v21, v22, v23, v17);
  }
}

- (void)logAlbumLists
{
  v51 = *MEMORY[0x1E69E9840];
  logTitleWithIndent(0, @"Album Lists", v2, v3, v4, v5, v6, v7, v38);
  v9 = objc_alloc(MEMORY[0x1E695D5E0]);
  v10 = +[PLManagedAlbumList entityName];
  v11 = [v9 initWithEntityName:v10];

  v12 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"identifier" ascending:1];
  v13 = [MEMORY[0x1E695DEC8] arrayWithObject:v12];
  [v11 setSortDescriptors:v13];

  v14 = [(PLPhotosStateLog *)self photoLibrary];
  v15 = [v14 managedObjectContext];
  v49 = 0;
  v16 = [v15 executeFetchRequest:v11 error:&v49];
  v17 = v49;

  if (v16)
  {
    v40 = v17;
    v41 = v12;
    v42 = v11;
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    obj = v16;
    v24 = [obj countByEnumeratingWithState:&v45 objects:v50 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v46;
      do
      {
        for (i = 0; i != v25; ++i)
        {
          if (*v46 != v26)
          {
            objc_enumerationMutation(obj);
          }

          v28 = *(*(&v45 + 1) + 8 * i);
          v29 = [v28 shortObjectIDURI];
          v30 = [v28 identifier];
          v39 = [v28 _typeDescription];
          logStringWithIndent(0, @"%@ (%@) %@", v31, v32, v33, v34, v35, v36, v29);

          v37 = [v28 albums];
          v44[0] = MEMORY[0x1E69E9820];
          v44[1] = 3221225472;
          v44[2] = __33__PLPhotosStateLog_logAlbumLists__block_invoke;
          v44[3] = &unk_1E7572180;
          v44[4] = self;
          v44[5] = 0;
          [v37 enumerateObjectsUsingBlock:v44];
        }

        v25 = [obj countByEnumeratingWithState:&v45 objects:v50 count:16];
      }

      while (v25);
    }

    v12 = v41;
    v11 = v42;
    v17 = v40;
  }

  else
  {
    logStringWithIndent(0, @"Failed to fetch album lists: %@", v18, v19, v20, v21, v22, v23, v17);
  }
}

- (void)logAlbum:(id)a3 index:(unint64_t)a4 indent:(unint64_t)a5 completeMetadata:(BOOL)a6 printAssets:(BOOL)a7
{
  v34 = a6;
  v35 = a7;
  v9 = a3;
  v36 = v9;
  if (a4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = &stru_1F0F06D80;
  }

  else
  {
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu: ", a4];
    v9 = v36;
  }

  if ([v9 pendingItemsCount] < 1)
  {
    v11 = &stru_1F0F06D80;
  }

  else
  {
    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"pending=%d", objc_msgSend(v36, "pendingItemsCount")];
  }

  v12 = [v36 shortObjectIDURI];
  v13 = [v36 localizedTitle];
  v14 = [v36 title];
  objc_opt_class();
  v15 = [v36 _kindDescription];
  v16 = [v36 kind];
  v32 = [v36 uuid];
  logStringWithIndent(a5, @"%@%@ %@ (%@) %@ %@ (%@) UUID=%@ %@", v17, v18, v19, v20, v21, v22, v10);

  if (v34)
  {
    v23 = [v36 description];
    logStringWithIndent(a5, @"%@", v24, v25, v26, v27, v28, v29, v23);
  }

  if (v35)
  {
    v30 = [v36 assets];
    v31 = [v30 array];
    [(PLPhotosStateLog *)self _logAssets:v31 forAlbum:v36 indent:a5];
  }
}

- (void)logMoments
{
  v102 = *MEMORY[0x1E69E9840];
  verificationFailures = 0;
  v2 = [(PLPhotosStateLog *)self photoLibrary];
  v3 = [v2 managedObjectContext];

  logString(@"========== Moment Library ==========", v4, v5, v6, v7, v8, v9, v10, v82);
  v98 = 0;
  v11 = [PLMoment allMomentsInManagedObjectContext:v3 error:&v98];
  v12 = v98;
  v86 = v11;
  v87 = v3;
  v85 = v12;
  if (v11)
  {
    v96 = 0u;
    v97 = 0u;
    v94 = 0u;
    v95 = 0u;
    obj = v11;
    v20 = [obj countByEnumeratingWithState:&v94 objects:v101 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = 0;
      v89 = *v95;
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v95 != v89)
          {
            objc_enumerationMutation(obj);
          }

          v24 = *(*(&v94 + 1) + 8 * i);
          if (v22)
          {
            v25 = [*(*(&v94 + 1) + 8 * i) representativeDate];
            v26 = [v22 representativeDate];
            v27 = [v25 compare:v26];

            if (v27 == -1)
            {
              ++verificationFailures;
              logString(@"VERIFICATION FAILURE **************************************** MIS-ORDERED MOMENT ****************************************", v28, v29, v30, v31, v32, v33, v34, v83);
            }
          }

          v35 = v24;

          v22 = v35;
          v36 = [v22 uuid];
          v37 = [v22 pl_shortDescription];
          v38 = [v22 representativeDate];
          v39 = [v22 title];
          [v22 cachedPhotosCount];
          [v22 cachedVideosCount];
          [v22 cachedCount];

          logStringWithIndent(1, @"<%@> %@, %@, %@. (%d P + %d V = %d)", v40, v41, v42, v43, v44, v45, v36);
        }

        v21 = [obj countByEnumeratingWithState:&v94 objects:v101 count:16];
      }

      while (v21);

      v3 = v87;
    }
  }

  else
  {
    logString(@"Failed to fetch all moments %@", v13, v14, v15, v16, v17, v18, v19, v12);
  }

  v46 = [MEMORY[0x1E695D5E0] fetchRequestWithEntityName:@"Asset"];
  v47 = MEMORY[0x1E696AB28];
  v48 = [MEMORY[0x1E69BF328] predicateForIncludeMask:objc_msgSend(MEMORY[0x1E69BF328] useIndex:{"maskForAssetsIncludedInMoments"), 1}];
  v100[0] = v48;
  v49 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K != %d", @"visibilityState", 2];
  v100[1] = v49;
  v50 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == NULL"];
  v100[2] = v50;
  v51 = [MEMORY[0x1E695DEC8] arrayWithObjects:v100 count:3];
  v52 = [v47 andPredicateWithSubpredicates:v51];
  [v46 setPredicate:v52];

  v53 = [v3 executeFetchRequest:v46 error:0];
  if ([v53 count])
  {
    ++verificationFailures;
    logString(@"VERIFICATION FAILURE **************************************** Orphaned Assets ****************************************", v54, v55, v56, v57, v58, v59, v60, @"moment");
    v92 = 0u;
    v93 = 0u;
    v90 = 0u;
    v91 = 0u;
    v61 = v53;
    v62 = [v61 countByEnumeratingWithState:&v90 objects:v99 count:16];
    if (v62)
    {
      v63 = v62;
      v64 = *v91;
      do
      {
        for (j = 0; j != v63; ++j)
        {
          if (*v91 != v64)
          {
            objc_enumerationMutation(v61);
          }

          v66 = *(*(&v90 + 1) + 8 * j);
          v67 = [v66 shortObjectIDURI];
          v68 = [v66 uuid];
          v84 = [v66 dateCreated];
          logStringWithIndent(1, @"%@ %@, %@", v69, v70, v71, v72, v73, v74, v67);
        }

        v63 = [v61 countByEnumeratingWithState:&v90 objects:v99 count:16];
      }

      while (v63);
    }

    v3 = v87;
  }

  logString(@"Found %d VERIFICATION FAILURE(s)", v75, v76, v77, v78, v79, v80, v81, verificationFailures);
}

- (PLPhotosStateLog)initWithPhotoLibrary:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = PLPhotosStateLog;
  v6 = [(PLPhotosStateLog *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_photoLibrary, a3);
    v8 = dispatch_group_create();
    group = v7->_group;
    v7->_group = v8;
  }

  return v7;
}

@end