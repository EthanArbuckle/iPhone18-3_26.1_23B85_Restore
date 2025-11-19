@interface PLSpotlightCollectionShareTranslator
+ (id)spotlightSearchableItemFromCollectionShare:(id)a3;
@end

@implementation PLSpotlightCollectionShareTranslator

+ (id)spotlightSearchableItemFromCollectionShare:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v21 = [MEMORY[0x1E696AAA8] currentHandler];
    [v21 handleFailureInMethod:a2 object:a1 file:@"PLSpotlightCollectionShareTranslator.m" lineNumber:22 description:{@"Invalid parameter not satisfying: %@", @"collectionShare"}];
  }

  v6 = objc_opt_new();
  v7 = [v5 title];
  [v6 setPhotosTitle:v7];

  [v6 setPhotosResultType:@"com.apple.photos.search.result.collection.collectionShare"];
  v8 = [v5 photoLibrary];
  v9 = [v8 libraryServicesManager];
  v10 = [v9 wellKnownPhotoLibraryIdentifier];

  if (v10 <= 1)
  {
    v11 = [v6 photosTitle];
    v12 = [v11 length];

    if (v12)
    {
      v13 = [v5 uuid];
      v14 = PLServicesLocalizedFrameworkString();
      v15 = [v6 photosTitle];
      [PLSpotlightTranslatorUtilities tagCSSearchableItem:v6 entityInstanceIdentifier:v13 typeIdentifier:@"AlbumEntity" typeDisplayName:v14 displayTitle:v15 displaySubtitle:0];
    }
  }

  v16 = [PLSpotlightDonationUtilities domainIdentifierForPhotoLibraryIdentifier:v10];
  v17 = objc_alloc(MEMORY[0x1E6964E80]);
  v18 = [v5 uuid];
  v19 = [v17 initWithUniqueIdentifier:v18 domainIdentifier:v16 attributeSet:v6];

  return v19;
}

@end