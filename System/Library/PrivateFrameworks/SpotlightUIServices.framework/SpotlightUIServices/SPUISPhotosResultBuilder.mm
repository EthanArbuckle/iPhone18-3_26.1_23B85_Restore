@interface SPUISPhotosResultBuilder
+ (BOOL)supportsResult:(id)result;
- (SPUISPhotosResultBuilder)initWithResult:(id)result;
- (id)appBundleId;
- (id)buildCommand;
- (id)buildDescriptions;
- (id)buildDetailedRowCardSection;
- (id)buildImageCardSection;
- (id)buildOneUpCommand;
- (id)buildResult;
- (id)buildThumbnail;
- (id)createSceneFrom:(id)from;
- (id)getValidStringFromArray:(id)array withMatchedIndices:(id)indices;
- (id)scenes;
- (int)sfSceneTypeFrom:(int64_t)from;
@end

@implementation SPUISPhotosResultBuilder

+ (BOOL)supportsResult:(id)result
{
  resultCopy = result;
  if (supportsResult__onceToken_0 != -1)
  {
    +[SPUISPhotosResultBuilder supportsResult:];
  }

  v4 = [resultCopy valueForAttribute:*MEMORY[0x277CC2430] withType:objc_opt_class()];
  v5 = [supportsResult__photosEntityTypes containsObject:v4];
  v6 = MEMORY[0x277CBEB98];
  contentTypeTree = [resultCopy contentTypeTree];
  v8 = [v6 setWithArray:contentTypeTree];

  sectionBundleIdentifier = [resultCopy sectionBundleIdentifier];
  if (SSSectionIsSyndicatedPhotos())
  {
  }

  else
  {
    if ((isMacOS() & 1) == 0)
    {

      goto LABEL_11;
    }

    applicationBundleIdentifier = [resultCopy applicationBundleIdentifier];
    v11 = [applicationBundleIdentifier isEqualToString:@"com.apple.mobileslideshow"];

    if (!v11)
    {
      goto LABEL_11;
    }
  }

  if ([v8 intersectsSet:supportsResult__photosContentTypes])
  {
    v5 = 1;
  }

LABEL_11:

  return v5;
}

void __43__SPUISPhotosResultBuilder_supportsResult___block_invoke()
{
  v9[2] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEB98];
  v1 = [*MEMORY[0x277CE1DB0] identifier];
  v9[0] = v1;
  v2 = [*MEMORY[0x277CE1E00] identifier];
  v9[1] = v2;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:2];
  v4 = [v0 setWithArray:v3];
  v5 = supportsResult__photosContentTypes;
  supportsResult__photosContentTypes = v4;

  v6 = [MEMORY[0x277CBEB98] setWithArray:&unk_287C59F18];
  v7 = supportsResult__photosEntityTypes;
  supportsResult__photosEntityTypes = v6;

  v8 = *MEMORY[0x277D85DE8];
}

- (SPUISPhotosResultBuilder)initWithResult:(id)result
{
  resultCopy = result;
  v61.receiver = self;
  v61.super_class = SPUISPhotosResultBuilder;
  v5 = [(SPUISResultBuilder *)&v61 initWithResult:resultCopy];
  if (v5)
  {
    if (initWithResult__onceToken != -1)
    {
      [SPUISPhotosResultBuilder initWithResult:];
    }

    v6 = [resultCopy valueForAttribute:*MEMORY[0x277CC2F40] withType:objc_opt_class()];
    firstObject = [v6 firstObject];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v6;
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;

    v10 = [resultCopy valueForAttribute:*MEMORY[0x277CC2F28] withType:objc_opt_class()];
    firstObject2 = [v10 firstObject];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = v10;
    }

    else
    {
      v12 = 0;
    }

    v13 = v12;

    v14 = [resultCopy valueForAttribute:*MEMORY[0x277CC2F38] withType:objc_opt_class()];
    v15 = objc_opt_new();
    v16 = objc_opt_new();
    v56[0] = MEMORY[0x277D85DD0];
    v56[1] = 3221225472;
    v56[2] = __43__SPUISPhotosResultBuilder_initWithResult___block_invoke_2;
    v56[3] = &unk_279D0BE48;
    v55 = v9;
    v57 = v55;
    v17 = v15;
    v58 = v17;
    v53 = v14;
    v59 = v53;
    v18 = v16;
    v60 = v18;
    [v13 enumerateObjectsUsingBlock:v56];

    v19 = [resultCopy valueForAttribute:*MEMORY[0x277CC2F50] withType:objc_opt_class()];
    v20 = [resultCopy valueForAttribute:*MEMORY[0x277CC2F80] withType:objc_opt_class()];
    v49 = *MEMORY[0x277CC2F60];
    v21 = [resultCopy valueForAttribute:*MEMORY[0x277CC2F60] withType:objc_opt_class()];
    v50 = *MEMORY[0x277CC2F78];
    v22 = [resultCopy valueForAttribute:*MEMORY[0x277CC2F78] withType:objc_opt_class()];
    v23 = [resultCopy valueForAttribute:*MEMORY[0x277CC2F70] withType:objc_opt_class()];
    v54 = v17;
    [(SPUISPhotosResultBuilder *)v5 setPeopleInPhoto:v17];
    v52 = v18;
    array = [v18 array];
    [(SPUISPhotosResultBuilder *)v5 setMatchedPeople:array];

    firstObject3 = [v19 firstObject];
    objc_opt_class();
    v51 = v19;
    if (objc_opt_isKindOfClass())
    {
      v26 = v19;
    }

    else
    {
      v26 = 0;
    }

    v27 = v20;
    [(SPUISPhotosResultBuilder *)v5 setScenePhotoIdentifiers:v26];

    firstObject4 = [v20 firstObject];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v29 = v20;
    }

    else
    {
      v29 = 0;
    }

    [(SPUISPhotosResultBuilder *)v5 setPhotoSceneTypes:v29];

    firstObject5 = [v21 firstObject];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v31 = v21;
    }

    else
    {
      v31 = 0;
    }

    [(SPUISPhotosResultBuilder *)v5 setSceneLabelsIndex:v31];

    firstObject6 = [v22 firstObject];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v33 = v22;
    }

    else
    {
      v33 = 0;
    }

    [(SPUISPhotosResultBuilder *)v5 setSceneSynonymsIndex:v33];

    firstObject7 = [v23 firstObject];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v35 = v23;
    }

    else
    {
      v35 = 0;
    }

    [(SPUISPhotosResultBuilder *)v5 setSceneSynonymsCounts:v35];

    v36 = initWithResult__syndicatedBundles;
    appBundleId = [(SPUISPhotosResultBuilder *)v5 appBundleId];
    -[SPUISPhotosResultBuilder setIsSyndicated:](v5, "setIsSyndicated:", [v36 containsObject:appBundleId]);

    if (+[SPUISUtilities isMacOS])
    {
      [resultCopy valueForAttribute:*MEMORY[0x277CC2A80] withType:objc_opt_class()];
    }

    else
    {
      [resultCopy identifier];
    }
    v38 = ;
    [(SPUISPhotosResultBuilder *)v5 setPhotoIdentifier:v38];

    v39 = [resultCopy valueForAttribute:*MEMORY[0x277CC2640] withType:objc_opt_class()];
    [(SPUISPhotosResultBuilder *)v5 setDateCreated:v39];

    v40 = [resultCopy valueForAttribute:*MEMORY[0x277CC2ED0] withType:objc_opt_class()];
    [(SPUISPhotosResultBuilder *)v5 setPhotosDescription:v40];

    v41 = [resultCopy valueForAttribute:*MEMORY[0x277CC2F58] withType:objc_opt_class()];
    [(SPUISPhotosResultBuilder *)v5 setClassificationLabels:v41];

    v42 = [resultCopy valueForAttribute:v49 withType:objc_opt_class()];
    [(SPUISPhotosResultBuilder *)v5 setClassificationLabelIndices:v42];

    v43 = [resultCopy valueForAttribute:*MEMORY[0x277CC2F68] withType:objc_opt_class()];
    [(SPUISPhotosResultBuilder *)v5 setClassificationLabelSynonyms:v43];

    v44 = [resultCopy valueForAttribute:v50 withType:objc_opt_class()];
    [(SPUISPhotosResultBuilder *)v5 setClassificationLabelSynonymIndices:v44];

    v45 = [resultCopy valueForAttribute:*MEMORY[0x277CC2F00] withType:objc_opt_class()];
    [(SPUISPhotosResultBuilder *)v5 setLocationKeywords:v45];

    v46 = [resultCopy valueForAttribute:*MEMORY[0x277CC2F08] withType:objc_opt_class()];
    [(SPUISPhotosResultBuilder *)v5 setLocationKeywordIndices:v46];

    v47 = [resultCopy valueForAttribute:*MEMORY[0x277CC2430] withType:objc_opt_class()];
    [(SPUISPhotosResultBuilder *)v5 setEntityType:v47];
  }

  return v5;
}

void __43__SPUISPhotosResultBuilder_initWithResult___block_invoke()
{
  v3[7] = *MEMORY[0x277D85DE8];
  v3[0] = @"com.apple.MobileSMS";
  v3[1] = @"com.apple.mobilenotes";
  v3[2] = @"com.apple.CloudDocs.MobileDocumentsFileProvider";
  v3[3] = @"com.apple.FileProvider.LocalStorage";
  v3[4] = @"com.apple.CloudDocs.iCloudDriveFileProvider";
  v3[5] = @"com.apple.spotlight.syndicatedPhotos.MobileSMS";
  v3[6] = @"com.apple.spotlight.syndicatedPhotos.Notes";
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v3 count:7];
  v1 = initWithResult__syndicatedBundles;
  initWithResult__syndicatedBundles = v0;

  v2 = *MEMORY[0x277D85DE8];
}

void __43__SPUISPhotosResultBuilder_initWithResult___block_invoke_2(uint64_t a1, void *a2, unint64_t a3)
{
  v5 = a2;
  v9 = objc_opt_new();
  [v9 setDisplayName:v5];

  if ([*(a1 + 32) count] <= a3)
  {
    [v9 setPhotosIdentifier:0];
  }

  else
  {
    v6 = [*(a1 + 32) objectAtIndexedSubscript:a3];
    [v9 setPhotosIdentifier:v6];
  }

  [*(a1 + 40) addObject:v9];
  v7 = *(a1 + 48);
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  LODWORD(v7) = [v7 containsObject:v8];

  if (v7)
  {
    [*(a1 + 56) addObject:v9];
  }
}

- (id)appBundleId
{
  result = [(SPUISResultBuilder *)self result];
  resultBundleId = [result resultBundleId];
  v4 = resultBundleId;
  if (resultBundleId)
  {
    applicationBundleIdentifier = resultBundleId;
  }

  else
  {
    applicationBundleIdentifier = [result applicationBundleIdentifier];
  }

  v6 = applicationBundleIdentifier;

  return v6;
}

- (id)buildResult
{
  v4.receiver = self;
  v4.super_class = SPUISPhotosResultBuilder;
  buildResult = [(SPUISResultBuilder *)&v4 buildResult];
  [buildResult setRenderHorizontallyWithOtherResultsInCategory:1];

  return buildResult;
}

- (id)buildImageCardSection
{
  v21[1] = *MEMORY[0x277D85DE8];
  buildThumbnail = [(SPUISPhotosResultBuilder *)self buildThumbnail];
  v4 = +[SPUISUtilities isMacOS];
  v5 = 170.0;
  if (v4)
  {
    v5 = 72.5;
  }

  [buildThumbnail setSize:{v5, v5}];
  v6 = objc_opt_new();
  [v6 setThumbnail:buildThumbnail];
  if ([(SPUISResultBuilder *)self hasTextContentMatch])
  {
    v7 = objc_opt_new();
    [v7 setSymbolName:@"text.viewfinder"];
    [v7 setIsTemplate:1];
    v8 = objc_opt_new();
    [v6 setThumbnailOverlayText:v8];

    v21[0] = v7;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:1];
    thumbnailOverlayText = [v6 thumbnailOverlayText];
    [thumbnailOverlayText setIcons:v9];
  }

  else
  {
    uniformType = [(SPUISResultBuilder *)self uniformType];
    v12 = [uniformType conformsToType:*MEMORY[0x277CE1E00]];

    if (!v12)
    {
      goto LABEL_9;
    }

    result = [(SPUISResultBuilder *)self result];
    v7 = [result valueForAttribute:*MEMORY[0x277CC2780] withType:objc_opt_class()];

    if (v7)
    {
      v14 = MEMORY[0x277D4C598];
      [v7 doubleValue];
      v15 = [SPUISDateFormatManager stringFromTimeInterval:?];
      v16 = [v14 textWithString:v15];
      [v6 setThumbnailOverlayText:v16];
    }
  }

LABEL_9:
  buildPreviewButtonItems = [(SPUISResultBuilder *)self buildPreviewButtonItems];
  [v6 setPreviewButtonItems:buildPreviewButtonItems];

  appBundleId = [(SPUISPhotosResultBuilder *)self appBundleId];
  [v6 setCommandDetail:appBundleId];

  [(SPUISResultBuilder *)self buildDefaultPropertiesForCardSection:v6];
  v19 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)buildThumbnail
{
  entityType = [(SPUISPhotosResultBuilder *)self entityType];
  v4 = [entityType isEqualToString:@"AlbumEntity"];

  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x277D4C530]);
    photoIdentifier = [(SPUISPhotosResultBuilder *)self photoIdentifier];
    [v5 setAlbumIdentifier:photoIdentifier];
  }

  else
  {
    entityType2 = [(SPUISPhotosResultBuilder *)self entityType];
    v8 = [entityType2 isEqualToString:@"MemoryEntity"];

    if (v8)
    {
      v5 = objc_alloc_init(MEMORY[0x277D4C540]);
      photoIdentifier = [(SPUISPhotosResultBuilder *)self photoIdentifier];
      [v5 setMemoryIdentifier:photoIdentifier];
    }

    else
    {
      v5 = objc_opt_new();
      photoIdentifier2 = [(SPUISPhotosResultBuilder *)self photoIdentifier];
      [v5 setPhotoIdentifier:photoIdentifier2];

      [v5 setIsSyndicated:{-[SPUISPhotosResultBuilder isSyndicated](self, "isSyndicated")}];
      photoIdentifier = [(SPUISPhotosResultBuilder *)self peopleInPhoto];
      [v5 setPeopleInPhoto:photoIdentifier];
    }
  }

  return v5;
}

- (int)sfSceneTypeFrom:(int64_t)from
{
  if (from >= 4)
  {
    return 1;
  }

  else
  {
    return from;
  }
}

- (id)buildDetailedRowCardSection
{
  v27[1] = *MEMORY[0x277D85DE8];
  v25.receiver = self;
  v25.super_class = SPUISPhotosResultBuilder;
  buildDetailedRowCardSection = [(SPUISResultBuilder *)&v25 buildDetailedRowCardSection];
  dateCreated = [(SPUISPhotosResultBuilder *)self dateCreated];

  if (dateCreated)
  {
    dateCreated2 = [(SPUISPhotosResultBuilder *)self dateCreated];
    dateCreated = [SPUISDateFormatManager fullDateTimeStringsFromDate:dateCreated2];
  }

  v6 = [(SPUISResultBuilder *)self buildHighlightedMatchedTextWithTitle:0 headTruncation:1];
  if (v6)
  {
    buildTitle = v6;
    firstObject2 = 0;
    v9 = 0;
    goto LABEL_14;
  }

  locationKeywords = [(SPUISPhotosResultBuilder *)self locationKeywords];
  v11 = [locationKeywords count];

  if (v11)
  {
    locationKeywords2 = [(SPUISPhotosResultBuilder *)self locationKeywords];
    locationKeywordIndices = [(SPUISPhotosResultBuilder *)self locationKeywordIndices];
    firstObject2 = [(SPUISPhotosResultBuilder *)self getValidStringFromArray:locationKeywords2 withMatchedIndices:locationKeywordIndices];

    if (firstObject2)
    {
      v9 = 0;
      goto LABEL_10;
    }
  }

  firstObject = [dateCreated firstObject];
  v15 = [firstObject length];

  if (v15)
  {
    firstObject2 = [dateCreated firstObject];
    v9 = 1;
    if (firstObject2)
    {
LABEL_10:
      buildTitle = [MEMORY[0x277D4C598] textWithString:firstObject2];
      if (buildTitle)
      {
        goto LABEL_14;
      }
    }
  }

  else
  {
    firstObject2 = 0;
    v9 = 0;
  }

  v24.receiver = self;
  v24.super_class = SPUISPhotosResultBuilder;
  buildTitle = [(SPUISResultBuilder *)&v24 buildTitle];
LABEL_14:
  [buildDetailedRowCardSection setTitle:buildTitle];
  if ([dateCreated count])
  {
    if (v9 && [dateCreated count] >= 2)
    {
      v16 = MEMORY[0x277D4C598];
      v17 = [dateCreated objectAtIndexedSubscript:1];
      v18 = [v16 textWithString:v17];
      v27[0] = v18;
      v19 = v27;
    }

    else
    {
      v20 = MEMORY[0x277D4C598];
      v17 = [dateCreated componentsJoinedByString:@" · "];
      v18 = [v20 textWithString:v17];
      v26 = v18;
      v19 = &v26;
    }

    v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];
    [buildDetailedRowCardSection setDescriptions:v21];
  }

  v22 = *MEMORY[0x277D85DE8];

  return buildDetailedRowCardSection;
}

- (id)getValidStringFromArray:(id)array withMatchedIndices:(id)indices
{
  v20 = *MEMORY[0x277D85DE8];
  arrayCopy = array;
  indicesCopy = indices;
  if ([arrayCopy count])
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v7 = indicesCopy;
    v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v9 = *v16;
      while (2)
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = *(*(&v15 + 1) + 8 * i);
          unsignedIntegerValue = [v11 unsignedIntegerValue];
          if (unsignedIntegerValue < [arrayCopy count])
          {
            v8 = [arrayCopy objectAtIndexedSubscript:{objc_msgSend(v11, "unsignedIntegerValue")}];
            goto LABEL_12;
          }
        }

        v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  else
  {
    v8 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)buildDescriptions
{
  v13[1] = *MEMORY[0x277D85DE8];
  dateCreated = [(SPUISPhotosResultBuilder *)self dateCreated];

  if (dateCreated)
  {
    v4 = MEMORY[0x277D4C598];
    dateCreated2 = [(SPUISPhotosResultBuilder *)self dateCreated];
    v6 = [SPUISDateFormatManager dynamicDateTimeStringsFromDate:dateCreated2];
    v7 = [v6 componentsJoinedByString:@" · "];
    v8 = [v4 textWithString:v7];
    v13[0] = v8;
    buildDescriptions = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
  }

  else
  {
    v12.receiver = self;
    v12.super_class = SPUISPhotosResultBuilder;
    buildDescriptions = [(SPUISResultBuilder *)&v12 buildDescriptions];
  }

  v10 = *MEMORY[0x277D85DE8];

  return buildDescriptions;
}

- (id)createSceneFrom:(id)from
{
  unsignedLongValue = [from unsignedLongValue];
  scenePhotoIdentifiers = [(SPUISPhotosResultBuilder *)self scenePhotoIdentifiers];
  v6 = [scenePhotoIdentifiers objectAtIndex:unsignedLongValue];

  v7 = objc_opt_new();
  photoSceneTypes = [(SPUISPhotosResultBuilder *)self photoSceneTypes];
  v9 = [photoSceneTypes objectAtIndex:unsignedLongValue];
  intValue = [v9 intValue];

  [v7 setSceneIdentifier:{objc_msgSend(v6, "unsignedLongLongValue")}];
  photoSceneTypes2 = [(SPUISPhotosResultBuilder *)self photoSceneTypes];
  if (unsignedLongValue >= [photoSceneTypes2 count])
  {
    v12 = 1;
  }

  else
  {
    v12 = [(SPUISPhotosResultBuilder *)self sfSceneTypeFrom:intValue];
  }

  [v7 setSceneType:v12];

  return v7;
}

- (id)scenes
{
  v59 = *MEMORY[0x277D85DE8];
  v38 = objc_opt_new();
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  sceneLabelsIndex = [(SPUISPhotosResultBuilder *)self sceneLabelsIndex];
  v4 = [sceneLabelsIndex countByEnumeratingWithState:&v51 objects:v58 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v52;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v52 != v6)
        {
          objc_enumerationMutation(sceneLabelsIndex);
        }

        v8 = *(*(&v51 + 1) + 8 * i);
        unsignedLongValue = [v8 unsignedLongValue];
        scenePhotoIdentifiers = [(SPUISPhotosResultBuilder *)self scenePhotoIdentifiers];
        if (unsignedLongValue >= [scenePhotoIdentifiers count])
        {
        }

        else
        {
          v11 = [v38 containsObject:v8];

          if ((v11 & 1) == 0)
          {
            [v38 addObject:v8];
          }
        }
      }

      v5 = [sceneLabelsIndex countByEnumeratingWithState:&v51 objects:v58 count:16];
    }

    while (v5);
  }

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  obj = [(SPUISPhotosResultBuilder *)self sceneSynonymsIndex];
  v12 = [obj countByEnumeratingWithState:&v47 objects:v57 count:16];
  if (v12)
  {
    v13 = v12;
    v37 = *v48;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v48 != v37)
        {
          objc_enumerationMutation(obj);
        }

        longValue = [*(*(&v47 + 1) + 8 * j) longValue];
        v43 = 0u;
        v44 = 0u;
        v45 = 0u;
        v46 = 0u;
        sceneSynonymsCounts = [(SPUISPhotosResultBuilder *)self sceneSynonymsCounts];
        v17 = [sceneSynonymsCounts countByEnumeratingWithState:&v43 objects:v56 count:16];
        if (v17)
        {
          v18 = v17;
          v19 = 0;
          v20 = *v44;
          while (2)
          {
            v21 = 0;
            v22 = v19;
            v19 += v18;
            do
            {
              if (*v44 != v20)
              {
                objc_enumerationMutation(sceneSynonymsCounts);
              }

              longValue -= [*(*(&v43 + 1) + 8 * v21) longValue];
              if (longValue < 0)
              {
                v19 = v22;
                goto LABEL_28;
              }

              ++v22;
              ++v21;
            }

            while (v18 != v21);
            v18 = [sceneSynonymsCounts countByEnumeratingWithState:&v43 objects:v56 count:16];
            if (v18)
            {
              continue;
            }

            break;
          }
        }

        else
        {
          v19 = 0;
        }

LABEL_28:

        v23 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v19];
        unsignedIntValue = [v23 unsignedIntValue];
        scenePhotoIdentifiers2 = [(SPUISPhotosResultBuilder *)self scenePhotoIdentifiers];
        if ([scenePhotoIdentifiers2 count] <= unsignedIntValue)
        {
        }

        else
        {
          v26 = [v38 containsObject:v23];

          if ((v26 & 1) == 0)
          {
            [v38 addObject:v23];
          }
        }
      }

      v13 = [obj countByEnumeratingWithState:&v47 objects:v57 count:16];
    }

    while (v13);
  }

  v27 = objc_opt_new();
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v28 = v38;
  v29 = [v28 countByEnumeratingWithState:&v39 objects:v55 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v40;
    do
    {
      for (k = 0; k != v30; ++k)
      {
        if (*v40 != v31)
        {
          objc_enumerationMutation(v28);
        }

        v33 = [(SPUISPhotosResultBuilder *)self createSceneFrom:*(*(&v39 + 1) + 8 * k)];
        [v27 addObject:v33];
      }

      v30 = [v28 countByEnumeratingWithState:&v39 objects:v55 count:16];
    }

    while (v30);
  }

  v34 = *MEMORY[0x277D85DE8];

  return v27;
}

- (id)buildCommand
{
  if ([objc_opt_class() isSpotlight])
  {
    buildOneUpCommand = [(SPUISPhotosResultBuilder *)self buildOneUpCommand];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = SPUISPhotosResultBuilder;
    buildOneUpCommand = [(SPUISResultBuilder *)&v5 buildCommand];
  }

  return buildOneUpCommand;
}

- (id)buildOneUpCommand
{
  buildThumbnail = [(SPUISPhotosResultBuilder *)self buildThumbnail];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = objc_opt_new();
    [v4 setPhotosLibraryImage:buildThumbnail];
    matchedPeople = [(SPUISPhotosResultBuilder *)self matchedPeople];
    [v4 setMatchedPeople:matchedPeople];

    scenes = [(SPUISPhotosResultBuilder *)self scenes];
    [v4 setMatchedScenes:scenes];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end