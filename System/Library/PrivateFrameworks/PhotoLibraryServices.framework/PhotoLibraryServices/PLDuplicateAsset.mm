@interface PLDuplicateAsset
+ (BOOL)isDuplicateAssetSortChangedObject:(id)object;
+ (id)relationshipKeyPathsForMergePrefetching;
+ (id)relationshipKeyPathsForPrefetching;
- (BOOL)_validCPLAssetsWithAssets:(id)assets;
- (BOOL)hasModifiedUserDateCreated;
- (BOOL)hasModifiedUserLocation;
- (BOOL)hasModifiedUserTimezone;
- (BOOL)hasModifiedUserTitle;
- (BOOL)isCPLEnabled;
- (PLDuplicateAsset)initWithAsset:(id)asset cloudScopedIdentifier:(id)identifier enableEXIFDataAccess:(BOOL)access;
- (PLDuplicateAssetScoreTuple)_compareResourcesAdditionalChecksFromOther:(id)other;
- (PLDuplicateAssetScoreTuple)_compareResourcesMatchingKindSubtypeCheckFromOther:(id)other error:(id *)error;
- (PLDuplicateAssetScoreTuple)_compareResourcesMatchingPlaybackStyleAndKindSubTypeCheckFromOther:(id)other;
- (PLDuplicateAssetScoreTuple)_compareResourcesMatchingPlaybackStyleCheckFromOther:(id)other error:(id *)error;
- (PLDuplicateAssetScoreTuple)_compareResourcesNotMatchingPlaybackStyleAndKindSubTypeCheckFromOther:(id)other error:(id *)error;
- (id)_additionalDescriptionDictionaryWithPIIDetails:(BOOL)details;
- (id)_additionalDescriptionState:(id)state;
- (id)_additionalDescriptionWithPIIDetails:(BOOL)details;
- (id)debugDescription;
- (id)duplicateAssetVisibilityStateString;
- (int64_t)_buildBaseScore;
- (int64_t)_buildUserModifiedScore;
- (int64_t)_correctedCompareDate:(id)date otherDate:(id)otherDate;
- (int64_t)compare:(id)compare enabledMergeComparison:(BOOL)comparison;
- (int64_t)compareResource:(id)resource error:(id *)error;
- (int64_t)score;
- (signed)_calculateDuplicateAssetVisibilityState;
- (void)_compareResourceReverseCheckFromOther:(id)other score:(PLDuplicateAssetScoreTuple *)score;
- (void)_compareResourceTIFFCheckFromAsset:(id)asset other:(id)other scoreProperty:(signed __int16 *)property;
- (void)_compareResourcesResetPropertiesWithOther:(id)other;
- (void)_compareUTICheckFromOther:(id)other scoreTuple:(PLDuplicateAssetScoreTuple *)tuple;
- (void)_configureInitPropertiesWithAsset:(id)asset;
- (void)_fileFormatIncrementScore:(int64_t *)score;
- (void)_mergeComparisonScoreModifierWithOtherAsset:(id)asset score:(int64_t *)score otherScore:(int64_t *)otherScore;
- (void)_tieBreakerComparisonScoreWithOtherAsset:(id)asset score:(int64_t *)score otherScore:(int64_t *)otherScore;
- (void)_updateScoreOnCondition:(BOOL)condition incrementOtherScore:(BOOL)score scoreTuple:(PLDuplicateAssetScoreTuple *)tuple other:(id)other propertyName:(id)name additionalLogString:(id)string;
- (void)_updateScoresUsingLatestDateWithDate:(id)date otherDate:(id)otherDate score:(int64_t *)score otherScore:(int64_t *)otherScore;
- (void)setMergeStatus:(int64_t)status;
@end

@implementation PLDuplicateAsset

- (void)_fileFormatIncrementScore:(int64_t *)score
{
  v26 = *MEMORY[0x1E69E9840];
  asset = [(PLDuplicateAsset *)self asset];
  if (([asset isJPEG] & 1) == 0)
  {
    if ([asset isHEIF])
    {
      ++*score;
      v6 = PLDuplicateDetectionGetLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        shortDescription = [(PLDuplicateAsset *)self shortDescription];
        v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Duplicate Asset: [%@] score incremented to %td", shortDescription, *score];
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
      asset2 = [(PLDuplicateAsset *)self asset];
      rAWBadgeAttribute = [asset2 RAWBadgeAttribute];

      if (!rAWBadgeAttribute)
      {
        v13 = MEMORY[0x1E69C08F0];
        uniformTypeIdentifier = [asset uniformTypeIdentifier];
        v6 = [v13 typeWithIdentifier:uniformTypeIdentifier];

        canonTIFFRAWImageType = [MEMORY[0x1E69C08F0] canonTIFFRAWImageType];
        v16 = [v6 isEqual:canonTIFFRAWImageType];

        if (v16)
        {
          *score += 2;
          v9 = PLDuplicateDetectionGetLog();
          if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_9;
          }

          shortDescription2 = [(PLDuplicateAsset *)self shortDescription];
          v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Duplicate Asset: [%@] score incremented to %td", shortDescription2, *score];
          v19 = _PLDuplicateAssetLogString(v18, @"uniformTypeIdentifier", @"TIFFRaw");

          *buf = 138543362;
          v25 = v19;
        }

        else
        {
          adobePhotoshopType = [MEMORY[0x1E69C08F0] adobePhotoshopType];
          if ([v6 isEqual:adobePhotoshopType])
          {
          }

          else
          {
            adobeIllustratorType = [MEMORY[0x1E69C08F0] adobeIllustratorType];
            v22 = [v6 isEqual:adobeIllustratorType];

            if (!v22)
            {
              goto LABEL_10;
            }
          }

          *score += 3;
          v9 = PLDuplicateDetectionGetLog();
          if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_9;
          }

          shortDescription2 = [(PLDuplicateAsset *)self shortDescription];
          v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Duplicate Asset: [%@] score incremented to %td", shortDescription2, *score];
          v19 = _PLDuplicateAssetLogString(v23, @"uniformTypeIdentifier", @"Adobe");

          *buf = 138543362;
          v25 = v19;
        }

        _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);

        goto LABEL_9;
      }

      *score += 4;
      v6 = PLDuplicateDetectionGetLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        shortDescription = [(PLDuplicateAsset *)self shortDescription];
        v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Duplicate Asset: [%@] score incremented to %td", shortDescription, *score];
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
  asset = [(PLDuplicateAsset *)self asset];
  additionalAttributes = [asset additionalAttributes];
  if ([(PLDuplicateAsset *)self hasModifiedUserTitle])
  {
    title = [additionalAttributes title];
    originalFilename = [additionalAttributes originalFilename];
    if ([title isEqualToString:originalFilename])
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
      shortDescription = [(PLDuplicateAsset *)self shortDescription];
      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Duplicate Asset: [%@] score incremented to %td", shortDescription, v7];
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

  assetDescription = [additionalAttributes assetDescription];
  longDescription = [assetDescription longDescription];

  if (longDescription)
  {
    v7 += 5;
    v14 = PLDuplicateDetectionGetLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      shortDescription2 = [(PLDuplicateAsset *)self shortDescription];
      v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Duplicate Asset: [%@] score incremented to %td", shortDescription2, v7];
      v17 = _PLDuplicateAssetLogString(v16, @"longDescription", 0);

      *buf = 138543362;
      v38 = v17;
      _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
    }
  }

  keywords = [additionalAttributes keywords];
  v19 = [keywords count];

  if (v19 >= 1)
  {
    v7 += 5 * v19;
    v20 = PLDuplicateDetectionGetLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      shortDescription3 = [(PLDuplicateAsset *)self shortDescription];
      v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Duplicate Asset: [%@] score incremented to %td", shortDescription3, v7];
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
      shortDescription4 = [(PLDuplicateAsset *)self shortDescription];
      v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Duplicate Asset: [%@] score incremented to %td", shortDescription4, v7];
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
      shortDescription5 = [(PLDuplicateAsset *)self shortDescription];
      v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Duplicate Asset: [%@] score incremented to %td", shortDescription5, v7];
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
      shortDescription6 = [(PLDuplicateAsset *)self shortDescription];
      v34 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Duplicate Asset: [%@] score incremented to %td", shortDescription6, v7];
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
  _buildUserModifiedScore = [(PLDuplicateAsset *)self _buildUserModifiedScore];
  v51 = _buildUserModifiedScore;
  asset = [(PLDuplicateAsset *)self asset];
  hasAdjustments = [asset hasAdjustments];

  if (hasAdjustments)
  {
    _buildUserModifiedScore += 15;
    v51 = _buildUserModifiedScore;
    v6 = PLDuplicateDetectionGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      shortDescription = [(PLDuplicateAsset *)self shortDescription];
      v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Duplicate Asset: [%@] score incremented to %td", shortDescription, _buildUserModifiedScore];
      v9 = _PLDuplicateAssetLogString(v8, @"adjustmentsState", 0);

      *buf = 138543362;
      v53 = v9;
      _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
    }
  }

  asset2 = [(PLDuplicateAsset *)self asset];
  favorite = [asset2 favorite];

  if (favorite)
  {
    _buildUserModifiedScore += 20;
    v51 = _buildUserModifiedScore;
    v12 = PLDuplicateDetectionGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      shortDescription2 = [(PLDuplicateAsset *)self shortDescription];
      v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Duplicate Asset: [%@] score incremented to %td", shortDescription2, _buildUserModifiedScore];
      v15 = _PLDuplicateAssetLogString(v14, @"favorite", 0);

      *buf = 138543362;
      v53 = v15;
      _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
    }
  }

  asset3 = [(PLDuplicateAsset *)self asset];
  additionalAttributes = [asset3 additionalAttributes];
  importedBy = [additionalAttributes importedBy];

  if (importedBy <= 0xF)
  {
    if (((1 << importedBy) & 0x2360) != 0)
    {
      _buildUserModifiedScore += 10;
      v51 = _buildUserModifiedScore;
      v19 = PLDuplicateDetectionGetLog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_18;
      }
    }

    else
    {
      if (((1 << importedBy) & 0x16) == 0)
      {
        if (((1 << importedBy) & 0x8088) == 0)
        {
          goto LABEL_20;
        }

        _buildUserModifiedScore += 5;
        v51 = _buildUserModifiedScore;
        v19 = PLDuplicateDetectionGetLog();
        if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_19;
        }

        goto LABEL_18;
      }

      _buildUserModifiedScore += 15;
      v51 = _buildUserModifiedScore;
      v19 = PLDuplicateDetectionGetLog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
LABEL_18:
        shortDescription3 = [(PLDuplicateAsset *)self shortDescription];
        v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Duplicate Asset: [%@] score incremented to %td", shortDescription3, _buildUserModifiedScore];
        v22 = _PLDuplicateAssetLogString(v21, @"importedBy", 0);

        *buf = 138543362;
        v53 = v22;
        _os_log_impl(&dword_19BF1F000, v19, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
      }
    }

LABEL_19:
  }

LABEL_20:
  asset4 = [(PLDuplicateAsset *)self asset];
  playbackStyle = [asset4 playbackStyle];

  if (playbackStyle > 3)
  {
    if ((playbackStyle - 4) >= 2)
    {
      goto LABEL_34;
    }
  }

  else
  {
    if (playbackStyle == 1)
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

    if (playbackStyle == 2)
    {
      v51 = _buildUserModifiedScore + 5;
      v25 = PLDuplicateDetectionGetLog();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        shortDescription4 = [(PLDuplicateAsset *)self shortDescription];
        v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Duplicate Asset: [%@] score incremented to %td", shortDescription4, v51];
        v28 = _PLDuplicateAssetLogString(v29, @"playbackStyle", 0);

        *buf = 138543362;
        v53 = v28;
        goto LABEL_32;
      }

      goto LABEL_33;
    }

    if (playbackStyle != 3)
    {
      goto LABEL_34;
    }

    [(PLDuplicateAsset *)self _fileFormatIncrementScore:&v51];
    _buildUserModifiedScore = v51;
  }

  v51 = _buildUserModifiedScore + 15;
  v25 = PLDuplicateDetectionGetLog();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
  {
LABEL_27:
    shortDescription4 = [(PLDuplicateAsset *)self shortDescription];
    v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Duplicate Asset: [%@] score incremented to %td", shortDescription4, v51];
    v28 = _PLDuplicateAssetLogString(v27, @"playbackStyle", 0);

    *buf = 138543362;
    v53 = v28;
LABEL_32:
    _os_log_impl(&dword_19BF1F000, v25, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
  }

LABEL_33:

LABEL_34:
  asset5 = [(PLDuplicateAsset *)self asset];
  hdrType = [asset5 hdrType];

  if (hdrType >= 1)
  {
    v51 += 5;
    v32 = PLDuplicateDetectionGetLog();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
    {
      shortDescription5 = [(PLDuplicateAsset *)self shortDescription];
      v34 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Duplicate Asset: [%@] score incremented to %td", shortDescription5, v51];
      v35 = _PLDuplicateAssetLogString(v34, @"hdrType", 0);

      *buf = 138543362;
      v53 = v35;
      _os_log_impl(&dword_19BF1F000, v32, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
    }
  }

  asset6 = [(PLDuplicateAsset *)self asset];
  kindSubtype = [asset6 kindSubtype];

  if (kindSubtype - 101 <= 3 && kindSubtype != 103 || kindSubtype < 3u)
  {
    v51 += 5;
    v38 = PLDuplicateDetectionGetLog();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
    {
      shortDescription6 = [(PLDuplicateAsset *)self shortDescription];
      v40 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Duplicate Asset: [%@] score incremented to %td", shortDescription6, v51];
      v41 = _PLDuplicateAssetLogString(v40, @"kindSubtype", 0);

      *buf = 138543362;
      v53 = v41;
      _os_log_impl(&dword_19BF1F000, v38, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
    }
  }

  asset7 = [(PLDuplicateAsset *)self asset];
  [asset7 savedAssetType];

  [MEMORY[0x1E69BF328] maskForFinderSyncedAsset];
  if ((PLValidatedSavedAssetTypeApplies() & 1) != 0 || ([MEMORY[0x1E69BF328] maskForReferencedAsset], PLValidatedSavedAssetTypeApplies()))
  {
    v51 = 0;
    v43 = PLDuplicateDetectionGetLog();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
    {
      shortDescription7 = [(PLDuplicateAsset *)self shortDescription];
      v45 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Duplicate Asset: [%@] score incremented to %td", shortDescription7, v51];
      v46 = _PLDuplicateAssetLogString(v45, @"savedAssetType", @"Score was invalidated");

      *buf = 138543362;
      v53 = v46;
      _os_log_impl(&dword_19BF1F000, v43, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
    }

    v47 = PLDuplicateDetectionGetLog();
    if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
    {
      v48 = PLValidatedSavedAssetTypeDescription();
      shortDescription8 = [(PLDuplicateAsset *)self shortDescription];
      *buf = 138543618;
      v53 = v48;
      v54 = 2114;
      v55 = shortDescription8;
      _os_log_impl(&dword_19BF1F000, v47, OS_LOG_TYPE_INFO, "Duplicate Asset: reset score to 0 based on savedAssetType: %{public}@ [%{public}@]", buf, 0x16u);
    }
  }

  return v51;
}

- (void)_compareResourcesResetPropertiesWithOther:(id)other
{
  otherCopy = other;
  [(PLDuplicateAsset *)self setResourceComparisonPropertyUpdateLocation:0];
  [otherCopy setResourceComparisonPropertyUpdateLocation:0];
}

- (void)_compareResourceReverseCheckFromOther:(id)other score:(PLDuplicateAssetScoreTuple *)score
{
  v42 = *MEMORY[0x1E69E9840];
  otherCopy = other;
  asset = [otherCopy asset];
  asset2 = [(PLDuplicateAsset *)self asset];
  additionalAttributes = [asset2 additionalAttributes];
  originatingAssetIdentifier = [additionalAttributes originatingAssetIdentifier];

  additionalAttributes2 = [asset additionalAttributes];
  originatingAssetIdentifier2 = [additionalAttributes2 originatingAssetIdentifier];

  if ((originatingAssetIdentifier == 0) == (originatingAssetIdentifier2 != 0))
  {
    additionalAttributes3 = [asset2 additionalAttributes];
    originalStableHash = [additionalAttributes3 originalStableHash];

    additionalAttributes4 = [asset additionalAttributes];
    originalStableHash2 = [additionalAttributes4 originalStableHash];

    if (([originatingAssetIdentifier isEqualToString:originalStableHash2] & 1) == 0 && !objc_msgSend(originatingAssetIdentifier2, "isEqualToString:", originalStableHash))
    {
      goto LABEL_20;
    }

    v38 = originalStableHash2;
    v39 = originalStableHash;
    v37 = asset2;
    v17 = *score;
    v18 = [MEMORY[0x1E696AD98] numberWithShort:score->var0];
    v19 = [MEMORY[0x1E696AD98] numberWithShort:(*&v17 >> 16)];
    v20 = [v18 compare:v19];

    if (v20 == -1)
    {
      originalStableHash2 = v38;
      originalStableHash = v39;
      if (originatingAssetIdentifier2)
      {
        score->var0 = score->var1 + 5;
        v25 = PLDuplicateDetectionGetLog();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
        {
LABEL_11:
          shortDescription = [(PLDuplicateAsset *)self shortDescription];
          shortDescription2 = [otherCopy shortDescription];
          var0 = score->var0;
          v29 = (*score >> 16);
          v30 = shortDescription;
          v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Duplicate Asset: Resource comparisonScore [%d:%d][%@:%@]", var0, v29, shortDescription, shortDescription2];
          v32 = _PLDuplicateAssetLogString(v31, @"originatingAssetIdentifier", @"reversed");

          originalStableHash = v39;
          *buf = 138543362;
          v41 = v32;
          _os_log_impl(&dword_19BF1F000, v25, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);

LABEL_18:
          originalStableHash2 = v38;
        }

LABEL_19:
      }

LABEL_20:

      goto LABEL_21;
    }

    v21 = *score;
    v22 = [MEMORY[0x1E696AD98] numberWithShort:score->var0];
    v23 = [MEMORY[0x1E696AD98] numberWithShort:(*&v21 >> 16)];
    v24 = [v22 compare:v23];

    if (v24)
    {
      originalStableHash2 = v38;
      originalStableHash = v39;
      if (originatingAssetIdentifier)
      {
        score->var1 = score->var0 + 5;
        v25 = PLDuplicateDetectionGetLog();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_11;
        }

        goto LABEL_19;
      }

      goto LABEL_20;
    }

    if (originatingAssetIdentifier2)
    {
      score->var0 = score->var1 + 5;
      v25 = PLDuplicateDetectionGetLog();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_16;
      }
    }

    else
    {
      score->var1 = score->var0 + 5;
      v25 = PLDuplicateDetectionGetLog();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
LABEL_16:
        shortDescription3 = [(PLDuplicateAsset *)self shortDescription];
        shortDescription4 = [otherCopy shortDescription];
        v35 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Duplicate Asset: Resource comparisonScore [%d:%d][%@:%@]", score->var0, (*score >> 16), shortDescription3, shortDescription4];
        v36 = _PLDuplicateAssetLogString(v35, @"originatingAssetIdentifier", @"reversed");

        *buf = 138543362;
        v41 = v36;
        _os_log_impl(&dword_19BF1F000, v25, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
      }
    }

    asset2 = v37;
    originalStableHash = v39;
    goto LABEL_18;
  }

LABEL_21:
}

- (void)_compareResourceTIFFCheckFromAsset:(id)asset other:(id)other scoreProperty:(signed __int16 *)property
{
  otherCopy = other;
  asset = [asset asset];
  asset2 = [otherCopy asset];

  additionalAttributes = [asset2 additionalAttributes];
  dateCreatedSource = [additionalAttributes dateCreatedSource];

  if ((dateCreatedSource - 1) <= 1u)
  {
    extendedAttributes = [asset2 extendedAttributes];
    dateCreated = [extendedAttributes dateCreated];

    if (dateCreated)
    {
      extendedAttributes2 = [asset extendedAttributes];
      dateCreated2 = [extendedAttributes2 dateCreated];

      if (dateCreated2)
      {
        extendedAttributes3 = [asset2 extendedAttributes];
        dateCreated3 = [extendedAttributes3 dateCreated];
        extendedAttributes4 = [asset extendedAttributes];
        dateCreated4 = [extendedAttributes4 dateCreated];
        [dateCreated3 timeIntervalSinceDate:dateCreated4];
        if (v19 >= 0.0)
        {
          v20 = 0;
        }

        else
        {
          v20 = 5;
        }

        *property = v20;
      }

      else
      {
        *property = 5;
      }
    }
  }
}

- (void)_updateScoreOnCondition:(BOOL)condition incrementOtherScore:(BOOL)score scoreTuple:(PLDuplicateAssetScoreTuple *)tuple other:(id)other propertyName:(id)name additionalLogString:(id)string
{
  scoreCopy = score;
  conditionCopy = condition;
  v37 = *MEMORY[0x1E69E9840];
  otherCopy = other;
  nameCopy = name;
  stringCopy = string;
  v17 = *tuple;
  v18 = [MEMORY[0x1E696AD98] numberWithShort:tuple->var0];
  v19 = [MEMORY[0x1E696AD98] numberWithShort:(*&v17 >> 16)];
  v20 = [v18 compare:v19];

  if (v20)
  {
    v21 = 1;
  }

  else
  {
    v21 = !conditionCopy;
  }

  if (!v21)
  {
    v22 = 2;
    if (!scoreCopy)
    {
      v22 = 0;
    }

    *(&tuple->var0 + v22) = 5;
    v23 = PLDuplicateDetectionGetLog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      shortDescription = [(PLDuplicateAsset *)self shortDescription];
      [otherCopy shortDescription];
      v25 = v34 = otherCopy;
      v26 = *tuple;
      v27 = MEMORY[0x1E696AEC0];
      var0 = v26.var0;
      v29 = (*&v26 >> 16);
      v30 = stringCopy;
      v31 = nameCopy;
      v32 = [v27 stringWithFormat:@"Duplicate Asset: Resource comparisonScore [%d:%d][%@:%@]", var0, v29, shortDescription, v25];
      v33 = _PLDuplicateAssetLogString(v32, v31, v30);

      *buf = 138543362;
      v36 = v33;
      _os_log_impl(&dword_19BF1F000, v23, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);

      otherCopy = v34;
    }
  }
}

- (void)_compareUTICheckFromOther:(id)other scoreTuple:(PLDuplicateAssetScoreTuple *)tuple
{
  v36 = *MEMORY[0x1E69E9840];
  otherCopy = other;
  v33 = 0;
  asset = [otherCopy asset];
  asset2 = [(PLDuplicateAsset *)self asset];
  v9 = MEMORY[0x1E69C08F0];
  uniformTypeIdentifier = [asset uniformTypeIdentifier];
  v11 = [v9 typeWithIdentifier:uniformTypeIdentifier];

  v12 = MEMORY[0x1E69C08F0];
  uniformTypeIdentifier2 = [asset2 uniformTypeIdentifier];
  v14 = [v12 typeWithIdentifier:uniformTypeIdentifier2];

  if ([v11 isEqual:v14])
  {
    goto LABEL_19;
  }

  if ([asset isHEIF])
  {
    isJPEG = [asset2 isJPEG];
  }

  else
  {
    isJPEG = 0;
  }

  [(PLDuplicateAsset *)self _updateScoreOnCondition:isJPEG incrementOtherScore:1 scoreTuple:&v33 other:otherCopy propertyName:@"UTI" additionalLogString:@"JPG:HEIF format"];
  if ([asset2 isHEIF])
  {
    isJPEG2 = [asset isJPEG];
  }

  else
  {
    isJPEG2 = 0;
  }

  [(PLDuplicateAsset *)self _updateScoreOnCondition:isJPEG2 incrementOtherScore:0 scoreTuple:&v33 other:otherCopy propertyName:@"UTI" additionalLogString:@"HEIF:JPG format"];
  canonTIFFRAWImageType = [MEMORY[0x1E69C08F0] canonTIFFRAWImageType];
  -[PLDuplicateAsset _updateScoreOnCondition:incrementOtherScore:scoreTuple:other:propertyName:additionalLogString:](self, "_updateScoreOnCondition:incrementOtherScore:scoreTuple:other:propertyName:additionalLogString:", [v11 isEqual:canonTIFFRAWImageType], 1, &v33, otherCopy, @"UTI", @"??:TIFF format");

  canonTIFFRAWImageType2 = [MEMORY[0x1E69C08F0] canonTIFFRAWImageType];
  -[PLDuplicateAsset _updateScoreOnCondition:incrementOtherScore:scoreTuple:other:propertyName:additionalLogString:](self, "_updateScoreOnCondition:incrementOtherScore:scoreTuple:other:propertyName:additionalLogString:", [v14 isEqual:canonTIFFRAWImageType2], 0, &v33, otherCopy, @"UTI", @"TIFF:?? format");

  adobePhotoshopType = [MEMORY[0x1E69C08F0] adobePhotoshopType];
  -[PLDuplicateAsset _updateScoreOnCondition:incrementOtherScore:scoreTuple:other:propertyName:additionalLogString:](self, "_updateScoreOnCondition:incrementOtherScore:scoreTuple:other:propertyName:additionalLogString:", [v11 isEqual:adobePhotoshopType], 1, &v33, otherCopy, @"UTI", @"??:Photoshop format");

  adobePhotoshopType2 = [MEMORY[0x1E69C08F0] adobePhotoshopType];
  -[PLDuplicateAsset _updateScoreOnCondition:incrementOtherScore:scoreTuple:other:propertyName:additionalLogString:](self, "_updateScoreOnCondition:incrementOtherScore:scoreTuple:other:propertyName:additionalLogString:", [v14 isEqual:adobePhotoshopType2], 0, &v33, otherCopy, @"UTI", @"Photoshop:?? format");

  adobeIllustratorType = [MEMORY[0x1E69C08F0] adobeIllustratorType];
  -[PLDuplicateAsset _updateScoreOnCondition:incrementOtherScore:scoreTuple:other:propertyName:additionalLogString:](self, "_updateScoreOnCondition:incrementOtherScore:scoreTuple:other:propertyName:additionalLogString:", [v11 isEqual:adobeIllustratorType], 1, &v33, otherCopy, @"UTI", @"??:Illustrator format");

  adobeIllustratorType2 = [MEMORY[0x1E69C08F0] adobeIllustratorType];
  -[PLDuplicateAsset _updateScoreOnCondition:incrementOtherScore:scoreTuple:other:propertyName:additionalLogString:](self, "_updateScoreOnCondition:incrementOtherScore:scoreTuple:other:propertyName:additionalLogString:", [v14 isEqual:adobeIllustratorType2], 0, &v33, otherCopy, @"UTI", @"Illustrator:?? format");

  LODWORD(adobeIllustratorType2) = v33;
  v23 = [MEMORY[0x1E696AD98] numberWithShort:v33];
  v24 = [MEMORY[0x1E696AD98] numberWithShort:(adobeIllustratorType2 >> 16)];
  v25 = [v23 compare:v24];

  if (!v25)
  {
    v26 = *MEMORY[0x1E6983008];
    if ([v11 isEqual:*MEMORY[0x1E6983008]])
    {
      [(PLDuplicateAsset *)self _compareResourceTIFFCheckFromAsset:self other:otherCopy scoreProperty:&v33 + 2];
      v27 = PLDuplicateDetectionGetLog();
      if (!os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
      {
LABEL_16:

        goto LABEL_17;
      }

      shortDescription = [(PLDuplicateAsset *)self shortDescription];
      shortDescription2 = [otherCopy shortDescription];
      v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Duplicate Asset: Resource comparisonScore [%d:%d][%@:%@]", v33, (v33 >> 16), shortDescription, shortDescription2];
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

      [(PLDuplicateAsset *)self _compareResourceTIFFCheckFromAsset:otherCopy other:self scoreProperty:&v33];
      v27 = PLDuplicateDetectionGetLog();
      if (!os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_16;
      }

      shortDescription = [(PLDuplicateAsset *)self shortDescription];
      shortDescription2 = [otherCopy shortDescription];
      v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Duplicate Asset: Resource comparisonScore [%d:%d][%@:%@]", v33, (v33 >> 16), shortDescription, shortDescription2];
      v30 = _PLDuplicateAssetLogString(v31, @"TIFF:?? format", 0);

      *buf = 138543362;
      v35 = v30;
    }

    _os_log_impl(&dword_19BF1F000, v27, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);

    goto LABEL_16;
  }

LABEL_17:
  if (tuple)
  {
    tuple->var0 += v33;
    tuple->var1 += HIWORD(v33);
  }

LABEL_19:
}

- (PLDuplicateAssetScoreTuple)_compareResourcesAdditionalChecksFromOther:(id)other
{
  v122 = *MEMORY[0x1E69E9840];
  otherCopy = other;
  v119 = 0;
  asset = [otherCopy asset];
  asset2 = [(PLDuplicateAsset *)self asset];
  originalResolution = [otherCopy originalResolution];
  v8 = 0;
  if (originalResolution != [(PLDuplicateAsset *)self originalResolution])
  {
    originalResolution2 = [otherCopy originalResolution];
    if (originalResolution2 <= [(PLDuplicateAsset *)self originalResolution])
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
      shortDescription = [(PLDuplicateAsset *)self shortDescription];
      shortDescription2 = [otherCopy shortDescription];
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Duplicate Asset: Resource comparisonScore [%d:%d][%@:%@]", v119, (v119 >> 16), shortDescription, shortDescription2];
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
    kind = [asset kind];
    if (kind == [asset2 kind] && !objc_msgSend(asset2, "kind"))
    {
      kindSubtype = [asset kindSubtype];
      if (kindSubtype == [asset2 kindSubtype] && objc_msgSend(asset2, "kindSubtype") == 2)
      {
        v20 = [asset firstPersistedResourceMatching:&__block_literal_global_222];
        v21 = [asset2 firstPersistedResourceMatching:&__block_literal_global_224];
        unorientedWidth = [v20 unorientedWidth];
        v23 = [v20 unorientedHeight] * unorientedWidth;
        unorientedWidth2 = [v21 unorientedWidth];
        unorientedHeight = [v21 unorientedHeight];
        if (v23 != unorientedHeight * unorientedWidth2)
        {
          if (v23 <= unorientedHeight * unorientedWidth2)
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
            shortDescription3 = [(PLDuplicateAsset *)self shortDescription];
            shortDescription4 = [otherCopy shortDescription];
            v115 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Duplicate Asset: Resource comparisonScore [%d:%d][%@:%@]", v119, (v119 >> 16), shortDescription3, shortDescription4];
            v28 = _PLDuplicateAssetLogString(v115, @"videoComplementResolution", 0);

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
    additionalAttributes = [asset additionalAttributes];
    originalStableHash = [additionalAttributes originalStableHash];
    additionalAttributes2 = [asset2 additionalAttributes];
    originatingAssetIdentifier = [additionalAttributes2 originatingAssetIdentifier];
    v36 = [originalStableHash isEqualToString:originatingAssetIdentifier];

    if (v36)
    {
      HIWORD(v119) = 5;
      v37 = PLDuplicateDetectionGetLog();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
      {
        shortDescription5 = [(PLDuplicateAsset *)self shortDescription];
        shortDescription6 = [otherCopy shortDescription];
        v40 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Duplicate Asset: Resource comparisonScore [%d:%d][%@:%@]", v119, (v119 >> 16), shortDescription5, shortDescription6];
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
    uniformTypeIdentifier = [asset2 uniformTypeIdentifier];
    v47 = [v45 typeWithIdentifier:uniformTypeIdentifier];

    originalResolution3 = [otherCopy originalResolution];
    if (originalResolution3 != -[PLDuplicateAsset originalResolution](self, "originalResolution") || ([v47 conformsToType:*MEMORY[0x1E6982F88]] & 1) != 0 || (-[PLDuplicateAsset _compareUTICheckFromOther:scoreTuple:](self, "_compareUTICheckFromOther:scoreTuple:", otherCopy, &v119), v49 = v119, objc_msgSend(MEMORY[0x1E696AD98], "numberWithShort:", v119), v50 = objc_claimAutoreleasedReturnValue(), objc_msgSend(MEMORY[0x1E696AD98], "numberWithShort:", (v49 >> 16)), v51 = objc_claimAutoreleasedReturnValue(), v52 = objc_msgSend(v50, "compare:", v51), v51, v50, v52))
    {
LABEL_94:

      goto LABEL_95;
    }

    if ([(PLDuplicateAsset *)self locationUpdated])
    {
LABEL_53:
      hasAdjustments = [asset2 hasAdjustments];
      if (hasAdjustments != [asset hasAdjustments])
      {
        if ([asset2 hasAdjustments])
        {
          v78 = 5;
        }

        else
        {
          v78 = 0;
        }

        LOWORD(v119) = v78 + v119;
        if ([asset hasAdjustments])
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
          shortDescription7 = [(PLDuplicateAsset *)self shortDescription];
          shortDescription8 = [otherCopy shortDescription];
          v83 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Duplicate Asset: Resource comparisonScore [%d:%d][%@:%@]", v119, (v119 >> 16), shortDescription7, shortDescription8];
          v84 = _PLDuplicateAssetLogString(v83, @"adjustments", 0);

          *buf = 138543362;
          v121 = v84;
          _os_log_impl(&dword_19BF1F000, v80, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
        }
      }

      hdrType = [asset2 hdrType];
      if (hdrType != [asset hdrType])
      {
        hdrType2 = [asset2 hdrType];
        if (hdrType2 <= [asset hdrType])
        {
          v87 = 0;
        }

        else
        {
          v87 = 5;
        }

        LOWORD(v119) = v87 + v119;
        hdrType3 = [asset hdrType];
        if (hdrType3 <= [asset2 hdrType])
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
          shortDescription9 = [(PLDuplicateAsset *)self shortDescription];
          shortDescription10 = [otherCopy shortDescription];
          v93 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Duplicate Asset: Resource comparisonScore [%d:%d][%@:%@]", v119, (v119 >> 16), shortDescription9, shortDescription10];
          v94 = _PLDuplicateAssetLogString(v93, @"HDR", 0);

          *buf = 138543362;
          v121 = v94;
          _os_log_impl(&dword_19BF1F000, v90, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
        }
      }

      depthType = [asset2 depthType];
      if (depthType != [asset depthType])
      {
        if ([asset depthType])
        {
          v96 = 0;
        }

        else
        {
          v96 = 5;
        }

        LOWORD(v119) = v96 + v119;
        if ([asset2 depthType])
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
          shortDescription11 = [(PLDuplicateAsset *)self shortDescription];
          shortDescription12 = [otherCopy shortDescription];
          v100 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Duplicate Asset: Resource comparisonScore [%d:%d][%@:%@]", v119, (v119 >> 16), shortDescription11, shortDescription12];
          v102 = _PLDuplicateAssetLogString(v100, @"Depth Data", 0);

          *buf = 138543362;
          v121 = v102;
          _os_log_impl(&dword_19BF1F000, v98, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
        }
      }

      playbackVariation = [asset playbackVariation];
      if (playbackVariation != [asset2 playbackVariation])
      {
        playbackVariation2 = [asset playbackVariation];
        if ((playbackVariation2 - 1) >= 3)
        {
          if (!playbackVariation2)
          {
            LOWORD(v119) = v119 + 5;
          }
        }

        else
        {
          if ([asset2 playbackVariation])
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
          shortDescription13 = [(PLDuplicateAsset *)self shortDescription];
          shortDescription14 = [otherCopy shortDescription];
          v108 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Duplicate Asset: Resource comparisonScore [%d:%d][%@:%@]", v119, (v119 >> 16), shortDescription13, shortDescription14];
          v110 = _PLDuplicateAssetLogString(v108, @"Variation", 0);

          *buf = 138543362;
          v121 = v110;
          _os_log_impl(&dword_19BF1F000, v106, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
        }
      }

      goto LABEL_94;
    }

    location = [asset2 location];
    location2 = [asset location];
    if (location)
    {
      v55 = [PLLocationUtils locationIsCoarse:location];
    }

    else
    {
      v55 = 0;
    }

    v113 = v55;
    if (location2)
    {
      v56 = ![PLLocationUtils locationIsCoarse:location2];
    }

    else
    {
      v56 = 1;
    }

    v112 = v56;
    v116 = location2;
    extendedAttributes = [asset2 extendedAttributes];
    latitude = [extendedAttributes latitude];
    if (latitude)
    {
      extendedAttributes2 = [asset2 extendedAttributes];
      longitude = [extendedAttributes2 longitude];
      v61 = longitude != 0;
    }

    else
    {
      v61 = 0;
    }

    v118 = location;

    extendedAttributes3 = [asset extendedAttributes];
    latitude2 = [extendedAttributes3 latitude];
    if (latitude2)
    {
      extendedAttributes4 = [asset extendedAttributes];
      longitude2 = [extendedAttributes4 longitude];
      v66 = longitude2 != 0;
    }

    else
    {
      v66 = 0;
    }

    v67 = v66 || !v61;
    if ((v113 & v112 & v67 & 1) != 0 || !v61 && v66)
    {
      HIWORD(v119) += 5;
      [otherCopy setResourceComparisonPropertyUpdateLocation:1];
      v69 = PLDuplicateDetectionGetLog();
      if (os_log_type_enabled(v69, OS_LOG_TYPE_DEBUG))
      {
        shortDescription15 = [(PLDuplicateAsset *)self shortDescription];
        shortDescription16 = [otherCopy shortDescription];
        v75 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Duplicate Asset: Resource comparisonScore [%d:%d][%@:%@]", v119, (v119 >> 16), shortDescription15, shortDescription16];
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
        shortDescription17 = [(PLDuplicateAsset *)self shortDescription];
        shortDescription18 = [otherCopy shortDescription];
        v71 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Duplicate Asset: Resource comparisonScore [%d:%d][%@:%@]", v119, (v119 >> 16), shortDescription17, shortDescription18];
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

- (PLDuplicateAssetScoreTuple)_compareResourcesNotMatchingPlaybackStyleAndKindSubTypeCheckFromOther:(id)other error:(id *)error
{
  v56[1] = *MEMORY[0x1E69E9840];
  otherCopy = other;
  asset = [otherCopy asset];
  asset2 = [(PLDuplicateAsset *)self asset];
  kindSubtype = [asset2 kindSubtype];
  v10 = 0;
  v11 = 0;
  kindSubtype2 = [asset kindSubtype];
  if (kindSubtype2 > 9)
  {
    if (kindSubtype2 - 100 < 5)
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

      shortDescription = [otherCopy shortDescription];
      shortDescription2 = [(PLDuplicateAsset *)self shortDescription];
      *buf = 138543618;
      v52 = shortDescription;
      v53 = 2114;
      v54 = shortDescription2;
      v19 = "Duplicate Asset: Resource matching error, unexpected processing a video kind subtype [%{public}@ -> %{public}@]";
LABEL_5:
      _os_log_impl(&dword_19BF1F000, v16, OS_LOG_TYPE_ERROR, v19, buf, 0x16u);

      goto LABEL_6;
    }

    var0 = 0;
    if (kindSubtype2 != 10)
    {
      goto LABEL_7;
    }

    if (kindSubtype)
    {
      if (kindSubtype != 2)
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

        shortDescription = [otherCopy shortDescription];
        shortDescription2 = [(PLDuplicateAsset *)self shortDescription];
        *buf = 138543618;
        v52 = shortDescription;
        v53 = 2114;
        v54 = shortDescription2;
        v19 = "Duplicate Asset: Resource matching error, unexpected processing of kindSubtype [%{public}@ -> %{public}@]";
        goto LABEL_5;
      }

      v33 = PLDuplicateDetectionGetLog();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
      {
        shortDescription3 = [(PLDuplicateAsset *)self shortDescription];
        shortDescription4 = [otherCopy shortDescription];
        v39 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Duplicate Asset: Resource comparisonScore [%d:%d][%@:%@]", 5, 0, shortDescription3, shortDescription4];
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
    v40 = [(PLDuplicateAsset *)self _compareResourcesAdditionalChecksFromOther:otherCopy];
    var0 = v40.var0;
    v10 = 0;
    v11 = *&v40 & 0xFFFF0000;
    goto LABEL_7;
  }

  if (!kindSubtype2)
  {
    if (kindSubtype == 10)
    {
      goto LABEL_21;
    }

    if (kindSubtype == 2)
    {
LABEL_23:
      v33 = PLDuplicateDetectionGetLog();
      if (!os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_35;
      }

      shortDescription3 = [(PLDuplicateAsset *)self shortDescription];
      shortDescription4 = [otherCopy shortDescription];
      v36 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Duplicate Asset: Resource comparisonScore [%d:%d][%@:%@]", 5, 0, shortDescription3, shortDescription4];
      v37 = _PLDuplicateAssetLogString(v36, @"live photo over image", @"no matching");

      *buf = 138543362;
      v52 = v37;
LABEL_34:
      _os_log_impl(&dword_19BF1F000, v33, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);

      goto LABEL_35;
    }

    if (kindSubtype == 1)
    {
LABEL_21:
      if ([asset playbackStyle] == 2)
      {
        goto LABEL_38;
      }

      if (kindSubtype == 2)
      {
        goto LABEL_23;
      }
    }

    v11 = 0;
    var0 = 0;
    v10 = 0;
    goto LABEL_7;
  }

  if (kindSubtype2 == 1)
  {
    if (kindSubtype)
    {
      if (kindSubtype == 2)
      {
        v33 = PLDuplicateDetectionGetLog();
        if (!os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_35;
        }

        shortDescription3 = [(PLDuplicateAsset *)self shortDescription];
        shortDescription4 = [otherCopy shortDescription];
        v38 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Duplicate Asset: Resource comparisonScore [%d:%d][%@:%@]", 5, 0, shortDescription3, shortDescription4];
        v37 = _PLDuplicateAssetLogString(v38, @"live photo over pano", @"no matching");

        *buf = 138543362;
        v52 = v37;
        goto LABEL_34;
      }
    }

    else if ([asset2 playbackStyle] == 2)
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

    shortDescription = [otherCopy shortDescription];
    shortDescription2 = [(PLDuplicateAsset *)self shortDescription];
    *buf = 138543618;
    v52 = shortDescription;
    v53 = 2114;
    v54 = shortDescription2;
    v19 = "Duplicate Asset: Resource matching error, unexpected processing of kindSubtype [%{public}@ -> %{public}@]";
    goto LABEL_5;
  }

  var0 = 0;
  if (kindSubtype2 == 2)
  {
    v28 = PLDuplicateDetectionGetLog();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
    {
      shortDescription5 = [(PLDuplicateAsset *)self shortDescription];
      shortDescription6 = [otherCopy shortDescription];
      v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Duplicate Asset: Resource comparisonScore [%d:%d][%@:%@]", 0, 5, shortDescription5, shortDescription6];
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
  if (var0 == 0xFFFF && !v23 && error)
  {
    v26 = v24;
    *error = v25;
  }

  return (var0 | v11);
}

- (PLDuplicateAssetScoreTuple)_compareResourcesMatchingPlaybackStyleCheckFromOther:(id)other error:(id *)error
{
  v69[1] = *MEMORY[0x1E69E9840];
  otherCopy = other;
  asset = [otherCopy asset];
  asset2 = [(PLDuplicateAsset *)self asset];
  v9 = 0;
  v10 = 0;
  kindSubtype = [asset kindSubtype];
  errorCopy = error;
  if (kindSubtype <= 0x63)
  {
    if (kindSubtype - 1 < 2)
    {
      kindSubtype2 = [asset kindSubtype];
      v24 = 5;
      if (kindSubtype2 <= [asset2 kindSubtype])
      {
        kindSubtype3 = [asset2 kindSubtype];
        if (kindSubtype3 == 10)
        {
          v12 = 0;
        }

        else
        {
          v12 = 5;
        }

        if (kindSubtype3 == 10)
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
        shortDescription = [(PLDuplicateAsset *)self shortDescription];
        shortDescription2 = [otherCopy shortDescription];
        v34 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Duplicate Asset: Resource comparisonScore [%d:%d][%@:%@]", v12, v24, shortDescription, shortDescription2];
        v35 = _PLDuplicateAssetLogString(v34, @"pano/live photo", @"matching playbackStyle");

        *buf = 138543362;
        v65 = v35;
        _os_log_impl(&dword_19BF1F000, v31, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
      }

      v9 = 0;
      v10 = v24 << 16;
      goto LABEL_41;
    }

    if (kindSubtype)
    {
      LODWORD(v12) = 0;
      if (kindSubtype != 10)
      {
        goto LABEL_41;
      }

      if ([asset2 kindSubtype] == 10)
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

        shortDescription3 = [otherCopy shortDescription];
        shortDescription4 = [(PLDuplicateAsset *)self shortDescription];
        *buf = 138543618;
        v65 = shortDescription3;
        v66 = 2114;
        v67 = shortDescription4;
        v19 = "Duplicate Asset: Resource matching error, unexpected processing kind subtype PLAssetSubtypeScreenshot [%{public}@ -> %{public}@]";
        goto LABEL_5;
      }

      v36 = PLDuplicateDetectionGetLog();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
      {
        shortDescription5 = [(PLDuplicateAsset *)self shortDescription];
        shortDescription6 = [otherCopy shortDescription];
        v39 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Duplicate Asset: Resource comparisonScore [%d:%d][%@:%@]", 5, 0, shortDescription5, shortDescription6];
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
      kindSubtype4 = [asset2 kindSubtype];
      if (kindSubtype4 > 0x63)
      {
        LODWORD(v12) = 0;
        if (kindSubtype4 - 100 >= 5)
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

        shortDescription3 = [otherCopy shortDescription];
        shortDescription4 = [(PLDuplicateAsset *)self shortDescription];
        *buf = 138543618;
        v65 = shortDescription3;
        v66 = 2114;
        v67 = shortDescription4;
        v19 = "Duplicate Asset: Resource matching error, unexpected processing a video kind subtype [%{public}@ -> %{public}@]";
        goto LABEL_5;
      }

      if (kindSubtype4 - 1 >= 2)
      {
        if (!kindSubtype4)
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

          shortDescription3 = [otherCopy shortDescription];
          shortDescription4 = [(PLDuplicateAsset *)self shortDescription];
          *buf = 138543618;
          v65 = shortDescription3;
          v66 = 2114;
          v67 = shortDescription4;
          v19 = "Duplicate Asset: Resource matching error, unexpected processing kind subtype PLAssetSubtypeNone [%{public}@ -> %{public}@]";
          goto LABEL_5;
        }

        LODWORD(v12) = 0;
        if (kindSubtype4 == 10)
        {
          v41 = PLDuplicateDetectionGetLog();
          if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
          {
            shortDescription7 = [(PLDuplicateAsset *)self shortDescription];
            shortDescription8 = [otherCopy shortDescription];
            v44 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Duplicate Asset: Resource comparisonScore [%d:%d][%@:%@]", 0, 5, shortDescription7, shortDescription8];
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
        shortDescription5 = [(PLDuplicateAsset *)self shortDescription];
        shortDescription6 = [otherCopy shortDescription];
        v46 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Duplicate Asset: Resource comparisonScore [%d:%d][%@:%@]", 5, 0, shortDescription5, shortDescription6];
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
  if (kindSubtype - 100 < 5)
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

    shortDescription3 = [otherCopy shortDescription];
    shortDescription4 = [(PLDuplicateAsset *)self shortDescription];
    *buf = 138543618;
    v65 = shortDescription3;
    v66 = 2114;
    v67 = shortDescription4;
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
  if (v12 == 0xFFFF && !v49 && errorCopy)
  {
    v52 = v50;
    *errorCopy = v51;
  }

  return (v12 | v10);
}

- (PLDuplicateAssetScoreTuple)_compareResourcesMatchingKindSubtypeCheckFromOther:(id)other error:(id *)error
{
  v52[1] = *MEMORY[0x1E69E9840];
  otherCopy = other;
  asset = [otherCopy asset];
  asset2 = [(PLDuplicateAsset *)self asset];
  v9 = 0;
  LODWORD(v10) = 0;
  kindSubtype = [asset kindSubtype];
  v12 = 0x1E696A000uLL;
  if (kindSubtype > 0x63)
  {
    var0 = 0;
    if (kindSubtype - 100 < 5)
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

      shortDescription = [otherCopy shortDescription];
      shortDescription2 = [(PLDuplicateAsset *)self shortDescription];
      *buf = 138543618;
      v48 = shortDescription;
      v49 = 2114;
      v50 = shortDescription2;
      v19 = "Duplicate Asset: Resource matching error, unexpected processing a video kind subtype [%{public}@ -> %{public}@]";
LABEL_5:
      _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_ERROR, v19, buf, 0x16u);

      goto LABEL_6;
    }

    goto LABEL_11;
  }

  if (kindSubtype < 2)
  {
LABEL_10:
    v20 = [(PLDuplicateAsset *)self _compareResourcesAdditionalChecksFromOther:otherCopy];
    v9 = 0;
    LODWORD(v10) = HIWORD(*&v20);
    var0 = v20.var0;
    goto LABEL_11;
  }

  if (kindSubtype != 2)
  {
    var0 = 0;
    if (kindSubtype != 10)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  playbackStyle = [asset playbackStyle];
  v9 = 0;
  LODWORD(v10) = 0;
  if (playbackStyle > 3)
  {
    if (playbackStyle == 4)
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

      shortDescription = [otherCopy shortDescription];
      shortDescription2 = [(PLDuplicateAsset *)self shortDescription];
      *buf = 138543618;
      v48 = shortDescription;
      v49 = 2114;
      v50 = shortDescription2;
      v19 = "Duplicate Asset: Resource matching error, unexpected processing a video playbackStyle [%{public}@ -> %{public}@]";
      goto LABEL_5;
    }

    var0 = 0;
    if (playbackStyle != 5)
    {
      goto LABEL_11;
    }
  }

  else if ((playbackStyle - 1) >= 3)
  {
    var0 = 0;
    if (!playbackStyle)
    {
      v10 = PLDuplicateDetectionGetLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        shortDescription3 = [(PLDuplicateAsset *)self shortDescription];
        shortDescription4 = [otherCopy shortDescription];
        v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Duplicate Asset: Resource comparisonScore [%d:%d][%@:%@]", 5, 0, shortDescription3, shortDescription4];
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

  playbackStyle2 = [asset playbackStyle];
  if (playbackStyle2 <= [asset2 playbackStyle])
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
      shortDescription5 = [(PLDuplicateAsset *)self shortDescription];
      shortDescription6 = [otherCopy shortDescription];
      v40 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Duplicate Asset: Resource comparisonScore [%d:%d][%@:%@]", 0, v10, shortDescription5, shortDescription6];
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
  if (var0 == 0xFFFF && !v23 && error)
  {
    v26 = v24;
    *error = v25;
  }

  return (var0 | (v10 << 16));
}

- (PLDuplicateAssetScoreTuple)_compareResourcesMatchingPlaybackStyleAndKindSubTypeCheckFromOther:(id)other
{
  v37 = *MEMORY[0x1E69E9840];
  otherCopy = other;
  asset = [otherCopy asset];
  asset2 = [(PLDuplicateAsset *)self asset];
  rAWBadgeAttribute = [asset RAWBadgeAttribute];
  if (rAWBadgeAttribute == [asset2 RAWBadgeAttribute])
  {
    goto LABEL_2;
  }

  rAWBadgeAttribute2 = [asset RAWBadgeAttribute];
  if ((rAWBadgeAttribute2 - 1) < 2)
  {
    rAWBadgeAttribute3 = [asset2 RAWBadgeAttribute];
    if (rAWBadgeAttribute3 != 3 && rAWBadgeAttribute3)
    {
      goto LABEL_2;
    }

    v11 = PLDuplicateDetectionGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      shortDescription = [(PLDuplicateAsset *)self shortDescription];
      shortDescription2 = [otherCopy shortDescription];
      v8 = 5;
      v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Duplicate Asset: Resource comparisonScore [%d:%d][%@:%@]", 0, 5, shortDescription, shortDescription2];
      v20 = _PLDuplicateAssetLogString(v19, @"R+J vs non-R+J", 0);

      *buf = 138543362;
      v36 = v20;
      _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);

      v9 = 0;
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  if (rAWBadgeAttribute2 == 3)
  {
    rAWBadgeAttribute4 = [asset2 RAWBadgeAttribute];
    if ((rAWBadgeAttribute4 - 1) < 2)
    {
      v11 = PLDuplicateDetectionGetLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        shortDescription3 = [(PLDuplicateAsset *)self shortDescription];
        shortDescription4 = [otherCopy shortDescription];
        v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Duplicate Asset: Resource comparisonScore [%d:%d][%@:%@]", 5, 0, shortDescription3, shortDescription4];
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

    if (rAWBadgeAttribute4)
    {
LABEL_2:
      v8 = 0;
      v9 = 0;
      goto LABEL_21;
    }

    v11 = PLDuplicateDetectionGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      shortDescription5 = [(PLDuplicateAsset *)self shortDescription];
      shortDescription6 = [otherCopy shortDescription];
      v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Duplicate Asset: Resource comparisonScore [%d:%d][%@:%@]", 0, 5, shortDescription5, shortDescription6];
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

  if (rAWBadgeAttribute2)
  {
    goto LABEL_2;
  }

  v11 = PLDuplicateDetectionGetLog();
  if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    goto LABEL_15;
  }

  shortDescription7 = [(PLDuplicateAsset *)self shortDescription];
  shortDescription8 = [otherCopy shortDescription];
  v9 = 5;
  v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Duplicate Asset: Resource comparisonScore [%d:%d][%@:%@]", 5, 0, shortDescription7, shortDescription8];
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
    v33 = [(PLDuplicateAsset *)self _compareResourcesAdditionalChecksFromOther:otherCopy];
    LOWORD(v9) = v33.var0;
    LODWORD(v8) = HIWORD(*&v33);
  }

  return (v9 | (v8 << 16));
}

- (int64_t)compareResource:(id)resource error:(id *)error
{
  v64[1] = *MEMORY[0x1E69E9840];
  resourceCopy = resource;
  asset = [resourceCopy asset];
  asset2 = [(PLDuplicateAsset *)self asset];
  v56 = 0;
  [(PLDuplicateAsset *)self _compareResourcesResetPropertiesWithOther:resourceCopy];
  v52 = asset2;
  if ([asset isReferencedAsset] & 1) != 0 || (objc_msgSend(asset2, "isReferencedAsset"))
  {
    v9 = 0;
    v10 = 0;
    goto LABEL_4;
  }

  kind = [asset kind];
  if (kind != [asset2 kind])
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

  kind2 = [asset kind];
  if ((kind2 - 1) < 2)
  {
    v40 = [(PLDuplicateAsset *)self _compareResourcesAdditionalChecksFromOther:resourceCopy];
    goto LABEL_26;
  }

  if (kind2 == 3)
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

  if (kind2)
  {
    v10 = 0;
    goto LABEL_35;
  }

  kindSubtype = [asset kindSubtype];
  kindSubtype2 = [asset2 kindSubtype];
  playbackStyle = [asset playbackStyle];
  playbackStyle2 = [asset2 playbackStyle];
  if (playbackStyle == playbackStyle2 && kindSubtype == kindSubtype2)
  {
    v40 = [(PLDuplicateAsset *)self _compareResourcesMatchingPlaybackStyleAndKindSubTypeCheckFromOther:resourceCopy];
LABEL_26:
    v10 = 0;
    v56 = v40;
    goto LABEL_35;
  }

  if (kindSubtype == kindSubtype2)
  {
    v55 = 0;
    v47 = [(PLDuplicateAsset *)self _compareResourcesMatchingKindSubtypeCheckFromOther:resourceCopy error:&v55];
    v48 = v55;
  }

  else if (playbackStyle == playbackStyle2)
  {
    v54 = 0;
    v47 = [(PLDuplicateAsset *)self _compareResourcesMatchingPlaybackStyleCheckFromOther:resourceCopy error:&v54];
    v48 = v54;
  }

  else
  {
    v53 = 0;
    v47 = [(PLDuplicateAsset *)self _compareResourcesNotMatchingPlaybackStyleAndKindSubTypeCheckFromOther:resourceCopy error:&v53];
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
    [(PLDuplicateAsset *)self _compareResourceReverseCheckFromOther:resourceCopy score:&v56];
    v9 = v56;
  }

LABEL_4:
  v11 = [MEMORY[0x1E696AD98] numberWithShort:v9];
  v12 = [MEMORY[0x1E696AD98] numberWithShort:(v9 >> 16)];
  v13 = [v11 compare:v12];

  v14 = v10;
  v15 = v14;
  if (v9 == 0xFFFF && !v13 && error)
  {
    v16 = v14;
    *error = v15;
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
      shortDescription = [resourceCopy shortDescription];
      shortDescription2 = [(PLDuplicateAsset *)self shortDescription];
      *buf = 138543874;
      *v58 = shortDescription;
      *&v58[8] = 2114;
      *v59 = shortDescription2;
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
    shortDescription3 = [(PLDuplicateAsset *)self shortDescription];
    shortDescription4 = [resourceCopy shortDescription];
    *buf = 67109890;
    *v58 = v25;
    *&v58[4] = 1024;
    *&v58[6] = v26;
    *v59 = 2114;
    *&v59[2] = shortDescription3;
    LOWORD(v60[0]) = 2114;
    *(v60 + 2) = shortDescription4;
    _os_log_impl(&dword_19BF1F000, v24, OS_LOG_TYPE_INFO, "Duplicate Asset: Resource comparisonScore [%d:%d][%{public}@:%{public}@] (Final)", buf, 0x22u);
  }

  v29 = v56;
  v30 = [MEMORY[0x1E696AD98] numberWithShort:v56];
  v31 = [MEMORY[0x1E696AD98] numberWithShort:(v29 >> 16)];
  v32 = [v30 compare:v31];

  return v32;
}

- (void)_updateScoresUsingLatestDateWithDate:(id)date otherDate:(id)otherDate score:(int64_t *)score otherScore:(int64_t *)otherScore
{
  if (date && otherDate)
  {
    v8 = [date compare:otherDate];
    if (v8 == 1)
    {
      otherScore = score;
      if (!score)
      {
        return;
      }

      goto LABEL_6;
    }

    if (v8 == -1 && otherScore)
    {
LABEL_6:
      *otherScore += 5;
    }
  }
}

- (BOOL)_validCPLAssetsWithAssets:(id)assets
{
  assetsCopy = assets;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 1;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __46__PLDuplicateAsset__validCPLAssetsWithAssets___block_invoke;
  v6[3] = &unk_1E756CB40;
  v6[4] = &v7;
  [assetsCopy enumerateObjectsUsingBlock:v6];
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

- (void)_mergeComparisonScoreModifierWithOtherAsset:(id)asset score:(int64_t *)score otherScore:(int64_t *)otherScore
{
  v73[2] = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  if (assetCopy)
  {
    if (score)
    {
      goto LABEL_3;
    }

LABEL_74:
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLDuplicateAsset.m" lineNumber:509 description:{@"Invalid parameter not satisfying: %@", @"score"}];

    if (otherScore)
    {
      goto LABEL_4;
    }

    goto LABEL_75;
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PLDuplicateAsset.m" lineNumber:508 description:{@"Invalid parameter not satisfying: %@", @"other"}];

  if (!score)
  {
    goto LABEL_74;
  }

LABEL_3:
  if (otherScore)
  {
    goto LABEL_4;
  }

LABEL_75:
  currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"PLDuplicateAsset.m" lineNumber:510 description:{@"Invalid parameter not satisfying: %@", @"otherScore"}];

LABEL_4:
  [(PLDuplicateAsset *)self setResourceSwapDisabled:0];
  [(PLDuplicateAsset *)assetCopy setResourceSwapDisabled:0];
  if ([(PLDuplicateAsset *)self isCPLEnabled])
  {
    asset = [(PLDuplicateAsset *)self asset];
    activeLibraryScopeParticipationState = [asset activeLibraryScopeParticipationState];

    asset2 = [(PLDuplicateAsset *)assetCopy asset];
    activeLibraryScopeParticipationState2 = [asset2 activeLibraryScopeParticipationState];

    v14 = activeLibraryScopeParticipationState2 == 1 && activeLibraryScopeParticipationState == 1;
    v15 = activeLibraryScopeParticipationState != activeLibraryScopeParticipationState2 && (activeLibraryScopeParticipationState == 1 || activeLibraryScopeParticipationState2 == 1);
    asset3 = [(PLDuplicateAsset *)self asset];
    fingerprintScheme = [asset3 fingerprintScheme];

    asset4 = [(PLDuplicateAsset *)assetCopy asset];
    fingerprintScheme2 = [asset4 fingerprintScheme];

    if (!(fingerprintScheme | fingerprintScheme2))
    {
      v20 = 1;
      if (!v15)
      {
LABEL_12:
        if (v14)
        {
LABEL_13:
          assetCloudScopedIdentifier = [(PLDuplicateAsset *)self assetCloudScopedIdentifier];
          assetCloudScopedIdentifier2 = [(PLDuplicateAsset *)assetCopy assetCloudScopedIdentifier];
          v23 = assetCloudScopedIdentifier2;
          if (!assetCloudScopedIdentifier || !assetCloudScopedIdentifier2)
          {
            if (assetCloudScopedIdentifier)
            {
              selfCopy = assetCopy;
            }

            else
            {
              selfCopy = self;
            }

            [(PLDuplicateAsset *)selfCopy setMergeStatus:2];
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

            shortDescription = [(PLDuplicateAsset *)self shortDescription];
            [(PLDuplicateAsset *)assetCopy shortDescription];
            v30 = v64 = v20;
            *buf = 138543618;
            v70 = shortDescription;
            v71 = 2114;
            v72 = v30;
            _os_log_impl(&dword_19BF1F000, v25, OS_LOG_TYPE_ERROR, "Duplicate Asset: CPL assets missing cloud identifiers: [%{public}@ : %{public}@]", buf, 0x16u);
            goto LABEL_50;
          }

          v64 = v20;
          v68[0] = assetCloudScopedIdentifier;
          v68[1] = assetCloudScopedIdentifier2;
          v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v68 count:2];
          v25 = [v24 sortedArrayUsingComparator:&__block_literal_global_141];

          v26 = [v25 objectAtIndexedSubscript:0];
          v27 = [v26 isEqualToString:assetCloudScopedIdentifier];

          if (v27)
          {
            *score = *otherScore + 1;
            shortDescription = PLDuplicateDetectionGetLog();
            if (os_log_type_enabled(shortDescription, OS_LOG_TYPE_DEBUG))
            {
              shortDescription2 = [(PLDuplicateAsset *)self shortDescription];
              v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Duplicate Asset: [%@] score incremented to %td", shortDescription2, *score];
              v61 = _PLDuplicateAssetLogString(v29, @"cloudScopedIdentifier", 0);

              *buf = 138543362;
              v30 = v61;
              v70 = v61;
LABEL_49:
              _os_log_impl(&dword_19BF1F000, shortDescription, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);

LABEL_50:
            }
          }

          else
          {
            *otherScore = *score + 1;
            shortDescription = PLDuplicateDetectionGetLog();
            if (os_log_type_enabled(shortDescription, OS_LOG_TYPE_DEBUG))
            {
              shortDescription2 = [(PLDuplicateAsset *)assetCopy shortDescription];
              v52 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Duplicate Asset: [%@] score incremented to %td", shortDescription2, *otherScore];
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
        v73[1] = assetCopy;
        v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:v73 count:2];
        v37 = [(PLDuplicateAsset *)self _validCPLAssetsWithAssets:v36];

        if (v37)
        {
          v65 = 0;
          v38 = [(PLDuplicateAsset *)self compareResource:assetCopy error:&v65];
          v39 = v65;
          if (v39)
          {
            [(PLDuplicateAsset *)self setMergeStatus:2];
            [(PLDuplicateAsset *)assetCopy setMergeStatus:2];
            v40 = PLDuplicateDetectionGetLog();
            if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
            {
              shortDescription3 = [(PLDuplicateAsset *)assetCopy shortDescription];
              *buf = 138543618;
              v70 = shortDescription3;
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
                *score = *otherScore + 1;
                break;
              case 0:
                goto LABEL_13;
              case -1:
                *otherScore = *score + 1;
                break;
            }
          }

LABEL_53:
          if (*score <= *otherScore)
          {
            selfCopy2 = assetCopy;
          }

          else
          {
            selfCopy2 = self;
          }

          [(PLDuplicateAsset *)selfCopy2 setResourceSwapDisabled:1];
LABEL_62:
          if ((v20 & 1) == 0)
          {
            if (*score <= *otherScore)
            {
              selfCopy3 = assetCopy;
            }

            else
            {
              selfCopy3 = self;
            }

            [(PLDuplicateAsset *)selfCopy3 setResourceSwapDisabled:1];
          }

          goto LABEL_67;
        }

        selfCopy4 = self;
        v48 = [MEMORY[0x1E695DEC8] arrayWithObjects:&selfCopy4 count:1];
        v49 = [(PLDuplicateAsset *)self _validCPLAssetsWithAssets:v48];

        if (!v49)
        {
          v66 = assetCopy;
          v54 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v66 count:1];
          v55 = [(PLDuplicateAsset *)self _validCPLAssetsWithAssets:v54];

          if (!v55)
          {
            goto LABEL_62;
          }

          *otherScore = *score + 1;
          [(PLDuplicateAsset *)assetCopy setResourceSwapDisabled:1];
          v34 = PLDuplicateDetectionGetLog();
          if (!os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_61;
          }

          shortDescription4 = [(PLDuplicateAsset *)assetCopy shortDescription];
          v56 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Duplicate Asset: [%@] score incremented to %td", shortDescription4, *otherScore];
          v44 = _PLDuplicateAssetLogString(v56, @"master", 0);

          *buf = 138543362;
          v70 = v44;
          goto LABEL_60;
        }

        *score = *otherScore + 1;
        [(PLDuplicateAsset *)self setResourceSwapDisabled:1];
        v34 = PLDuplicateDetectionGetLog();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
        {
          shortDescription4 = [(PLDuplicateAsset *)self shortDescription];
          v50 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Duplicate Asset: [%@] score incremented to %td", shortDescription4, *score];
          v44 = _PLDuplicateAssetLogString(v50, @"master", 0);

          *buf = 138543362;
          v70 = v44;
          goto LABEL_60;
        }

        goto LABEL_61;
      }

LABEL_22:
      asset5 = [(PLDuplicateAsset *)self asset];
      duplicateAssetVisibilityState = [asset5 duplicateAssetVisibilityState];

      if (duplicateAssetVisibilityState - 1 < 2)
      {
        *otherScore = *score + 1;
        v34 = PLDuplicateDetectionGetLog();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
        {
          shortDescription4 = [(PLDuplicateAsset *)assetCopy shortDescription];
          v43 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Duplicate Asset: [%@] score incremented to %td", shortDescription4, *otherScore];
          v44 = _PLDuplicateAssetLogString(v43, @"duplicateAssetVisibilityState", 0);

          *buf = 138543362;
          v70 = v44;
LABEL_60:
          _os_log_impl(&dword_19BF1F000, v34, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
        }
      }

      else
      {
        if (duplicateAssetVisibilityState != 100)
        {
          if (duplicateAssetVisibilityState)
          {
            goto LABEL_62;
          }

          [(PLDuplicateAsset *)self setMergeStatus:2];
          v34 = PLDuplicateDetectionGetLog();
          if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
          {
            shortDescription5 = [(PLDuplicateAsset *)assetCopy shortDescription];
            *buf = 138543362;
            v70 = shortDescription5;
            _os_log_impl(&dword_19BF1F000, v34, OS_LOG_TYPE_ERROR, "Duplicate Asset: Invalid visibility state PLDuplicateAssetVisibilityStateNotDuplicate for duplicate asset: %{public}@", buf, 0xCu);
          }

          goto LABEL_61;
        }

        *score = *otherScore + 1;
        v34 = PLDuplicateDetectionGetLog();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
        {
          shortDescription4 = [(PLDuplicateAsset *)self shortDescription];
          v51 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Duplicate Asset: [%@] score incremented to %td", shortDescription4, *score];
          v44 = _PLDuplicateAssetLogString(v51, @"duplicateAssetVisibilityState", 0);

          *buf = 138543362;
          v70 = v44;
          goto LABEL_60;
        }
      }

LABEL_61:

      goto LABEL_62;
    }

    if (fingerprintScheme)
    {
      if (fingerprintScheme2)
      {
        goto LABEL_11;
      }
    }

    else
    {
      asset6 = [(PLDuplicateAsset *)self asset];
      fingerprintScheme = __81__PLDuplicateAsset__mergeComparisonScoreModifierWithOtherAsset_score_otherScore___block_invoke(asset6);

      if (fingerprintScheme2)
      {
        goto LABEL_11;
      }
    }

    asset7 = [(PLDuplicateAsset *)assetCopy asset];
    fingerprintScheme2 = __81__PLDuplicateAsset__mergeComparisonScoreModifierWithOtherAsset_score_otherScore___block_invoke(asset7);

LABEL_11:
    v20 = [fingerprintScheme isCompatibleWithFingerprintScheme:fingerprintScheme2];

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

- (void)_tieBreakerComparisonScoreWithOtherAsset:(id)asset score:(int64_t *)score otherScore:(int64_t *)otherScore
{
  v28 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  if (!-[PLDuplicateAsset hasModifiedUserDateCreated](self, "hasModifiedUserDateCreated") && ([assetCopy hasModifiedUserDateCreated] & 1) == 0)
  {
    asset = [(PLDuplicateAsset *)self asset];
    dateCreated = [asset dateCreated];

    asset2 = [assetCopy asset];
    dateCreated2 = [asset2 dateCreated];

    if (dateCreated && dateCreated2)
    {
      v13 = [(PLDuplicateAsset *)self _correctedCompareDate:dateCreated otherDate:dateCreated2];
      otherScoreCopy2 = score;
      if (v13 != -1)
      {
        otherScoreCopy2 = otherScore;
        if (v13 != 1)
        {
          goto LABEL_13;
        }
      }
    }

    else
    {
      if (dateCreated)
      {
        otherScoreCopy2 = score;
      }

      else
      {
        otherScoreCopy2 = otherScore;
      }

      if (!(dateCreated | dateCreated2))
      {
        goto LABEL_13;
      }
    }

    *otherScoreCopy2 += 5;
LABEL_13:
  }

  if (*score != *otherScore)
  {
    v15 = PLDuplicateDetectionGetLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = *score;
      v17 = *otherScore;
      shortDescription = [(PLDuplicateAsset *)self shortDescription];
      shortDescription2 = [assetCopy shortDescription];
      v20 = 134218754;
      v21 = v16;
      v22 = 2048;
      v23 = v17;
      v24 = 2114;
      v25 = shortDescription;
      v26 = 2114;
      v27 = shortDescription2;
      _os_log_impl(&dword_19BF1F000, v15, OS_LOG_TYPE_INFO, "Duplicate Asset: tie breaker comparisonScore [%tu:%tu][%{public}@:%{public}@]", &v20, 0x2Au);
    }
  }
}

- (int64_t)_correctedCompareDate:(id)date otherDate:(id)otherDate
{
  dateCopy = date;
  otherDateCopy = otherDate;
  if ([dateCopy isEqualToDate:otherDateCopy])
  {
    v7 = 0;
  }

  else
  {
    [dateCopy timeIntervalSinceDate:otherDateCopy];
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

- (int64_t)compare:(id)compare enabledMergeComparison:(BOOL)comparison
{
  comparisonCopy = comparison;
  v67 = *MEMORY[0x1E69E9840];
  compareCopy = compare;
  score = [(PLDuplicateAsset *)self score];
  v58 = score;
  score2 = [compareCopy score];
  v57 = score2;
  asset = [(PLDuplicateAsset *)self asset];
  hasAdjustments = [asset hasAdjustments];

  asset2 = [compareCopy asset];
  hasAdjustments2 = [asset2 hasAdjustments];

  if (!hasAdjustments || !hasAdjustments2)
  {
    goto LABEL_12;
  }

  asset3 = [(PLDuplicateAsset *)self asset];
  additionalAttributes = [asset3 additionalAttributes];
  unmanagedAdjustment = [additionalAttributes unmanagedAdjustment];
  adjustmentTimestamp = [unmanagedAdjustment adjustmentTimestamp];

  asset4 = [compareCopy asset];
  additionalAttributes2 = [asset4 additionalAttributes];
  unmanagedAdjustment2 = [additionalAttributes2 unmanagedAdjustment];
  adjustmentTimestamp2 = [unmanagedAdjustment2 adjustmentTimestamp];

  [(PLDuplicateAsset *)self _updateScoresUsingLatestDateWithDate:adjustmentTimestamp otherDate:adjustmentTimestamp2 score:&v58 otherScore:&v57];
  if (score != v58)
  {
    v21 = PLDuplicateDetectionGetLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      shortDescription = [(PLDuplicateAsset *)self shortDescription];
      v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Duplicate Asset: [%@] score incremented to %td", shortDescription, v58];
      v24 = _PLDuplicateAssetLogString(v25, @"latest Adjustment", 0);

      *buf = 138543362;
      v60 = v24;
      goto LABEL_9;
    }

LABEL_10:

    goto LABEL_11;
  }

  if (score2 != v57)
  {
    v21 = PLDuplicateDetectionGetLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      shortDescription = [compareCopy shortDescription];
      v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Duplicate Asset: [%@] score incremented to %td", shortDescription, v57];
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
  if (-[PLDuplicateAsset hasModifiedUserTitle](self, "hasModifiedUserTitle") && ([compareCopy hasModifiedUserTitle] & 1) != 0 || -[PLDuplicateAsset hasModifiedUserLocation](self, "hasModifiedUserLocation") && objc_msgSend(compareCopy, "hasModifiedUserLocation"))
  {
    asset5 = [(PLDuplicateAsset *)self asset];
    modificationDate = [asset5 modificationDate];

    asset6 = [compareCopy asset];
    modificationDate2 = [asset6 modificationDate];

    v30 = v57;
    v31 = v58;
    [(PLDuplicateAsset *)self _updateScoresUsingLatestDateWithDate:modificationDate otherDate:modificationDate2 score:&v58 otherScore:&v57];
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
        shortDescription2 = [compareCopy shortDescription];
        v34 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Duplicate Asset: [%@] score incremented to %td", shortDescription2, v57];
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
        shortDescription2 = [(PLDuplicateAsset *)self shortDescription];
        v36 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Duplicate Asset: [%@] score incremented to %td", shortDescription2, v58];
        v35 = _PLDuplicateAssetLogString(v36, @"latest user modification", 0);

        *buf = 138543362;
        v60 = v35;
        goto LABEL_22;
      }
    }

    goto LABEL_24;
  }

LABEL_25:
  originalResolution = [(PLDuplicateAsset *)self originalResolution];
  if (originalResolution <= [compareCopy originalResolution])
  {
    originalResolution2 = [(PLDuplicateAsset *)self originalResolution];
    if (originalResolution2 >= [compareCopy originalResolution])
    {
      goto LABEL_33;
    }

    v57 += 25;
    v38 = PLDuplicateDetectionGetLog();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
    {
      shortDescription3 = [compareCopy shortDescription];
      v43 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Duplicate Asset: [%@] score incremented to %td", shortDescription3, v57];
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
      shortDescription3 = [(PLDuplicateAsset *)self shortDescription];
      v40 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Duplicate Asset: [%@] score incremented to %td", shortDescription3, v58];
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
    [(PLDuplicateAsset *)self _tieBreakerComparisonScoreWithOtherAsset:compareCopy score:&v58 otherScore:&v57];
  }

  v44 = PLDuplicateDetectionGetLog();
  if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
  {
    v46 = v57;
    v45 = v58;
    shortDescription4 = [(PLDuplicateAsset *)self shortDescription];
    shortDescription5 = [compareCopy shortDescription];
    *buf = 134218754;
    v60 = v45;
    v61 = 2048;
    v62 = v46;
    v63 = 2114;
    v64 = shortDescription4;
    v65 = 2114;
    v66 = shortDescription5;
    _os_log_impl(&dword_19BF1F000, v44, OS_LOG_TYPE_INFO, "Duplicate Asset: comparisonScore [%tu:%tu][%{public}@:%{public}@]", buf, 0x2Au);
  }

  if (comparisonCopy)
  {
    [(PLDuplicateAsset *)self _mergeComparisonScoreModifierWithOtherAsset:compareCopy score:&v58 otherScore:&v57];
    v49 = PLDuplicateDetectionGetLog();
    if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
    {
      v51 = v57;
      v50 = v58;
      shortDescription6 = [(PLDuplicateAsset *)self shortDescription];
      shortDescription7 = [compareCopy shortDescription];
      *buf = 134218754;
      v60 = v50;
      v61 = 2048;
      v62 = v51;
      v63 = 2114;
      v64 = shortDescription6;
      v65 = 2114;
      v66 = shortDescription7;
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
  asset = [(PLDuplicateAsset *)self asset];
  additionalAttributes = [asset additionalAttributes];
  title = [additionalAttributes title];
  v5 = title != 0;

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
    asset = [(PLDuplicateAsset *)self asset];
    dateCreated = [asset dateCreated];

    if (dateCreated)
    {
      asset2 = [(PLDuplicateAsset *)self asset];
      extendedAttributes = [asset2 extendedAttributes];
      dateCreated2 = [extendedAttributes dateCreated];

      if (dateCreated2 || -[PLDuplicateAsset enableEXIFDataAccess](self, "enableEXIFDataAccess") && (-[PLDuplicateAsset asset](self, "asset"), v11 = objc_claimAutoreleasedReturnValue(), [v11 metadataFromMediaPropertiesOrOriginalResource], v12 = objc_claimAutoreleasedReturnValue(), v11, objc_msgSend(v12, "utcCreationDate"), dateCreated2 = objc_claimAutoreleasedReturnValue(), v12, dateCreated2))
      {
        v10 = [(PLDuplicateAsset *)self _correctedCompareDate:dateCreated otherDate:dateCreated2]!= 0;
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
    asset = [(PLDuplicateAsset *)self asset];
    additionalAttributes = [asset additionalAttributes];
    timeZoneOffset = [additionalAttributes timeZoneOffset];

    if (timeZoneOffset)
    {
      asset2 = [(PLDuplicateAsset *)self asset];
      extendedAttributes = [asset2 extendedAttributes];
      timezoneOffset = [extendedAttributes timezoneOffset];

      if (timezoneOffset || -[PLDuplicateAsset enableEXIFDataAccess](self, "enableEXIFDataAccess") && (-[PLDuplicateAsset asset](self, "asset"), v12 = objc_claimAutoreleasedReturnValue(), [v12 metadataFromMediaPropertiesOrOriginalResource], v13 = objc_claimAutoreleasedReturnValue(), v12, objc_msgSend(v13, "timeZoneOffset"), timezoneOffset = objc_claimAutoreleasedReturnValue(), v13, timezoneOffset))
      {
        v11 = [timeZoneOffset isEqualToNumber:timezoneOffset] ^ 1;
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
    asset = [(PLDuplicateAsset *)self asset];
    extendedAttributes = [asset extendedAttributes];

    latitude = [extendedAttributes latitude];
    longitude = [extendedAttributes longitude];
    asset2 = [(PLDuplicateAsset *)self asset];
    [asset2 latitude];
    v11 = v10;

    asset3 = [(PLDuplicateAsset *)self asset];
    [asset3 longitude];
    v14 = v13;

    if (v11 == -180.0 && v14 == -180.0)
    {
      v15 = 0;
    }

    else
    {
      v15 = 1;
      if (latitude && longitude)
      {
        [latitude doubleValue];
        v17 = v16;
        [longitude doubleValue];
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
    asset = [(PLDuplicateAsset *)self asset];
    photoLibrary = [asset photoLibrary];
    v7 = [v4 numberWithBool:{objc_msgSend(photoLibrary, "isCloudPhotoLibraryEnabled")}];
    v8 = self->_isCPLEnabled;
    self->_isCPLEnabled = v7;

    isCPLEnabled = self->_isCPLEnabled;
  }

  return [(NSNumber *)isCPLEnabled BOOLValue];
}

- (void)setMergeStatus:(int64_t)status
{
  mergeStatus = self->_mergeStatus;
  if (mergeStatus < 2)
  {
    goto LABEL_2;
  }

  if (mergeStatus == 2 && status == 0)
  {
    status = 0;
LABEL_2:
    self->_mergeStatus = status;
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

- (id)_additionalDescriptionState:(id)state
{
  v3 = MEMORY[0x1E696AD60];
  stateCopy = state;
  v5 = objc_alloc_init(v3);
  v6 = [stateCopy objectForKeyedSubscript:@"mergeStatus"];
  [v5 appendFormat:@"m%@:", v6];

  v7 = [stateCopy objectForKeyedSubscript:@"visibility"];
  v8 = [v7 substringToIndex:1];
  [v5 appendFormat:@"v%@:", v8];

  v9 = [stateCopy objectForKeyedSubscript:@"resourceSwapDisabled"];
  v10 = [v9 substringToIndex:1];
  [v5 appendFormat:@"rd%@:", v10];

  v11 = [stateCopy objectForKeyedSubscript:@"hasModifiedUserLocation"];
  v12 = [v11 substringToIndex:1];
  [v5 appendFormat:@"ul%@:", v12];

  v13 = [stateCopy objectForKeyedSubscript:@"hasModifiedUserTimezone"];
  v14 = [v13 substringToIndex:1];
  [v5 appendFormat:@"utz%@:", v14];

  v15 = [stateCopy objectForKeyedSubscript:@"hasModifiedUserDateCreated"];

  v16 = [v15 substringToIndex:1];
  [v5 appendFormat:@"ud%@:", v16];

  return v5;
}

- (id)_additionalDescriptionWithPIIDetails:(BOOL)details
{
  detailsCopy = details;
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

  if (detailsCopy)
  {
    v11 = [v5 objectForKeyedSubscript:@"filename"];
    [v6 appendFormat:@" filename:[%@]", v11];
  }

  return v6;
}

- (id)_additionalDescriptionDictionaryWithPIIDetails:(BOOL)details
{
  detailsCopy = details;
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  veryShortDescription = [(PLDuplicateAsset *)self veryShortDescription];
  [v5 setObject:veryShortDescription forKeyedSubscript:@"objectIDDescription"];

  assetUUID = [(PLDuplicateAsset *)self assetUUID];
  [v5 setObject:assetUUID forKeyedSubscript:@"uuid"];

  if (detailsCopy)
  {
    [v5 setObject:self->_originalFilename forKeyedSubscript:@"filename"];
  }

  duplicateAssetVisibilityStateString = [(PLDuplicateAsset *)self duplicateAssetVisibilityStateString];
  [v5 setObject:duplicateAssetVisibilityStateString forKeyedSubscript:@"visibility"];

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
  duplicateAssetVisibilityState = [(PLDuplicateAsset *)self duplicateAssetVisibilityState];
  v3 = @"R";
  v4 = @"H";
  if (duplicateAssetVisibilityState != 100)
  {
    v4 = 0;
  }

  if (duplicateAssetVisibilityState != 2)
  {
    v3 = v4;
  }

  v5 = @"X";
  v6 = @"V";
  if (duplicateAssetVisibilityState != 1)
  {
    v6 = 0;
  }

  if (duplicateAssetVisibilityState)
  {
    v5 = v6;
  }

  if (duplicateAssetVisibilityState <= 1u)
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
  asset = [(PLDuplicateAsset *)self asset];
  activeLibraryScopeParticipationState = [asset activeLibraryScopeParticipationState];

  if (activeLibraryScopeParticipationState == 1)
  {
    return 100;
  }

  else
  {
    return 1;
  }
}

- (void)_configureInitPropertiesWithAsset:(id)asset
{
  assetCopy = asset;
  additionalAttributes = [assetCopy additionalAttributes];
  objectID = [assetCopy objectID];
  assetObjectID = self->_assetObjectID;
  self->_assetObjectID = objectID;

  uRIRepresentation = [(NSManagedObjectID *)self->_assetObjectID URIRepresentation];
  relativePath = [uRIRepresentation relativePath];
  assetObjectIDDescription = self->_assetObjectIDDescription;
  self->_assetObjectIDDescription = relativePath;

  originalWidth = [additionalAttributes originalWidth];
  integerValue = [originalWidth integerValue];
  originalHeight = [additionalAttributes originalHeight];
  self->_originalResolution = [originalHeight integerValue] * integerValue;

  uuid = [assetCopy uuid];

  v14 = [uuid copy];
  assetUUID = self->_assetUUID;
  self->_assetUUID = v14;

  originalFilename = [additionalAttributes originalFilename];
  v17 = [originalFilename copy];
  originalFilename = self->_originalFilename;
  self->_originalFilename = v17;

  self->_score = [(PLDuplicateAsset *)self _buildBaseScore];
  self->_duplicateAssetVisibilityState = [(PLDuplicateAsset *)self _calculateDuplicateAssetVisibilityState];
}

- (PLDuplicateAsset)initWithAsset:(id)asset cloudScopedIdentifier:(id)identifier enableEXIFDataAccess:(BOOL)access
{
  assetCopy = asset;
  identifierCopy = identifier;
  if (!assetCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLDuplicateAsset.m" lineNumber:146 description:{@"Invalid parameter not satisfying: %@", @"asset"}];
  }

  v22.receiver = self;
  v22.super_class = PLDuplicateAsset;
  v12 = [(PLDuplicateAsset *)&v22 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_asset, asset);
    if (identifierCopy)
    {
      v14 = [identifierCopy copy];
      assetCloudScopedIdentifier = v13->_assetCloudScopedIdentifier;
      v13->_assetCloudScopedIdentifier = v14;
    }

    else
    {
      assetCloudScopedIdentifier = [assetCopy cloudAssetGUID];
      v16 = [assetCloudScopedIdentifier copy];
      v17 = v13->_assetCloudScopedIdentifier;
      v13->_assetCloudScopedIdentifier = v16;
    }

    duplicateAssetVisibilityState = [(PLManagedAsset *)v13->_asset duplicateAssetVisibilityState];
    v19 = 1;
    if (!duplicateAssetVisibilityState)
    {
      v19 = 2;
    }

    v13->_mergeStatus = v19;
    v13->_enableEXIFDataAccess = access;
    v13->_resourceSwapDisabled = 0;
    [(PLDuplicateAsset *)v13 _configureInitPropertiesWithAsset:assetCopy];
  }

  return v13;
}

+ (BOOL)isDuplicateAssetSortChangedObject:(id)object
{
  v26 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  changedValues = [objectCopy changedValues];
  if ([changedValues count])
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    duplicateSortPropertyNamesSkip = [objectCopy duplicateSortPropertyNamesSkip];
    v6 = [duplicateSortPropertyNamesSkip countByEnumeratingWithState:&v20 objects:v25 count:16];
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
            objc_enumerationMutation(duplicateSortPropertyNamesSkip);
          }

          v10 = [changedValues objectForKeyedSubscript:*(*(&v20 + 1) + 8 * i)];

          if (v10)
          {
            LOBYTE(v11) = 0;
            goto LABEL_22;
          }
        }

        v7 = [duplicateSortPropertyNamesSkip countByEnumeratingWithState:&v20 objects:v25 count:16];
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
    duplicateSortPropertyNamesSkip = [objectCopy duplicateSortPropertyNames];
    v11 = [duplicateSortPropertyNamesSkip countByEnumeratingWithState:&v16 objects:v24 count:16];
    if (v11)
    {
      v12 = *v17;
      while (2)
      {
        for (j = 0; j != v11; ++j)
        {
          if (*v17 != v12)
          {
            objc_enumerationMutation(duplicateSortPropertyNamesSkip);
          }

          v14 = [changedValues objectForKeyedSubscript:*(*(&v16 + 1) + 8 * j)];

          if (v14)
          {
            LOBYTE(v11) = 1;
            goto LABEL_22;
          }
        }

        v11 = [duplicateSortPropertyNamesSkip countByEnumeratingWithState:&v16 objects:v24 count:16];
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
  relationshipKeyPathsForPrefetching = [self relationshipKeyPathsForPrefetching];
  v6[0] = @"albums";
  v6[1] = @"libraryScope";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:2];
  v4 = [relationshipKeyPathsForPrefetching arrayByAddingObjectsFromArray:v3];

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