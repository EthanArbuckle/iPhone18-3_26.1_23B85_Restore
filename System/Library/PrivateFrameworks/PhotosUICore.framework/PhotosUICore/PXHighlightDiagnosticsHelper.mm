@interface PXHighlightDiagnosticsHelper
+ (BOOL)generateSectionTitles:(id *)a3 andTableContent:(id *)a4 forIndex:(int64_t)a5 sourceHighlight:(id)a6 sourceDictionary:(id)a7;
+ (id)preprocessDictionaryForHighlight:(id)a3 inPhotoLibrary:(id)a4;
@end

@implementation PXHighlightDiagnosticsHelper

+ (BOOL)generateSectionTitles:(id *)a3 andTableContent:(id *)a4 forIndex:(int64_t)a5 sourceHighlight:(id)a6 sourceDictionary:(id)a7
{
  v83[3] = *MEMORY[0x1E69E9840];
  v11 = a6;
  v12 = a7;
  v13 = v12;
  if (a3)
  {
    v14 = a4 == 0;
  }

  else
  {
    v14 = 1;
  }

  v15 = !v14;
  if (!v14)
  {
    if (a5 == 3)
    {
      v39 = [v12 objectForKeyedSubscript:@"backingMoments"];
      v50 = objc_opt_new();
      v51 = objc_opt_new();
      v62[0] = MEMORY[0x1E69E9820];
      v62[1] = 3221225472;
      v62[2] = __112__PXHighlightDiagnosticsHelper_generateSectionTitles_andTableContent_forIndex_sourceHighlight_sourceDictionary___block_invoke_3;
      v62[3] = &unk_1E7739CF8;
      v63 = v50;
      v64 = v51;
      v48 = v51;
      v49 = v50;
      [v39 enumerateObjectsUsingBlock:v62];
      v52 = v49;
      *a3 = v49;
      v53 = v48;
      *a4 = v48;

      v42 = v63;
LABEL_16:

      goto LABEL_17;
    }

    if (!a5)
    {
      v16 = [v12 objectForKeyedSubscript:@"debugInfo"];
      v83[0] = @"Generic";
      v83[1] = @"Enrichment";
      v83[2] = @"Graph Info";
      *a3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v83 count:3];
      v81[0] = @"Generic";
      v17 = [MEMORY[0x1E695DF70] array];
      v82[0] = v17;
      v81[1] = @"Enrichment";
      v18 = [MEMORY[0x1E695DF70] array];
      v82[1] = v18;
      v81[2] = @"Graph Info";
      v19 = [MEMORY[0x1E695DF70] array];
      v82[2] = v19;
      v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v82 forKeys:v81 count:3];
      v61 = [v20 mutableCopy];

      v21 = [v16 objectForKeyedSubscript:@"Enrichment Version"];
      v22 = [v16 objectForKeyedSubscript:@"Highlight Version"];
      v23 = [v21 isEqual:v22];

      v24 = @"OUT-OF-DATE!!!";
      if (v23)
      {
        v24 = @"Up-to-Date";
      }

      v25 = v24;
      v60 = v25;
      v26 = [v16 objectForKeyedSubscript:@"Key Asset UUID"];
      v55 = v26 == 0;

      v57 = v16;
      v27 = [v16 objectForKeyedSubscript:@"Key Asset UUID"];
      v28 = v27;
      v29 = @"NO KEY ASSET!!!";
      if (v27)
      {
        v29 = v27;
      }

      v59 = v29;

      v30 = [v16 objectForKeyedSubscript:@"Promotion Score"];
      [v30 doubleValue];
      v32 = v31 < 0.3;

      v79[0] = @"Is Up-to-Date";
      v79[1] = @"Key Asset UUID";
      v80[0] = v25;
      v80[1] = v59;
      v56 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v80 forKeys:v79 count:2];
      v77[0] = @"Is Up-to-Date";
      v33 = [MEMORY[0x1E696AD98] numberWithInt:v23 ^ 1u];
      v78[0] = v33;
      v77[1] = @"Key Asset UUID";
      v34 = [MEMORY[0x1E696AD98] numberWithInt:v55];
      v78[1] = v34;
      v77[2] = @"Promotion Score";
      v35 = [MEMORY[0x1E696AD98] numberWithBool:v32];
      v78[2] = v35;
      v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v78 forKeys:v77 count:3];

      v75[0] = @"Generic";
      v74[0] = @"UUID";
      v74[1] = @"Type";
      v74[2] = @"Kind";
      v74[3] = @"Category";
      v74[4] = @"Sharing Composition";
      v74[5] = @"Start Date (Local)";
      v74[6] = @"End Date (Local)";
      v74[7] = @"Start Date (UTC)";
      v74[8] = @"End Date (UTC)";
      v74[9] = @"Start TZ Offset";
      v74[10] = @"End TZ Offset";
      v74[11] = @"Number of Moments";
      v74[12] = @"Highlight Version";
      v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:v74 count:13];
      v75[1] = @"Enrichment";
      v76[0] = v37;
      v73[0] = @"Is Up-to-Date";
      v73[1] = @"Is Enriched";
      v73[2] = @"Enrichment State";
      v73[3] = @"Visibility State Private";
      v73[4] = @"Visibility State Shared";
      v73[5] = @"Visibility State Mixed";
      v73[6] = @"Enrichment Version";
      v73[7] = @"Title";
      v73[8] = @"Subtitle";
      v73[9] = @"Promotion Score";
      v73[10] = @"Meanings";
      v73[11] = @"Mood";
      v73[12] = @"Is Curated";
      v73[13] = @"Number of Assets";
      v73[14] = @"Key Asset UUID";
      v73[15] = @"Number of Curated Assets";
      v73[16] = @"Number of Extended Curated Assets";
      v38 = [MEMORY[0x1E695DEC8] arrayWithObjects:v73 count:17];
      v76[1] = v38;
      v39 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v76 forKeys:v75 count:2];

      v68[0] = MEMORY[0x1E69E9820];
      v68[1] = 3221225472;
      v68[2] = __112__PXHighlightDiagnosticsHelper_generateSectionTitles_andTableContent_forIndex_sourceHighlight_sourceDictionary___block_invoke;
      v68[3] = &unk_1E772FE30;
      v69 = v61;
      v70 = v56;
      v71 = v57;
      v40 = v36;
      v72 = v40;
      v41 = v57;
      v58 = v56;
      v42 = v61;
      [v39 enumerateKeysAndObjectsUsingBlock:v68];
      v43 = [v42 objectForKeyedSubscript:@"Graph Info"];
      v44 = [v41 objectForKeyedSubscript:@"Graph Info"];
      v65[0] = MEMORY[0x1E69E9820];
      v65[1] = 3221225472;
      v65[2] = __112__PXHighlightDiagnosticsHelper_generateSectionTitles_andTableContent_forIndex_sourceHighlight_sourceDictionary___block_invoke_2;
      v65[3] = &unk_1E7742898;
      v66 = v40;
      v67 = v43;
      v45 = v43;
      v46 = v40;
      [v44 enumerateKeysAndObjectsUsingBlock:v65];
      v47 = v42;
      *a4 = v42;

      v48 = v59;
      v49 = v60;

      goto LABEL_16;
    }
  }

LABEL_17:

  return v15;
}

void __112__PXHighlightDiagnosticsHelper_generateSectionTitles_andTableContent_forIndex_sourceHighlight_sourceDictionary___block_invoke(id *a1, void *a2, void *a3)
{
  v42 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v25 = v5;
  v30 = [a1[4] objectForKeyedSubscript:v5];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = v6;
  v32 = [obj countByEnumeratingWithState:&v33 objects:v41 count:16];
  if (v32)
  {
    v31 = *v34;
    v29 = *MEMORY[0x1E69DB648];
    v7 = *MEMORY[0x1E69DB968];
    v8 = *MEMORY[0x1E69DB958];
    v27 = *MEMORY[0x1E69DB650];
    v28 = a1;
    do
    {
      for (i = 0; i != v32; ++i)
      {
        if (*v34 != v31)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v33 + 1) + 8 * i);
        v11 = [a1[5] objectForKeyedSubscript:v10];
        if (!v11)
        {
          v11 = [a1[6] objectForKeyedSubscript:v10];
          if (!v11)
          {
            continue;
          }
        }

        v12 = v11;
        v13 = objc_alloc(MEMORY[0x1E696AD40]);
        v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[ %@ ] ", v10];
        v39 = v29;
        v15 = [MEMORY[0x1E69DB878] systemFontOfSize:15.0 weight:v7];
        v40 = v15;
        v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v40 forKeys:&v39 count:1];
        v17 = [v13 initWithString:v14 attributes:v16];

        v18 = objc_alloc(MEMORY[0x1E696AAB0]);
        v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", v12];
        v37[0] = v29;
        v20 = [MEMORY[0x1E69DB878] systemFontOfSize:15.0 weight:v8];
        a1 = v28;
        v37[1] = v27;
        v38[0] = v20;
        v21 = [v28[7] objectForKeyedSubscript:v10];
        if ([v21 BOOLValue])
        {
          [MEMORY[0x1E69DC888] redColor];
        }

        else
        {
          [MEMORY[0x1E69DC888] labelColor];
        }
        v22 = ;
        v38[1] = v22;
        v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v38 forKeys:v37 count:2];
        v24 = [v18 initWithString:v19 attributes:v23];
        [v17 appendAttributedString:v24];

        [v30 addObject:v17];
      }

      v32 = [obj countByEnumeratingWithState:&v33 objects:v41 count:16];
    }

    while (v32);
  }
}

void __112__PXHighlightDiagnosticsHelper_generateSectionTitles_andTableContent_forIndex_sourceHighlight_sourceDictionary___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v27[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v5 componentsJoinedByString:{@", "}];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = MEMORY[0x1E696AEC0];
      [v5 doubleValue];
      [v8 stringWithFormat:@"%.3f", v9];
    }

    else
    {
      [v5 description];
    }
    v7 = ;
  }

  v10 = v7;
  v11 = objc_alloc(MEMORY[0x1E696AD40]);
  v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[ %@ ] ", v6];
  v26 = *MEMORY[0x1E69DB648];
  v13 = v26;
  v14 = [MEMORY[0x1E69DB878] systemFontOfSize:15.0 weight:*MEMORY[0x1E69DB968]];
  v27[0] = v14;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:&v26 count:1];
  v16 = [v11 initWithString:v12 attributes:v15];

  v17 = objc_alloc(MEMORY[0x1E696AAB0]);
  v24[0] = v13;
  v18 = [MEMORY[0x1E69DB878] systemFontOfSize:15.0 weight:*MEMORY[0x1E69DB958]];
  v25[0] = v18;
  v24[1] = *MEMORY[0x1E69DB650];
  v19 = a1;
  v20 = [*(a1 + 32) objectForKeyedSubscript:v6];

  if ([v20 BOOLValue])
  {
    [MEMORY[0x1E69DC888] redColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] labelColor];
  }
  v21 = ;
  v25[1] = v21;
  v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:2];
  v23 = [v17 initWithString:v10 attributes:v22];
  [v16 appendAttributedString:v23];

  [*(v19 + 40) addObject:v16];
}

void __112__PXHighlightDiagnosticsHelper_generateSectionTitles_andTableContent_forIndex_sourceHighlight_sourceDictionary___block_invoke_3(uint64_t a1, void *a2, int a3)
{
  v37[4] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Moment %d", (a3 + 1)];
  [v30 stringByAppendingString:@" - Scores"];
  v32 = v31 = a1;
  [*(a1 + 32) addObject:?];
  v6 = MEMORY[0x1E696AEC0];
  v29 = [v5 objectForKeyedSubscript:@"numberOfAssets"];
  v7 = [v6 stringWithFormat:@"Asset Count: %lu", objc_msgSend(v29, "unsignedIntegerValue")];
  v37[0] = v7;
  v8 = MEMORY[0x1E696AEC0];
  v9 = [v5 objectForKeyedSubscript:@"curationScore"];
  [v9 floatValue];
  v11 = [v8 stringWithFormat:@"Curation: %.3f", v10];
  v37[1] = v11;
  v12 = MEMORY[0x1E696AEC0];
  v13 = [v5 objectForKeyedSubscript:@"graphScore"];
  [v13 floatValue];
  v15 = [v12 stringWithFormat:@"Graph: %.3f", v14];
  v37[2] = v15;
  v16 = MEMORY[0x1E696AEC0];
  v17 = [v5 objectForKeyedSubscript:@"neighborScore"];
  [v17 floatValue];
  v19 = [v16 stringWithFormat:@"Neighbor: %.3f", v18];
  v37[3] = v19;
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:4];
  v21 = [v20 mutableCopy];

  v22 = [v5 objectForKeyedSubscript:@"matchingScore"];

  if (v22)
  {
    v23 = MEMORY[0x1E696AEC0];
    v24 = [v5 objectForKeyedSubscript:@"matchingScore"];
    [v24 floatValue];
    v26 = [v23 stringWithFormat:@"Matching: %.3f", v25];
    [v21 addObject:v26];
  }

  [*(v31 + 40) setObject:v21 forKeyedSubscript:v32];
  v27 = [v5 objectForKeyedSubscript:@"keywords"];
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __112__PXHighlightDiagnosticsHelper_generateSectionTitles_andTableContent_forIndex_sourceHighlight_sourceDictionary___block_invoke_4;
  v33[3] = &unk_1E7739D20;
  v34 = v30;
  v35 = *(v31 + 32);
  v36 = *(v31 + 40);
  v28 = v30;
  [v27 enumerateKeysAndObjectsUsingBlock:v33];
}

void __112__PXHighlightDiagnosticsHelper_generateSectionTitles_andTableContent_forIndex_sourceHighlight_sourceDictionary___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if ([v5 count])
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ - %@", *(a1 + 32), v7];
    [*(a1 + 40) addObject:v6];
    [*(a1 + 48) setObject:v5 forKeyedSubscript:v6];
  }
}

+ (id)preprocessDictionaryForHighlight:(id)a3 inPhotoLibrary:(id)a4
{
  v5 = MEMORY[0x1E695DF90];
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(v5);
  v9 = [v7 localIdentifier];
  v66 = 0;
  v10 = [v6 highlightDebugInformationForHighlightWithLocalIdentifier:v9 error:&v66];

  v62 = v10;
  v63 = v8;
  [v8 addEntriesFromDictionary:v10];
  v11 = [v6 librarySpecificFetchOptions];
  [v11 setShouldPrefetchCount:1];
  v12 = [MEMORY[0x1E6978630] fetchAssetsInAssetCollection:v7 options:v11];
  v60 = [MEMORY[0x1E6978630] fetchKeyCuratedAssetInAssetCollection:v7 referenceAsset:0];
  [v11 setHighlightCurationType:1];
  v65 = [MEMORY[0x1E6978630] fetchAssetsInAssetCollection:v7 options:v11];
  [v11 setHighlightCurationType:2];
  v13 = [MEMORY[0x1E6978630] fetchAssetsInAssetCollection:v7 options:v11];
  v14 = [v7 uuid];
  v15 = [v6 librarySpecificFetchOptions];

  v16 = [MEMORY[0x1E696AE18] predicateWithFormat:@"highlight.uuid == %@", v14];
  [v15 setInternalPredicate:v16];

  [v15 setShouldPrefetchCount:1];
  v61 = v15;
  v64 = [MEMORY[0x1E6978650] fetchMomentsWithOptions:v15];
  v17 = [MEMORY[0x1E695DF90] dictionary];
  [v17 setObject:v14 forKeyedSubscript:@"UUID"];
  v18 = [v7 localizedTitle];
  [v17 setObject:v18 forKeyedSubscript:@"Title"];

  v19 = [v7 localizedSubtitle];
  v20 = [v19 stringByReplacingOccurrencesOfString:@"\n" withString:@"\\n"];
  [v17 setObject:v20 forKeyedSubscript:@"Subtitle"];

  v21 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v22 = [MEMORY[0x1E695DFE8] timeZoneWithName:@"UTC"];
  [v21 setTimeZone:v22];

  [v21 setDateStyle:1];
  [v21 setTimeStyle:2];
  v23 = [v7 startDate];
  v24 = [v21 stringFromDate:v23];
  [v17 setObject:v24 forKeyedSubscript:@"Start Date (UTC)"];

  v25 = [v7 endDate];
  v26 = [v21 stringFromDate:v25];
  [v17 setObject:v26 forKeyedSubscript:@"End Date (UTC)"];

  v27 = [v7 localStartDate];
  v28 = [v21 stringFromDate:v27];
  [v17 setObject:v28 forKeyedSubscript:@"Start Date (Local)"];

  v29 = [v7 localEndDate];
  v30 = [v21 stringFromDate:v29];
  [v17 setObject:v30 forKeyedSubscript:@"End Date (Local)"];

  v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%+0.1f hours", objc_msgSend(v7, "startTimeZoneOffset") / 3600.0];
  [v17 setObject:v31 forKeyedSubscript:@"Start TZ Offset"];

  v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%+0.1f hours", objc_msgSend(v7, "endTimeZoneOffset") / 3600.0];
  [v17 setObject:v32 forKeyedSubscript:@"End TZ Offset"];

  [v7 type];
  v33 = PHShortDescriptionForPhotosHighlightType();
  [v17 setObject:v33 forKeyedSubscript:@"Type"];

  [v7 kind];
  v34 = PHShortDescriptionForPhotosHighlightKind();
  [v17 setObject:v34 forKeyedSubscript:@"Kind"];

  [v7 category];
  v35 = PHShortDescriptionForPhotosHighlightCategory();
  [v17 setObject:v35 forKeyedSubscript:@"Category"];

  [v7 sharingComposition];
  v36 = PHDescriptionForSharingComposition();
  [v17 setObject:v36 forKeyedSubscript:@"Sharing Composition"];

  v37 = MEMORY[0x1E696AEC0];
  [v7 promotionScore];
  v39 = [v37 stringWithFormat:@"%.3f", v38];
  [v17 setObject:v39 forKeyedSubscript:@"Promotion Score"];

  if ([v7 isEnriched])
  {
    v40 = @"YES";
  }

  else
  {
    v40 = @"NO";
  }

  [v17 setObject:v40 forKeyedSubscript:@"Is Enriched"];
  [v7 enrichmentState];
  v41 = PHShortDescriptionForPhotosHighlightEnrichmentState();
  [v17 setObject:v41 forKeyedSubscript:@"Enrichment State"];

  [v7 visibilityState];
  v42 = PHShortDescriptionForPhotosHighlightVisibilityState();
  [v17 setObject:v42 forKeyedSubscript:@"Visibility State Private"];

  [v7 visibilityStateShared];
  v43 = PHShortDescriptionForPhotosHighlightVisibilityState();
  [v17 setObject:v43 forKeyedSubscript:@"Visibility State Shared"];

  [v7 visibilityStateMixed];
  v44 = PHShortDescriptionForPhotosHighlightVisibilityState();
  [v17 setObject:v44 forKeyedSubscript:@"Visibility State Mixed"];

  [v7 mood];
  v45 = PHStringForMemoryMood();
  [v17 setObject:v45 forKeyedSubscript:@"Mood"];

  v46 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v12, "count")}];
  [v17 setObject:v46 forKeyedSubscript:@"Number of Assets"];

  v47 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v13, "count")}];
  [v17 setObject:v47 forKeyedSubscript:@"Number of Extended Curated Assets"];

  v48 = [v60 firstObject];
  v49 = [v48 uuid];
  [v17 setObject:v49 forKeyedSubscript:@"Key Asset UUID"];

  v50 = [MEMORY[0x1E696AD98] numberWithShort:{objc_msgSend(v7, "highlightVersion")}];
  [v17 setObject:v50 forKeyedSubscript:@"Highlight Version"];

  v51 = [MEMORY[0x1E696AD98] numberWithShort:{objc_msgSend(v7, "enrichmentVersion")}];
  [v17 setObject:v51 forKeyedSubscript:@"Enrichment Version"];

  v52 = [v7 kind];
  if (v52 != 3)
  {
    if (v52)
    {
      goto LABEL_8;
    }

    v53 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v64, "count")}];
    [v17 setObject:v53 forKeyedSubscript:@"Number of Moments"];
  }

  v54 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v65, "count")}];
  [v17 setObject:v54 forKeyedSubscript:@"Number of Curated Assets"];

LABEL_8:
  v55 = [v62 objectForKeyedSubscript:@"sortedMeaningLabels"];
  v56 = v55;
  if (v55)
  {
    v57 = [v55 componentsJoinedByString:{@", "}];
    [v17 setObject:v57 forKeyedSubscript:@"Meanings"];
  }

  else
  {
    [v17 setObject:@"-" forKeyedSubscript:@"Meanings"];
  }

  v58 = [v62 objectForKeyedSubscript:@"collectionsInfo"];
  if (v58)
  {
    [v17 setObject:v58 forKeyedSubscript:@"Graph Info"];
  }

  [v63 setObject:v17 forKeyedSubscript:@"debugInfo"];

  return v63;
}

@end