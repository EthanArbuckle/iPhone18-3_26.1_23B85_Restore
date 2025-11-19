@interface PLLivePhotoPairingProcessor
- (id)combinePair:(id)a3 error:(id *)a4;
- (id)fetchRequestForLibrary;
- (id)fetchRequestForSortedGroupIDs:(id)a3;
- (id)firstGroupFromAssets:(id)a3;
- (id)livePhotoFetchRequestWithPredicate:(id)a3;
@end

@implementation PLLivePhotoPairingProcessor

- (id)livePhotoFetchRequestWithPredicate:(id)a3
{
  v15[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = MEMORY[0x1E696AB28];
    v15[0] = v4;
    v7 = [(PLPairingProcessor *)self locatedInUsersPhotoLibrary];
    v15[1] = v7;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:2];
    v9 = [v6 andPredicateWithSubpredicates:v8];

    v10 = MEMORY[0x1E695D5E0];
    v11 = +[PLManagedAsset entityName];
    v5 = [v10 fetchRequestWithEntityName:v11];

    [v5 setPredicate:v9];
    [v5 setResultType:0];
    v14[0] = @"additionalAttributes";
    v14[1] = @"albums";
    v14[2] = @"modernResources";
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:3];
    [v5 setRelationshipKeyPathsForPrefetching:v12];
  }

  else
  {
    v9 = 0;
  }

  return v5;
}

- (id)fetchRequestForSortedGroupIDs:(id)a3
{
  v4 = MEMORY[0x1E696AE18];
  v5 = a3;
  v6 = [v4 predicateWithFormat:@"%K in %@ and noindex:(%K) == %d and SUBQUERY(modernResources, $r, $r.resourceType == %d).@count == 0", @"mediaGroupUUID", v5, @"trashedState", 0, 3];
  v7 = [(PLLivePhotoPairingProcessor *)self livePhotoFetchRequestWithPredicate:v6];
  v8 = [v5 count];

  if (v8 >= 0x65)
  {
    [v7 setFetchBatchSize:100];
  }

  return v7;
}

- (id)fetchRequestForLibrary
{
  v3 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K != nil and %K != '' and noindex:(%K) == %d and SUBQUERY(modernResources, $r, $r.resourceType == %d).@count == 0", @"mediaGroupUUID", @"mediaGroupUUID", @"trashedState", 0, 3];
  v4 = [(PLLivePhotoPairingProcessor *)self livePhotoFetchRequestWithPredicate:v3];
  [v4 setFetchBatchSize:100];

  return v4;
}

- (id)combinePair:(id)a3 error:(id *)a4
{
  v37 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:&unk_1F0FBD1C8];
  v8 = [v6 objectForKeyedSubscript:&unk_1F0FBD1E0];

  [MEMORY[0x1E69BF328] maskForReferencedAsset];
  [v7 savedAssetType];
  v9 = PLValidatedSavedAssetTypeApplies();
  v10 = [v8 mainFileURL];
  v11 = [v10 path];
  v12 = PFVideoComplementMetadataForVideoAtPath();

  v13 = [v7 mediaGroupUUID];
  v14 = [v8 mainFileURL];
  if (v12)
  {
    [v12 videoDuration];
    [v12 imageDisplayTime];
  }

  else
  {
    buf = 0uLL;
    v36 = 0;
    memset(v32, 0, sizeof(v32));
  }

  if (v9)
  {
    v15 = 2;
  }

  else
  {
    v15 = 0;
  }

  v16 = [v7 becomePhotoIrisWithMediaGroupUUID:v13 mainFileMetadata:0 videoURL:v14 videoDuration:&buf stillDisplayTime:v32 options:v15];

  if (v16)
  {
    goto LABEL_13;
  }

  v31 = self;
  v17 = MEMORY[0x1E696ABC0];
  v18 = *MEMORY[0x1E69BFF48];
  v33 = *MEMORY[0x1E696A278];
  v19 = MEMORY[0x1E696AEC0];
  v20 = [v7 uuid];
  v21 = [v8 uuid];
  v22 = [v19 stringWithFormat:@"Failed to combine asset '%@' (prim_img) and asset '%@' (vidcomp) as a LivePhoto", v20, v21];
  v34 = v22;
  v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v34 forKeys:&v33 count:1];
  v24 = [v17 errorWithDomain:v18 code:41003 userInfo:v23];

  v25 = PLBackendGetLog();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v24;
    _os_log_impl(&dword_19BF1F000, v25, OS_LOG_TYPE_ERROR, "%{public}@", &buf, 0xCu);
  }

  self = v31;
  if (!v24)
  {
LABEL_13:
    [(PLPairingProcessor *)self updatePrimaryAsset:v7 andRemoveAssetIfPossible:v8];
    v24 = 0;
    v26 = 1;
    if (!a4)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v26 = 0;
  if (a4)
  {
LABEL_14:
    v27 = v24;
    *a4 = v24;
  }

LABEL_15:
  if (v26)
  {
    v28 = v7;
  }

  else
  {
    v28 = 0;
  }

  v29 = v28;

  return v28;
}

- (id)firstGroupFromAssets:(id)a3
{
  v33 = *MEMORY[0x1E69E9840];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v3 = a3;
  v4 = [v3 countByEnumeratingWithState:&v22 objects:v32 count:16];
  if (!v4)
  {
    v6 = 0;
    v5 = 0;
    goto LABEL_31;
  }

  v5 = 0;
  v6 = 0;
  v7 = *v23;
  do
  {
    v8 = 0;
    do
    {
      if (*v23 != v7)
      {
        objc_enumerationMutation(v3);
      }

      v9 = *(*(&v22 + 1) + 8 * v8);
      v10 = objc_autoreleasePoolPush();
      if (![v9 isVideo])
      {
        if ([v9 isPhoto])
        {
          if (!v6)
          {
            if (v5)
            {
              v14 = v9;
              v15 = [v5 savedAssetType];
              v16 = [v14 savedAssetType];

              if (v15 != v16)
              {
                v6 = 0;
                goto LABEL_23;
              }
            }

            v6 = v9;
          }

LABEL_17:
          if (!v6)
          {
            goto LABEL_23;
          }
        }

        else
        {
          v17 = PLBackendGetLog();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            v18 = [v9 kind];
            v19 = [v9 uuid];
            *buf = 67240450;
            v29 = v18;
            v30 = 2114;
            v31 = v19;
            _os_log_impl(&dword_19BF1F000, v17, OS_LOG_TYPE_ERROR, "Unexpected asset kind (%{public}d) for asset %{public}@", buf, 0x12u);
          }

          if (!v6)
          {
            goto LABEL_23;
          }
        }

LABEL_22:
        if (v5)
        {
          v26[0] = &unk_1F0FBD1C8;
          v26[1] = &unk_1F0FBD1E0;
          v27[0] = v6;
          v27[1] = v5;
          v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:v26 count:2];
          objc_autoreleasePoolPop(v10);
          goto LABEL_31;
        }

        goto LABEL_23;
      }

      if (v5)
      {
        goto LABEL_17;
      }

      if (v6)
      {
        v11 = v9;
        v12 = [v6 savedAssetType];
        v13 = [v11 savedAssetType];

        if (v12 != v13)
        {
          v5 = 0;
          goto LABEL_23;
        }
      }

      v5 = v9;
      if (v6)
      {
        goto LABEL_22;
      }

LABEL_23:
      objc_autoreleasePoolPop(v10);
      v8 = v8 + 1;
    }

    while (v4 != v8);
    v20 = [v3 countByEnumeratingWithState:&v22 objects:v32 count:16];
    v4 = v20;
  }

  while (v20);
LABEL_31:

  return v4;
}

@end