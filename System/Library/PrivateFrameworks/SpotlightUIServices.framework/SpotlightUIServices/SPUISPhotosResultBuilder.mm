@interface SPUISPhotosResultBuilder
+ (BOOL)supportsResult:(id)a3;
- (SPUISPhotosResultBuilder)initWithResult:(id)a3;
- (id)appBundleId;
- (id)buildCommand;
- (id)buildDescriptions;
- (id)buildDetailedRowCardSection;
- (id)buildImageCardSection;
- (id)buildOneUpCommand;
- (id)buildResult;
- (id)buildThumbnail;
- (id)createSceneFrom:(id)a3;
- (id)getValidStringFromArray:(id)a3 withMatchedIndices:(id)a4;
- (id)scenes;
- (int)sfSceneTypeFrom:(int64_t)a3;
@end

@implementation SPUISPhotosResultBuilder

+ (BOOL)supportsResult:(id)a3
{
  v3 = a3;
  if (supportsResult__onceToken_0 != -1)
  {
    +[SPUISPhotosResultBuilder supportsResult:];
  }

  v4 = [v3 valueForAttribute:*MEMORY[0x277CC2430] withType:objc_opt_class()];
  v5 = [supportsResult__photosEntityTypes containsObject:v4];
  v6 = MEMORY[0x277CBEB98];
  v7 = [v3 contentTypeTree];
  v8 = [v6 setWithArray:v7];

  v9 = [v3 sectionBundleIdentifier];
  if (SSSectionIsSyndicatedPhotos())
  {
  }

  else
  {
    if ((isMacOS() & 1) == 0)
    {

      goto LABEL_11;
    }

    v10 = [v3 applicationBundleIdentifier];
    v11 = [v10 isEqualToString:@"com.apple.mobileslideshow"];

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

- (SPUISPhotosResultBuilder)initWithResult:(id)a3
{
  v4 = a3;
  v61.receiver = self;
  v61.super_class = SPUISPhotosResultBuilder;
  v5 = [(SPUISResultBuilder *)&v61 initWithResult:v4];
  if (v5)
  {
    if (initWithResult__onceToken != -1)
    {
      [SPUISPhotosResultBuilder initWithResult:];
    }

    v6 = [v4 valueForAttribute:*MEMORY[0x277CC2F40] withType:objc_opt_class()];
    v7 = [v6 firstObject];
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

    v10 = [v4 valueForAttribute:*MEMORY[0x277CC2F28] withType:objc_opt_class()];
    v11 = [v10 firstObject];
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

    v14 = [v4 valueForAttribute:*MEMORY[0x277CC2F38] withType:objc_opt_class()];
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

    v19 = [v4 valueForAttribute:*MEMORY[0x277CC2F50] withType:objc_opt_class()];
    v20 = [v4 valueForAttribute:*MEMORY[0x277CC2F80] withType:objc_opt_class()];
    v49 = *MEMORY[0x277CC2F60];
    v21 = [v4 valueForAttribute:*MEMORY[0x277CC2F60] withType:objc_opt_class()];
    v50 = *MEMORY[0x277CC2F78];
    v22 = [v4 valueForAttribute:*MEMORY[0x277CC2F78] withType:objc_opt_class()];
    v23 = [v4 valueForAttribute:*MEMORY[0x277CC2F70] withType:objc_opt_class()];
    v54 = v17;
    [(SPUISPhotosResultBuilder *)v5 setPeopleInPhoto:v17];
    v52 = v18;
    v24 = [v18 array];
    [(SPUISPhotosResultBuilder *)v5 setMatchedPeople:v24];

    v25 = [v19 firstObject];
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

    v28 = [v20 firstObject];
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

    v30 = [v21 firstObject];
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

    v32 = [v22 firstObject];
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

    v34 = [v23 firstObject];
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
    v37 = [(SPUISPhotosResultBuilder *)v5 appBundleId];
    -[SPUISPhotosResultBuilder setIsSyndicated:](v5, "setIsSyndicated:", [v36 containsObject:v37]);

    if (+[SPUISUtilities isMacOS])
    {
      [v4 valueForAttribute:*MEMORY[0x277CC2A80] withType:objc_opt_class()];
    }

    else
    {
      [v4 identifier];
    }
    v38 = ;
    [(SPUISPhotosResultBuilder *)v5 setPhotoIdentifier:v38];

    v39 = [v4 valueForAttribute:*MEMORY[0x277CC2640] withType:objc_opt_class()];
    [(SPUISPhotosResultBuilder *)v5 setDateCreated:v39];

    v40 = [v4 valueForAttribute:*MEMORY[0x277CC2ED0] withType:objc_opt_class()];
    [(SPUISPhotosResultBuilder *)v5 setPhotosDescription:v40];

    v41 = [v4 valueForAttribute:*MEMORY[0x277CC2F58] withType:objc_opt_class()];
    [(SPUISPhotosResultBuilder *)v5 setClassificationLabels:v41];

    v42 = [v4 valueForAttribute:v49 withType:objc_opt_class()];
    [(SPUISPhotosResultBuilder *)v5 setClassificationLabelIndices:v42];

    v43 = [v4 valueForAttribute:*MEMORY[0x277CC2F68] withType:objc_opt_class()];
    [(SPUISPhotosResultBuilder *)v5 setClassificationLabelSynonyms:v43];

    v44 = [v4 valueForAttribute:v50 withType:objc_opt_class()];
    [(SPUISPhotosResultBuilder *)v5 setClassificationLabelSynonymIndices:v44];

    v45 = [v4 valueForAttribute:*MEMORY[0x277CC2F00] withType:objc_opt_class()];
    [(SPUISPhotosResultBuilder *)v5 setLocationKeywords:v45];

    v46 = [v4 valueForAttribute:*MEMORY[0x277CC2F08] withType:objc_opt_class()];
    [(SPUISPhotosResultBuilder *)v5 setLocationKeywordIndices:v46];

    v47 = [v4 valueForAttribute:*MEMORY[0x277CC2430] withType:objc_opt_class()];
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
  v2 = [(SPUISResultBuilder *)self result];
  v3 = [v2 resultBundleId];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [v2 applicationBundleIdentifier];
  }

  v6 = v5;

  return v6;
}

- (id)buildResult
{
  v4.receiver = self;
  v4.super_class = SPUISPhotosResultBuilder;
  v2 = [(SPUISResultBuilder *)&v4 buildResult];
  [v2 setRenderHorizontallyWithOtherResultsInCategory:1];

  return v2;
}

- (id)buildImageCardSection
{
  v21[1] = *MEMORY[0x277D85DE8];
  v3 = [(SPUISPhotosResultBuilder *)self buildThumbnail];
  v4 = +[SPUISUtilities isMacOS];
  v5 = 170.0;
  if (v4)
  {
    v5 = 72.5;
  }

  [v3 setSize:{v5, v5}];
  v6 = objc_opt_new();
  [v6 setThumbnail:v3];
  if ([(SPUISResultBuilder *)self hasTextContentMatch])
  {
    v7 = objc_opt_new();
    [v7 setSymbolName:@"text.viewfinder"];
    [v7 setIsTemplate:1];
    v8 = objc_opt_new();
    [v6 setThumbnailOverlayText:v8];

    v21[0] = v7;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:1];
    v10 = [v6 thumbnailOverlayText];
    [v10 setIcons:v9];
  }

  else
  {
    v11 = [(SPUISResultBuilder *)self uniformType];
    v12 = [v11 conformsToType:*MEMORY[0x277CE1E00]];

    if (!v12)
    {
      goto LABEL_9;
    }

    v13 = [(SPUISResultBuilder *)self result];
    v7 = [v13 valueForAttribute:*MEMORY[0x277CC2780] withType:objc_opt_class()];

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
  v17 = [(SPUISResultBuilder *)self buildPreviewButtonItems];
  [v6 setPreviewButtonItems:v17];

  v18 = [(SPUISPhotosResultBuilder *)self appBundleId];
  [v6 setCommandDetail:v18];

  [(SPUISResultBuilder *)self buildDefaultPropertiesForCardSection:v6];
  v19 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)buildThumbnail
{
  v3 = [(SPUISPhotosResultBuilder *)self entityType];
  v4 = [v3 isEqualToString:@"AlbumEntity"];

  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x277D4C530]);
    v6 = [(SPUISPhotosResultBuilder *)self photoIdentifier];
    [v5 setAlbumIdentifier:v6];
  }

  else
  {
    v7 = [(SPUISPhotosResultBuilder *)self entityType];
    v8 = [v7 isEqualToString:@"MemoryEntity"];

    if (v8)
    {
      v5 = objc_alloc_init(MEMORY[0x277D4C540]);
      v6 = [(SPUISPhotosResultBuilder *)self photoIdentifier];
      [v5 setMemoryIdentifier:v6];
    }

    else
    {
      v5 = objc_opt_new();
      v9 = [(SPUISPhotosResultBuilder *)self photoIdentifier];
      [v5 setPhotoIdentifier:v9];

      [v5 setIsSyndicated:{-[SPUISPhotosResultBuilder isSyndicated](self, "isSyndicated")}];
      v6 = [(SPUISPhotosResultBuilder *)self peopleInPhoto];
      [v5 setPeopleInPhoto:v6];
    }
  }

  return v5;
}

- (int)sfSceneTypeFrom:(int64_t)a3
{
  if (a3 >= 4)
  {
    return 1;
  }

  else
  {
    return a3;
  }
}

- (id)buildDetailedRowCardSection
{
  v27[1] = *MEMORY[0x277D85DE8];
  v25.receiver = self;
  v25.super_class = SPUISPhotosResultBuilder;
  v3 = [(SPUISResultBuilder *)&v25 buildDetailedRowCardSection];
  v4 = [(SPUISPhotosResultBuilder *)self dateCreated];

  if (v4)
  {
    v5 = [(SPUISPhotosResultBuilder *)self dateCreated];
    v4 = [SPUISDateFormatManager fullDateTimeStringsFromDate:v5];
  }

  v6 = [(SPUISResultBuilder *)self buildHighlightedMatchedTextWithTitle:0 headTruncation:1];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = 0;
    goto LABEL_14;
  }

  v10 = [(SPUISPhotosResultBuilder *)self locationKeywords];
  v11 = [v10 count];

  if (v11)
  {
    v12 = [(SPUISPhotosResultBuilder *)self locationKeywords];
    v13 = [(SPUISPhotosResultBuilder *)self locationKeywordIndices];
    v8 = [(SPUISPhotosResultBuilder *)self getValidStringFromArray:v12 withMatchedIndices:v13];

    if (v8)
    {
      v9 = 0;
      goto LABEL_10;
    }
  }

  v14 = [v4 firstObject];
  v15 = [v14 length];

  if (v15)
  {
    v8 = [v4 firstObject];
    v9 = 1;
    if (v8)
    {
LABEL_10:
      v7 = [MEMORY[0x277D4C598] textWithString:v8];
      if (v7)
      {
        goto LABEL_14;
      }
    }
  }

  else
  {
    v8 = 0;
    v9 = 0;
  }

  v24.receiver = self;
  v24.super_class = SPUISPhotosResultBuilder;
  v7 = [(SPUISResultBuilder *)&v24 buildTitle];
LABEL_14:
  [v3 setTitle:v7];
  if ([v4 count])
  {
    if (v9 && [v4 count] >= 2)
    {
      v16 = MEMORY[0x277D4C598];
      v17 = [v4 objectAtIndexedSubscript:1];
      v18 = [v16 textWithString:v17];
      v27[0] = v18;
      v19 = v27;
    }

    else
    {
      v20 = MEMORY[0x277D4C598];
      v17 = [v4 componentsJoinedByString:@" · "];
      v18 = [v20 textWithString:v17];
      v26 = v18;
      v19 = &v26;
    }

    v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];
    [v3 setDescriptions:v21];
  }

  v22 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)getValidStringFromArray:(id)a3 withMatchedIndices:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  if ([v5 count])
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v7 = v6;
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
          v12 = [v11 unsignedIntegerValue];
          if (v12 < [v5 count])
          {
            v8 = [v5 objectAtIndexedSubscript:{objc_msgSend(v11, "unsignedIntegerValue")}];
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
  v3 = [(SPUISPhotosResultBuilder *)self dateCreated];

  if (v3)
  {
    v4 = MEMORY[0x277D4C598];
    v5 = [(SPUISPhotosResultBuilder *)self dateCreated];
    v6 = [SPUISDateFormatManager dynamicDateTimeStringsFromDate:v5];
    v7 = [v6 componentsJoinedByString:@" · "];
    v8 = [v4 textWithString:v7];
    v13[0] = v8;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
  }

  else
  {
    v12.receiver = self;
    v12.super_class = SPUISPhotosResultBuilder;
    v9 = [(SPUISResultBuilder *)&v12 buildDescriptions];
  }

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)createSceneFrom:(id)a3
{
  v4 = [a3 unsignedLongValue];
  v5 = [(SPUISPhotosResultBuilder *)self scenePhotoIdentifiers];
  v6 = [v5 objectAtIndex:v4];

  v7 = objc_opt_new();
  v8 = [(SPUISPhotosResultBuilder *)self photoSceneTypes];
  v9 = [v8 objectAtIndex:v4];
  v10 = [v9 intValue];

  [v7 setSceneIdentifier:{objc_msgSend(v6, "unsignedLongLongValue")}];
  v11 = [(SPUISPhotosResultBuilder *)self photoSceneTypes];
  if (v4 >= [v11 count])
  {
    v12 = 1;
  }

  else
  {
    v12 = [(SPUISPhotosResultBuilder *)self sfSceneTypeFrom:v10];
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
  v3 = [(SPUISPhotosResultBuilder *)self sceneLabelsIndex];
  v4 = [v3 countByEnumeratingWithState:&v51 objects:v58 count:16];
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
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v51 + 1) + 8 * i);
        v9 = [v8 unsignedLongValue];
        v10 = [(SPUISPhotosResultBuilder *)self scenePhotoIdentifiers];
        if (v9 >= [v10 count])
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

      v5 = [v3 countByEnumeratingWithState:&v51 objects:v58 count:16];
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

        v15 = [*(*(&v47 + 1) + 8 * j) longValue];
        v43 = 0u;
        v44 = 0u;
        v45 = 0u;
        v46 = 0u;
        v16 = [(SPUISPhotosResultBuilder *)self sceneSynonymsCounts];
        v17 = [v16 countByEnumeratingWithState:&v43 objects:v56 count:16];
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
                objc_enumerationMutation(v16);
              }

              v15 -= [*(*(&v43 + 1) + 8 * v21) longValue];
              if (v15 < 0)
              {
                v19 = v22;
                goto LABEL_28;
              }

              ++v22;
              ++v21;
            }

            while (v18 != v21);
            v18 = [v16 countByEnumeratingWithState:&v43 objects:v56 count:16];
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
        v24 = [v23 unsignedIntValue];
        v25 = [(SPUISPhotosResultBuilder *)self scenePhotoIdentifiers];
        if ([v25 count] <= v24)
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
    v3 = [(SPUISPhotosResultBuilder *)self buildOneUpCommand];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = SPUISPhotosResultBuilder;
    v3 = [(SPUISResultBuilder *)&v5 buildCommand];
  }

  return v3;
}

- (id)buildOneUpCommand
{
  v3 = [(SPUISPhotosResultBuilder *)self buildThumbnail];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = objc_opt_new();
    [v4 setPhotosLibraryImage:v3];
    v5 = [(SPUISPhotosResultBuilder *)self matchedPeople];
    [v4 setMatchedPeople:v5];

    v6 = [(SPUISPhotosResultBuilder *)self scenes];
    [v4 setMatchedScenes:v6];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end