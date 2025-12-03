@interface PHCollectionShare(PhotosUICore)
- (id)px_debugDictionary;
@end

@implementation PHCollectionShare(PhotosUICore)

- (id)px_debugDictionary
{
  v20[7] = *MEMORY[0x1E69E9840];
  v18.receiver = self;
  v18.super_class = &off_1F1B11C70;
  v2 = objc_msgSendSuper2(&v18, sel_px_debugDictionary);
  v3 = [v2 mutableCopy];

  assetCollectionSubtype = [self assetCollectionSubtype];
  v5 = @"<Unknown>";
  if (assetCollectionSubtype == 103)
  {
    v5 = @"CPL";
  }

  if (assetCollectionSubtype == 102)
  {
    v6 = @"SharedStream";
  }

  else
  {
    v6 = v5;
  }

  v7 = [PXSharedAlbumsUtilities ownerForSharedAlbum:self];
  v19[0] = @"isOwned";
  if ([PXSharedAlbumsUtilities sharedAlbumIsOwned:self])
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  v9 = v8;
  v20[0] = v9;
  v19[1] = @"isCloudMultipleContributorsEnabled";
  if ([PXSharedAlbumsUtilities multipleContributorsEnabledForSharedAlbum:self])
  {
    v10 = @"YES";
  }

  else
  {
    v10 = @"NO";
  }

  v11 = v10;
  v20[1] = v11;
  v20[2] = v6;
  v19[2] = @"collectionShareKind";
  v19[3] = @"ownerFirstName";
  firstName = [v7 firstName];
  v20[3] = firstName;
  v19[4] = @"ownerLastName";
  lastName = [v7 lastName];
  v20[4] = lastName;
  v19[5] = @"ownerFullName";
  fullName = [v7 fullName];
  v20[5] = fullName;
  v19[6] = @"ownerAddress";
  displayAddress = [v7 displayAddress];
  v20[6] = displayAddress;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:7];

  [v3 addEntriesFromDictionary:v16];

  return v3;
}

@end