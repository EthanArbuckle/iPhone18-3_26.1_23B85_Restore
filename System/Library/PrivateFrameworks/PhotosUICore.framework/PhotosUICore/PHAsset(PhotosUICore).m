@interface PHAsset(PhotosUICore)
+ (id)addressWithoutUnitedStatesZipCode:()PhotosUICore;
+ (id)px_fetchAssetsInArray:()PhotosUICore photoLibrary:;
+ (id)px_fetchPlacesAssetsInAssetCollection:()PhotosUICore options:;
+ (id)px_orderedAssetsFromAssets:()PhotosUICore sortDescriptors:;
+ (void)px_generateResourceFilesForAssets:()PhotosUICore completionHandler:;
- (BOOL)px_containsSearchContextualVideoThumbnailsDebugOnly;
- (BOOL)px_isSyndicationPhotoLibraryAsset;
- (__CFString)_deferredProcessingStringWithEnum:()PhotosUICore;
- (__CFString)_ocrStrings;
- (__CFString)_qrCodeStrings;
- (__CFString)_searchDebugStringWithKeyedValues:()PhotosUICore level:;
- (__CFString)_searchDebugStringWithPersons:()PhotosUICore;
- (__CFString)_searchDebugStringWithScenes:()PhotosUICore;
- (__CFString)_searchDebugStringWithValues:()PhotosUICore level:;
- (__CFString)_videoDeferredProcessingNeededString:()PhotosUICore;
- (__CFString)px_exportFilename;
- (id)_imageProcessingFlags;
- (id)_junkClassificationStringWithClassifications:()PhotosUICore;
- (id)_sceneClassificationStringWithClassifications:()PhotosUICore;
- (id)_sdClassificationStringWithClassifications:()PhotosUICore;
- (id)_userFeedbackScoreInfo;
- (id)px_adjustmentUuid;
- (id)px_coreDataBrowserURL;
- (id)px_curationDebugString;
- (id)px_curationDebugValues;
- (id)px_debugStringForValueList:()PhotosUICore;
- (id)px_detailedDebugDescriptionInLibrary:()PhotosUICore;
- (id)px_navigationURLQueryItemWithPrefix:()PhotosUICore;
- (id)px_navigationURLWithContainerCollection:()PhotosUICore;
- (id)px_searchDebugString;
- (id)px_searchDebugValues;
- (id)px_singleLineMailingAddress;
- (id)px_slHighlightWithError:()PhotosUICore;
- (id)stringMinutesTimeRangeFromTimeRange:()PhotosUICore;
- (uint64_t)px_canAddLike;
- (uint64_t)px_canLoadSyndicationAttributionInfo;
- (uint64_t)px_containsPotentiallySensitiveContent;
- (uint64_t)px_currentVariationType;
- (uint64_t)px_displayType;
- (uint64_t)px_isContentPreviewable;
- (uint64_t)px_isLikedByMe;
- (uint64_t)px_isSharedAlbumAsset;
- (uint64_t)px_isSyndicatedAsset;
- (uint64_t)px_isUnsavedSyndicatedAsset;
- (uint64_t)px_shotWithNightMode;
- (uint64_t)px_wasSavedThroughExternalApp;
- (uint64_t)px_wasSavedThroughSyndication;
- (void)px_addLikeWithCompletionHandler:()PhotosUICore;
- (void)px_removeLikeWithCompletionHandler:()PhotosUICore;
@end

@implementation PHAsset(PhotosUICore)

- (uint64_t)px_isUnsavedSyndicatedAsset
{
  v2 = +[PXContentSyndicationSettings sharedInstance];
  if ([v2 treatEveryAssetAsGuest])
  {
    v5 = 1;
    goto LABEL_7;
  }

  if ([v2 dataSourceType] == 6)
  {
    v6 = [a1 isMomentSharedAsset];
    goto LABEL_6;
  }

  v3 = [a1 photoLibrary];
  v4 = [v3 wellKnownPhotoLibraryIdentifier];

  if (v4 != 3)
  {
    v6 = [a1 isGuestAsset];
LABEL_6:
    v5 = v6;
    goto LABEL_7;
  }

  [a1 fetchPropertySetsIfNeeded];
  v5 = [a1 isSyndicatedAssetSavedToUserLibrary] ^ 1;
LABEL_7:

  return v5;
}

- (void)px_removeLikeWithCompletionHandler:()PhotosUICore
{
  v7 = *MEMORY[0x1E69E9840];
  v6 = a1;
  v3 = MEMORY[0x1E695DEC8];
  v4 = a3;
  v5 = [v3 arrayWithObjects:&v6 count:1];
  [PXSharedAlbumsUtilities setLikedTo:0 forAssets:v5 completionHandler:v4, v6, v7];
}

- (void)px_addLikeWithCompletionHandler:()PhotosUICore
{
  v7 = *MEMORY[0x1E69E9840];
  v6 = a1;
  v3 = MEMORY[0x1E695DEC8];
  v4 = a3;
  v5 = [v3 arrayWithObjects:&v6 count:1];
  [PXSharedAlbumsUtilities setLikedTo:1 forAssets:v5 completionHandler:v4, v6, v7];
}

- (uint64_t)px_canAddLike
{
  result = [a1 px_isSharedAlbumAsset];
  if (result)
  {
    v3 = [MEMORY[0x1E69BE6A8] maxCommentsPerAsset];
    [a1 fetchPropertySetsIfNeeded];
    v4 = [a1 commentProperties];
    v5 = [v4 commentCount];
    v6 = [a1 commentProperties];
    v7 = [v6 likeCount] + v5;

    return v7 < v3;
  }

  return result;
}

- (uint64_t)px_isLikedByMe
{
  [a1 fetchPropertySetsIfNeeded];
  v2 = [a1 commentProperties];
  v3 = [v2 hasUserLiked];

  return v3;
}

- (__CFString)_searchDebugStringWithScenes:()PhotosUICore
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    if ([v4 count])
    {
      v6 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:@"\n"];
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v22 = v5;
      obj = v5;
      v7 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v25;
        do
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v25 != v9)
            {
              objc_enumerationMutation(obj);
            }

            v11 = *(*(&v24 + 1) + 8 * i);
            v12 = objc_alloc_init(MEMORY[0x1E696AD60]);
            v13 = [v11 objectForKeyedSubscript:@"sceneIdentifier"];
            [v12 appendFormat:@"sceneIdentifier: %@\n", v13];

            v14 = [v11 objectForKeyedSubscript:@"sceneType_humanReadable"];
            v15 = [v11 objectForKeyedSubscript:@"sceneType"];
            [v12 appendFormat:@"  sceneType: %@ (%@)\n", v14, v15];

            v16 = [v11 objectForKeyedSubscript:@"label"];
            [v12 appendFormat:@"  label: %@\n", v16];

            v17 = [v11 objectForKeyedSubscript:@"synonyms"];
            v18 = [a1 _searchDebugStringWithValues:v17];
            [v12 appendFormat:@"  synonyms: %@\n", v18];

            v19 = [v11 objectForKeyedSubscript:@"confidence"];
            [v12 appendFormat:@"  confidence: %@\n", v19];

            v20 = [v11 objectForKeyedSubscript:@"boundingBox"];
            [v12 appendFormat:@"  boundingBox: %@\n", v20];

            [(__CFString *)v6 appendFormat:@"%@\n", v12];
          }

          v8 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
        }

        while (v8);
      }

      v5 = v22;
    }

    else
    {
      v6 = &stru_1F1741150;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (__CFString)_searchDebugStringWithPersons:()PhotosUICore
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    if ([v4 count])
    {
      v6 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:@"\n"];
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      obj = v5;
      v7 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v24;
        do
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v24 != v9)
            {
              objc_enumerationMutation(obj);
            }

            v11 = *(*(&v23 + 1) + 8 * i);
            v12 = objc_alloc_init(MEMORY[0x1E696AD60]);
            v13 = [v11 objectForKeyedSubscript:@"photosPersonIdentifier"];
            [v12 appendFormat:@"photosPersonIdentifier: %@\n", v13];

            v14 = [v11 objectForKeyedSubscript:@"displayName"];
            [v12 appendFormat:@"  displayName: %@\n", v14];

            v15 = [v11 objectForKeyedSubscript:@"nameAlternatives"];
            v16 = [a1 _searchDebugStringWithValues:v15];
            [v12 appendFormat:@"  nameAlternatives: %@\n", v16];

            v17 = [v11 objectForKeyedSubscript:@"faceAttributes"];
            v18 = [a1 _searchDebugStringWithValues:v17];
            [v12 appendFormat:@"  faceAttributes: %@\n", v18];

            v19 = [v11 objectForKeyedSubscript:@"personType"];
            [v12 appendFormat:@"  personType: %@\n", v19];

            v20 = [v11 objectForKeyedSubscript:@"contactIdentifier"];
            [v12 appendFormat:@"  contactIdentifier: %@\n", v20];

            [(__CFString *)v6 appendFormat:@"%@\n", v12];
          }

          v8 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
        }

        while (v8);
      }
    }

    else
    {
      v6 = &stru_1F1741150;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (__CFString)_searchDebugStringWithValues:()PhotosUICore level:
{
  v32 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    if ([v6 count])
    {
      v8 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v7, "count")}];
      v27 = 0u;
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      v26 = v7;
      v9 = v7;
      v10 = [v9 countByEnumeratingWithState:&v27 objects:v31 count:16];
      if (!v10)
      {
        goto LABEL_16;
      }

      v11 = v10;
      v12 = *v28;
      while (1)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v28 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v27 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v15 = [a1 _searchDebugStringWithValues:v14 level:a4 + 1];
LABEL_12:
            v16 = v15;
            [v8 addObject:v15];

            continue;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v15 = [a1 _searchDebugStringWithKeyedValues:v14 level:a4 + 1];
            goto LABEL_12;
          }

          [v8 addObject:v14];
        }

        v11 = [v9 countByEnumeratingWithState:&v27 objects:v31 count:16];
        if (!v11)
        {
LABEL_16:

          v17 = objc_alloc(MEMORY[0x1E696AD60]);
          v18 = 4 * a4;
          v19 = (4 * a4) | 2;
          v20 = objc_msgSend(@"(\n"), "stringByPaddingToLength:withString:startingAtIndex:", v19, CFSTR(" "), 0;
          v21 = [v17 initWithString:v20];

          v22 = [@" \n"];
          v23 = [v8 componentsJoinedByString:v22];
          [(__CFString *)v21 appendString:v23];

          v24 = [@"\n" stringByPaddingToLength:v18 - 3 withString:@" " startingAtIndex:0];
          [(__CFString *)v21 appendString:v24];

          [(__CFString *)v21 appendString:@""]);
          v7 = v26;
          goto LABEL_19;
        }
      }
    }

    v21 = &stru_1F1741150;
  }

  else
  {
    v21 = 0;
  }

LABEL_19:

  return v21;
}

- (__CFString)_searchDebugStringWithKeyedValues:()PhotosUICore level:
{
  v37 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    if ([v4 count])
    {
      v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v5, "count")}];
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      v32 = 0u;
      v26 = v5;
      v7 = v5;
      v8 = [v7 countByEnumeratingWithState:&v29 objects:v36 count:16];
      if (!v8)
      {
        goto LABEL_16;
      }

      v9 = v8;
      v10 = *v30;
      while (1)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v30 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v29 + 1) + 8 * i);
          v13 = [v7 objectForKeyedSubscript:v12];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v35[0] = v12;
            v14 = [a1 _searchDebugStringWithValues:v13 level:a4 + 1];
            v35[1] = v14;
            v15 = MEMORY[0x1E695DEC8];
            v16 = v35;
LABEL_12:
            v17 = [v15 arrayWithObjects:v16 count:2];
            v18 = [v17 componentsJoinedByString:@" = "];
            [v6 addObject:v18];

            goto LABEL_14;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v34[0] = v12;
            v14 = [a1 _searchDebugStringWithKeyedValues:v13 level:a4 + 1];
            v34[1] = v14;
            v15 = MEMORY[0x1E695DEC8];
            v16 = v34;
            goto LABEL_12;
          }

          v33[0] = v12;
          v33[1] = v13;
          v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:2];
          v17 = [v14 componentsJoinedByString:@" = "];
          [v6 addObject:v17];
LABEL_14:
        }

        v9 = [v7 countByEnumeratingWithState:&v29 objects:v36 count:16];
        if (!v9)
        {
LABEL_16:

          v19 = objc_alloc(MEMORY[0x1E696AD60]);
          v20 = [@"{\n" stringByPaddingToLength:(4 * a4) | 2 withString:@" " startingAtIndex:0];
          v21 = [v19 initWithString:v20];

          v22 = [@" \n"];
          v23 = [v6 componentsJoinedByString:v22];
          [(__CFString *)v21 appendString:v23];

          v24 = [@"\n" stringByPaddingToLength:4 * a4 - 3 withString:@" " startingAtIndex:0];
          [(__CFString *)v21 appendString:v24];

          [(__CFString *)v21 appendString:@"}"];
          v5 = v26;
          goto LABEL_19;
        }
      }
    }

    v21 = &stru_1F1741150;
  }

  else
  {
    v21 = 0;
  }

LABEL_19:

  return v21;
}

- (id)px_searchDebugValues
{
  v2 = objc_opt_new();
  v3 = [a1 photoLibrary];
  v4 = [a1 localIdentifier];
  v259 = 0;
  v5 = [v3 searchDebugInformationForAssetLocalIdentifier:v4 redacted:0 error:&v259];
  v6 = v259;

  if (v5)
  {
    v7 = [a1 uuid];
    [v2 addValueWithLabel:v7];

    [v2 addValueWithLabel:@"GENERAL"];
    v8 = *MEMORY[0x1E69BEF08];
    v9 = [v5 objectForKeyedSubscript:*MEMORY[0x1E69BEF08]];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = @"(null)";
    }

    [v2 addValueWithLabel:v8 stringValue:v11];

    v12 = *MEMORY[0x1E69BEFF8];
    v13 = [v5 objectForKeyedSubscript:*MEMORY[0x1E69BEFF8]];
    v14 = v13;
    if (v13)
    {
      v15 = v13;
    }

    else
    {
      v15 = @"(null)";
    }

    [v2 addValueWithLabel:v12 stringValue:v15];

    v16 = *MEMORY[0x1E69BEE80];
    v17 = [v5 objectForKeyedSubscript:*MEMORY[0x1E69BEE80]];
    [v2 addValueWithLabel:v16 BOOLValue:{objc_msgSend(v17, "BOOLValue")}];

    v18 = *MEMORY[0x1E69BF070];
    v19 = [v5 objectForKeyedSubscript:*MEMORY[0x1E69BF070]];
    [v2 addValueWithLabel:v18 BOOLValue:{objc_msgSend(v19, "BOOLValue")}];

    v20 = *MEMORY[0x1E69BF030];
    v21 = [v5 objectForKeyedSubscript:*MEMORY[0x1E69BF030]];
    v22 = v21;
    if (v21)
    {
      [v2 addValueWithLabel:v20 BOOLValue:{objc_msgSend(v21, "BOOLValue")}];
    }

    else
    {
      [v2 addValueWithLabel:v20 stringValue:@"(null)"];
    }

    v24 = *MEMORY[0x1E69BEEF0];
    v25 = [v5 objectForKeyedSubscript:*MEMORY[0x1E69BEEF0]];
    v258 = v6;
    v256 = v20;
    v257 = v25;
    if (v25)
    {
      [v25 doubleValue];
      [v2 addValueWithLabel:v24 doubleValue:?];
    }

    else
    {
      [v2 addValueWithLabel:v24 stringValue:@"(null)"];
    }

    [v2 addValueWithLabel:@"EMBEDDINGS"];
    v26 = *MEMORY[0x1E69BEE78];
    v27 = [v5 objectForKeyedSubscript:*MEMORY[0x1E69BEE78]];
    [v2 addValueWithLabel:v26 BOOLValue:{objc_msgSend(v27, "BOOLValue")}];

    v28 = *MEMORY[0x1E69BEF18];
    v29 = [v5 objectForKeyedSubscript:*MEMORY[0x1E69BEF18]];
    [v2 addValueWithLabel:v28 integerValue:{objc_msgSend(v29, "integerValue")}];

    [v2 addValueWithLabel:@"VERSIONS"];
    v30 = *MEMORY[0x1E69BF018];
    v31 = [v5 objectForKeyedSubscript:*MEMORY[0x1E69BF018]];
    [v2 addValueWithLabel:v30 integerValue:{objc_msgSend(v31, "integerValue")}];

    v32 = *MEMORY[0x1E69BEF38];
    v33 = [v5 objectForKeyedSubscript:*MEMORY[0x1E69BEF38]];
    [v2 addValueWithLabel:v32 integerValue:{objc_msgSend(v33, "integerValue")}];

    v34 = *MEMORY[0x1E69BEFA0];
    v35 = [v5 objectForKeyedSubscript:*MEMORY[0x1E69BEFA0]];
    [v2 addValueWithLabel:v34 integerValue:{objc_msgSend(v35, "integerValue")}];

    v36 = *MEMORY[0x1E69BEF98];
    v37 = [v5 objectForKeyedSubscript:*MEMORY[0x1E69BEF98]];
    [v2 addValueWithLabel:v36 integerValue:{objc_msgSend(v37, "integerValue")}];

    v38 = *MEMORY[0x1E69BEFE8];
    v39 = [v5 objectForKeyedSubscript:*MEMORY[0x1E69BEFE8]];
    [v2 addValueWithLabel:v38 integerValue:{objc_msgSend(v39, "integerValue")}];

    v40 = *MEMORY[0x1E69BEFF0];
    v41 = [v5 objectForKeyedSubscript:*MEMORY[0x1E69BEFF0]];
    [v2 addValueWithLabel:v40 integerValue:{objc_msgSend(v41, "integerValue")}];

    v42 = *MEMORY[0x1E69BEEB8];
    v43 = [v5 objectForKeyedSubscript:*MEMORY[0x1E69BEEB8]];
    [v2 addValueWithLabel:v42 integerValue:{objc_msgSend(v43, "integerValue")}];

    v44 = *MEMORY[0x1E69BEF90];
    v45 = [v5 objectForKeyedSubscript:*MEMORY[0x1E69BEF90]];
    [v2 addValueWithLabel:v44 integerValue:{objc_msgSend(v45, "integerValue")}];

    v46 = *MEMORY[0x1E69BEFA8];
    v47 = [v5 objectForKeyedSubscript:*MEMORY[0x1E69BEFA8]];
    [v2 addValueWithLabel:v46 integerValue:{objc_msgSend(v47, "integerValue")}];

    [v2 addValueWithLabel:@"OTHER"];
    v48 = *MEMORY[0x1E69BEF40];
    v49 = [v5 objectForKeyedSubscript:*MEMORY[0x1E69BEF40]];
    [v2 addValueWithLabel:v48 BOOLValue:{objc_msgSend(v49, "BOOLValue")}];

    v50 = *MEMORY[0x1E69BEEF8];
    v51 = [v5 objectForKeyedSubscript:*MEMORY[0x1E69BEEF8]];
    v52 = v51;
    if (v51)
    {
      v53 = v51;
    }

    else
    {
      v53 = &stru_1F1741150;
    }

    [v2 addValueWithLabel:v50 stringValue:v53];

    v54 = *MEMORY[0x1E69BEF10];
    v55 = [v5 objectForKeyedSubscript:*MEMORY[0x1E69BEF10]];
    [v55 doubleValue];
    [v2 addValueWithLabel:v54 doubleValue:?];

    v56 = *MEMORY[0x1E69BEE88];
    v57 = [v5 objectForKeyedSubscript:*MEMORY[0x1E69BEE88]];
    v58 = v57;
    if (v57)
    {
      v59 = v57;
    }

    else
    {
      v59 = &stru_1F1741150;
    }

    [v2 addValueWithLabel:v56 stringValue:v59];

    v60 = *MEMORY[0x1E69BEEC0];
    v61 = [v5 objectForKeyedSubscript:*MEMORY[0x1E69BEEC0]];
    v62 = v61;
    if (v61)
    {
      v63 = v61;
    }

    else
    {
      v63 = &stru_1F1741150;
    }

    [v2 addValueWithLabel:v60 stringValue:v63];

    [v2 addValueWithLabel:@"SCORES"];
    v64 = *MEMORY[0x1E69BEF00];
    v65 = [v5 objectForKeyedSubscript:*MEMORY[0x1E69BEF00]];
    [v65 doubleValue];
    [v2 addValueWithLabel:v64 doubleValue:?];

    v66 = *MEMORY[0x1E69BEE90];
    v67 = [v5 objectForKeyedSubscript:*MEMORY[0x1E69BEE90]];
    [v67 doubleValue];
    [v2 addValueWithLabel:v66 doubleValue:?];

    [v2 addValueWithLabel:@"DATES"];
    v68 = *MEMORY[0x1E69BEED0];
    v69 = [v5 objectForKeyedSubscript:*MEMORY[0x1E69BEED0]];
    v70 = v69;
    if (v69)
    {
      v71 = v69;
    }

    else
    {
      v71 = @"(null)";
    }

    [v2 addValueWithLabel:v68 stringValue:v71];

    v72 = *MEMORY[0x1E69BEED8];
    v73 = [v5 objectForKeyedSubscript:*MEMORY[0x1E69BEED8]];
    v74 = [v73 componentsJoinedByString:{@", "}];
    v75 = v74;
    if (v74)
    {
      v76 = v74;
    }

    else
    {
      v76 = @"(null)";
    }

    v77 = v76;

    v78 = *MEMORY[0x1E69BEEE0];
    v79 = [v5 objectForKeyedSubscript:*MEMORY[0x1E69BEEE0]];
    v80 = [v79 componentsJoinedByString:{@", "}];
    v81 = v80;
    if (v80)
    {
      v82 = v80;
    }

    else
    {
      v82 = @"(null)";
    }

    v83 = v82;

    v84 = v72;
    v85 = v77;
    [v2 addValueWithLabel:v84 stringValue:v77];
    [v2 addValueWithLabel:v78 stringValue:v83];
    v86 = *MEMORY[0x1E69BEEC8];
    v87 = [v5 objectForKeyedSubscript:*MEMORY[0x1E69BEEC8]];
    v88 = v87;
    if (v87)
    {
      v89 = v87;
    }

    else
    {
      v89 = @"(null)";
    }

    [v2 addValueWithLabel:v86 stringValue:v89];

    v90 = *MEMORY[0x1E69BF028];
    v91 = [v5 objectForKeyedSubscript:*MEMORY[0x1E69BF028]];
    v92 = [a1 _searchDebugStringWithValues:v91];
    v93 = v92;
    if (v92)
    {
      v94 = v92;
    }

    else
    {
      v94 = &stru_1F1741150;
    }

    [v2 addValueWithLabel:v90 stringValue:v94];

    v95 = *MEMORY[0x1E69BEFC8];
    v96 = [v5 objectForKeyedSubscript:*MEMORY[0x1E69BEFC8]];
    v97 = [a1 _searchDebugStringWithValues:v96];
    v98 = v97;
    if (v97)
    {
      v99 = v97;
    }

    else
    {
      v99 = &stru_1F1741150;
    }

    [v2 addValueWithLabel:v95 stringValue:v99];

    v100 = *MEMORY[0x1E69BEFD0];
    v101 = [v5 objectForKeyedSubscript:*MEMORY[0x1E69BEFD0]];
    v102 = [a1 _searchDebugStringWithValues:v101];
    v103 = v102;
    if (v102)
    {
      v104 = v102;
    }

    else
    {
      v104 = &stru_1F1741150;
    }

    [v2 addValueWithLabel:v100 stringValue:v104];

    v105 = *MEMORY[0x1E69BEF60];
    v106 = [v5 objectForKeyedSubscript:*MEMORY[0x1E69BEF60]];
    v107 = [a1 _searchDebugStringWithValues:v106];
    v108 = v107;
    if (v107)
    {
      v109 = v107;
    }

    else
    {
      v109 = &stru_1F1741150;
    }

    [v2 addValueWithLabel:v105 stringValue:v109];

    v110 = *MEMORY[0x1E69BEF68];
    v111 = [v5 objectForKeyedSubscript:*MEMORY[0x1E69BEF68]];
    [v111 doubleValue];
    [v2 addValueWithLabel:v110 doubleValue:?];

    v112 = *MEMORY[0x1E69BF058];
    v113 = [v5 objectForKeyedSubscript:*MEMORY[0x1E69BF058]];
    [v113 doubleValue];
    [v2 addValueWithLabel:v112 doubleValue:?];

    v114 = *MEMORY[0x1E69BF050];
    v115 = [v5 objectForKeyedSubscript:*MEMORY[0x1E69BF050]];
    v116 = v115;
    if (v115)
    {
      v117 = v115;
    }

    else
    {
      v117 = @"(null)";
    }

    [v2 addValueWithLabel:v114 stringValue:v117];

    [v2 addValueWithLabel:@"USER TEXT"];
    v118 = *MEMORY[0x1E69BF060];
    v119 = [v5 objectForKeyedSubscript:*MEMORY[0x1E69BF060]];
    v120 = v119;
    if (v119)
    {
      v121 = v119;
    }

    else
    {
      v121 = &stru_1F1741150;
    }

    [v2 addValueWithLabel:v118 stringValue:v121];

    v122 = *MEMORY[0x1E69BEF48];
    v123 = [v5 objectForKeyedSubscript:*MEMORY[0x1E69BEF48]];
    v124 = v123;
    if (v123)
    {
      v125 = v123;
    }

    else
    {
      v125 = &stru_1F1741150;
    }

    [v2 addValueWithLabel:v122 stringValue:v125];

    v126 = *MEMORY[0x1E69BEEE8];
    v127 = [v5 objectForKeyedSubscript:*MEMORY[0x1E69BEEE8]];
    v128 = v127;
    if (v127)
    {
      v129 = v127;
    }

    else
    {
      v129 = &stru_1F1741150;
    }

    [v2 addValueWithLabel:v126 stringValue:v129];

    v130 = *MEMORY[0x1E69BEF70];
    v131 = [v5 objectForKeyedSubscript:*MEMORY[0x1E69BEF70]];
    v132 = [a1 _searchDebugStringWithValues:v131];
    v133 = v132;
    if (v132)
    {
      v134 = v132;
    }

    else
    {
      v134 = &stru_1F1741150;
    }

    [v2 addValueWithLabel:v130 stringValue:v134];

    [v2 addValueWithLabel:@"MEDIA TYPES"];
    v135 = *MEMORY[0x1E69BEFB0];
    v136 = [v5 objectForKeyedSubscript:*MEMORY[0x1E69BEFB0]];
    v137 = [a1 _searchDebugStringWithValues:v136];
    v138 = v137;
    if (v137)
    {
      v139 = v137;
    }

    else
    {
      v139 = &stru_1F1741150;
    }

    [v2 addValueWithLabel:v135 stringValue:v139];

    [v2 addValueWithLabel:@"PHOTOGRAPHIC STYLES"];
    v140 = *MEMORY[0x1E69BEFE0];
    v141 = [v5 objectForKeyedSubscript:*MEMORY[0x1E69BEFE0]];
    v142 = [a1 _searchDebugStringWithValues:v141];
    v143 = v142;
    if (v142)
    {
      v144 = v142;
    }

    else
    {
      v144 = &stru_1F1741150;
    }

    [v2 addValueWithLabel:v140 stringValue:v144];

    [v2 addValueWithLabel:@"LOCATIONS"];
    v145 = *MEMORY[0x1E69BF000];
    v146 = [v5 objectForKeyedSubscript:*MEMORY[0x1E69BF000]];
    [v2 addValueWithLabel:v145 BOOLValue:{objc_msgSend(v146, "BOOLValue")}];

    v147 = [v5 objectForKeyedSubscript:v145];
    if (v147)
    {
      v23 = v22;
      [v2 addValueWithLabel:v256 BOOLValue:{objc_msgSend(v22, "BOOLValue")}];
    }

    else
    {
      [v2 addValueWithLabel:v256 stringValue:@"(null)"];
      v23 = v22;
    }

    v148 = *MEMORY[0x1E69BEF80];
    v149 = [v5 objectForKeyedSubscript:*MEMORY[0x1E69BEF80]];
    v150 = [a1 _searchDebugStringWithValues:v149];
    v151 = v150;
    if (v150)
    {
      v152 = v150;
    }

    else
    {
      v152 = &stru_1F1741150;
    }

    [v2 addValueWithLabel:v148 stringValue:v152];

    [v2 addValueWithLabel:@"BUSINESSES"];
    v153 = *MEMORY[0x1E69BEEB0];
    v154 = [v5 objectForKeyedSubscript:*MEMORY[0x1E69BEEB0]];
    v155 = [a1 _searchDebugStringWithValues:v154];
    v156 = v155;
    if (v155)
    {
      v157 = v155;
    }

    else
    {
      v157 = &stru_1F1741150;
    }

    [v2 addValueWithLabel:v153 stringValue:v157];

    v158 = *MEMORY[0x1E69BEEA8];
    v159 = [v5 objectForKeyedSubscript:*MEMORY[0x1E69BEEA8]];
    v160 = [a1 _searchDebugStringWithValues:v159];
    v161 = v160;
    if (v160)
    {
      v162 = v160;
    }

    else
    {
      v162 = &stru_1F1741150;
    }

    [v2 addValueWithLabel:v158 stringValue:v162];

    [v2 addValueWithLabel:@"PUBLIC EVENTS"];
    v163 = *MEMORY[0x1E69BEF28];
    v164 = [v5 objectForKeyedSubscript:*MEMORY[0x1E69BEF28]];
    v165 = [a1 _searchDebugStringWithValues:v164];
    v166 = v165;
    if (v165)
    {
      v167 = v165;
    }

    else
    {
      v167 = &stru_1F1741150;
    }

    [v2 addValueWithLabel:v163 stringValue:v167];

    v168 = *MEMORY[0x1E69BEF20];
    v169 = [v5 objectForKeyedSubscript:*MEMORY[0x1E69BEF20]];
    v170 = [a1 _searchDebugStringWithValues:v169];
    v171 = v170;
    if (v170)
    {
      v172 = v170;
    }

    else
    {
      v172 = &stru_1F1741150;
    }

    [v2 addValueWithLabel:v168 stringValue:v172];

    v173 = *MEMORY[0x1E69BEF30];
    v174 = [v5 objectForKeyedSubscript:*MEMORY[0x1E69BEF30]];
    v175 = [a1 _searchDebugStringWithValues:v174];
    v176 = v175;
    if (v175)
    {
      v177 = v175;
    }

    else
    {
      v177 = &stru_1F1741150;
    }

    [v2 addValueWithLabel:v173 stringValue:v177];

    [v2 addValueWithLabel:@"MEANINGS"];
    v178 = *MEMORY[0x1E69BEF88];
    v179 = [v5 objectForKeyedSubscript:*MEMORY[0x1E69BEF88]];
    v180 = [a1 _searchDebugStringWithValues:v179];
    v181 = v180;
    if (v180)
    {
      v182 = v180;
    }

    else
    {
      v182 = &stru_1F1741150;
    }

    [v2 addValueWithLabel:v178 stringValue:v182];

    [v2 addValueWithLabel:@"SHARED LIBRARY"];
    v183 = *MEMORY[0x1E69BEF78];
    v184 = [v5 objectForKeyedSubscript:*MEMORY[0x1E69BEF78]];
    v185 = v184;
    if (v184)
    {
      v186 = v184;
    }

    else
    {
      v186 = &stru_1F1741150;
    }

    [v2 addValueWithLabel:v183 stringValue:v186];

    v187 = *MEMORY[0x1E69BF038];
    v188 = [v5 objectForKeyedSubscript:*MEMORY[0x1E69BF038]];
    v189 = [a1 _searchDebugStringWithPersons:v188];
    v190 = v189;
    if (v189)
    {
      v191 = v189;
    }

    else
    {
      v191 = &stru_1F1741150;
    }

    [v2 addValueWithLabel:v187 stringValue:v191];

    [v2 addValueWithLabel:@"SAVED FROM APP"];
    v192 = *MEMORY[0x1E69BF010];
    v193 = [v5 objectForKeyedSubscript:*MEMORY[0x1E69BF010]];
    v194 = v193;
    if (v193)
    {
      v195 = v193;
    }

    else
    {
      v195 = &stru_1F1741150;
    }

    [v2 addValueWithLabel:v192 stringValue:v195];

    v196 = *MEMORY[0x1E69BF008];
    v197 = [v5 objectForKeyedSubscript:*MEMORY[0x1E69BF008]];
    v198 = v197;
    if (v197)
    {
      v199 = v197;
    }

    else
    {
      v199 = &stru_1F1741150;
    }

    [v2 addValueWithLabel:v196 stringValue:v199];

    [v2 addValueWithLabel:@"PEOPLE"];
    v200 = *MEMORY[0x1E69BEFD8];
    v201 = [v5 objectForKeyedSubscript:*MEMORY[0x1E69BEFD8]];
    v202 = [a1 _searchDebugStringWithPersons:v201];
    v203 = v202;
    if (v202)
    {
      v204 = v202;
    }

    else
    {
      v204 = &stru_1F1741150;
    }

    [v2 addValueWithLabel:v200 stringValue:v204];

    [v2 addValueWithLabel:@"OCR TEXT CONTENT"];
    v205 = *MEMORY[0x1E69BF040];
    v206 = [v5 objectForKeyedSubscript:*MEMORY[0x1E69BF040]];
    v207 = [a1 _searchDebugStringWithValues:v206];
    v208 = v207;
    if (v207)
    {
      v209 = v207;
    }

    else
    {
      v209 = &stru_1F1741150;
    }

    [v2 addValueWithLabel:v205 stringValue:v209];

    [v2 addValueWithLabel:@"UTILITIES"];
    v210 = *MEMORY[0x1E69BF068];
    v211 = [v5 objectForKeyedSubscript:*MEMORY[0x1E69BF068]];
    v212 = [a1 _searchDebugStringWithValues:v211];
    v213 = v212;
    if (v212)
    {
      v214 = v212;
    }

    else
    {
      v214 = &stru_1F1741150;
    }

    [v2 addValueWithLabel:v210 stringValue:v214];

    [v2 addValueWithLabel:@"SCENES"];
    v215 = *MEMORY[0x1E69BF020];
    v216 = [v5 objectForKeyedSubscript:*MEMORY[0x1E69BF020]];
    v217 = [a1 _searchDebugStringWithScenes:v216];
    v218 = v217;
    if (v217)
    {
      v219 = v217;
    }

    else
    {
      v219 = &stru_1F1741150;
    }

    [v2 addValueWithLabel:v215 stringValue:v219];

    [v2 addValueWithLabel:@"ALBUMS"];
    v220 = *MEMORY[0x1E69BEEA0];
    v221 = [v5 objectForKeyedSubscript:*MEMORY[0x1E69BEEA0]];
    v222 = [a1 _searchDebugStringWithValues:v221];
    v223 = v222;
    if (v222)
    {
      v224 = v222;
    }

    else
    {
      v224 = &stru_1F1741150;
    }

    [v2 addValueWithLabel:v220 stringValue:v224];

    v225 = *MEMORY[0x1E69BEE98];
    v226 = [v5 objectForKeyedSubscript:*MEMORY[0x1E69BEE98]];
    v227 = [a1 _searchDebugStringWithValues:v226];
    v228 = v227;
    if (v227)
    {
      v229 = v227;
    }

    else
    {
      v229 = &stru_1F1741150;
    }

    [v2 addValueWithLabel:v225 stringValue:v229];

    [v2 addValueWithLabel:@"MEMORIES"];
    v230 = *MEMORY[0x1E69BEFC0];
    v231 = [v5 objectForKeyedSubscript:*MEMORY[0x1E69BEFC0]];
    v232 = [a1 _searchDebugStringWithValues:v231];
    v233 = v232;
    if (v232)
    {
      v234 = v232;
    }

    else
    {
      v234 = &stru_1F1741150;
    }

    [v2 addValueWithLabel:v230 stringValue:v234];

    v235 = *MEMORY[0x1E69BEFB8];
    v236 = [v5 objectForKeyedSubscript:*MEMORY[0x1E69BEFB8]];
    v237 = [a1 _searchDebugStringWithValues:v236];
    v238 = v237;
    if (v237)
    {
      v239 = v237;
    }

    else
    {
      v239 = &stru_1F1741150;
    }

    [v2 addValueWithLabel:v235 stringValue:v239];

    [v2 addValueWithLabel:@"HIGHLIGHTS"];
    v240 = *MEMORY[0x1E69BEF58];
    v241 = [v5 objectForKeyedSubscript:*MEMORY[0x1E69BEF58]];
    v242 = [a1 _searchDebugStringWithValues:v241];
    v243 = v242;
    if (v242)
    {
      v244 = v242;
    }

    else
    {
      v244 = &stru_1F1741150;
    }

    [v2 addValueWithLabel:v240 stringValue:v244];

    v245 = *MEMORY[0x1E69BEF50];
    v246 = [v5 objectForKeyedSubscript:*MEMORY[0x1E69BEF50]];
    v247 = [a1 _searchDebugStringWithValues:v246];
    v248 = v247;
    if (v247)
    {
      v249 = v247;
    }

    else
    {
      v249 = &stru_1F1741150;
    }

    [v2 addValueWithLabel:v245 stringValue:v249];

    [v2 addValueWithLabel:@"THUMBNAIL MAP"];
    v250 = *MEMORY[0x1E69BF048];
    v251 = [v5 objectForKeyedSubscript:*MEMORY[0x1E69BF048]];
    v252 = [v251 description];
    v253 = v252;
    if (v252)
    {
      v254 = v252;
    }

    else
    {
      v254 = &stru_1F1741150;
    }

    [v2 addValueWithLabel:v250 stringValue:v254];

    v6 = v258;
  }

  else
  {
    v23 = [v6 description];
    [v2 addValueWithLabel:@"Error" stringValue:v23 highlightStyle:3];
  }

  return v2;
}

- (BOOL)px_containsSearchContextualVideoThumbnailsDebugOnly
{
  v16 = *MEMORY[0x1E69E9840];
  if (!PFOSVariantHasInternalUI() || ![a1 isVideo])
  {
    return 0;
  }

  v2 = [a1 photoLibrary];
  v3 = [a1 localIdentifier];
  v11 = 0;
  v4 = [v2 searchDebugInformationForAssetLocalIdentifier:v3 redacted:0 error:&v11];
  v5 = v11;

  v6 = [v4 objectForKeyedSubscript:*MEMORY[0x1E69BF048]];
  if (v5)
  {
    v7 = PLUIGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = [a1 uuid];
      *buf = 138412546;
      v13 = v8;
      v14 = 2112;
      v15 = v5;
      _os_log_impl(&dword_1A3C1C000, v7, OS_LOG_TYPE_ERROR, "Error determining if current asset uuid %@ contains contextual video thumbnails – %@", buf, 0x16u);
    }

    v9 = 0;
  }

  else
  {
    objc_opt_class();
    v9 = 0;
    if ((objc_opt_isKindOfClass() & 1) == 0 && v6)
    {
      v9 = [v6 count] != 0;
    }
  }

  return v9;
}

- (id)px_searchDebugString
{
  v2 = [a1 px_searchDebugValues];
  v3 = [a1 px_debugStringForValueList:v2];

  return v3;
}

- (id)px_coreDataBrowserURL
{
  v15[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E696AF20]);
  [v2 setScheme:@"coredatabrowser"];
  [v2 setPath:@"/entity/Asset/"];
  v3 = [objc_alloc(MEMORY[0x1E696AF60]) initWithName:@"key" value:@"uuid"];
  v4 = objc_alloc(MEMORY[0x1E696AF60]);
  v5 = [a1 uuid];
  v6 = [v4 initWithName:@"value" value:v5];
  v15[1] = v6;
  v7 = objc_alloc(MEMORY[0x1E696AF60]);
  v8 = [a1 photoLibrary];
  v9 = [v8 photoLibraryURL];
  v10 = [v9 absoluteString];
  v11 = [v7 initWithName:@"storeURL" value:v10];
  v15[2] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:3];
  [v2 setQueryItems:v12];

  v13 = [v2 URL];

  return v13;
}

- (id)px_navigationURLWithContainerCollection:()PhotosUICore
{
  v4 = a3;
  v5 = [MEMORY[0x1E696AF20] componentsWithString:@"photos://asset"];
  v6 = [MEMORY[0x1E695DF70] arrayWithCapacity:2];
  v7 = [a1 px_navigationURLQueryItemWithPrefix:0];
  [v6 addObject:v7];

  if (v4)
  {
    v8 = [v4 px_navigationURLQueryItemWithPrefix:@"album"];
    [v6 addObject:v8];
  }

  [v5 setQueryItems:v6];
  v9 = [v5 URL];

  return v9;
}

- (id)px_navigationURLQueryItemWithPrefix:()PhotosUICore
{
  v4 = &stru_1F1741150;
  if (a3)
  {
    v4 = a3;
  }

  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", v4, @"uuid"];
  v6 = MEMORY[0x1E696AF60];
  v7 = [a1 uuid];
  v8 = [v6 queryItemWithName:v5 value:v7];

  return v8;
}

- (id)_userFeedbackScoreInfo
{
  v33 = *MEMORY[0x1E69E9840];
  v2 = [a1 photoLibrary];
  v3 = [v2 librarySpecificFetchOptions];

  v4 = [MEMORY[0x1E6978830] px_defaultDetectionTypes];
  [v3 setIncludedDetectionTypes:v4];

  v5 = [MEMORY[0x1E6978980] fetchPersonsInAsset:a1 options:v3];
  v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v5, "count")}];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v25 objects:v32 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v26;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v26 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v25 + 1) + 8 * i) uuid];
        [v6 addObject:v12];
      }

      v9 = [v7 countByEnumeratingWithState:&v25 objects:v32 count:16];
    }

    while (v9);
  }

  v13 = [a1 uuid];
  v30 = v13;
  v31 = v6;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v31 forKeys:&v30 count:1];

  v15 = objc_alloc(MEMORY[0x1E6978B08]);
  v16 = [a1 photoLibrary];
  v17 = [v15 initWithPhotoLibrary:v16];

  v18 = [a1 uuid];
  v29 = v18;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v29 count:1];
  [v17 scoreForAssetUUIDs:v19 personsUUIDsByAssetUUIDs:v14];
  v21 = v20;

  v22 = [MEMORY[0x1E6978B08] descriptionForScore:v21];
  v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ (%.2f)", v22, *&v21, v25];

  return v23;
}

- (id)_imageProcessingFlags
{
  v1 = [a1 originalImageProperties];
  v2 = [MEMORY[0x1E695DF90] dictionary];
  [v2 setObject:&unk_1F190B8F0 forKeyedSubscript:@"ProcessingHighlight"];
  v16 = 0;
  [MEMORY[0x1E69C06B8] readMetadataType:7 fromCGImageProperties:v1 value:&v16 error:0];
  v3 = v16;
  v4 = [v3 integerValue];
  v5 = v4;
  if ((v4 & 0x1000) == 0)
  {
    if ((v4 & 0x2000) != 0)
    {
      v6 = @"DF Final Image";
    }

    else
    {
      v6 = @"Non-Deferred";
    }

    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  [v2 setObject:&unk_1F190B908 forKeyedSubscript:@"ProcessingHighlight"];
  v6 = @"Proxy";
  if ((v5 & 0x8000) != 0)
  {
LABEL_8:
    [v2 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"SemDev"];
  }

LABEL_9:
  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ (%d)", v6, v5];
  [v2 setObject:v7 forKeyedSubscript:@"Processing"];

  v15 = 0;
  v8 = [MEMORY[0x1E69C06B8] readMetadataType:15 fromCGImageProperties:v1 value:&v15 error:0];
  v9 = v15;
  v10 = v9;
  if (v8 && (v11 = [v9 intValue] - 1, v11 <= 0xB))
  {
    v12 = off_1E7735548[v11];
  }

  else
  {
    v12 = @"Unknown";
  }

  v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ (%@)", v12, v10];
  [v2 setObject:v13 forKeyedSubscript:@"Type"];

  return v2;
}

- (uint64_t)px_shotWithNightMode
{
  v1 = [a1 originalImageProperties];
  v6 = 0;
  v2 = [MEMORY[0x1E69C06B8] readMetadataType:15 fromCGImageProperties:v1 value:&v6 error:0];
  v3 = v6;
  v4 = v3;
  if (v2)
  {
    v2 = [v3 intValue] == 11;
  }

  return v2;
}

- (__CFString)_videoDeferredProcessingNeededString:()PhotosUICore
{
  v3 = &stru_1F1741150;
  if (a3 == 1)
  {
    v3 = @"Frame Drop Recovery";
  }

  if (a3)
  {
    return v3;
  }

  else
  {
    return @"None";
  }
}

- (__CFString)_deferredProcessingStringWithEnum:()PhotosUICore
{
  if ((a3 - 1) > 9)
  {
    return @"None";
  }

  else
  {
    return off_1E77354F8[(a3 - 1)];
  }
}

- (id)_junkClassificationStringWithClassifications:()PhotosUICore
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v23 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v26 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v24 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v22 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v21 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v19 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (!v5)
  {
    v25 = 0;
    v7 = 0;
    v27 = 0;
    goto LABEL_31;
  }

  v6 = v5;
  v25 = 0;
  v7 = 0;
  v27 = 0;
  v8 = *v29;
  do
  {
    for (i = 0; i != v6; ++i)
    {
      if (*v29 != v8)
      {
        objc_enumerationMutation(v4);
      }

      v10 = *(*(&v28 + 1) + 8 * i);
      if ([v10 hasPrefix:{@"Junk - ", v19}])
      {
        v11 = [v10 substringFromIndex:7];
        if ([v11 hasPrefix:@"Negative"] && (objc_msgSend(v11, "hasPrefix:", @"Negative Internal") & 1) == 0)
        {
          v15 = v10;

          v27 = v15;
        }

        else if ([v11 hasPrefix:@"Non Memorable"])
        {
          v12 = v10;

          v7 = v12;
        }

        else if ([v11 hasPrefix:@"Poor Quality"])
        {
          v14 = v10;

          v25 = v14;
        }

        else
        {
          [v23 addObject:v10];
        }
      }

      else
      {
        if ([v10 hasPrefix:@"NSFW - "])
        {
          v13 = v26;
        }

        else if ([v10 hasPrefix:@"TE - "])
        {
          v13 = v24;
        }

        else if ([v10 hasPrefix:@"PL - "])
        {
          v13 = v22;
        }

        else if ([v10 hasPrefix:@"IVS NSFW - "])
        {
          v13 = v21;
        }

        else
        {
          if (![v10 hasPrefix:@"Meme - "])
          {
            continue;
          }

          v13 = v19;
        }

        [v13 addObject:v10];
      }
    }

    v6 = [v4 countByEnumeratingWithState:&v28 objects:v32 count:16];
  }

  while (v6);
LABEL_31:

  [v23 sortUsingSelector:sel_compare_];
  [v23 insertObject:&stru_1F1741150 atIndex:0];
  if (v25)
  {
    [v23 insertObject:v25 atIndex:1];
  }

  if (v7)
  {
    [v23 insertObject:v7 atIndex:1];
  }

  if (v27)
  {
    [v23 insertObject:v27 atIndex:1];
  }

  [v26 sortUsingSelector:{sel_compare_, v19}];
  [v24 sortUsingSelector:sel_compare_];
  [v22 sortUsingSelector:sel_compare_];
  [v21 sortUsingSelector:sel_compare_];
  [v20 sortUsingSelector:sel_compare_];
  v16 = [v23 mutableCopy];
  [v16 addObjectsFromArray:v26];
  [v16 addObjectsFromArray:v24];
  [v16 addObjectsFromArray:v22];
  [v16 addObjectsFromArray:v21];
  [v16 addObjectsFromArray:v20];
  v17 = [v16 componentsJoinedByString:@"\n    "];

  return v17;
}

- (id)_sdClassificationStringWithClassifications:()PhotosUICore
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = v3;
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        v12 = [v11 hasPrefix:{@"SD - ", v18}];
        v13 = v4;
        if ((v12 & 1) == 0)
        {
          v14 = [v11 hasPrefix:@"City Nature - "];
          v13 = v5;
          if (!v14)
          {
            continue;
          }
        }

        [v13 addObject:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }

  [v4 sortUsingSelector:sel_compare_];
  [v5 sortUsingSelector:sel_compare_];
  v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v15 addObject:&stru_1F1741150];
  [v15 addObjectsFromArray:v4];
  [v15 addObjectsFromArray:v5];
  v16 = [v15 componentsJoinedByString:@"\n    "];

  return v16;
}

- (id)_sceneClassificationStringWithClassifications:()PhotosUICore
{
  v40 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v24 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = v3;
  v4 = [obj countByEnumeratingWithState:&v34 objects:v39 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v35;
    v23 = *v35;
    do
    {
      v7 = 0;
      v25 = v5;
      do
      {
        if (*v35 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v34 + 1) + 8 * v7);
        if ([v8 rangeOfString:@" - "] == 0x7FFFFFFFFFFFFFFFLL)
        {
          v27 = v7;
          v9 = v24;
          v10 = [v8 componentsSeparatedByString:@"->"];
          v30 = 0u;
          v31 = 0u;
          v32 = 0u;
          v33 = 0u;
          v11 = [v10 countByEnumeratingWithState:&v30 objects:v38 count:16];
          if (v11)
          {
            v12 = v11;
            v13 = *v31;
            do
            {
              v14 = 0;
              v15 = v9;
              do
              {
                if (*v31 != v13)
                {
                  objc_enumerationMutation(v10);
                }

                v16 = *(*(&v30 + 1) + 8 * v14);
                v29 = 0.0;
                v17 = v16;
                if ([v16 hasSuffix:@""]))
                {
                  v18 = [objc_alloc(MEMORY[0x1E696AE88]) initWithString:v16];
                  v28 = v16;
                  objc_msgSend(v18, "scanUpToString:intoString:", @" ("), &v28;
                  v17 = v28;

                  objc_msgSend(v18, "scanString:intoString:", @"("), 0;
                  [v18 scanDouble:&v29];
                }

                v19 = [v15 objectForKeyedSubscript:v17];
                if (!v19)
                {
                  v19 = objc_alloc_init(MEMORY[0x1E695DF90]);
                  [v15 setObject:v19 forKeyedSubscript:v17];
                }

                v9 = v19;

                if (v17 != v16)
                {
                  [v9 setObject:v16 forKeyedSubscript:@"_name"];
                  v20 = [MEMORY[0x1E696AD98] numberWithDouble:v29];
                  [v9 setObject:v20 forKeyedSubscript:@"_confidence"];
                }

                ++v14;
                v15 = v9;
              }

              while (v12 != v14);
              v12 = [v10 countByEnumeratingWithState:&v30 objects:v38 count:16];
            }

            while (v12);
          }

          v6 = v23;
          v5 = v25;
          v7 = v27;
        }

        ++v7;
      }

      while (v7 != v5);
      v5 = [obj countByEnumeratingWithState:&v34 objects:v39 count:16];
    }

    while (v5);
  }

  v21 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:@"\n"];
  ProcessLevel(v21, v24, 1);

  return v21;
}

- (__CFString)_qrCodeStrings
{
  v38[2] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695DFD8];
  v38[0] = objc_opt_class();
  v38[1] = objc_opt_class();
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:2];
  v4 = [v2 setWithArray:v3];

  if (v4)
  {
    v5 = [a1 characterRecognitionProperties];
    v6 = [v5 machineReadableCodeData];

    if (v6)
    {
      v25 = a1;
      v32 = 0;
      v27 = v6;
      v7 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClasses:v4 fromData:v6 error:&v32];
      v26 = v32;
      v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      v9 = v7;
      v10 = [v9 countByEnumeratingWithState:&v28 objects:v37 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v29;
        v13 = *MEMORY[0x1E69848C0];
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v29 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v15 = *(*(&v28 + 1) + 8 * i);
            v16 = [v15 symbology];
            v17 = [v16 isEqualToString:v13];

            if (v17)
            {
              v18 = [v15 payloadStringValue];
              [v8 addObject:v18];
            }
          }

          v11 = [v9 countByEnumeratingWithState:&v28 objects:v37 count:16];
        }

        while (v11);
      }

      v19 = [v8 componentsJoinedByString:@" "];
      if (!v19)
      {
        v20 = PLUIGetLog();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          v21 = [v25 uuid];
          *buf = 138543618;
          v34 = v21;
          v35 = 2112;
          v36 = v26;
          _os_log_impl(&dword_1A3C1C000, v20, OS_LOG_TYPE_ERROR, "Failed to unarchive VNDocumentObservation data for asset:%{public}@ with error: %@", buf, 0x16u);
        }

        v19 = [v26 localizedDescription];
      }

      v6 = v27;
    }

    else
    {
      v19 = 0;
    }

    v23 = &stru_1F1741150;
    if (v19)
    {
      v23 = v19;
    }

    v22 = v23;
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

- (__CFString)_ocrStrings
{
  v18 = *MEMORY[0x1E69E9840];
  if (_ocrStrings_onceToken != -1)
  {
    dispatch_once(&_ocrStrings_onceToken, &__block_literal_global_1149);
  }

  if (_ocrStrings_observationClass)
  {
    v2 = [a1 characterRecognitionProperties];
    v3 = [v2 characterRecognitionData];

    if (v3)
    {
      v13 = 0;
      v4 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:_ocrStrings_observationClass fromData:v3 error:&v13];
      v5 = v13;
      if (v4)
      {
        v6 = [v4 getTranscript];
      }

      else
      {
        v9 = PLUIGetLog();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          v10 = [a1 uuid];
          *buf = 138543618;
          v15 = v10;
          v16 = 2112;
          v17 = v5;
          _os_log_impl(&dword_1A3C1C000, v9, OS_LOG_TYPE_ERROR, "Failed to unarchive VNDocumentObservation data for asset:%{public}@ with error: %@", buf, 0x16u);
        }

        v6 = [v5 localizedDescription];
      }

      v8 = v6;
    }

    else
    {
      v8 = 0;
    }

    v11 = &stru_1F1741150;
    if (v8)
    {
      v11 = v8;
    }

    v7 = v11;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)stringMinutesTimeRangeFromTimeRange:()PhotosUICore
{
  *&time.start.value = *a3;
  time.start.epoch = *(a3 + 16);
  Seconds = CMTimeGetSeconds(&time.start);
  v5 = *(a3 + 16);
  *&time.start.value = *a3;
  *&time.start.epoch = v5;
  *&time.duration.timescale = *(a3 + 32);
  CMTimeRangeGetEnd(&v10, &time);
  v6 = CMTimeGetSeconds(&v10);
  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%02ld:%02ld-%02ld:%02ld", Seconds / 60, Seconds % 60, v6 / 60, v6 % 60];

  return v7;
}

- (id)px_curationDebugValues
{
  if (px_curationDebugValues_onceToken != -1)
  {
    dispatch_once(&px_curationDebugValues_onceToken, &__block_literal_global_432_75664);
  }

  v2 = [a1 photoLibrary];
  v3 = [a1 localIdentifier];
  v296[0] = 0;
  v4 = [v2 curationDebugInformationForAssetLocalIdentifier:v3 error:v296];
  v5 = v296[0];

  v6 = [v4 objectForKeyedSubscript:@"isUtility"];
  v290 = [v6 BOOLValue];

  v7 = [v4 objectForKeyedSubscript:@"isUtilityForMemories"];
  v288 = [v7 BOOLValue];

  v8 = [v4 objectForKeyedSubscript:@"isTragicFailure"];
  v286 = [v8 BOOLValue];

  v9 = [v4 objectForKeyedSubscript:@"avoidForKeyAsset"];
  v282 = [v9 BOOLValue];

  v293 = [v4 objectForKeyedSubscript:@"avoidForKeyAssetReason"];
  v10 = [v4 objectForKeyedSubscript:@"avoidForMemoryKeyAsset"];
  v284 = [v10 BOOLValue];

  v11 = [v4 objectForKeyedSubscript:@"isSafeForWidgetDisplay"];
  v280 = [v11 BOOLValue];

  v12 = [v4 objectForKeyedSubscript:@"isBlurryMedia"];
  v13 = [v12 BOOLValue];

  v14 = [a1 mediaAnalysisProperties];
  [v14 blurrinessScore];
  v16 = v15;
  v17 = [v4 objectForKeyedSubscript:@"sharpnessThreshold"];
  [v17 doubleValue];
  v19 = v18;

  v20 = @"NO";
  if (v13)
  {
    v20 = @"YES";
  }

  v21 = @">";
  if (v13)
  {
    v21 = @"<";
    v22 = 3;
  }

  else
  {
    v22 = 0;
  }

  v292 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ (%.2f %@ %.2f)", v20, *&v16, v21, v19];
  v23 = objc_opt_new();
  v24 = [a1 uuid];
  [v23 addValueWithLabel:v24];

  [v23 addValueWithLabel:@"General"];
  [a1 mediaType];
  v25 = PHAssetMediaTypeDebugDescription();
  v26 = [v25 capitalizedString];
  [v23 addValueWithLabel:@"Type" stringValue:v26];

  [a1 mediaSubtypes];
  v27 = PHAssetMediaSubtypesDebugDescription();
  v28 = [v27 capitalizedString];

  v29 = [(__CFString *)v28 length];
  v30 = @"None";
  if (v29)
  {
    v30 = v28;
  }

  v31 = v30;

  [v23 addValueWithLabel:@"Subtype" stringValue:v31];
  [v23 addValueWithLabel:@"Creation Date" stringValue:&stru_1F1741150];
  v32 = px_curationDebugValues_dateFormatter;
  v33 = [a1 creationDate];
  v34 = [v32 stringFromDate:v33];
  [v23 addValueWithLabel:@"    UTC" stringValue:v34];

  v35 = px_curationDebugValues_dateFormatter;
  v36 = [a1 localCreationDate];
  v37 = [v35 stringFromDate:v36];

  [v23 addValueWithLabel:@"    Local" stringValue:v37];
  v38 = 0x1E696A000uLL;
  v39 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%dx%d", objc_msgSend(a1, "pixelWidth"), objc_msgSend(a1, "pixelHeight")];
  [v23 addValueWithLabel:@"Resolution" stringValue:v39];

  [v23 addValueWithLabel:@"Favorite" BOOLValue:objc_msgSend(a1 positiveValue:"isFavorite") positiveHighlighted:1 negativeHighlighted:{1, 0}];
  [v23 addValueWithLabel:@"Has Adjustments" BOOLValue:{objc_msgSend(a1, "hasAdjustments")}];
  v40 = [a1 _deferredProcessingStringWithEnum:{objc_msgSend(a1, "deferredProcessingNeeded")}];
  [v23 addValueWithLabel:@"Deferred Processing Needed" stringValue:v40];

  if (![a1 deferredProcessingNeeded] && objc_msgSend(a1, "isPhoto"))
  {
    v41 = [a1 _imageProcessingFlags];
    v42 = v41;
    if (v41)
    {
      v43 = [v41 objectForKeyedSubscript:@"Processing"];
      v44 = [v42 objectForKeyedSubscript:@"ProcessingHighlight"];
      [v23 addValueWithLabel:@"Final Image" stringValue:v43 highlightStyle:{objc_msgSend(v44, "unsignedIntegerValue")}];

      v38 = 0x1E696A000;
      v45 = [v42 objectForKeyedSubscript:@"Type"];
      [v23 addValueWithLabel:@"Capture Type" stringValue:v45];

      v46 = [v42 objectForKeyedSubscript:@"SemDev"];
      [v23 addValueWithLabel:@"Semantic Enhance" BOOLValue:objc_msgSend(v46 positiveValue:"BOOLValue") positiveHighlighted:1 negativeHighlighted:{1, 0}];
    }
  }

  if ([a1 isPhotoIris])
  {
    v47 = [a1 _videoDeferredProcessingNeededString:{objc_msgSend(a1, "videoDeferredProcessingNeeded")}];
    [v23 addValueWithLabel:@"Video Deferred Processing Needed" stringValue:v47];

    v48 = objc_alloc(MEMORY[0x1E69C0918]);
    v49 = [a1 fileURLForVideoComplementFile];
    v50 = [v49 path];
    v51 = [a1 mainFileURL];
    [v51 path];
    v53 = v52 = v22;
    v54 = [v48 initWithPathToVideo:v50 pathToImage:v53];

    v22 = v52;
    v38 = 0x1E696A000uLL;

    [v23 addValueWithLabel:@"   Frames Interpolated" integerValue:{objc_msgSend(v54, "numberOfFramesRecoveredWithError:", 0)}];
  }

  [v23 addValueWithLabel:@"Spatial" BOOLValue:{objc_msgSend(a1, "isSpatialMedia")}];
  [v23 addValueWithLabel:@"Included in Cloud Feeds" BOOLValue:{objc_msgSend(a1, "isIncludedInCloudFeeds")}];
  [v23 addValueWithLabel:@"Utility" BOOLValue:v290 positiveValue:0 positiveHighlighted:0 negativeHighlighted:1];
  [v23 addValueWithLabel:@"Utility for Memories" BOOLValue:v288 positiveValue:0 positiveHighlighted:0 negativeHighlighted:1];
  [v23 addValueWithLabel:@"Is Tragic Failure" BOOLValue:v286 positiveValue:0 positiveHighlighted:0 negativeHighlighted:1];
  [v23 addValueWithLabel:@"Avoid For Key Asset" BOOLValue:v282 positiveValue:0 positiveHighlighted:0 negativeHighlighted:1];
  if (v293)
  {
    [v23 addValueWithLabel:@"\tReason" stringValue:v293 highlightStyle:3];
  }

  [v23 addValueWithLabel:@"Avoid For Memory Key Asset" BOOLValue:v284 positiveValue:0 positiveHighlighted:0 negativeHighlighted:1];
  [v23 addValueWithLabel:@"Safe For Widget Display" BOOLValue:v280 positiveValue:1 positiveHighlighted:0 negativeHighlighted:1];
  [a1 curationScore];
  [v23 addValueWithLabel:@"Persisted Curation Score" doubleValue:?];
  v55 = [v4 objectForKeyedSubscript:@"curationScoreWithContext"];
  [v55 doubleValue];
  [v23 addValueWithLabel:@"    live with context" doubleValue:?];

  v56 = [v4 objectForKeyedSubscript:@"curationScoreWithoutContext"];
  [v56 doubleValue];
  [v23 addValueWithLabel:@"    live without context" doubleValue:?];

  v57 = [v4 objectForKeyedSubscript:@"curationScoreForMemories"];
  [v57 doubleValue];
  [v23 addValueWithLabel:@"    for memories" doubleValue:?];

  [a1 highlightVisibilityScore];
  [v23 addValueWithLabel:@"Persisted Highlight Visibility Score" doubleValue:?];
  [a1 overallAestheticScore];
  [v23 addValueWithLabel:@"Aesthetic Score" doubleValue:v58];
  v59 = [v4 objectForKeyedSubscript:@"libraryTopTierAestheticScore"];
  [v59 doubleValue];
  [v23 addValueWithLabel:@"    Library Top-tier score" doubleValue:?];

  v60 = MEMORY[0x1E69786B8];
  v61 = *MEMORY[0x1E69C15E0];
  [a1 locationCoordinate];
  v63 = v62;
  [a1 locationCoordinate];
  v64 = [v60 poiGeoHashWithGeoHashSize:v61 latitude:v63 longitude:?];
  v65 = *(v38 + 3776);
  v66 = [a1 iconicScoreProperties];
  [v66 iconicScore];
  v287 = v64;
  v68 = [v65 stringWithFormat:@"%f (%@)", v67, v64];
  [v23 addValueWithLabel:@"Iconic Score" stringValue:v68];

  [v23 addValueWithLabel:@"Blurry" stringValue:v292 highlightStyle:v22];
  v69 = [v4 objectForKeyedSubscript:@"squareCropScore"];
  [v69 doubleValue];
  v71 = v70;

  [v23 addValueWithLabel:@"Square Crop Score" doubleValue:v71];
  v72 = [v4 objectForKeyedSubscript:@"3x4CropScore"];
  [v72 doubleValue];
  v74 = v73;

  [v23 addValueWithLabel:@"3x4 Crop Score" doubleValue:v74];
  v75 = [v4 objectForKeyedSubscript:@"3x2CropScore"];
  [v75 doubleValue];
  v77 = v76;

  [v23 addValueWithLabel:@"3x2 Crop Score" doubleValue:v77];
  v78 = [a1 curationProperties];
  if ([a1 px_isSyndicatedAsset])
  {
    [v23 addValueWithLabel:@"Guest Asset"];
    [v14 syndicationProcessingValue];
    v79 = PHAssetMediaAnalysisSyndicationProcessingValueDescription();
    [v23 addValueWithLabel:@"Processing Value" stringValue:v79];

    [v14 syndicationProcessingVersion];
    v80 = PHAssetSyndicationProcessingVersionDescription();
    [v23 addValueWithLabel:@"Processing Version" stringValue:v80];

    v81 = [v78 syndicationIdentifier];
    [v23 addValueWithLabel:@"Syndication Identifier" stringValue:v81];
  }

  v82 = [v78 importedByBundleIdentifier];
  if (v82)
  {
    [v23 addValueWithLabel:@"Imported Asset"];
    [v23 addValueWithLabel:@"Relevant" BOOLValue:{(objc_msgSend(v14, "syndicationProcessingValue") & 0x3CF1) != 0}];
    [v14 syndicationProcessingValue];
    v83 = PHAssetMediaAnalysisSyndicationProcessingValueDescription();
    [v23 addValueWithLabel:@"Processing Value" stringValue:v83];

    [v14 syndicationProcessingVersion];
    v84 = PNExternalAssetRelevanceProcessingVersionDescription();
    [v23 addValueWithLabel:@"Processing Version" stringValue:v84];

    v85 = [v78 importedByDisplayName];
    v86 = v85;
    v87 = @"nil";
    if (v85)
    {
      v87 = v85;
    }

    v88 = v87;

    [v23 addValueWithLabel:@"Imported Display Name" stringValue:v88];
    [v23 addValueWithLabel:@"Imported Bundle Identifier" stringValue:v82];
  }

  v289 = v82;
  v291 = v78;
  [v23 addValueWithLabel:@"User Activity"];
  v89 = [a1 assetUserActivityProperties];
  [v23 addValueWithLabel:@"View Count" integerValue:{objc_msgSend(v89, "viewCount")}];
  [v23 addValueWithLabel:@"Play Count" integerValue:{objc_msgSend(v89, "playCount")}];
  v285 = v89;
  [v23 addValueWithLabel:@"Share Count" integerValue:{objc_msgSend(v89, "shareCount")}];
  [v23 addValueWithLabel:@"People"];
  v90 = [v4 objectForKeyedSubscript:@"faceAnalysisVersions"];
  v91 = [v90 objectForKeyedSubscript:@"current"];
  v92 = [v91 integerValue];

  v283 = v90;
  v93 = [v90 objectForKeyedSubscript:@"latest"];
  v94 = [v93 integerValue];

  v281 = [*(v38 + 3776) stringWithFormat:@"%lu (%lu)", v92, v94];
  [v23 addValueWithLabel:@"Face Analysis Version" stringValue:? highlightStyle:?];
  v95 = [v4 objectForKeyedSubscript:@"peopleNames"];
  v279 = v95;
  if ([v95 count])
  {
    v96 = *(v38 + 3776);
    v97 = [v95 componentsJoinedByString:@"\n    "];
    v98 = [v96 stringWithFormat:@"\n    %@", v97];
  }

  else
  {
    v98 = @"-";
  }

  v99 = v38;
  v278 = v98;
  [v23 addValueWithLabel:@"People" stringValue:v98];
  [v23 addValueWithLabel:@"Scenes"];
  v100 = [v4 objectForKeyedSubscript:@"sceneAnalysisVersions"];
  v101 = [v4 objectForKeyedSubscript:@"sceneTaxonomyDigest"];
  v102 = [v100 objectForKeyedSubscript:@"current"];
  v103 = [v102 integerValue];

  v277 = v100;
  v104 = [v100 objectForKeyedSubscript:@"latest"];
  v105 = [v104 integerValue];

  v106 = 1;
  if (v103 != v105)
  {
    v106 = 2;
  }

  if (v103)
  {
    v107 = v106;
  }

  else
  {
    v107 = 3;
  }

  v108 = [*(v99 + 3776) stringWithFormat:@"%lu (%lu)", v103, v105];
  [v23 addValueWithLabel:@"Scene Analysis Version" stringValue:v108 highlightStyle:v107];
  if ([(__CFString *)v101 length]>= 8)
  {
    v109 = [(__CFString *)v101 substringToIndex:8];

    v101 = v109;
  }

  v110 = [(__CFString *)v101 length];
  v111 = @"unavailable";
  if (v110)
  {
    v111 = v101;
  }

  v112 = v111;

  [v23 addValueWithLabel:@"Taxonomy Digest Prefix" stringValue:v112];
  [v23 addValueWithLabel:@"Sceneprint distances" stringValue:&stru_1F1741150];
  v113 = [v4 objectForKeyedSubscript:@"sceneprintDistanceToPreviousAsset"];
  v114 = v113;
  if (v113)
  {
    v115 = v113;
  }

  else
  {
    v115 = @"-";
  }

  [v23 addValueWithLabel:@"    to previous" stringValue:v115];

  v116 = [v4 objectForKeyedSubscript:@"sceneprintDistanceToNextAsset"];
  v117 = v116;
  if (v116)
  {
    v118 = v116;
  }

  else
  {
    v118 = @"-";
  }

  [v23 addValueWithLabel:@"    to next:" stringValue:v118];

  v119 = [v4 objectForKeyedSubscript:@"classification"];
  v275 = [a1 _sceneClassificationStringWithClassifications:v119];
  [v23 addValueWithLabel:@"Scene Classifications" stringValue:?];
  v274 = [a1 _junkClassificationStringWithClassifications:v119];
  [v23 addValueWithLabel:@"Junk Classifications" stringValue:?];
  v276 = v119;
  v273 = [a1 _sdClassificationStringWithClassifications:v119];
  [v23 addValueWithLabel:@"\nSD City Nature Classifications" stringValue:?];
  [v23 addValueWithLabel:@"Media Analysis"];
  v120 = [v14 mediaAnalysisTimeStamp];
  [v23 addValueWithLabel:@"ImageVersion" integerValue:{objc_msgSend(v14, "mediaAnalysisImageVersion")}];
  [v23 addValueWithLabel:@"Version" integerValue:{objc_msgSend(v14, "mediaAnalysisVersion")}];
  v272 = v120;
  if (v120)
  {
    v121 = [MEMORY[0x1E696AB78] localizedStringFromDate:v120 dateStyle:1 timeStyle:1];
    [v23 addValueWithLabel:@"Timestamp" stringValue:v121];
  }

  else
  {
    [v23 addValueWithLabel:@"Timestamp" stringValue:@"(null)" highlightStyle:2];
  }

  [v14 autoplaySuggestionScore];
  [v23 addValueWithLabel:@"Autoplay Suggestion" doubleValue:v122];
  [v14 videoStickerSuggestionScore];
  [v23 addValueWithLabel:@"Live Sticker Suggestion" doubleValue:v123];
  if (v14)
  {
    [v14 bestKeyFrameTime];
  }

  else
  {
    memset(time, 0, 24);
  }

  [v23 addValueWithLabel:@"Best Key Frame Time" doubleValue:CMTimeGetSeconds(time)];
  if (v14)
  {
    [v14 bestVideoTimeRange];
  }

  else
  {
    v295 = 0u;
    memset(time, 0, sizeof(time));
  }

  v124 = [a1 stringMinutesTimeRangeFromTimeRange:time];
  [v23 addValueWithLabel:@"Best Video Time Range" stringValue:v124];

  if (v14)
  {
    [v14 animatedStickerTimeRange];
  }

  else
  {
    v295 = 0u;
    memset(time, 0, sizeof(time));
  }

  v125 = [a1 stringMinutesTimeRangeFromTimeRange:time];
  [v23 addValueWithLabel:@"Best Animated Sticker Time Range" stringValue:v125];

  [v14 bestPlaybackRect];
  v130 = [MEMORY[0x1E696AEC0] stringWithFormat:@"{{%.*f, %.*f}, {%.*f, %.*f}}", 3, v126, 3, v127, 3, v128, 3, v129];
  [v23 addValueWithLabel:@"Best Playback Rect" stringValue:v130];

  [v14 videoScore];
  [v23 addValueWithLabel:@"Video Score" doubleValue:v131];
  [v14 audioScore];
  [v23 addValueWithLabel:@"Audio Score" doubleValue:v132];
  [v14 activityScore];
  [v23 addValueWithLabel:@"Activity Score" doubleValue:v133];
  [v23 addValueWithLabel:@"Video Face Count" doubleValue:{objc_msgSend(v14, "faceCount")}];
  [v14 audioClassification];
  v271 = PHAssetMediaAnalysisStringsWithMultipleAudioClassifications();
  v134 = [v271 componentsJoinedByString:@" | "];
  [v23 addValueWithLabel:@"Audio Classification" stringValue:v134];

  [v14 blurrinessScore];
  [v23 addValueWithLabel:@"Sharpness" doubleValue:v135];
  [v14 exposureScore];
  [v23 addValueWithLabel:@"Exposure" doubleValue:v136];
  [v14 wallpaperScore];
  [v23 addValueWithLabel:@"Wallpaper" doubleValue:v137];
  [v14 settlingEffectScore];
  [v23 addValueWithLabel:@"SettlingEffectScore" doubleValue:v138];
  [v23 addValueWithLabel:@"ProbableRotationDirection" doubleValue:{objc_msgSend(v14, "probableRotationDirection")}];
  [v14 probableRotationDirectionConfidence];
  [v23 addValueWithLabel:@"\tConfidence" doubleValue:v139];
  [v23 addValueWithLabel:@"Aesthetic Scores"];
  v140 = [a1 aestheticProperties];
  [v140 wellFramedSubjectScore];
  [v23 addValueWithLabel:@"Well framed subject" highlightedScore:v141];
  [v140 wellChosenSubjectScore];
  [v23 addValueWithLabel:@"Well chosen background" highlightedScore:v142];
  [v140 tastefullyBlurredScore];
  [v23 addValueWithLabel:@"Tastefully blurred" highlightedScore:v143];
  [v140 sharplyFocusedSubjectScore];
  [v23 addValueWithLabel:@"Sharply focused subject" highlightedScore:v144];
  [v140 wellTimedShotScore];
  [v23 addValueWithLabel:@"Well timed shot" highlightedScore:v145];
  [v140 pleasantLightingScore];
  [v23 addValueWithLabel:@"Pleasant lighting" highlightedScore:v146];
  [v140 pleasantReflectionsScore];
  [v23 addValueWithLabel:@"Pleasant reflection" highlightedScore:v147];
  [v140 harmoniousColorScore];
  [v23 addValueWithLabel:@"Harmonious color" highlightedScore:v148];
  [v140 livelyColorScore];
  [v23 addValueWithLabel:@"Lively color" highlightedScore:v149];
  [v140 pleasantSymmetryScore];
  [v23 addValueWithLabel:@"Pleasant symmetry" highlightedScore:v150];
  [v140 pleasantPatternScore];
  [v23 addValueWithLabel:@"Pleasant pattern" highlightedScore:v151];
  [v140 immersivenessScore];
  [v23 addValueWithLabel:@"Immersiveness" highlightedScore:v152];
  [v140 pleasantPerspectiveScore];
  [v23 addValueWithLabel:@"Pleasant perspective" highlightedScore:v153];
  [v140 pleasantPostProcessingScore];
  [v23 addValueWithLabel:@"Pleasant postprocessing" highlightedScore:v154];
  [v140 noiseScore];
  [v23 addValueWithLabel:@"Noise" highlightedScore:v155];
  [v140 failureScore];
  [v23 addValueWithLabel:@"Failure" highlightedScore:v156];
  [v140 pleasantCompositionScore];
  [v23 addValueWithLabel:@"Pleasant composition" highlightedScore:v157];
  [v140 interestingSubjectScore];
  [v23 addValueWithLabel:@"Interesting subject" highlightedScore:v158];
  [v140 intrusiveObjectPresenceScore];
  [v23 addValueWithLabel:@"Intrusive object presence" highlightedScore:v159];
  [v140 pleasantCameraTiltScore];
  [v23 addValueWithLabel:@"Pleasant camera tilt" highlightedScore:v160];
  [v140 lowLight];
  [v23 addValueWithLabel:@"Low light" highlightedScore:v161];
  [v23 addValueWithLabel:@"Miscellaneous"];
  [a1 preferredCropRect];
  v166 = [MEMORY[0x1E696AEC0] stringWithFormat:@"{{%.*f, %.*f}, {%.*f, %.*f}}", 3, v162, 3, v163, 3, v164, 3, v165];
  [v23 addValueWithLabel:@"Preferred Crop Rect" stringValue:v166];

  [a1 acceptableCropRect];
  v171 = [MEMORY[0x1E696AEC0] stringWithFormat:@"{{%.*f, %.*f}, {%.*f, %.*f}}", 3, v167, 3, v168, 3, v169, 3, v170];
  [v23 addValueWithLabel:@"Acceptable Crop Rect" stringValue:v171];

  if ([a1 isPhotoIris])
  {
    v172 = MEMORY[0x1E696AEC0];
    v173 = [a1 variationSuggestionStatesDetails];
    v174 = [v172 stringWithFormat:@"%@", v173];

    if (v174)
    {
      [v23 addValueWithLabel:@"Variation Suggestions" stringValue:v174];
    }
  }

  v175 = [a1 croppingDebugDescription];
  [v23 addValueWithLabel:@"Crop Scores" stringValue:v175];

  v176 = [a1 _userFeedbackScoreInfo];
  [v23 addValueWithLabel:@"User Feedback Score" stringValue:v176];

  [v23 addValueWithLabel:@"OCR"];
  v177 = MEMORY[0x1E696AEC0];
  v178 = [a1 characterRecognitionProperties];
  v179 = [v177 stringWithFormat:@"%ld", objc_msgSend(v178, "algorithmVersion")];
  [v23 addValueWithLabel:@"algorithmVersion" stringValue:v179];

  v180 = [a1 characterRecognitionProperties];
  v181 = [v180 adjustmentVersion];

  if (v181)
  {
    v182 = [MEMORY[0x1E696AB78] localizedStringFromDate:v181 dateStyle:1 timeStyle:1];
    [v23 addValueWithLabel:@"adjustmentVersion" stringValue:v182];
  }

  v183 = [a1 _ocrStrings];
  [v23 addValueWithLabel:@"Text" stringValue:v183];

  v184 = [a1 _qrCodeStrings];
  [v23 addValueWithLabel:@"Codes" stringValue:v184];

  [v23 addValueWithLabel:@"Visual Search"];
  v185 = MEMORY[0x1E696AEC0];
  v186 = [a1 visualSearchProperties];
  v187 = [v185 stringWithFormat:@"%ld", objc_msgSend(v186, "algorithmVersion")];
  [v23 addValueWithLabel:@"algorithmVersion" stringValue:v187];

  v188 = [a1 visualSearchProperties];
  v189 = [v188 adjustmentVersion];

  if (v189)
  {
    v190 = [MEMORY[0x1E696AB78] localizedStringFromDate:v189 dateStyle:1 timeStyle:1];
    [v23 addValueWithLabel:@"adjustmentVersion" stringValue:v190];
  }

  v270 = v189;
  v191 = [a1 visualSearchProperties];
  [v191 stickerConfidenceScore];
  [v23 addValueWithLabel:@"Sticker Confidence Score" doubleValue:v192];

  v193 = v291;
  if (v4)
  {
    v269 = v181;
    [v23 addValueWithLabel:@"Wallpaper Suggestions"];
    v194 = [v4 objectForKeyedSubscript:@"WSTopPeoplePortraitReason"];
    v195 = [v4 objectForKeyedSubscript:@"WSTopPeoplePortraitPass"];
    if ([v195 BOOLValue])
    {
      v196 = 1;
    }

    else
    {
      v196 = 2;
    }

    [v23 addValueWithLabel:@"Top People Portrait" stringValue:v194 highlightStyle:v196];

    v197 = [v4 objectForKeyedSubscript:@"WSTopPeopleLandscapeReason"];
    v198 = [v4 objectForKeyedSubscript:@"WSTopPeopleLandscapePass"];
    if ([v198 BOOLValue])
    {
      v199 = 1;
    }

    else
    {
      v199 = 2;
    }

    [v23 addValueWithLabel:@"Top People Landscape" stringValue:v197 highlightStyle:v199];

    v200 = [v4 objectForKeyedSubscript:@"WSTopPetPortraitReason"];
    v201 = [v4 objectForKeyedSubscript:@"WSTopPetPortraitPass"];
    if ([v201 BOOLValue])
    {
      v202 = 1;
    }

    else
    {
      v202 = 2;
    }

    [v23 addValueWithLabel:@"Top Pet Portrait" stringValue:v200 highlightStyle:v202];

    v203 = [v4 objectForKeyedSubscript:@"WSTopPetLandscapeReason"];
    v204 = [v4 objectForKeyedSubscript:@"WSTopPetLandscapePass"];
    if ([v204 BOOLValue])
    {
      v205 = 1;
    }

    else
    {
      v205 = 2;
    }

    [v23 addValueWithLabel:@"Top Pet Landscape" stringValue:v203 highlightStyle:v205];

    v206 = [v4 objectForKeyedSubscript:@"WSTopNaturePortraitReason"];
    v207 = [v4 objectForKeyedSubscript:@"WSTopNaturePortraitPass"];
    if ([v207 BOOLValue])
    {
      v208 = 1;
    }

    else
    {
      v208 = 2;
    }

    [v23 addValueWithLabel:@"Top Nature Portrait" stringValue:v206 highlightStyle:v208];

    v209 = [v4 objectForKeyedSubscript:@"WSTopNatureLandscapeReason"];
    v210 = [v4 objectForKeyedSubscript:@"WSTopNatureLandscapePass"];
    if ([v210 BOOLValue])
    {
      v211 = 1;
    }

    else
    {
      v211 = 2;
    }

    [v23 addValueWithLabel:@"Top Nature Landscape" stringValue:v209 highlightStyle:v211];

    v212 = [v4 objectForKeyedSubscript:@"WSTopCityscapePortraitReason"];
    v213 = [v4 objectForKeyedSubscript:@"WSTopCityscapePortraitPass"];
    if ([v213 BOOLValue])
    {
      v214 = 1;
    }

    else
    {
      v214 = 2;
    }

    [v23 addValueWithLabel:@"Top City Portrait" stringValue:v212 highlightStyle:v214];

    v215 = [v4 objectForKeyedSubscript:@"WSTopCityscapeLandscapeReason"];
    v216 = [v4 objectForKeyedSubscript:@"WSTopCityscapeLandscapePass"];
    if ([v216 BOOLValue])
    {
      v217 = 1;
    }

    else
    {
      v217 = 2;
    }

    [v23 addValueWithLabel:@"Top City Landscape" stringValue:v215 highlightStyle:v217];

    v218 = [v4 objectForKeyedSubscript:@"WSPeoplePortraitReason"];
    v219 = [v4 objectForKeyedSubscript:@"WSPeoplePortraitPass"];
    if ([v219 BOOLValue])
    {
      v220 = 1;
    }

    else
    {
      v220 = 2;
    }

    [v23 addValueWithLabel:@"People Portrait" stringValue:v218 highlightStyle:v220];

    v221 = [v4 objectForKeyedSubscript:@"WSPeopleLandscapeReason"];
    v222 = [v4 objectForKeyedSubscript:@"WSPeopleLandscapePass"];
    if ([v222 BOOLValue])
    {
      v223 = 1;
    }

    else
    {
      v223 = 2;
    }

    [v23 addValueWithLabel:@"People Landscape" stringValue:v221 highlightStyle:v223];

    v224 = [v4 objectForKeyedSubscript:@"WSPetPortraitReason"];
    v225 = [v4 objectForKeyedSubscript:@"WSPetPortraitPass"];
    if ([v225 BOOLValue])
    {
      v226 = 1;
    }

    else
    {
      v226 = 2;
    }

    [v23 addValueWithLabel:@"Pet Portrait" stringValue:v224 highlightStyle:v226];

    v227 = [v4 objectForKeyedSubscript:@"WSPetLandscapeReason"];
    v228 = [v4 objectForKeyedSubscript:@"WSPetLandscapePass"];
    if ([v228 BOOLValue])
    {
      v229 = 1;
    }

    else
    {
      v229 = 2;
    }

    [v23 addValueWithLabel:@"Pet Landscape" stringValue:v227 highlightStyle:v229];

    v230 = [v4 objectForKeyedSubscript:@"WSNaturePortraitReason"];
    v231 = [v4 objectForKeyedSubscript:@"WSNaturePortraitPass"];
    if ([v231 BOOLValue])
    {
      v232 = 1;
    }

    else
    {
      v232 = 2;
    }

    [v23 addValueWithLabel:@"Nature Portrait" stringValue:v230 highlightStyle:v232];

    v233 = [v4 objectForKeyedSubscript:@"WSNatureLandscapeReason"];
    v234 = [v4 objectForKeyedSubscript:@"WSNatureLandscapePass"];
    if ([v234 BOOLValue])
    {
      v235 = 1;
    }

    else
    {
      v235 = 2;
    }

    [v23 addValueWithLabel:@"Nature Landscape" stringValue:v233 highlightStyle:v235];

    v236 = [v4 objectForKeyedSubscript:@"WSCityscapePortraitReason"];
    v237 = [v4 objectForKeyedSubscript:@"WSCityscapePortraitPass"];
    if ([v237 BOOLValue])
    {
      v238 = 1;
    }

    else
    {
      v238 = 2;
    }

    [v23 addValueWithLabel:@"City Portrait" stringValue:v236 highlightStyle:v238];

    v239 = [v4 objectForKeyedSubscript:@"WSCityscapeLandscapeReason"];
    v240 = [v4 objectForKeyedSubscript:@"WSCityscapeLandscapePass"];
    if ([v240 BOOLValue])
    {
      v241 = 1;
    }

    else
    {
      v241 = 2;
    }

    [v23 addValueWithLabel:@"City Landscape" stringValue:v239 highlightStyle:v241];

    v242 = [v4 objectForKeyedSubscript:@"WSSettlingEffectPortraitReason"];
    v243 = [v4 objectForKeyedSubscript:@"WSSettlingEffectPortraitPass"];
    if ([v243 BOOLValue])
    {
      v244 = 1;
    }

    else
    {
      v244 = 2;
    }

    [v23 addValueWithLabel:@"Settling Effect Portrait" stringValue:v242 highlightStyle:v244];

    v245 = [v4 objectForKeyedSubscript:@"WSSettlingEffectLandscapeReason"];
    v246 = [v4 objectForKeyedSubscript:@"WSSettlingEffectLandscapePass"];
    if ([v246 BOOLValue])
    {
      v247 = 1;
    }

    else
    {
      v247 = 2;
    }

    [v23 addValueWithLabel:@"Settling Effect Landscape" stringValue:v245 highlightStyle:v247];

    v248 = [v4 objectForKeyedSubscript:@"WSMePortraitReason"];
    v249 = [v4 objectForKeyedSubscript:@"WSMePortraitPass"];
    if ([v249 BOOLValue])
    {
      v250 = 1;
    }

    else
    {
      v250 = 2;
    }

    [v23 addValueWithLabel:@"Me Portrait" stringValue:v248 highlightStyle:v250];

    v251 = [v4 objectForKeyedSubscript:@"WSMeLandscapeReason"];
    v252 = [v4 objectForKeyedSubscript:@"WSMeLandscapePass"];
    if ([v252 BOOLValue])
    {
      v253 = 1;
    }

    else
    {
      v253 = 2;
    }

    [v23 addValueWithLabel:@"Me Landscape" stringValue:v251 highlightStyle:v253];

    v254 = [v4 objectForKeyedSubscript:@"NSWallpaperPropertiesVersions"];
    v255 = v254;
    if (v254)
    {
      v256 = [v254 objectForKeyedSubscript:@"current"];
      v257 = v108;
      v258 = [v256 integerValue];

      v259 = [v255 objectForKeyedSubscript:@"persisted"];
      v260 = [v259 integerValue];

      v261 = 1;
      if (v260 != v258)
      {
        v261 = 2;
      }

      if (v260)
      {
        v262 = v261;
      }

      else
      {
        v262 = 3;
      }

      v268 = v258;
      v108 = v257;
      v263 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu (%lu)", v260, v268];
      [v23 addValueWithLabel:@"\nWallpaper Properties Version" stringValue:v263 highlightStyle:v262];
      v264 = [v4 objectForKeyedSubscript:@"NSWallpaperPropertiesTimestamp"];
      [v23 addValueWithLabel:@"Time stamp" stringValue:v264];

      v265 = [v4 objectForKeyedSubscript:@"NSWallpaperProperties"];
      v266 = [v265 description];
      [v23 addValueWithLabel:@"Properties" stringValue:v266];

      v82 = v289;
      v193 = v291;
    }

    v181 = v269;
  }

  return v23;
}

- (id)px_curationDebugString
{
  v2 = [a1 px_curationDebugValues];
  v3 = [a1 px_debugStringForValueList:v2];

  return v3;
}

- (id)px_detailedDebugDescriptionInLibrary:()PhotosUICore
{
  v5 = a3;
  if (!v5)
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:a1 file:@"PHAsset+PhotosUICore.m" lineNumber:459 description:{@"Invalid parameter not satisfying: %@", @"photoLibrary"}];
  }

  v6 = objc_opt_new();
  v7 = [a1 _deferredProcessingStringWithEnum:{objc_msgSend(a1, "deferredProcessingNeeded")}];
  [v6 appendFormat:@"Deferred Processing Details: %@", v7];

  if (![a1 deferredProcessingNeeded] && objc_msgSend(a1, "isPhoto"))
  {
    v8 = [a1 _imageProcessingFlags];
    v9 = v8;
    if (v8)
    {
      v10 = [v8 objectForKeyedSubscript:@"Processing"];
      [v6 appendFormat:@"\nFinal Image: %@", v10];

      v11 = [v9 objectForKeyedSubscript:@"Type"];
      [v6 appendFormat:@"\nCapture Type: %@", v11];
    }
  }

  [v6 appendString:@"\n\n"];
  v12 = [a1 detailedDebugDescriptionInLibrary:v5];
  [v6 appendString:v12];

  return v6;
}

- (__CFString)px_exportFilename
{
  v2 = [a1 originalFilename];
  if (![(__CFString *)v2 length])
  {
    v3 = [a1 filename];

    v2 = v3;
  }

  if (![(__CFString *)v2 length])
  {

    v2 = @"unknown";
  }

  return v2;
}

- (id)px_debugStringForValueList:()PhotosUICore
{
  v96[3] = *MEMORY[0x1E69E9840];
  obja = a3;
  v65 = objc_alloc_init(MEMORY[0x1E696AD40]);
  v3 = [MEMORY[0x1E69DB7D0] defaultParagraphStyle];
  v4 = [v3 mutableCopy];

  [v4 setAlignment:1];
  v5 = [MEMORY[0x1E69DB7D0] defaultParagraphStyle];
  v6 = [v5 mutableCopy];

  [v6 setAlignment:1];
  [v6 setParagraphSpacing:3.0];
  v7 = [MEMORY[0x1E69DB7D0] defaultParagraphStyle];
  v8 = [v7 mutableCopy];

  [v8 setAlignment:0];
  [v8 setFirstLineHeadIndent:0.0];
  [v8 setHeadIndent:10.0];
  v9 = MEMORY[0x1E69DB878];
  [MEMORY[0x1E69DB878] systemFontSize];
  v10 = [v9 boldSystemFontOfSize:?];
  v58 = [MEMORY[0x1E69DC888] colorWithRed:0.0 green:0.7 blue:0.0 alpha:1.0];
  v57 = [MEMORY[0x1E69DC888] colorWithRed:0.8 green:0.0 blue:0.0 alpha:1.0];
  v56 = [MEMORY[0x1E69DC888] colorWithRed:0.8 green:0.5 blue:0.0 alpha:1.0];
  v12 = *MEMORY[0x1E69DB688];
  v94[0] = *MEMORY[0x1E69DB648];
  v11 = v94[0];
  v94[1] = v12;
  v96[0] = v10;
  v96[1] = v4;
  v55 = v4;
  v95 = *MEMORY[0x1E69DB650];
  v13 = v95;
  v14 = [MEMORY[0x1E69DC888] lightGrayColor];
  v96[2] = v14;
  v64 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v96 forKeys:v94 count:3];

  v92[0] = v11;
  v92[1] = v12;
  v93[0] = v10;
  v93[1] = v6;
  v54 = v6;
  v92[2] = v13;
  v15 = [MEMORY[0x1E69DC888] labelColor];
  v93[2] = v15;
  v63 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v93 forKeys:v92 count:3];

  v90[0] = v11;
  v16 = MEMORY[0x1E69DB878];
  [MEMORY[0x1E69DB878] systemFontSize];
  v17 = [v16 systemFontOfSize:?];
  v91[0] = v17;
  v91[1] = v8;
  v90[1] = v12;
  v90[2] = v13;
  v18 = [MEMORY[0x1E69DC888] labelColor];
  v91[2] = v18;
  v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v91 forKeys:v90 count:3];

  v88[0] = v11;
  v88[1] = v12;
  v52 = v10;
  v53 = v8;
  v89[0] = v10;
  v89[1] = v8;
  v88[2] = v13;
  v20 = [MEMORY[0x1E69DC888] labelColor];
  v89[2] = v20;
  v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v89 forKeys:v88 count:3];

  v22 = [v21 mutableCopy];
  v86 = v13;
  v87 = v58;
  v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v87 forKeys:&v86 count:1];
  v60 = v22;
  [v22 addEntriesFromDictionary:v23];

  v24 = [v21 mutableCopy];
  v84 = v13;
  v85 = v57;
  v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v85 forKeys:&v84 count:1];
  v59 = v24;
  [v24 addEntriesFromDictionary:v25];

  v26 = [v21 mutableCopy];
  v82 = v13;
  v83 = v56;
  v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v83 forKeys:&v82 count:1];
  v62 = v26;
  [v26 addEntriesFromDictionary:v27];

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __52__PHAsset_PhotosUICore__px_debugStringForValueList___block_invoke;
  aBlock[3] = &unk_1E77354B0;
  v51 = v64;
  v78 = v51;
  v28 = v65;
  v79 = v28;
  v50 = v63;
  v80 = v50;
  v29 = _Block_copy(aBlock);
  v73[0] = MEMORY[0x1E69E9820];
  v73[1] = 3221225472;
  v73[2] = __52__PHAsset_PhotosUICore__px_debugStringForValueList___block_invoke_2;
  v73[3] = &unk_1E77354B0;
  v49 = v19;
  v74 = v49;
  v30 = v28;
  v75 = v30;
  v61 = v21;
  v76 = v61;
  v31 = _Block_copy(v73);
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  obj = obja;
  v32 = [obj countByEnumeratingWithState:&v69 objects:v81 count:16];
  if (v32)
  {
    v33 = v32;
    v34 = *v70;
    v66 = v30;
    do
    {
      for (i = 0; i != v33; ++i)
      {
        if (*v70 != v34)
        {
          objc_enumerationMutation(obj);
        }

        v36 = *(*(&v69 + 1) + 8 * i);
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        v38 = [v36 label];
        if ((isKindOfClass & 1) == 0)
        {
          v29[2](v29, v38);
          goto LABEL_19;
        }

        v31[2](v31, v38);

        v38 = v36;
        v39 = [v38 highlightStyle];
        v40 = 0;
        if (v39 <= 1)
        {
          v41 = v61;
          if (v39)
          {
            v41 = v60;
            if (v39 != 1)
            {
              goto LABEL_16;
            }
          }

          goto LABEL_15;
        }

        v41 = v62;
        if (v39 == 2)
        {
          goto LABEL_15;
        }

        if (v39 == 3)
        {
          v41 = v59;
LABEL_15:
          v40 = v41;
        }

LABEL_16:
        v42 = objc_alloc(MEMORY[0x1E696AAB0]);
        v43 = [v38 string];
        v44 = v43;
        if (!v43)
        {
          v43 = @"??";
        }

        v45 = [(__CFString *)v43 stringByAppendingString:@"\n"];
        v46 = [v42 initWithString:v45 attributes:v40];

        v30 = v66;
        [v66 appendAttributedString:v46];

LABEL_19:
      }

      v33 = [obj countByEnumeratingWithState:&v69 objects:v81 count:16];
    }

    while (v33);
  }

  v47 = v30;
  return v30;
}

- (id)px_slHighlightWithError:()PhotosUICore
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = PLSyndicationGetLog();
  v6 = os_signpost_id_generate(v5);
  info = 0;
  mach_timebase_info(&info);
  v7 = v5;
  v8 = v7;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "SLHighlightFetching", "", buf, 2u);
  }

  v9 = mach_absolute_time();
  v10 = [a1 curationProperties];
  v11 = [v10 syndicationIdentifier];

  v24 = 0;
  v12 = [objc_alloc(MEMORY[0x1E69D3810]) initWithCSSearchableItemUniqueIdentifier:v11 error:&v24];
  v13 = v24;
  v14 = v13;
  if (!v12)
  {
    if (v13)
    {
      v15 = v13;
      *a3 = v14;
    }

    v16 = PLUIGetLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = [a1 uuid];
      *buf = 138543874;
      v27 = v17;
      v28 = 2114;
      v29 = *&v11;
      v30 = 2112;
      v31 = v14;
      _os_log_impl(&dword_1A3C1C000, v16, OS_LOG_TYPE_ERROR, "SLHighlight was nil for syndicated asset: %{public}@ with syndication identifier: %{public}@ with error: %@", buf, 0x20u);
    }
  }

  v18 = mach_absolute_time();
  numer = info.numer;
  denom = info.denom;
  v21 = v8;
  v22 = v21;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v22, OS_SIGNPOST_INTERVAL_END, v6, "SLHighlightFetching", "", buf, 2u);
  }

  if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v27 = "SLHighlightFetching";
    v28 = 2048;
    v29 = ((((v18 - v9) * numer) / denom) / 1000000.0);
    _os_log_impl(&dword_1A3C1C000, v22, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
  }

  return v12;
}

- (uint64_t)px_isContentPreviewable
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0;
  v2 = [MEMORY[0x1E6978AB0] isContentPreviewableForAsset:a1 outError:&v7];
  v3 = v7;
  if (v3)
  {
    v4 = PLUIGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = [a1 localIdentifier];
      *buf = 138412546;
      v9 = v5;
      v10 = 2112;
      v11 = v3;
      _os_log_impl(&dword_1A3C1C000, v4, OS_LOG_TYPE_ERROR, "Error determining isContentPreviewableForAsset localIdentifier: %@ error: %@", buf, 0x16u);
    }
  }

  return v2;
}

- (uint64_t)px_canLoadSyndicationAttributionInfo
{
  [a1 fetchPropertySetsIfNeeded];
  if (([a1 px_isSyndicatedAsset] & 1) != 0 || (result = objc_msgSend(a1, "px_wasSavedThroughSyndication"), result))
  {
    v3 = [a1 curationProperties];
    v4 = [v3 importedByBundleIdentifier];

    v5 = [v4 isEqualToString:*MEMORY[0x1E69BFF00]];
    return v5;
  }

  return result;
}

- (uint64_t)px_wasSavedThroughExternalApp
{
  [a1 fetchPropertySetsIfNeeded];
  v2 = [a1 curationProperties];
  v3 = [v2 syndicationIdentifier];
  v4 = [v2 importedByBundleIdentifier];
  v5 = [v2 importedByDisplayName];
  v6 = 0;
  if (PLShouldConstructDisplayNameForAppBundle() && !v3)
  {
    if ([a1 px_isSyndicatedAsset])
    {
      v6 = 0;
    }

    else
    {
      v6 = [a1 px_wasSavedThroughSyndication] ^ 1;
    }
  }

  return v6;
}

- (uint64_t)px_wasSavedThroughSyndication
{
  v2 = +[PXContentSyndicationSettings sharedInstance];
  if ([v2 dataSourceType] == 6)
  {
    v5 = 0;
  }

  else
  {
    v3 = [a1 photoLibrary];
    v4 = [v3 wellKnownPhotoLibraryIdentifier];

    [a1 fetchPropertySetsIfNeeded];
    if (v4 == 3)
    {
      v5 = [a1 isSyndicatedAssetSavedToUserLibrary];
    }

    else
    {
      v6 = [a1 curationProperties];
      v7 = [v6 syndicationIdentifier];
      v8 = v7 != 0;

      v5 = v8 & ([a1 isGuestAsset] ^ 1);
    }
  }

  return v5;
}

- (uint64_t)px_isSyndicatedAsset
{
  if ([a1 px_isSyndicationPhotoLibraryAsset])
  {
    return 1;
  }

  return [a1 px_isUnsavedSyndicatedAsset];
}

- (BOOL)px_isSyndicationPhotoLibraryAsset
{
  v1 = [a1 photoLibrary];
  v2 = [v1 wellKnownPhotoLibraryIdentifier] == 3;

  return v2;
}

- (uint64_t)px_containsPotentiallySensitiveContent
{
  result = [MEMORY[0x1E6978AB0] sensitiveContentAnalysisEnabled];
  if (result)
  {

    return [a1 px_isSharedAlbumAsset];
  }

  return result;
}

- (uint64_t)px_isSharedAlbumAsset
{
  if ([a1 px_isStreamSharedAlbumAsset])
  {
    return 1;
  }

  return [a1 px_isCloudKitSharedAlbumAsset];
}

- (uint64_t)px_currentVariationType
{
  v1 = [a1 playbackVariation];
  if ((v1 - 1) < 3)
  {
    return (v1 - 1) + 1;
  }

  else
  {
    return 0;
  }
}

- (uint64_t)px_displayType
{
  v2 = [a1 playbackStyle];
  if (v2 <= 2)
  {
    if (!v2)
    {
      return 1;
    }

    if (v2 != 1)
    {
      if (v2 == 2)
      {
        return 6;
      }

      else
      {
        return 0;
      }
    }

    goto LABEL_10;
  }

  if (v2 != 5)
  {
    if (v2 == 4)
    {
      return 2;
    }

    if (v2 != 3)
    {
      return 0;
    }

LABEL_10:
    if ([a1 playbackVariation] == 3)
    {
      return 5;
    }

    else
    {
      return 1;
    }
  }

  v4 = [a1 playbackVariation];
  v5 = 2;
  if (v4 == 2)
  {
    v5 = 3;
  }

  if (v4 == 1)
  {
    return 4;
  }

  else
  {
    return v5;
  }
}

- (id)px_singleLineMailingAddress
{
  [a1 fetchPropertySetsIfNeeded];
  v2 = [a1 photosOneUpProperties];
  v3 = [v2 addressString];

  v4 = [objc_opt_class() addressWithoutUnitedStatesZipCode:v3];

  return v4;
}

- (id)px_adjustmentUuid
{
  v2 = [a1 uuid];
  if ([a1 hasAdjustments])
  {
    v3 = [a1 uuid];
    v4 = [a1 adjustmentVersion];
    v5 = [v4 description];
    v6 = [v3 stringByAppendingString:v5];

    v2 = v6;
  }

  return v2;
}

+ (void)px_generateResourceFilesForAssets:()PhotosUICore completionHandler:
{
  v89 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v47 = a4;
  group = dispatch_group_create();
  v61 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v59 = objc_alloc_init(MEMORY[0x1E6978708]);
  [v59 setNetworkAccessAllowed:1];
  v84 = 0u;
  v85 = 0u;
  v82 = 0u;
  v83 = 0u;
  obj = v5;
  v49 = [obj countByEnumeratingWithState:&v82 objects:v88 count:16];
  if (v49)
  {
    v48 = *v83;
    do
    {
      v6 = 0;
      do
      {
        if (*v83 != v48)
        {
          objc_enumerationMutation(obj);
        }

        v56 = v6;
        v7 = *(*(&v82 + 1) + 8 * v6);
        v8 = [v7 uuid];
        v9 = NSTemporaryDirectory();
        v10 = [v9 stringByAppendingPathComponent:v8];

        v11 = [v7 photoLibrary];
        v12 = [v11 photoLibrary];

        v54 = v12;
        v13 = [v7 px_detailedDebugDescriptionInLibrary:v12];
        v55 = v8;
        v14 = [v8 stringByAppendingString:@".detailedDebugDescription.txt"];
        v64 = v10;
        v15 = [v10 stringByAppendingPathComponent:v14];

        v16 = [MEMORY[0x1E69786D8] assetResourcesForAsset:v7];
        if ([v16 count])
        {
          v80 = 0u;
          v81 = 0u;
          v78 = 0u;
          v79 = 0u;
          v17 = v16;
          v18 = [v17 countByEnumeratingWithState:&v78 objects:v87 count:16];
          if (v18)
          {
            v19 = v18;
            v20 = *v79;
            while (2)
            {
              for (i = 0; i != v19; ++i)
              {
                if (*v79 != v20)
                {
                  objc_enumerationMutation(v17);
                }

                v22 = [*(*(&v78 + 1) + 8 * i) originalFilename];
                if ([v22 hasPrefix:@"IMG"])
                {
                  v57 = [v22 stringByDeletingPathExtension];
                  v23 = [v64 stringByAppendingPathComponent:?];
                  v24 = [v23 stringByAppendingString:@".detailedDebugDescription.txt"];

                  v15 = v24;
                  goto LABEL_17;
                }
              }

              v19 = [v17 countByEnumeratingWithState:&v78 objects:v87 count:16];
              if (v19)
              {
                continue;
              }

              break;
            }
          }

          v57 = &stru_1F1741150;
LABEL_17:
        }

        else
        {
          v57 = &stru_1F1741150;
        }

        v25 = [MEMORY[0x1E696AC08] defaultManager];
        v26 = [v25 createDirectoryAtPath:v64 withIntermediateDirectories:1 attributes:0 error:0];

        if ((v26 & 1) == 0)
        {
          NSLog(&cfstr_FailedToCreate_2.isa);
        }

        v52 = v15;
        v27 = [MEMORY[0x1E695DFF8] fileURLWithPath:v15];
        v77 = 0;
        v53 = v13;
        [v13 writeToURL:v27 atomically:1 encoding:4 error:&v77];
        v50 = v77;
        if (!v50)
        {
          [v61 addObject:v27];
        }

        v51 = v27;
        v75 = 0u;
        v76 = 0u;
        v73 = 0u;
        v74 = 0u;
        v58 = v16;
        v65 = [v58 countByEnumeratingWithState:&v73 objects:v86 count:16];
        if (v65)
        {
          v63 = *v74;
          do
          {
            for (j = 0; j != v65; ++j)
            {
              if (*v74 != v63)
              {
                objc_enumerationMutation(v58);
              }

              v29 = *(*(&v73 + 1) + 8 * j);
              v30 = [v29 originalFilename];
              v31 = [v29 privateFileURL];
              v32 = [v31 pathExtension];

              if (v32)
              {
                v33 = [v30 stringByDeletingPathExtension];
                v34 = [v33 stringByAppendingPathExtension:v32];

                v30 = v34;
              }

              v35 = [v30 stringByDeletingPathExtension];
              if ([obj count] >= 2 && ((objc_msgSend(v30, "hasPrefix:", @"Adjustments") & 1) != 0 || (objc_msgSend(v30, "hasPrefix:", @"FullSize") & 1) != 0 || objc_msgSend(v30, "hasPrefix:", @"Penultimate")))
              {
                v36 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_%@", v57, v30];

                v30 = v36;
              }

              v37 = [v64 stringByAppendingPathComponent:v35];
              v38 = [v37 stringByAppendingPathComponent:v30];
              v39 = [MEMORY[0x1E695DFF8] fileURLWithPath:v38];
              v40 = [MEMORY[0x1E696AC08] defaultManager];
              v41 = [v40 createDirectoryAtPath:v37 withIntermediateDirectories:1 attributes:0 error:0];

              if ((v41 & 1) == 0)
              {
                NSLog(&cfstr_FailedToCreate_2.isa);
              }

              dispatch_group_enter(group);
              v42 = [MEMORY[0x1E69786F0] defaultManager];
              v69[0] = MEMORY[0x1E69E9820];
              v69[1] = 3221225472;
              v69[2] = __77__PHAsset_PhotosUICore__px_generateResourceFilesForAssets_completionHandler___block_invoke;
              v69[3] = &unk_1E77354D8;
              v70 = v39;
              v71 = v61;
              v72 = group;
              v43 = v39;
              [v42 writeDataForAssetResource:v29 toFile:v43 options:v59 completionHandler:v69];
            }

            v65 = [v58 countByEnumeratingWithState:&v73 objects:v86 count:16];
          }

          while (v65);
        }

        v6 = v56 + 1;
      }

      while (v56 + 1 != v49);
      v49 = [obj countByEnumeratingWithState:&v82 objects:v88 count:16];
    }

    while (v49);
  }

  v44 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __77__PHAsset_PhotosUICore__px_generateResourceFilesForAssets_completionHandler___block_invoke_2;
  block[3] = &unk_1E774C2F0;
  v67 = v61;
  v68 = v47;
  v45 = v61;
  v46 = v47;
  dispatch_group_notify(group, v44, block);
}

+ (id)addressWithoutUnitedStatesZipCode:()PhotosUICore
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v10 = 0;
  v4 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:@"  \\d{5}(-\\d{4})? options:United States$" error:{0, &v10}];
  v5 = v10;
  if (![v3 length] || v5)
  {
    if (v5)
    {
      v7 = PLUIGetLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v12 = v5;
        _os_log_impl(&dword_1A3C1C000, v7, OS_LOG_TYPE_ERROR, "Can't remove United States zip code with error: %@", buf, 0xCu);
      }
    }

    v6 = v3;
  }

  else
  {
    v6 = [v4 stringByReplacingMatchesInString:v3 options:0 range:0 withTemplate:{objc_msgSend(v3, "length"), @", United States"}];
  }

  v8 = v6;

  return v8;
}

+ (id)px_orderedAssetsFromAssets:()PhotosUICore sortDescriptors:
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  memset(v14, 0, sizeof(v14));
  if ([v5 countByEnumeratingWithState:v14 objects:v15 count:16] && (objc_msgSend(**(&v14[0] + 1), "photoLibrary"), (v7 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v8 = v7;
    v9 = [v7 px_standardLibrarySpecificFetchOptions];
    [v9 setSortDescriptors:v6];
    [v9 setIncludeHiddenAssets:1];
    [v9 setIncludeGuestAssets:1];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      PXMap();
    }

    v10 = [v5 fetchedObjectIDs];
    v12 = [MEMORY[0x1E6978630] fetchAssetsWithObjectIDs:v10 options:v9];
  }

  else
  {
    v11 = MEMORY[0x1E6978630];
    v8 = [MEMORY[0x1E6978830] px_standardFetchOptions];
    v12 = [v11 fetchAssetsWithLocalIdentifiers:MEMORY[0x1E695E0F0] options:v8];
  }

  return v12;
}

+ (id)px_fetchPlacesAssetsInAssetCollection:()PhotosUICore options:
{
  v23[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v5)
  {
    if (v6)
    {
LABEL_3:
      v8 = [v7 copy];
      goto LABEL_6;
    }
  }

  else
  {
    v9 = MEMORY[0x1E6978830];
    v10 = [v6 photoLibrary];
    v11 = [v9 fetchOptionsWithPhotoLibrary:v10 orObject:0];

    [v11 setIncludePlacesSmartAlbum:1];
    v12 = [MEMORY[0x1E6978650] fetchAssetCollectionsWithType:2 subtype:1000000203 options:v11];
    v5 = [v12 firstObject];

    if (v7)
    {
      goto LABEL_3;
    }
  }

  v13 = [v5 photoLibrary];
  v8 = [v13 librarySpecificFetchOptions];

  [v8 setSharingFilter:{objc_msgSend(0, "sharingFilter")}];
LABEL_6:
  v14 = [MEMORY[0x1E6978830] px_placesFetchOptionsWith:v8];

  [v14 setChunkSizeForFetch:5000];
  v15 = [v14 sortDescriptors];

  if (!v15)
  {
    v16 = [MEMORY[0x1E6978630] internalSortDescriptorForPropertyKey:@"creationDate" ascending:0];
    v23[0] = v16;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];
    [v14 setInternalSortDescriptors:v17];
  }

  v18 = *MEMORY[0x1E6978CE0];
  v22[0] = *MEMORY[0x1E6978C68];
  v22[1] = v18;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:2];
  [v14 setFetchPropertySets:v19];

  v20 = [MEMORY[0x1E6978630] fetchAssetsInAssetCollection:v5 options:v14];

  return v20;
}

+ (id)px_fetchAssetsInArray:()PhotosUICore photoLibrary:
{
  v5 = MEMORY[0x1E69788E0];
  v6 = a4;
  v7 = a3;
  v8 = [v5 alloc];
  v9 = [MEMORY[0x1E6978630] fetchType];
  v10 = [v8 initWithObjects:v7 photoLibrary:v6 fetchType:v9 fetchPropertySets:0 identifier:0 registerIfNeeded:0];

  return v10;
}

@end