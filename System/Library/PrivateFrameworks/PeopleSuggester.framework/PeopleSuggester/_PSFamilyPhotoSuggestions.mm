@interface _PSFamilyPhotoSuggestions
+ (id)fetchVerifiedPersonsForFamilyPhotoSuggestionsModel;
+ (id)photosContactsKnowledgeSuggestions;
+ (id)photosRelationshipKnowledgeSuggestions;
+ (void)photosContactsKnowledgeSuggestions;
+ (void)photosRelationshipKnowledgeSuggestions;
@end

@implementation _PSFamilyPhotoSuggestions

+ (id)photosContactsKnowledgeSuggestions
{
  v46 = *MEMORY[0x1E69E9840];
  fetchVerifiedPersonsForFamilyPhotoSuggestionsModel = [objc_opt_class() fetchVerifiedPersonsForFamilyPhotoSuggestionsModel];
  v2 = +[_PSLogging familyRecommenderChannel];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    +[(_PSFamilyPhotoSuggestions *)v2];
  }

  v3 = objc_opt_new();
  v36 = 0;
  v37 = &v36;
  v38 = 0x2050000000;
  v4 = getGDViewServiceClass_softClass_0;
  v39 = getGDViewServiceClass_softClass_0;
  if (!getGDViewServiceClass_softClass_0)
  {
    v41 = MEMORY[0x1E69E9820];
    v42 = 3221225472;
    v43 = __getGDViewServiceClass_block_invoke_0;
    v44 = &unk_1E7C23BF0;
    v45 = &v36;
    __getGDViewServiceClass_block_invoke_0(&v41);
    v4 = v37[3];
  }

  v5 = v4;
  _Block_object_dispose(&v36, 8);
  clientService = [v4 clientService];
  v36 = 0;
  v37 = &v36;
  v38 = 0x2020000000;
  v7 = getGDAutonamingViewPhotosAutonamingViewNameSymbolLoc_ptr;
  v39 = getGDAutonamingViewPhotosAutonamingViewNameSymbolLoc_ptr;
  if (!getGDAutonamingViewPhotosAutonamingViewNameSymbolLoc_ptr)
  {
    v41 = MEMORY[0x1E69E9820];
    v42 = 3221225472;
    v43 = __getGDAutonamingViewPhotosAutonamingViewNameSymbolLoc_block_invoke;
    v44 = &unk_1E7C23BF0;
    v45 = &v36;
    v8 = IntelligencePlatformLibrary();
    v9 = dlsym(v8, "GDAutonamingViewPhotosAutonamingViewName");
    *(v45[1] + 24) = v9;
    getGDAutonamingViewPhotosAutonamingViewNameSymbolLoc_ptr = *(v45[1] + 24);
    v7 = v37[3];
  }

  _Block_object_dispose(&v36, 8);
  if (!v7)
  {
    [_PSBlockedHandlesCache beginSyncingWithTU];
    __break(1u);
  }

  v10 = *v7;
  v35 = 0;
  v11 = v10;
  v12 = [clientService autonamingViewWithViewName:v11 error:&v35];
  v29 = v35;

  if (v12)
  {
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v13 = fetchVerifiedPersonsForFamilyPhotoSuggestionsModel;
    v14 = [v13 countByEnumeratingWithState:&v31 objects:v40 count:16];
    if (v14)
    {
      v15 = *v32;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v32 != v15)
          {
            objc_enumerationMutation(v13);
          }

          v17 = *(*(&v31 + 1) + 8 * i);
          localIdentifier = [v17 localIdentifier];
          v19 = [v12 personForIdentifier:localIdentifier];

          if (!v19 || ([v19 contactIdentifier], v20 = objc_claimAutoreleasedReturnValue(), v21 = v20 == 0, v20, v21))
          {
            contactIdentifier = +[_PSLogging familyRecommenderChannel];
            if (os_log_type_enabled(contactIdentifier, OS_LOG_TYPE_DEBUG))
            {
              [(_PSFamilyPhotoSuggestions *)&v41 photosContactsKnowledgeSuggestions:v17];
            }
          }

          else
          {
            contactIdentifier = [v19 contactIdentifier];
            [v3 addObject:contactIdentifier];
          }
        }

        v14 = [v13 countByEnumeratingWithState:&v31 objects:v40 count:16];
      }

      while (v14);
    }

    v23 = +[_PSLogging familyRecommenderChannel];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      +[(_PSFamilyPhotoSuggestions *)v3];
    }

    v24 = v3;
  }

  else
  {
    if (v29)
    {
      v25 = +[_PSLogging familyRecommenderChannel];
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        +[_PSFamilyPhotoSuggestions photosContactsKnowledgeSuggestions];
      }
    }

    v24 = objc_opt_new();
  }

  v26 = v24;

  v27 = *MEMORY[0x1E69E9840];

  return v26;
}

+ (id)photosRelationshipKnowledgeSuggestions
{
  v27 = *MEMORY[0x1E69E9840];
  fetchVerifiedPersonsForFamilyPhotoSuggestionsModel = [objc_opt_class() fetchVerifiedPersonsForFamilyPhotoSuggestionsModel];
  v4 = +[_PSLogging familyRecommenderChannel];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    +[(_PSFamilyPhotoSuggestions *)v4];
  }

  v5 = [getPHPersonClass() batchFetchRelationshipInferencesForPersons:fetchVerifiedPersonsForFamilyPhotoSuggestionsModel];
  v6 = objc_opt_new();
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __67___PSFamilyPhotoSuggestions_photosRelationshipKnowledgeSuggestions__block_invoke;
  v23[3] = &unk_1E7C26A88;
  selfCopy = self;
  v7 = v6;
  v24 = v7;
  [v5 enumerateKeysAndObjectsUsingBlock:v23];
  v8 = +[_PSLogging familyRecommenderChannel];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    +[(_PSFamilyPhotoSuggestions *)v7];
  }

  v9 = objc_opt_new();
  v10 = [getPHPersonClass() fetchPersonsWithLocalIdentifiers:v7 options:0];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v11 = [v10 countByEnumeratingWithState:&v19 objects:v26 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v20;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v20 != v13)
        {
          objc_enumerationMutation(v10);
        }

        personUri = [*(*(&v19 + 1) + 8 * i) personUri];
        if (personUri)
        {
          [v9 addObject:personUri];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v19 objects:v26 count:16];
    }

    while (v12);
  }

  v16 = +[_PSLogging familyRecommenderChannel];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    +[(_PSFamilyPhotoSuggestions *)v9];
  }

  v17 = *MEMORY[0x1E69E9840];

  return v9;
}

+ (id)fetchVerifiedPersonsForFamilyPhotoSuggestionsModel
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2050000000;
  v2 = getPHPhotoLibraryClass_softClass_0;
  v13 = getPHPhotoLibraryClass_softClass_0;
  if (!getPHPhotoLibraryClass_softClass_0)
  {
    PhotosLibraryCore_0();
    v11[3] = objc_getClass("PHPhotoLibrary");
    getPHPhotoLibraryClass_softClass_0 = v11[3];
    v2 = v11[3];
  }

  v3 = v2;
  _Block_object_dispose(&v10, 8);
  sharedPhotoLibrary = [v2 sharedPhotoLibrary];
  v5 = sharedPhotoLibrary;
  if (sharedPhotoLibrary)
  {
    librarySpecificFetchOptions = [sharedPhotoLibrary librarySpecificFetchOptions];
    v7 = [MEMORY[0x1E696AE18] predicateWithFormat:@"verifiedType = %@ OR verifiedType = %@", &unk_1F2D8BC70, &unk_1F2D8BC88];
    [librarySpecificFetchOptions setPredicate:v7];

    [librarySpecificFetchOptions setShouldPrefetchCount:1];
    [librarySpecificFetchOptions setFetchLimit:100];
    v8 = [getPHPersonClass() fetchPersonsWithOptions:librarySpecificFetchOptions];
  }

  else
  {
    librarySpecificFetchOptions = +[_PSLogging familyRecommenderChannel];
    if (os_log_type_enabled(librarySpecificFetchOptions, OS_LOG_TYPE_FAULT))
    {
      +[(_PSFamilyPhotoSuggestions *)librarySpecificFetchOptions];
    }

    v8 = 0;
  }

  return v8;
}

+ (void)photosContactsKnowledgeSuggestions
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(&dword_1B5ED1000, v0, OS_LOG_TYPE_ERROR, "Failed to connect, Error %@", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

+ (void)photosRelationshipKnowledgeSuggestions
{
  v9 = *MEMORY[0x1E69E9840];
  [self count];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_8(&dword_1B5ED1000, v1, v2, "photosRelationshipKnowledgeSuggestions: Resolved %lu contact ids", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x1E69E9840];
}

@end