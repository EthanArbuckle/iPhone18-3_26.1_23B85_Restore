@interface PLFileSystemImportAsset
- (PLFileSystemImportAsset)initWithAssetPayload:(id)a3;
- (PLFileSystemImportAsset)initWithDestinationAlbum:(id)a3 assetKind:(int)a4;
- (id)description;
- (int64_t)compare:(id)a3;
- (void)addURL:(id)a3;
- (void)addURLs:(id)a3;
@end

@implementation PLFileSystemImportAsset

- (void)addURLs:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [(PLFileSystemImportAsset *)self addURL:*(*(&v9 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)addURL:(id)a3
{
  v5 = a3;
  v9 = v5;
  if (!v5)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"PLFileSystemImportAsset.m" lineNumber:123 description:{@"Invalid parameter not satisfying: %@", @"url != nil"}];

    v5 = 0;
  }

  [(NSMutableSet *)self->_urls addObject:v5];
  if (!self->_path)
  {
    v6 = [v9 path];
    path = self->_path;
    self->_path = v6;

    self->_pathContainsDCIM = [(NSString *)self->_path containsString:@"DCIM"];
  }
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(NSMutableSet *)self->_urls allObjects];
  v6 = [v5 componentsJoinedByString:{@", "}];
  v7 = [v3 stringWithFormat:@"<%@ %p (%@)>", v4, self, v6];

  return v7;
}

- (int64_t)compare:(id)a3
{
  v4 = a3;
  v5 = [(PLFileSystemImportAsset *)self assetKind];
  if (v5 == [v4 assetKind])
  {
    pathContainsDCIM = self->_pathContainsDCIM;
    if (pathContainsDCIM && *(v4 + 16) == 0)
    {
      v8 = -1;
    }

    else if (pathContainsDCIM || !*(v4 + 16))
    {
      path = self->_path;
      v11 = v4[1];
      v12 = path;
      v13 = [(NSString *)v12 compare:v11];
      if (v13 == -1)
      {
        v8 = 1;
      }

      else
      {
        v8 = v13;
        if (v13 == 1)
        {
          v8 = -1;
        }
      }
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v9 = [(PLFileSystemImportAsset *)self assetKind];
    if (v9 < [v4 assetKind])
    {
      v8 = -1;
    }

    else
    {
      v8 = 1;
    }
  }

  return v8;
}

- (PLFileSystemImportAsset)initWithAssetPayload:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = PLFileSystemImportAsset;
  v6 = [(PLFileSystemImportAsset *)&v10 init];
  if (v6)
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    urls = v6->_urls;
    v6->_urls = v7;

    objc_storeStrong(&v6->_assetPayload, a3);
    -[PLFileSystemImportAsset setAssetKind:](v6, "setAssetKind:", [MEMORY[0x1E69BF328] mapSavedAssetType:objc_msgSend(v5 unknown:"savedAssetType") photoBooth:0 photoStream:0 camera:2 cloudShared:0 cameraConnectionKit:0 cloudPhotoLibrary:1 wallpaper_UNUSED:0 momentShared:0 placeholder:0 referenced:0 alternate:0 guest:0 companionSynced:0 recovered:0 legacyImport:0 collectionShare:4 unrecognized:{0, 0}]);
  }

  return v6;
}

- (PLFileSystemImportAsset)initWithDestinationAlbum:(id)a3 assetKind:(int)a4
{
  v7 = a3;
  v12.receiver = self;
  v12.super_class = PLFileSystemImportAsset;
  v8 = [(PLFileSystemImportAsset *)&v12 init];
  if (v8)
  {
    v9 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    urls = v8->_urls;
    v8->_urls = v9;

    objc_storeStrong(&v8->_destinationAlbum, a3);
    v8->_assetKind = a4;
  }

  return v8;
}

@end