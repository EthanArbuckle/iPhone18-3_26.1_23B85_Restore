@interface PHSocialGroup(PhotosUICore)
- (BOOL)px_internalFetchCanBeSetAsMagicItem;
- (id)px_navigationURL;
@end

@implementation PHSocialGroup(PhotosUICore)

- (BOOL)px_internalFetchCanBeSetAsMagicItem
{
  v2 = +[PXRootSettings sharedInstance];
  v3 = [v2 canShowInternalUI];

  if (!v3)
  {
    return 0;
  }

  v4 = [a1 photoLibrary];
  v5 = [v4 librarySpecificFetchOptions];

  [v5 setFetchLimit:1];
  [v5 setWantsIncrementalChangeDetails:0];
  v6 = [MEMORY[0x1E6978630] fetchKeyAssetForSocialGroup:a1 createIfNeeded:0 options:v5];
  v7 = [v6 firstObject];

  v8 = v7 != 0;
  return v8;
}

- (id)px_navigationURL
{
  v1 = MEMORY[0x1E696AEC0];
  v2 = [a1 localIdentifier];
  v3 = [v1 stringWithFormat:@"photos://social-groups?identifier=%@", v2];

  v4 = [MEMORY[0x1E695DFF8] URLWithString:v3];

  return v4;
}

@end