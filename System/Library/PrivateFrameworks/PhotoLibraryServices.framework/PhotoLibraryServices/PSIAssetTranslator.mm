@interface PSIAssetTranslator
+ (BOOL)_containsPersonWithSceneTaxonomyProvider:(id)a3 forAsset:(id)a4;
+ (id)_nameForContributor:(id)a3;
+ (id)psiAssetFromAsset:(id)a3 fetchHelper:(id)a4 propertySets:(unint64_t)a5 indexingContext:(id)a6 documentObservation:(id)a7;
+ (id)psiAssetFromAsset:(id)a3 indexingContext:(id)a4 documentObservation:(id)a5;
+ (void)_appendAssetTextDataToAsset:(id)a3 forAsset:(id)a4;
+ (void)_appendAudioClassificationToAsset:(id)a3 forAsset:(id)a4;
+ (void)_appendContributorToAsset:(id)a3 forAsset:(id)a4;
+ (void)_appendDateCreatedToAsset:(id)a3 indexingContext:(id)a4 forAsset:(id)a5;
+ (void)_appendExifDataToAsset:(id)a3 forAsset:(id)a4;
+ (void)_appendFavoriteToAsset:(id)a3 forAsset:(id)a4;
+ (void)_appendGEODataToAsset:(id)a3 forAsset:(id)a4 countrySynonymProvider:(id)a5;
+ (void)_appendGraphDataToAsset:(id)a3 forMomentFromFetchHelper:(id)a4 hasValidReverseLocationData:(BOOL)a5 indexingContext:(id)a6;
+ (void)_appendHumanActionsToAsset:(id)a3 forAsset:(id)a4 fetchHelper:(id)a5;
+ (void)_appendKeywords:(id)a3 toAsset:(id)a4;
+ (void)_appendLibraryScopeToAsset:(id)a3 forAsset:(id)a4;
+ (void)_appendMediaTypesToAsset:(id)a3 forAsset:(id)a4;
+ (void)_appendOCRTextForAsset:(id)a3 documentObservation:(id)a4;
+ (void)_appendPerson:(id)a3 fetchHelper:(id)a4 toAsset:(id)a5;
+ (void)_appendPersonsAndPetsToAsset:(id)a3 forAsset:(id)a4 fetchHelper:(id)a5;
+ (void)_appendPet:(id)a3 fetchHelper:(id)a4 toAsset:(id)a5;
+ (void)_appendPrivateEncryptedComputeScenes:(id)a3 forAsset:(id)a4 fetchHelper:(id)a5 csuTaxonomyObjectStore:(id)a6 locale:(id)a7;
+ (void)_appendSavedFromAppToAsset:(id)a3 forAsset:(id)a4;
+ (void)_appendSceneClassificationsToAsset:(id)a3 sceneTaxonomyProvider:(id)a4 forAsset:(id)a5 fetchHelper:(id)a6;
+ (void)_appendStickerSuggestionsToAsset:(id)a3 fetchHelper:(id)a4 sceneTaxonomyProvider:(id)a5 forAsset:(id)a6;
+ (void)_appendStyleCastToAsset:(id)a3 forAsset:(id)a4;
+ (void)_appendUtilityTypesToAsset:(id)a3 forAsset:(id)a4 indexingContext:(id)a5;
@end

@implementation PSIAssetTranslator

+ (void)_appendStyleCastToAsset:(id)a3 forAsset:(id)a4
{
  v5 = a3;
  LODWORD(a4) = [a4 currentSleetCast];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __55__PSIAssetTranslator__appendStyleCastToAsset_forAsset___block_invoke;
  v7[3] = &unk_1E756CFD8;
  v8 = v5;
  v6 = v5;
  PLSearchStringsForAdjustmentStyleCast(a4, v7);
}

void __55__PSIAssetTranslator__appendStyleCastToAsset_forAsset___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if ([v5 length])
  {
    v7 = *(a1 + 32);
    v8 = v5;
    if ([v8 length])
    {
      [v7 addContentString:v8 category:2900 owningCategory:0];
    }
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    do
    {
      v13 = 0;
      do
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v17 + 1) + 8 * v13);
        v15 = *(a1 + 32);
        v16 = v14;
        if ([v16 length])
        {
          [v15 addContentString:v16 category:2901 owningCategory:0];
        }

        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }
}

+ (void)_appendOCRTextForAsset:(id)a3 documentObservation:(id)a4
{
  v55 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  if (v6)
  {
    v7 = PLSearchIndexGetLog();
    v8 = os_signpost_id_generate(v7);
    v9 = v7;
    v10 = v9;
    v32 = v8 - 1;
    if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "PSIAssetTranslator: OCR", "", buf, 2u);
    }

    spid = v8;
    v31 = v10;

    v33 = v6;
    [PLSearchOCRUtilities ocrTextLinesFromDocumentObservation:v6];
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    obj = v50 = 0u;
    v36 = [obj countByEnumeratingWithState:&v47 objects:v54 count:16];
    if (v36)
    {
      v35 = *v48;
      do
      {
        v11 = 0;
        do
        {
          if (*v48 != v35)
          {
            objc_enumerationMutation(obj);
          }

          v37 = v11;
          v12 = *(*(&v47 + 1) + 8 * v11);
          v43 = 0u;
          v44 = 0u;
          v45 = 0u;
          v46 = 0u;
          v38 = [v12 candidates];
          v13 = [v38 countByEnumeratingWithState:&v43 objects:v53 count:16];
          if (v13)
          {
            v14 = v13;
            v15 = *v44;
            do
            {
              v16 = 0;
              do
              {
                if (*v44 != v15)
                {
                  objc_enumerationMutation(v38);
                }

                v17 = *(*(&v43 + 1) + 8 * v16);
                v39 = 0u;
                v40 = 0u;
                v41 = 0u;
                v42 = 0u;
                v18 = [v17 words];
                v19 = [v18 countByEnumeratingWithState:&v39 objects:v52 count:16];
                if (v19)
                {
                  v20 = v19;
                  v21 = *v40;
                  do
                  {
                    v22 = 0;
                    do
                    {
                      if (*v40 != v21)
                      {
                        objc_enumerationMutation(v18);
                      }

                      v23 = *(*(&v39 + 1) + 8 * v22);
                      v24 = v5;
                      v25 = v23;
                      if ([v25 length])
                      {
                        [v24 addContentString:v25 category:1203 owningCategory:0];
                      }

                      ++v22;
                    }

                    while (v20 != v22);
                    v20 = [v18 countByEnumeratingWithState:&v39 objects:v52 count:16];
                  }

                  while (v20);
                }

                ++v16;
              }

              while (v16 != v14);
              v14 = [v38 countByEnumeratingWithState:&v43 objects:v53 count:16];
            }

            while (v14);
          }

          v11 = v37 + 1;
        }

        while (v37 + 1 != v36);
        v36 = [obj countByEnumeratingWithState:&v47 objects:v54 count:16];
      }

      while (v36);
    }

    v6 = v33;
    if ([obj count])
    {
      v26 = PLServicesLocalizedFrameworkString();
      v27 = v5;
      if ([v26 length])
      {
        [v27 addContentString:v26 category:1205 owningCategory:0];
      }
    }

    v28 = v31;
    v29 = v28;
    if (v32 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v28))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v29, OS_SIGNPOST_INTERVAL_END, spid, "PSIAssetTranslator: OCR", "", buf, 2u);
    }
  }
}

+ (void)_appendAssetTextDataToAsset:(id)a3 forAsset:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v6 additionalAttributes];
  v8 = [v7 title];
  v9 = v5;
  if ([v8 length])
  {
    [v9 addContentString:v8 category:1201 owningCategory:0];
  }

  v10 = [v6 longDescription];

  v11 = v9;
  if ([v10 length])
  {
    [v11 addContentString:v10 category:1202 owningCategory:0];
  }
}

+ (id)_nameForContributor:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 nameComponents];
  if (v4)
  {
    v5 = [MEMORY[0x1E696ADF8] localizedStringFromPersonNameComponents:v4 style:0 options:0];
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v7 = 138412290;
      v8 = v3;
      _os_log_error_impl(&dword_19BF1F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Search Index: No name for contributor: %@", &v7, 0xCu);
    }

    v5 = 0;
  }

  return v5;
}

+ (void)_appendContributorToAsset:(id)a3 forAsset:(id)a4
{
  v37 = *MEMORY[0x1E69E9840];
  v25 = a3;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v21 = a4;
  obj = [v21 libraryScopeContributors];
  v5 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v5)
  {
    v23 = *v33;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v33 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v32 + 1) + 8 * i);
        v8 = [a1 _nameForContributor:v7];
        v9 = [v7 emailAddress];
        v10 = [v7 phoneNumber];
        v11 = objc_opt_new();
        if ([v7 isCurrentUser])
        {
          v12 = PLServicesSharedLibraryLocalizedFrameworkString();
          [v11 addObject:v12];
          v13 = PLServicesSharedLibraryLocalizedFrameworkString();
          [v11 addObject:v13];
        }

        v14 = PLServicesSharedLibraryLocalizedFrameworkString();
        if ([v8 length])
        {
          v15 = PFStringWithValidatedFormat();
          [v11 addObject:{v15, v8}];
        }

        if ([v9 length])
        {
          v16 = PFStringWithValidatedFormat();
          [v11 addObject:{v16, v9}];
        }

        if ([v10 length])
        {
          v17 = PFStringWithValidatedFormat();
          [v11 addObject:{v17, v10}];
        }

        v18 = [v7 uuid];
        v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@/%@", @"contributor", v18];

        v30[0] = 0;
        v30[1] = v30;
        v30[2] = 0x3032000000;
        v30[3] = __Block_byref_object_copy__46858;
        v30[4] = __Block_byref_object_dispose__46859;
        v31 = 0;
        v26[0] = MEMORY[0x1E69E9820];
        v26[1] = 3221225472;
        v26[2] = __57__PSIAssetTranslator__appendContributorToAsset_forAsset___block_invoke;
        v26[3] = &unk_1E756F148;
        v27 = v25;
        v20 = v19;
        v28 = v20;
        v29 = v30;
        [v11 enumerateObjectsUsingBlock:v26];

        _Block_object_dispose(v30, 8);
      }

      v5 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v5);
  }
}

void __57__PSIAssetTranslator__appendContributorToAsset_forAsset___block_invoke(void *a1, void *a2, uint64_t a3)
{
  v6 = a2;
  v7 = a1[4];
  v8 = a1[5];
  v9 = v6;
  if (a3)
  {
    [v7 addSynonym:v6 lookupIdentifier:v8 category:1321 originalContentString:*(*(a1[6] + 8) + 40)];
  }

  else
  {
    [v7 addContentString:v6 identifier:v8 category:1320 owningCategory:0];
    objc_storeStrong((*(a1[6] + 8) + 40), a2);
  }
}

+ (void)_appendLibraryScopeToAsset:(id)a3 forAsset:(id)a4
{
  v11 = a3;
  if ([a4 hasLibraryScope])
  {
    v5 = PLServicesSharedLibraryLocalizedFrameworkString();
    v6 = v11;
    if (![v5 length])
    {
      goto LABEL_7;
    }

    v7 = v6;
    v8 = v5;
    v9 = 2400;
  }

  else
  {
    v5 = PLServicesSharedLibraryLocalizedFrameworkString();
    v10 = v11;
    if (![v5 length])
    {
      goto LABEL_7;
    }

    v7 = v10;
    v8 = v5;
    v9 = 2401;
  }

  [v7 addContentString:v8 category:v9 owningCategory:0];
LABEL_7:
}

+ (void)_appendExifDataToAsset:(id)a3 forAsset:(id)a4
{
  v8 = a3;
  v5 = [a4 formattedCameraModel];
  if ([v5 length])
  {
    v6 = v8;
    v7 = v5;
    if ([v7 length])
    {
      [v6 addContentString:v7 category:2300 owningCategory:0];
    }
  }
}

+ (void)_appendPet:(id)a3 fetchHelper:(id)a4 toAsset:(id)a5
{
  v44 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if ([v7 detectionType] == 3 || objc_msgSend(v7, "detectionType") == 4 || objc_msgSend(v7, "detectionType") == 2)
  {
    v30 = v8;
    v10 = [v7 personUUID];
    v11 = [v7 fullName];
    v12 = v10;
    v29 = v9;
    v13 = v9;
    v14 = v11;
    v15 = v12;
    if ([v14 length] || objc_msgSend(v15, "length"))
    {
      [v13 addContentString:v14 identifier:v15 category:1330 owningCategory:0];
    }

    v16 = PLServicesLocalizedFrameworkString();
    v17 = v15;
    [v13 addSynonym:v16 lookupIdentifier:v17 category:1331 originalContentString:v14];

    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v18 = PLSearchLocalizedSynonymsForKey(@"SEARCH_RESULT_PET");
    v19 = [v18 countByEnumeratingWithState:&v35 objects:v39 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v36;
      do
      {
        v22 = 0;
        do
        {
          if (*v36 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = *(*(&v35 + 1) + 8 * v22);
          v24 = v17;
          [v13 addSynonym:v23 lookupIdentifier:v24 category:1331 originalContentString:v14];

          ++v22;
        }

        while (v20 != v22);
        v20 = [v18 countByEnumeratingWithState:&v35 objects:v39 count:16];
      }

      while (v20);
    }

    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __53__PSIAssetTranslator__appendPet_fetchHelper_toAsset___block_invoke;
    v31[3] = &unk_1E756D0A8;
    v32 = v13;
    v33 = v17;
    v34 = v14;
    v25 = v14;
    v26 = v17;
    v8 = v30;
    [v30 enumerateSearchEntityRelationsForPerson:v7 block:v31];

    v9 = v29;
  }

  else
  {
    v26 = PLSearchBackendModelTranslationGetLog();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = [v7 detectionType];
      v28 = [v7 personUUID];
      *buf = 67109378;
      v41 = v27;
      v42 = 2112;
      v43 = v28;
      _os_log_impl(&dword_19BF1F000, v26, OS_LOG_TYPE_ERROR, "Unexpected detection type (%hd) for pet: %@", buf, 0x12u);
    }
  }
}

void __53__PSIAssetTranslator__appendPet_fetchHelper_toAsset___block_invoke(id *a1, void *a2)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __53__PSIAssetTranslator__appendPet_fetchHelper_toAsset___block_invoke_2;
  v4[3] = &unk_1E756D080;
  v5 = a1[4];
  v6 = a1[5];
  v7 = a1[6];
  PLSearchStringsForPersonRelation(a2, v4);
}

void __53__PSIAssetTranslator__appendPet_fetchHelper_toAsset___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if ([v5 length])
  {
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    [v7 addSynonym:v5 lookupIdentifier:v8 category:1331 originalContentString:*(a1 + 48)];
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    do
    {
      v13 = 0;
      do
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v17 + 1) + 8 * v13);
        v15 = *(a1 + 32);
        v16 = *(a1 + 40);
        [v15 addSynonym:v14 lookupIdentifier:v16 category:1331 originalContentString:{*(a1 + 48), v17}];

        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }
}

+ (void)_appendPerson:(id)a3 fetchHelper:(id)a4 toAsset:(id)a5
{
  v30 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if ([v7 detectionType] == 1)
  {
    v10 = [v7 personUUID];
    v11 = [v7 fullName];
    v12 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
    v13 = [v11 stringByTrimmingCharactersInSet:v12];

    v14 = v10;
    v15 = v9;
    v16 = v13;
    v17 = v14;
    if ([v16 length] || objc_msgSend(v17, "length"))
    {
      [v15 addContentString:v16 identifier:v17 category:1300 owningCategory:0];
    }

    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __56__PSIAssetTranslator__appendPerson_fetchHelper_toAsset___block_invoke;
    v22[3] = &unk_1E756D0A8;
    v23 = v15;
    v24 = v17;
    v25 = v16;
    v18 = v16;
    v19 = v17;
    [v8 enumerateSearchEntityRelationsForPerson:v7 block:v22];
  }

  else
  {
    v19 = PLSearchBackendModelTranslationGetLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = [v7 detectionType];
      v21 = [v7 personUUID];
      *buf = 67109378;
      v27 = v20;
      v28 = 2112;
      v29 = v21;
      _os_log_impl(&dword_19BF1F000, v19, OS_LOG_TYPE_ERROR, "Unexpected detection type (%hd) for person: %@", buf, 0x12u);
    }
  }
}

void __56__PSIAssetTranslator__appendPerson_fetchHelper_toAsset___block_invoke(id *a1, void *a2)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __56__PSIAssetTranslator__appendPerson_fetchHelper_toAsset___block_invoke_2;
  v4[3] = &unk_1E756D080;
  v5 = a1[4];
  v6 = a1[5];
  v7 = a1[6];
  PLSearchStringsForPersonRelation(a2, v4);
}

void __56__PSIAssetTranslator__appendPerson_fetchHelper_toAsset___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if ([v5 length])
  {
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    [v7 addSynonym:v5 lookupIdentifier:v8 category:1301 originalContentString:*(a1 + 48)];
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    do
    {
      v13 = 0;
      do
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v17 + 1) + 8 * v13);
        v15 = *(a1 + 32);
        v16 = *(a1 + 40);
        [v15 addSynonym:v14 lookupIdentifier:v16 category:1301 originalContentString:{*(a1 + 48), v17}];

        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }
}

+ (void)_appendPersonsAndPetsToAsset:(id)a3 forAsset:(id)a4 fetchHelper:(id)a5
{
  v37 = *MEMORY[0x1E69E9840];
  v28 = a3;
  v29 = a5;
  v6 = PLSearchIndexGetLog();
  v7 = os_signpost_id_generate(v6);
  v8 = v6;
  v9 = v8;
  v26 = v7 - 1;
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_19BF1F000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v7, "PSIAssetTranslator: Persons & Pets", "", buf, 2u);
  }

  spid = v7;
  v25 = v9;

  v10 = [MEMORY[0x1E695DFA8] set];
  v11 = [v29 allDetectedFaces];
  v12 = v11;
  if (v11)
  {
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v13 = [v11 countByEnumeratingWithState:&v30 objects:v36 count:{16, v7, v9}];
    if (v13)
    {
      v14 = v13;
      v15 = *v31;
      do
      {
        v16 = 0;
        do
        {
          if (*v31 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = [*(*(&v30 + 1) + 8 * v16) associatedPersonForFaceOrTorso:1 orTemporal:1];
          v18 = [v17 personUUID];
          if ([v17 shouldIndexOnAssetsForSearch])
          {
            v19 = [v17 detectionType];
            if ((v19 - 3) >= 2)
            {
              if (v19 == 1 && ([v10 containsObject:v18] & 1) == 0)
              {
                [v10 addObject:v18];
                [a1 _appendPerson:v17 fetchHelper:v29 toAsset:v28];
              }
            }

            else if (([v10 containsObject:v18] & 1) == 0)
            {
              [v10 addObject:v18];
              [a1 _appendPet:v17 fetchHelper:v29 toAsset:v28];
            }
          }

          else
          {
            v20 = PLSearchBackendModelTranslationGetLog();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v35 = v18;
              _os_log_impl(&dword_19BF1F000, v20, OS_LOG_TYPE_DEBUG, "Person not valid for indexing: %@", buf, 0xCu);
            }
          }

          ++v16;
        }

        while (v14 != v16);
        v21 = [v12 countByEnumeratingWithState:&v30 objects:v36 count:16];
        v14 = v21;
      }

      while (v21);
    }
  }

  v22 = v25;
  v23 = v22;
  if (v26 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v22))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_19BF1F000, v23, OS_SIGNPOST_INTERVAL_END, spid, "PSIAssetTranslator: Persons & Pets", "", buf, 2u);
  }
}

+ (void)_appendFavoriteToAsset:(id)a3 forAsset:(id)a4
{
  v7 = a3;
  if ([a4 favorite])
  {
    v5 = PLServicesLocalizedFrameworkString();
    v6 = v7;
    if ([v5 length])
    {
      [v6 addContentString:v5 category:2000 owningCategory:0];
    }
  }
}

+ (void)_appendMediaTypesToAsset:(id)a3 forAsset:(id)a4
{
  v65 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  if ([v6 RAWBadgeAttribute] - 1 <= 2)
  {
    v7 = PLServicesLocalizedFrameworkString();
    v8 = v5;
    if ([v7 length])
    {
      [v8 addContentString:v7 category:1902 owningCategory:0];
    }
  }

  v9 = [v6 kind];
  if (v9 == 1)
  {
    v10 = PLServicesLocalizedFrameworkString();
    v15 = v5;
    if ([v10 length])
    {
      v12 = v15;
      v13 = v10;
      v14 = 1901;
      goto LABEL_11;
    }
  }

  else
  {
    if (v9)
    {
      goto LABEL_13;
    }

    v10 = PLServicesLocalizedFrameworkString();
    v11 = v5;
    if ([v10 length])
    {
      v12 = v11;
      v13 = v10;
      v14 = 1900;
LABEL_11:
      [v12 addContentString:v13 category:v14 owningCategory:0];
    }
  }

LABEL_13:
  v16 = [v6 kindSubtype];
  if (v16 > 0x64u)
  {
    switch(v16)
    {
      case 'g':
        v17 = PLServicesLocalizedFrameworkString();
        v24 = v5;
        if (![v17 length])
        {
          goto LABEL_33;
        }

        v19 = v24;
        v20 = v17;
        v21 = 1910;
        break;
      case 'f':
        v17 = PLServicesLocalizedFrameworkString();
        v26 = v5;
        if ([v17 length])
        {
          v19 = v26;
          v20 = v17;
          v21 = 1909;
          break;
        }

        goto LABEL_33;
      case 'e':
        v17 = PLServicesLocalizedFrameworkString();
        v22 = v5;
        if (![v17 length])
        {
          goto LABEL_33;
        }

        v19 = v22;
        v20 = v17;
        v21 = 1905;
        break;
      default:
        goto LABEL_34;
    }

LABEL_32:
    [v19 addContentString:v20 category:v21 owningCategory:0];
    goto LABEL_33;
  }

  if (v16 == 1)
  {
    v17 = PLServicesLocalizedFrameworkString();
    v23 = v5;
    if (![v17 length])
    {
      goto LABEL_33;
    }

    v19 = v23;
    v20 = v17;
    v21 = 1908;
    goto LABEL_32;
  }

  if (v16 != 2)
  {
    if (v16 != 10)
    {
      goto LABEL_34;
    }

    v17 = PLServicesLocalizedFrameworkString();
    v18 = v5;
    if (![v17 length])
    {
      goto LABEL_33;
    }

    v19 = v18;
    v20 = v17;
    v21 = 1907;
    goto LABEL_32;
  }

  v17 = PLServicesLocalizedFrameworkString();
  v25 = v5;
  if ([v17 length])
  {
    v19 = v25;
    v20 = v17;
    v21 = 1906;
    goto LABEL_32;
  }

LABEL_33:

LABEL_34:
  if ([v6 playbackVariation] == 3)
  {
    v27 = PLServicesLocalizedFrameworkString();
    v28 = v5;
    if ([v27 length])
    {
      [v28 addContentString:v27 category:1911 owningCategory:0];
    }
  }

  v29 = [v6 playbackStyle];
  if (v29 != 5)
  {
    if (v29 == 3)
    {
      v30 = v5;
      if ([@"PLSearchIndexIdentifierLivePhotoPlaybackStyleEnabled" length])
      {
        [v30 addIdentifier:@"PLSearchIndexIdentifierLivePhotoPlaybackStyleEnabled" category:1906 owningCategory:0];
      }

      goto LABEL_46;
    }

    if (v29 != 2)
    {
      goto LABEL_47;
    }
  }

  v30 = PLServicesLocalizedFrameworkString();
  v31 = v5;
  if ([v30 length])
  {
    [v31 addContentString:v30 category:1912 owningCategory:0];
  }

LABEL_46:
LABEL_47:
  if (([v6 avalanchePickType] & 0x10) != 0)
  {
    v32 = PLServicesLocalizedFrameworkString();
    v33 = v5;
    if ([v32 length])
    {
      [v33 addContentString:v32 category:1913 owningCategory:0];
    }
  }

  v34 = [v6 depthType];
  if (v34 == 2)
  {
    v37 = PLServicesLocalizedFrameworkString();
    v42 = v5;
    if ([v37 length])
    {
      v39 = v42;
      v40 = v37;
      v41 = 1903;
      goto LABEL_60;
    }

LABEL_61:

    goto LABEL_62;
  }

  if (v34 == 1)
  {
    v35 = PLServicesLocalizedFrameworkString();
    v36 = v5;
    if ([v35 length])
    {
      [v36 addContentString:v35 category:1914 owningCategory:0];
    }

    if (v16 == 2)
    {
      v37 = PLServicesLivePortraitLocalizedFrameworkString();
      v38 = v36;
      if ([v37 length])
      {
        v39 = v38;
        v40 = v37;
        v41 = 1918;
LABEL_60:
        [v39 addContentString:v40 category:v41 owningCategory:0];
        goto LABEL_61;
      }

      goto LABEL_61;
    }
  }

LABEL_62:
  if ([v6 spatialType])
  {
    v43 = PLServicesLocalizedFrameworkString();
    v44 = v5;
    if ([v43 length])
    {
      [v44 addContentString:v43 category:1919 owningCategory:0];
    }
  }

  if ([v6 isMagicCarpet])
  {
    v45 = PLServicesLocalizedFrameworkString();
    v46 = v5;
    if ([v45 length])
    {
      [v46 addContentString:v45 category:1904 owningCategory:0];
    }
  }

  v47 = [v6 additionalAttributes];
  v48 = [v47 cameraCaptureDevice];

  if (v48 == 2)
  {
    v58 = PLServicesFRSVLocalizedFrameworkString();
    v59 = v5;
    if ([v58 length])
    {
      [v59 addContentString:v58 category:1920 owningCategory:0];
    }
  }

  else if (v48 == 1)
  {
    v49 = PLServicesLocalizedFrameworkString();
    v50 = v5;
    if ([v49 length])
    {
      [v50 addContentString:v49 category:1915 owningCategory:0];
    }

    v51 = v50;
    v52 = v49;
    v53 = PLSearchLocalizedSynonymsForKey(@"ALL_SELFIES");
    v60 = 0u;
    v61 = 0u;
    v62 = 0u;
    v63 = 0u;
    v54 = [v53 countByEnumeratingWithState:&v60 objects:v64 count:16];
    if (v54)
    {
      v55 = v54;
      v56 = *v61;
      do
      {
        for (i = 0; i != v55; ++i)
        {
          if (*v61 != v56)
          {
            objc_enumerationMutation(v53);
          }

          [v51 addSynonym:*(*(&v60 + 1) + 8 * i) category:1916 originalContentString:v52];
        }

        v55 = [v53 countByEnumeratingWithState:&v60 objects:v64 count:16];
      }

      while (v55);
    }
  }
}

+ (void)_appendKeywords:(id)a3 toAsset:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v14 + 1) + 8 * v10);
        v12 = v6;
        v13 = v11;
        if ([v13 length])
        {
          [v12 addContentString:v13 category:1200 owningCategory:0];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }
}

+ (void)_appendSavedFromAppToAsset:(id)a3 forAsset:(id)a4
{
  v11 = a3;
  v5 = a4;
  v6 = [v5 importedByBundleIdentifier];
  v7 = [v5 importedByDisplayName];

  if (PLShouldConstructDisplayNameForAppBundle(v6, v7))
  {
    v8 = PLSyndicatedDisplayNameForAppBundle(v6, v7);
    if ([v8 length])
    {
      v9 = v11;
      v10 = v8;
      if ([v10 length])
      {
        [v9 addContentString:v10 category:2200 owningCategory:0];
      }
    }
  }
}

+ (BOOL)_containsPersonWithSceneTaxonomyProvider:(id)a3 forAsset:(id)a4
{
  v35 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v7 = [v6 detectedFaces];
  v8 = [v7 countByEnumeratingWithState:&v27 objects:v34 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v28;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v28 != v10)
        {
          objc_enumerationMutation(v7);
        }

        if ([*(*(&v27 + 1) + 8 * i) detectionType] == 1)
        {
          LOBYTE(v15) = 1;
          goto LABEL_27;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v27 objects:v34 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v7 = [v6 additionalAttributes];
  v12 = [v7 sceneAnalysisVersion];
  v13 = [v5 searchIndexSceneTaxonomyForSceneAnalysisVersion:v12];
  if (v13)
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v14 = [v7 sceneClassifications];
    v15 = [v14 countByEnumeratingWithState:&v23 objects:v31 count:16];
    if (v15)
    {
      v16 = *v24;
      while (2)
      {
        for (j = 0; j != v15; ++j)
        {
          if (*v24 != v16)
          {
            objc_enumerationMutation(v14);
          }

          v18 = *(*(&v23 + 1) + 8 * j);
          if ([v18 sceneIdentifier] == 881)
          {
            if ([v13 nodeRefForExtendedSceneClassId:881])
            {
              [v18 confidence];
              v20 = v19;
              PFSceneTaxonomyNodeSearchThreshold();
              if (v20 > v21)
              {
                LOBYTE(v15) = 1;
                goto LABEL_26;
              }
            }
          }
        }

        v15 = [v14 countByEnumeratingWithState:&v23 objects:v31 count:16];
        if (v15)
        {
          continue;
        }

        break;
      }
    }
  }

  else
  {
    v14 = PLSearchBackendStickerSuggestionsGetLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v33 = v12;
      _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_ERROR, "Failed to load scene taxonomy for scene analysis version: %i.", buf, 8u);
    }

    LOBYTE(v15) = 0;
  }

LABEL_26:

LABEL_27:
  return v15;
}

+ (void)_appendStickerSuggestionsToAsset:(id)a3 fetchHelper:(id)a4 sceneTaxonomyProvider:(id)a5 forAsset:(id)a6
{
  v90 = *MEMORY[0x1E69E9840];
  v67 = a3;
  v69 = a4;
  v68 = a5;
  v9 = a6;
  v10 = PLSearchIndexGetLog();
  v11 = os_signpost_id_generate(v10);
  v12 = v10;
  v13 = v12;
  v65 = v11 - 1;
  spid = v11;
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_19BF1F000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v11, "PSIAssetTranslator: Stickers", "", buf, 2u);
  }

  if ([v9 kind] || objc_msgSend(v9, "kindSubtype") == 10)
  {
    goto LABEL_102;
  }

  v62 = [v9 mediaAnalysisAttributes];
  if ([v62 visualSearchStickerConfidenceVersion] < 1)
  {
    goto LABEL_101;
  }

  [v9 stickerConfidenceScore];
  v15 = v14;
  if (PLStickerSuggestionConfidenceThreshold_token != -1)
  {
    dispatch_once(&PLStickerSuggestionConfidenceThreshold_token, &__block_literal_global_273_64457);
  }

  if (v15 < *&PLStickerSuggestionConfidenceThreshold_stickerSuggestionConfidenceThreshold)
  {
    goto LABEL_101;
  }

  v16 = MEMORY[0x1E695DFD8];
  v17 = [v69 allSceneClassifications];
  v61 = [v16 setWithArray:v17];

  if (![v61 count])
  {
    goto LABEL_100;
  }

  v18 = [v9 additionalAttributes];
  v19 = [v18 sceneAnalysisVersion];

  if (!PLSearchIsAssetSafeForStickers(v61, v19))
  {
    goto LABEL_100;
  }

  v63 = [v68 searchIndexSceneTaxonomyForSceneAnalysisVersion:v19];
  if (!v63 && v19)
  {
    v20 = PLSearchBackendStickerSuggestionsGetLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = [v67 uuid];
      *buf = 67109378;
      *&buf[4] = v19;
      *&buf[8] = 2112;
      *&buf[10] = v21;
      _os_log_impl(&dword_19BF1F000, v20, OS_LOG_TYPE_ERROR, "Failed to load scene taxonomy for scene analysis version: %i. Unable to index Sticker Category Suggestions for Asset: %@", buf, 0x12u);
    }

    goto LABEL_99;
  }

  v83 = 0.0;
  v22 = *(MEMORY[0x1E695F050] + 16);
  rect.origin = *MEMORY[0x1E695F050];
  rect.size = v22;
  if (PLStickerSuggestionDominantSceneAreaMinThreshold_token != -1)
  {
    dispatch_once(&PLStickerSuggestionDominantSceneAreaMinThreshold_token, &__block_literal_global_283_64473);
  }

  v23 = *&PLStickerSuggestionDominantSceneAreaMinThreshold_threshold;
  if (PLStickerSuggestionDominantSceneAreaMaxThreshold_token != -1)
  {
    dispatch_once(&PLStickerSuggestionDominantSceneAreaMaxThreshold_token, &__block_literal_global_288);
  }

  v24 = *&PLStickerSuggestionDominantSceneAreaMaxThreshold_threshold;
  if (v63)
  {
    v60 = PLSearchDominantSceneWithIdentifierInSceneClassifications(v61, PLSearchDominantSceneAny, v63, &v83, &rect);
  }

  else
  {
    v60 = 0;
  }

  MidX = CGRectGetMidX(rect);
  MidY = CGRectGetMidY(rect);
  if (PLStickerSuggestionDominantSceneBoundingBoxCenterThreshold_token != -1)
  {
    dispatch_once(&PLStickerSuggestionDominantSceneBoundingBoxCenterThreshold_token, &__block_literal_global_298);
  }

  v27 = *&PLStickerSuggestionDominantSceneBoundingBoxCenterThreshold_stickerSuggestionConfidenceThreshold;
  if (MidX <= *&PLStickerSuggestionDominantSceneBoundingBoxCenterThreshold_stickerSuggestionConfidenceThreshold)
  {
    v59 = 0;
  }

  else
  {
    v28 = MidY < 1.0 - v27;
    if (MidX >= 1.0 - v27)
    {
      v28 = 0;
    }

    if (MidY <= v27)
    {
      v28 = 0;
    }

    v59 = v28;
  }

  [v62 videoStickerSuggestionScore];
  v30 = v29;
  v31 = [v62 mediaAnalysisVersion];
  if ([v9 playbackStyle] == 3 && v31 >= 0x31)
  {
    if (PLLiveStickerSuggestionConfidenceThreshold_token != -1)
    {
      dispatch_once(&PLLiveStickerSuggestionConfidenceThreshold_token, &__block_literal_global_278_64465);
    }

    v32 = !v59;
    if (v30 < *&PLLiveStickerSuggestionConfidenceThreshold_liveStickerSuggestionConfidenceThreshold)
    {
      v32 = 1;
    }

    if ((v32 & 1) == 0 && v83 > v23)
    {
      v80 = 0u;
      v81 = 0u;
      v79 = 0u;
      v78 = 0u;
      v33 = v61;
      v34 = [v33 countByEnumeratingWithState:&v78 objects:v89 count:16];
      if (v34)
      {
        v35 = *v79;
LABEL_43:
        v36 = 0;
        while (1)
        {
          if (*v79 != v35)
          {
            objc_enumerationMutation(v33);
          }

          v37 = *(*(&v78 + 1) + 8 * v36);
          if ([v37 sceneIdentifier] == 2147482079)
          {
            [v37 confidence];
            if (v38 >= 0.55)
            {
              break;
            }
          }

          if (v34 == ++v36)
          {
            v34 = [v33 countByEnumeratingWithState:&v78 objects:v89 count:16];
            if (v34)
            {
              goto LABEL_43;
            }

            goto LABEL_50;
          }
        }
      }

      else
      {
LABEL_50:

        v33 = PLSearchLookupIdentifierForStickerSuggestionType(3);
        [v67 addIdentifier:v33 category:2700 owningCategory:0];
      }
    }
  }

  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  v39 = v61;
  v40 = [v39 countByEnumeratingWithState:&v74 objects:v88 count:16];
  if (!v40)
  {
LABEL_94:

    goto LABEL_95;
  }

  v41 = *v75;
  v58 = v70;
LABEL_54:
  v42 = 0;
  while (1)
  {
    if (*v75 != v41)
    {
      objc_enumerationMutation(v39);
    }

    v43 = *(*(&v74 + 1) + 8 * v42);
    v44 = [v43 sceneIdentifier];
    if ((v44 - 15) > 0x6E5)
    {
      goto LABEL_78;
    }

    v45 = qword_19C60C0F0[v44 - 15];
    if (!v45)
    {
      goto LABEL_78;
    }

    if (![v63 nodeRefForExtendedSceneClassId:v44])
    {
      v51 = PLSearchBackendStickerSuggestionsGetLog();
      if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        *&buf[4] = v44;
        _os_log_impl(&dword_19BF1F000, v51, OS_LOG_TYPE_ERROR, "Failed to find taxonomy node for Sticker SceneID: %llu", buf, 0xCu);
      }

      goto LABEL_78;
    }

    if (PFSceneTaxonomyNodeIsIndexed())
    {
      PFSceneTaxonomyNodeSearchThreshold();
      v47 = v46;
      [v43 confidence];
      if (v48 >= v47)
      {
        break;
      }
    }

LABEL_78:
    if (v40 == ++v42)
    {
      v40 = [v39 countByEnumeratingWithState:&v74 objects:v88 count:16];
      if (v40)
      {
        goto LABEL_54;
      }

      goto LABEL_94;
    }
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v85 = __Block_byref_object_copy__46858;
  v86 = __Block_byref_object_dispose__46859;
  v87 = 0;
  if (v83 > v23)
  {
    v70[0] = __98__PSIAssetTranslator__appendStickerSuggestionsToAsset_fetchHelper_sceneTaxonomyProvider_forAsset___block_invoke;
    v70[1] = &unk_1E756D050;
    v49 = v60;
    v72 = v43;
    v73 = buf;
    v71 = v49;
    PFSceneTaxonomyNodeVisitDetectors();
  }

  if (!v59 || !*(*&buf[8] + 40))
  {
    if (!v60 && v45 == 6)
    {
      goto LABEL_81;
    }

    goto LABEL_77;
  }

  if (v45 == 7 && v83 >= v24)
  {
LABEL_77:
    _Block_object_dispose(buf, 8);

    goto LABEL_78;
  }

LABEL_81:
  _Block_object_dispose(buf, 8);

  if ((~v45 & 5) != 0)
  {
    v54 = v45;
    if (v45 == 1)
    {
      if ([a1 _containsPersonWithSceneTaxonomyProvider:v68 forAsset:v9])
      {
        goto LABEL_95;
      }

      v54 = 1;
    }

    goto LABEL_89;
  }

  *buf = 0;
  v52 = PLSearchDominantSceneWithIdentifierInSceneClassifications(v39, 881, v63, buf, 0);
  v53 = *buf;
  if (PLStickerSuggestionPeopleDistractorDominantSceneAreaMaxThreshold_token != -1)
  {
    dispatch_once(&PLStickerSuggestionPeopleDistractorDominantSceneAreaMaxThreshold_token, &__block_literal_global_293);
  }

  v54 = v45;
  if (v53 <= *&PLStickerSuggestionPeopleDistractorDominantSceneAreaMaxThreshold_threshold)
  {
LABEL_89:
    v39 = PLSearchLookupIdentifierForStickerSuggestionType(v54);
    if ([v39 length])
    {
      [v67 addIdentifier:v39 category:2700 owningCategory:0];
    }

    else
    {
      v55 = PLSearchBackendStickerSuggestionsGetLog();
      if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        *&buf[4] = v45;
        _os_log_impl(&dword_19BF1F000, v55, OS_LOG_TYPE_ERROR, "Failed to get search lookup identifier for StickerSuggestionType: %lu", buf, 0xCu);
      }
    }

    goto LABEL_94;
  }

LABEL_95:
  v56 = v13;
  v57 = v56;
  if (v65 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v56))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_19BF1F000, v57, OS_SIGNPOST_INTERVAL_END, spid, "PSIAssetTranslator: Stickers", "", buf, 2u);
  }

LABEL_99:
LABEL_100:

LABEL_101:
LABEL_102:
}

BOOL __98__PSIAssetTranslator__appendStickerSuggestionsToAsset_fetchHelper_sceneTaxonomyProvider_forAsset___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = [*(a1 + 32) sceneIdentifier];
  if (v4 == v5)
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), *(a1 + 40));
  }

  return v4 == v5;
}

+ (void)_appendPrivateEncryptedComputeScenes:(id)a3 forAsset:(id)a4 fetchHelper:(id)a5 csuTaxonomyObjectStore:(id)a6 locale:(id)a7
{
  v68 = *MEMORY[0x1E69E9840];
  v54 = a3;
  v45 = a4;
  v11 = a5;
  v12 = a6;
  v50 = a7;
  v44 = v11;
  v13 = [v11 allSceneClassifications];
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v53 = [v13 countByEnumeratingWithState:&v60 objects:v67 count:16];
  v14 = 0;
  if (v53)
  {
    v15 = 0x1E696A000uLL;
    v52 = *v61;
    v46 = v12;
    v49 = v13;
    do
    {
      for (i = 0; i != v53; ++i)
      {
        if (*v61 != v52)
        {
          objc_enumerationMutation(v13);
        }

        v17 = *(*(&v60 + 1) + 8 * i);
        v18 = [v17 classificationType];
        v19 = v18;
        v20 = [*(v15 + 3480) numberWithInteger:v18];
        v21 = [&unk_1F0FBFB08 containsObject:v20];

        if (v18 == 4 || v21 != 0)
        {
          v23 = [v17 sceneIdentifier];
          if (v18 <= 7)
          {
            if (((0xDuLL >> v18) & 1) == 0)
            {
              v24 = word_19C60B090[v18];
              goto LABEL_14;
            }

            v25 = PLSearchBackendSceneTaxonomyGetLog();
            if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
            {
              *buf = 67109632;
              *v65 = 0;
              *&v65[4] = 2048;
              *&v65[6] = v18;
              *&v65[14] = 2048;
              *&v65[16] = v23;
              _os_log_impl(&dword_19BF1F000, v25, OS_LOG_TYPE_ERROR, "CSU: Unsupported scene classification type (%hd) for Scene (%lu, %llu)", buf, 0x1Cu);
            }

LABEL_53:

            continue;
          }

          v24 = 1;
LABEL_14:
          v59 = v14;
          v25 = [v12 entityForIdentifier:v23 idType:v24 error:&v59];
          v26 = v59;

          if (v25)
          {
            v27 = v26 == 0;
          }

          else
          {
            v27 = 0;
          }

          if (!v27)
          {
            v28 = PLSearchBackendSceneTaxonomyGetLog();
            if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
            {
              *buf = 134218240;
              *v65 = v19;
              *&v65[8] = 2048;
              *&v65[10] = v23;
              v29 = v28;
              v30 = OS_LOG_TYPE_ERROR;
              v31 = "CSU: CSU entity not found in MAD database. Skipping Scene (%lu, %llu)";
              goto LABEL_23;
            }

            goto LABEL_52;
          }

          if ([v25 sensitiveLocation])
          {
            v28 = PLSearchBackendSceneTaxonomyGetLog();
            if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
            {
              *buf = 134218240;
              *v65 = v19;
              *&v65[8] = 2048;
              *&v65[10] = v23;
              v29 = v28;
              v30 = OS_LOG_TYPE_DEBUG;
              v31 = "CSU: CSU entity not eligible for suggestions. Skipping Scene (%lu, %llu)";
LABEL_23:
              _os_log_impl(&dword_19BF1F000, v29, v30, v31, buf, 0x16u);
            }

LABEL_52:

            v14 = v26;
            goto LABEL_53;
          }

          v28 = [v25 localizedLabelWithLocale:v50];
          v32 = PLSearchSceneLookupIdentifier(v19, v23);
          if (v19 > 7)
          {
            v33 = 1510;
            if (v28)
            {
              goto LABEL_30;
            }
          }

          else
          {
            v33 = qword_19C60F820[v19];
            if (!v28)
            {
              goto LABEL_48;
            }

LABEL_30:
            if ([v28 length])
            {
              [v54 addContentString:v28 identifier:v32 category:v33 owningCategory:0];
              v34 = [v25 localizedSynonymsWithLocale:v50];
              v35 = v34;
              if (v34 && [v34 count])
              {
                v51 = v23;
                v47 = v26;
                v48 = v25;
                v57 = 0u;
                v58 = 0u;
                v55 = 0u;
                v56 = 0u;
                v35 = v35;
                v36 = [v35 countByEnumeratingWithState:&v55 objects:v66 count:16];
                if (v36)
                {
                  v37 = v36;
                  v38 = PLSearchIndexSynonymCategoryForCategory(v33);
                  v39 = *v56;
                  v40 = v38;
                  do
                  {
                    for (j = 0; j != v37; ++j)
                    {
                      if (*v56 != v39)
                      {
                        objc_enumerationMutation(v35);
                      }

                      v42 = *(*(&v55 + 1) + 8 * j);
                      if (v42 && [*(*(&v55 + 1) + 8 * j) length])
                      {
                        if ([v42 isEqualToString:v28])
                        {
                          v43 = PLSearchBackendSceneTaxonomyGetLog();
                          if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
                          {
                            *buf = 138412802;
                            *v65 = v28;
                            *&v65[8] = 2048;
                            *&v65[10] = v19;
                            *&v65[18] = 2048;
                            *&v65[20] = v51;
                            _os_log_impl(&dword_19BF1F000, v43, OS_LOG_TYPE_ERROR, "CSU: Duplicate PrivateEncryptedCompute label: '%@' found in synonyms for Scene (%lu, %llu)", buf, 0x20u);
                          }
                        }

                        else
                        {
                          [v54 addSynonym:v42 lookupIdentifier:v32 category:v40 originalContentString:v28];
                        }
                      }
                    }

                    v37 = [v35 countByEnumeratingWithState:&v55 objects:v66 count:16];
                  }

                  while (v37);
                }

                v12 = v46;
                v26 = v47;
                v13 = v49;
                v25 = v48;
              }

              else
              {
                v13 = v49;
              }

              goto LABEL_51;
            }
          }

LABEL_48:
          v35 = PLSearchBackendSceneTaxonomyGetLog();
          v13 = v49;
          if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
          {
            *buf = 134218240;
            *v65 = v19;
            *&v65[8] = 2048;
            *&v65[10] = v23;
            _os_log_impl(&dword_19BF1F000, v35, OS_LOG_TYPE_ERROR, "CSU: Failed to get localized text from CSU for Scene (%lu, %llu)", buf, 0x16u);
          }

LABEL_51:

          v15 = 0x1E696A000;
          goto LABEL_52;
        }
      }

      v53 = [v13 countByEnumeratingWithState:&v60 objects:v67 count:16];
    }

    while (v53);
  }
}

+ (void)_appendSceneClassificationsToAsset:(id)a3 sceneTaxonomyProvider:(id)a4 forAsset:(id)a5 fetchHelper:(id)a6
{
  v33 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = PLSearchIndexGetLog();
  v14 = os_signpost_id_generate(v13);
  v15 = v13;
  v16 = v15;
  if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_19BF1F000, v16, OS_SIGNPOST_INTERVAL_BEGIN, v14, "PSIAssetTranslator: Scenes", "", buf, 2u);
  }

  v17 = MEMORY[0x1E695DFD8];
  v18 = [v12 allSceneClassifications];
  v19 = [v17 setWithArray:v18];

  if ([v19 count])
  {
    v20 = [v11 additionalAttributes];
    v21 = [v20 sceneAnalysisVersion];

    v22 = [v10 searchIndexSceneTaxonomyForSceneAnalysisVersion:v21];
    if (!v22 && v21)
    {
      v23 = PLSearchBackendSceneTaxonomyGetLog();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v24 = [v9 uuid];
        *buf = 67109378;
        v30 = v21;
        v31 = 2112;
        v32 = v24;
        _os_log_impl(&dword_19BF1F000, v23, OS_LOG_TYPE_ERROR, "Could not open taxonomy for scene analysis version: %i, unable to index scenes for asset: %@", buf, 0x12u);
      }

      goto LABEL_13;
    }

    v25 = PLSearchAssetContainsDetectionTypeDog(v11, v12);
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __100__PSIAssetTranslator__appendSceneClassificationsToAsset_sceneTaxonomyProvider_forAsset_fetchHelper___block_invoke;
    v27[3] = &unk_1E756D028;
    v28 = v9;
    [v22 enumerateKeywordAndSynonymsForScenes:v19 includeDogScenes:v25 usingBlock:v27];
  }

  v26 = v16;
  v23 = v26;
  if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v26))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_19BF1F000, v23, OS_SIGNPOST_INTERVAL_END, v14, "PSIAssetTranslator: Scenes", "", buf, 2u);
  }

LABEL_13:
}

void __100__PSIAssetTranslator__appendSceneClassificationsToAsset_sceneTaxonomyProvider_forAsset_fetchHelper___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v28 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  if ([v8 length])
  {
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@/%llu", @"scene", a5];
    [*(a1 + 32) addContentString:v8 identifier:v10 category:1500 owningCategory:0];
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v18 = v9;
    v11 = v9;
    v12 = [v11 countByEnumeratingWithState:&v19 objects:v27 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v20;
      v15 = MEMORY[0x1E69E9C10];
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v20 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v17 = *(*(&v19 + 1) + 8 * i);
          if ([v17 isEqualToString:v8])
          {
            if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              v24 = v8;
              v25 = 2048;
              v26 = a5;
              _os_log_error_impl(&dword_19BF1F000, v15, OS_LOG_TYPE_ERROR, "Search Indexing: duplicate scene keyword: '%@' found in scene synonyms array for scene ID: %llu", buf, 0x16u);
            }
          }

          else
          {
            [*(a1 + 32) addSynonym:v17 lookupIdentifier:v10 category:1501 originalContentString:v8];
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v19 objects:v27 count:16];
      }

      while (v13);
    }

    v9 = v18;
  }
}

+ (void)_appendDateCreatedToAsset:(id)a3 indexingContext:(id)a4 forAsset:(id)a5
{
  v46 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v9 localDateCreated];
  if (v10)
  {
    v11 = [v8 searchIndexDateFormatter];
    v12 = [v11 newLocalizedComponentsFromDate:v10 includeMonth:0];
    if ([v12 count] == 1)
    {
      v13 = [v12 firstObject];
      v14 = v7;
      if ([v13 length])
      {
        [v14 addContentString:v13 category:1101 owningCategory:0];
      }
    }

    v31 = v12;
    v32 = v8;
    v15 = [v11 localizedMonthStringsFromDate:v10];
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v16 = [v15 countByEnumeratingWithState:&v39 objects:v43 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v40;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v40 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v39 + 1) + 8 * i);
          v21 = v7;
          v22 = v20;
          if ([v22 length])
          {
            [v21 addContentString:v22 category:1100 owningCategory:0];
          }
        }

        v17 = [v15 countByEnumeratingWithState:&v39 objects:v43 count:16];
      }

      while (v17);
    }

    v23 = MEMORY[0x1E69C1AB0];
    v24 = [v9 localDateCreated];
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __73__PSIAssetTranslator__appendDateCreatedToAsset_indexingContext_forAsset___block_invoke;
    v37[3] = &unk_1E756CFD8;
    v25 = v7;
    v38 = v25;
    [v23 partOfDayLocalizedStringsForLocalDate:v24 result:v37];

    v26 = MEMORY[0x1E69C1AB8];
    v27 = [v9 localDateCreated];
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = __73__PSIAssetTranslator__appendDateCreatedToAsset_indexingContext_forAsset___block_invoke_2;
    v35[3] = &unk_1E756CFD8;
    v28 = v25;
    v36 = v28;
    [v26 partOfWeekLocalizedStringsForLocalDate:v27 result:v35];

    v8 = v32;
    v29 = [v32 calendar];
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __73__PSIAssetTranslator__appendDateCreatedToAsset_indexingContext_forAsset___block_invoke_3;
    v33[3] = &unk_1E756D000;
    v34 = v28;
    PLSearchSeasonStringsForDate(v10, v29, v33);
  }

  else
  {
    v11 = PLSearchBackendModelTranslationGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v30 = [v9 uuid];
      *buf = 138543362;
      v45 = v30;
      _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_ERROR, "Missing dateCreated for asset: %{public}@. Unable to index creation date.", buf, 0xCu);
    }
  }
}

void __73__PSIAssetTranslator__appendDateCreatedToAsset_indexingContext_forAsset___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  if ([v5 length])
  {
    [v7 addContentString:v5 category:1106 owningCategory:0];
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v14;
    do
    {
      v12 = 0;
      do
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [*(a1 + 32) addSynonym:*(*(&v13 + 1) + 8 * v12++) category:1108 originalContentString:{v5, v13}];
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v10);
  }
}

void __73__PSIAssetTranslator__appendDateCreatedToAsset_indexingContext_forAsset___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  if ([v5 length])
  {
    [v7 addContentString:v5 category:1107 owningCategory:0];
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v14;
    do
    {
      v12 = 0;
      do
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [*(a1 + 32) addSynonym:*(*(&v13 + 1) + 8 * v12++) category:1109 originalContentString:{v5, v13}];
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v10);
  }
}

void __73__PSIAssetTranslator__appendDateCreatedToAsset_indexingContext_forAsset___block_invoke_3(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v20 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@/%lu", @"season", a2];
  [*(a1 + 32) addContentString:v7 identifier:v9 category:1104 owningCategory:0];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v10 = v8;
  v11 = [v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v16;
    do
    {
      v14 = 0;
      do
      {
        if (*v16 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [*(a1 + 32) addSynonym:*(*(&v15 + 1) + 8 * v14++) lookupIdentifier:v9 category:1105 originalContentString:v7];
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v12);
  }
}

+ (void)_appendGEODataToAsset:(id)a3 forAsset:(id)a4 countrySynonymProvider:(id)a5
{
  v68 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v8 locationInfo];
  if (v10)
  {
    v11 = [v8 placeAnnotation];
    v12 = [v10 placeWithAnnotation:v11];

    if (v12)
    {
      v13 = v7;
      v49 = v12;
      v14 = [v13 tokens];
      if ([v14 count])
      {
        __assert_rtn("PLIndexRevGeoPlace", "PSIAssetTranslator.m", 60, "tokens.count == 0");
      }

      v47 = v7;
      v48 = v12;
      v45 = v10;
      v46 = v9;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __PLIndexRevGeoPlace_block_invoke;
      aBlock[3] = &unk_1E756F318;
      v44 = v14;
      v63 = v44;
      v15 = v13;
      v64 = v15;
      v16 = _Block_copy(aBlock);
      v17 = &qword_19C60BDD8;
      do
      {
        v18 = *v17;
        v19 = [v49 placeInfosForOrderType];
        v20 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v18];
        v21 = [v19 objectForKeyedSubscript:v20];

        v60 = 0u;
        v61 = 0u;
        v58 = 0u;
        v59 = 0u;
        v22 = v21;
        v23 = [v22 countByEnumeratingWithState:&v58 objects:v67 count:16];
        if (v23)
        {
          v24 = v23;
          v25 = *v59;
          do
          {
            for (i = 0; i != v24; ++i)
            {
              if (*v59 != v25)
              {
                objc_enumerationMutation(v22);
              }

              v27 = [*(*(&v58 + 1) + 8 * i) placeName];
              v16[2](v16, v27, v18);
            }

            v24 = [v22 countByEnumeratingWithState:&v58 objects:v67 count:16];
          }

          while (v24);
        }

        --v17;
      }

      while (v17 >= PLIndexRevGeoPlace_PLRevGeoOrderTypes);
      [v15 reverse];

      v10 = v45;
      v28 = [v45 countryCode];

      v9 = v46;
      if (v28)
      {
        v56 = 0u;
        v57 = 0u;
        v54 = 0u;
        v55 = 0u;
        v29 = [v45 countryCode];
        v30 = [v46 synonymsForCountryCode:v29];

        v31 = [v30 countByEnumeratingWithState:&v54 objects:v66 count:16];
        if (v31)
        {
          v32 = v31;
          v33 = *v55;
          do
          {
            for (j = 0; j != v32; ++j)
            {
              if (*v55 != v33)
              {
                objc_enumerationMutation(v30);
              }

              v35 = *(*(&v54 + 1) + 8 * j);
              v36 = [v45 countryCode];
              [v15 addSynonym:v35 category:1010 originalContentString:v36];
            }

            v32 = [v30 countByEnumeratingWithState:&v54 objects:v66 count:16];
          }

          while (v32);
        }
      }

      v7 = v47;
      v12 = v48;
      if ([v45 isHome])
      {
        v37 = PLMomentsLocalizedFrameworkString(@"MOMENT_HOME");
        v38 = v15;
        if ([v37 length])
        {
          [v38 addContentString:v37 category:1000 owningCategory:0];
        }

        v39 = PLSearchLocalizedSynonymsForKey(@"SEARCH_HOME");
        v50 = 0u;
        v51 = 0u;
        v52 = 0u;
        v53 = 0u;
        v40 = [v39 countByEnumeratingWithState:&v50 objects:v65 count:16];
        if (v40)
        {
          v41 = v40;
          v42 = *v51;
          do
          {
            for (k = 0; k != v41; ++k)
            {
              if (*v51 != v42)
              {
                objc_enumerationMutation(v39);
              }

              [v38 addSynonym:*(*(&v50 + 1) + 8 * k) category:1009 originalContentString:v37];
            }

            v41 = [v39 countByEnumeratingWithState:&v50 objects:v65 count:16];
          }

          while (v41);
        }

        v12 = v48;
      }
    }
  }
}

+ (void)_appendUtilityTypesToAsset:(id)a3 forAsset:(id)a4 indexingContext:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = a4;
  v10 = PLSearchIndexGetLog();
  v11 = os_signpost_id_generate(v10);
  v12 = v10;
  v13 = v12;
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_19BF1F000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v11, "PSIAssetTranslator: Utility Types V2", "", buf, 2u);
  }

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __74__PSIAssetTranslator__appendUtilityTypesToAsset_forAsset_indexingContext___block_invoke;
  v17[3] = &unk_1E756CFB0;
  v18 = v7;
  v14 = v7;
  PLSearchEnumerateSearchStringsForUtilityCollections(v9, v8, v17);

  v15 = v13;
  v16 = v15;
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_19BF1F000, v16, OS_SIGNPOST_INTERVAL_END, v11, "PSIAssetTranslator: Utility Types V2", "", buf, 2u);
  }
}

+ (void)_appendHumanActionsToAsset:(id)a3 forAsset:(id)a4 fetchHelper:(id)a5
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = [a5 allDetectedFaces];
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      v11 = 0;
      do
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v15 + 1) + 8 * v11) detectionTraits];
        v13[0] = MEMORY[0x1E69E9820];
        v13[1] = 3221225472;
        v13[2] = __70__PSIAssetTranslator__appendHumanActionsToAsset_forAsset_fetchHelper___block_invoke;
        v13[3] = &unk_1E756CF88;
        v14 = v6;
        PLSearchEnumerateSearchStringsForDetectionTraits(v12, v13);

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }
}

void __70__PSIAssetTranslator__appendHumanActionsToAsset_forAsset_fetchHelper___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v21 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = [a2 value];
  v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@/%u", @"humanAction", v9];
  [*(a1 + 32) addContentString:v7 identifier:v10 category:2600 owningCategory:0];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v11 = v8;
  v12 = [v11 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v17;
    do
    {
      v15 = 0;
      do
      {
        if (*v17 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [*(a1 + 32) addSynonym:*(*(&v16 + 1) + 8 * v15++) lookupIdentifier:v10 category:2601 originalContentString:v7];
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v13);
  }
}

+ (void)_appendAudioClassificationToAsset:(id)a3 forAsset:(id)a4
{
  v5 = a3;
  v6 = [a4 additionalAttributes];
  v7 = [v6 temporalSceneClassifications];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __65__PSIAssetTranslator__appendAudioClassificationToAsset_forAsset___block_invoke;
  v9[3] = &unk_1E756CF60;
  v10 = v5;
  v8 = v5;
  PLSearchEnumerateSearchStringsForAudioClassifications(v7, v9);
}

void __65__PSIAssetTranslator__appendAudioClassificationToAsset_forAsset___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v21 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = [a2 sceneIdentifier];
  v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@/%llu", @"audio", v9];
  [*(a1 + 32) addContentString:v7 identifier:v10 category:2500 owningCategory:0];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v11 = v8;
  v12 = [v11 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v17;
    do
    {
      v15 = 0;
      do
      {
        if (*v17 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [*(a1 + 32) addSynonym:*(*(&v16 + 1) + 8 * v15++) lookupIdentifier:v10 category:2501 originalContentString:v7];
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v13);
  }
}

+ (void)_appendGraphDataToAsset:(id)a3 forMomentFromFetchHelper:(id)a4 hasValidReverseLocationData:(BOOL)a5 indexingContext:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = [a6 locale];
  v12 = [v11 localeIdentifier];

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __115__PSIAssetTranslator__appendGraphDataToAsset_forMomentFromFetchHelper_hasValidReverseLocationData_indexingContext___block_invoke;
  v14[3] = &unk_1E756CF38;
  v16 = a5;
  v15 = v9;
  v13 = v9;
  [v10 enumerateMomentSearchEntitiesWithIndexLocaleIdentifier:v12 withBlock:v14];
}

void __115__PSIAssetTranslator__appendGraphDataToAsset_forMomentFromFetchHelper_hasValidReverseLocationData_indexingContext___block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 label];
  v5 = [v3 type];
  v6 = v5;
  v7 = 0;
  if (v5 > 1609)
  {
    if ((v5 - 1800) >= 3 && (v5 - 1700) >= 2 && v5 != 1610)
    {
      goto LABEL_23;
    }

    goto LABEL_15;
  }

  if ((v5 - 1000) > 8)
  {
    goto LABEL_11;
  }

  if (((1 << (v5 + 24)) & 0x183) != 0)
  {
    if (*(a1 + 40) != 1)
    {
      goto LABEL_23;
    }

    v7 = 0;
    goto LABEL_15;
  }

  if (v5 != 1003)
  {
LABEL_11:
    if (v5 == 1102)
    {
      v7 = 0;
      v6 = 1103;
    }

    else
    {
      if (v5 != 1600)
      {
        goto LABEL_23;
      }

      v8 = [v3 identifier];
      v9 = [v8 integerValue];

      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@/%lu", @"meaning", v9];
      v6 = 1600;
    }
  }

LABEL_15:
  [*(a1 + 32) addContentString:v4 identifier:v7 category:v6 owningCategory:0];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v10 = [v3 synonyms];
  v11 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = PLSearchIndexSynonymCategoryForCategory(v6);
    v14 = *v18;
    v15 = v13;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v18 != v14)
        {
          objc_enumerationMutation(v10);
        }

        [*(a1 + 32) addSynonym:*(*(&v17 + 1) + 8 * i) lookupIdentifier:v7 category:v15 originalContentString:v4];
      }

      v12 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v12);
  }

LABEL_23:
}

+ (id)psiAssetFromAsset:(id)a3 fetchHelper:(id)a4 propertySets:(unint64_t)a5 indexingContext:(id)a6 documentObservation:(id)a7
{
  v68 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = a7;
  v16 = [v12 uuid];
  LOBYTE(a6) = PLIsValidUUIDString();

  if (a6)
  {
    v17 = PLSearchIndexGetLog();
    v18 = os_signpost_id_generate(v17);
    v19 = v17;
    v20 = v19;
    v57 = v18 - 1;
    if (v18 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v20, OS_SIGNPOST_INTERVAL_BEGIN, v18, "PSIAssetTranslator: Asset translation time", "", buf, 2u);
    }

    v56 = v20;

    v59 = [v14 sceneTaxonomyProvider];
    v21 = [PSIDate alloc];
    v22 = [v12 dateCreated];
    v23 = [v14 calendar];
    v58 = [(PSIDate *)v21 initWithUniversalDate:v22 calendar:v23];

    if ([v12 reverseLocationDataIsValid])
    {
      v24 = [v12 reverseLocationData];
      v54 = v24 != 0;
    }

    else
    {
      v54 = 0;
    }

    v28 = [PSIAsset alloc];
    v29 = [v12 uuid];
    v30 = v58;
    v31 = [(PSIAsset *)v28 initWithUUID:v29 creationDate:v58];

    v27 = v31;
    [(PSIAsset *)v31 setPropertySets:a5];
    if (a5)
    {
      v52 = v15;
      if (v54)
      {
        v32 = [v14 countrySynonymProvider];
        [a1 _appendGEODataToAsset:v27 forAsset:v12 countrySynonymProvider:v32];
      }

      v53 = v14;
      [a1 _appendFilenameToAsset:v27 forAsset:{v12, v18, a5}];
      v51 = a1;
      v55 = v27;
      [a1 _appendSavedFromAppToAsset:v27 forAsset:v12];
      v33 = v12;
      v34 = [v12 additionalAttributes];
      v35 = [v34 keywords];

      v36 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{objc_msgSend(v35, "count")}];
      v61 = 0u;
      v62 = 0u;
      v63 = 0u;
      v64 = 0u;
      obj = v35;
      v37 = [obj countByEnumeratingWithState:&v61 objects:v65 count:16];
      if (v37)
      {
        v38 = v37;
        v39 = *v62;
        do
        {
          for (i = 0; i != v38; ++i)
          {
            if (*v62 != v39)
            {
              objc_enumerationMutation(obj);
            }

            v41 = *(*(&v61 + 1) + 8 * i);
            v42 = PLBackendGetLog();
            if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
            {
              v43 = [v33 uuid];
              *buf = 138412290;
              v67 = v43;
              _os_log_impl(&dword_19BF1F000, v42, OS_LOG_TYPE_DEFAULT, "keyword for asset: %@", buf, 0xCu);
            }

            v44 = [v41 title];
            [v36 addObject:v44];
          }

          v38 = [obj countByEnumeratingWithState:&v61 objects:v65 count:16];
        }

        while (v38);
      }

      a1 = v51;
      [v51 _appendKeywords:v36 toAsset:v55];
      v12 = v33;
      [v51 _appendPersonsAndPetsToAsset:v55 forAsset:v33 fetchHelper:v13];
      v14 = v53;
      if ([v53 isSharedLibraryEnabled])
      {
        [v51 _appendLibraryScopeToAsset:v55 forAsset:v33];
        [v51 _appendContributorToAsset:v55 forAsset:v33];
      }

      [v51 _appendAssetTextDataToAsset:v55 forAsset:v33];
      [v51 _appendDateCreatedToAsset:v55 indexingContext:v53 forAsset:v33];
      [v51 _appendMediaTypesToAsset:v55 forAsset:v33];
      [v51 _appendFavoriteToAsset:v55 forAsset:v33];
      [v51 _appendExifDataToAsset:v55 forAsset:v33];
      [v51 _appendSceneClassificationsToAsset:v55 sceneTaxonomyProvider:v59 forAsset:v33 fetchHelper:v13];
      [v51 _appendAudioClassificationToAsset:v55 forAsset:v33];
      [v51 _appendHumanActionsToAsset:v55 forAsset:v33 fetchHelper:v13];
      [v51 _appendUtilityTypesToAsset:v55 forAsset:v33 indexingContext:v53];
      v45 = [v53 csuTaxonomyObjectStore];
      v46 = [v53 locale];
      [v51 _appendPrivateEncryptedComputeScenes:v55 forAsset:v33 fetchHelper:v13 csuTaxonomyObjectStore:v45 locale:v46];

      v27 = v55;
      [v51 _appendStickerSuggestionsToAsset:v55 fetchHelper:v13 sceneTaxonomyProvider:v59 forAsset:v33];
      [v51 _appendStyleCastToAsset:v55 forAsset:v33];
      [v51 _appendGraphDataToAsset:v55 forMomentFromFetchHelper:v13 hasValidReverseLocationData:v54 indexingContext:v53];

      v15 = v52;
      v18 = v49;
      LOBYTE(a5) = v50;
      v30 = v58;
    }

    if ((a5 & 2) != 0)
    {
      [a1 _appendOCRTextForAsset:v27 documentObservation:v15];
    }

    v47 = v56;
    v25 = v47;
    if (v57 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v47))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v25, OS_SIGNPOST_INTERVAL_END, v18, "PSIAssetTranslator: Asset translation time", "", buf, 2u);
    }
  }

  else
  {
    v25 = PLSearchBackendModelTranslationGetLog();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = [v12 uuid];
      *buf = 138543362;
      v67 = v26;
      _os_log_impl(&dword_19BF1F000, v25, OS_LOG_TYPE_ERROR, "Invalid Asset UUID: %{public}@. Not inserting Asset into PSI.", buf, 0xCu);
    }

    v27 = 0;
  }

  return v27;
}

+ (id)psiAssetFromAsset:(id)a3 indexingContext:(id)a4 documentObservation:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [PLSearchIndexingLazyFetchHelper alloc];
  v12 = [v10 photoLibrary];
  v13 = [v12 libraryServicesManager];
  v14 = [v13 wellKnownPhotoLibraryIdentifier];
  v15 = [v10 photoLibrary];
  v16 = [v15 managedObjectContext];
  v17 = [(PLSearchIndexingLazyFetchHelper *)v11 initWithObject:v10 libraryIdentifier:v14 managedObjectContext:v16];

  v18 = [a1 psiAssetFromAsset:v10 fetchHelper:v17 propertySets:3 indexingContext:v9 documentObservation:v8];

  return v18;
}

@end