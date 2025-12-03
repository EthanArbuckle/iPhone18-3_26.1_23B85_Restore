@interface PLSpotlightMemoryTranslator
+ (id)spotlightSearchableItemFromMemory:(id)memory;
@end

@implementation PLSpotlightMemoryTranslator

+ (id)spotlightSearchableItemFromMemory:(id)memory
{
  v26 = *MEMORY[0x1E69E9840];
  memoryCopy = memory;
  if (!memoryCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLSpotlightMemoryTranslator.m" lineNumber:23 description:{@"Invalid parameter not satisfying: %@", @"memory"}];
  }

  if ([memoryCopy isEligibleForSearchIndexing])
  {
    curatedAssets = [memoryCopy curatedAssets];
    v7 = [curatedAssets count];

    if (v7)
    {
      v8 = objc_opt_new();
      [v8 setPhotosResultType:@"com.apple.photos.search.result.collection.memory"];
      title = [memoryCopy title];
      v10 = [title stringByReplacingOccurrencesOfString:@"\n" withString:&stru_1F0F06D80];
      [v8 setPhotosTitle:v10];

      photoLibrary = [memoryCopy photoLibrary];
      libraryServicesManager = [photoLibrary libraryServicesManager];
      v13 = +[PLSpotlightDonationUtilities domainIdentifierForPhotoLibraryIdentifier:](PLSpotlightDonationUtilities, "domainIdentifierForPhotoLibraryIdentifier:", [libraryServicesManager wellKnownPhotoLibraryIdentifier]);

      v14 = objc_alloc(MEMORY[0x1E6964E80]);
      uuid = [memoryCopy uuid];
      v16 = [v14 initWithUniqueIdentifier:uuid domainIdentifier:v13 attributeSet:v8];

      goto LABEL_12;
    }

    v17 = PLSearchBackendModelTranslationGetLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      uuid2 = [memoryCopy uuid];
      *buf = 138543362;
      v25 = uuid2;
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
      uuid2 = [memoryCopy uuid];
      *buf = 138543362;
      v25 = uuid2;
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