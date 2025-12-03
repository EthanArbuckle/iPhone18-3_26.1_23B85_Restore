@interface PLSpotlightHighlightTranslator
+ (id)spotlightSearchableItemFromHighlight:(id)highlight;
@end

@implementation PLSpotlightHighlightTranslator

+ (id)spotlightSearchableItemFromHighlight:(id)highlight
{
  v20 = *MEMORY[0x1E69E9840];
  highlightCopy = highlight;
  if (!highlightCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLSpotlightHighlightTranslator.m" lineNumber:24 description:{@"Invalid parameter not satisfying: %@", @"highlight"}];
  }

  if ([highlightCopy isEligibleForSearchIndexing])
  {
    v6 = objc_opt_new();
    title = [highlightCopy title];
    [v6 setPhotosTitle:title];

    [v6 setPhotosResultType:@"com.apple.photos.search.result.collection.highlight"];
    photoLibrary = [highlightCopy photoLibrary];
    libraryServicesManager = [photoLibrary libraryServicesManager];
    v10 = +[PLSpotlightDonationUtilities domainIdentifierForPhotoLibraryIdentifier:](PLSpotlightDonationUtilities, "domainIdentifierForPhotoLibraryIdentifier:", [libraryServicesManager wellKnownPhotoLibraryIdentifier]);

    v11 = objc_alloc(MEMORY[0x1E6964E80]);
    uuid = [highlightCopy uuid];
    v13 = [v11 initWithUniqueIdentifier:uuid domainIdentifier:v10 attributeSet:v6];
  }

  else
  {
    v14 = PLSearchBackendModelTranslationGetLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      uuid2 = [highlightCopy uuid];
      *buf = 138412290;
      v19 = uuid2;
      _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_INFO, "Unsupported Highlight. Not indexing Highlight: %@", buf, 0xCu);
    }

    v13 = 0;
  }

  return v13;
}

@end