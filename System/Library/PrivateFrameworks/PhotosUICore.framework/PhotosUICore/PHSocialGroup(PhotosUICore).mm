@interface PHSocialGroup(PhotosUICore)
- (BOOL)px_internalFetchCanBeSetAsMagicItem;
- (id)px_navigationURL;
@end

@implementation PHSocialGroup(PhotosUICore)

- (BOOL)px_internalFetchCanBeSetAsMagicItem
{
  v2 = +[PXRootSettings sharedInstance];
  canShowInternalUI = [v2 canShowInternalUI];

  if (!canShowInternalUI)
  {
    return 0;
  }

  photoLibrary = [self photoLibrary];
  librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

  [librarySpecificFetchOptions setFetchLimit:1];
  [librarySpecificFetchOptions setWantsIncrementalChangeDetails:0];
  v6 = [MEMORY[0x1E6978630] fetchKeyAssetForSocialGroup:self createIfNeeded:0 options:librarySpecificFetchOptions];
  firstObject = [v6 firstObject];

  v8 = firstObject != 0;
  return v8;
}

- (id)px_navigationURL
{
  v1 = MEMORY[0x1E696AEC0];
  localIdentifier = [self localIdentifier];
  v3 = [v1 stringWithFormat:@"photos://social-groups?identifier=%@", localIdentifier];

  v4 = [MEMORY[0x1E695DFF8] URLWithString:v3];

  return v4;
}

@end