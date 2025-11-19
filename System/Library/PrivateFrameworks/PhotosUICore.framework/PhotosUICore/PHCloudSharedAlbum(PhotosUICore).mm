@interface PHCloudSharedAlbum(PhotosUICore)
- (id)px_debugDictionary;
@end

@implementation PHCloudSharedAlbum(PhotosUICore)

- (id)px_debugDictionary
{
  v19[7] = *MEMORY[0x1E69E9840];
  v17.receiver = a1;
  v17.super_class = &off_1F1B12698;
  v2 = objc_msgSendSuper2(&v17, sel_px_debugDictionary);
  v3 = [v2 mutableCopy];

  v4 = [a1 cloudAlbumSubtype];
  v5 = @"Family";
  if (v4 != 1)
  {
    v5 = 0;
  }

  if (v4)
  {
    v6 = v5;
  }

  else
  {
    v6 = @"None";
  }

  v18[0] = @"isOwned";
  if ([a1 isOwned])
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
  if ([a1 isCloudMultipleContributorsEnabled])
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
  v11 = [a1 cloudOwnerFirstName];
  v19[3] = v11;
  v18[4] = @"cloudOwnerLastName";
  v12 = [a1 cloudOwnerLastName];
  v19[4] = v12;
  v18[5] = @"cloudOwnerFullName";
  v13 = [a1 cloudOwnerFullName];
  v19[5] = v13;
  v18[6] = @"cloudOwnerEmailKey";
  v14 = [a1 cloudOwnerEmailKey];
  v19[6] = v14;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:7];

  [v3 addEntriesFromDictionary:v15];

  return v3;
}

@end