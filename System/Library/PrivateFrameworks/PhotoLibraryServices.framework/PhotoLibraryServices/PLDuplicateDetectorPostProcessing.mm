@interface PLDuplicateDetectorPostProcessing
+ (id)_postProcessSortOIDs:(id)a3 oidMetadataMap:(id)a4 sortKey:(id)a5 secondarySortKey:(id)a6;
+ (id)sharedLibraryLivePhotoPostProcessDuplicateSubGroupSplitDecisionBlockWithMetadataMap:(id)a3;
+ (id)sharedLibraryRawPlusJPEGPostProcessDuplicateSubGroupSplitDecisionBlockWithMetadataMap:(id)a3;
+ (void)postProcessDuplicateSubGroupWithResult:(id)a3 metadataMap:(id)a4 metadataKey:(id)a5 secondarySortKey:(id)a6 subGroupSplitDecisionBlock:(id)a7;
@end

@implementation PLDuplicateDetectorPostProcessing

+ (id)sharedLibraryRawPlusJPEGPostProcessDuplicateSubGroupSplitDecisionBlockWithMetadataMap:(id)a3
{
  v3 = a3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __123__PLDuplicateDetectorPostProcessing_sharedLibraryRawPlusJPEGPostProcessDuplicateSubGroupSplitDecisionBlockWithMetadataMap___block_invoke;
  aBlock[3] = &unk_1E756EB10;
  v9 = v3;
  v4 = v3;
  v5 = _Block_copy(aBlock);
  v6 = _Block_copy(v5);

  return v6;
}

uint64_t __123__PLDuplicateDetectorPostProcessing_sharedLibraryRawPlusJPEGPostProcessDuplicateSubGroupSplitDecisionBlockWithMetadataMap___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) objectForKeyedSubscript:v5];
  v8 = [v7 objectForKeyedSubscript:@"activeLibraryScopeParticipationState"];
  v9 = [v8 shortValue];

  v10 = [*(a1 + 32) objectForKeyedSubscript:v6];
  v11 = [v10 objectForKeyedSubscript:@"activeLibraryScopeParticipationState"];
  v12 = [v11 shortValue];

  if (v9 == 1 || v12 == 1)
  {
    v14 = [*(a1 + 32) objectForKeyedSubscript:v5];
    v15 = [v14 objectForKeyedSubscript:@"kind"];
    v16 = [v15 shortValue];

    v17 = [*(a1 + 32) objectForKeyedSubscript:v6];
    v18 = [v17 objectForKeyedSubscript:@"kind"];
    LOWORD(v15) = v16 | [v18 shortValue];

    v19 = v15 != 0;
    v20 = [*(a1 + 32) objectForKeyedSubscript:v5];
    v21 = [v20 objectForKeyedSubscript:@"rjPacked"];
    v22 = ([v21 unsignedIntValue] >> 1) & 3;

    v23 = [*(a1 + 32) objectForKeyedSubscript:v6];
    v24 = [v23 objectForKeyedSubscript:@"rjPacked"];
    v25 = [v24 unsignedIntValue];

    if (v22 - 1 >= 2)
    {
      if (v22)
      {
        v26 = 1;
      }

      else
      {
        v26 = ((v25 >> 1) & 3) - 3 < 0xFFFFFFFE;
      }
    }

    else
    {
      v26 = 0;
    }

    v28 = [*(a1 + 32) objectForKeyedSubscript:v5];
    v29 = [v28 objectForKeyedSubscript:@"additionalAttributes.originalStableHash"];

    v30 = [*(a1 + 32) objectForKeyedSubscript:v6];
    v31 = [v30 objectForKeyedSubscript:@"additionalAttributes.originalStableHash"];

    v32 = ([v29 isEqualToString:v31] & 1) != 0 || (v31 | v29) == 0;
    if (v19 || v26)
    {
      v27 = 0;
    }

    else
    {
      if (v9 != 1)
      {
        v32 = 1;
      }

      v27 = v12 != 1 || v32;
    }
  }

  else
  {
    v27 = 0;
  }

  return v27;
}

+ (id)sharedLibraryLivePhotoPostProcessDuplicateSubGroupSplitDecisionBlockWithMetadataMap:(id)a3
{
  v5 = a3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __121__PLDuplicateDetectorPostProcessing_sharedLibraryLivePhotoPostProcessDuplicateSubGroupSplitDecisionBlockWithMetadataMap___block_invoke;
  aBlock[3] = &unk_1E7565A58;
  v12 = a2;
  v13 = a1;
  v11 = v5;
  v6 = v5;
  v7 = _Block_copy(aBlock);
  v8 = _Block_copy(v7);

  return v8;
}

uint64_t __121__PLDuplicateDetectorPostProcessing_sharedLibraryLivePhotoPostProcessDuplicateSubGroupSplitDecisionBlockWithMetadataMap___block_invoke(uint64_t a1, void *a2, void *a3, void **a4)
{
  v7 = a2;
  v8 = a3;
  if (!a4)
  {
    v39 = [MEMORY[0x1E696AAA8] currentHandler];
    [v39 handleFailureInMethod:*(a1 + 40) object:*(a1 + 48) file:@"PLDuplicateDetectorPostProcessing.m" lineNumber:205 description:{@"Invalid parameter not satisfying: %@", @"context"}];
  }

  if (!*a4)
  {
    *a4 = objc_alloc_init(PLDuplicateDetectorLivePhotoContext);
    v9 = [*(a1 + 32) objectForKeyedSubscript:v8];
    v10 = [v9 objectForKeyedSubscript:@"kind"];
    v11 = [v10 shortValue];

    if (!v11)
    {
      v12 = [*(a1 + 32) objectForKeyedSubscript:v8];
      v13 = [v12 objectForKeyedSubscript:@"kindSubtype"];
      v14 = [v13 shortValue];

      v15 = [*(a1 + 32) objectForKeyedSubscript:v8];
      v16 = [v15 objectForKeyedSubscript:@"additionalAttributes.originalStableHash"];

      v17 = [*(a1 + 32) objectForKeyedSubscript:v8];
      v18 = [v17 objectForKeyedSubscript:@"activeLibraryScopeParticipationState"];
      v19 = [v18 shortValue] == 1;

      v20 = *a4;
      v21 = [PLDuplicateDetectorLivePhotoContextData dataWithSubtype:v14 isSharedLibrary:v19];
      [v20 addStableHash:v16 contextData:v21];
    }
  }

  v22 = [*(a1 + 32) objectForKeyedSubscript:v7];
  v23 = [v22 objectForKeyedSubscript:@"kindSubtype"];
  v24 = [v23 shortValue];

  v25 = [*(a1 + 32) objectForKeyedSubscript:v7];
  v26 = [v25 objectForKeyedSubscript:@"additionalAttributes.originalStableHash"];

  v27 = [*(a1 + 32) objectForKeyedSubscript:v7];
  v28 = [v27 objectForKeyedSubscript:@"activeLibraryScopeParticipationState"];
  v29 = [v28 shortValue];

  if (v24 == 2 && (v30 = *a4, +[PLDuplicateDetectorLivePhotoContextData dataWithSubtype:isSharedLibrary:](PLDuplicateDetectorLivePhotoContextData, "dataWithSubtype:isSharedLibrary:", 0, v29 != 1), v31 = objc_claimAutoreleasedReturnValue(), LOBYTE(v30) = [v30 hasStableHash:v26 contextData:v31], v31, (v30 & 1) != 0))
  {
    v32 = 1;
  }

  else
  {
    v33 = [*(a1 + 32) objectForKeyedSubscript:v7];
    v34 = [v33 objectForKeyedSubscript:@"kind"];
    v35 = [v34 shortValue];

    if (!v35)
    {
      v36 = *a4;
      v37 = [PLDuplicateDetectorLivePhotoContextData dataWithSubtype:v24 isSharedLibrary:v29 == 1];
      [v36 addStableHash:v26 contextData:v37];
    }

    v32 = 0;
  }

  return v32;
}

+ (id)_postProcessSortOIDs:(id)a3 oidMetadataMap:(id)a4 sortKey:(id)a5 secondarySortKey:(id)a6
{
  v35 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v9, "count")}];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v14 = v9;
  v15 = [v14 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v31;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v31 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v30 + 1) + 8 * i);
        v20 = [v10 objectForKeyedSubscript:v19];
        v21 = v20;
        if (v19)
        {
          v22 = v20 == 0;
        }

        else
        {
          v22 = 1;
        }

        if (!v22)
        {
          [v13 setObject:v20 forKey:v19];
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v16);
  }

  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __98__PLDuplicateDetectorPostProcessing__postProcessSortOIDs_oidMetadataMap_sortKey_secondarySortKey___block_invoke;
  v27[3] = &unk_1E7565A30;
  v28 = v11;
  v29 = v12;
  v23 = v12;
  v24 = v11;
  v25 = [v13 keysSortedByValueUsingComparator:v27];

  return v25;
}

uint64_t __98__PLDuplicateDetectorPostProcessing__postProcessSortOIDs_oidMetadataMap_sortKey_secondarySortKey___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([*(a1 + 32) reverse])
  {
    v7 = v6;
  }

  else
  {
    v7 = v5;
  }

  v8 = [*(a1 + 32) key];
  v9 = [v7 objectForKeyedSubscript:v8];

  if ([*(a1 + 32) reverse])
  {
    v10 = v5;
  }

  else
  {
    v10 = v6;
  }

  v11 = [*(a1 + 32) key];
  v12 = [v10 objectForKeyedSubscript:v11];

  v13 = v9;
  v14 = v12;
  v15 = v14;
  if (v13)
  {
    v16 = v14 == 0;
  }

  else
  {
    v16 = 1;
  }

  if (v16)
  {
    if (v13 | v14)
    {
      if (v13)
      {
        v17 = 1;
      }

      else
      {
        v17 = -1;
      }

LABEL_31:

      goto LABEL_32;
    }

LABEL_17:
    if ([*(a1 + 40) reverse])
    {
      v18 = v6;
    }

    else
    {
      v18 = v5;
    }

    v19 = [*(a1 + 40) key];
    v20 = [v18 objectForKeyedSubscript:v19];

    if ([*(a1 + 40) reverse])
    {
      v21 = v5;
    }

    else
    {
      v21 = v6;
    }

    v22 = [*(a1 + 40) key];
    v23 = [v21 objectForKeyedSubscript:v22];

    v13 = v20;
    v24 = v23;
    v15 = v24;
    if (v13 && v24)
    {
      v17 = [v13 compare:v24];
    }

    else
    {
      v25 = -1;
      if (v13)
      {
        v25 = 1;
      }

      if (v13 | v24)
      {
        v17 = v25;
      }

      else
      {
        v15 = 0;
        v13 = 0;
        v17 = 0;
      }
    }

    goto LABEL_31;
  }

  v17 = [v13 compare:v14];

  if (!v17)
  {
    goto LABEL_17;
  }

LABEL_32:

  return v17;
}

+ (void)postProcessDuplicateSubGroupWithResult:(id)a3 metadataMap:(id)a4 metadataKey:(id)a5 secondarySortKey:(id)a6 subGroupSplitDecisionBlock:(id)a7
{
  v74 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v50 = a6;
  v53 = a7;
  context = objc_autoreleasePoolPush();
  v14 = objc_alloc_init(PLDuplicateGroup);
  v46 = v11;
  if ([v11 hasSubGroups])
  {
    v15 = [v11 subGroups];
  }

  else
  {
    v16 = MEMORY[0x1E695DFD8];
    v17 = [v11 group];
    v15 = [v16 setWithObject:v17];
  }

  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  obj = v15;
  v18 = [obj countByEnumeratingWithState:&v61 objects:v73 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v62;
    v55 = v12;
    v57 = v14;
    v47 = *v62;
    do
    {
      v21 = 0;
      v48 = v19;
      do
      {
        if (*v62 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v22 = *(*(&v61 + 1) + 8 * v21);
        if ([v22 count] > 1)
        {
          v23 = [a1 _postProcessSortOIDs:v22 oidMetadataMap:v12 sortKey:v13 secondarySortKey:v50];
          v24 = [v23 count];
          if (v24)
          {
            v25 = v24;
            v52 = v21;
            v58 = 0;
            v26 = 0;
            v27 = 0;
            v56 = v24;
            v54 = v23;
            do
            {
              v28 = [v23 objectAtIndexedSubscript:v26];
              if (v26)
              {
                v29 = [v12 objectForKeyedSubscript:v28];
                v30 = [v13 key];
                v31 = [v29 objectForKeyedSubscript:v30];

                if (v31)
                {
                  v32 = [v23 objectAtIndexedSubscript:v26 - 1];
                  v33 = [v12 objectForKeyedSubscript:v32];
                  v34 = v13;
                  v35 = [v13 key];
                  v36 = [v33 objectForKeyedSubscript:v35];

                  if (v36)
                  {
                    v60 = v58;
                    v37 = v53[2](v53, v28, v32, &v60);
                    v38 = v60;

                    if (v37)
                    {

                      v39 = objc_alloc_init(MEMORY[0x1E695DFA8]);
                      [(PLDuplicateGroup *)v57 addSubGroup:v39];
                      v40 = PLDuplicateDetectionGetLog();
                      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
                      {
                        v59 = [v28 URIRepresentation];
                        v41 = [v59 relativePath];
                        v42 = [v34 key];
                        *buf = 138413058;
                        v66 = v41;
                        v67 = 2112;
                        v68 = v42;
                        v69 = 2112;
                        v70 = v31;
                        v71 = 2112;
                        v72 = v36;
                        _os_log_impl(&dword_19BF1F000, v40, OS_LOG_TYPE_DEBUG, "Duplicate Processing Detector: Split group [%@] on property: %@ [%@ vs %@]", buf, 0x2Au);
                      }

                      v58 = 0;
                      v27 = v39;
                    }

                    else
                    {
                      v58 = v38;
                    }

                    v13 = v34;
                    v23 = v54;
                  }

                  else
                  {
                    v13 = v34;
                  }

                  [v27 addObject:v28];

                  v12 = v55;
                  v25 = v56;
                }

                else
                {
                  [v27 addObject:v28];
                }
              }

              else
              {
                v43 = objc_alloc_init(MEMORY[0x1E695DFA8]);

                [(PLDuplicateGroup *)v57 addSubGroup:v43];
                [v43 addObject:v28];
                v27 = v43;
              }

              ++v26;
            }

            while (v25 != v26);

            v14 = v57;
            v20 = v47;
            v19 = v48;
            v21 = v52;
          }
        }

        else
        {
          [(PLDuplicateGroup *)v14 addSubGroup:v22];
        }

        ++v21;
      }

      while (v21 != v19);
      v19 = [obj countByEnumeratingWithState:&v61 objects:v73 count:16];
    }

    while (v19);
  }

  if ([(PLDuplicateGroup *)v14 hasSubGroups])
  {
    v44 = [(PLDuplicateGroup *)v14 subGroups];
    [v46 replaceSubGroups:v44];
  }

  objc_autoreleasePoolPop(context);
}

@end