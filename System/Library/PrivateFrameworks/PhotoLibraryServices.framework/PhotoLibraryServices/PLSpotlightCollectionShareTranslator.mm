@interface PLSpotlightCollectionShareTranslator
+ (id)spotlightSearchableItemFromCollectionShare:(id)share;
@end

@implementation PLSpotlightCollectionShareTranslator

+ (id)spotlightSearchableItemFromCollectionShare:(id)share
{
  shareCopy = share;
  if (!shareCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLSpotlightCollectionShareTranslator.m" lineNumber:22 description:{@"Invalid parameter not satisfying: %@", @"collectionShare"}];
  }

  v6 = objc_opt_new();
  title = [shareCopy title];
  [v6 setPhotosTitle:title];

  [v6 setPhotosResultType:@"com.apple.photos.search.result.collection.collectionShare"];
  photoLibrary = [shareCopy photoLibrary];
  libraryServicesManager = [photoLibrary libraryServicesManager];
  wellKnownPhotoLibraryIdentifier = [libraryServicesManager wellKnownPhotoLibraryIdentifier];

  if (wellKnownPhotoLibraryIdentifier <= 1)
  {
    photosTitle = [v6 photosTitle];
    v12 = [photosTitle length];

    if (v12)
    {
      uuid = [shareCopy uuid];
      v14 = PLServicesLocalizedFrameworkString();
      photosTitle2 = [v6 photosTitle];
      [PLSpotlightTranslatorUtilities tagCSSearchableItem:v6 entityInstanceIdentifier:uuid typeIdentifier:@"AlbumEntity" typeDisplayName:v14 displayTitle:photosTitle2 displaySubtitle:0];
    }
  }

  v16 = [PLSpotlightDonationUtilities domainIdentifierForPhotoLibraryIdentifier:wellKnownPhotoLibraryIdentifier];
  v17 = objc_alloc(MEMORY[0x1E6964E80]);
  uuid2 = [shareCopy uuid];
  v19 = [v17 initWithUniqueIdentifier:uuid2 domainIdentifier:v16 attributeSet:v6];

  return v19;
}

@end