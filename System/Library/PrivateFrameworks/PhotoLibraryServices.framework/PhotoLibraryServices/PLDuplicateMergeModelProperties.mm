@interface PLDuplicateMergeModelProperties
+ (id)_additionalAssetAttributesMergePropertyMap;
+ (id)_assetDescriptionMergePropertyMap;
+ (id)_assetMergePropertyMap;
+ (id)_mergePropertyMap;
+ (void)_addPropertyToActionMap:(id)map name:(id)name action:(int64_t)action;
- (BOOL)_isValidForDateCreatedOverwriteWithSource:(id)source;
- (BOOL)_isValidForOverwriteWithSourceProperty:(id)property targetProperty:(id)targetProperty;
- (BOOL)_isValidForTimezoneOverwriteWithSource:(id)source;
- (BOOL)_isValidForTitleOverwriteWithSource:(id)source;
- (BOOL)_isValidManagedObject:(id)object forEntityName:(id)name;
- (BOOL)isRecentlyModifiedSourceAsset:(id)asset;
- (BOOL)transferPropertiesFromSourceAsset:(id)asset propertyMergeType:(int64_t)type error:(id *)error;
- (PLDuplicateMergeModelProperties)initWithTargetAsset:(id)asset photoLibrary:(id)library;
- (id)_managedObjectFromDuplicateAsset:(id)asset matchingEntityName:(id)name;
- (void)_customActionProcessingWithSourceDuplicateAsset:(id)asset entityName:(id)name propertyName:(id)propertyName type:(int64_t)type;
- (void)_mergeActionProcessingWithSourceDuplicateAsset:(id)asset entityName:(id)name propertyName:(id)propertyName;
- (void)_mergeAlbumRelationshipsFromSource:(id)source;
- (void)_mergeCaptionFromSource:(id)source;
- (void)_mergeDateFromSource:(id)source;
- (void)_mergeFavoriteFromSource:(id)source;
- (void)_mergeKeywordsFromSource:(id)source;
- (void)_mergeMemoriesBeingCustomUserAssetsFromSource:(id)source;
- (void)_mergeMemoriesBeingKeyAssetFromSource:(id)source;
- (void)_mergeMemoriesBeingMovieCuratedAssetsFromSource:(id)source;
- (void)_mergeMemoriesBeingUserCuratedAssetsFromSource:(id)source;
- (void)_mergeMemoryBeingCuratedAssetsFromSource:(id)source;
- (void)_mergeMemoryBeingExtendedCuratedAssetsFromSource:(id)source;
- (void)_mergeMemoryBeingRepresentativeAssetsFromSource:(id)source;
- (void)_mergeTimezoneFromSource:(id)source;
- (void)_mergeTitleFromSource:(id)source;
- (void)_postProcessingWithSourceDuplicateAsset:(id)asset type:(int64_t)type;
- (void)_resourcePropertyCopyCurrentSleetCastFromSource:(id)source;
- (void)_resourcePropertyCopyDateCreatedFromSource:(id)source;
- (void)_resourcePropertyCopyExtendedAttributesFromSource:(id)source;
- (void)_resourcePropertyCopyMediaMetadataFromSource:(id)source;
- (void)dealloc;
@end

@implementation PLDuplicateMergeModelProperties

- (BOOL)_isValidForTitleOverwriteWithSource:(id)source
{
  sourceCopy = source;
  asset = [sourceCopy asset];
  title = [asset title];

  if (title)
  {
    asset2 = [(PLDuplicateAsset *)self->_targetAsset asset];
    title2 = [asset2 title];

    if (!title2)
    {
      LOBYTE(v10) = 1;
      goto LABEL_11;
    }

    hasModifiedUserTitle = [sourceCopy hasModifiedUserTitle];
    if (-[PLDuplicateAsset hasModifiedUserTitle](self->_targetAsset, "hasModifiedUserTitle") && [sourceCopy hasModifiedUserTitle])
    {
      if (![(PLDuplicateMergeModelProperties *)self isRecentlyModifiedSourceAsset:sourceCopy])
      {
LABEL_6:
        LOBYTE(v10) = 0;
LABEL_11:

        goto LABEL_12;
      }
    }

    else if (!hasModifiedUserTitle)
    {
      goto LABEL_6;
    }

    v10 = [title2 isEqualToString:title] ^ 1;
    goto LABEL_11;
  }

  LOBYTE(v10) = 0;
LABEL_12:

  return v10;
}

- (BOOL)_isValidForDateCreatedOverwriteWithSource:(id)source
{
  sourceCopy = source;
  asset = [sourceCopy asset];
  dateCreated = [asset dateCreated];

  if (dateCreated)
  {
    asset2 = [(PLDuplicateAsset *)self->_targetAsset asset];
    dateCreated2 = [asset2 dateCreated];

    if (!dateCreated2)
    {
      v10 = 1;
      goto LABEL_13;
    }

    hasModifiedUserDateCreated = [sourceCopy hasModifiedUserDateCreated];
    if (-[PLDuplicateAsset hasModifiedUserDateCreated](self->_targetAsset, "hasModifiedUserDateCreated") && [sourceCopy hasModifiedUserDateCreated])
    {
      if (![(PLDuplicateMergeModelProperties *)self isRecentlyModifiedSourceAsset:sourceCopy])
      {
        goto LABEL_10;
      }
    }

    else if (!hasModifiedUserDateCreated)
    {
LABEL_10:
      v10 = 0;
LABEL_13:

      goto LABEL_14;
    }

    if (([dateCreated2 isEqualToDate:dateCreated] & 1) == 0)
    {
      [dateCreated2 timeIntervalSinceDate:dateCreated];
      v10 = fabs(v11) >= 1.0;
      goto LABEL_13;
    }

    goto LABEL_10;
  }

  v10 = 0;
LABEL_14:

  return v10;
}

- (BOOL)_isValidForTimezoneOverwriteWithSource:(id)source
{
  sourceCopy = source;
  asset = [sourceCopy asset];
  additionalAttributes = [asset additionalAttributes];
  timeZoneOffset = [additionalAttributes timeZoneOffset];

  if (timeZoneOffset)
  {
    asset2 = [(PLDuplicateAsset *)self->_targetAsset asset];
    additionalAttributes2 = [asset2 additionalAttributes];
    timeZoneOffset2 = [additionalAttributes2 timeZoneOffset];

    if (!timeZoneOffset2)
    {
      LOBYTE(v12) = 1;
      goto LABEL_11;
    }

    hasModifiedUserTimezone = [sourceCopy hasModifiedUserTimezone];
    if (-[PLDuplicateAsset hasModifiedUserTimezone](self->_targetAsset, "hasModifiedUserTimezone") && [sourceCopy hasModifiedUserTimezone])
    {
      if (![(PLDuplicateMergeModelProperties *)self isRecentlyModifiedSourceAsset:sourceCopy])
      {
LABEL_6:
        LOBYTE(v12) = 0;
LABEL_11:

        goto LABEL_12;
      }
    }

    else if (!hasModifiedUserTimezone)
    {
      goto LABEL_6;
    }

    v12 = [timeZoneOffset2 isEqualToNumber:timeZoneOffset] ^ 1;
    goto LABEL_11;
  }

  LOBYTE(v12) = 0;
LABEL_12:

  return v12;
}

- (BOOL)_isValidForOverwriteWithSourceProperty:(id)property targetProperty:(id)targetProperty
{
  propertyCopy = property;
  targetPropertyCopy = targetProperty;
  v7 = targetPropertyCopy;
  if (!propertyCopy)
  {
    goto LABEL_14;
  }

  if (targetPropertyCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 = [propertyCopy isEqualToString:v7];
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
        v8 = [propertyCopy isEqualToDate:v7];
        goto LABEL_13;
      }
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 = [propertyCopy isEqualToNumber:v7];
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

- (BOOL)isRecentlyModifiedSourceAsset:(id)asset
{
  targetAsset = self->_targetAsset;
  assetCopy = asset;
  asset = [(PLDuplicateAsset *)targetAsset asset];
  modificationDate = [asset modificationDate];
  asset2 = [assetCopy asset];

  modificationDate2 = [asset2 modificationDate];
  v9 = [modificationDate compare:modificationDate2] == -1;

  return v9;
}

- (void)_mergeMemoriesBeingKeyAssetFromSource:(id)source
{
  v28 = *MEMORY[0x1E69E9840];
  sourceCopy = source;
  asset = [sourceCopy asset];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  memoriesBeingKeyAsset = [asset memoriesBeingKeyAsset];
  v7 = [memoriesBeingKeyAsset copy];

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
        calculateKeyAsset = [v13 calculateKeyAsset];
        [v13 setKeyAsset:calculateKeyAsset];
      }

      v10 += v9;
      v9 = [v7 countByEnumeratingWithState:&v17 objects:v27 count:16];
    }

    while (v9);

    v7 = PLDuplicateDetectionGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      shortDescription = [sourceCopy shortDescription];
      shortDescription2 = [(PLDuplicateAsset *)self->_targetAsset shortDescription];
      *buf = 134218498;
      v22 = v10;
      v23 = 2114;
      v24 = shortDescription;
      v25 = 2114;
      v26 = shortDescription2;
      _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_INFO, "Duplicate Merge: updated %tu memoriesBeingKeyAsset: [%{public}@ -> %{public}@]", buf, 0x20u);
    }
  }
}

- (void)_mergeMemoriesBeingCustomUserAssetsFromSource:(id)source
{
  v32 = *MEMORY[0x1E69E9840];
  sourceCopy = source;
  asset = [sourceCopy asset];
  asset2 = [(PLDuplicateAsset *)self->_targetAsset asset];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  memoriesBeingCustomUserAssets = [asset memoriesBeingCustomUserAssets];
  v8 = [memoriesBeingCustomUserAssets copy];

  v9 = [v8 countByEnumeratingWithState:&v21 objects:v31 count:16];
  if (v9)
  {
    v10 = v9;
    selfCopy = self;
    v20 = sourceCopy;
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
        customUserAssets = [v14 customUserAssets];
        v16 = [customUserAssets indexOfObject:asset];

        [v14 replaceObjectInCustomUserAssetsAtIndex:v16 withObject:asset2];
      }

      v11 += v10;
      v10 = [v8 countByEnumeratingWithState:&v21 objects:v31 count:16];
    }

    while (v10);

    v8 = PLDuplicateDetectionGetLog();
    sourceCopy = v20;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      shortDescription = [v20 shortDescription];
      shortDescription2 = [(PLDuplicateAsset *)selfCopy->_targetAsset shortDescription];
      *buf = 134218498;
      v26 = v11;
      v27 = 2114;
      v28 = shortDescription;
      v29 = 2114;
      v30 = shortDescription2;
      _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_INFO, "Duplicate Merge: updated %tu memoriesBeingCustomUserAssets: [%{public}@ -> %{public}@]", buf, 0x20u);
    }
  }
}

- (void)_mergeMemoriesBeingUserCuratedAssetsFromSource:(id)source
{
  v26 = *MEMORY[0x1E69E9840];
  sourceCopy = source;
  asset = [sourceCopy asset];
  asset2 = [(PLDuplicateAsset *)self->_targetAsset asset];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  memoriesBeingUserCuratedAssets = [asset memoriesBeingUserCuratedAssets];
  v8 = [memoriesBeingUserCuratedAssets countByEnumeratingWithState:&v15 objects:v25 count:16];
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
          objc_enumerationMutation(memoriesBeingUserCuratedAssets);
        }

        [*(*(&v15 + 1) + 8 * i) addUserCuratedAssetsObject:asset2];
      }

      v10 += v9;
      v9 = [memoriesBeingUserCuratedAssets countByEnumeratingWithState:&v15 objects:v25 count:16];
    }

    while (v9);

    memoriesBeingUserCuratedAssets = PLDuplicateDetectionGetLog();
    if (os_log_type_enabled(memoriesBeingUserCuratedAssets, OS_LOG_TYPE_INFO))
    {
      shortDescription = [sourceCopy shortDescription];
      shortDescription2 = [(PLDuplicateAsset *)self->_targetAsset shortDescription];
      *buf = 134218498;
      v20 = v10;
      v21 = 2114;
      v22 = shortDescription;
      v23 = 2114;
      v24 = shortDescription2;
      _os_log_impl(&dword_19BF1F000, memoriesBeingUserCuratedAssets, OS_LOG_TYPE_INFO, "Duplicate Merge: updated %tu memoriesBeingUserCuratedAssets: [%{public}@ -> %{public}@]", buf, 0x20u);
    }
  }
}

- (void)_mergeMemoriesBeingMovieCuratedAssetsFromSource:(id)source
{
  v26 = *MEMORY[0x1E69E9840];
  sourceCopy = source;
  asset = [sourceCopy asset];
  asset2 = [(PLDuplicateAsset *)self->_targetAsset asset];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  memoriesBeingMovieCuratedAssets = [asset memoriesBeingMovieCuratedAssets];
  v8 = [memoriesBeingMovieCuratedAssets countByEnumeratingWithState:&v15 objects:v25 count:16];
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
          objc_enumerationMutation(memoriesBeingMovieCuratedAssets);
        }

        [*(*(&v15 + 1) + 8 * i) addMovieCuratedAssetsObject:asset2];
      }

      v10 += v9;
      v9 = [memoriesBeingMovieCuratedAssets countByEnumeratingWithState:&v15 objects:v25 count:16];
    }

    while (v9);

    memoriesBeingMovieCuratedAssets = PLDuplicateDetectionGetLog();
    if (os_log_type_enabled(memoriesBeingMovieCuratedAssets, OS_LOG_TYPE_INFO))
    {
      shortDescription = [sourceCopy shortDescription];
      shortDescription2 = [(PLDuplicateAsset *)self->_targetAsset shortDescription];
      *buf = 134218498;
      v20 = v10;
      v21 = 2114;
      v22 = shortDescription;
      v23 = 2114;
      v24 = shortDescription2;
      _os_log_impl(&dword_19BF1F000, memoriesBeingMovieCuratedAssets, OS_LOG_TYPE_INFO, "Duplicate Merge: updated %tu memoriesBeingMovieCuratedAssets: [%{public}@ -> %{public}@]", buf, 0x20u);
    }
  }
}

- (void)_mergeMemoryBeingExtendedCuratedAssetsFromSource:(id)source
{
  v32 = *MEMORY[0x1E69E9840];
  sourceCopy = source;
  asset = [sourceCopy asset];
  asset2 = [(PLDuplicateAsset *)self->_targetAsset asset];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  memoriesBeingExtendedCuratedAssets = [asset memoriesBeingExtendedCuratedAssets];
  v8 = [memoriesBeingExtendedCuratedAssets copy];

  v9 = [v8 countByEnumeratingWithState:&v21 objects:v31 count:16];
  if (v9)
  {
    v10 = v9;
    selfCopy = self;
    v20 = sourceCopy;
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
        extendedCuratedAssets = [v14 extendedCuratedAssets];
        v16 = [extendedCuratedAssets mutableCopy];

        [v16 removeObject:asset];
        [v16 addObject:asset2];
        [v14 setExtendedCuratedAssets:v16];
      }

      v11 += v10;
      v10 = [v8 countByEnumeratingWithState:&v21 objects:v31 count:16];
    }

    while (v10);

    v8 = PLDuplicateDetectionGetLog();
    sourceCopy = v20;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      shortDescription = [v20 shortDescription];
      shortDescription2 = [(PLDuplicateAsset *)selfCopy->_targetAsset shortDescription];
      *buf = 134218498;
      v26 = v11;
      v27 = 2114;
      v28 = shortDescription;
      v29 = 2114;
      v30 = shortDescription2;
      _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_INFO, "Duplicate Merge: updated %tu memoriesBeingExtendedCuratedAssets: [%{public}@ -> %{public}@]", buf, 0x20u);
    }
  }
}

- (void)_mergeMemoryBeingCuratedAssetsFromSource:(id)source
{
  v26 = *MEMORY[0x1E69E9840];
  sourceCopy = source;
  asset = [sourceCopy asset];
  asset2 = [(PLDuplicateAsset *)self->_targetAsset asset];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  memoriesBeingCuratedAssets = [asset memoriesBeingCuratedAssets];
  v8 = [memoriesBeingCuratedAssets countByEnumeratingWithState:&v15 objects:v25 count:16];
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
          objc_enumerationMutation(memoriesBeingCuratedAssets);
        }

        [*(*(&v15 + 1) + 8 * i) addCuratedAssetsObject:asset2];
      }

      v10 += v9;
      v9 = [memoriesBeingCuratedAssets countByEnumeratingWithState:&v15 objects:v25 count:16];
    }

    while (v9);

    memoriesBeingCuratedAssets = PLDuplicateDetectionGetLog();
    if (os_log_type_enabled(memoriesBeingCuratedAssets, OS_LOG_TYPE_INFO))
    {
      shortDescription = [sourceCopy shortDescription];
      shortDescription2 = [(PLDuplicateAsset *)self->_targetAsset shortDescription];
      *buf = 134218498;
      v20 = v10;
      v21 = 2114;
      v22 = shortDescription;
      v23 = 2114;
      v24 = shortDescription2;
      _os_log_impl(&dword_19BF1F000, memoriesBeingCuratedAssets, OS_LOG_TYPE_INFO, "Duplicate Merge: updated %tu memoriesBeingCuratedAssets: [%{public}@ -> %{public}@]", buf, 0x20u);
    }
  }
}

- (void)_mergeMemoryBeingRepresentativeAssetsFromSource:(id)source
{
  v26 = *MEMORY[0x1E69E9840];
  sourceCopy = source;
  asset = [sourceCopy asset];
  asset2 = [(PLDuplicateAsset *)self->_targetAsset asset];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  memoriesBeingRepresentativeAssets = [asset memoriesBeingRepresentativeAssets];
  v8 = [memoriesBeingRepresentativeAssets countByEnumeratingWithState:&v15 objects:v25 count:16];
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
          objc_enumerationMutation(memoriesBeingRepresentativeAssets);
        }

        [*(*(&v15 + 1) + 8 * i) addRepresentativeAssetsObject:asset2];
      }

      v10 += v9;
      v9 = [memoriesBeingRepresentativeAssets countByEnumeratingWithState:&v15 objects:v25 count:16];
    }

    while (v9);

    memoriesBeingRepresentativeAssets = PLDuplicateDetectionGetLog();
    if (os_log_type_enabled(memoriesBeingRepresentativeAssets, OS_LOG_TYPE_INFO))
    {
      shortDescription = [sourceCopy shortDescription];
      shortDescription2 = [(PLDuplicateAsset *)self->_targetAsset shortDescription];
      *buf = 134218498;
      v20 = v10;
      v21 = 2114;
      v22 = shortDescription;
      v23 = 2114;
      v24 = shortDescription2;
      _os_log_impl(&dword_19BF1F000, memoriesBeingRepresentativeAssets, OS_LOG_TYPE_INFO, "Duplicate Merge: updated %tu memoriesBeingRepresentativeAssets: [%{public}@ -> %{public}@]", buf, 0x20u);
    }
  }
}

- (void)_mergeAlbumRelationshipsFromSource:(id)source
{
  sourceCopy = source;
  asset = [sourceCopy asset];
  asset2 = [(PLDuplicateAsset *)self->_targetAsset asset];
  albums = [asset albums];
  v8 = [albums copy];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __70__PLDuplicateMergeModelProperties__mergeAlbumRelationshipsFromSource___block_invoke;
  v12[3] = &unk_1E7567680;
  v13 = asset;
  v14 = asset2;
  v15 = sourceCopy;
  selfCopy = self;
  v9 = sourceCopy;
  v10 = asset2;
  v11 = asset;
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

- (void)_mergeFavoriteFromSource:(id)source
{
  v14 = *MEMORY[0x1E69E9840];
  sourceCopy = source;
  asset = [sourceCopy asset];
  asset2 = [(PLDuplicateAsset *)self->_targetAsset asset];
  if (([asset2 isFavorite] & 1) == 0 && objc_msgSend(asset, "isFavorite"))
  {
    [asset2 setFavorite:1];
    v7 = PLDuplicateDetectionGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      shortDescription = [sourceCopy shortDescription];
      shortDescription2 = [(PLDuplicateAsset *)self->_targetAsset shortDescription];
      v10 = 138543618;
      v11 = shortDescription;
      v12 = 2114;
      v13 = shortDescription2;
      _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_INFO, "Duplicate Merge: favorite: YES [%{public}@ -> %{public}@]", &v10, 0x16u);
    }
  }
}

- (void)_mergeKeywordsFromSource:(id)source
{
  v46 = *MEMORY[0x1E69E9840];
  sourceCopy = source;
  asset = [sourceCopy asset];
  additionalAttributes = [asset additionalAttributes];
  keywords = [additionalAttributes keywords];

  if ([keywords count])
  {
    asset2 = [(PLDuplicateAsset *)self->_targetAsset asset];
    additionalAttributes2 = [asset2 additionalAttributes];
    keywords2 = [additionalAttributes2 keywords];
    v11 = [keywords2 valueForKey:@"title"];

    v12 = [keywords valueForKey:@"title"];
    v13 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    [v13 unionSet:v11];
    [v13 unionSet:v12];
    keywordManager = [(PLPhotoLibrary *)self->_library keywordManager];
    asset3 = [(PLDuplicateAsset *)self->_targetAsset asset];
    [keywordManager setKeywords:v13 forAsset:asset3];

    v16 = PLDuplicateDetectionGetLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      log = v16;
      v32 = v12;
      v33 = v11;
      v34 = keywords;
      v35 = sourceCopy;
      allObjects = [v13 allObjects];
      v18 = objc_alloc_init(MEMORY[0x1E696AD60]);
      v36 = 0u;
      v37 = 0u;
      v38 = 0u;
      v39 = 0u;
      v19 = allObjects;
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
      sourceCopy = v35;
      shortDescription = [v35 shortDescription];
      shortDescription2 = [(PLDuplicateAsset *)self->_targetAsset shortDescription];

      *buf = 138412802;
      v41 = v27;
      v42 = 2114;
      v43 = shortDescription;
      v44 = 2114;
      v45 = shortDescription2;
      v16 = log;
      _os_log_impl(&dword_19BF1F000, log, OS_LOG_TYPE_INFO, "Duplicate Merge: update keywords: %@ [%{public}@ -> %{public}@]", buf, 0x20u);

      v11 = v33;
      keywords = v34;
      v12 = v32;
    }
  }
}

- (void)_mergeCaptionFromSource:(id)source
{
  v26 = *MEMORY[0x1E69E9840];
  sourceCopy = source;
  asset = [sourceCopy asset];
  asset2 = [(PLDuplicateAsset *)self->_targetAsset asset];
  longDescription = [asset longDescription];
  longDescription2 = [asset2 longDescription];
  v9 = [(PLDuplicateMergeModelProperties *)self _isValidForOverwriteWithSourceProperty:longDescription targetProperty:longDescription2];

  if (v9)
  {
    longDescription3 = [asset longDescription];
    longDescription4 = [asset2 longDescription];
    if ([longDescription4 length])
    {
      v12 = [MEMORY[0x1E696AE18] predicateWithFormat:@"self contains[cd] %@", longDescription3];
      if (([v12 evaluateWithObject:longDescription4]& 1) != 0)
      {
LABEL_7:

        goto LABEL_8;
      }

      v13 = [MEMORY[0x1E696AD60] stringWithString:longDescription4];
      [v13 appendFormat:@"\n%@", longDescription3];
      v14 = [v13 copy];

      longDescription3 = v14;
    }

    [asset2 setLongDescription:longDescription3];
    v12 = PLDuplicateDetectionGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      longDescription5 = [asset longDescription];
      shortDescription = [sourceCopy shortDescription];
      shortDescription2 = [(PLDuplicateAsset *)self->_targetAsset shortDescription];
      *buf = 138413058;
      v19 = longDescription4;
      v20 = 2112;
      v21 = longDescription5;
      v22 = 2114;
      v23 = shortDescription;
      v24 = 2114;
      v25 = shortDescription2;
      _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_INFO, "Duplicate Merge: update caption: %@|%@ [%{public}@ -> %{public}@]", buf, 0x2Au);
    }

    goto LABEL_7;
  }

LABEL_8:
}

- (void)_mergeTimezoneFromSource:(id)source
{
  v24 = *MEMORY[0x1E69E9840];
  sourceCopy = source;
  if (![(PLDuplicateAsset *)self->_targetAsset timezoneUpdated]&& [(PLDuplicateMergeModelProperties *)self _isValidForTimezoneOverwriteWithSource:sourceCopy])
  {
    asset = [sourceCopy asset];
    additionalAttributes = [asset additionalAttributes];

    asset2 = [(PLDuplicateAsset *)self->_targetAsset asset];
    additionalAttributes2 = [asset2 additionalAttributes];

    timeZoneName = [additionalAttributes timeZoneName];
    [additionalAttributes2 setTimeZoneName:timeZoneName];

    timeZoneOffset = [additionalAttributes timeZoneOffset];
    [additionalAttributes2 setTimeZoneOffset:timeZoneOffset];

    [(PLDuplicateAsset *)self->_targetAsset setTimezoneUpdated:1];
    v11 = PLDuplicateDetectionGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      timeZoneName2 = [additionalAttributes2 timeZoneName];
      timeZoneOffset2 = [additionalAttributes2 timeZoneOffset];
      shortDescription = [sourceCopy shortDescription];
      shortDescription2 = [(PLDuplicateAsset *)self->_targetAsset shortDescription];
      v16 = 138413058;
      v17 = timeZoneName2;
      v18 = 2112;
      v19 = timeZoneOffset2;
      v20 = 2114;
      v21 = shortDescription;
      v22 = 2114;
      v23 = shortDescription2;
      _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_INFO, "Duplicate Merge: timezone: %@ | %@ [%{public}@ -> %{public}@]", &v16, 0x2Au);
    }
  }
}

- (void)_mergeDateFromSource:(id)source
{
  v18 = *MEMORY[0x1E69E9840];
  sourceCopy = source;
  if (![(PLDuplicateAsset *)self->_targetAsset dateUpdated]&& [(PLDuplicateMergeModelProperties *)self _isValidForDateCreatedOverwriteWithSource:sourceCopy])
  {
    asset = [sourceCopy asset];
    asset2 = [(PLDuplicateAsset *)self->_targetAsset asset];
    dateCreated = [asset dateCreated];
    [asset2 setDateCreated:dateCreated];

    [(PLDuplicateAsset *)self->_targetAsset setDateUpdated:1];
    v8 = PLDuplicateDetectionGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      dateCreated2 = [asset2 dateCreated];
      shortDescription = [sourceCopy shortDescription];
      shortDescription2 = [(PLDuplicateAsset *)self->_targetAsset shortDescription];
      v12 = 138412802;
      v13 = dateCreated2;
      v14 = 2114;
      v15 = shortDescription;
      v16 = 2114;
      v17 = shortDescription2;
      _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_INFO, "Duplicate Merge: date: %@ [%{public}@ -> %{public}@]", &v12, 0x20u);
    }
  }
}

- (void)_mergeTitleFromSource:(id)source
{
  v18 = *MEMORY[0x1E69E9840];
  sourceCopy = source;
  if (![(PLDuplicateAsset *)self->_targetAsset titleUpdated]&& [(PLDuplicateMergeModelProperties *)self _isValidForTitleOverwriteWithSource:sourceCopy])
  {
    asset = [sourceCopy asset];
    asset2 = [(PLDuplicateAsset *)self->_targetAsset asset];
    title = [asset title];
    [asset2 setTitle:title];

    [(PLDuplicateAsset *)self->_targetAsset setTitleUpdated:1];
    v8 = PLDuplicateDetectionGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      title2 = [asset2 title];
      shortDescription = [sourceCopy shortDescription];
      shortDescription2 = [(PLDuplicateAsset *)self->_targetAsset shortDescription];
      v12 = 138412802;
      v13 = title2;
      v14 = 2114;
      v15 = shortDescription;
      v16 = 2114;
      v17 = shortDescription2;
      _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_INFO, "Duplicate Merge: title: %@ [%{public}@ -> %{public}@]", &v12, 0x20u);
    }
  }
}

- (void)_resourcePropertyCopyCurrentSleetCastFromSource:(id)source
{
  v14 = *MEMORY[0x1E69E9840];
  sourceCopy = source;
  asset = [sourceCopy asset];
  asset2 = [(PLDuplicateAsset *)self->_targetAsset asset];
  [asset2 setCurrentSleetCast:{objc_msgSend(asset, "currentSleetCast")}];
  v7 = PLDuplicateDetectionGetLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    shortDescription = [sourceCopy shortDescription];
    shortDescription2 = [(PLDuplicateAsset *)self->_targetAsset shortDescription];
    v10 = 138543618;
    v11 = shortDescription;
    v12 = 2114;
    v13 = shortDescription2;
    _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_INFO, "Duplicate Merge: currentSleetCast property merge completed [%{public}@ -> %{public}@", &v10, 0x16u);
  }
}

- (void)_resourcePropertyCopyMediaMetadataFromSource:(id)source
{
  targetAsset = self->_targetAsset;
  sourceCopy = source;
  asset = [(PLDuplicateAsset *)targetAsset asset];
  additionalAttributes = [asset additionalAttributes];

  asset2 = [sourceCopy asset];

  additionalAttributes2 = [asset2 additionalAttributes];

  mediaMetadataType = [additionalAttributes2 mediaMetadataType];
  [additionalAttributes setMediaMetadataType:mediaMetadataType];

  mediaMetadataData = [additionalAttributes2 mediaMetadataData];
  if (mediaMetadataData)
  {
    [additionalAttributes setMediaMetadataData:mediaMetadataData];
  }
}

- (void)_resourcePropertyCopyExtendedAttributesFromSource:(id)source
{
  v20 = *MEMORY[0x1E69E9840];
  sourceCopy = source;
  asset = [(PLDuplicateAsset *)self->_targetAsset asset];
  v13 = 0;
  [asset updateExtendedAttributesWithError:&v13];
  v6 = v13;
  if (v6)
  {
    v7 = PLDuplicateDetectionGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      shortDescription = [sourceCopy shortDescription];
      shortDescription2 = [(PLDuplicateAsset *)self->_targetAsset shortDescription];
      *buf = 138412802;
      v15 = shortDescription;
      v16 = 2112;
      v17 = shortDescription2;
      v18 = 2112;
      v19 = v6;
      _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_ERROR, "Duplicate Merge: update extended attributes failed: [%@ -> %@] Error: %@", buf, 0x20u);
    }
  }

  v10 = PLDuplicateDetectionGetLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    shortDescription3 = [sourceCopy shortDescription];
    shortDescription4 = [(PLDuplicateAsset *)self->_targetAsset shortDescription];
    *buf = 138543618;
    v15 = shortDescription3;
    v16 = 2114;
    v17 = shortDescription4;
    _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_INFO, "Duplicate Merge: property merge completed [%{public}@ -> %{public}@]", buf, 0x16u);
  }
}

- (void)_resourcePropertyCopyDateCreatedFromSource:(id)source
{
  targetAsset = self->_targetAsset;
  sourceCopy = source;
  asset = [(PLDuplicateAsset *)targetAsset asset];
  asset2 = [sourceCopy asset];

  if (![(PLDuplicateAsset *)self->_targetAsset dateUpdated])
  {
    dateCreated = [asset2 dateCreated];
    [asset setDateCreated:dateCreated];
  }
}

- (BOOL)_isValidManagedObject:(id)object forEntityName:(id)name
{
  nameCopy = name;
  v6 = +[PLAssetDescription entityName];
  v7 = [nameCopy isEqualToString:v6];

  if (object)
  {
    return 1;
  }

  else
  {
    return v7;
  }
}

- (id)_managedObjectFromDuplicateAsset:(id)asset matchingEntityName:(id)name
{
  assetCopy = asset;
  nameCopy = name;
  v7 = +[PLManagedAsset entityName];
  v8 = [nameCopy isEqualToString:v7];

  if (v8)
  {
    asset = [assetCopy asset];
    goto LABEL_9;
  }

  v10 = +[PLAdditionalAssetAttributes entityName];
  v11 = [nameCopy isEqualToString:v10];

  if (v11)
  {
    asset2 = [assetCopy asset];
    asset = [asset2 additionalAttributes];
LABEL_7:

    goto LABEL_9;
  }

  v13 = +[PLAssetDescription entityName];
  v14 = [nameCopy isEqualToString:v13];

  if (v14)
  {
    asset2 = [assetCopy asset];
    additionalAttributes = [asset2 additionalAttributes];
    asset = [additionalAttributes assetDescription];

    goto LABEL_7;
  }

  asset = 0;
LABEL_9:

  return asset;
}

- (void)_customActionProcessingWithSourceDuplicateAsset:(id)asset entityName:(id)name propertyName:(id)propertyName type:(int64_t)type
{
  assetCopy = asset;
  nameCopy = name;
  propertyNameCopy = propertyName;
  v12 = +[PLManagedAsset entityName];
  v13 = [nameCopy isEqualToString:v12];

  if (v13)
  {
    if ([propertyNameCopy isEqualToString:@"dateCreated"])
    {
      if (type)
      {
        if (type == 1)
        {
          [(PLDuplicateMergeModelProperties *)self _resourcePropertyCopyDateCreatedFromSource:assetCopy];
          goto LABEL_6;
        }
      }

      else
      {
        [(PLDuplicateMergeModelProperties *)self _mergeDateFromSource:assetCopy];
      }

      [propertyNameCopy isEqualToString:@"extendedAttributes"];
      v16 = type == 1;
LABEL_16:
      v20 = [propertyNameCopy isEqualToString:@"currentSleetCast"];
      if (v16 && v20)
      {
        [(PLDuplicateMergeModelProperties *)self _resourcePropertyCopyCurrentSleetCastFromSource:assetCopy];
      }

      goto LABEL_19;
    }

LABEL_6:
    v14 = [propertyNameCopy isEqualToString:@"extendedAttributes"];
    v15 = type == 1;
    v16 = type == 1;
    if (v15 && v14)
    {
      [(PLDuplicateMergeModelProperties *)self _resourcePropertyCopyExtendedAttributesFromSource:assetCopy];
      v16 = 1;
    }

    goto LABEL_16;
  }

  v17 = +[PLAdditionalAssetAttributes entityName];
  v18 = [nameCopy isEqualToString:v17];

  if (v18)
  {
    v19 = [propertyNameCopy isEqualToString:@"mediaMetadataType"];
    if (type == 1)
    {
      if (v19)
      {
        [(PLDuplicateMergeModelProperties *)self _resourcePropertyCopyMediaMetadataFromSource:assetCopy];
      }
    }
  }

LABEL_19:
}

- (void)_mergeActionProcessingWithSourceDuplicateAsset:(id)asset entityName:(id)name propertyName:(id)propertyName
{
  assetCopy = asset;
  nameCopy = name;
  propertyNameCopy = propertyName;
  v10 = +[PLManagedAsset entityName];
  v11 = [nameCopy isEqualToString:v10];

  if (v11)
  {
    if ([propertyNameCopy isEqualToString:@"favorite"])
    {
      [(PLDuplicateMergeModelProperties *)self _mergeFavoriteFromSource:assetCopy];
    }

    else if ([propertyNameCopy isEqualToString:@"albums"])
    {
      [(PLDuplicateMergeModelProperties *)self _mergeAlbumRelationshipsFromSource:assetCopy];
    }

    else if ([propertyNameCopy isEqualToString:@"memoriesBeingRepresentativeAssets"])
    {
      [(PLDuplicateMergeModelProperties *)self _mergeMemoryBeingRepresentativeAssetsFromSource:assetCopy];
    }

    else if ([propertyNameCopy isEqualToString:@"memoriesBeingCuratedAssets"])
    {
      [(PLDuplicateMergeModelProperties *)self _mergeMemoryBeingCuratedAssetsFromSource:assetCopy];
    }

    else if ([propertyNameCopy isEqualToString:@"memoriesBeingExtendedCuratedAssets"])
    {
      [(PLDuplicateMergeModelProperties *)self _mergeMemoryBeingExtendedCuratedAssetsFromSource:assetCopy];
    }

    else if ([propertyNameCopy isEqualToString:@"memoriesBeingMovieCuratedAssets"])
    {
      [(PLDuplicateMergeModelProperties *)self _mergeMemoriesBeingMovieCuratedAssetsFromSource:assetCopy];
    }

    else if ([propertyNameCopy isEqualToString:@"memoriesBeingUserCuratedAssets"])
    {
      [(PLDuplicateMergeModelProperties *)self _mergeMemoriesBeingUserCuratedAssetsFromSource:assetCopy];
    }

    else if ([propertyNameCopy isEqualToString:@"memoriesBeingCustomUserAssets"])
    {
      [(PLDuplicateMergeModelProperties *)self _mergeMemoriesBeingCustomUserAssetsFromSource:assetCopy];
    }

    else if ([propertyNameCopy isEqualToString:@"memoriesBeingKeyAsset"])
    {
      [(PLDuplicateMergeModelProperties *)self _mergeMemoriesBeingKeyAssetFromSource:assetCopy];
    }
  }

  else
  {
    v12 = +[PLAdditionalAssetAttributes entityName];
    v13 = [nameCopy isEqualToString:v12];

    if (v13)
    {
      if ([propertyNameCopy isEqualToString:@"title"])
      {
        [(PLDuplicateMergeModelProperties *)self _mergeTitleFromSource:assetCopy];
      }

      else if (([propertyNameCopy isEqualToString:@"timeZoneName"] & 1) != 0 || objc_msgSend(propertyNameCopy, "isEqualToString:", @"timeZoneOffset"))
      {
        [(PLDuplicateMergeModelProperties *)self _mergeTimezoneFromSource:assetCopy];
      }

      else if ([propertyNameCopy isEqualToString:@"keywords"])
      {
        [(PLDuplicateMergeModelProperties *)self _mergeKeywordsFromSource:assetCopy];
      }

      else
      {
        [propertyNameCopy isEqualToString:@"editedIPTCAttributes"];
      }
    }

    else
    {
      v14 = +[PLAssetDescription entityName];
      v15 = [nameCopy isEqualToString:v14];

      if (v15 && [propertyNameCopy isEqualToString:@"longDescription"])
      {
        [(PLDuplicateMergeModelProperties *)self _mergeCaptionFromSource:assetCopy];
      }
    }
  }
}

- (void)_postProcessingWithSourceDuplicateAsset:(id)asset type:(int64_t)type
{
  if (!type)
  {
    assetCopy = asset;
    v7 = +[PLManagedAsset entityName];
    [(PLDuplicateMergeModelProperties *)self _mergeActionProcessingWithSourceDuplicateAsset:assetCopy entityName:v7 propertyName:@"memoriesBeingKeyAsset"];
  }
}

- (BOOL)transferPropertiesFromSourceAsset:(id)asset propertyMergeType:(int64_t)type error:(id *)error
{
  assetCopy = asset;
  if (!assetCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLDuplicateMergeModelProperties.m" lineNumber:77 description:{@"Invalid parameter not satisfying: %@", @"sourceAsset"}];
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
  mergePropertyMap = [(PLDuplicateMergeModelProperties *)self mergePropertyMap];
  allKeys = [mergePropertyMap allKeys];

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __93__PLDuplicateMergeModelProperties_transferPropertiesFromSourceAsset_propertyMergeType_error___block_invoke;
  v18[3] = &unk_1E7567658;
  v18[4] = self;
  v12 = assetCopy;
  v19 = v12;
  v20 = &v29;
  v21 = &v23;
  typeCopy = type;
  [allKeys enumerateObjectsUsingBlock:v18];
  v13 = *(v30 + 24);
  v14 = v24[5];
  if (error && (v13 & 1) == 0)
  {
    v14 = v14;
    *error = v14;
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

- (PLDuplicateMergeModelProperties)initWithTargetAsset:(id)asset photoLibrary:(id)library
{
  assetCopy = asset;
  libraryCopy = library;
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

    objc_storeStrong(&v9->_targetAsset, asset);
    objc_storeStrong(&v9->_library, library);
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

+ (void)_addPropertyToActionMap:(id)map name:(id)name action:(int64_t)action
{
  mapCopy = map;
  nameCopy = name;
  if (!nameCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLDuplicateMergeModelProperties.m" lineNumber:927 description:{@"Invalid parameter not satisfying: %@", @"name"}];
  }

  v10 = mapCopy;
  if (!mapCopy)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PLDuplicateMergeModelProperties.m" lineNumber:928 description:{@"Invalid parameter not satisfying: %@", @"map"}];

    v10 = 0;
  }

  v11 = [v10 objectForKeyedSubscript:nameCopy];

  if (v11)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"Attempt to add merge property %@ multiple times", nameCopy];
    v15 = [MEMORY[0x1E695DF30] exceptionWithName:@"DuplicateMergePropertyValidation" reason:objc_claimAutoreleasedReturnValue() userInfo:0];
    objc_exception_throw(v15);
  }

  v12 = [MEMORY[0x1E696AD98] numberWithInteger:action];
  [mapCopy setObject:v12 forKeyedSubscript:nameCopy];
}

+ (id)_assetDescriptionMergePropertyMap
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [self _addPropertyToActionMap:v3 name:@"longDescription" action:2];
  [self _addPropertyToActionMap:v3 name:@"assetAttributes" action:0];

  return v3;
}

+ (id)_additionalAssetAttributesMergePropertyMap
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [self _addPropertyToActionMap:v3 name:@"accessibilityDescription" action:1];
  [self _addPropertyToActionMap:v3 name:@"adjustedStableHash" action:1];
  [self _addPropertyToActionMap:v3 name:@"alternateImportImageDate" action:1];
  [self _addPropertyToActionMap:v3 name:@"editorBundleID" action:1];
  [self _addPropertyToActionMap:v3 name:@"embeddedThumbnailHeight" action:1];
  [self _addPropertyToActionMap:v3 name:@"embeddedThumbnailLength" action:1];
  [self _addPropertyToActionMap:v3 name:@"embeddedThumbnailOffset" action:1];
  [self _addPropertyToActionMap:v3 name:@"embeddedThumbnailWidth" action:1];
  [self _addPropertyToActionMap:v3 name:@"originalStableHash" action:1];
  [self _addPropertyToActionMap:v3 name:@"originalFilesize" action:1];
  [self _addPropertyToActionMap:v3 name:@"originalHash" action:1];
  [self _addPropertyToActionMap:v3 name:@"originalHeight" action:1];
  [self _addPropertyToActionMap:v3 name:@"originalOrientation" action:1];
  [self _addPropertyToActionMap:v3 name:@"originalResourceChoice" action:1];
  [self _addPropertyToActionMap:v3 name:@"originalWidth" action:1];
  [self _addPropertyToActionMap:v3 name:@"originatingAssetIdentifier" action:1];
  [self _addPropertyToActionMap:v3 name:@"spatialOverCaptureGroupIdentifier" action:1];
  [self _addPropertyToActionMap:v3 name:@"videoCpDisplayTimescale" action:1];
  [self _addPropertyToActionMap:v3 name:@"videoCpDisplayValue" action:1];
  [self _addPropertyToActionMap:v3 name:@"videoCpDurationTimescale" action:1];
  [self _addPropertyToActionMap:v3 name:@"viewPresentation" action:1];
  [self _addPropertyToActionMap:v3 name:@"sleetIsReversible" action:1];
  [self _addPropertyToActionMap:v3 name:@"title" action:2];
  [self _addPropertyToActionMap:v3 name:@"timeZoneName" action:2];
  [self _addPropertyToActionMap:v3 name:@"timeZoneOffset" action:2];
  [self _addPropertyToActionMap:v3 name:@"keywords" action:2];
  [self _addPropertyToActionMap:v3 name:@"editedIPTCAttributes" action:2];
  [self _addPropertyToActionMap:v3 name:@"mediaMetadataType" action:3];
  [self _addPropertyToActionMap:v3 name:@"allowedForAnalysis" action:0];
  [self _addPropertyToActionMap:v3 name:@"cameraCaptureDevice" action:0];
  [self _addPropertyToActionMap:v3 name:@"cloudAvalanchePickType" action:0];
  [self _addPropertyToActionMap:v3 name:@"cloudKindSubtype" action:0];
  [self _addPropertyToActionMap:v3 name:@"cloudRecoveryState" action:0];
  [self _addPropertyToActionMap:v3 name:@"cloudStateRecoveryAttemptsCount" action:0];
  [self _addPropertyToActionMap:v3 name:@"dateCreatedSource" action:0];
  [self _addPropertyToActionMap:v3 name:@"deferredPhotoIdentifier" action:0];
  [self _addPropertyToActionMap:v3 name:@"deferredProcessingCandidateOptions" action:0];
  [self _addPropertyToActionMap:v3 name:@"destinationAssetCopyState" action:0];
  [self _addPropertyToActionMap:v3 name:@"distanceIdentity" action:0];
  [self _addPropertyToActionMap:v3 name:@"duplicateDetectorPerceptualProcessingState" action:0];
  [self _addPropertyToActionMap:v3 name:@"exifTimestampString" action:0];
  [self _addPropertyToActionMap:v3 name:@"faceAnalysisVersion" action:0];
  [self _addPropertyToActionMap:v3 name:@"faceRegions" action:0];
  [self _addPropertyToActionMap:v3 name:@"gpsHorizontalAccuracy" action:0];
  [self _addPropertyToActionMap:v3 name:@"hasPeopleSceneMidOrGreaterConfidence" action:0];
  [self _addPropertyToActionMap:v3 name:@"importedBy" action:0];
  [self _addPropertyToActionMap:v3 name:@"importedByBundleIdentifier" action:0];
  [self _addPropertyToActionMap:v3 name:@"importedByDisplayName" action:0];
  [self _addPropertyToActionMap:v3 name:@"importSessionID" action:0];
  [self _addPropertyToActionMap:v3 name:@"inferredTimeZoneOffset" action:0];
  [self _addPropertyToActionMap:v3 name:@"lastUploadAttemptDate" action:0];
  [self _addPropertyToActionMap:v3 name:@"lastViewedDate" action:0];
  [self _addPropertyToActionMap:v3 name:@"libraryScopeAssetContributorsToUpdate" action:0];
  [self _addPropertyToActionMap:v3 name:@"locationHash" action:0];
  [self _addPropertyToActionMap:v3 name:@"mediaMetadata" action:0];
  [self _addPropertyToActionMap:v3 name:@"montage" action:0];
  [self _addPropertyToActionMap:v3 name:@"objectSaliencyRectsData" action:0];
  [self _addPropertyToActionMap:v3 name:@"originalAssetsUUID" action:0];
  [self _addPropertyToActionMap:v3 name:@"originalFilename" action:0];
  [self _addPropertyToActionMap:v3 name:@"pendingPlayCount" action:0];
  [self _addPropertyToActionMap:v3 name:@"pendingShareCount" action:0];
  [self _addPropertyToActionMap:v3 name:@"pendingViewCount" action:0];
  [self _addPropertyToActionMap:v3 name:@"photoStreamTagId" action:0];
  [self _addPropertyToActionMap:v3 name:@"placeAnnotationData" action:0];
  [self _addPropertyToActionMap:v3 name:@"playCount" action:0];
  [self _addPropertyToActionMap:v3 name:@"ptpTrashedState" action:0];
  [self _addPropertyToActionMap:v3 name:@"publicGlobalUUID" action:0];
  [self _addPropertyToActionMap:v3 name:@"reverseLocationData" action:0];
  [self _addPropertyToActionMap:v3 name:@"reverseLocationDataIsValid" action:0];
  [self _addPropertyToActionMap:v3 name:@"sceneAnalysisIsFromPreview" action:0];
  [self _addPropertyToActionMap:v3 name:@"sceneAnalysisTimestamp" action:0];
  [self _addPropertyToActionMap:v3 name:@"sceneAnalysisVersion" action:0];
  [self _addPropertyToActionMap:v3 name:@"shareCount" action:0];
  [self _addPropertyToActionMap:v3 name:@"shareOriginator" action:0];
  [self _addPropertyToActionMap:v3 name:@"shareType" action:0];
  [self _addPropertyToActionMap:v3 name:@"shiftedLocationData" action:0];
  [self _addPropertyToActionMap:v3 name:@"shiftedLocationIsValid" action:0];
  [self _addPropertyToActionMap:v3 name:@"sourceAssetForDuplicationIdentifier" action:0];
  [self _addPropertyToActionMap:v3 name:@"sourceAssetForDuplicationScopeIdentifier" action:0];
  [self _addPropertyToActionMap:v3 name:@"syndicationHistory" action:0];
  [self _addPropertyToActionMap:v3 name:@"syndicationIdentifier" action:0];
  [self _addPropertyToActionMap:v3 name:@"uploadAttempts" action:0];
  [self _addPropertyToActionMap:v3 name:@"variationSuggestionStates" action:0];
  [self _addPropertyToActionMap:v3 name:@"viewCount" action:0];
  [self _addPropertyToActionMap:v3 name:@"cloudViewPresentation" action:0];
  [self _addPropertyToActionMap:v3 name:@"asset" action:0];
  [self _addPropertyToActionMap:v3 name:@"assetDescription" action:0];
  [self _addPropertyToActionMap:v3 name:@"personReferences" action:0];
  [self _addPropertyToActionMap:v3 name:@"sceneClassifications" action:0];
  [self _addPropertyToActionMap:v3 name:@"sceneprint" action:0];
  [self _addPropertyToActionMap:v3 name:@"temporalSceneClassifications" action:0];
  [self _addPropertyToActionMap:v3 name:@"unmanagedAdjustment" action:0];

  return v3;
}

+ (id)_assetMergePropertyMap
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [self _addPropertyToActionMap:v3 name:@"depthType" action:1];
  [self _addPropertyToActionMap:v3 name:@"hdrGain" action:1];
  [self _addPropertyToActionMap:v3 name:@"hdrType" action:1];
  [self _addPropertyToActionMap:v3 name:@"height" action:1];
  [self _addPropertyToActionMap:v3 name:@"imageRequestHints" action:1];
  [self _addPropertyToActionMap:v3 name:@"kind" action:1];
  [self _addPropertyToActionMap:v3 name:@"kindSubtype" action:1];
  [self _addPropertyToActionMap:v3 name:@"mediaGroupUUID" action:1];
  [self _addPropertyToActionMap:v3 name:@"orientation" action:1];
  [self _addPropertyToActionMap:v3 name:@"overallAestheticScore" action:1];
  [self _addPropertyToActionMap:v3 name:@"packedAcceptableCropRect" action:1];
  [self _addPropertyToActionMap:v3 name:@"packedBadgeAttributes" action:1];
  [self _addPropertyToActionMap:v3 name:@"packedPreferredCropRect" action:1];
  [self _addPropertyToActionMap:v3 name:@"playbackStyle" action:1];
  [self _addPropertyToActionMap:v3 name:@"playbackVariation" action:1];
  [self _addPropertyToActionMap:v3 name:@"RAWBadgeAttribute" action:1];
  [self _addPropertyToActionMap:v3 name:@"savedAssetType" action:1];
  [self _addPropertyToActionMap:v3 name:@"uniformTypeIdentifier" action:1];
  [self _addPropertyToActionMap:v3 name:@"videoCpDurationValue" action:1];
  [self _addPropertyToActionMap:v3 name:@"videoCpVisibilityState" action:1];
  [self _addPropertyToActionMap:v3 name:@"videoDeferredProcessingNeeded" action:1];
  [self _addPropertyToActionMap:v3 name:@"videoKeyFrameTimeScale" action:1];
  [self _addPropertyToActionMap:v3 name:@"videoKeyFrameValue" action:1];
  [self _addPropertyToActionMap:v3 name:@"visibilityState" action:1];
  [self _addPropertyToActionMap:v3 name:@"width" action:1];
  [self _addPropertyToActionMap:v3 name:@"stickerConfidenceScore" action:1];
  [self _addPropertyToActionMap:v3 name:@"albums" action:2];
  [self _addPropertyToActionMap:v3 name:@"favorite" action:2];
  [self _addPropertyToActionMap:v3 name:@"memoriesBeingCuratedAssets" action:2];
  [self _addPropertyToActionMap:v3 name:@"memoriesBeingCustomUserAssets" action:2];
  [self _addPropertyToActionMap:v3 name:@"memoriesBeingExtendedCuratedAssets" action:2];
  [self _addPropertyToActionMap:v3 name:@"memoriesBeingMovieCuratedAssets" action:2];
  [self _addPropertyToActionMap:v3 name:@"memoriesBeingRepresentativeAssets" action:2];
  [self _addPropertyToActionMap:v3 name:@"memoriesBeingUserCuratedAssets" action:2];
  [self _addPropertyToActionMap:v3 name:@"memoriesBeingKeyAsset" action:0];
  [self _addPropertyToActionMap:v3 name:@"memoriesBeingUserRemovedAssets" action:0];
  [self _addPropertyToActionMap:v3 name:@"dateCreated" action:3];
  [self _addPropertyToActionMap:v3 name:@"extendedAttributes" action:3];
  [self _addPropertyToActionMap:v3 name:@"currentSleetCast" action:3];
  [self _addPropertyToActionMap:v3 name:@"activeLibraryScopeParticipationState" action:0];
  [self _addPropertyToActionMap:v3 name:@"addedDate" action:0];
  [self _addPropertyToActionMap:v3 name:@"adjustmentTimestamp" action:0];
  [self _addPropertyToActionMap:v3 name:@"adjustmentsState" action:0];
  [self _addPropertyToActionMap:v3 name:@"albumAssociativity" action:0];
  [self _addPropertyToActionMap:v3 name:@"analysisStateModificationDate" action:0];
  [self _addPropertyToActionMap:v3 name:@"avalanchePickType" action:0];
  [self _addPropertyToActionMap:v3 name:@"avalancheKind" action:0];
  [self _addPropertyToActionMap:v3 name:@"avalancheUUID" action:0];
  [self _addPropertyToActionMap:v3 name:@"boundedByRect" action:0];
  [self _addPropertyToActionMap:v3 name:@"bundleScope" action:0];
  [self _addPropertyToActionMap:v3 name:@"cameraProcessingAdjustmentState" action:0];
  [self _addPropertyToActionMap:v3 name:@"cloudAssetGUID" action:0];
  [self _addPropertyToActionMap:v3 name:@"cloudBatchID" action:0];
  [self _addPropertyToActionMap:v3 name:@"cloudBatchPublishDate" action:0];
  [self _addPropertyToActionMap:v3 name:@"cloudCollectionGUID" action:0];
  [self _addPropertyToActionMap:v3 name:@"cloudDeleteState" action:0];
  [self _addPropertyToActionMap:v3 name:@"cloudDownloadRequests" action:0];
  [self _addPropertyToActionMap:v3 name:@"cloudHasCommentsByMe" action:0];
  [self _addPropertyToActionMap:v3 name:@"cloudHasCommentsConversation" action:0];
  [self _addPropertyToActionMap:v3 name:@"cloudHasUnseenComments" action:0];
  [self _addPropertyToActionMap:v3 name:@"cloudIsDeletable" action:0];
  [self _addPropertyToActionMap:v3 name:@"cloudIsMyAsset" action:0];
  [self _addPropertyToActionMap:v3 name:@"cloudLastViewedCommentDate" action:0];
  [self _addPropertyToActionMap:v3 name:@"cloudLocalState" action:0];
  [self _addPropertyToActionMap:v3 name:@"cloudOwnerHashedPersonID" action:0];
  [self _addPropertyToActionMap:v3 name:@"cloudServerPublishDate" action:0];
  [self _addPropertyToActionMap:v3 name:@"complete" action:0];
  [self _addPropertyToActionMap:v3 name:@"curationScore" action:0];
  [self _addPropertyToActionMap:v3 name:@"deferredProcessingNeeded" action:0];
  [self _addPropertyToActionMap:v3 name:@"deleteReason" action:0];
  [self _addPropertyToActionMap:v3 name:@"derivedCameraCaptureDevice" action:0];
  [self _addPropertyToActionMap:v3 name:@"directory" action:0];
  [self _addPropertyToActionMap:v3 name:@"duplicateAssetVisibilityState" action:0];
  [self _addPropertyToActionMap:v3 name:@"duration" action:0];
  [self _addPropertyToActionMap:v3 name:@"faceAdjustmentVersion" action:0];
  [self _addPropertyToActionMap:v3 name:@"faceAreaPoints" action:0];
  [self _addPropertyToActionMap:v3 name:@"filename" action:0];
  [self _addPropertyToActionMap:v3 name:@"hidden" action:0];
  [self _addPropertyToActionMap:v3 name:@"highFrameRateState" action:0];
  [self _addPropertyToActionMap:v3 name:@"highlightVisibilityScore" action:0];
  [self _addPropertyToActionMap:v3 name:@"iconicScore" action:0];
  [self _addPropertyToActionMap:v3 name:@"isMagicCarpet" action:0];
  [self _addPropertyToActionMap:v3 name:@"lastSharedDate" action:0];
  [self _addPropertyToActionMap:v3 name:@"latitude" action:0];
  [self _addPropertyToActionMap:v3 name:@"libraryScopeShareState" action:0];
  [self _addPropertyToActionMap:v3 name:@"locationData" action:0];
  [self _addPropertyToActionMap:v3 name:@"longitude" action:0];
  [self _addPropertyToActionMap:v3 name:@"modificationDate" action:0];
  [self _addPropertyToActionMap:v3 name:@"spatialType" action:0];
  [self _addPropertyToActionMap:v3 name:@"originalColorSpace" action:0];
  [self _addPropertyToActionMap:v3 name:@"promotionScore" action:0];
  [self _addPropertyToActionMap:v3 name:@"searchIndexRebuildState" action:0];
  [self _addPropertyToActionMap:v3 name:@"sortToken" action:0];
  [self _addPropertyToActionMap:v3 name:@"syndicationState" action:0];
  [self _addPropertyToActionMap:v3 name:@"thumbnailIndex" action:0];
  [self _addPropertyToActionMap:v3 name:@"trashedDate" action:0];
  [self _addPropertyToActionMap:v3 name:@"trashedReason" action:0];
  [self _addPropertyToActionMap:v3 name:@"trashedState" action:0];
  [self _addPropertyToActionMap:v3 name:@"uuid" action:0];
  [self _addPropertyToActionMap:v3 name:@"isDetectedScreenshot" action:0];
  [self _addPropertyToActionMap:v3 name:@"captureSessionIdentifier" action:0];
  [self _addPropertyToActionMap:v3 name:@"isRecentlySaved" action:0];
  [self _addPropertyToActionMap:v3 name:@"proxyState" action:0];
  [self _addPropertyToActionMap:v3 name:@"generativeMemoryCreationEligibilityState" action:0];
  [self _addPropertyToActionMap:v3 name:@"compactSCSensitivityAnalysis" action:0];
  [self _addPropertyToActionMap:v3 name:@"additionalAttributes" action:0];
  [self _addPropertyToActionMap:v3 name:@"albumsBeingCustomKeyAsset" action:0];
  [self _addPropertyToActionMap:v3 name:@"albumsBeingKeyAssets" action:0];
  [self _addPropertyToActionMap:v3 name:@"analysisStates" action:0];
  [self _addPropertyToActionMap:v3 name:@"cloudComments" action:0];
  [self _addPropertyToActionMap:v3 name:@"cloudFeedAssetsEntry" action:0];
  [self _addPropertyToActionMap:v3 name:@"computedAttributes" action:0];
  [self _addPropertyToActionMap:v3 name:@"conversation" action:0];
  [self _addPropertyToActionMap:v3 name:@"dayGroupHighlightBeingAssets" action:0];
  [self _addPropertyToActionMap:v3 name:@"dayGroupHighlightBeingExtendedAssets" action:0];
  [self _addPropertyToActionMap:v3 name:@"dayGroupHighlightBeingKeyAssetPrivate" action:0];
  [self _addPropertyToActionMap:v3 name:@"dayGroupHighlightBeingKeyAssetShared" action:0];
  [self _addPropertyToActionMap:v3 name:@"dayGroupHighlightBeingSummaryAssets" action:0];
  [self _addPropertyToActionMap:v3 name:@"detectedFaces" action:0];
  [self _addPropertyToActionMap:v3 name:@"detectedTorsos" action:0];
  [self _addPropertyToActionMap:v3 name:@"duplicateMetadataMatchingAlbum" action:0];
  [self _addPropertyToActionMap:v3 name:@"duplicatePerceptualMatchingAlbum" action:0];
  [self _addPropertyToActionMap:v3 name:@"faceCrops" action:0];
  [self _addPropertyToActionMap:v3 name:@"highlightBeingAssets" action:0];
  [self _addPropertyToActionMap:v3 name:@"highlightBeingExtendedAssets" action:0];
  [self _addPropertyToActionMap:v3 name:@"dayHighlightBeingCollageAssetsPrivate" action:0];
  [self _addPropertyToActionMap:v3 name:@"dayHighlightBeingCollageAssetsShared" action:0];
  [self _addPropertyToActionMap:v3 name:@"dayHighlightBeingCollageAssetsMixed" action:0];
  [self _addPropertyToActionMap:v3 name:@"highlightBeingKeyAssetPrivate" action:0];
  [self _addPropertyToActionMap:v3 name:@"highlightBeingKeyAssetShared" action:0];
  [self _addPropertyToActionMap:v3 name:@"highlightBeingSummaryAssets" action:0];
  [self _addPropertyToActionMap:v3 name:@"importSession" action:0];
  [self _addPropertyToActionMap:v3 name:@"legacyFaces" action:0];
  [self _addPropertyToActionMap:v3 name:@"libraryScope" action:0];
  [self _addPropertyToActionMap:v3 name:@"collectionShare" action:0];
  [self _addPropertyToActionMap:v3 name:@"libraryScopeAssetContributors" action:0];
  [self _addPropertyToActionMap:v3 name:@"collectionShareAssetContributor" action:0];
  [self _addPropertyToActionMap:v3 name:@"collectionShareContributor" action:0];
  [self _addPropertyToActionMap:v3 name:@"likeComments" action:0];
  [self _addPropertyToActionMap:v3 name:@"master" action:0];
  [self _addPropertyToActionMap:v3 name:@"mediaAnalysisAttributes" action:0];
  [self _addPropertyToActionMap:v3 name:@"computeSyncAttributes" action:0];
  [self _addPropertyToActionMap:v3 name:@"modernResources" action:0];
  [self _addPropertyToActionMap:v3 name:@"moment" action:0];
  [self _addPropertyToActionMap:v3 name:@"momentShare" action:0];
  [self _addPropertyToActionMap:v3 name:@"monthHighlightBeingKeyAssetPrivate" action:0];
  [self _addPropertyToActionMap:v3 name:@"monthHighlightBeingKeyAssetShared" action:0];
  [self _addPropertyToActionMap:v3 name:@"photoAnalysisAttributes" action:0];
  [self _addPropertyToActionMap:v3 name:@"resources" action:0];
  [self _addPropertyToActionMap:v3 name:@"suggestionsBeingKeyAssets" action:0];
  [self _addPropertyToActionMap:v3 name:@"suggestionsBeingRepresentativeAssets" action:0];
  [self _addPropertyToActionMap:v3 name:@"temporalDetectedFaces" action:0];
  [self _addPropertyToActionMap:v3 name:@"trashedByParticipant" action:0];
  [self _addPropertyToActionMap:v3 name:@"yearHighlightBeingKeyAssetPrivate" action:0];
  [self _addPropertyToActionMap:v3 name:@"yearHighlightBeingKeyAssetShared" action:0];

  return v3;
}

+ (id)_mergePropertyMap
{
  v12[3] = *MEMORY[0x1E69E9840];
  v3 = +[PLManagedAsset entityName];
  v11[0] = v3;
  _assetMergePropertyMap = [self _assetMergePropertyMap];
  v12[0] = _assetMergePropertyMap;
  v5 = +[PLAdditionalAssetAttributes entityName];
  v11[1] = v5;
  _additionalAssetAttributesMergePropertyMap = [self _additionalAssetAttributesMergePropertyMap];
  v12[1] = _additionalAssetAttributesMergePropertyMap;
  v7 = +[PLAssetDescription entityName];
  v11[2] = v7;
  _assetDescriptionMergePropertyMap = [self _assetDescriptionMergePropertyMap];
  v12[2] = _assetDescriptionMergePropertyMap;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:3];

  return v9;
}

@end