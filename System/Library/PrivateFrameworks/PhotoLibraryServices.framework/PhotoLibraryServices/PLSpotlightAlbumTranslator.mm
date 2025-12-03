@interface PLSpotlightAlbumTranslator
+ (id)spotlightSearchableItemFromAlbum:(id)album;
@end

@implementation PLSpotlightAlbumTranslator

+ (id)spotlightSearchableItemFromAlbum:(id)album
{
  albumCopy = album;
  if (!albumCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLSpotlightAlbumTranslator.m" lineNumber:24 description:{@"Invalid parameter not satisfying: %@", @"album"}];
  }

  v6 = objc_opt_new();
  localizedTitle = [albumCopy localizedTitle];
  if (localizedTitle)
  {
    [v6 setPhotosTitle:localizedTitle];
  }

  else
  {
    title = [albumCopy title];
    [v6 setPhotosTitle:title];
  }

  [v6 setPhotosResultType:@"com.apple.photos.search.result.collection.album"];
  photoLibrary = [albumCopy photoLibrary];
  libraryServicesManager = [photoLibrary libraryServicesManager];
  if ([libraryServicesManager wellKnownPhotoLibraryIdentifier] > 1)
  {
    goto LABEL_11;
  }

  photosTitle = [v6 photosTitle];
  v12 = [photosTitle length];

  if (v12 && ([albumCopy kindValue] == 2 || objc_msgSend(albumCopy, "kindValue") == 1505))
  {
    photoLibrary = [albumCopy uuid];
    libraryServicesManager = PLServicesLocalizedFrameworkString();
    photosTitle2 = [v6 photosTitle];
    [PLSpotlightTranslatorUtilities tagCSSearchableItem:v6 entityInstanceIdentifier:photoLibrary typeIdentifier:@"AlbumEntity" typeDisplayName:libraryServicesManager displayTitle:photosTitle2 displaySubtitle:0];

LABEL_11:
  }

  photoLibrary2 = [albumCopy photoLibrary];
  libraryServicesManager2 = [photoLibrary2 libraryServicesManager];
  v16 = +[PLSpotlightDonationUtilities domainIdentifierForPhotoLibraryIdentifier:](PLSpotlightDonationUtilities, "domainIdentifierForPhotoLibraryIdentifier:", [libraryServicesManager2 wellKnownPhotoLibraryIdentifier]);

  v17 = objc_alloc(MEMORY[0x1E6964E80]);
  uuid = [albumCopy uuid];
  v19 = [v17 initWithUniqueIdentifier:uuid domainIdentifier:v16 attributeSet:v6];

  return v19;
}

@end