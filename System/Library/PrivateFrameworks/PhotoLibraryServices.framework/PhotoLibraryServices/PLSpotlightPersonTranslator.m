@interface PLSpotlightPersonTranslator
+ (id)spotlightSearchableItemFromPerson:(id)a3;
@end

@implementation PLSpotlightPersonTranslator

+ (id)spotlightSearchableItemFromPerson:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    v24 = [MEMORY[0x1E696AAA8] currentHandler];
    [v24 handleFailureInMethod:a2 object:a1 file:@"PLSpotlightPersonTranslator.m" lineNumber:27 description:{@"Invalid parameter not satisfying: %@", @"person"}];
  }

  if ([v5 isEligibleForSearchIndexing])
  {
    v6 = objc_opt_new();
    v7 = [v5 personUUID];
    [v6 setIdentifier:v7];

    [v6 setPhotosResultType:@"com.apple.photos.search.result.collection.person"];
    v8 = [PLSpotlightTranslatorUtilities spotlightPersonFromPLPerson:v5 face:0 fetchHelper:0];
    v25 = v8;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v25 count:1];
    [v6 setPhotosPeople:v9];

    v10 = [v5 photoLibrary];
    v11 = [v10 libraryServicesManager];
    v12 = +[PLSpotlightDonationUtilities domainIdentifierForPhotoLibraryIdentifier:](PLSpotlightDonationUtilities, "domainIdentifierForPhotoLibraryIdentifier:", [v11 wellKnownPhotoLibraryIdentifier]);

    v13 = objc_alloc(MEMORY[0x1E6964E80]);
    v14 = [v5 personUUID];
    v15 = [v13 initWithUniqueIdentifier:v14 domainIdentifier:v12 attributeSet:v6];

    v16 = [v5 photoLibrary];
    v17 = [v16 libraryServicesManager];
    v18 = [v17 wellKnownPhotoLibraryIdentifier];

    if (v18 <= 1)
    {
      v19 = [v5 personUUID];
      v20 = PLServicesLocalizedFrameworkString();
      v21 = [v5 fullName];
      [PLSpotlightTranslatorUtilities tagCSSearchableItem:v6 entityInstanceIdentifier:v19 typeIdentifier:@"PersonEntity" typeDisplayName:v20 displayTitle:v21 displaySubtitle:0];
    }
  }

  else
  {
    v6 = PLSearchBackendModelTranslationGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v22 = [v5 personUUID];
      *buf = 138543362;
      v27 = v22;
      _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_INFO, "Unsupported Person. Not indexing Person: %{public}@", buf, 0xCu);
    }

    v15 = 0;
  }

  return v15;
}

@end