@interface PLDuplicateMergeModelProperties
+ (id)_additionalAssetAttributesMergePropertyMap;
+ (id)_assetDescriptionMergePropertyMap;
+ (id)_assetMergePropertyMap;
+ (id)_mergePropertyMap;
+ (void)_addPropertyToActionMap:(id)a3 name:(id)a4 action:(int64_t)a5;
- (BOOL)_isValidForDateCreatedOverwriteWithSource:(id)a3;
- (BOOL)_isValidForOverwriteWithSourceProperty:(id)a3 targetProperty:(id)a4;
- (BOOL)_isValidForTimezoneOverwriteWithSource:(id)a3;
- (BOOL)_isValidForTitleOverwriteWithSource:(id)a3;
- (BOOL)_isValidManagedObject:(id)a3 forEntityName:(id)a4;
- (BOOL)isRecentlyModifiedSourceAsset:(id)a3;
- (BOOL)transferPropertiesFromSourceAsset:(id)a3 propertyMergeType:(int64_t)a4 error:(id *)a5;
- (PLDuplicateMergeModelProperties)initWithTargetAsset:(id)a3 photoLibrary:(id)a4;
- (id)_managedObjectFromDuplicateAsset:(id)a3 matchingEntityName:(id)a4;
- (void)_customActionProcessingWithSourceDuplicateAsset:(id)a3 entityName:(id)a4 propertyName:(id)a5 type:(int64_t)a6;
- (void)_mergeActionProcessingWithSourceDuplicateAsset:(id)a3 entityName:(id)a4 propertyName:(id)a5;
- (void)_mergeAlbumRelationshipsFromSource:(id)a3;
- (void)_mergeCaptionFromSource:(id)a3;
- (void)_mergeDateFromSource:(id)a3;
- (void)_mergeFavoriteFromSource:(id)a3;
- (void)_mergeKeywordsFromSource:(id)a3;
- (void)_mergeMemoriesBeingCustomUserAssetsFromSource:(id)a3;
- (void)_mergeMemoriesBeingKeyAssetFromSource:(id)a3;
- (void)_mergeMemoriesBeingMovieCuratedAssetsFromSource:(id)a3;
- (void)_mergeMemoriesBeingUserCuratedAssetsFromSource:(id)a3;
- (void)_mergeMemoryBeingCuratedAssetsFromSource:(id)a3;
- (void)_mergeMemoryBeingExtendedCuratedAssetsFromSource:(id)a3;
- (void)_mergeMemoryBeingRepresentativeAssetsFromSource:(id)a3;
- (void)_mergeTimezoneFromSource:(id)a3;
- (void)_mergeTitleFromSource:(id)a3;
- (void)_postProcessingWithSourceDuplicateAsset:(id)a3 type:(int64_t)a4;
- (void)_resourcePropertyCopyCurrentSleetCastFromSource:(id)a3;
- (void)_resourcePropertyCopyDateCreatedFromSource:(id)a3;
- (void)_resourcePropertyCopyExtendedAttributesFromSource:(id)a3;
- (void)_resourcePropertyCopyMediaMetadataFromSource:(id)a3;
- (void)dealloc;
@end

@implementation PLDuplicateMergeModelProperties

- (BOOL)_isValidForTitleOverwriteWithSource:(id)a3
{
  v4 = a3;
  v5 = [v4 asset];
  v6 = [v5 title];

  if (v6)
  {
    v7 = [(PLDuplicateAsset *)self->_targetAsset asset];
    v8 = [v7 title];

    if (!v8)
    {
      LOBYTE(v10) = 1;
      goto LABEL_11;
    }

    v9 = [v4 hasModifiedUserTitle];
    if (-[PLDuplicateAsset hasModifiedUserTitle](self->_targetAsset, "hasModifiedUserTitle") && [v4 hasModifiedUserTitle])
    {
      if (![(PLDuplicateMergeModelProperties *)self isRecentlyModifiedSourceAsset:v4])
      {
LABEL_6:
        LOBYTE(v10) = 0;
LABEL_11:

        goto LABEL_12;
      }
    }

    else if (!v9)
    {
      goto LABEL_6;
    }

    v10 = [v8 isEqualToString:v6] ^ 1;
    goto LABEL_11;
  }

  LOBYTE(v10) = 0;
LABEL_12:

  return v10;
}

- (BOOL)_isValidForDateCreatedOverwriteWithSource:(id)a3
{
  v4 = a3;
  v5 = [v4 asset];
  v6 = [v5 dateCreated];

  if (v6)
  {
    v7 = [(PLDuplicateAsset *)self->_targetAsset asset];
    v8 = [v7 dateCreated];

    if (!v8)
    {
      v10 = 1;
      goto LABEL_13;
    }

    v9 = [v4 hasModifiedUserDateCreated];
    if (-[PLDuplicateAsset hasModifiedUserDateCreated](self->_targetAsset, "hasModifiedUserDateCreated") && [v4 hasModifiedUserDateCreated])
    {
      if (![(PLDuplicateMergeModelProperties *)self isRecentlyModifiedSourceAsset:v4])
      {
        goto LABEL_10;
      }
    }

    else if (!v9)
    {
LABEL_10:
      v10 = 0;
LABEL_13:

      goto LABEL_14;
    }

    if (([v8 isEqualToDate:v6] & 1) == 0)
    {
      [v8 timeIntervalSinceDate:v6];
      v10 = fabs(v11) >= 1.0;
      goto LABEL_13;
    }

    goto LABEL_10;
  }

  v10 = 0;
LABEL_14:

  return v10;
}

- (BOOL)_isValidForTimezoneOverwriteWithSource:(id)a3
{
  v4 = a3;
  v5 = [v4 asset];
  v6 = [v5 additionalAttributes];
  v7 = [v6 timeZoneOffset];

  if (v7)
  {
    v8 = [(PLDuplicateAsset *)self->_targetAsset asset];
    v9 = [v8 additionalAttributes];
    v10 = [v9 timeZoneOffset];

    if (!v10)
    {
      LOBYTE(v12) = 1;
      goto LABEL_11;
    }

    v11 = [v4 hasModifiedUserTimezone];
    if (-[PLDuplicateAsset hasModifiedUserTimezone](self->_targetAsset, "hasModifiedUserTimezone") && [v4 hasModifiedUserTimezone])
    {
      if (![(PLDuplicateMergeModelProperties *)self isRecentlyModifiedSourceAsset:v4])
      {
LABEL_6:
        LOBYTE(v12) = 0;
LABEL_11:

        goto LABEL_12;
      }
    }

    else if (!v11)
    {
      goto LABEL_6;
    }

    v12 = [v10 isEqualToNumber:v7] ^ 1;
    goto LABEL_11;
  }

  LOBYTE(v12) = 0;
LABEL_12:

  return v12;
}

- (BOOL)_isValidForOverwriteWithSourceProperty:(id)a3 targetProperty:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (!v5)
  {
    goto LABEL_14;
  }

  if (v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 = [v5 isEqualToString:v7];
LABEL_13:
        v9 = v8 ^ 1;
        goto LABEL_15;
      }
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 = [v5 isEqualToDate:v7];
        goto LABEL_13;
      }
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 = [v5 isEqualToNumber:v7];
        goto LABEL_13;
      }
    }

LABEL_14:
    v9 = 0;
    goto LABEL_15;
  }

  v9 = 1;
LABEL_15:

  return v9;
}

- (BOOL)isRecentlyModifiedSourceAsset:(id)a3
{
  targetAsset = self->_targetAsset;
  v4 = a3;
  v5 = [(PLDuplicateAsset *)targetAsset asset];
  v6 = [v5 modificationDate];
  v7 = [v4 asset];

  v8 = [v7 modificationDate];
  v9 = [v6 compare:v8] == -1;

  return v9;
}

- (void)_mergeMemoriesBeingKeyAssetFromSource:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 asset];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = [v5 memoriesBeingKeyAsset];
  v7 = [v6 copy];

  v8 = [v7 countByEnumeratingWithState:&v17 objects:v27 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v18;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v17 + 1) + 8 * i);
        v14 = [v13 calculateKeyAsset];
        [v13 setKeyAsset:v14];
      }

      v10 += v9;
      v9 = [v7 countByEnumeratingWithState:&v17 objects:v27 count:16];
    }

    while (v9);

    v7 = PLDuplicateDetectionGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v15 = [v4 shortDescription];
      v16 = [(PLDuplicateAsset *)self->_targetAsset shortDescription];
      *buf = 134218498;
      v22 = v10;
      v23 = 2114;
      v24 = v15;
      v25 = 2114;
      v26 = v16;
      _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_INFO, "Duplicate Merge: updated %tu memoriesBeingKeyAsset: [%{public}@ -> %{public}@]", buf, 0x20u);
    }
  }
}

- (void)_mergeMemoriesBeingCustomUserAssetsFromSource:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 asset];
  v6 = [(PLDuplicateAsset *)self->_targetAsset asset];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v7 = [v5 memoriesBeingCustomUserAssets];
  v8 = [v7 copy];

  v9 = [v8 countByEnumeratingWithState:&v21 objects:v31 count:16];
  if (v9)
  {
    v10 = v9;
    v19 = self;
    v20 = v4;
    v11 = 0;
    v12 = *v22;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v22 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v21 + 1) + 8 * i);
        v15 = [v14 customUserAssets];
        v16 = [v15 indexOfObject:v5];

        [v14 replaceObjectInCustomUserAssetsAtIndex:v16 withObject:v6];
      }

      v11 += v10;
      v10 = [v8 countByEnumeratingWithState:&v21 objects:v31 count:16];
    }

    while (v10);

    v8 = PLDuplicateDetectionGetLog();
    v4 = v20;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v17 = [v20 shortDescription];
      v18 = [(PLDuplicateAsset *)v19->_targetAsset shortDescription];
      *buf = 134218498;
      v26 = v11;
      v27 = 2114;
      v28 = v17;
      v29 = 2114;
      v30 = v18;
      _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_INFO, "Duplicate Merge: updated %tu memoriesBeingCustomUserAssets: [%{public}@ -> %{public}@]", buf, 0x20u);
    }
  }
}

- (void)_mergeMemoriesBeingUserCuratedAssetsFromSource:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 asset];
  v6 = [(PLDuplicateAsset *)self->_targetAsset asset];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = [v5 memoriesBeingUserCuratedAssets];
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v25 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v16;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v15 + 1) + 8 * i) addUserCuratedAssetsObject:v6];
      }

      v10 += v9;
      v9 = [v7 countByEnumeratingWithState:&v15 objects:v25 count:16];
    }

    while (v9);

    v7 = PLDuplicateDetectionGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v13 = [v4 shortDescription];
      v14 = [(PLDuplicateAsset *)self->_targetAsset shortDescription];
      *buf = 134218498;
      v20 = v10;
      v21 = 2114;
      v22 = v13;
      v23 = 2114;
      v24 = v14;
      _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_INFO, "Duplicate Merge: updated %tu memoriesBeingUserCuratedAssets: [%{public}@ -> %{public}@]", buf, 0x20u);
    }
  }
}

- (void)_mergeMemoriesBeingMovieCuratedAssetsFromSource:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 asset];
  v6 = [(PLDuplicateAsset *)self->_targetAsset asset];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = [v5 memoriesBeingMovieCuratedAssets];
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v25 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v16;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v15 + 1) + 8 * i) addMovieCuratedAssetsObject:v6];
      }

      v10 += v9;
      v9 = [v7 countByEnumeratingWithState:&v15 objects:v25 count:16];
    }

    while (v9);

    v7 = PLDuplicateDetectionGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v13 = [v4 shortDescription];
      v14 = [(PLDuplicateAsset *)self->_targetAsset shortDescription];
      *buf = 134218498;
      v20 = v10;
      v21 = 2114;
      v22 = v13;
      v23 = 2114;
      v24 = v14;
      _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_INFO, "Duplicate Merge: updated %tu memoriesBeingMovieCuratedAssets: [%{public}@ -> %{public}@]", buf, 0x20u);
    }
  }
}

- (void)_mergeMemoryBeingExtendedCuratedAssetsFromSource:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 asset];
  v6 = [(PLDuplicateAsset *)self->_targetAsset asset];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v7 = [v5 memoriesBeingExtendedCuratedAssets];
  v8 = [v7 copy];

  v9 = [v8 countByEnumeratingWithState:&v21 objects:v31 count:16];
  if (v9)
  {
    v10 = v9;
    v19 = self;
    v20 = v4;
    v11 = 0;
    v12 = *v22;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v22 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v21 + 1) + 8 * i);
        v15 = [v14 extendedCuratedAssets];
        v16 = [v15 mutableCopy];

        [v16 removeObject:v5];
        [v16 addObject:v6];
        [v14 setExtendedCuratedAssets:v16];
      }

      v11 += v10;
      v10 = [v8 countByEnumeratingWithState:&v21 objects:v31 count:16];
    }

    while (v10);

    v8 = PLDuplicateDetectionGetLog();
    v4 = v20;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v17 = [v20 shortDescription];
      v18 = [(PLDuplicateAsset *)v19->_targetAsset shortDescription];
      *buf = 134218498;
      v26 = v11;
      v27 = 2114;
      v28 = v17;
      v29 = 2114;
      v30 = v18;
      _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_INFO, "Duplicate Merge: updated %tu memoriesBeingExtendedCuratedAssets: [%{public}@ -> %{public}@]", buf, 0x20u);
    }
  }
}

- (void)_mergeMemoryBeingCuratedAssetsFromSource:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 asset];
  v6 = [(PLDuplicateAsset *)self->_targetAsset asset];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = [v5 memoriesBeingCuratedAssets];
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v25 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v16;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v15 + 1) + 8 * i) addCuratedAssetsObject:v6];
      }

      v10 += v9;
      v9 = [v7 countByEnumeratingWithState:&v15 objects:v25 count:16];
    }

    while (v9);

    v7 = PLDuplicateDetectionGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v13 = [v4 shortDescription];
      v14 = [(PLDuplicateAsset *)self->_targetAsset shortDescription];
      *buf = 134218498;
      v20 = v10;
      v21 = 2114;
      v22 = v13;
      v23 = 2114;
      v24 = v14;
      _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_INFO, "Duplicate Merge: updated %tu memoriesBeingCuratedAssets: [%{public}@ -> %{public}@]", buf, 0x20u);
    }
  }
}

- (void)_mergeMemoryBeingRepresentativeAssetsFromSource:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 asset];
  v6 = [(PLDuplicateAsset *)self->_targetAsset asset];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = [v5 memoriesBeingRepresentativeAssets];
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v25 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v16;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v15 + 1) + 8 * i) addRepresentativeAssetsObject:v6];
      }

      v10 += v9;
      v9 = [v7 countByEnumeratingWithState:&v15 objects:v25 count:16];
    }

    while (v9);

    v7 = PLDuplicateDetectionGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v13 = [v4 shortDescription];
      v14 = [(PLDuplicateAsset *)self->_targetAsset shortDescription];
      *buf = 134218498;
      v20 = v10;
      v21 = 2114;
      v22 = v13;
      v23 = 2114;
      v24 = v14;
      _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_INFO, "Duplicate Merge: updated %tu memoriesBeingRepresentativeAssets: [%{public}@ -> %{public}@]", buf, 0x20u);
    }
  }
}

- (void)_mergeAlbumRelationshipsFromSource:(id)a3
{
  v4 = a3;
  v5 = [v4 asset];
  v6 = [(PLDuplicateAsset *)self->_targetAsset asset];
  v7 = [v5 albums];
  v8 = [v7 copy];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __70__PLDuplicateMergeModelProperties__mergeAlbumRelationshipsFromSource___block_invoke;
  v12[3] = &unk_1E7567680;
  v13 = v5;
  v14 = v6;
  v15 = v4;
  v16 = self;
  v9 = v4;
  v10 = v6;
  v11 = v5;
  [v8 enumerateObjectsUsingBlock:v12];
}

void __70__PLDuplicateMergeModelProperties__mergeAlbumRelationshipsFromSource___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 kind];
  v5 = [v4 intValue];

  v6 = [v3 mutableAssets];
  if ((v5 == 1508 || v5 == 2) && ([v3 isInTrash] & 1) == 0)
  {
    v7 = [v6 indexOfObject:*(a1 + 32)];
    if (([v6 containsObject:*(a1 + 40)] & 1) == 0)
    {
      [v6 insertObject:*(a1 + 40) atIndex:v7];
    }

    [v6 removeObject:*(a1 + 32)];
    v8 = PLDuplicateDetectionGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = [v3 title];
      v10 = [*(a1 + 48) shortDescription];
      v11 = [*(*(a1 + 56) + 16) shortDescription];
      v12 = 138412802;
      v13 = v9;
      v14 = 2114;
      v15 = v10;
      v16 = 2114;
      v17 = v11;
      _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_INFO, "Duplicate Merge: updated album: %@ [%{public}@ -> %{public}@]", &v12, 0x20u);
    }
  }
}

- (void)_mergeFavoriteFromSource:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 asset];
  v6 = [(PLDuplicateAsset *)self->_targetAsset asset];
  if (([v6 isFavorite] & 1) == 0 && objc_msgSend(v5, "isFavorite"))
  {
    [v6 setFavorite:1];
    v7 = PLDuplicateDetectionGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = [v4 shortDescription];
      v9 = [(PLDuplicateAsset *)self->_targetAsset shortDescription];
      v10 = 138543618;
      v11 = v8;
      v12 = 2114;
      v13 = v9;
      _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_INFO, "Duplicate Merge: favorite: YES [%{public}@ -> %{public}@]", &v10, 0x16u);
    }
  }
}

- (void)_mergeKeywordsFromSource:(id)a3
{
  v46 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 asset];
  v6 = [v5 additionalAttributes];
  v7 = [v6 keywords];

  if ([v7 count])
  {
    v8 = [(PLDuplicateAsset *)self->_targetAsset asset];
    v9 = [v8 additionalAttributes];
    v10 = [v9 keywords];
    v11 = [v10 valueForKey:@"title"];

    v12 = [v7 valueForKey:@"title"];
    v13 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    [v13 unionSet:v11];
    [v13 unionSet:v12];
    v14 = [(PLPhotoLibrary *)self->_library keywordManager];
    v15 = [(PLDuplicateAsset *)self->_targetAsset asset];
    [v14 setKeywords:v13 forAsset:v15];

    v16 = PLDuplicateDetectionGetLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      log = v16;
      v32 = v12;
      v33 = v11;
      v34 = v7;
      v35 = v4;
      v17 = [v13 allObjects];
      v18 = objc_alloc_init(MEMORY[0x1E696AD60]);
      v36 = 0u;
      v37 = 0u;
      v38 = 0u;
      v39 = 0u;
      v19 = v17;
      v20 = [v19 countByEnumeratingWithState:&v36 objects:buf count:16];
      if (v20)
      {
        v21 = v20;
        v22 = *v37;
        v23 = 1;
        do
        {
          v24 = 0;
          do
          {
            if (*v37 != v22)
            {
              objc_enumerationMutation(v19);
            }

            v25 = *(*(&v36 + 1) + 8 * v24);
            if ((v23 & 1) == 0)
            {
              [v18 appendString:{@", "}];
            }

            v26 = [v25 description];
            [v18 appendString:v26];

            v23 = 0;
            ++v24;
          }

          while (v21 != v24);
          v21 = [v19 countByEnumeratingWithState:&v36 objects:buf count:16];
          v23 = 0;
        }

        while (v21);
      }

      v27 = [v18 description];

      v28 = v27;
      v4 = v35;
      v29 = [v35 shortDescription];
      v30 = [(PLDuplicateAsset *)self->_targetAsset shortDescription];

      *buf = 138412802;
      v41 = v27;
      v42 = 2114;
      v43 = v29;
      v44 = 2114;
      v45 = v30;
      v16 = log;
      _os_log_impl(&dword_19BF1F000, log, OS_LOG_TYPE_INFO, "Duplicate Merge: update keywords: %@ [%{public}@ -> %{public}@]", buf, 0x20u);

      v11 = v33;
      v7 = v34;
      v12 = v32;
    }
  }
}

- (void)_mergeCaptionFromSource:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 asset];
  v6 = [(PLDuplicateAsset *)self->_targetAsset asset];
  v7 = [v5 longDescription];
  v8 = [v6 longDescription];
  v9 = [(PLDuplicateMergeModelProperties *)self _isValidForOverwriteWithSourceProperty:v7 targetProperty:v8];

  if (v9)
  {
    v10 = [v5 longDescription];
    v11 = [v6 longDescription];
    if ([v11 length])
    {
      v12 = [MEMORY[0x1E696AE18] predicateWithFormat:@"self contains[cd] %@", v10];
      if (([v12 evaluateWithObject:v11]& 1) != 0)
      {
LABEL_7:

        goto LABEL_8;
      }

      v13 = [MEMORY[0x1E696AD60] stringWithString:v11];
      [v13 appendFormat:@"\n%@", v10];
      v14 = [v13 copy];

      v10 = v14;
    }

    [v6 setLongDescription:v10];
    v12 = PLDuplicateDetectionGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v15 = [v5 longDescription];
      v16 = [v4 shortDescription];
      v17 = [(PLDuplicateAsset *)self->_targetAsset shortDescription];
      *buf = 138413058;
      v19 = v11;
      v20 = 2112;
      v21 = v15;
      v22 = 2114;
      v23 = v16;
      v24 = 2114;
      v25 = v17;
      _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_INFO, "Duplicate Merge: update caption: %@|%@ [%{public}@ -> %{public}@]", buf, 0x2Au);
    }

    goto LABEL_7;
  }

LABEL_8:
}

- (void)_mergeTimezoneFromSource:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (![(PLDuplicateAsset *)self->_targetAsset timezoneUpdated]&& [(PLDuplicateMergeModelProperties *)self _isValidForTimezoneOverwriteWithSource:v4])
  {
    v5 = [v4 asset];
    v6 = [v5 additionalAttributes];

    v7 = [(PLDuplicateAsset *)self->_targetAsset asset];
    v8 = [v7 additionalAttributes];

    v9 = [v6 timeZoneName];
    [v8 setTimeZoneName:v9];

    v10 = [v6 timeZoneOffset];
    [v8 setTimeZoneOffset:v10];

    [(PLDuplicateAsset *)self->_targetAsset setTimezoneUpdated:1];
    v11 = PLDuplicateDetectionGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = [v8 timeZoneName];
      v13 = [v8 timeZoneOffset];
      v14 = [v4 shortDescription];
      v15 = [(PLDuplicateAsset *)self->_targetAsset shortDescription];
      v16 = 138413058;
      v17 = v12;
      v18 = 2112;
      v19 = v13;
      v20 = 2114;
      v21 = v14;
      v22 = 2114;
      v23 = v15;
      _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_INFO, "Duplicate Merge: timezone: %@ | %@ [%{public}@ -> %{public}@]", &v16, 0x2Au);
    }
  }
}

- (void)_mergeDateFromSource:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (![(PLDuplicateAsset *)self->_targetAsset dateUpdated]&& [(PLDuplicateMergeModelProperties *)self _isValidForDateCreatedOverwriteWithSource:v4])
  {
    v5 = [v4 asset];
    v6 = [(PLDuplicateAsset *)self->_targetAsset asset];
    v7 = [v5 dateCreated];
    [v6 setDateCreated:v7];

    [(PLDuplicateAsset *)self->_targetAsset setDateUpdated:1];
    v8 = PLDuplicateDetectionGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = [v6 dateCreated];
      v10 = [v4 shortDescription];
      v11 = [(PLDuplicateAsset *)self->_targetAsset shortDescription];
      v12 = 138412802;
      v13 = v9;
      v14 = 2114;
      v15 = v10;
      v16 = 2114;
      v17 = v11;
      _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_INFO, "Duplicate Merge: date: %@ [%{public}@ -> %{public}@]", &v12, 0x20u);
    }
  }
}

- (void)_mergeTitleFromSource:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (![(PLDuplicateAsset *)self->_targetAsset titleUpdated]&& [(PLDuplicateMergeModelProperties *)self _isValidForTitleOverwriteWithSource:v4])
  {
    v5 = [v4 asset];
    v6 = [(PLDuplicateAsset *)self->_targetAsset asset];
    v7 = [v5 title];
    [v6 setTitle:v7];

    [(PLDuplicateAsset *)self->_targetAsset setTitleUpdated:1];
    v8 = PLDuplicateDetectionGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = [v6 title];
      v10 = [v4 shortDescription];
      v11 = [(PLDuplicateAsset *)self->_targetAsset shortDescription];
      v12 = 138412802;
      v13 = v9;
      v14 = 2114;
      v15 = v10;
      v16 = 2114;
      v17 = v11;
      _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_INFO, "Duplicate Merge: title: %@ [%{public}@ -> %{public}@]", &v12, 0x20u);
    }
  }
}

- (void)_resourcePropertyCopyCurrentSleetCastFromSource:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 asset];
  v6 = [(PLDuplicateAsset *)self->_targetAsset asset];
  [v6 setCurrentSleetCast:{objc_msgSend(v5, "currentSleetCast")}];
  v7 = PLDuplicateDetectionGetLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = [v4 shortDescription];
    v9 = [(PLDuplicateAsset *)self->_targetAsset shortDescription];
    v10 = 138543618;
    v11 = v8;
    v12 = 2114;
    v13 = v9;
    _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_INFO, "Duplicate Merge: currentSleetCast property merge completed [%{public}@ -> %{public}@", &v10, 0x16u);
  }
}

- (void)_resourcePropertyCopyMediaMetadataFromSource:(id)a3
{
  targetAsset = self->_targetAsset;
  v4 = a3;
  v5 = [(PLDuplicateAsset *)targetAsset asset];
  v10 = [v5 additionalAttributes];

  v6 = [v4 asset];

  v7 = [v6 additionalAttributes];

  v8 = [v7 mediaMetadataType];
  [v10 setMediaMetadataType:v8];

  v9 = [v7 mediaMetadataData];
  if (v9)
  {
    [v10 setMediaMetadataData:v9];
  }
}

- (void)_resourcePropertyCopyExtendedAttributesFromSource:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PLDuplicateAsset *)self->_targetAsset asset];
  v13 = 0;
  [v5 updateExtendedAttributesWithError:&v13];
  v6 = v13;
  if (v6)
  {
    v7 = PLDuplicateDetectionGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = [v4 shortDescription];
      v9 = [(PLDuplicateAsset *)self->_targetAsset shortDescription];
      *buf = 138412802;
      v15 = v8;
      v16 = 2112;
      v17 = v9;
      v18 = 2112;
      v19 = v6;
      _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_ERROR, "Duplicate Merge: update extended attributes failed: [%@ -> %@] Error: %@", buf, 0x20u);
    }
  }

  v10 = PLDuplicateDetectionGetLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = [v4 shortDescription];
    v12 = [(PLDuplicateAsset *)self->_targetAsset shortDescription];
    *buf = 138543618;
    v15 = v11;
    v16 = 2114;
    v17 = v12;
    _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_INFO, "Duplicate Merge: property merge completed [%{public}@ -> %{public}@]", buf, 0x16u);
  }
}

- (void)_resourcePropertyCopyDateCreatedFromSource:(id)a3
{
  targetAsset = self->_targetAsset;
  v5 = a3;
  v8 = [(PLDuplicateAsset *)targetAsset asset];
  v6 = [v5 asset];

  if (![(PLDuplicateAsset *)self->_targetAsset dateUpdated])
  {
    v7 = [v6 dateCreated];
    [v8 setDateCreated:v7];
  }
}

- (BOOL)_isValidManagedObject:(id)a3 forEntityName:(id)a4
{
  v5 = a4;
  v6 = +[PLAssetDescription entityName];
  v7 = [v5 isEqualToString:v6];

  if (a3)
  {
    return 1;
  }

  else
  {
    return v7;
  }
}

- (id)_managedObjectFromDuplicateAsset:(id)a3 matchingEntityName:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = +[PLManagedAsset entityName];
  v8 = [v6 isEqualToString:v7];

  if (v8)
  {
    v9 = [v5 asset];
    goto LABEL_9;
  }

  v10 = +[PLAdditionalAssetAttributes entityName];
  v11 = [v6 isEqualToString:v10];

  if (v11)
  {
    v12 = [v5 asset];
    v9 = [v12 additionalAttributes];
LABEL_7:

    goto LABEL_9;
  }

  v13 = +[PLAssetDescription entityName];
  v14 = [v6 isEqualToString:v13];

  if (v14)
  {
    v12 = [v5 asset];
    v15 = [v12 additionalAttributes];
    v9 = [v15 assetDescription];

    goto LABEL_7;
  }

  v9 = 0;
LABEL_9:

  return v9;
}

- (void)_customActionProcessingWithSourceDuplicateAsset:(id)a3 entityName:(id)a4 propertyName:(id)a5 type:(int64_t)a6
{
  v21 = a3;
  v10 = a4;
  v11 = a5;
  v12 = +[PLManagedAsset entityName];
  v13 = [v10 isEqualToString:v12];

  if (v13)
  {
    if ([v11 isEqualToString:@"dateCreated"])
    {
      if (a6)
      {
        if (a6 == 1)
        {
          [(PLDuplicateMergeModelProperties *)self _resourcePropertyCopyDateCreatedFromSource:v21];
          goto LABEL_6;
        }
      }

      else
      {
        [(PLDuplicateMergeModelProperties *)self _mergeDateFromSource:v21];
      }

      [v11 isEqualToString:@"extendedAttributes"];
      v16 = a6 == 1;
LABEL_16:
      v20 = [v11 isEqualToString:@"currentSleetCast"];
      if (v16 && v20)
      {
        [(PLDuplicateMergeModelProperties *)self _resourcePropertyCopyCurrentSleetCastFromSource:v21];
      }

      goto LABEL_19;
    }

LABEL_6:
    v14 = [v11 isEqualToString:@"extendedAttributes"];
    v15 = a6 == 1;
    v16 = a6 == 1;
    if (v15 && v14)
    {
      [(PLDuplicateMergeModelProperties *)self _resourcePropertyCopyExtendedAttributesFromSource:v21];
      v16 = 1;
    }

    goto LABEL_16;
  }

  v17 = +[PLAdditionalAssetAttributes entityName];
  v18 = [v10 isEqualToString:v17];

  if (v18)
  {
    v19 = [v11 isEqualToString:@"mediaMetadataType"];
    if (a6 == 1)
    {
      if (v19)
      {
        [(PLDuplicateMergeModelProperties *)self _resourcePropertyCopyMediaMetadataFromSource:v21];
      }
    }
  }

LABEL_19:
}

- (void)_mergeActionProcessingWithSourceDuplicateAsset:(id)a3 entityName:(id)a4 propertyName:(id)a5
{
  v16 = a3;
  v8 = a4;
  v9 = a5;
  v10 = +[PLManagedAsset entityName];
  v11 = [v8 isEqualToString:v10];

  if (v11)
  {
    if ([v9 isEqualToString:@"favorite"])
    {
      [(PLDuplicateMergeModelProperties *)self _mergeFavoriteFromSource:v16];
    }

    else if ([v9 isEqualToString:@"albums"])
    {
      [(PLDuplicateMergeModelProperties *)self _mergeAlbumRelationshipsFromSource:v16];
    }

    else if ([v9 isEqualToString:@"memoriesBeingRepresentativeAssets"])
    {
      [(PLDuplicateMergeModelProperties *)self _mergeMemoryBeingRepresentativeAssetsFromSource:v16];
    }

    else if ([v9 isEqualToString:@"memoriesBeingCuratedAssets"])
    {
      [(PLDuplicateMergeModelProperties *)self _mergeMemoryBeingCuratedAssetsFromSource:v16];
    }

    else if ([v9 isEqualToString:@"memoriesBeingExtendedCuratedAssets"])
    {
      [(PLDuplicateMergeModelProperties *)self _mergeMemoryBeingExtendedCuratedAssetsFromSource:v16];
    }

    else if ([v9 isEqualToString:@"memoriesBeingMovieCuratedAssets"])
    {
      [(PLDuplicateMergeModelProperties *)self _mergeMemoriesBeingMovieCuratedAssetsFromSource:v16];
    }

    else if ([v9 isEqualToString:@"memoriesBeingUserCuratedAssets"])
    {
      [(PLDuplicateMergeModelProperties *)self _mergeMemoriesBeingUserCuratedAssetsFromSource:v16];
    }

    else if ([v9 isEqualToString:@"memoriesBeingCustomUserAssets"])
    {
      [(PLDuplicateMergeModelProperties *)self _mergeMemoriesBeingCustomUserAssetsFromSource:v16];
    }

    else if ([v9 isEqualToString:@"memoriesBeingKeyAsset"])
    {
      [(PLDuplicateMergeModelProperties *)self _mergeMemoriesBeingKeyAssetFromSource:v16];
    }
  }

  else
  {
    v12 = +[PLAdditionalAssetAttributes entityName];
    v13 = [v8 isEqualToString:v12];

    if (v13)
    {
      if ([v9 isEqualToString:@"title"])
      {
        [(PLDuplicateMergeModelProperties *)self _mergeTitleFromSource:v16];
      }

      else if (([v9 isEqualToString:@"timeZoneName"] & 1) != 0 || objc_msgSend(v9, "isEqualToString:", @"timeZoneOffset"))
      {
        [(PLDuplicateMergeModelProperties *)self _mergeTimezoneFromSource:v16];
      }

      else if ([v9 isEqualToString:@"keywords"])
      {
        [(PLDuplicateMergeModelProperties *)self _mergeKeywordsFromSource:v16];
      }

      else
      {
        [v9 isEqualToString:@"editedIPTCAttributes"];
      }
    }

    else
    {
      v14 = +[PLAssetDescription entityName];
      v15 = [v8 isEqualToString:v14];

      if (v15 && [v9 isEqualToString:@"longDescription"])
      {
        [(PLDuplicateMergeModelProperties *)self _mergeCaptionFromSource:v16];
      }
    }
  }
}

- (void)_postProcessingWithSourceDuplicateAsset:(id)a3 type:(int64_t)a4
{
  if (!a4)
  {
    v6 = a3;
    v7 = +[PLManagedAsset entityName];
    [(PLDuplicateMergeModelProperties *)self _mergeActionProcessingWithSourceDuplicateAsset:v6 entityName:v7 propertyName:@"memoriesBeingKeyAsset"];
  }
}

- (BOOL)transferPropertiesFromSourceAsset:(id)a3 propertyMergeType:(int64_t)a4 error:(id *)a5
{
  v9 = a3;
  if (!v9)
  {
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"PLDuplicateMergeModelProperties.m" lineNumber:77 description:{@"Invalid parameter not satisfying: %@", @"sourceAsset"}];
  }

  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 1;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__14273;
  v27 = __Block_byref_object_dispose__14274;
  v28 = 0;
  v10 = [(PLDuplicateMergeModelProperties *)self mergePropertyMap];
  v11 = [v10 allKeys];

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __93__PLDuplicateMergeModelProperties_transferPropertiesFromSourceAsset_propertyMergeType_error___block_invoke;
  v18[3] = &unk_1E7567658;
  v18[4] = self;
  v12 = v9;
  v19 = v12;
  v20 = &v29;
  v21 = &v23;
  v22 = a4;
  [v11 enumerateObjectsUsingBlock:v18];
  v13 = *(v30 + 24);
  v14 = v24[5];
  if (a5 && (v13 & 1) == 0)
  {
    v14 = v14;
    *a5 = v14;
  }

  v15 = *(v30 + 24);
  _Block_object_dispose(&v23, 8);

  _Block_object_dispose(&v29, 8);
  return v15;
}

void __93__PLDuplicateMergeModelProperties_transferPropertiesFromSourceAsset_propertyMergeType_error___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v28[1] = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = [*(a1 + 32) mergePropertyMap];
  v8 = [v7 objectForKeyedSubscript:v6];

  v9 = [*(a1 + 32) _managedObjectFromDuplicateAsset:*(a1 + 40) matchingEntityName:v6];
  v10 = [*(a1 + 32) _managedObjectFromDuplicateAsset:*(*(a1 + 32) + 16) matchingEntityName:v6];
  if (![*(a1 + 32) _isValidManagedObject:v9 forEntityName:v6] || (objc_msgSend(*(a1 + 32), "_isValidManagedObject:forEntityName:", v10, v6) & 1) == 0)
  {
    *a4 = 1;
    *(*(*(a1 + 48) + 8) + 24) = 0;
    v11 = MEMORY[0x1E696ABC0];
    v12 = *MEMORY[0x1E69BFF48];
    v27 = *MEMORY[0x1E696A578];
    v28[0] = @"Unable to obtain managed object from entity name";
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:&v27 count:1];
    v14 = [v11 errorWithDomain:v12 code:49408 userInfo:v13];
    v15 = *(*(a1 + 56) + 8);
    v16 = *(v15 + 40);
    *(v15 + 40) = v14;
  }

  if (*(*(*(a1 + 48) + 8) + 24) == 1)
  {
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __93__PLDuplicateMergeModelProperties_transferPropertiesFromSourceAsset_propertyMergeType_error___block_invoke_2;
    v20[3] = &unk_1E7567630;
    v26 = *(a1 + 64);
    v21 = v9;
    v17 = v10;
    v18 = *(a1 + 32);
    v19 = *(a1 + 40);
    v22 = v17;
    v23 = v18;
    v24 = v19;
    v25 = v6;
    [v8 enumerateKeysAndObjectsUsingBlock:v20];
    [*(a1 + 32) _postProcessingWithSourceDuplicateAsset:*(a1 + 40) type:*(a1 + 64)];
  }
}

void __93__PLDuplicateMergeModelProperties_transferPropertiesFromSourceAsset_propertyMergeType_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = [a3 integerValue];
  if (v5 == 3)
  {
    [*(a1 + 48) _customActionProcessingWithSourceDuplicateAsset:*(a1 + 56) entityName:*(a1 + 64) propertyName:v7 type:*(a1 + 72)];
  }

  else if (v5 == 2)
  {
    if (!*(a1 + 72))
    {
      [*(a1 + 48) _mergeActionProcessingWithSourceDuplicateAsset:*(a1 + 56) entityName:*(a1 + 64) propertyName:v7];
    }
  }

  else if (v5 == 1 && *(a1 + 72) == 1)
  {
    v6 = [*(a1 + 32) valueForKey:v7];
    [*(a1 + 40) setValue:v6 forKey:v7];
  }
}

- (void)dealloc
{
  [(PLLazyObject *)self->_lazyMergePropertyMap invalidate];
  v3.receiver = self;
  v3.super_class = PLDuplicateMergeModelProperties;
  [(PLDuplicateMergeModelProperties *)&v3 dealloc];
}

- (PLDuplicateMergeModelProperties)initWithTargetAsset:(id)a3 photoLibrary:(id)a4
{
  v7 = a3;
  v8 = a4;
  v18.receiver = self;
  v18.super_class = PLDuplicateMergeModelProperties;
  v9 = [(PLDuplicateMergeModelProperties *)&v18 init];
  if (v9)
  {
    v10 = objc_initWeak(&location, v9);

    v11 = objc_alloc(MEMORY[0x1E69BF270]);
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __68__PLDuplicateMergeModelProperties_initWithTargetAsset_photoLibrary___block_invoke;
    v15[3] = &unk_1E7576828;
    objc_copyWeak(&v16, &location);
    v12 = [v11 initWithBlock:v15];
    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
    lazyMergePropertyMap = v9->_lazyMergePropertyMap;
    v9->_lazyMergePropertyMap = v12;

    objc_storeStrong(&v9->_targetAsset, a3);
    objc_storeStrong(&v9->_library, a4);
  }

  return v9;
}

id __68__PLDuplicateMergeModelProperties_initWithTargetAsset_photoLibrary___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = +[PLDuplicateMergeModelProperties _mergePropertyMap];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

+ (void)_addPropertyToActionMap:(id)a3 name:(id)a4 action:(int64_t)a5
{
  v16 = a3;
  v9 = a4;
  if (!v9)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:a1 file:@"PLDuplicateMergeModelProperties.m" lineNumber:927 description:{@"Invalid parameter not satisfying: %@", @"name"}];
  }

  v10 = v16;
  if (!v16)
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:a1 file:@"PLDuplicateMergeModelProperties.m" lineNumber:928 description:{@"Invalid parameter not satisfying: %@", @"map"}];

    v10 = 0;
  }

  v11 = [v10 objectForKeyedSubscript:v9];

  if (v11)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"Attempt to add merge property %@ multiple times", v9];
    v15 = [MEMORY[0x1E695DF30] exceptionWithName:@"DuplicateMergePropertyValidation" reason:objc_claimAutoreleasedReturnValue() userInfo:0];
    objc_exception_throw(v15);
  }

  v12 = [MEMORY[0x1E696AD98] numberWithInteger:a5];
  [v16 setObject:v12 forKeyedSubscript:v9];
}

+ (id)_assetDescriptionMergePropertyMap
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [a1 _addPropertyToActionMap:v3 name:@"longDescription" action:2];
  [a1 _addPropertyToActionMap:v3 name:@"assetAttributes" action:0];

  return v3;
}

+ (id)_additionalAssetAttributesMergePropertyMap
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [a1 _addPropertyToActionMap:v3 name:@"accessibilityDescription" action:1];
  [a1 _addPropertyToActionMap:v3 name:@"adjustedStableHash" action:1];
  [a1 _addPropertyToActionMap:v3 name:@"alternateImportImageDate" action:1];
  [a1 _addPropertyToActionMap:v3 name:@"editorBundleID" action:1];
  [a1 _addPropertyToActionMap:v3 name:@"embeddedThumbnailHeight" action:1];
  [a1 _addPropertyToActionMap:v3 name:@"embeddedThumbnailLength" action:1];
  [a1 _addPropertyToActionMap:v3 name:@"embeddedThumbnailOffset" action:1];
  [a1 _addPropertyToActionMap:v3 name:@"embeddedThumbnailWidth" action:1];
  [a1 _addPropertyToActionMap:v3 name:@"originalStableHash" action:1];
  [a1 _addPropertyToActionMap:v3 name:@"originalFilesize" action:1];
  [a1 _addPropertyToActionMap:v3 name:@"originalHash" action:1];
  [a1 _addPropertyToActionMap:v3 name:@"originalHeight" action:1];
  [a1 _addPropertyToActionMap:v3 name:@"originalOrientation" action:1];
  [a1 _addPropertyToActionMap:v3 name:@"originalResourceChoice" action:1];
  [a1 _addPropertyToActionMap:v3 name:@"originalWidth" action:1];
  [a1 _addPropertyToActionMap:v3 name:@"originatingAssetIdentifier" action:1];
  [a1 _addPropertyToActionMap:v3 name:@"spatialOverCaptureGroupIdentifier" action:1];
  [a1 _addPropertyToActionMap:v3 name:@"videoCpDisplayTimescale" action:1];
  [a1 _addPropertyToActionMap:v3 name:@"videoCpDisplayValue" action:1];
  [a1 _addPropertyToActionMap:v3 name:@"videoCpDurationTimescale" action:1];
  [a1 _addPropertyToActionMap:v3 name:@"viewPresentation" action:1];
  [a1 _addPropertyToActionMap:v3 name:@"sleetIsReversible" action:1];
  [a1 _addPropertyToActionMap:v3 name:@"title" action:2];
  [a1 _addPropertyToActionMap:v3 name:@"timeZoneName" action:2];
  [a1 _addPropertyToActionMap:v3 name:@"timeZoneOffset" action:2];
  [a1 _addPropertyToActionMap:v3 name:@"keywords" action:2];
  [a1 _addPropertyToActionMap:v3 name:@"editedIPTCAttributes" action:2];
  [a1 _addPropertyToActionMap:v3 name:@"mediaMetadataType" action:3];
  [a1 _addPropertyToActionMap:v3 name:@"allowedForAnalysis" action:0];
  [a1 _addPropertyToActionMap:v3 name:@"cameraCaptureDevice" action:0];
  [a1 _addPropertyToActionMap:v3 name:@"cloudAvalanchePickType" action:0];
  [a1 _addPropertyToActionMap:v3 name:@"cloudKindSubtype" action:0];
  [a1 _addPropertyToActionMap:v3 name:@"cloudRecoveryState" action:0];
  [a1 _addPropertyToActionMap:v3 name:@"cloudStateRecoveryAttemptsCount" action:0];
  [a1 _addPropertyToActionMap:v3 name:@"dateCreatedSource" action:0];
  [a1 _addPropertyToActionMap:v3 name:@"deferredPhotoIdentifier" action:0];
  [a1 _addPropertyToActionMap:v3 name:@"deferredProcessingCandidateOptions" action:0];
  [a1 _addPropertyToActionMap:v3 name:@"destinationAssetCopyState" action:0];
  [a1 _addPropertyToActionMap:v3 name:@"distanceIdentity" action:0];
  [a1 _addPropertyToActionMap:v3 name:@"duplicateDetectorPerceptualProcessingState" action:0];
  [a1 _addPropertyToActionMap:v3 name:@"exifTimestampString" action:0];
  [a1 _addPropertyToActionMap:v3 name:@"faceAnalysisVersion" action:0];
  [a1 _addPropertyToActionMap:v3 name:@"faceRegions" action:0];
  [a1 _addPropertyToActionMap:v3 name:@"gpsHorizontalAccuracy" action:0];
  [a1 _addPropertyToActionMap:v3 name:@"hasPeopleSceneMidOrGreaterConfidence" action:0];
  [a1 _addPropertyToActionMap:v3 name:@"importedBy" action:0];
  [a1 _addPropertyToActionMap:v3 name:@"importedByBundleIdentifier" action:0];
  [a1 _addPropertyToActionMap:v3 name:@"importedByDisplayName" action:0];
  [a1 _addPropertyToActionMap:v3 name:@"importSessionID" action:0];
  [a1 _addPropertyToActionMap:v3 name:@"inferredTimeZoneOffset" action:0];
  [a1 _addPropertyToActionMap:v3 name:@"lastUploadAttemptDate" action:0];
  [a1 _addPropertyToActionMap:v3 name:@"lastViewedDate" action:0];
  [a1 _addPropertyToActionMap:v3 name:@"libraryScopeAssetContributorsToUpdate" action:0];
  [a1 _addPropertyToActionMap:v3 name:@"locationHash" action:0];
  [a1 _addPropertyToActionMap:v3 name:@"mediaMetadata" action:0];
  [a1 _addPropertyToActionMap:v3 name:@"montage" action:0];
  [a1 _addPropertyToActionMap:v3 name:@"objectSaliencyRectsData" action:0];
  [a1 _addPropertyToActionMap:v3 name:@"originalAssetsUUID" action:0];
  [a1 _addPropertyToActionMap:v3 name:@"originalFilename" action:0];
  [a1 _addPropertyToActionMap:v3 name:@"pendingPlayCount" action:0];
  [a1 _addPropertyToActionMap:v3 name:@"pendingShareCount" action:0];
  [a1 _addPropertyToActionMap:v3 name:@"pendingViewCount" action:0];
  [a1 _addPropertyToActionMap:v3 name:@"photoStreamTagId" action:0];
  [a1 _addPropertyToActionMap:v3 name:@"placeAnnotationData" action:0];
  [a1 _addPropertyToActionMap:v3 name:@"playCount" action:0];
  [a1 _addPropertyToActionMap:v3 name:@"ptpTrashedState" action:0];
  [a1 _addPropertyToActionMap:v3 name:@"publicGlobalUUID" action:0];
  [a1 _addPropertyToActionMap:v3 name:@"reverseLocationData" action:0];
  [a1 _addPropertyToActionMap:v3 name:@"reverseLocationDataIsValid" action:0];
  [a1 _addPropertyToActionMap:v3 name:@"sceneAnalysisIsFromPreview" action:0];
  [a1 _addPropertyToActionMap:v3 name:@"sceneAnalysisTimestamp" action:0];
  [a1 _addPropertyToActionMap:v3 name:@"sceneAnalysisVersion" action:0];
  [a1 _addPropertyToActionMap:v3 name:@"shareCount" action:0];
  [a1 _addPropertyToActionMap:v3 name:@"shareOriginator" action:0];
  [a1 _addPropertyToActionMap:v3 name:@"shareType" action:0];
  [a1 _addPropertyToActionMap:v3 name:@"shiftedLocationData" action:0];
  [a1 _addPropertyToActionMap:v3 name:@"shiftedLocationIsValid" action:0];
  [a1 _addPropertyToActionMap:v3 name:@"sourceAssetForDuplicationIdentifier" action:0];
  [a1 _addPropertyToActionMap:v3 name:@"sourceAssetForDuplicationScopeIdentifier" action:0];
  [a1 _addPropertyToActionMap:v3 name:@"syndicationHistory" action:0];
  [a1 _addPropertyToActionMap:v3 name:@"syndicationIdentifier" action:0];
  [a1 _addPropertyToActionMap:v3 name:@"uploadAttempts" action:0];
  [a1 _addPropertyToActionMap:v3 name:@"variationSuggestionStates" action:0];
  [a1 _addPropertyToActionMap:v3 name:@"viewCount" action:0];
  [a1 _addPropertyToActionMap:v3 name:@"cloudViewPresentation" action:0];
  [a1 _addPropertyToActionMap:v3 name:@"asset" action:0];
  [a1 _addPropertyToActionMap:v3 name:@"assetDescription" action:0];
  [a1 _addPropertyToActionMap:v3 name:@"personReferences" action:0];
  [a1 _addPropertyToActionMap:v3 name:@"sceneClassifications" action:0];
  [a1 _addPropertyToActionMap:v3 name:@"sceneprint" action:0];
  [a1 _addPropertyToActionMap:v3 name:@"temporalSceneClassifications" action:0];
  [a1 _addPropertyToActionMap:v3 name:@"unmanagedAdjustment" action:0];

  return v3;
}

+ (id)_assetMergePropertyMap
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [a1 _addPropertyToActionMap:v3 name:@"depthType" action:1];
  [a1 _addPropertyToActionMap:v3 name:@"hdrGain" action:1];
  [a1 _addPropertyToActionMap:v3 name:@"hdrType" action:1];
  [a1 _addPropertyToActionMap:v3 name:@"height" action:1];
  [a1 _addPropertyToActionMap:v3 name:@"imageRequestHints" action:1];
  [a1 _addPropertyToActionMap:v3 name:@"kind" action:1];
  [a1 _addPropertyToActionMap:v3 name:@"kindSubtype" action:1];
  [a1 _addPropertyToActionMap:v3 name:@"mediaGroupUUID" action:1];
  [a1 _addPropertyToActionMap:v3 name:@"orientation" action:1];
  [a1 _addPropertyToActionMap:v3 name:@"overallAestheticScore" action:1];
  [a1 _addPropertyToActionMap:v3 name:@"packedAcceptableCropRect" action:1];
  [a1 _addPropertyToActionMap:v3 name:@"packedBadgeAttributes" action:1];
  [a1 _addPropertyToActionMap:v3 name:@"packedPreferredCropRect" action:1];
  [a1 _addPropertyToActionMap:v3 name:@"playbackStyle" action:1];
  [a1 _addPropertyToActionMap:v3 name:@"playbackVariation" action:1];
  [a1 _addPropertyToActionMap:v3 name:@"RAWBadgeAttribute" action:1];
  [a1 _addPropertyToActionMap:v3 name:@"savedAssetType" action:1];
  [a1 _addPropertyToActionMap:v3 name:@"uniformTypeIdentifier" action:1];
  [a1 _addPropertyToActionMap:v3 name:@"videoCpDurationValue" action:1];
  [a1 _addPropertyToActionMap:v3 name:@"videoCpVisibilityState" action:1];
  [a1 _addPropertyToActionMap:v3 name:@"videoDeferredProcessingNeeded" action:1];
  [a1 _addPropertyToActionMap:v3 name:@"videoKeyFrameTimeScale" action:1];
  [a1 _addPropertyToActionMap:v3 name:@"videoKeyFrameValue" action:1];
  [a1 _addPropertyToActionMap:v3 name:@"visibilityState" action:1];
  [a1 _addPropertyToActionMap:v3 name:@"width" action:1];
  [a1 _addPropertyToActionMap:v3 name:@"stickerConfidenceScore" action:1];
  [a1 _addPropertyToActionMap:v3 name:@"albums" action:2];
  [a1 _addPropertyToActionMap:v3 name:@"favorite" action:2];
  [a1 _addPropertyToActionMap:v3 name:@"memoriesBeingCuratedAssets" action:2];
  [a1 _addPropertyToActionMap:v3 name:@"memoriesBeingCustomUserAssets" action:2];
  [a1 _addPropertyToActionMap:v3 name:@"memoriesBeingExtendedCuratedAssets" action:2];
  [a1 _addPropertyToActionMap:v3 name:@"memoriesBeingMovieCuratedAssets" action:2];
  [a1 _addPropertyToActionMap:v3 name:@"memoriesBeingRepresentativeAssets" action:2];
  [a1 _addPropertyToActionMap:v3 name:@"memoriesBeingUserCuratedAssets" action:2];
  [a1 _addPropertyToActionMap:v3 name:@"memoriesBeingKeyAsset" action:0];
  [a1 _addPropertyToActionMap:v3 name:@"memoriesBeingUserRemovedAssets" action:0];
  [a1 _addPropertyToActionMap:v3 name:@"dateCreated" action:3];
  [a1 _addPropertyToActionMap:v3 name:@"extendedAttributes" action:3];
  [a1 _addPropertyToActionMap:v3 name:@"currentSleetCast" action:3];
  [a1 _addPropertyToActionMap:v3 name:@"activeLibraryScopeParticipationState" action:0];
  [a1 _addPropertyToActionMap:v3 name:@"addedDate" action:0];
  [a1 _addPropertyToActionMap:v3 name:@"adjustmentTimestamp" action:0];
  [a1 _addPropertyToActionMap:v3 name:@"adjustmentsState" action:0];
  [a1 _addPropertyToActionMap:v3 name:@"albumAssociativity" action:0];
  [a1 _addPropertyToActionMap:v3 name:@"analysisStateModificationDate" action:0];
  [a1 _addPropertyToActionMap:v3 name:@"avalanchePickType" action:0];
  [a1 _addPropertyToActionMap:v3 name:@"avalancheKind" action:0];
  [a1 _addPropertyToActionMap:v3 name:@"avalancheUUID" action:0];
  [a1 _addPropertyToActionMap:v3 name:@"boundedByRect" action:0];
  [a1 _addPropertyToActionMap:v3 name:@"bundleScope" action:0];
  [a1 _addPropertyToActionMap:v3 name:@"cameraProcessingAdjustmentState" action:0];
  [a1 _addPropertyToActionMap:v3 name:@"cloudAssetGUID" action:0];
  [a1 _addPropertyToActionMap:v3 name:@"cloudBatchID" action:0];
  [a1 _addPropertyToActionMap:v3 name:@"cloudBatchPublishDate" action:0];
  [a1 _addPropertyToActionMap:v3 name:@"cloudCollectionGUID" action:0];
  [a1 _addPropertyToActionMap:v3 name:@"cloudDeleteState" action:0];
  [a1 _addPropertyToActionMap:v3 name:@"cloudDownloadRequests" action:0];
  [a1 _addPropertyToActionMap:v3 name:@"cloudHasCommentsByMe" action:0];
  [a1 _addPropertyToActionMap:v3 name:@"cloudHasCommentsConversation" action:0];
  [a1 _addPropertyToActionMap:v3 name:@"cloudHasUnseenComments" action:0];
  [a1 _addPropertyToActionMap:v3 name:@"cloudIsDeletable" action:0];
  [a1 _addPropertyToActionMap:v3 name:@"cloudIsMyAsset" action:0];
  [a1 _addPropertyToActionMap:v3 name:@"cloudLastViewedCommentDate" action:0];
  [a1 _addPropertyToActionMap:v3 name:@"cloudLocalState" action:0];
  [a1 _addPropertyToActionMap:v3 name:@"cloudOwnerHashedPersonID" action:0];
  [a1 _addPropertyToActionMap:v3 name:@"cloudServerPublishDate" action:0];
  [a1 _addPropertyToActionMap:v3 name:@"complete" action:0];
  [a1 _addPropertyToActionMap:v3 name:@"curationScore" action:0];
  [a1 _addPropertyToActionMap:v3 name:@"deferredProcessingNeeded" action:0];
  [a1 _addPropertyToActionMap:v3 name:@"deleteReason" action:0];
  [a1 _addPropertyToActionMap:v3 name:@"derivedCameraCaptureDevice" action:0];
  [a1 _addPropertyToActionMap:v3 name:@"directory" action:0];
  [a1 _addPropertyToActionMap:v3 name:@"duplicateAssetVisibilityState" action:0];
  [a1 _addPropertyToActionMap:v3 name:@"duration" action:0];
  [a1 _addPropertyToActionMap:v3 name:@"faceAdjustmentVersion" action:0];
  [a1 _addPropertyToActionMap:v3 name:@"faceAreaPoints" action:0];
  [a1 _addPropertyToActionMap:v3 name:@"filename" action:0];
  [a1 _addPropertyToActionMap:v3 name:@"hidden" action:0];
  [a1 _addPropertyToActionMap:v3 name:@"highFrameRateState" action:0];
  [a1 _addPropertyToActionMap:v3 name:@"highlightVisibilityScore" action:0];
  [a1 _addPropertyToActionMap:v3 name:@"iconicScore" action:0];
  [a1 _addPropertyToActionMap:v3 name:@"isMagicCarpet" action:0];
  [a1 _addPropertyToActionMap:v3 name:@"lastSharedDate" action:0];
  [a1 _addPropertyToActionMap:v3 name:@"latitude" action:0];
  [a1 _addPropertyToActionMap:v3 name:@"libraryScopeShareState" action:0];
  [a1 _addPropertyToActionMap:v3 name:@"locationData" action:0];
  [a1 _addPropertyToActionMap:v3 name:@"longitude" action:0];
  [a1 _addPropertyToActionMap:v3 name:@"modificationDate" action:0];
  [a1 _addPropertyToActionMap:v3 name:@"spatialType" action:0];
  [a1 _addPropertyToActionMap:v3 name:@"originalColorSpace" action:0];
  [a1 _addPropertyToActionMap:v3 name:@"promotionScore" action:0];
  [a1 _addPropertyToActionMap:v3 name:@"searchIndexRebuildState" action:0];
  [a1 _addPropertyToActionMap:v3 name:@"sortToken" action:0];
  [a1 _addPropertyToActionMap:v3 name:@"syndicationState" action:0];
  [a1 _addPropertyToActionMap:v3 name:@"thumbnailIndex" action:0];
  [a1 _addPropertyToActionMap:v3 name:@"trashedDate" action:0];
  [a1 _addPropertyToActionMap:v3 name:@"trashedReason" action:0];
  [a1 _addPropertyToActionMap:v3 name:@"trashedState" action:0];
  [a1 _addPropertyToActionMap:v3 name:@"uuid" action:0];
  [a1 _addPropertyToActionMap:v3 name:@"isDetectedScreenshot" action:0];
  [a1 _addPropertyToActionMap:v3 name:@"captureSessionIdentifier" action:0];
  [a1 _addPropertyToActionMap:v3 name:@"isRecentlySaved" action:0];
  [a1 _addPropertyToActionMap:v3 name:@"proxyState" action:0];
  [a1 _addPropertyToActionMap:v3 name:@"generativeMemoryCreationEligibilityState" action:0];
  [a1 _addPropertyToActionMap:v3 name:@"compactSCSensitivityAnalysis" action:0];
  [a1 _addPropertyToActionMap:v3 name:@"additionalAttributes" action:0];
  [a1 _addPropertyToActionMap:v3 name:@"albumsBeingCustomKeyAsset" action:0];
  [a1 _addPropertyToActionMap:v3 name:@"albumsBeingKeyAssets" action:0];
  [a1 _addPropertyToActionMap:v3 name:@"analysisStates" action:0];
  [a1 _addPropertyToActionMap:v3 name:@"cloudComments" action:0];
  [a1 _addPropertyToActionMap:v3 name:@"cloudFeedAssetsEntry" action:0];
  [a1 _addPropertyToActionMap:v3 name:@"computedAttributes" action:0];
  [a1 _addPropertyToActionMap:v3 name:@"conversation" action:0];
  [a1 _addPropertyToActionMap:v3 name:@"dayGroupHighlightBeingAssets" action:0];
  [a1 _addPropertyToActionMap:v3 name:@"dayGroupHighlightBeingExtendedAssets" action:0];
  [a1 _addPropertyToActionMap:v3 name:@"dayGroupHighlightBeingKeyAssetPrivate" action:0];
  [a1 _addPropertyToActionMap:v3 name:@"dayGroupHighlightBeingKeyAssetShared" action:0];
  [a1 _addPropertyToActionMap:v3 name:@"dayGroupHighlightBeingSummaryAssets" action:0];
  [a1 _addPropertyToActionMap:v3 name:@"detectedFaces" action:0];
  [a1 _addPropertyToActionMap:v3 name:@"detectedTorsos" action:0];
  [a1 _addPropertyToActionMap:v3 name:@"duplicateMetadataMatchingAlbum" action:0];
  [a1 _addPropertyToActionMap:v3 name:@"duplicatePerceptualMatchingAlbum" action:0];
  [a1 _addPropertyToActionMap:v3 name:@"faceCrops" action:0];
  [a1 _addPropertyToActionMap:v3 name:@"highlightBeingAssets" action:0];
  [a1 _addPropertyToActionMap:v3 name:@"highlightBeingExtendedAssets" action:0];
  [a1 _addPropertyToActionMap:v3 name:@"dayHighlightBeingCollageAssetsPrivate" action:0];
  [a1 _addPropertyToActionMap:v3 name:@"dayHighlightBeingCollageAssetsShared" action:0];
  [a1 _addPropertyToActionMap:v3 name:@"dayHighlightBeingCollageAssetsMixed" action:0];
  [a1 _addPropertyToActionMap:v3 name:@"highlightBeingKeyAssetPrivate" action:0];
  [a1 _addPropertyToActionMap:v3 name:@"highlightBeingKeyAssetShared" action:0];
  [a1 _addPropertyToActionMap:v3 name:@"highlightBeingSummaryAssets" action:0];
  [a1 _addPropertyToActionMap:v3 name:@"importSession" action:0];
  [a1 _addPropertyToActionMap:v3 name:@"legacyFaces" action:0];
  [a1 _addPropertyToActionMap:v3 name:@"libraryScope" action:0];
  [a1 _addPropertyToActionMap:v3 name:@"collectionShare" action:0];
  [a1 _addPropertyToActionMap:v3 name:@"libraryScopeAssetContributors" action:0];
  [a1 _addPropertyToActionMap:v3 name:@"collectionShareAssetContributor" action:0];
  [a1 _addPropertyToActionMap:v3 name:@"collectionShareContributor" action:0];
  [a1 _addPropertyToActionMap:v3 name:@"likeComments" action:0];
  [a1 _addPropertyToActionMap:v3 name:@"master" action:0];
  [a1 _addPropertyToActionMap:v3 name:@"mediaAnalysisAttributes" action:0];
  [a1 _addPropertyToActionMap:v3 name:@"computeSyncAttributes" action:0];
  [a1 _addPropertyToActionMap:v3 name:@"modernResources" action:0];
  [a1 _addPropertyToActionMap:v3 name:@"moment" action:0];
  [a1 _addPropertyToActionMap:v3 name:@"momentShare" action:0];
  [a1 _addPropertyToActionMap:v3 name:@"monthHighlightBeingKeyAssetPrivate" action:0];
  [a1 _addPropertyToActionMap:v3 name:@"monthHighlightBeingKeyAssetShared" action:0];
  [a1 _addPropertyToActionMap:v3 name:@"photoAnalysisAttributes" action:0];
  [a1 _addPropertyToActionMap:v3 name:@"resources" action:0];
  [a1 _addPropertyToActionMap:v3 name:@"suggestionsBeingKeyAssets" action:0];
  [a1 _addPropertyToActionMap:v3 name:@"suggestionsBeingRepresentativeAssets" action:0];
  [a1 _addPropertyToActionMap:v3 name:@"temporalDetectedFaces" action:0];
  [a1 _addPropertyToActionMap:v3 name:@"trashedByParticipant" action:0];
  [a1 _addPropertyToActionMap:v3 name:@"yearHighlightBeingKeyAssetPrivate" action:0];
  [a1 _addPropertyToActionMap:v3 name:@"yearHighlightBeingKeyAssetShared" action:0];

  return v3;
}

+ (id)_mergePropertyMap
{
  v12[3] = *MEMORY[0x1E69E9840];
  v3 = +[PLManagedAsset entityName];
  v11[0] = v3;
  v4 = [a1 _assetMergePropertyMap];
  v12[0] = v4;
  v5 = +[PLAdditionalAssetAttributes entityName];
  v11[1] = v5;
  v6 = [a1 _additionalAssetAttributesMergePropertyMap];
  v12[1] = v6;
  v7 = +[PLAssetDescription entityName];
  v11[2] = v7;
  v8 = [a1 _assetDescriptionMergePropertyMap];
  v12[2] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:3];

  return v9;
}

@end