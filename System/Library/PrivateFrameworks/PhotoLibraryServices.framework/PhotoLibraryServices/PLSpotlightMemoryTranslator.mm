@interface PLSpotlightMemoryTranslator
+ (id)spotlightSearchableItemFromMemory:(id)a3;
@end

@implementation PLSpotlightMemoryTranslator

+ (id)spotlightSearchableItemFromMemory:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    v23 = [MEMORY[0x1E696AAA8] currentHandler];
    [v23 handleFailureInMethod:a2 object:a1 file:@"PLSpotlightMemoryTranslator.m" lineNumber:23 description:{@"Invalid parameter not satisfying: %@", @"memory"}];
  }

  if ([v5 isEligibleForSearchIndexing])
  {
    v6 = [v5 curatedAssets];
    v7 = [v6 count];

    if (v7)
    {
      v8 = objc_opt_new();
      [v8 setPhotosResultType:@"com.apple.photos.search.result.collection.memory"];
      v9 = [v5 title];
      v10 = [v9 stringByReplacingOccurrencesOfString:@"\n" withString:&stru_1F0F06D80];
      [v8 setPhotosTitle:v10];

      v11 = [v5 photoLibrary];
      v12 = [v11 libraryServicesManager];
      v13 = +[PLSpotlightDonationUtilities domainIdentifierForPhotoLibraryIdentifier:](PLSpotlightDonationUtilities, "domainIdentifierForPhotoLibraryIdentifier:", [v12 wellKnownPhotoLibraryIdentifier]);

      v14 = objc_alloc(MEMORY[0x1E6964E80]);
      v15 = [v5 uuid];
      v16 = [v14 initWithUniqueIdentifier:v15 domainIdentifier:v13 attributeSet:v8];

      goto LABEL_12;
    }

    v17 = PLSearchBackendModelTranslationGetLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = [v5 uuid];
      *buf = 138543362;
      v25 = v18;
      v19 = "No curated assets for Memory. Not adding to Spotlight: %{public}@";
      v20 = v17;
      v21 = OS_LOG_TYPE_ERROR;
      goto LABEL_10;
    }
  }

  else
  {
    v17 = PLSearchBackendModelTranslationGetLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = [v5 uuid];
      *buf = 138543362;
      v25 = v18;
      v19 = "Unsupported Memory. Not indexing Memory: %{public}@";
      v20 = v17;
      v21 = OS_LOG_TYPE_INFO;
LABEL_10:
      _os_log_impl(&dword_19BF1F000, v20, v21, v19, buf, 0xCu);
    }
  }

  v16 = 0;
LABEL_12:

  return v16;
}

@end