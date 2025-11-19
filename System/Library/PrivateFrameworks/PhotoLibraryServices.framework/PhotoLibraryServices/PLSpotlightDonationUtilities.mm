@interface PLSpotlightDonationUtilities
+ (BOOL)shouldUseSpotlightPrivateIndexForLibraryIdentifier:(int64_t)a3;
+ (id)bundleIdentifierForAsset:(id)a3;
+ (id)bundleIdentifierForAsset:(id)a3 wellKnownLibraryIdentifier:(int64_t)a4;
+ (id)domainIdentifierForPhotoLibraryIdentifier:(int64_t)a3;
+ (id)spotlightUniqueIdentifierForAsset:(id)a3;
+ (int64_t)wellKnownPhotoLibraryIdentifierFromPLPhotoLibrary:(id)a3;
@end

@implementation PLSpotlightDonationUtilities

+ (BOOL)shouldUseSpotlightPrivateIndexForLibraryIdentifier:(int64_t)a3
{
  if (a3 > 1)
  {
    return 0;
  }

  else
  {
    return [a1 spotlightPrivateIndexEnabled];
  }
}

+ (id)spotlightUniqueIdentifierForAsset:(id)a3
{
  v4 = a3;
  v5 = [v4 photoLibrary];
  v6 = [a1 wellKnownPhotoLibraryIdentifierFromPLPhotoLibrary:v5];

  if (v6 == 3)
  {
    v7 = [v4 additionalAttributes];

    v8 = [v7 syndicationIdentifier];
    v4 = v7;
  }

  else
  {
    v8 = [v4 uuid];
  }

  return v8;
}

+ (id)domainIdentifierForPhotoLibraryIdentifier:(int64_t)a3
{
  v8 = *MEMORY[0x1E69E9840];
  switch(a3)
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

+ (id)bundleIdentifierForAsset:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 photoLibrary];
  if (v5)
  {
    v6 = [a1 bundleIdentifierForAsset:v4 wellKnownLibraryIdentifier:{objc_msgSend(a1, "wellKnownPhotoLibraryIdentifierFromPLPhotoLibrary:", v5)}];
  }

  else
  {
    v7 = PLSearchBackendDonationsGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = [v4 uuid];
      v10 = 138543362;
      v11 = v8;
      _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_ERROR, "No PhotoLibrary for asset %{public}@", &v10, 0xCu);
    }

    v6 = 0;
  }

  return v6;
}

+ (id)bundleIdentifierForAsset:(id)a3 wellKnownLibraryIdentifier:(int64_t)a4
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = v5;
  if (a4 < 2)
  {
    v7 = @"com.apple.mobileslideshow";
  }

  else
  {
    if (a4 == 2)
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

    else if (a4 == 3)
    {
      v7 = [v5 importedByBundleIdentifier];
      goto LABEL_10;
    }

    v7 = 0;
  }

LABEL_10:

  return v7;
}

+ (int64_t)wellKnownPhotoLibraryIdentifierFromPLPhotoLibrary:(id)a3
{
  v3 = a3;
  v4 = [v3 libraryServicesManager];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 wellKnownPhotoLibraryIdentifier];
  }

  else
  {
    v7 = MEMORY[0x1E69BF2A0];
    v8 = [v3 pathManager];
    v9 = [v8 libraryURL];
    v6 = [v7 wellKnownPhotoLibraryIdentifierForURL:v9];

    if (!v6)
    {
      v10 = [v3 pathManager];
      v11 = [v10 isSystemPhotoLibraryPathManager];

      v6 = v11;
    }
  }

  return v6;
}

@end