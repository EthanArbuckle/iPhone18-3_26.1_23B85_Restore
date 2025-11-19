@interface _PSPhotoUtils
+ (id)assetsWithIdentifiers:(id)a3;
+ (id)attachmentsEligibleForPhotoProcessingFromAttachments:(id)a3;
+ (id)candidateContactsIdentifiersFromPhotoSuggestedPeople:(id)a3;
+ (id)candidateLocalIdentifiersFromPhotoSuggestedPeople:(id)a3;
+ (id)personIdentifiersForPeopleInPicturesWithIdentifiers:(id)a3;
+ (id)sceneAnalysisFromAssets:(id)a3;
+ (id)sceneTagsForPhotosWithIdentifiers:(id)a3;
+ (id)sharedMADService;
+ (void)prewarmPhotosFrameworks;
@end

@implementation _PSPhotoUtils

+ (id)sharedMADService
{
  if (sharedMADService__pasOnceToken15 != -1)
  {
    +[_PSPhotoUtils sharedMADService];
  }

  v3 = sharedMADService__pasExprOnceResult;

  return v3;
}

+ (void)prewarmPhotosFrameworks
{
  if (prewarmPhotosFrameworks_prewarmOnce != -1)
  {
    +[_PSPhotoUtils prewarmPhotosFrameworks];
  }
}

+ (id)attachmentsEligibleForPhotoProcessingFromAttachments:(id)a3
{
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = [a3 _pas_filteredArrayWithTest:&__block_literal_global_215];
  if ([v3 count])
  {
    v4 = [v3 firstObject];
    v9[0] = v4;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
  }

  else
  {
    v4 = +[_PSLogging generalChannel];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v8 = 0;
      _os_log_impl(&dword_1B5ED1000, v4, OS_LOG_TYPE_INFO, "No photo attachments in the prediction context for media analysis and scene processing", v8, 2u);
    }

    v5 = MEMORY[0x1E695E0F0];
  }

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (id)assetsWithIdentifiers:(id)a3
{
  v27[1] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2050000000;
  v4 = getPHFetchOptionsClass_softClass;
  v26 = getPHFetchOptionsClass_softClass;
  if (!getPHFetchOptionsClass_softClass)
  {
    v18 = MEMORY[0x1E69E9820];
    v19 = 3221225472;
    v20 = __getPHFetchOptionsClass_block_invoke;
    v21 = &unk_1E7C23BF0;
    v22 = &v23;
    PhotosLibraryCore();
    v24[3] = objc_getClass("PHFetchOptions");
    getPHFetchOptionsClass_softClass = *(v22[1] + 24);
    v4 = v24[3];
  }

  v5 = v4;
  _Block_object_dispose(&v23, 8);
  v6 = [v4 fetchOptionsWithInclusiveDefaults];
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v7 = getPHAssetPropertySetSceneAnalysisSymbolLoc_ptr;
  v26 = getPHAssetPropertySetSceneAnalysisSymbolLoc_ptr;
  if (!getPHAssetPropertySetSceneAnalysisSymbolLoc_ptr)
  {
    v18 = MEMORY[0x1E69E9820];
    v19 = 3221225472;
    v20 = __getPHAssetPropertySetSceneAnalysisSymbolLoc_block_invoke;
    v21 = &unk_1E7C23BF0;
    v22 = &v23;
    __getPHAssetPropertySetSceneAnalysisSymbolLoc_block_invoke(&v18);
    v7 = v24[3];
  }

  _Block_object_dispose(&v23, 8);
  if (!v7)
  {
    [_PSBlockedHandlesCache beginSyncingWithTU];
    __break(1u);
  }

  v27[0] = *v7;
  v8 = MEMORY[0x1E695DEC8];
  v9 = v27[0];
  v10 = [v8 arrayWithObjects:v27 count:1];

  [v6 setFetchPropertySets:v10];
  v23 = 0;
  v24 = &v23;
  v25 = 0x2050000000;
  v11 = getPHAssetClass_softClass;
  v26 = getPHAssetClass_softClass;
  if (!getPHAssetClass_softClass)
  {
    v18 = MEMORY[0x1E69E9820];
    v19 = 3221225472;
    v20 = __getPHAssetClass_block_invoke;
    v21 = &unk_1E7C23BF0;
    v22 = &v23;
    PhotosLibraryCore();
    Class = objc_getClass("PHAsset");
    *(v22[1] + 24) = Class;
    getPHAssetClass_softClass = *(v22[1] + 24);
    v11 = v24[3];
  }

  v13 = v11;
  _Block_object_dispose(&v23, 8);
  v14 = [v11 fetchAssetsWithLocalIdentifiers:v3 options:v6];
  v15 = [v14 fetchedObjects];

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

+ (id)sceneAnalysisFromAssets:(id)a3
{
  v49 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = MEMORY[0x1E695DEC8];
  v5 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v6 = [v5 URLForResource:@"blacklistedScenes" withExtension:@"plist"];
  v46 = 0;
  v7 = [v4 arrayWithContentsOfURL:v6 error:&v46];
  v8 = v46;

  if (v8)
  {
    v9 = +[_PSLogging generalChannel];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(_PSPhotoUtils *)v8 sceneAnalysisFromAssets:v9];
    }

    v10 = MEMORY[0x1E695E0F0];
  }

  else
  {
    v37 = [MEMORY[0x1E695DFA8] set];
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v32 = v3;
    obj = v3;
    v35 = [obj countByEnumeratingWithState:&v42 objects:v48 count:16];
    if (v35)
    {
      v34 = *v43;
      do
      {
        v11 = 0;
        do
        {
          if (*v43 != v34)
          {
            objc_enumerationMutation(obj);
          }

          v36 = v11;
          v12 = [*(*(&v42 + 1) + 8 * v11) sceneClassifications];
          v38 = 0u;
          v39 = 0u;
          v40 = 0u;
          v41 = 0u;
          v13 = [v12 countByEnumeratingWithState:&v38 objects:v47 count:16];
          if (v13)
          {
            v14 = v13;
            v15 = *v39;
            do
            {
              for (i = 0; i != v14; ++i)
              {
                if (*v39 != v15)
                {
                  objc_enumerationMutation(v12);
                }

                v17 = *(*(&v38 + 1) + 8 * i);
                [v17 confidence];
                v19 = v18;
                v20 = [v17 sceneIdentifier];
                v21 = [getPFSceneTaxonomyClass() sharedTaxonomy];
                v22 = [v21 nodeForSceneClassId:v20];

                if (v22)
                {
                  v23 = [v22 name];
                  v24 = [v7 containsObject:v23];

                  if ((v24 & 1) == 0)
                  {
                    [v22 highRecallThreshold];
                    if (v19 >= v25)
                    {
                      [v22 highPrecisionThreshold];
                      v27 = v26;
                      v28 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v20];
                      v29 = [v28 stringValue];

                      if (v29 && v19 >= v27)
                      {
                        [v37 addObject:v29];
                      }
                    }
                  }
                }
              }

              v14 = [v12 countByEnumeratingWithState:&v38 objects:v47 count:16];
            }

            while (v14);
          }

          v11 = v36 + 1;
        }

        while (v36 + 1 != v35);
        v35 = [obj countByEnumeratingWithState:&v42 objects:v48 count:16];
      }

      while (v35);
    }

    v9 = v37;
    v10 = [v37 allObjects];
    v8 = 0;
    v3 = v32;
  }

  v30 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)candidateContactsIdentifiersFromPhotoSuggestedPeople:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E695DF70] array];
  if ([v3 count])
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v16;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v16 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v15 + 1) + 8 * i);
          v11 = [v10 objectForKeyedSubscript:{@"contactIdentifier", v15}];

          if (v11)
          {
            v12 = [v10 objectForKeyedSubscript:@"contactIdentifier"];
            [v4 addObject:v12];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v7);
    }
  }

  v13 = *MEMORY[0x1E69E9840];

  return v4;
}

+ (id)candidateLocalIdentifiersFromPhotoSuggestedPeople:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E695DF70] array];
  if ([v3 count])
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v16;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v16 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v15 + 1) + 8 * i);
          v11 = [v10 objectForKeyedSubscript:{@"localIdentifier", v15}];

          if (v11)
          {
            v12 = [v10 objectForKeyedSubscript:@"localIdentifier"];
            [v4 addObject:v12];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v7);
    }
  }

  v13 = *MEMORY[0x1E69E9840];

  return v4;
}

+ (id)sceneTagsForPhotosWithIdentifiers:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && [v4 count])
  {
    v6 = [a1 assetsWithIdentifiers:v5];
    v7 = [a1 sceneAnalysisFromAssets:v6];
  }

  else
  {
    v7 = MEMORY[0x1E695E0F0];
  }

  return v7;
}

+ (id)personIdentifiersForPeopleInPicturesWithIdentifiers:(id)a3
{
  v63 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v52 = 0;
  v53 = &v52;
  v54 = 0x2050000000;
  v4 = getMADPersonIdentificationRequestClass_softClass;
  v55 = getMADPersonIdentificationRequestClass_softClass;
  if (!getMADPersonIdentificationRequestClass_softClass)
  {
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __getMADPersonIdentificationRequestClass_block_invoke;
    v61 = &unk_1E7C23BF0;
    v62 = &v52;
    MediaAnalysisServicesLibraryCore();
    Class = objc_getClass("MADPersonIdentificationRequest");
    *(v62[1] + 24) = Class;
    getMADPersonIdentificationRequestClass_softClass = *(v62[1] + 24);
    v4 = v53[3];
  }

  v6 = v4;
  _Block_object_dispose(&v52, 8);
  v37 = objc_alloc_init(v4);
  [v37 setMaximumFaceCount:4];
  [v37 setAllowOnDemand:1];
  [v37 setAllowUnverifiedIdentity:1];
  [v37 setUseLowResolutionPicture:1];
  [v37 setIncludePets:1];
  v7 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  obj = v3;
  v34 = [obj countByEnumeratingWithState:&v48 objects:v59 count:16];
  if (v34)
  {
    v36 = 0;
    v32 = *v49;
    *&v8 = 138412546;
    v30 = v8;
    while (1)
    {
      v9 = 0;
      do
      {
        if (*v49 != v32)
        {
          v10 = v9;
          objc_enumerationMutation(obj);
          v9 = v10;
        }

        v35 = v9;
        v11 = *(*(&v48 + 1) + 8 * v9);
        v12 = [a1 sharedMADService];
        v58 = v37;
        v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v58 count:1];
        v14 = [getPHPhotoLibraryClass() systemPhotoLibraryURL];
        v47 = v36;
        v15 = [v12 performRequests:v13 assetLocalIdentifier:v11 photoLibraryURL:v14 error:&v47];
        v16 = v47;

        v36 = v16;
        if (v15)
        {
          v38 = [v37 results];
          v45 = 0u;
          v46 = 0u;
          v43 = 0u;
          v44 = 0u;
          v17 = [v38 countByEnumeratingWithState:&v43 objects:v57 count:16];
          if (v17)
          {
            v18 = *v44;
            do
            {
              for (i = 0; i != v17; ++i)
              {
                if (*v44 != v18)
                {
                  objc_enumerationMutation(v38);
                }

                v20 = *(*(&v43 + 1) + 8 * i);
                v39 = 0u;
                v40 = 0u;
                v41 = 0u;
                v42 = 0u;
                v21 = [v20 resultItems];
                v22 = [v21 countByEnumeratingWithState:&v39 objects:v56 count:16];
                if (v22)
                {
                  v23 = *v40;
                  do
                  {
                    for (j = 0; j != v22; ++j)
                    {
                      if (*v40 != v23)
                      {
                        objc_enumerationMutation(v21);
                      }

                      v25 = [*(*(&v39 + 1) + 8 * j) personIdentifier];
                      if (v25)
                      {
                        [v7 addObject:v25];
                      }
                    }

                    v22 = [v21 countByEnumeratingWithState:&v39 objects:v56 count:16];
                  }

                  while (v22);
                }
              }

              v17 = [v38 countByEnumeratingWithState:&v43 objects:v57 count:16];
            }

            while (v17);
          }
        }

        else
        {
          if (!v16)
          {
            goto LABEL_30;
          }

          v38 = +[_PSLogging mediaAnalysisChannel];
          if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
          {
            v26 = [v16 localizedDescription];
            *buf = v30;
            *&buf[4] = v11;
            *&buf[12] = 2112;
            *&buf[14] = v26;
            _os_log_error_impl(&dword_1B5ED1000, v38, OS_LOG_TYPE_ERROR, "PhotoId: %@, person identification error: %@", buf, 0x16u);
          }
        }

LABEL_30:
        v9 = v35 + 1;
      }

      while (v35 + 1 != v34);
      v34 = [obj countByEnumeratingWithState:&v48 objects:v59 count:16];
      if (!v34)
      {

        break;
      }
    }
  }

  v27 = [v7 allObjects];

  v28 = *MEMORY[0x1E69E9840];

  return v27;
}

+ (void)sceneAnalysisFromAssets:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1B5ED1000, a2, OS_LOG_TYPE_ERROR, "Error loading scene backlist = %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end