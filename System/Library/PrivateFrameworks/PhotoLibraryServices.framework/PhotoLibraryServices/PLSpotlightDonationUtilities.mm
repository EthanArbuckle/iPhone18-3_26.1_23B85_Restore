@interface PLSpotlightDonationUtilities
+ (BOOL)shouldUseSpotlightPrivateIndexForLibraryIdentifier:(int64_t)identifier;
+ (id)bundleIdentifierForAsset:(id)asset;
+ (id)bundleIdentifierForAsset:(id)asset wellKnownLibraryIdentifier:(int64_t)identifier;
+ (id)domainIdentifierForPhotoLibraryIdentifier:(int64_t)identifier;
+ (id)spotlightUniqueIdentifierForAsset:(id)asset;
+ (int64_t)wellKnownPhotoLibraryIdentifierFromPLPhotoLibrary:(id)library;
@end

@implementation PLSpotlightDonationUtilities

+ (BOOL)shouldUseSpotlightPrivateIndexForLibraryIdentifier:(int64_t)identifier
{
  if (identifier > 1)
  {
    return 0;
  }

  else
  {
    return [self spotlightPrivateIndexEnabled];
  }
}

+ (id)spotlightUniqueIdentifierForAsset:(id)asset
{
  assetCopy = asset;
  photoLibrary = [assetCopy photoLibrary];
  v6 = [self wellKnownPhotoLibraryIdentifierFromPLPhotoLibrary:photoLibrary];

  if (v6 == 3)
  {
    additionalAttributes = [assetCopy additionalAttributes];

    syndicationIdentifier = [additionalAttributes syndicationIdentifier];
    assetCopy = additionalAttributes;
  }

  else
  {
    syndicationIdentifier = [assetCopy uuid];
  }

  return syndicationIdentifier;
}

+ (id)domainIdentifierForPhotoLibraryIdentifier:(int64_t)identifier
{
  v8 = *MEMORY[0x1E69E9840];
  switch(identifier)
  {
    case 0:
      return @"com.apple.mobileslideshow.search";
    case 2:
      v4 = PLSearchBackendDonationsGetLog();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        v5 = @"messages photolibrary";
        v6 = 138543362;
        v7 = @"messages photolibrary";
        _os_log_impl(&dword_19BF1F000, v4, OS_LOG_TYPE_ERROR, "Unsupported PhotoLibrary: %{public}@", &v6, 0xCu);
      }

      return 0;
    case 1:
      return @"com.apple.mobileslideshow.search";
    default:
      return 0;
  }
}

+ (id)bundleIdentifierForAsset:(id)asset
{
  v12 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  photoLibrary = [assetCopy photoLibrary];
  if (photoLibrary)
  {
    v6 = [self bundleIdentifierForAsset:assetCopy wellKnownLibraryIdentifier:{objc_msgSend(self, "wellKnownPhotoLibraryIdentifierFromPLPhotoLibrary:", photoLibrary)}];
  }

  else
  {
    v7 = PLSearchBackendDonationsGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      uuid = [assetCopy uuid];
      v10 = 138543362;
      v11 = uuid;
      _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_ERROR, "No PhotoLibrary for asset %{public}@", &v10, 0xCu);
    }

    v6 = 0;
  }

  return v6;
}

+ (id)bundleIdentifierForAsset:(id)asset wellKnownLibraryIdentifier:(int64_t)identifier
{
  v13 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  v6 = assetCopy;
  if (identifier < 2)
  {
    importedByBundleIdentifier = @"com.apple.mobileslideshow";
  }

  else
  {
    if (identifier == 2)
    {
      v8 = PLSearchBackendDonationsGetLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = @"messages photolibrary";
        v11 = 138412290;
        v12 = @"messages photolibrary";
        _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_ERROR, "Unsupported library identifier: %@", &v11, 0xCu);
      }
    }

    else if (identifier == 3)
    {
      importedByBundleIdentifier = [assetCopy importedByBundleIdentifier];
      goto LABEL_10;
    }

    importedByBundleIdentifier = 0;
  }

LABEL_10:

  return importedByBundleIdentifier;
}

+ (int64_t)wellKnownPhotoLibraryIdentifierFromPLPhotoLibrary:(id)library
{
  libraryCopy = library;
  libraryServicesManager = [libraryCopy libraryServicesManager];
  v5 = libraryServicesManager;
  if (libraryServicesManager)
  {
    wellKnownPhotoLibraryIdentifier = [libraryServicesManager wellKnownPhotoLibraryIdentifier];
  }

  else
  {
    v7 = MEMORY[0x1E69BF2A0];
    pathManager = [libraryCopy pathManager];
    libraryURL = [pathManager libraryURL];
    wellKnownPhotoLibraryIdentifier = [v7 wellKnownPhotoLibraryIdentifierForURL:libraryURL];

    if (!wellKnownPhotoLibraryIdentifier)
    {
      pathManager2 = [libraryCopy pathManager];
      isSystemPhotoLibraryPathManager = [pathManager2 isSystemPhotoLibraryPathManager];

      wellKnownPhotoLibraryIdentifier = isSystemPhotoLibraryPathManager;
    }
  }

  return wellKnownPhotoLibraryIdentifier;
}

@end