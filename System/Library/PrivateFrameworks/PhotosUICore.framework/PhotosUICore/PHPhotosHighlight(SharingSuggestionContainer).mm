@interface PHPhotosHighlight(SharingSuggestionContainer)
- (__CFString)px_sl_title;
- (id)px_sl_containedSharingSuggestionObjectIDs;
- (id)px_sl_containedSharingSuggestions;
- (id)px_sl_fetchAssetCollections;
- (void)px_sl_getKeyAsset:()SharingSuggestionContainer suggestedDate:locations:;
@end

@implementation PHPhotosHighlight(SharingSuggestionContainer)

- (id)px_sl_containedSharingSuggestionObjectIDs
{
  v1 = MEMORY[0x1E695DFD8];
  v2 = [a1 objectID];
  v3 = [v1 setWithObject:v2];

  return v3;
}

- (id)px_sl_containedSharingSuggestions
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = a1;
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:1];

  return v1;
}

- (void)px_sl_getKeyAsset:()SharingSuggestionContainer suggestedDate:locations:
{
  v108[1] = *MEMORY[0x1E69E9840];
  v7 = [a1 photoLibrary];
  v8 = [v7 librarySpecificFetchOptions];

  [v8 setWantsIncrementalChangeDetails:0];
  v108[0] = *MEMORY[0x1E6978C20];
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v108 count:1];
  [v8 setFetchPropertySets:v9];

  v10 = [MEMORY[0x1E695DF70] array];
  v11 = MEMORY[0x1E696AE18];
  v12 = [a1 objectID];
  v13 = [v11 predicateWithFormat:@"highlightBeingAssets.parentPhotosHighlight == %@", v12];
  [v10 addObject:v13];

  v14 = PLManagedAssetPredicateToFetchAssetsSuggestedForSharing();
  [v10 addObject:v14];

  v15 = [MEMORY[0x1E696AB28] andPredicateWithSubpredicates:v10];
  [v8 setInternalPredicate:v15];

  v16 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"addedDate" ascending:0];
  v107 = v16;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v107 count:1];
  [v8 setInternalSortDescriptors:v17];

  [v8 setSharingFilter:0];
  [v8 setUseNoIndexOnSharingFilter:1];
  v18 = [MEMORY[0x1E6978630] fetchAssetsWithOptions:v8];
  v19 = [v18 firstObject];

  v73 = v19;
  v20 = [v19 curationProperties];
  *a4 = [v20 addedDate];

  v21 = MEMORY[0x1E69789F0];
  v106 = a1;
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v106 count:1];
  v23 = [v21 fetchHighlightsInSharedLibrarySharingSuggestions:v22];

  v78 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v79 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v24 = [a1 photoLibrary];
  v25 = [v24 librarySpecificFetchOptions];

  [v25 setWantsIncrementalChangeDetails:0];
  v77 = v25;
  v26 = [v25 copy];
  v27 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"curationScore" ascending:0];
  v105[0] = v27;
  v28 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"dateCreated" ascending:1];
  v105[1] = v28;
  v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:v105 count:2];
  v76 = v26;
  [v26 setInternalSortDescriptors:v29];

  v98 = 0u;
  v99 = 0u;
  v96 = 0u;
  v97 = 0u;
  obj = v23;
  v30 = [obj countByEnumeratingWithState:&v96 objects:v104 count:16];
  if (v30)
  {
    v31 = v30;
    v32 = *v97;
    do
    {
      for (i = 0; i != v31; ++i)
      {
        if (*v97 != v32)
        {
          objc_enumerationMutation(obj);
        }

        v34 = *(*(&v96 + 1) + 8 * i);
        v35 = objc_alloc_init(MEMORY[0x1E695DFA8]);
        v36 = [MEMORY[0x1E6978650] fetchMomentsInHighlight:v34 options:v77];
        v92 = 0u;
        v93 = 0u;
        v94 = 0u;
        v95 = 0u;
        v37 = [v36 countByEnumeratingWithState:&v92 objects:v103 count:16];
        if (v37)
        {
          v38 = v37;
          v39 = *v93;
          do
          {
            for (j = 0; j != v38; ++j)
            {
              if (*v93 != v39)
              {
                objc_enumerationMutation(v36);
              }

              v41 = [*(*(&v92 + 1) + 8 * j) localizedLocationNames];
              if ([v41 count])
              {
                [v35 addObjectsFromArray:v41];
              }
            }

            v38 = [v36 countByEnumeratingWithState:&v92 objects:v103 count:16];
          }

          while (v38);
        }

        v42 = [v35 copy];
        [v79 setObject:v42 forKeyedSubscript:v34];

        v43 = [MEMORY[0x1E6978630] fetchAssetsInAssetCollection:v34 options:v76];
        [v78 setObject:v43 forKeyedSubscript:v34];
      }

      v31 = [obj countByEnumeratingWithState:&v96 objects:v104 count:16];
    }

    while (v31);
  }

  v44 = [v78 keysSortedByValueUsingComparator:&__block_literal_global_514];
  v45 = [v44 mutableCopy];

  v90 = 0u;
  v91 = 0u;
  v88 = 0u;
  v89 = 0u;
  v46 = v45;
  v47 = [v46 countByEnumeratingWithState:&v88 objects:v102 count:16];
  if (v47)
  {
    v48 = v47;
    v49 = *v89;
    while (2)
    {
      for (k = 0; k != v48; ++k)
      {
        if (*v89 != v49)
        {
          objc_enumerationMutation(v46);
        }

        v51 = *(*(&v88 + 1) + 8 * k);
        v52 = [v78 objectForKeyedSubscript:v51];
        v53 = [v52 firstObject];

        if (v53)
        {
          v54 = v51;

          v55 = v53;
          *a3 = v53;
          v71 = v53;
          if (v54)
          {
            [v46 removeObject:v54];
            v70 = v54;
            [v46 insertObject:v54 atIndex:0];
          }

          else
          {
            v70 = 0;
          }

          goto LABEL_29;
        }
      }

      v48 = [v46 countByEnumeratingWithState:&v88 objects:v102 count:16];
      if (v48)
      {
        continue;
      }

      break;
    }
  }

  v70 = 0;
  v71 = 0;
  *a3 = 0;
LABEL_29:
  v56 = objc_alloc_init(MEMORY[0x1E695DFA0]);
  v84 = 0u;
  v85 = 0u;
  v86 = 0u;
  v87 = 0u;
  v57 = v46;
  v58 = [v57 countByEnumeratingWithState:&v84 objects:v101 count:16];
  if (v58)
  {
    v59 = v58;
    v60 = *v85;
    do
    {
      for (m = 0; m != v59; ++m)
      {
        if (*v85 != v60)
        {
          objc_enumerationMutation(v57);
        }

        v62 = *(*(&v84 + 1) + 8 * m);
        v80 = 0u;
        v81 = 0u;
        v82 = 0u;
        v83 = 0u;
        v63 = [v79 objectForKeyedSubscript:v62];
        v64 = [v63 countByEnumeratingWithState:&v80 objects:v100 count:16];
        if (v64)
        {
          v65 = v64;
          v66 = *v81;
LABEL_36:
          v67 = 0;
          while (1)
          {
            if (*v81 != v66)
            {
              objc_enumerationMutation(v63);
            }

            v68 = *(*(&v80 + 1) + 8 * v67);
            if (([v56 containsObject:v68] & 1) == 0)
            {
              [v56 addObject:v68];
              if ([v56 count] > 3)
              {
                break;
              }
            }

            if (v65 == ++v67)
            {
              v65 = [v63 countByEnumeratingWithState:&v80 objects:v100 count:16];
              if (v65)
              {
                goto LABEL_36;
              }

              break;
            }
          }
        }
      }

      v59 = [v57 countByEnumeratingWithState:&v84 objects:v101 count:16];
    }

    while (v59);
  }

  v69 = [v56 array];
  *a5 = [v69 copy];
}

- (id)px_sl_fetchAssetCollections
{
  v5[1] = *MEMORY[0x1E69E9840];
  v1 = MEMORY[0x1E69789F0];
  v5[0] = a1;
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];
  v3 = [v1 fetchHighlightsInSharedLibrarySharingSuggestions:v2];

  return v3;
}

- (__CFString)px_sl_title
{
  v2 = [a1 startDate];
  if (v2 && (v3 = v2, [a1 endDate], v4 = objc_claimAutoreleasedReturnValue(), v4, v3, v4))
  {
    v5 = [a1 startDate];
    v6 = [a1 endDate];
    v7 = [v5 earlierDate:v6];

    v8 = [a1 startDate];
    v9 = [a1 endDate];
    v10 = [v8 laterDate:v9];

    [v10 timeIntervalSinceDate:v7];
    v12 = [v7 dateByAddingTimeInterval:v11 * 0.5];
    v13 = [objc_alloc(MEMORY[0x1E696AB80]) initWithStartDate:v12 duration:0.0];
    v14 = _localizedSuggestionTitleForDateInterval(v13);
  }

  else
  {
    v14 = &stru_1F1741150;
  }

  return v14;
}

@end