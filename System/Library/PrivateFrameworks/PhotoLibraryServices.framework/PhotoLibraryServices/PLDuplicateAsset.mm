@interface PLDuplicateAsset
+ (BOOL)isDuplicateAssetSortChangedObject:(id)a3;
+ (id)relationshipKeyPathsForMergePrefetching;
+ (id)relationshipKeyPathsForPrefetching;
- (BOOL)_validCPLAssetsWithAssets:(id)a3;
- (BOOL)hasModifiedUserDateCreated;
- (BOOL)hasModifiedUserLocation;
- (BOOL)hasModifiedUserTimezone;
- (BOOL)hasModifiedUserTitle;
- (BOOL)isCPLEnabled;
- (PLDuplicateAsset)initWithAsset:(id)a3 cloudScopedIdentifier:(id)a4 enableEXIFDataAccess:(BOOL)a5;
- (PLDuplicateAssetScoreTuple)_compareResourcesAdditionalChecksFromOther:(id)a3;
- (PLDuplicateAssetScoreTuple)_compareResourcesMatchingKindSubtypeCheckFromOther:(id)a3 error:(id *)a4;
- (PLDuplicateAssetScoreTuple)_compareResourcesMatchingPlaybackStyleAndKindSubTypeCheckFromOther:(id)a3;
- (PLDuplicateAssetScoreTuple)_compareResourcesMatchingPlaybackStyleCheckFromOther:(id)a3 error:(id *)a4;
- (PLDuplicateAssetScoreTuple)_compareResourcesNotMatchingPlaybackStyleAndKindSubTypeCheckFromOther:(id)a3 error:(id *)a4;
- (id)_additionalDescriptionDictionaryWithPIIDetails:(BOOL)a3;
- (id)_additionalDescriptionState:(id)a3;
- (id)_additionalDescriptionWithPIIDetails:(BOOL)a3;
- (id)debugDescription;
- (id)duplicateAssetVisibilityStateString;
- (int64_t)_buildBaseScore;
- (int64_t)_buildUserModifiedScore;
- (int64_t)_correctedCompareDate:(id)a3 otherDate:(id)a4;
- (int64_t)compare:(id)a3 enabledMergeComparison:(BOOL)a4;
- (int64_t)compareResource:(id)a3 error:(id *)a4;
- (int64_t)score;
- (signed)_calculateDuplicateAssetVisibilityState;
- (void)_compareResourceReverseCheckFromOther:(id)a3 score:(PLDuplicateAssetScoreTuple *)a4;
- (void)_compareResourceTIFFCheckFromAsset:(id)a3 other:(id)a4 scoreProperty:(signed __int16 *)a5;
- (void)_compareResourcesResetPropertiesWithOther:(id)a3;
- (void)_compareUTICheckFromOther:(id)a3 scoreTuple:(PLDuplicateAssetScoreTuple *)a4;
- (void)_configureInitPropertiesWithAsset:(id)a3;
- (void)_fileFormatIncrementScore:(int64_t *)a3;
- (void)_mergeComparisonScoreModifierWithOtherAsset:(id)a3 score:(int64_t *)a4 otherScore:(int64_t *)a5;
- (void)_tieBreakerComparisonScoreWithOtherAsset:(id)a3 score:(int64_t *)a4 otherScore:(int64_t *)a5;
- (void)_updateScoreOnCondition:(BOOL)a3 incrementOtherScore:(BOOL)a4 scoreTuple:(PLDuplicateAssetScoreTuple *)a5 other:(id)a6 propertyName:(id)a7 additionalLogString:(id)a8;
- (void)_updateScoresUsingLatestDateWithDate:(id)a3 otherDate:(id)a4 score:(int64_t *)a5 otherScore:(int64_t *)a6;
- (void)setMergeStatus:(int64_t)a3;
@end

@implementation PLDuplicateAsset

- (void)_fileFormatIncrementScore:(int64_t *)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = [(PLDuplicateAsset *)self asset];
  if (([v5 isJPEG] & 1) == 0)
  {
    if ([v5 isHEIF])
    {
      ++*a3;
      v6 = PLDuplicateDetectionGetLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        v7 = [(PLDuplicateAsset *)self shortDescription];
        v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Duplicate Asset: [%@] score incremented to %td", v7, *a3];
        v9 = _PLDuplicateAssetLogString(v8, @"uniformTypeIdentifier", @"HEIF");

        *buf = 138543362;
        v25 = v9;
LABEL_8:
        _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);

LABEL_9:
      }
    }

    else
    {
      v10 = [(PLDuplicateAsset *)self asset];
      v11 = [v10 RAWBadgeAttribute];

      if (!v11)
      {
        v13 = MEMORY[0x1E69C08F0];
        v14 = [v5 uniformTypeIdentifier];
        v6 = [v13 typeWithIdentifier:v14];

        v15 = [MEMORY[0x1E69C08F0] canonTIFFRAWImageType];
        v16 = [v6 isEqual:v15];

        if (v16)
        {
          *a3 += 2;
          v9 = PLDuplicateDetectionGetLog();
          if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_9;
          }

          v17 = [(PLDuplicateAsset *)self shortDescription];
          v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Duplicate Asset: [%@] score incremented to %td", v17, *a3];
          v19 = _PLDuplicateAssetLogString(v18, @"uniformTypeIdentifier", @"TIFFRaw");

          *buf = 138543362;
          v25 = v19;
        }

        else
        {
          v20 = [MEMORY[0x1E69C08F0] adobePhotoshopType];
          if ([v6 isEqual:v20])
          {
          }

          else
          {
            v21 = [MEMORY[0x1E69C08F0] adobeIllustratorType];
            v22 = [v6 isEqual:v21];

            if (!v22)
            {
              goto LABEL_10;
            }
          }

          *a3 += 3;
          v9 = PLDuplicateDetectionGetLog();
          if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_9;
          }

          v17 = [(PLDuplicateAsset *)self shortDescription];
          v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Duplicate Asset: [%@] score incremented to %td", v17, *a3];
          v19 = _PLDuplicateAssetLogString(v23, @"uniformTypeIdentifier", @"Adobe");

          *buf = 138543362;
          v25 = v19;
        }

        _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);

        goto LABEL_9;
      }

      *a3 += 4;
      v6 = PLDuplicateDetectionGetLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        v7 = [(PLDuplicateAsset *)self shortDescription];
        v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Duplicate Asset: [%@] score incremented to %td", v7, *a3];
        v9 = _PLDuplicateAssetLogString(v12, @"packedBadgeAttributes", @"RAWBadgeAttributes");

        *buf = 138543362;
        v25 = v9;
        goto LABEL_8;
      }
    }

LABEL_10:
  }
}

- (int64_t)_buildUserModifiedScore
{
  v39 = *MEMORY[0x1E69E9840];
  v3 = [(PLDuplicateAsset *)self asset];
  v4 = [v3 additionalAttributes];
  if ([(PLDuplicateAsset *)self hasModifiedUserTitle])
  {
    v5 = [v4 title];
    v6 = [v4 originalFilename];
    if ([v5 isEqualToString:v6])
    {
      v7 = 5;
    }

    else
    {
      v7 = 10;
    }

    v8 = PLDuplicateDetectionGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v9 = [(PLDuplicateAsset *)self shortDescription];
      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Duplicate Asset: [%@] score incremented to %td", v9, v7];
      v11 = _PLDuplicateAssetLogString(v10, @"title", 0);

      *buf = 138543362;
      v38 = v11;
      _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
    }
  }

  else
  {
    v7 = 0;
  }

  v12 = [v4 assetDescription];
  v13 = [v12 longDescription];

  if (v13)
  {
    v7 += 5;
    v14 = PLDuplicateDetectionGetLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v15 = [(PLDuplicateAsset *)self shortDescription];
      v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Duplicate Asset: [%@] score incremented to %td", v15, v7];
      v17 = _PLDuplicateAssetLogString(v16, @"longDescription", 0);

      *buf = 138543362;
      v38 = v17;
      _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
    }
  }

  v18 = [v4 keywords];
  v19 = [v18 count];

  if (v19 >= 1)
  {
    v7 += 5 * v19;
    v20 = PLDuplicateDetectionGetLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      v21 = [(PLDuplicateAsset *)self shortDescription];
      v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Duplicate Asset: [%@] score incremented to %td", v21, v7];
      v23 = _PLDuplicateAssetLogString(v22, @"keywords", 0);

      *buf = 138543362;
      v38 = v23;
      _os_log_impl(&dword_19BF1F000, v20, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
    }
  }

  if ([(PLDuplicateAsset *)self hasModifiedUserLocation])
  {
    v7 += 10;
    v24 = PLDuplicateDetectionGetLog();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      v25 = [(PLDuplicateAsset *)self shortDescription];
      v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Duplicate Asset: [%@] score incremented to %td", v25, v7];
      v27 = _PLDuplicateAssetLogString(v26, @"location", 0);

      *buf = 138543362;
      v38 = v27;
      _os_log_impl(&dword_19BF1F000, v24, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
    }
  }

  if ([(PLDuplicateAsset *)self hasModifiedUserDateCreated])
  {
    v7 += 10;
    v28 = PLDuplicateDetectionGetLog();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
    {
      v29 = [(PLDuplicateAsset *)self shortDescription];
      v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Duplicate Asset: [%@] score incremented to %td", v29, v7];
      v31 = _PLDuplicateAssetLogString(v30, @"dateCreated", 0);

      *buf = 138543362;
      v38 = v31;
      _os_log_impl(&dword_19BF1F000, v28, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
    }
  }

  if ([(PLDuplicateAsset *)self hasModifiedUserTimezone])
  {
    v7 += 10;
    v32 = PLDuplicateDetectionGetLog();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
    {
      v33 = [(PLDuplicateAsset *)self shortDescription];
      v34 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Duplicate Asset: [%@] score incremented to %td", v33, v7];
      v35 = _PLDuplicateAssetLogString(v34, @"timeZoneOffset", 0);

      *buf = 138543362;
      v38 = v35;
      _os_log_impl(&dword_19BF1F000, v32, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
    }
  }

  return v7;
}

- (int64_t)_buildBaseScore
{
  v56 = *MEMORY[0x1E69E9840];
  v3 = [(PLDuplicateAsset *)self _buildUserModifiedScore];
  v51 = v3;
  v4 = [(PLDuplicateAsset *)self asset];
  v5 = [v4 hasAdjustments];

  if (v5)
  {
    v3 += 15;
    v51 = v3;
    v6 = PLDuplicateDetectionGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v7 = [(PLDuplicateAsset *)self shortDescription];
      v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Duplicate Asset: [%@] score incremented to %td", v7, v3];
      v9 = _PLDuplicateAssetLogString(v8, @"adjustmentsState", 0);

      *buf = 138543362;
      v53 = v9;
      _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
    }
  }

  v10 = [(PLDuplicateAsset *)self asset];
  v11 = [v10 favorite];

  if (v11)
  {
    v3 += 20;
    v51 = v3;
    v12 = PLDuplicateDetectionGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v13 = [(PLDuplicateAsset *)self shortDescription];
      v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Duplicate Asset: [%@] score incremented to %td", v13, v3];
      v15 = _PLDuplicateAssetLogString(v14, @"favorite", 0);

      *buf = 138543362;
      v53 = v15;
      _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
    }
  }

  v16 = [(PLDuplicateAsset *)self asset];
  v17 = [v16 additionalAttributes];
  v18 = [v17 importedBy];

  if (v18 <= 0xF)
  {
    if (((1 << v18) & 0x2360) != 0)
    {
      v3 += 10;
      v51 = v3;
      v19 = PLDuplicateDetectionGetLog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_18;
      }
    }

    else
    {
      if (((1 << v18) & 0x16) == 0)
      {
        if (((1 << v18) & 0x8088) == 0)
        {
          goto LABEL_20;
        }

        v3 += 5;
        v51 = v3;
        v19 = PLDuplicateDetectionGetLog();
        if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_19;
        }

        goto LABEL_18;
      }

      v3 += 15;
      v51 = v3;
      v19 = PLDuplicateDetectionGetLog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
LABEL_18:
        v20 = [(PLDuplicateAsset *)self shortDescription];
        v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Duplicate Asset: [%@] score incremented to %td", v20, v3];
        v22 = _PLDuplicateAssetLogString(v21, @"importedBy", 0);

        *buf = 138543362;
        v53 = v22;
        _os_log_impl(&dword_19BF1F000, v19, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
      }
    }

LABEL_19:
  }

LABEL_20:
  v23 = [(PLDuplicateAsset *)self asset];
  v24 = [v23 playbackStyle];

  if (v24 > 3)
  {
    if ((v24 - 4) >= 2)
    {
      goto LABEL_34;
    }
  }

  else
  {
    if (v24 == 1)
    {
      [(PLDuplicateAsset *)self _fileFormatIncrementScore:&v51];
      v51 += 10;
      v25 = PLDuplicateDetectionGetLog();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_27;
      }

      goto LABEL_33;
    }

    if (v24 == 2)
    {
      v51 = v3 + 5;
      v25 = PLDuplicateDetectionGetLog();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        v26 = [(PLDuplicateAsset *)self shortDescription];
        v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Duplicate Asset: [%@] score incremented to %td", v26, v51];
        v28 = _PLDuplicateAssetLogString(v29, @"playbackStyle", 0);

        *buf = 138543362;
        v53 = v28;
        goto LABEL_32;
      }

      goto LABEL_33;
    }

    if (v24 != 3)
    {
      goto LABEL_34;
    }

    [(PLDuplicateAsset *)self _fileFormatIncrementScore:&v51];
    v3 = v51;
  }

  v51 = v3 + 15;
  v25 = PLDuplicateDetectionGetLog();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
  {
LABEL_27:
    v26 = [(PLDuplicateAsset *)self shortDescription];
    v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Duplicate Asset: [%@] score incremented to %td", v26, v51];
    v28 = _PLDuplicateAssetLogString(v27, @"playbackStyle", 0);

    *buf = 138543362;
    v53 = v28;
LABEL_32:
    _os_log_impl(&dword_19BF1F000, v25, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
  }

LABEL_33:

LABEL_34:
  v30 = [(PLDuplicateAsset *)self asset];
  v31 = [v30 hdrType];

  if (v31 >= 1)
  {
    v51 += 5;
    v32 = PLDuplicateDetectionGetLog();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
    {
      v33 = [(PLDuplicateAsset *)self shortDescription];
      v34 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Duplicate Asset: [%@] score incremented to %td", v33, v51];
      v35 = _PLDuplicateAssetLogString(v34, @"hdrType", 0);

      *buf = 138543362;
      v53 = v35;
      _os_log_impl(&dword_19BF1F000, v32, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
    }
  }

  v36 = [(PLDuplicateAsset *)self asset];
  v37 = [v36 kindSubtype];

  if (v37 - 101 <= 3 && v37 != 103 || v37 < 3u)
  {
    v51 += 5;
    v38 = PLDuplicateDetectionGetLog();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
    {
      v39 = [(PLDuplicateAsset *)self shortDescription];
      v40 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Duplicate Asset: [%@] score incremented to %td", v39, v51];
      v41 = _PLDuplicateAssetLogString(v40, @"kindSubtype", 0);

      *buf = 138543362;
      v53 = v41;
      _os_log_impl(&dword_19BF1F000, v38, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
    }
  }

  v42 = [(PLDuplicateAsset *)self asset];
  [v42 savedAssetType];

  [MEMORY[0x1E69BF328] maskForFinderSyncedAsset];
  if ((PLValidatedSavedAssetTypeApplies() & 1) != 0 || ([MEMORY[0x1E69BF328] maskForReferencedAsset], PLValidatedSavedAssetTypeApplies()))
  {
    v51 = 0;
    v43 = PLDuplicateDetectionGetLog();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
    {
      v44 = [(PLDuplicateAsset *)self shortDescription];
      v45 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Duplicate Asset: [%@] score incremented to %td", v44, v51];
      v46 = _PLDuplicateAssetLogString(v45, @"savedAssetType", @"Score was invalidated");

      *buf = 138543362;
      v53 = v46;
      _os_log_impl(&dword_19BF1F000, v43, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
    }

    v47 = PLDuplicateDetectionGetLog();
    if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
    {
      v48 = PLValidatedSavedAssetTypeDescription();
      v49 = [(PLDuplicateAsset *)self shortDescription];
      *buf = 138543618;
      v53 = v48;
      v54 = 2114;
      v55 = v49;
      _os_log_impl(&dword_19BF1F000, v47, OS_LOG_TYPE_INFO, "Duplicate Asset: reset score to 0 based on savedAssetType: %{public}@ [%{public}@]", buf, 0x16u);
    }
  }

  return v51;
}

- (void)_compareResourcesResetPropertiesWithOther:(id)a3
{
  v4 = a3;
  [(PLDuplicateAsset *)self setResourceComparisonPropertyUpdateLocation:0];
  [v4 setResourceComparisonPropertyUpdateLocation:0];
}

- (void)_compareResourceReverseCheckFromOther:(id)a3 score:(PLDuplicateAssetScoreTuple *)a4
{
  v42 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 asset];
  v8 = [(PLDuplicateAsset *)self asset];
  v9 = [v8 additionalAttributes];
  v10 = [v9 originatingAssetIdentifier];

  v11 = [v7 additionalAttributes];
  v12 = [v11 originatingAssetIdentifier];

  if ((v10 == 0) == (v12 != 0))
  {
    v13 = [v8 additionalAttributes];
    v14 = [v13 originalStableHash];

    v15 = [v7 additionalAttributes];
    v16 = [v15 originalStableHash];

    if (([v10 isEqualToString:v16] & 1) == 0 && !objc_msgSend(v12, "isEqualToString:", v14))
    {
      goto LABEL_20;
    }

    v38 = v16;
    v39 = v14;
    v37 = v8;
    v17 = *a4;
    v18 = [MEMORY[0x1E696AD98] numberWithShort:a4->var0];
    v19 = [MEMORY[0x1E696AD98] numberWithShort:(*&v17 >> 16)];
    v20 = [v18 compare:v19];

    if (v20 == -1)
    {
      v16 = v38;
      v14 = v39;
      if (v12)
      {
        a4->var0 = a4->var1 + 5;
        v25 = PLDuplicateDetectionGetLog();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
        {
LABEL_11:
          v26 = [(PLDuplicateAsset *)self shortDescription];
          v27 = [v6 shortDescription];
          var0 = a4->var0;
          v29 = (*a4 >> 16);
          v30 = v26;
          v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Duplicate Asset: Resource comparisonScore [%d:%d][%@:%@]", var0, v29, v26, v27];
          v32 = _PLDuplicateAssetLogString(v31, @"originatingAssetIdentifier", @"reversed");

          v14 = v39;
          *buf = 138543362;
          v41 = v32;
          _os_log_impl(&dword_19BF1F000, v25, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);

LABEL_18:
          v16 = v38;
        }

LABEL_19:
      }

LABEL_20:

      goto LABEL_21;
    }

    v21 = *a4;
    v22 = [MEMORY[0x1E696AD98] numberWithShort:a4->var0];
    v23 = [MEMORY[0x1E696AD98] numberWithShort:(*&v21 >> 16)];
    v24 = [v22 compare:v23];

    if (v24)
    {
      v16 = v38;
      v14 = v39;
      if (v10)
      {
        a4->var1 = a4->var0 + 5;
        v25 = PLDuplicateDetectionGetLog();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_11;
        }

        goto LABEL_19;
      }

      goto LABEL_20;
    }

    if (v12)
    {
      a4->var0 = a4->var1 + 5;
      v25 = PLDuplicateDetectionGetLog();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_16;
      }
    }

    else
    {
      a4->var1 = a4->var0 + 5;
      v25 = PLDuplicateDetectionGetLog();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
LABEL_16:
        v33 = [(PLDuplicateAsset *)self shortDescription];
        v34 = [v6 shortDescription];
        v35 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Duplicate Asset: Resource comparisonScore [%d:%d][%@:%@]", a4->var0, (*a4 >> 16), v33, v34];
        v36 = _PLDuplicateAssetLogString(v35, @"originatingAssetIdentifier", @"reversed");

        *buf = 138543362;
        v41 = v36;
        _os_log_impl(&dword_19BF1F000, v25, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
      }
    }

    v8 = v37;
    v14 = v39;
    goto LABEL_18;
  }

LABEL_21:
}

- (void)_compareResourceTIFFCheckFromAsset:(id)a3 other:(id)a4 scoreProperty:(signed __int16 *)a5
{
  v7 = a4;
  v21 = [a3 asset];
  v8 = [v7 asset];

  v9 = [v8 additionalAttributes];
  v10 = [v9 dateCreatedSource];

  if ((v10 - 1) <= 1u)
  {
    v11 = [v8 extendedAttributes];
    v12 = [v11 dateCreated];

    if (v12)
    {
      v13 = [v21 extendedAttributes];
      v14 = [v13 dateCreated];

      if (v14)
      {
        v15 = [v8 extendedAttributes];
        v16 = [v15 dateCreated];
        v17 = [v21 extendedAttributes];
        v18 = [v17 dateCreated];
        [v16 timeIntervalSinceDate:v18];
        if (v19 >= 0.0)
        {
          v20 = 0;
        }

        else
        {
          v20 = 5;
        }

        *a5 = v20;
      }

      else
      {
        *a5 = 5;
      }
    }
  }
}

- (void)_updateScoreOnCondition:(BOOL)a3 incrementOtherScore:(BOOL)a4 scoreTuple:(PLDuplicateAssetScoreTuple *)a5 other:(id)a6 propertyName:(id)a7 additionalLogString:(id)a8
{
  v11 = a4;
  v12 = a3;
  v37 = *MEMORY[0x1E69E9840];
  v14 = a6;
  v15 = a7;
  v16 = a8;
  v17 = *a5;
  v18 = [MEMORY[0x1E696AD98] numberWithShort:a5->var0];
  v19 = [MEMORY[0x1E696AD98] numberWithShort:(*&v17 >> 16)];
  v20 = [v18 compare:v19];

  if (v20)
  {
    v21 = 1;
  }

  else
  {
    v21 = !v12;
  }

  if (!v21)
  {
    v22 = 2;
    if (!v11)
    {
      v22 = 0;
    }

    *(&a5->var0 + v22) = 5;
    v23 = PLDuplicateDetectionGetLog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      v24 = [(PLDuplicateAsset *)self shortDescription];
      [v14 shortDescription];
      v25 = v34 = v14;
      v26 = *a5;
      v27 = MEMORY[0x1E696AEC0];
      var0 = v26.var0;
      v29 = (*&v26 >> 16);
      v30 = v16;
      v31 = v15;
      v32 = [v27 stringWithFormat:@"Duplicate Asset: Resource comparisonScore [%d:%d][%@:%@]", var0, v29, v24, v25];
      v33 = _PLDuplicateAssetLogString(v32, v31, v30);

      *buf = 138543362;
      v36 = v33;
      _os_log_impl(&dword_19BF1F000, v23, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);

      v14 = v34;
    }
  }
}

- (void)_compareUTICheckFromOther:(id)a3 scoreTuple:(PLDuplicateAssetScoreTuple *)a4
{
  v36 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v33 = 0;
  v7 = [v6 asset];
  v8 = [(PLDuplicateAsset *)self asset];
  v9 = MEMORY[0x1E69C08F0];
  v10 = [v7 uniformTypeIdentifier];
  v11 = [v9 typeWithIdentifier:v10];

  v12 = MEMORY[0x1E69C08F0];
  v13 = [v8 uniformTypeIdentifier];
  v14 = [v12 typeWithIdentifier:v13];

  if ([v11 isEqual:v14])
  {
    goto LABEL_19;
  }

  if ([v7 isHEIF])
  {
    v15 = [v8 isJPEG];
  }

  else
  {
    v15 = 0;
  }

  [(PLDuplicateAsset *)self _updateScoreOnCondition:v15 incrementOtherScore:1 scoreTuple:&v33 other:v6 propertyName:@"UTI" additionalLogString:@"JPG:HEIF format"];
  if ([v8 isHEIF])
  {
    v16 = [v7 isJPEG];
  }

  else
  {
    v16 = 0;
  }

  [(PLDuplicateAsset *)self _updateScoreOnCondition:v16 incrementOtherScore:0 scoreTuple:&v33 other:v6 propertyName:@"UTI" additionalLogString:@"HEIF:JPG format"];
  v17 = [MEMORY[0x1E69C08F0] canonTIFFRAWImageType];
  -[PLDuplicateAsset _updateScoreOnCondition:incrementOtherScore:scoreTuple:other:propertyName:additionalLogString:](self, "_updateScoreOnCondition:incrementOtherScore:scoreTuple:other:propertyName:additionalLogString:", [v11 isEqual:v17], 1, &v33, v6, @"UTI", @"??:TIFF format");

  v18 = [MEMORY[0x1E69C08F0] canonTIFFRAWImageType];
  -[PLDuplicateAsset _updateScoreOnCondition:incrementOtherScore:scoreTuple:other:propertyName:additionalLogString:](self, "_updateScoreOnCondition:incrementOtherScore:scoreTuple:other:propertyName:additionalLogString:", [v14 isEqual:v18], 0, &v33, v6, @"UTI", @"TIFF:?? format");

  v19 = [MEMORY[0x1E69C08F0] adobePhotoshopType];
  -[PLDuplicateAsset _updateScoreOnCondition:incrementOtherScore:scoreTuple:other:propertyName:additionalLogString:](self, "_updateScoreOnCondition:incrementOtherScore:scoreTuple:other:propertyName:additionalLogString:", [v11 isEqual:v19], 1, &v33, v6, @"UTI", @"??:Photoshop format");

  v20 = [MEMORY[0x1E69C08F0] adobePhotoshopType];
  -[PLDuplicateAsset _updateScoreOnCondition:incrementOtherScore:scoreTuple:other:propertyName:additionalLogString:](self, "_updateScoreOnCondition:incrementOtherScore:scoreTuple:other:propertyName:additionalLogString:", [v14 isEqual:v20], 0, &v33, v6, @"UTI", @"Photoshop:?? format");

  v21 = [MEMORY[0x1E69C08F0] adobeIllustratorType];
  -[PLDuplicateAsset _updateScoreOnCondition:incrementOtherScore:scoreTuple:other:propertyName:additionalLogString:](self, "_updateScoreOnCondition:incrementOtherScore:scoreTuple:other:propertyName:additionalLogString:", [v11 isEqual:v21], 1, &v33, v6, @"UTI", @"??:Illustrator format");

  v22 = [MEMORY[0x1E69C08F0] adobeIllustratorType];
  -[PLDuplicateAsset _updateScoreOnCondition:incrementOtherScore:scoreTuple:other:propertyName:additionalLogString:](self, "_updateScoreOnCondition:incrementOtherScore:scoreTuple:other:propertyName:additionalLogString:", [v14 isEqual:v22], 0, &v33, v6, @"UTI", @"Illustrator:?? format");

  LODWORD(v22) = v33;
  v23 = [MEMORY[0x1E696AD98] numberWithShort:v33];
  v24 = [MEMORY[0x1E696AD98] numberWithShort:(v22 >> 16)];
  v25 = [v23 compare:v24];

  if (!v25)
  {
    v26 = *MEMORY[0x1E6983008];
    if ([v11 isEqual:*MEMORY[0x1E6983008]])
    {
      [(PLDuplicateAsset *)self _compareResourceTIFFCheckFromAsset:self other:v6 scoreProperty:&v33 + 2];
      v27 = PLDuplicateDetectionGetLog();
      if (!os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
      {
LABEL_16:

        goto LABEL_17;
      }

      v32 = [(PLDuplicateAsset *)self shortDescription];
      v28 = [v6 shortDescription];
      v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Duplicate Asset: Resource comparisonScore [%d:%d][%@:%@]", v33, (v33 >> 16), v32, v28];
      v30 = _PLDuplicateAssetLogString(v29, @"??:TIFF format", 0);

      *buf = 138543362;
      v35 = v30;
    }

    else
    {
      if (![v14 isEqual:v26])
      {
        goto LABEL_17;
      }

      [(PLDuplicateAsset *)self _compareResourceTIFFCheckFromAsset:v6 other:self scoreProperty:&v33];
      v27 = PLDuplicateDetectionGetLog();
      if (!os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_16;
      }

      v32 = [(PLDuplicateAsset *)self shortDescription];
      v28 = [v6 shortDescription];
      v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Duplicate Asset: Resource comparisonScore [%d:%d][%@:%@]", v33, (v33 >> 16), v32, v28];
      v30 = _PLDuplicateAssetLogString(v31, @"TIFF:?? format", 0);

      *buf = 138543362;
      v35 = v30;
    }

    _os_log_impl(&dword_19BF1F000, v27, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);

    goto LABEL_16;
  }

LABEL_17:
  if (a4)
  {
    a4->var0 += v33;
    a4->var1 += HIWORD(v33);
  }

LABEL_19:
}

- (PLDuplicateAssetScoreTuple)_compareResourcesAdditionalChecksFromOther:(id)a3
{
  v122 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v119 = 0;
  v5 = [v4 asset];
  v6 = [(PLDuplicateAsset *)self asset];
  v7 = [v4 originalResolution];
  v8 = 0;
  if (v7 != [(PLDuplicateAsset *)self originalResolution])
  {
    v9 = [v4 originalResolution];
    if (v9 <= [(PLDuplicateAsset *)self originalResolution])
    {
      LOWORD(v119) = 5;
    }

    else
    {
      HIWORD(v119) = 5;
    }

    v10 = PLDuplicateDetectionGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v11 = [(PLDuplicateAsset *)self shortDescription];
      v12 = [v4 shortDescription];
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Duplicate Asset: Resource comparisonScore [%d:%d][%@:%@]", v119, (v119 >> 16), v11, v12];
      v14 = _PLDuplicateAssetLogString(v13, @"resolution", 0);

      *buf = 138543362;
      v121 = v14;
      _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
    }

    v8 = v119;
  }

  v15 = [MEMORY[0x1E696AD98] numberWithShort:v8];
  v16 = [MEMORY[0x1E696AD98] numberWithShort:(v8 >> 16)];
  v17 = [v15 compare:v16];

  if (!v17)
  {
    v18 = [v5 kind];
    if (v18 == [v6 kind] && !objc_msgSend(v6, "kind"))
    {
      v19 = [v5 kindSubtype];
      if (v19 == [v6 kindSubtype] && objc_msgSend(v6, "kindSubtype") == 2)
      {
        v20 = [v5 firstPersistedResourceMatching:&__block_literal_global_222];
        v21 = [v6 firstPersistedResourceMatching:&__block_literal_global_224];
        v22 = [v20 unorientedWidth];
        v23 = [v20 unorientedHeight] * v22;
        v24 = [v21 unorientedWidth];
        v25 = [v21 unorientedHeight];
        if (v23 != v25 * v24)
        {
          if (v23 <= v25 * v24)
          {
            LOWORD(v119) = 5;
          }

          else
          {
            HIWORD(v119) = 5;
          }

          v26 = PLDuplicateDetectionGetLog();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
          {
            v117 = [(PLDuplicateAsset *)self shortDescription];
            v115 = [v4 shortDescription];
            v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Duplicate Asset: Resource comparisonScore [%d:%d][%@:%@]", v119, (v119 >> 16), v117, v115];
            v28 = _PLDuplicateAssetLogString(v27, @"videoComplementResolution", 0);

            *buf = 138543362;
            v121 = v28;
            _os_log_impl(&dword_19BF1F000, v26, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
          }
        }
      }
    }
  }

  v29 = [MEMORY[0x1E696AD98] numberWithShort:v119];
  v30 = [MEMORY[0x1E696AD98] numberWithShort:(v119 >> 16)];
  v31 = [v29 compare:v30];

  if (!v31)
  {
    v32 = [v5 additionalAttributes];
    v33 = [v32 originalStableHash];
    v34 = [v6 additionalAttributes];
    v35 = [v34 originatingAssetIdentifier];
    v36 = [v33 isEqualToString:v35];

    if (v36)
    {
      HIWORD(v119) = 5;
      v37 = PLDuplicateDetectionGetLog();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
      {
        v38 = [(PLDuplicateAsset *)self shortDescription];
        v39 = [v4 shortDescription];
        v40 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Duplicate Asset: Resource comparisonScore [%d:%d][%@:%@]", v119, (v119 >> 16), v38, v39];
        v41 = _PLDuplicateAssetLogString(v40, @"originatingAssetIdentifier", 0);

        *buf = 138543362;
        v121 = v41;
        _os_log_impl(&dword_19BF1F000, v37, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
      }
    }
  }

  v42 = [MEMORY[0x1E696AD98] numberWithShort:v119];
  v43 = [MEMORY[0x1E696AD98] numberWithShort:(v119 >> 16)];
  v44 = [v42 compare:v43];

  if (!v44)
  {
    v45 = MEMORY[0x1E69C08F0];
    v46 = [v6 uniformTypeIdentifier];
    v47 = [v45 typeWithIdentifier:v46];

    v48 = [v4 originalResolution];
    if (v48 != -[PLDuplicateAsset originalResolution](self, "originalResolution") || ([v47 conformsToType:*MEMORY[0x1E6982F88]] & 1) != 0 || (-[PLDuplicateAsset _compareUTICheckFromOther:scoreTuple:](self, "_compareUTICheckFromOther:scoreTuple:", v4, &v119), v49 = v119, objc_msgSend(MEMORY[0x1E696AD98], "numberWithShort:", v119), v50 = objc_claimAutoreleasedReturnValue(), objc_msgSend(MEMORY[0x1E696AD98], "numberWithShort:", (v49 >> 16)), v51 = objc_claimAutoreleasedReturnValue(), v52 = objc_msgSend(v50, "compare:", v51), v51, v50, v52))
    {
LABEL_94:

      goto LABEL_95;
    }

    if ([(PLDuplicateAsset *)self locationUpdated])
    {
LABEL_53:
      v77 = [v6 hasAdjustments];
      if (v77 != [v5 hasAdjustments])
      {
        if ([v6 hasAdjustments])
        {
          v78 = 5;
        }

        else
        {
          v78 = 0;
        }

        LOWORD(v119) = v78 + v119;
        if ([v5 hasAdjustments])
        {
          v79 = 5;
        }

        else
        {
          v79 = 0;
        }

        HIWORD(v119) += v79;
        v80 = PLDuplicateDetectionGetLog();
        if (os_log_type_enabled(v80, OS_LOG_TYPE_DEBUG))
        {
          v81 = [(PLDuplicateAsset *)self shortDescription];
          v82 = [v4 shortDescription];
          v83 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Duplicate Asset: Resource comparisonScore [%d:%d][%@:%@]", v119, (v119 >> 16), v81, v82];
          v84 = _PLDuplicateAssetLogString(v83, @"adjustments", 0);

          *buf = 138543362;
          v121 = v84;
          _os_log_impl(&dword_19BF1F000, v80, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
        }
      }

      v85 = [v6 hdrType];
      if (v85 != [v5 hdrType])
      {
        v86 = [v6 hdrType];
        if (v86 <= [v5 hdrType])
        {
          v87 = 0;
        }

        else
        {
          v87 = 5;
        }

        LOWORD(v119) = v87 + v119;
        v88 = [v5 hdrType];
        if (v88 <= [v6 hdrType])
        {
          v89 = 0;
        }

        else
        {
          v89 = 5;
        }

        HIWORD(v119) += v89;
        v90 = PLDuplicateDetectionGetLog();
        if (os_log_type_enabled(v90, OS_LOG_TYPE_DEBUG))
        {
          v91 = [(PLDuplicateAsset *)self shortDescription];
          v92 = [v4 shortDescription];
          v93 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Duplicate Asset: Resource comparisonScore [%d:%d][%@:%@]", v119, (v119 >> 16), v91, v92];
          v94 = _PLDuplicateAssetLogString(v93, @"HDR", 0);

          *buf = 138543362;
          v121 = v94;
          _os_log_impl(&dword_19BF1F000, v90, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
        }
      }

      v95 = [v6 depthType];
      if (v95 != [v5 depthType])
      {
        if ([v5 depthType])
        {
          v96 = 0;
        }

        else
        {
          v96 = 5;
        }

        LOWORD(v119) = v96 + v119;
        if ([v6 depthType])
        {
          v97 = 0;
        }

        else
        {
          v97 = 5;
        }

        HIWORD(v119) += v97;
        v98 = PLDuplicateDetectionGetLog();
        if (os_log_type_enabled(v98, OS_LOG_TYPE_DEBUG))
        {
          v99 = [(PLDuplicateAsset *)self shortDescription];
          v100 = [v4 shortDescription];
          v101 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Duplicate Asset: Resource comparisonScore [%d:%d][%@:%@]", v119, (v119 >> 16), v99, v100];
          v102 = _PLDuplicateAssetLogString(v101, @"Depth Data", 0);

          *buf = 138543362;
          v121 = v102;
          _os_log_impl(&dword_19BF1F000, v98, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
        }
      }

      v103 = [v5 playbackVariation];
      if (v103 != [v6 playbackVariation])
      {
        v104 = [v5 playbackVariation];
        if ((v104 - 1) >= 3)
        {
          if (!v104)
          {
            LOWORD(v119) = v119 + 5;
          }
        }

        else
        {
          if ([v6 playbackVariation])
          {
            v105 = 0;
          }

          else
          {
            v105 = 5;
          }

          HIWORD(v119) += v105;
        }

        v106 = PLDuplicateDetectionGetLog();
        if (os_log_type_enabled(v106, OS_LOG_TYPE_DEBUG))
        {
          v107 = [(PLDuplicateAsset *)self shortDescription];
          v108 = [v4 shortDescription];
          v109 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Duplicate Asset: Resource comparisonScore [%d:%d][%@:%@]", v119, (v119 >> 16), v107, v108];
          v110 = _PLDuplicateAssetLogString(v109, @"Variation", 0);

          *buf = 138543362;
          v121 = v110;
          _os_log_impl(&dword_19BF1F000, v106, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
        }
      }

      goto LABEL_94;
    }

    v53 = [v6 location];
    v54 = [v5 location];
    if (v53)
    {
      v55 = [PLLocationUtils locationIsCoarse:v53];
    }

    else
    {
      v55 = 0;
    }

    v113 = v55;
    if (v54)
    {
      v56 = ![PLLocationUtils locationIsCoarse:v54];
    }

    else
    {
      v56 = 1;
    }

    v112 = v56;
    v116 = v54;
    v57 = [v6 extendedAttributes];
    v58 = [v57 latitude];
    if (v58)
    {
      v59 = [v6 extendedAttributes];
      v60 = [v59 longitude];
      v61 = v60 != 0;
    }

    else
    {
      v61 = 0;
    }

    v118 = v53;

    v62 = [v5 extendedAttributes];
    v63 = [v62 latitude];
    if (v63)
    {
      v64 = [v5 extendedAttributes];
      v65 = [v64 longitude];
      v66 = v65 != 0;
    }

    else
    {
      v66 = 0;
    }

    v67 = v66 || !v61;
    if ((v113 & v112 & v67 & 1) != 0 || !v61 && v66)
    {
      HIWORD(v119) += 5;
      [v4 setResourceComparisonPropertyUpdateLocation:1];
      v69 = PLDuplicateDetectionGetLog();
      if (os_log_type_enabled(v69, OS_LOG_TYPE_DEBUG))
      {
        v73 = [(PLDuplicateAsset *)self shortDescription];
        v74 = [v4 shortDescription];
        v75 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Duplicate Asset: Resource comparisonScore [%d:%d][%@:%@]", v119, (v119 >> 16), v73, v74];
        v76 = _PLDuplicateAssetLogString(v75, @"location", 0);

        *buf = 138543362;
        v121 = v76;
        _os_log_impl(&dword_19BF1F000, v69, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
      }

      v68 = v118;
    }

    else
    {
      v68 = v118;
      if ((v112 | v113) & v67)
      {
LABEL_52:

        goto LABEL_53;
      }

      LOWORD(v119) = v119 + 5;
      v69 = PLDuplicateDetectionGetLog();
      if (os_log_type_enabled(v69, OS_LOG_TYPE_DEBUG))
      {
        v114 = [(PLDuplicateAsset *)self shortDescription];
        v70 = [v4 shortDescription];
        v71 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Duplicate Asset: Resource comparisonScore [%d:%d][%@:%@]", v119, (v119 >> 16), v114, v70];
        v72 = _PLDuplicateAssetLogString(v71, @"location", 0);

        *buf = 138543362;
        v121 = v72;
        _os_log_impl(&dword_19BF1F000, v69, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
      }
    }

    goto LABEL_52;
  }

LABEL_95:

  return v119;
}

BOOL __63__PLDuplicateAsset__compareResourcesAdditionalChecksFromOther___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 version])
  {
    v3 = 0;
  }

  else
  {
    v3 = [v2 cplType] == 18;
  }

  return v3;
}

BOOL __63__PLDuplicateAsset__compareResourcesAdditionalChecksFromOther___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 version])
  {
    v3 = 0;
  }

  else
  {
    v3 = [v2 cplType] == 18;
  }

  return v3;
}

- (PLDuplicateAssetScoreTuple)_compareResourcesNotMatchingPlaybackStyleAndKindSubTypeCheckFromOther:(id)a3 error:(id *)a4
{
  v56[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 asset];
  v8 = [(PLDuplicateAsset *)self asset];
  v9 = [v8 kindSubtype];
  v10 = 0;
  v11 = 0;
  v12 = [v7 kindSubtype];
  if (v12 > 9)
  {
    if (v12 - 100 < 5)
    {
      v13 = MEMORY[0x1E696ABC0];
      v14 = *MEMORY[0x1E69BFF48];
      v47 = *MEMORY[0x1E696A578];
      v48 = @"Unexpected processing video kindSubtype";
      v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v48 forKeys:&v47 count:1];
      v10 = [v13 errorWithDomain:v14 code:49407 userInfo:v15];

      v16 = PLDuplicateDetectionGetLog();
      if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
LABEL_6:

        var0 = -1;
        v11 = -65536;
        goto LABEL_7;
      }

      v17 = [v6 shortDescription];
      v18 = [(PLDuplicateAsset *)self shortDescription];
      *buf = 138543618;
      v52 = v17;
      v53 = 2114;
      v54 = v18;
      v19 = "Duplicate Asset: Resource matching error, unexpected processing a video kind subtype [%{public}@ -> %{public}@]";
LABEL_5:
      _os_log_impl(&dword_19BF1F000, v16, OS_LOG_TYPE_ERROR, v19, buf, 0x16u);

      goto LABEL_6;
    }

    var0 = 0;
    if (v12 != 10)
    {
      goto LABEL_7;
    }

    if (v9)
    {
      if (v9 != 2)
      {
        v44 = MEMORY[0x1E696ABC0];
        v45 = *MEMORY[0x1E69BFF48];
        v49 = *MEMORY[0x1E696A578];
        v50 = @"Unexpected processing kindSubtype";
        v46 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v50 forKeys:&v49 count:1];
        v10 = [v44 errorWithDomain:v45 code:49407 userInfo:v46];

        v16 = PLDuplicateDetectionGetLog();
        if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_6;
        }

        v17 = [v6 shortDescription];
        v18 = [(PLDuplicateAsset *)self shortDescription];
        *buf = 138543618;
        v52 = v17;
        v53 = 2114;
        v54 = v18;
        v19 = "Duplicate Asset: Resource matching error, unexpected processing of kindSubtype [%{public}@ -> %{public}@]";
        goto LABEL_5;
      }

      v33 = PLDuplicateDetectionGetLog();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
      {
        v34 = [(PLDuplicateAsset *)self shortDescription];
        v35 = [v6 shortDescription];
        v39 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Duplicate Asset: Resource comparisonScore [%d:%d][%@:%@]", 5, 0, v34, v35];
        v37 = _PLDuplicateAssetLogString(v39, @"live photo/screenshot", @"no matching");

        *buf = 138543362;
        v52 = v37;
        goto LABEL_34;
      }

LABEL_35:

      v11 = 0;
      v10 = 0;
      var0 = 5;
      goto LABEL_7;
    }

LABEL_38:
    v40 = [(PLDuplicateAsset *)self _compareResourcesAdditionalChecksFromOther:v6];
    var0 = v40.var0;
    v10 = 0;
    v11 = *&v40 & 0xFFFF0000;
    goto LABEL_7;
  }

  if (!v12)
  {
    if (v9 == 10)
    {
      goto LABEL_21;
    }

    if (v9 == 2)
    {
LABEL_23:
      v33 = PLDuplicateDetectionGetLog();
      if (!os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_35;
      }

      v34 = [(PLDuplicateAsset *)self shortDescription];
      v35 = [v6 shortDescription];
      v36 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Duplicate Asset: Resource comparisonScore [%d:%d][%@:%@]", 5, 0, v34, v35];
      v37 = _PLDuplicateAssetLogString(v36, @"live photo over image", @"no matching");

      *buf = 138543362;
      v52 = v37;
LABEL_34:
      _os_log_impl(&dword_19BF1F000, v33, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);

      goto LABEL_35;
    }

    if (v9 == 1)
    {
LABEL_21:
      if ([v7 playbackStyle] == 2)
      {
        goto LABEL_38;
      }

      if (v9 == 2)
      {
        goto LABEL_23;
      }
    }

    v11 = 0;
    var0 = 0;
    v10 = 0;
    goto LABEL_7;
  }

  if (v12 == 1)
  {
    if (v9)
    {
      if (v9 == 2)
      {
        v33 = PLDuplicateDetectionGetLog();
        if (!os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_35;
        }

        v34 = [(PLDuplicateAsset *)self shortDescription];
        v35 = [v6 shortDescription];
        v38 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Duplicate Asset: Resource comparisonScore [%d:%d][%@:%@]", 5, 0, v34, v35];
        v37 = _PLDuplicateAssetLogString(v38, @"live photo over pano", @"no matching");

        *buf = 138543362;
        v52 = v37;
        goto LABEL_34;
      }
    }

    else if ([v8 playbackStyle] == 2)
    {
      goto LABEL_38;
    }

    v41 = MEMORY[0x1E696ABC0];
    v42 = *MEMORY[0x1E69BFF48];
    v55 = *MEMORY[0x1E696A578];
    v56[0] = @"Unexpected processing kindSubtype";
    v43 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v56 forKeys:&v55 count:1];
    v10 = [v41 errorWithDomain:v42 code:49407 userInfo:v43];

    v16 = PLDuplicateDetectionGetLog();
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_6;
    }

    v17 = [v6 shortDescription];
    v18 = [(PLDuplicateAsset *)self shortDescription];
    *buf = 138543618;
    v52 = v17;
    v53 = 2114;
    v54 = v18;
    v19 = "Duplicate Asset: Resource matching error, unexpected processing of kindSubtype [%{public}@ -> %{public}@]";
    goto LABEL_5;
  }

  var0 = 0;
  if (v12 == 2)
  {
    v28 = PLDuplicateDetectionGetLog();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
    {
      v29 = [(PLDuplicateAsset *)self shortDescription];
      v30 = [v6 shortDescription];
      v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Duplicate Asset: Resource comparisonScore [%d:%d][%@:%@]", 0, 5, v29, v30];
      v32 = _PLDuplicateAssetLogString(v31, @"live photo", @"no matching");

      *buf = 138543362;
      v52 = v32;
      _os_log_impl(&dword_19BF1F000, v28, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
    }

    var0 = 0;
    v10 = 0;
    v11 = 327680;
  }

LABEL_7:
  v21 = [MEMORY[0x1E696AD98] numberWithShort:var0];
  v22 = [MEMORY[0x1E696AD98] numberWithShort:(v11 >> 16)];
  v23 = [v21 compare:v22];

  v24 = v10;
  v25 = v24;
  if (var0 == 0xFFFF && !v23 && a4)
  {
    v26 = v24;
    *a4 = v25;
  }

  return (var0 | v11);
}

- (PLDuplicateAssetScoreTuple)_compareResourcesMatchingPlaybackStyleCheckFromOther:(id)a3 error:(id *)a4
{
  v69[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 asset];
  v8 = [(PLDuplicateAsset *)self asset];
  v9 = 0;
  v10 = 0;
  v11 = [v7 kindSubtype];
  v57 = a4;
  if (v11 <= 0x63)
  {
    if (v11 - 1 < 2)
    {
      v23 = [v7 kindSubtype];
      v24 = 5;
      if (v23 <= [v8 kindSubtype])
      {
        v29 = [v8 kindSubtype];
        if (v29 == 10)
        {
          v12 = 0;
        }

        else
        {
          v12 = 5;
        }

        if (v29 == 10)
        {
          v30 = 5;
        }

        else
        {
          v30 = 0;
        }

        v24 = v30;
      }

      else
      {
        v12 = 0;
      }

      v31 = PLDuplicateDetectionGetLog();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
      {
        v32 = [(PLDuplicateAsset *)self shortDescription];
        v33 = [v6 shortDescription];
        v34 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Duplicate Asset: Resource comparisonScore [%d:%d][%@:%@]", v12, v24, v32, v33];
        v35 = _PLDuplicateAssetLogString(v34, @"pano/live photo", @"matching playbackStyle");

        *buf = 138543362;
        v65 = v35;
        _os_log_impl(&dword_19BF1F000, v31, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
      }

      v9 = 0;
      v10 = v24 << 16;
      goto LABEL_41;
    }

    if (v11)
    {
      LODWORD(v12) = 0;
      if (v11 != 10)
      {
        goto LABEL_41;
      }

      if ([v8 kindSubtype] == 10)
      {
        v20 = MEMORY[0x1E696ABC0];
        v21 = *MEMORY[0x1E69BFF48];
        v60 = *MEMORY[0x1E696A578];
        v61 = @"Unexpected processing kindSubtype PLAssetSubtypeScreenshot";
        v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v61 forKeys:&v60 count:1];
        v9 = [v20 errorWithDomain:v21 code:49407 userInfo:v22];

        v16 = PLDuplicateDetectionGetLog();
        if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_6;
        }

        v17 = [v6 shortDescription];
        v18 = [(PLDuplicateAsset *)self shortDescription];
        *buf = 138543618;
        v65 = v17;
        v66 = 2114;
        v67 = v18;
        v19 = "Duplicate Asset: Resource matching error, unexpected processing kind subtype PLAssetSubtypeScreenshot [%{public}@ -> %{public}@]";
        goto LABEL_5;
      }

      v36 = PLDuplicateDetectionGetLog();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
      {
        v37 = [(PLDuplicateAsset *)self shortDescription];
        v38 = [v6 shortDescription];
        v39 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Duplicate Asset: Resource comparisonScore [%d:%d][%@:%@]", 5, 0, v37, v38];
        v40 = _PLDuplicateAssetLogString(v39, @"screenshot", @"matching playbackStyle");

        *buf = 138543362;
        v65 = v40;
LABEL_39:
        _os_log_impl(&dword_19BF1F000, v36, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
      }
    }

    else
    {
      v9 = 0;
      v10 = 0;
      v25 = [v8 kindSubtype];
      if (v25 > 0x63)
      {
        LODWORD(v12) = 0;
        if (v25 - 100 >= 5)
        {
          goto LABEL_41;
        }

        v26 = MEMORY[0x1E696ABC0];
        v27 = *MEMORY[0x1E69BFF48];
        v62 = *MEMORY[0x1E696A578];
        v63 = @"Unexpected processing video kindSubtype";
        v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v63 forKeys:&v62 count:1];
        v9 = [v26 errorWithDomain:v27 code:49407 userInfo:v28];

        v16 = PLDuplicateDetectionGetLog();
        if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_6;
        }

        v17 = [v6 shortDescription];
        v18 = [(PLDuplicateAsset *)self shortDescription];
        *buf = 138543618;
        v65 = v17;
        v66 = 2114;
        v67 = v18;
        v19 = "Duplicate Asset: Resource matching error, unexpected processing a video kind subtype [%{public}@ -> %{public}@]";
        goto LABEL_5;
      }

      if (v25 - 1 >= 2)
      {
        if (!v25)
        {
          v54 = MEMORY[0x1E696ABC0];
          v55 = *MEMORY[0x1E69BFF48];
          v68 = *MEMORY[0x1E696A578];
          v69[0] = @"Unexpected processing kindSubtype PLAssetSubtypeNone";
          v56 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v69 forKeys:&v68 count:1];
          v9 = [v54 errorWithDomain:v55 code:49407 userInfo:v56];

          v16 = PLDuplicateDetectionGetLog();
          if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_6;
          }

          v17 = [v6 shortDescription];
          v18 = [(PLDuplicateAsset *)self shortDescription];
          *buf = 138543618;
          v65 = v17;
          v66 = 2114;
          v67 = v18;
          v19 = "Duplicate Asset: Resource matching error, unexpected processing kind subtype PLAssetSubtypeNone [%{public}@ -> %{public}@]";
          goto LABEL_5;
        }

        LODWORD(v12) = 0;
        if (v25 == 10)
        {
          v41 = PLDuplicateDetectionGetLog();
          if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
          {
            v42 = [(PLDuplicateAsset *)self shortDescription];
            v43 = [v6 shortDescription];
            v44 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Duplicate Asset: Resource comparisonScore [%d:%d][%@:%@]", 0, 5, v42, v43];
            v45 = _PLDuplicateAssetLogString(v44, @"screenshot", @"matching playbackStyle");

            *buf = 138543362;
            v65 = v45;
            _os_log_impl(&dword_19BF1F000, v41, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
          }

          LODWORD(v12) = 0;
          v9 = 0;
          v10 = 327680;
        }

        goto LABEL_41;
      }

      v36 = PLDuplicateDetectionGetLog();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
      {
        v37 = [(PLDuplicateAsset *)self shortDescription];
        v38 = [v6 shortDescription];
        v46 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Duplicate Asset: Resource comparisonScore [%d:%d][%@:%@]", 5, 0, v37, v38];
        v40 = _PLDuplicateAssetLogString(v46, @"pano/live photo", @"matching playbackStyle");

        *buf = 138543362;
        v65 = v40;
        goto LABEL_39;
      }
    }

    v10 = 0;
    v9 = 0;
    LODWORD(v12) = 5;
    goto LABEL_41;
  }

  LODWORD(v12) = 0;
  if (v11 - 100 < 5)
  {
    v13 = MEMORY[0x1E696ABC0];
    v14 = *MEMORY[0x1E69BFF48];
    v58 = *MEMORY[0x1E696A578];
    v59 = @"Unexpected processing video kindSubtype";
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v59 forKeys:&v58 count:1];
    v9 = [v13 errorWithDomain:v14 code:49407 userInfo:v15];

    v16 = PLDuplicateDetectionGetLog();
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
LABEL_6:

      LODWORD(v12) = 0xFFFF;
      v10 = -65536;
      goto LABEL_41;
    }

    v17 = [v6 shortDescription];
    v18 = [(PLDuplicateAsset *)self shortDescription];
    *buf = 138543618;
    v65 = v17;
    v66 = 2114;
    v67 = v18;
    v19 = "Duplicate Asset: Resource matching error, unexpected processing a video kind subtype [%{public}@ -> %{public}@]";
LABEL_5:
    _os_log_impl(&dword_19BF1F000, v16, OS_LOG_TYPE_ERROR, v19, buf, 0x16u);

    goto LABEL_6;
  }

LABEL_41:
  v47 = [MEMORY[0x1E696AD98] numberWithShort:v12];
  v48 = [MEMORY[0x1E696AD98] numberWithShort:(v10 >> 16)];
  v49 = [v47 compare:v48];

  v50 = v9;
  v51 = v50;
  if (v12 == 0xFFFF && !v49 && v57)
  {
    v52 = v50;
    *v57 = v51;
  }

  return (v12 | v10);
}

- (PLDuplicateAssetScoreTuple)_compareResourcesMatchingKindSubtypeCheckFromOther:(id)a3 error:(id *)a4
{
  v52[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 asset];
  v8 = [(PLDuplicateAsset *)self asset];
  v9 = 0;
  LODWORD(v10) = 0;
  v11 = [v7 kindSubtype];
  v12 = 0x1E696A000uLL;
  if (v11 > 0x63)
  {
    var0 = 0;
    if (v11 - 100 < 5)
    {
      v14 = MEMORY[0x1E696ABC0];
      v15 = *MEMORY[0x1E69BFF48];
      v45 = *MEMORY[0x1E696A578];
      v46 = @"Unexpected processing a video kindSubtype";
      v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v46 forKeys:&v45 count:1];
      v9 = [v14 errorWithDomain:v15 code:49407 userInfo:v16];

      v10 = PLDuplicateDetectionGetLog();
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
LABEL_6:

        LODWORD(v10) = 0xFFFF;
        var0 = 0xFFFF;
        goto LABEL_11;
      }

      v17 = [v6 shortDescription];
      v18 = [(PLDuplicateAsset *)self shortDescription];
      *buf = 138543618;
      v48 = v17;
      v49 = 2114;
      v50 = v18;
      v19 = "Duplicate Asset: Resource matching error, unexpected processing a video kind subtype [%{public}@ -> %{public}@]";
LABEL_5:
      _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_ERROR, v19, buf, 0x16u);

      goto LABEL_6;
    }

    goto LABEL_11;
  }

  if (v11 < 2)
  {
LABEL_10:
    v20 = [(PLDuplicateAsset *)self _compareResourcesAdditionalChecksFromOther:v6];
    v9 = 0;
    LODWORD(v10) = HIWORD(*&v20);
    var0 = v20.var0;
    goto LABEL_11;
  }

  if (v11 != 2)
  {
    var0 = 0;
    if (v11 != 10)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v28 = [v7 playbackStyle];
  v9 = 0;
  LODWORD(v10) = 0;
  if (v28 > 3)
  {
    if (v28 == 4)
    {
      v42 = MEMORY[0x1E696ABC0];
      v43 = *MEMORY[0x1E69BFF48];
      v51 = *MEMORY[0x1E696A578];
      v52[0] = @"Unexpected processing a video playbackStyle";
      v44 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v52 forKeys:&v51 count:1];
      v9 = [v42 errorWithDomain:v43 code:49407 userInfo:v44];

      v10 = PLDuplicateDetectionGetLog();
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_6;
      }

      v17 = [v6 shortDescription];
      v18 = [(PLDuplicateAsset *)self shortDescription];
      *buf = 138543618;
      v48 = v17;
      v49 = 2114;
      v50 = v18;
      v19 = "Duplicate Asset: Resource matching error, unexpected processing a video playbackStyle [%{public}@ -> %{public}@]";
      goto LABEL_5;
    }

    var0 = 0;
    if (v28 != 5)
    {
      goto LABEL_11;
    }
  }

  else if ((v28 - 1) >= 3)
  {
    var0 = 0;
    if (!v28)
    {
      v10 = PLDuplicateDetectionGetLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        v29 = [(PLDuplicateAsset *)self shortDescription];
        v30 = [v6 shortDescription];
        v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Duplicate Asset: Resource comparisonScore [%d:%d][%@:%@]", 5, 0, v29, v30];
        v32 = _PLDuplicateAssetLogString(v31, @"playbackStyle", @"matching kindSubtype");

        *buf = 138543362;
        v48 = v32;
        _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);

        v12 = 0x1E696A000uLL;
      }

      LODWORD(v10) = 0;
      v9 = 0;
      var0 = 5;
    }

    goto LABEL_11;
  }

  v33 = [v7 playbackStyle];
  if (v33 <= [v8 playbackStyle])
  {
    v10 = 0;
  }

  else
  {
    v10 = 5;
  }

  v34 = [MEMORY[0x1E696AD98] numberWithShort:0];
  v35 = [MEMORY[0x1E696AD98] numberWithShort:v10];
  v36 = [v34 compare:v35];

  if (v36)
  {
    v37 = PLDuplicateDetectionGetLog();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
    {
      v38 = [(PLDuplicateAsset *)self shortDescription];
      v39 = [v6 shortDescription];
      v40 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Duplicate Asset: Resource comparisonScore [%d:%d][%@:%@]", 0, v10, v38, v39];
      v41 = _PLDuplicateAssetLogString(v40, @"playbackStyle", @"matching kindSubtype");

      *buf = 138543362;
      v48 = v41;
      _os_log_impl(&dword_19BF1F000, v37, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
    }
  }

  var0 = 0;
  v9 = 0;
  v12 = 0x1E696A000;
LABEL_11:
  v21 = [*(v12 + 3480) numberWithShort:var0];
  v22 = [*(v12 + 3480) numberWithShort:v10];
  v23 = [v21 compare:v22];

  v24 = v9;
  v25 = v24;
  if (var0 == 0xFFFF && !v23 && a4)
  {
    v26 = v24;
    *a4 = v25;
  }

  return (var0 | (v10 << 16));
}

- (PLDuplicateAssetScoreTuple)_compareResourcesMatchingPlaybackStyleAndKindSubTypeCheckFromOther:(id)a3
{
  v37 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 asset];
  v6 = [(PLDuplicateAsset *)self asset];
  v7 = [v5 RAWBadgeAttribute];
  if (v7 == [v6 RAWBadgeAttribute])
  {
    goto LABEL_2;
  }

  v10 = [v5 RAWBadgeAttribute];
  if ((v10 - 1) < 2)
  {
    v16 = [v6 RAWBadgeAttribute];
    if (v16 != 3 && v16)
    {
      goto LABEL_2;
    }

    v11 = PLDuplicateDetectionGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v17 = [(PLDuplicateAsset *)self shortDescription];
      v18 = [v4 shortDescription];
      v8 = 5;
      v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Duplicate Asset: Resource comparisonScore [%d:%d][%@:%@]", 0, 5, v17, v18];
      v20 = _PLDuplicateAssetLogString(v19, @"R+J vs non-R+J", 0);

      *buf = 138543362;
      v36 = v20;
      _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);

      v9 = 0;
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  if (v10 == 3)
  {
    v21 = [v6 RAWBadgeAttribute];
    if ((v21 - 1) < 2)
    {
      v11 = PLDuplicateDetectionGetLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        v22 = [(PLDuplicateAsset *)self shortDescription];
        v23 = [v4 shortDescription];
        v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Duplicate Asset: Resource comparisonScore [%d:%d][%@:%@]", 5, 0, v22, v23];
        v25 = _PLDuplicateAssetLogString(v24, @"non-R+J vs R+J", 0);

        *buf = 138543362;
        v36 = v25;
        _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);

        v8 = 0;
        v9 = 5;
        goto LABEL_20;
      }

LABEL_15:
      v8 = 0;
      v9 = 5;
      goto LABEL_20;
    }

    if (v21)
    {
LABEL_2:
      v8 = 0;
      v9 = 0;
      goto LABEL_21;
    }

    v11 = PLDuplicateDetectionGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v26 = [(PLDuplicateAsset *)self shortDescription];
      v27 = [v4 shortDescription];
      v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Duplicate Asset: Resource comparisonScore [%d:%d][%@:%@]", 0, 5, v26, v27];
      v29 = _PLDuplicateAssetLogString(v28, @"RAW vs non-RAW", 0);

      *buf = 138543362;
      v36 = v29;
      _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);

      v9 = 0;
      v8 = 5;
      goto LABEL_20;
    }

LABEL_19:
    v9 = 0;
    v8 = 5;
    goto LABEL_20;
  }

  if (v10)
  {
    goto LABEL_2;
  }

  v11 = PLDuplicateDetectionGetLog();
  if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    goto LABEL_15;
  }

  v12 = [(PLDuplicateAsset *)self shortDescription];
  v13 = [v4 shortDescription];
  v9 = 5;
  v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Duplicate Asset: Resource comparisonScore [%d:%d][%@:%@]", 5, 0, v12, v13];
  v15 = _PLDuplicateAssetLogString(v14, @"non-RAW vs RAW", 0);

  *buf = 138543362;
  v36 = v15;
  _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);

  v8 = 0;
LABEL_20:

LABEL_21:
  v30 = [MEMORY[0x1E696AD98] numberWithShort:v9];
  v31 = [MEMORY[0x1E696AD98] numberWithShort:v8];
  v32 = [v30 compare:v31];

  if (!v32)
  {
    v33 = [(PLDuplicateAsset *)self _compareResourcesAdditionalChecksFromOther:v4];
    LOWORD(v9) = v33.var0;
    LODWORD(v8) = HIWORD(*&v33);
  }

  return (v9 | (v8 << 16));
}

- (int64_t)compareResource:(id)a3 error:(id *)a4
{
  v64[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 asset];
  v8 = [(PLDuplicateAsset *)self asset];
  v56 = 0;
  [(PLDuplicateAsset *)self _compareResourcesResetPropertiesWithOther:v6];
  v52 = v8;
  if ([v7 isReferencedAsset] & 1) != 0 || (objc_msgSend(v8, "isReferencedAsset"))
  {
    v9 = 0;
    v10 = 0;
    goto LABEL_4;
  }

  v34 = [v7 kind];
  if (v34 != [v8 kind])
  {
    v41 = MEMORY[0x1E696ABC0];
    v42 = *MEMORY[0x1E69BFF48];
    v61 = *MEMORY[0x1E696A578];
    v62 = @"Resource comparison skipped asset has incompatible asset kind";
    v43 = MEMORY[0x1E695DF20];
    v44 = &v62;
    v45 = &v61;
LABEL_24:
    v46 = [v43 dictionaryWithObjects:v44 forKeys:v45 count:1];
    v10 = [v41 errorWithDomain:v42 code:49407 userInfo:v46];

    v56 = -1;
    goto LABEL_35;
  }

  v35 = [v7 kind];
  if ((v35 - 1) < 2)
  {
    v40 = [(PLDuplicateAsset *)self _compareResourcesAdditionalChecksFromOther:v6];
    goto LABEL_26;
  }

  if (v35 == 3)
  {
    v41 = MEMORY[0x1E696ABC0];
    v42 = *MEMORY[0x1E69BFF48];
    v63 = *MEMORY[0x1E696A578];
    v64[0] = @"Resource comparison skipped asset has unknown asset kind";
    v43 = MEMORY[0x1E695DF20];
    v44 = v64;
    v45 = &v63;
    goto LABEL_24;
  }

  if (v35)
  {
    v10 = 0;
    goto LABEL_35;
  }

  v36 = [v7 kindSubtype];
  v37 = [v8 kindSubtype];
  v38 = [v7 playbackStyle];
  v39 = [v8 playbackStyle];
  if (v38 == v39 && v36 == v37)
  {
    v40 = [(PLDuplicateAsset *)self _compareResourcesMatchingPlaybackStyleAndKindSubTypeCheckFromOther:v6];
LABEL_26:
    v10 = 0;
    v56 = v40;
    goto LABEL_35;
  }

  if (v36 == v37)
  {
    v55 = 0;
    v47 = [(PLDuplicateAsset *)self _compareResourcesMatchingKindSubtypeCheckFromOther:v6 error:&v55];
    v48 = v55;
  }

  else if (v38 == v39)
  {
    v54 = 0;
    v47 = [(PLDuplicateAsset *)self _compareResourcesMatchingPlaybackStyleCheckFromOther:v6 error:&v54];
    v48 = v54;
  }

  else
  {
    v53 = 0;
    v47 = [(PLDuplicateAsset *)self _compareResourcesNotMatchingPlaybackStyleAndKindSubTypeCheckFromOther:v6 error:&v53];
    v48 = v53;
  }

  v10 = v48;
  v56 = v47;
LABEL_35:
  v9 = v56;
  v49 = [MEMORY[0x1E696AD98] numberWithShort:v56];
  v50 = [MEMORY[0x1E696AD98] numberWithShort:(v9 >> 16)];
  v51 = [v49 compare:v50];

  if (v9 != 0xFFFF || v51)
  {
    [(PLDuplicateAsset *)self _compareResourceReverseCheckFromOther:v6 score:&v56];
    v9 = v56;
  }

LABEL_4:
  v11 = [MEMORY[0x1E696AD98] numberWithShort:v9];
  v12 = [MEMORY[0x1E696AD98] numberWithShort:(v9 >> 16)];
  v13 = [v11 compare:v12];

  v14 = v10;
  v15 = v14;
  if (v9 == 0xFFFF && !v13 && a4)
  {
    v16 = v14;
    *a4 = v15;
  }

  v17 = v56;
  v18 = [MEMORY[0x1E696AD98] numberWithShort:v56];
  v19 = [MEMORY[0x1E696AD98] numberWithShort:(v17 >> 16)];
  v20 = [v18 compare:v19];

  if (v17 == 0xFFFF && !v20)
  {
    v21 = PLDuplicateDetectionGetLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = [v6 shortDescription];
      v23 = [(PLDuplicateAsset *)self shortDescription];
      *buf = 138543874;
      *v58 = v22;
      *&v58[8] = 2114;
      *v59 = v23;
      *&v59[8] = 2112;
      v60[0] = v15;
      _os_log_impl(&dword_19BF1F000, v21, OS_LOG_TYPE_ERROR, "Duplicate Asset: Resource matching error for assets [%{public}@ -> %{public}@]. Error: %@", buf, 0x20u);
    }
  }

  v24 = PLDuplicateDetectionGetLog();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
  {
    v25 = v56;
    v26 = SHIWORD(v56);
    v27 = [(PLDuplicateAsset *)self shortDescription];
    v28 = [v6 shortDescription];
    *buf = 67109890;
    *v58 = v25;
    *&v58[4] = 1024;
    *&v58[6] = v26;
    *v59 = 2114;
    *&v59[2] = v27;
    LOWORD(v60[0]) = 2114;
    *(v60 + 2) = v28;
    _os_log_impl(&dword_19BF1F000, v24, OS_LOG_TYPE_INFO, "Duplicate Asset: Resource comparisonScore [%d:%d][%{public}@:%{public}@] (Final)", buf, 0x22u);
  }

  v29 = v56;
  v30 = [MEMORY[0x1E696AD98] numberWithShort:v56];
  v31 = [MEMORY[0x1E696AD98] numberWithShort:(v29 >> 16)];
  v32 = [v30 compare:v31];

  return v32;
}

- (void)_updateScoresUsingLatestDateWithDate:(id)a3 otherDate:(id)a4 score:(int64_t *)a5 otherScore:(int64_t *)a6
{
  if (a3 && a4)
  {
    v8 = [a3 compare:a4];
    if (v8 == 1)
    {
      a6 = a5;
      if (!a5)
      {
        return;
      }

      goto LABEL_6;
    }

    if (v8 == -1 && a6)
    {
LABEL_6:
      *a6 += 5;
    }
  }
}

- (BOOL)_validCPLAssetsWithAssets:(id)a3
{
  v3 = a3;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 1;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __46__PLDuplicateAsset__validCPLAssetsWithAssets___block_invoke;
  v6[3] = &unk_1E756CB40;
  v6[4] = &v7;
  [v3 enumerateObjectsUsingBlock:v6];
  v4 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __46__PLDuplicateAsset__validCPLAssetsWithAssets___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = [a2 asset];
  v7 = [v6 objectIDsForRelationshipNamed:@"master"];
  *(*(*(a1 + 32) + 8) + 24) = [v7 count] != 0;

  if ((*(*(*(a1 + 32) + 8) + 24) & 1) == 0)
  {
    *a4 = 1;
  }
}

- (void)_mergeComparisonScoreModifierWithOtherAsset:(id)a3 score:(int64_t *)a4 otherScore:(int64_t *)a5
{
  v73[2] = *MEMORY[0x1E69E9840];
  v9 = a3;
  if (v9)
  {
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_74:
    v59 = [MEMORY[0x1E696AAA8] currentHandler];
    [v59 handleFailureInMethod:a2 object:self file:@"PLDuplicateAsset.m" lineNumber:509 description:{@"Invalid parameter not satisfying: %@", @"score"}];

    if (a5)
    {
      goto LABEL_4;
    }

    goto LABEL_75;
  }

  v58 = [MEMORY[0x1E696AAA8] currentHandler];
  [v58 handleFailureInMethod:a2 object:self file:@"PLDuplicateAsset.m" lineNumber:508 description:{@"Invalid parameter not satisfying: %@", @"other"}];

  if (!a4)
  {
    goto LABEL_74;
  }

LABEL_3:
  if (a5)
  {
    goto LABEL_4;
  }

LABEL_75:
  v60 = [MEMORY[0x1E696AAA8] currentHandler];
  [v60 handleFailureInMethod:a2 object:self file:@"PLDuplicateAsset.m" lineNumber:510 description:{@"Invalid parameter not satisfying: %@", @"otherScore"}];

LABEL_4:
  [(PLDuplicateAsset *)self setResourceSwapDisabled:0];
  [(PLDuplicateAsset *)v9 setResourceSwapDisabled:0];
  if ([(PLDuplicateAsset *)self isCPLEnabled])
  {
    v10 = [(PLDuplicateAsset *)self asset];
    v11 = [v10 activeLibraryScopeParticipationState];

    v12 = [(PLDuplicateAsset *)v9 asset];
    v13 = [v12 activeLibraryScopeParticipationState];

    v14 = v13 == 1 && v11 == 1;
    v15 = v11 != v13 && (v11 == 1 || v13 == 1);
    v16 = [(PLDuplicateAsset *)self asset];
    v17 = [v16 fingerprintScheme];

    v18 = [(PLDuplicateAsset *)v9 asset];
    v19 = [v18 fingerprintScheme];

    if (!(v17 | v19))
    {
      v20 = 1;
      if (!v15)
      {
LABEL_12:
        if (v14)
        {
LABEL_13:
          v21 = [(PLDuplicateAsset *)self assetCloudScopedIdentifier];
          v22 = [(PLDuplicateAsset *)v9 assetCloudScopedIdentifier];
          v23 = v22;
          if (!v21 || !v22)
          {
            if (v21)
            {
              v47 = v9;
            }

            else
            {
              v47 = self;
            }

            [(PLDuplicateAsset *)v47 setMergeStatus:2];
            v25 = PLDuplicateDetectionGetLog();
            if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
            {
LABEL_52:

              if (v14)
              {
                goto LABEL_62;
              }

              goto LABEL_53;
            }

            v28 = [(PLDuplicateAsset *)self shortDescription];
            [(PLDuplicateAsset *)v9 shortDescription];
            v30 = v64 = v20;
            *buf = 138543618;
            v70 = v28;
            v71 = 2114;
            v72 = v30;
            _os_log_impl(&dword_19BF1F000, v25, OS_LOG_TYPE_ERROR, "Duplicate Asset: CPL assets missing cloud identifiers: [%{public}@ : %{public}@]", buf, 0x16u);
            goto LABEL_50;
          }

          v64 = v20;
          v68[0] = v21;
          v68[1] = v22;
          v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v68 count:2];
          v25 = [v24 sortedArrayUsingComparator:&__block_literal_global_141];

          v26 = [v25 objectAtIndexedSubscript:0];
          v27 = [v26 isEqualToString:v21];

          if (v27)
          {
            *a4 = *a5 + 1;
            v28 = PLDuplicateDetectionGetLog();
            if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
            {
              v63 = [(PLDuplicateAsset *)self shortDescription];
              v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Duplicate Asset: [%@] score incremented to %td", v63, *a4];
              v61 = _PLDuplicateAssetLogString(v29, @"cloudScopedIdentifier", 0);

              *buf = 138543362;
              v30 = v61;
              v70 = v61;
LABEL_49:
              _os_log_impl(&dword_19BF1F000, v28, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);

LABEL_50:
            }
          }

          else
          {
            *a5 = *a4 + 1;
            v28 = PLDuplicateDetectionGetLog();
            if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
            {
              v63 = [(PLDuplicateAsset *)v9 shortDescription];
              v52 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Duplicate Asset: [%@] score incremented to %td", v63, *a5];
              v62 = _PLDuplicateAssetLogString(v52, @"cloudScopedIdentifier", 0);

              *buf = 138543362;
              v30 = v62;
              v70 = v62;
              goto LABEL_49;
            }
          }

          v20 = v64;

          goto LABEL_52;
        }

        v73[0] = self;
        v73[1] = v9;
        v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:v73 count:2];
        v37 = [(PLDuplicateAsset *)self _validCPLAssetsWithAssets:v36];

        if (v37)
        {
          v65 = 0;
          v38 = [(PLDuplicateAsset *)self compareResource:v9 error:&v65];
          v39 = v65;
          if (v39)
          {
            [(PLDuplicateAsset *)self setMergeStatus:2];
            [(PLDuplicateAsset *)v9 setMergeStatus:2];
            v40 = PLDuplicateDetectionGetLog();
            if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
            {
              v41 = [(PLDuplicateAsset *)v9 shortDescription];
              *buf = 138543618;
              v70 = v41;
              v71 = 2112;
              v72 = v39;
              _os_log_impl(&dword_19BF1F000, v40, OS_LOG_TYPE_ERROR, "Duplicate Asset: Resource comparison failure for duplicate asset: %{public}@. Error: %@", buf, 0x16u);
            }
          }

          else
          {
            switch(v38)
            {
              case 1:
                *a4 = *a5 + 1;
                break;
              case 0:
                goto LABEL_13;
              case -1:
                *a5 = *a4 + 1;
                break;
            }
          }

LABEL_53:
          if (*a4 <= *a5)
          {
            v53 = v9;
          }

          else
          {
            v53 = self;
          }

          [(PLDuplicateAsset *)v53 setResourceSwapDisabled:1];
LABEL_62:
          if ((v20 & 1) == 0)
          {
            if (*a4 <= *a5)
            {
              v57 = v9;
            }

            else
            {
              v57 = self;
            }

            [(PLDuplicateAsset *)v57 setResourceSwapDisabled:1];
          }

          goto LABEL_67;
        }

        v67 = self;
        v48 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v67 count:1];
        v49 = [(PLDuplicateAsset *)self _validCPLAssetsWithAssets:v48];

        if (!v49)
        {
          v66 = v9;
          v54 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v66 count:1];
          v55 = [(PLDuplicateAsset *)self _validCPLAssetsWithAssets:v54];

          if (!v55)
          {
            goto LABEL_62;
          }

          *a5 = *a4 + 1;
          [(PLDuplicateAsset *)v9 setResourceSwapDisabled:1];
          v34 = PLDuplicateDetectionGetLog();
          if (!os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_61;
          }

          v42 = [(PLDuplicateAsset *)v9 shortDescription];
          v56 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Duplicate Asset: [%@] score incremented to %td", v42, *a5];
          v44 = _PLDuplicateAssetLogString(v56, @"master", 0);

          *buf = 138543362;
          v70 = v44;
          goto LABEL_60;
        }

        *a4 = *a5 + 1;
        [(PLDuplicateAsset *)self setResourceSwapDisabled:1];
        v34 = PLDuplicateDetectionGetLog();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
        {
          v42 = [(PLDuplicateAsset *)self shortDescription];
          v50 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Duplicate Asset: [%@] score incremented to %td", v42, *a4];
          v44 = _PLDuplicateAssetLogString(v50, @"master", 0);

          *buf = 138543362;
          v70 = v44;
          goto LABEL_60;
        }

        goto LABEL_61;
      }

LABEL_22:
      v32 = [(PLDuplicateAsset *)self asset];
      v33 = [v32 duplicateAssetVisibilityState];

      if (v33 - 1 < 2)
      {
        *a5 = *a4 + 1;
        v34 = PLDuplicateDetectionGetLog();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
        {
          v42 = [(PLDuplicateAsset *)v9 shortDescription];
          v43 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Duplicate Asset: [%@] score incremented to %td", v42, *a5];
          v44 = _PLDuplicateAssetLogString(v43, @"duplicateAssetVisibilityState", 0);

          *buf = 138543362;
          v70 = v44;
LABEL_60:
          _os_log_impl(&dword_19BF1F000, v34, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
        }
      }

      else
      {
        if (v33 != 100)
        {
          if (v33)
          {
            goto LABEL_62;
          }

          [(PLDuplicateAsset *)self setMergeStatus:2];
          v34 = PLDuplicateDetectionGetLog();
          if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
          {
            v35 = [(PLDuplicateAsset *)v9 shortDescription];
            *buf = 138543362;
            v70 = v35;
            _os_log_impl(&dword_19BF1F000, v34, OS_LOG_TYPE_ERROR, "Duplicate Asset: Invalid visibility state PLDuplicateAssetVisibilityStateNotDuplicate for duplicate asset: %{public}@", buf, 0xCu);
          }

          goto LABEL_61;
        }

        *a4 = *a5 + 1;
        v34 = PLDuplicateDetectionGetLog();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
        {
          v42 = [(PLDuplicateAsset *)self shortDescription];
          v51 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Duplicate Asset: [%@] score incremented to %td", v42, *a4];
          v44 = _PLDuplicateAssetLogString(v51, @"duplicateAssetVisibilityState", 0);

          *buf = 138543362;
          v70 = v44;
          goto LABEL_60;
        }
      }

LABEL_61:

      goto LABEL_62;
    }

    if (v17)
    {
      if (v19)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v45 = [(PLDuplicateAsset *)self asset];
      v17 = __81__PLDuplicateAsset__mergeComparisonScoreModifierWithOtherAsset_score_otherScore___block_invoke(v45);

      if (v19)
      {
        goto LABEL_11;
      }
    }

    v46 = [(PLDuplicateAsset *)v9 asset];
    v19 = __81__PLDuplicateAsset__mergeComparisonScoreModifierWithOtherAsset_score_otherScore___block_invoke(v46);

LABEL_11:
    v20 = [v17 isCompatibleWithFingerprintScheme:v19];

    if (!v15)
    {
      goto LABEL_12;
    }

    goto LABEL_22;
  }

  v31 = PLDuplicateDetectionGetLog();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_19BF1F000, v31, OS_LOG_TYPE_DEBUG, "Duplicate Asset: iCPL not enabled, skipping further comparison score updates", buf, 2u);
  }

LABEL_67:
}

id __81__PLDuplicateAsset__mergeComparisonScoreModifierWithOtherAsset_score_otherScore___block_invoke(void *a1)
{
  v1 = [a1 photoLibrary];
  v2 = [v1 fingerprintContext];
  v3 = [v2 fingerprintSchemeForNewMasterAsset];

  if (!v3)
  {
    v4 = [MEMORY[0x1E6994AD8] sharedContext];
    v3 = [v4 fingerprintSchemeForNewMasterAsset];
  }

  return v3;
}

- (void)_tieBreakerComparisonScoreWithOtherAsset:(id)a3 score:(int64_t *)a4 otherScore:(int64_t *)a5
{
  v28 = *MEMORY[0x1E69E9840];
  v8 = a3;
  if (!-[PLDuplicateAsset hasModifiedUserDateCreated](self, "hasModifiedUserDateCreated") && ([v8 hasModifiedUserDateCreated] & 1) == 0)
  {
    v9 = [(PLDuplicateAsset *)self asset];
    v10 = [v9 dateCreated];

    v11 = [v8 asset];
    v12 = [v11 dateCreated];

    if (v10 && v12)
    {
      v13 = [(PLDuplicateAsset *)self _correctedCompareDate:v10 otherDate:v12];
      v14 = a4;
      if (v13 != -1)
      {
        v14 = a5;
        if (v13 != 1)
        {
          goto LABEL_13;
        }
      }
    }

    else
    {
      if (v10)
      {
        v14 = a4;
      }

      else
      {
        v14 = a5;
      }

      if (!(v10 | v12))
      {
        goto LABEL_13;
      }
    }

    *v14 += 5;
LABEL_13:
  }

  if (*a4 != *a5)
  {
    v15 = PLDuplicateDetectionGetLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = *a4;
      v17 = *a5;
      v18 = [(PLDuplicateAsset *)self shortDescription];
      v19 = [v8 shortDescription];
      v20 = 134218754;
      v21 = v16;
      v22 = 2048;
      v23 = v17;
      v24 = 2114;
      v25 = v18;
      v26 = 2114;
      v27 = v19;
      _os_log_impl(&dword_19BF1F000, v15, OS_LOG_TYPE_INFO, "Duplicate Asset: tie breaker comparisonScore [%tu:%tu][%{public}@:%{public}@]", &v20, 0x2Au);
    }
  }
}

- (int64_t)_correctedCompareDate:(id)a3 otherDate:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 isEqualToDate:v6])
  {
    v7 = 0;
  }

  else
  {
    [v5 timeIntervalSinceDate:v6];
    v9 = fabs(v8);
    v10 = -1;
    if (v8 >= 0.0)
    {
      v10 = 1;
    }

    if (v9 >= 1.0)
    {
      v7 = v10;
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (int64_t)compare:(id)a3 enabledMergeComparison:(BOOL)a4
{
  v4 = a4;
  v67 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(PLDuplicateAsset *)self score];
  v58 = v7;
  v8 = [v6 score];
  v57 = v8;
  v9 = [(PLDuplicateAsset *)self asset];
  v10 = [v9 hasAdjustments];

  v11 = [v6 asset];
  v12 = [v11 hasAdjustments];

  if (!v10 || !v12)
  {
    goto LABEL_12;
  }

  v13 = [(PLDuplicateAsset *)self asset];
  v14 = [v13 additionalAttributes];
  v15 = [v14 unmanagedAdjustment];
  v16 = [v15 adjustmentTimestamp];

  v17 = [v6 asset];
  v18 = [v17 additionalAttributes];
  v19 = [v18 unmanagedAdjustment];
  v20 = [v19 adjustmentTimestamp];

  [(PLDuplicateAsset *)self _updateScoresUsingLatestDateWithDate:v16 otherDate:v20 score:&v58 otherScore:&v57];
  if (v7 != v58)
  {
    v21 = PLDuplicateDetectionGetLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      v22 = [(PLDuplicateAsset *)self shortDescription];
      v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Duplicate Asset: [%@] score incremented to %td", v22, v58];
      v24 = _PLDuplicateAssetLogString(v25, @"latest Adjustment", 0);

      *buf = 138543362;
      v60 = v24;
      goto LABEL_9;
    }

LABEL_10:

    goto LABEL_11;
  }

  if (v8 != v57)
  {
    v21 = PLDuplicateDetectionGetLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      v22 = [v6 shortDescription];
      v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Duplicate Asset: [%@] score incremented to %td", v22, v57];
      v24 = _PLDuplicateAssetLogString(v23, @"latest Adjustment", 0);

      *buf = 138543362;
      v60 = v24;
LABEL_9:
      _os_log_impl(&dword_19BF1F000, v21, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);

      goto LABEL_10;
    }

    goto LABEL_10;
  }

LABEL_11:

LABEL_12:
  if (-[PLDuplicateAsset hasModifiedUserTitle](self, "hasModifiedUserTitle") && ([v6 hasModifiedUserTitle] & 1) != 0 || -[PLDuplicateAsset hasModifiedUserLocation](self, "hasModifiedUserLocation") && objc_msgSend(v6, "hasModifiedUserLocation"))
  {
    v26 = [(PLDuplicateAsset *)self asset];
    v27 = [v26 modificationDate];

    v28 = [v6 asset];
    v29 = [v28 modificationDate];

    v30 = v57;
    v31 = v58;
    [(PLDuplicateAsset *)self _updateScoresUsingLatestDateWithDate:v27 otherDate:v29 score:&v58 otherScore:&v57];
    if (v31 == v58)
    {
      if (v30 == v57)
      {
LABEL_24:

        goto LABEL_25;
      }

      v32 = PLDuplicateDetectionGetLog();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
      {
        v33 = [v6 shortDescription];
        v34 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Duplicate Asset: [%@] score incremented to %td", v33, v57];
        v35 = _PLDuplicateAssetLogString(v34, @"latest user modification", 0);

        *buf = 138543362;
        v60 = v35;
LABEL_22:
        _os_log_impl(&dword_19BF1F000, v32, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
      }
    }

    else
    {
      v32 = PLDuplicateDetectionGetLog();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
      {
        v33 = [(PLDuplicateAsset *)self shortDescription];
        v36 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Duplicate Asset: [%@] score incremented to %td", v33, v58];
        v35 = _PLDuplicateAssetLogString(v36, @"latest user modification", 0);

        *buf = 138543362;
        v60 = v35;
        goto LABEL_22;
      }
    }

    goto LABEL_24;
  }

LABEL_25:
  v37 = [(PLDuplicateAsset *)self originalResolution];
  if (v37 <= [v6 originalResolution])
  {
    v42 = [(PLDuplicateAsset *)self originalResolution];
    if (v42 >= [v6 originalResolution])
    {
      goto LABEL_33;
    }

    v57 += 25;
    v38 = PLDuplicateDetectionGetLog();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
    {
      v39 = [v6 shortDescription];
      v43 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Duplicate Asset: [%@] score incremented to %td", v39, v57];
      v41 = _PLDuplicateAssetLogString(v43, @"originalResolution", 0);

      *buf = 138543362;
      v60 = v41;
      goto LABEL_31;
    }
  }

  else
  {
    v58 += 25;
    v38 = PLDuplicateDetectionGetLog();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
    {
      v39 = [(PLDuplicateAsset *)self shortDescription];
      v40 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Duplicate Asset: [%@] score incremented to %td", v39, v58];
      v41 = _PLDuplicateAssetLogString(v40, @"originalResolution", 0);

      *buf = 138543362;
      v60 = v41;
LABEL_31:
      _os_log_impl(&dword_19BF1F000, v38, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
    }
  }

LABEL_33:
  if (v58 == v57)
  {
    [(PLDuplicateAsset *)self _tieBreakerComparisonScoreWithOtherAsset:v6 score:&v58 otherScore:&v57];
  }

  v44 = PLDuplicateDetectionGetLog();
  if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
  {
    v46 = v57;
    v45 = v58;
    v47 = [(PLDuplicateAsset *)self shortDescription];
    v48 = [v6 shortDescription];
    *buf = 134218754;
    v60 = v45;
    v61 = 2048;
    v62 = v46;
    v63 = 2114;
    v64 = v47;
    v65 = 2114;
    v66 = v48;
    _os_log_impl(&dword_19BF1F000, v44, OS_LOG_TYPE_INFO, "Duplicate Asset: comparisonScore [%tu:%tu][%{public}@:%{public}@]", buf, 0x2Au);
  }

  if (v4)
  {
    [(PLDuplicateAsset *)self _mergeComparisonScoreModifierWithOtherAsset:v6 score:&v58 otherScore:&v57];
    v49 = PLDuplicateDetectionGetLog();
    if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
    {
      v51 = v57;
      v50 = v58;
      v52 = [(PLDuplicateAsset *)self shortDescription];
      v53 = [v6 shortDescription];
      *buf = 134218754;
      v60 = v50;
      v61 = 2048;
      v62 = v51;
      v63 = 2114;
      v64 = v52;
      v65 = 2114;
      v66 = v53;
      _os_log_impl(&dword_19BF1F000, v49, OS_LOG_TYPE_INFO, "Duplicate Asset: post-mergeComparisonScore [%tu:%tu][%{public}@:%{public}@]", buf, 0x2Au);
    }
  }

  v54 = 1;
  if (v58 >= v57)
  {
    v54 = -1;
  }

  if (v58 == v57)
  {
    v55 = 0;
  }

  else
  {
    v55 = v54;
  }

  return v55;
}

- (BOOL)hasModifiedUserTitle
{
  v2 = [(PLDuplicateAsset *)self asset];
  v3 = [v2 additionalAttributes];
  v4 = [v3 title];
  v5 = v4 != 0;

  return v5;
}

- (BOOL)hasModifiedUserDateCreated
{
  hasUserModifiedDateCreated = self->_hasUserModifiedDateCreated;
  if (hasUserModifiedDateCreated)
  {

    return [(NSNumber *)hasUserModifiedDateCreated BOOLValue];
  }

  else
  {
    v5 = [(PLDuplicateAsset *)self asset];
    v6 = [v5 dateCreated];

    if (v6)
    {
      v7 = [(PLDuplicateAsset *)self asset];
      v8 = [v7 extendedAttributes];
      v9 = [v8 dateCreated];

      if (v9 || -[PLDuplicateAsset enableEXIFDataAccess](self, "enableEXIFDataAccess") && (-[PLDuplicateAsset asset](self, "asset"), v11 = objc_claimAutoreleasedReturnValue(), [v11 metadataFromMediaPropertiesOrOriginalResource], v12 = objc_claimAutoreleasedReturnValue(), v11, objc_msgSend(v12, "utcCreationDate"), v9 = objc_claimAutoreleasedReturnValue(), v12, v9))
      {
        v10 = [(PLDuplicateAsset *)self _correctedCompareDate:v6 otherDate:v9]!= 0;
      }

      else
      {
        v10 = 1;
      }
    }

    else
    {
      v10 = 0;
    }

    v13 = [MEMORY[0x1E696AD98] numberWithBool:v10];
    v14 = self->_hasUserModifiedDateCreated;
    self->_hasUserModifiedDateCreated = v13;

    return v10;
  }
}

- (BOOL)hasModifiedUserTimezone
{
  hasUserModifiedTimezone = self->_hasUserModifiedTimezone;
  if (hasUserModifiedTimezone)
  {

    return [(NSNumber *)hasUserModifiedTimezone BOOLValue];
  }

  else
  {
    v5 = [(PLDuplicateAsset *)self asset];
    v6 = [v5 additionalAttributes];
    v7 = [v6 timeZoneOffset];

    if (v7)
    {
      v8 = [(PLDuplicateAsset *)self asset];
      v9 = [v8 extendedAttributes];
      v10 = [v9 timezoneOffset];

      if (v10 || -[PLDuplicateAsset enableEXIFDataAccess](self, "enableEXIFDataAccess") && (-[PLDuplicateAsset asset](self, "asset"), v12 = objc_claimAutoreleasedReturnValue(), [v12 metadataFromMediaPropertiesOrOriginalResource], v13 = objc_claimAutoreleasedReturnValue(), v12, objc_msgSend(v13, "timeZoneOffset"), v10 = objc_claimAutoreleasedReturnValue(), v13, v10))
      {
        v11 = [v7 isEqualToNumber:v10] ^ 1;
      }

      else
      {
        v11 = 1;
      }
    }

    else
    {
      v11 = 0;
    }

    v14 = [MEMORY[0x1E696AD98] numberWithBool:v11];
    v15 = self->_hasUserModifiedTimezone;
    self->_hasUserModifiedTimezone = v14;

    return v11;
  }
}

- (BOOL)hasModifiedUserLocation
{
  hasUserModifiedLocation = self->_hasUserModifiedLocation;
  if (hasUserModifiedLocation)
  {

    return [(NSNumber *)hasUserModifiedLocation BOOLValue];
  }

  else
  {
    v5 = [(PLDuplicateAsset *)self asset];
    v6 = [v5 extendedAttributes];

    v7 = [v6 latitude];
    v8 = [v6 longitude];
    v9 = [(PLDuplicateAsset *)self asset];
    [v9 latitude];
    v11 = v10;

    v12 = [(PLDuplicateAsset *)self asset];
    [v12 longitude];
    v14 = v13;

    if (v11 == -180.0 && v14 == -180.0)
    {
      v15 = 0;
    }

    else
    {
      v15 = 1;
      if (v7 && v8)
      {
        [v7 doubleValue];
        v17 = v16;
        [v8 doubleValue];
        v15 = vabdd_f64(v17 + v18, v11 + v14) > 2.22044605e-16;
      }
    }

    v19 = [MEMORY[0x1E696AD98] numberWithBool:v15];
    v20 = self->_hasUserModifiedLocation;
    self->_hasUserModifiedLocation = v19;

    return v15;
  }
}

- (int64_t)score
{
  result = self->_score;
  if (result == -100)
  {
    result = [(PLDuplicateAsset *)self _buildBaseScore];
    self->_score = result;
  }

  return result;
}

- (BOOL)isCPLEnabled
{
  isCPLEnabled = self->_isCPLEnabled;
  if (!isCPLEnabled)
  {
    v4 = MEMORY[0x1E696AD98];
    v5 = [(PLDuplicateAsset *)self asset];
    v6 = [v5 photoLibrary];
    v7 = [v4 numberWithBool:{objc_msgSend(v6, "isCloudPhotoLibraryEnabled")}];
    v8 = self->_isCPLEnabled;
    self->_isCPLEnabled = v7;

    isCPLEnabled = self->_isCPLEnabled;
  }

  return [(NSNumber *)isCPLEnabled BOOLValue];
}

- (void)setMergeStatus:(int64_t)a3
{
  mergeStatus = self->_mergeStatus;
  if (mergeStatus < 2)
  {
    goto LABEL_2;
  }

  if (mergeStatus == 2 && a3 == 0)
  {
    a3 = 0;
LABEL_2:
    self->_mergeStatus = a3;
  }
}

- (id)debugDescription
{
  v7.receiver = self;
  v7.super_class = PLDuplicateAsset;
  v3 = [(PLDuplicateAsset *)&v7 description];
  v4 = [(PLDuplicateAsset *)self _additionalDescriptionWithPIIDetails:1];
  v5 = [v3 stringByAppendingFormat:@": %@", v4];

  return v5;
}

- (id)_additionalDescriptionState:(id)a3
{
  v3 = MEMORY[0x1E696AD60];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  v6 = [v4 objectForKeyedSubscript:@"mergeStatus"];
  [v5 appendFormat:@"m%@:", v6];

  v7 = [v4 objectForKeyedSubscript:@"visibility"];
  v8 = [v7 substringToIndex:1];
  [v5 appendFormat:@"v%@:", v8];

  v9 = [v4 objectForKeyedSubscript:@"resourceSwapDisabled"];
  v10 = [v9 substringToIndex:1];
  [v5 appendFormat:@"rd%@:", v10];

  v11 = [v4 objectForKeyedSubscript:@"hasModifiedUserLocation"];
  v12 = [v11 substringToIndex:1];
  [v5 appendFormat:@"ul%@:", v12];

  v13 = [v4 objectForKeyedSubscript:@"hasModifiedUserTimezone"];
  v14 = [v13 substringToIndex:1];
  [v5 appendFormat:@"utz%@:", v14];

  v15 = [v4 objectForKeyedSubscript:@"hasModifiedUserDateCreated"];

  v16 = [v15 substringToIndex:1];
  [v5 appendFormat:@"ud%@:", v16];

  return v5;
}

- (id)_additionalDescriptionWithPIIDetails:(BOOL)a3
{
  v3 = a3;
  v5 = [(PLDuplicateAsset *)self _additionalDescriptionDictionaryWithPIIDetails:?];
  v6 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v7 = [v5 objectForKeyedSubscript:@"objectIDDescription"];
  [v6 appendFormat:@"[%@", v7];

  v8 = [v5 objectForKeyedSubscript:@"uuid"];
  [v6 appendFormat:@"/%@]", v8];

  v9 = [v5 objectForKeyedSubscript:@"score"];
  [v6 appendFormat:@" score:[%@]", v9];

  v10 = [(PLDuplicateAsset *)self _additionalDescriptionState:v5];
  [v6 appendFormat:@" state:[%@]", v10];

  if (v3)
  {
    v11 = [v5 objectForKeyedSubscript:@"filename"];
    [v6 appendFormat:@" filename:[%@]", v11];
  }

  return v6;
}

- (id)_additionalDescriptionDictionaryWithPIIDetails:(BOOL)a3
{
  v3 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v6 = [(PLDuplicateAsset *)self veryShortDescription];
  [v5 setObject:v6 forKeyedSubscript:@"objectIDDescription"];

  v7 = [(PLDuplicateAsset *)self assetUUID];
  [v5 setObject:v7 forKeyedSubscript:@"uuid"];

  if (v3)
  {
    [v5 setObject:self->_originalFilename forKeyedSubscript:@"filename"];
  }

  v8 = [(PLDuplicateAsset *)self duplicateAssetVisibilityStateString];
  [v5 setObject:v8 forKeyedSubscript:@"visibility"];

  v9 = [MEMORY[0x1E696AD98] numberWithInteger:{-[PLDuplicateAsset score](self, "score")}];
  [v5 setObject:v9 forKeyedSubscript:@"score"];

  v10 = [MEMORY[0x1E696AD98] numberWithInteger:self->_mergeStatus];
  [v5 setObject:v10 forKeyedSubscript:@"mergeStatus"];

  v11 = [MEMORY[0x1E696AD98] numberWithInteger:self->_originalResolution];
  [v5 setObject:v11 forKeyedSubscript:@"originalResolution"];

  if ([(PLDuplicateAsset *)self hasModifiedUserLocation])
  {
    v12 = @"YES";
  }

  else
  {
    v12 = @"NO";
  }

  [v5 setObject:v12 forKeyedSubscript:@"hasModifiedUserLocation"];
  if ([(PLDuplicateAsset *)self hasModifiedUserTimezone])
  {
    v13 = @"YES";
  }

  else
  {
    v13 = @"NO";
  }

  [v5 setObject:v13 forKeyedSubscript:@"hasModifiedUserTimezone"];
  if ([(PLDuplicateAsset *)self hasModifiedUserDateCreated])
  {
    v14 = @"YES";
  }

  else
  {
    v14 = @"NO";
  }

  [v5 setObject:v14 forKeyedSubscript:@"hasModifiedUserDateCreated"];
  if ([(PLDuplicateAsset *)self resourceSwapDisabled])
  {
    v15 = @"YES";
  }

  else
  {
    v15 = @"NO";
  }

  [v5 setObject:v15 forKeyedSubscript:@"resourceSwapDisabled"];

  return v5;
}

- (id)duplicateAssetVisibilityStateString
{
  v2 = [(PLDuplicateAsset *)self duplicateAssetVisibilityState];
  v3 = @"R";
  v4 = @"H";
  if (v2 != 100)
  {
    v4 = 0;
  }

  if (v2 != 2)
  {
    v3 = v4;
  }

  v5 = @"X";
  v6 = @"V";
  if (v2 != 1)
  {
    v6 = 0;
  }

  if (v2)
  {
    v5 = v6;
  }

  if (v2 <= 1u)
  {
    return v5;
  }

  else
  {
    return v3;
  }
}

- (signed)_calculateDuplicateAssetVisibilityState
{
  v2 = [(PLDuplicateAsset *)self asset];
  v3 = [v2 activeLibraryScopeParticipationState];

  if (v3 == 1)
  {
    return 100;
  }

  else
  {
    return 1;
  }
}

- (void)_configureInitPropertiesWithAsset:(id)a3
{
  v4 = a3;
  v19 = [v4 additionalAttributes];
  v5 = [v4 objectID];
  assetObjectID = self->_assetObjectID;
  self->_assetObjectID = v5;

  v7 = [(NSManagedObjectID *)self->_assetObjectID URIRepresentation];
  v8 = [v7 relativePath];
  assetObjectIDDescription = self->_assetObjectIDDescription;
  self->_assetObjectIDDescription = v8;

  v10 = [v19 originalWidth];
  v11 = [v10 integerValue];
  v12 = [v19 originalHeight];
  self->_originalResolution = [v12 integerValue] * v11;

  v13 = [v4 uuid];

  v14 = [v13 copy];
  assetUUID = self->_assetUUID;
  self->_assetUUID = v14;

  v16 = [v19 originalFilename];
  v17 = [v16 copy];
  originalFilename = self->_originalFilename;
  self->_originalFilename = v17;

  self->_score = [(PLDuplicateAsset *)self _buildBaseScore];
  self->_duplicateAssetVisibilityState = [(PLDuplicateAsset *)self _calculateDuplicateAssetVisibilityState];
}

- (PLDuplicateAsset)initWithAsset:(id)a3 cloudScopedIdentifier:(id)a4 enableEXIFDataAccess:(BOOL)a5
{
  v10 = a3;
  v11 = a4;
  if (!v10)
  {
    v21 = [MEMORY[0x1E696AAA8] currentHandler];
    [v21 handleFailureInMethod:a2 object:self file:@"PLDuplicateAsset.m" lineNumber:146 description:{@"Invalid parameter not satisfying: %@", @"asset"}];
  }

  v22.receiver = self;
  v22.super_class = PLDuplicateAsset;
  v12 = [(PLDuplicateAsset *)&v22 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_asset, a3);
    if (v11)
    {
      v14 = [v11 copy];
      assetCloudScopedIdentifier = v13->_assetCloudScopedIdentifier;
      v13->_assetCloudScopedIdentifier = v14;
    }

    else
    {
      assetCloudScopedIdentifier = [v10 cloudAssetGUID];
      v16 = [assetCloudScopedIdentifier copy];
      v17 = v13->_assetCloudScopedIdentifier;
      v13->_assetCloudScopedIdentifier = v16;
    }

    v18 = [(PLManagedAsset *)v13->_asset duplicateAssetVisibilityState];
    v19 = 1;
    if (!v18)
    {
      v19 = 2;
    }

    v13->_mergeStatus = v19;
    v13->_enableEXIFDataAccess = a5;
    v13->_resourceSwapDisabled = 0;
    [(PLDuplicateAsset *)v13 _configureInitPropertiesWithAsset:v10];
  }

  return v13;
}

+ (BOOL)isDuplicateAssetSortChangedObject:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 changedValues];
  if ([v4 count])
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v5 = [v3 duplicateSortPropertyNamesSkip];
    v6 = [v5 countByEnumeratingWithState:&v20 objects:v25 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v21;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v21 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [v4 objectForKeyedSubscript:*(*(&v20 + 1) + 8 * i)];

          if (v10)
          {
            LOBYTE(v11) = 0;
            goto LABEL_22;
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v20 objects:v25 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v5 = [v3 duplicateSortPropertyNames];
    v11 = [v5 countByEnumeratingWithState:&v16 objects:v24 count:16];
    if (v11)
    {
      v12 = *v17;
      while (2)
      {
        for (j = 0; j != v11; ++j)
        {
          if (*v17 != v12)
          {
            objc_enumerationMutation(v5);
          }

          v14 = [v4 objectForKeyedSubscript:*(*(&v16 + 1) + 8 * j)];

          if (v14)
          {
            LOBYTE(v11) = 1;
            goto LABEL_22;
          }
        }

        v11 = [v5 countByEnumeratingWithState:&v16 objects:v24 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

LABEL_22:
  }

  else
  {
    LOBYTE(v11) = 0;
  }

  return v11;
}

+ (id)relationshipKeyPathsForMergePrefetching
{
  v6[2] = *MEMORY[0x1E69E9840];
  v2 = [a1 relationshipKeyPathsForPrefetching];
  v6[0] = @"albums";
  v6[1] = @"libraryScope";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:2];
  v4 = [v2 arrayByAddingObjectsFromArray:v3];

  return v4;
}

+ (id)relationshipKeyPathsForPrefetching
{
  v4[6] = *MEMORY[0x1E69E9840];
  v4[0] = @"additionalAttributes";
  v4[1] = @"additionalAttributes.assetDescription";
  v4[2] = @"additionalAttributes.unmanagedAdjustment";
  v4[3] = @"additionalAttributes.keywords";
  v4[4] = @"additionalAttributes.editedIPTCAttributes";
  v4[5] = @"extendedAttributes";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:6];

  return v2;
}

@end