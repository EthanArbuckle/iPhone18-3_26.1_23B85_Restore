@interface PLSpotlightHighlightTranslator
+ (id)spotlightSearchableItemFromHighlight:(id)a3;
@end

@implementation PLSpotlightHighlightTranslator

+ (id)spotlightSearchableItemFromHighlight:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    [v17 handleFailureInMethod:a2 object:a1 file:@"PLSpotlightHighlightTranslator.m" lineNumber:24 description:{@"Invalid parameter not satisfying: %@", @"highlight"}];
  }

  if ([v5 isEligibleForSearchIndexing])
  {
    v6 = objc_opt_new();
    v7 = [v5 title];
    [v6 setPhotosTitle:v7];

    [v6 setPhotosResultType:@"com.apple.photos.search.result.collection.highlight"];
    v8 = [v5 photoLibrary];
    v9 = [v8 libraryServicesManager];
    v10 = +[PLSpotlightDonationUtilities domainIdentifierForPhotoLibraryIdentifier:](PLSpotlightDonationUtilities, "domainIdentifierForPhotoLibraryIdentifier:", [v9 wellKnownPhotoLibraryIdentifier]);

    v11 = objc_alloc(MEMORY[0x1E6964E80]);
    v12 = [v5 uuid];
    v13 = [v11 initWithUniqueIdentifier:v12 domainIdentifier:v10 attributeSet:v6];
  }

  else
  {
    v14 = PLSearchBackendModelTranslationGetLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = [v5 uuid];
      *buf = 138412290;
      v19 = v15;
      _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_INFO, "Unsupported Highlight. Not indexing Highlight: %@", buf, 0xCu);
    }

    v13 = 0;
  }

  return v13;
}

@end