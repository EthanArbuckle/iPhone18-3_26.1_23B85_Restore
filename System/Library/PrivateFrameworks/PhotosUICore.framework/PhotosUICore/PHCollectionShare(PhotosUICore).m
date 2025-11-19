@interface PHCollectionShare(PhotosUICore)
- (id)px_debugDictionary;
@end

@implementation PHCollectionShare(PhotosUICore)

- (id)px_debugDictionary
{
  v20[7] = *MEMORY[0x1E69E9840];
  v18.receiver = a1;
  v18.super_class = &off_1F1B11C70;
  v2 = objc_msgSendSuper2(&v18, sel_px_debugDictionary);
  v3 = [v2 mutableCopy];

  v4 = [a1 assetCollectionSubtype];
  v5 = @"<Unknown>";
  if (v4 == 103)
  {
    v5 = @"CPL";
  }

  if (v4 == 102)
  {
    v6 = @"SharedStream";
  }

  else
  {
    v6 = v5;
  }

  v7 = [PXSharedAlbumsUtilities ownerForSharedAlbum:a1];
  v19[0] = @"isOwned";
  if ([PXSharedAlbumsUtilities sharedAlbumIsOwned:a1])
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
  if ([PXSharedAlbumsUtilities multipleContributorsEnabledForSharedAlbum:a1])
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
  v12 = [v7 firstName];
  v20[3] = v12;
  v19[4] = @"ownerLastName";
  v13 = [v7 lastName];
  v20[4] = v13;
  v19[5] = @"ownerFullName";
  v14 = [v7 fullName];
  v20[5] = v14;
  v19[6] = @"ownerAddress";
  v15 = [v7 displayAddress];
  v20[6] = v15;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:7];

  [v3 addEntriesFromDictionary:v16];

  return v3;
}

@end