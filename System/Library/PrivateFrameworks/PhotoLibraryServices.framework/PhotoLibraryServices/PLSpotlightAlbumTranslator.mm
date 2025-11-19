@interface PLSpotlightAlbumTranslator
+ (id)spotlightSearchableItemFromAlbum:(id)a3;
@end

@implementation PLSpotlightAlbumTranslator

+ (id)spotlightSearchableItemFromAlbum:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v21 = [MEMORY[0x1E696AAA8] currentHandler];
    [v21 handleFailureInMethod:a2 object:a1 file:@"PLSpotlightAlbumTranslator.m" lineNumber:24 description:{@"Invalid parameter not satisfying: %@", @"album"}];
  }

  v6 = objc_opt_new();
  v7 = [v5 localizedTitle];
  if (v7)
  {
    [v6 setPhotosTitle:v7];
  }

  else
  {
    v8 = [v5 title];
    [v6 setPhotosTitle:v8];
  }

  [v6 setPhotosResultType:@"com.apple.photos.search.result.collection.album"];
  v9 = [v5 photoLibrary];
  v10 = [v9 libraryServicesManager];
  if ([v10 wellKnownPhotoLibraryIdentifier] > 1)
  {
    goto LABEL_11;
  }

  v11 = [v6 photosTitle];
  v12 = [v11 length];

  if (v12 && ([v5 kindValue] == 2 || objc_msgSend(v5, "kindValue") == 1505))
  {
    v9 = [v5 uuid];
    v10 = PLServicesLocalizedFrameworkString();
    v13 = [v6 photosTitle];
    [PLSpotlightTranslatorUtilities tagCSSearchableItem:v6 entityInstanceIdentifier:v9 typeIdentifier:@"AlbumEntity" typeDisplayName:v10 displayTitle:v13 displaySubtitle:0];

LABEL_11:
  }

  v14 = [v5 photoLibrary];
  v15 = [v14 libraryServicesManager];
  v16 = +[PLSpotlightDonationUtilities domainIdentifierForPhotoLibraryIdentifier:](PLSpotlightDonationUtilities, "domainIdentifierForPhotoLibraryIdentifier:", [v15 wellKnownPhotoLibraryIdentifier]);

  v17 = objc_alloc(MEMORY[0x1E6964E80]);
  v18 = [v5 uuid];
  v19 = [v17 initWithUniqueIdentifier:v18 domainIdentifier:v16 attributeSet:v6];

  return v19;
}

@end