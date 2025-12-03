@interface PLSpotlightPersonTranslator
+ (id)spotlightSearchableItemFromPerson:(id)person;
@end

@implementation PLSpotlightPersonTranslator

+ (id)spotlightSearchableItemFromPerson:(id)person
{
  v28 = *MEMORY[0x1E69E9840];
  personCopy = person;
  if (!personCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLSpotlightPersonTranslator.m" lineNumber:27 description:{@"Invalid parameter not satisfying: %@", @"person"}];
  }

  if ([personCopy isEligibleForSearchIndexing])
  {
    v6 = objc_opt_new();
    personUUID = [personCopy personUUID];
    [v6 setIdentifier:personUUID];

    [v6 setPhotosResultType:@"com.apple.photos.search.result.collection.person"];
    v8 = [PLSpotlightTranslatorUtilities spotlightPersonFromPLPerson:personCopy face:0 fetchHelper:0];
    v25 = v8;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v25 count:1];
    [v6 setPhotosPeople:v9];

    photoLibrary = [personCopy photoLibrary];
    libraryServicesManager = [photoLibrary libraryServicesManager];
    v12 = +[PLSpotlightDonationUtilities domainIdentifierForPhotoLibraryIdentifier:](PLSpotlightDonationUtilities, "domainIdentifierForPhotoLibraryIdentifier:", [libraryServicesManager wellKnownPhotoLibraryIdentifier]);

    v13 = objc_alloc(MEMORY[0x1E6964E80]);
    personUUID2 = [personCopy personUUID];
    v15 = [v13 initWithUniqueIdentifier:personUUID2 domainIdentifier:v12 attributeSet:v6];

    photoLibrary2 = [personCopy photoLibrary];
    libraryServicesManager2 = [photoLibrary2 libraryServicesManager];
    wellKnownPhotoLibraryIdentifier = [libraryServicesManager2 wellKnownPhotoLibraryIdentifier];

    if (wellKnownPhotoLibraryIdentifier <= 1)
    {
      personUUID3 = [personCopy personUUID];
      v20 = PLServicesLocalizedFrameworkString();
      fullName = [personCopy fullName];
      [PLSpotlightTranslatorUtilities tagCSSearchableItem:v6 entityInstanceIdentifier:personUUID3 typeIdentifier:@"PersonEntity" typeDisplayName:v20 displayTitle:fullName displaySubtitle:0];
    }
  }

  else
  {
    v6 = PLSearchBackendModelTranslationGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      personUUID4 = [personCopy personUUID];
      *buf = 138543362;
      v27 = personUUID4;
      _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_INFO, "Unsupported Person. Not indexing Person: %{public}@", buf, 0xCu);
    }

    v15 = 0;
  }

  return v15;
}

@end