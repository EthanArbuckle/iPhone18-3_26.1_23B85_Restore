@interface PHCloudSharedAlbum(PhotosUICore)
- (id)px_debugDictionary;
@end

@implementation PHCloudSharedAlbum(PhotosUICore)

- (id)px_debugDictionary
{
  v19[7] = *MEMORY[0x1E69E9840];
  v17.receiver = self;
  v17.super_class = &off_1F1B12698;
  v2 = objc_msgSendSuper2(&v17, sel_px_debugDictionary);
  v3 = [v2 mutableCopy];

  cloudAlbumSubtype = [self cloudAlbumSubtype];
  v5 = @"Family";
  if (cloudAlbumSubtype != 1)
  {
    v5 = 0;
  }

  if (cloudAlbumSubtype)
  {
    v6 = v5;
  }

  else
  {
    v6 = @"None";
  }

  v18[0] = @"isOwned";
  if ([self isOwned])
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  v8 = v7;
  v19[0] = v8;
  v18[1] = @"isCloudMultipleContributorsEnabled";
  if ([self isCloudMultipleContributorsEnabled])
  {
    v9 = @"YES";
  }

  else
  {
    v9 = @"NO";
  }

  v10 = v9;
  v19[1] = v10;
  v19[2] = v6;
  v18[2] = @"cloudAlbumSubtype";
  v18[3] = @"cloudOwnerFirstName";
  cloudOwnerFirstName = [self cloudOwnerFirstName];
  v19[3] = cloudOwnerFirstName;
  v18[4] = @"cloudOwnerLastName";
  cloudOwnerLastName = [self cloudOwnerLastName];
  v19[4] = cloudOwnerLastName;
  v18[5] = @"cloudOwnerFullName";
  cloudOwnerFullName = [self cloudOwnerFullName];
  v19[5] = cloudOwnerFullName;
  v18[6] = @"cloudOwnerEmailKey";
  cloudOwnerEmailKey = [self cloudOwnerEmailKey];
  v19[6] = cloudOwnerEmailKey;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:7];

  [v3 addEntriesFromDictionary:v15];

  return v3;
}

@end