@interface PXTitleFontDiagnosticsService
+ (id)_statisticsDescriptionForAssetCollections:(id)collections usingFontIndexBlock:(id)block;
+ (id)diagnosticsDescriptionForAssetCollections:(id)collections;
- (BOOL)canProvideContextualViewController;
- (id)contextualViewController;
@end

@implementation PXTitleFontDiagnosticsService

- (id)contextualViewController
{
  v23 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  itemProviders = [(PXDiagnosticsService *)self itemProviders];
  v5 = [itemProviders countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v19;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(itemProviders);
        }

        v9 = *(*(&v18 + 1) + 8 * i);
        if ([v9 hasItemForIdentifier:@"PXDiagnosticsItemIdentifierAssetCollection"])
        {
          v10 = [v9 itemForIdentifier:@"PXDiagnosticsItemIdentifierAssetCollection"];
          [array addObject:v10];
        }
      }

      v6 = [itemProviders countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v6);
  }

  v11 = [MEMORY[0x1E6978760] transientCollectionListWithCollections:array title:0];
  v12 = MEMORY[0x1E69DD258];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __57__PXTitleFontDiagnosticsService_contextualViewController__block_invoke;
  v16[3] = &unk_1E7740590;
  v17 = v11;
  v13 = v11;
  v14 = [v12 px_viewControllerWithOutput:v16];

  return v14;
}

id __57__PXTitleFontDiagnosticsService_contextualViewController__block_invoke(uint64_t a1)
{
  v1 = [MEMORY[0x1E6978760] fetchCollectionsInCollectionList:*(a1 + 32) options:0];
  v2 = [PXTitleFontDiagnosticsService diagnosticsDescriptionForAssetCollections:v1];

  return v2;
}

- (BOOL)canProvideContextualViewController
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = +[PXDiagnosticsSettings sharedInstance];
  enableTitleFontService = [v3 enableTitleFontService];

  if (!enableTitleFontService)
  {
    return 0;
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  itemProviders = [(PXDiagnosticsService *)self itemProviders];
  v6 = [itemProviders countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(itemProviders);
        }

        if ([*(*(&v12 + 1) + 8 * i) hasItemForIdentifier:@"PXDiagnosticsItemIdentifierAssetCollection"])
        {
          v10 = 1;
          goto LABEL_13;
        }
      }

      v7 = [itemProviders countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_13:

  return v10;
}

+ (id)_statisticsDescriptionForAssetCollections:(id)collections usingFontIndexBlock:(id)block
{
  v40 = *MEMORY[0x1E69E9840];
  collectionsCopy = collections;
  blockCopy = block;
  defaultTitleFontNames = [MEMORY[0x1E6978650] defaultTitleFontNames];
  v8 = [defaultTitleFontNames count];

  v9 = objc_alloc_init(MEMORY[0x1E696AB50]);
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = collectionsCopy;
  v10 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
  v11 = 0x1E696A000uLL;
  if (v10)
  {
    v12 = v10;
    v13 = 0;
    v14 = *v36;
    do
    {
      v28 = v13;
      for (i = 0; i != v12; ++i)
      {
        if (*v36 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = blockCopy[2](blockCopy, *(*(&v35 + 1) + 8 * i));
        if (v16 >= v8)
        {
          [v9 addObject:@"Other"];
        }

        else
        {
          [*(v11 + 3480) numberWithUnsignedInteger:v16];
          v18 = v17 = v11;
          [v9 addObject:v18];

          v11 = v17;
        }
      }

      v13 = v28 + v12;
      v12 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
    }

    while (v12);
  }

  else
  {
    v13 = 0;
  }

  string = [MEMORY[0x1E696AD60] string];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __95__PXTitleFontDiagnosticsService__statisticsDescriptionForAssetCollections_usingFontIndexBlock___block_invoke;
  aBlock[3] = &unk_1E77405E0;
  v29 = v9;
  v32 = v29;
  v34 = v13;
  v20 = string;
  v33 = v20;
  v21 = _Block_copy(aBlock);
  if (v8)
  {
    v22 = v11;
    for (j = 0; j != v8; ++j)
    {
      v24 = [*(v22 + 3480) numberWithUnsignedInteger:j];
      v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"index:%li", j];
      v21[2](v21, v24, v25);
    }
  }

  if ([v29 containsObject:@"Other"])
  {
    v21[2](v21, @"Other", @"Other");
  }

  v26 = v20;

  return v20;
}

void __95__PXTitleFontDiagnosticsService__statisticsDescriptionForAssetCollections_usingFontIndexBlock___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = a3;
  v5 = [*(a1 + 32) countForObject:a2];
  v6 = (v5 / *(a1 + 48)) * 100.0;
  [*(a1 + 40) appendFormat:@"%@\tcount:%li\t%6.1f%%\t", v8, v5, v6];
  for (i = (ceilf(v6) * 0.5); i; --i)
  {
    [*(a1 + 40) appendString:@"*"];
  }

  [*(a1 + 40) appendString:@"\n"];
}

+ (id)diagnosticsDescriptionForAssetCollections:(id)collections
{
  v56 = *MEMORY[0x1E69E9840];
  collectionsCopy = collections;
  string = [MEMORY[0x1E696AD60] string];
  if ([collectionsCopy count] >= 2)
  {
    defaultTitleFontNames = [MEMORY[0x1E6978650] defaultTitleFontNames];
    [string appendFormat:@"Count: %li\n\n", objc_msgSend(collectionsCopy, "count")];
    v53[0] = MEMORY[0x1E69E9820];
    v53[1] = 3221225472;
    v53[2] = __75__PXTitleFontDiagnosticsService_diagnosticsDescriptionForAssetCollections___block_invoke;
    v53[3] = &unk_1E77405B8;
    v7 = defaultTitleFontNames;
    v54 = v7;
    v8 = [self _statisticsDescriptionForAssetCollections:collectionsCopy usingFontIndexBlock:v53];
    px_stringByIndentingNewLines = [v8 px_stringByIndentingNewLines];
    [string appendFormat:@"Font Distribution:\n\t%@\n", px_stringByIndentingNewLines];

    v51[0] = MEMORY[0x1E69E9820];
    v51[1] = 3221225472;
    v51[2] = __75__PXTitleFontDiagnosticsService_diagnosticsDescriptionForAssetCollections___block_invoke_2;
    v51[3] = &unk_1E77405B8;
    v10 = v7;
    v52 = v10;
    v11 = [self _statisticsDescriptionForAssetCollections:collectionsCopy usingFontIndexBlock:v51];
    px_stringByIndentingNewLines2 = [v11 px_stringByIndentingNewLines];
    [string appendFormat:@"Creation Date Hash Distribution:\n\t%@\n", px_stringByIndentingNewLines2];

    v49[0] = MEMORY[0x1E69E9820];
    v49[1] = 3221225472;
    v49[2] = __75__PXTitleFontDiagnosticsService_diagnosticsDescriptionForAssetCollections___block_invoke_3;
    v49[3] = &unk_1E77405B8;
    v50 = v10;
    v13 = v10;
    v14 = [self _statisticsDescriptionForAssetCollections:collectionsCopy usingFontIndexBlock:v49];
    px_stringByIndentingNewLines3 = [v14 px_stringByIndentingNewLines];
    [string appendFormat:@"Title Hash Distribution:\n\t%@\n", px_stringByIndentingNewLines3];

    [string appendString:@"Font Names:\n"];
    v47[0] = MEMORY[0x1E69E9820];
    v47[1] = 3221225472;
    v47[2] = __75__PXTitleFontDiagnosticsService_diagnosticsDescriptionForAssetCollections___block_invoke_4;
    v47[3] = &unk_1E7744F28;
    v16 = string;
    v48 = v16;
    [v13 enumerateObjectsUsingBlock:v47];
    [v16 appendString:@"\n"];
  }

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = collectionsCopy;
  v17 = [obj countByEnumeratingWithState:&v43 objects:v55 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = @"Assect Collection: %@\n";
    v20 = 0x1E6978000uLL;
    v21 = *v44;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v44 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v23 = *(*(&v43 + 1) + 8 * i);
        [string appendFormat:v19, v23];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v24 = v23;
          photosGraphProperties = [v24 photosGraphProperties];
          [photosGraphProperties objectForKeyedSubscript:@"titleCategory"];
          v26 = v25 = v19;
          [string appendFormat:@"Title Category (from Graph data): %@\n", v26];

          v27 = *(v20 + 2288);
          [v24 movieData];
          v28 = v18;
          v30 = v29 = v20;
          v31 = [v27 titleFontNameFromMovieData:v30];
          [string appendFormat:@"Font Name (from Movie data): %@\n", v31];

          v19 = v25;
          v20 = v29;
          v18 = v28;
        }

        titleCategory = [v23 titleCategory];
        v33 = [MEMORY[0x1E6978650] descriptionOfTitleCategory:{objc_msgSend(v23, "titleCategory")}];
        [string appendFormat:@"Title Category: %i “%@”\n", titleCategory, v33];

        creationDate = [v23 creationDate];
        [string appendFormat:@"Creation Date: %@\n", creationDate];

        v35 = MEMORY[0x1E6978650];
        creationDate2 = [v23 creationDate];
        [string appendFormat:@"Creation Date Hash: %li\n", objc_msgSend(v35, "titleFontNameHashFromDate:", creationDate2)];

        v37 = MEMORY[0x1E6978650];
        title = [v23 title];
        [string appendFormat:@"Title Hash: %li\n", objc_msgSend(v37, "titleFontNameHashFromString:", title)];

        titleFontName = [v23 titleFontName];
        [string appendFormat:@"Font Name: %@\n", titleFontName];

        [string appendString:@"\n"];
      }

      v18 = [obj countByEnumeratingWithState:&v43 objects:v55 count:16];
    }

    while (v18);
  }

  return string;
}

uint64_t __75__PXTitleFontDiagnosticsService_diagnosticsDescriptionForAssetCollections___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 titleFontName];
  v4 = [v2 indexOfObject:v3];

  return v4;
}

unint64_t __75__PXTitleFontDiagnosticsService_diagnosticsDescriptionForAssetCollections___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E6978650];
  v4 = [a2 creationDate];
  v5 = [v3 titleFontNameHashFromDate:v4];
  v6 = v5 % [*(a1 + 32) count];

  return v6;
}

unint64_t __75__PXTitleFontDiagnosticsService_diagnosticsDescriptionForAssetCollections___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E6978650];
  v4 = [a2 title];
  v5 = [v3 titleFontNameHashFromString:v4];
  v6 = v5 % [*(a1 + 32) count];

  return v6;
}

@end