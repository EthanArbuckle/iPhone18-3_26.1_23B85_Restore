@interface PLFileSystemImportAsset
- (PLFileSystemImportAsset)initWithAssetPayload:(id)payload;
- (PLFileSystemImportAsset)initWithDestinationAlbum:(id)album assetKind:(int)kind;
- (id)description;
- (int64_t)compare:(id)compare;
- (void)addURL:(id)l;
- (void)addURLs:(id)ls;
@end

@implementation PLFileSystemImportAsset

- (void)addURLs:(id)ls
{
  v14 = *MEMORY[0x1E69E9840];
  lsCopy = ls;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [lsCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(lsCopy);
        }

        [(PLFileSystemImportAsset *)self addURL:*(*(&v9 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [lsCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)addURL:(id)l
{
  lCopy = l;
  v9 = lCopy;
  if (!lCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLFileSystemImportAsset.m" lineNumber:123 description:{@"Invalid parameter not satisfying: %@", @"url != nil"}];

    lCopy = 0;
  }

  [(NSMutableSet *)self->_urls addObject:lCopy];
  if (!self->_path)
  {
    path = [v9 path];
    path = self->_path;
    self->_path = path;

    self->_pathContainsDCIM = [(NSString *)self->_path containsString:@"DCIM"];
  }
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  allObjects = [(NSMutableSet *)self->_urls allObjects];
  v6 = [allObjects componentsJoinedByString:{@", "}];
  v7 = [v3 stringWithFormat:@"<%@ %p (%@)>", v4, self, v6];

  return v7;
}

- (int64_t)compare:(id)compare
{
  compareCopy = compare;
  assetKind = [(PLFileSystemImportAsset *)self assetKind];
  if (assetKind == [compareCopy assetKind])
  {
    pathContainsDCIM = self->_pathContainsDCIM;
    if (pathContainsDCIM && *(compareCopy + 16) == 0)
    {
      v8 = -1;
    }

    else if (pathContainsDCIM || !*(compareCopy + 16))
    {
      path = self->_path;
      v11 = compareCopy[1];
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
    assetKind2 = [(PLFileSystemImportAsset *)self assetKind];
    if (assetKind2 < [compareCopy assetKind])
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

- (PLFileSystemImportAsset)initWithAssetPayload:(id)payload
{
  payloadCopy = payload;
  v10.receiver = self;
  v10.super_class = PLFileSystemImportAsset;
  v6 = [(PLFileSystemImportAsset *)&v10 init];
  if (v6)
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    urls = v6->_urls;
    v6->_urls = v7;

    objc_storeStrong(&v6->_assetPayload, payload);
    -[PLFileSystemImportAsset setAssetKind:](v6, "setAssetKind:", [MEMORY[0x1E69BF328] mapSavedAssetType:objc_msgSend(payloadCopy unknown:"savedAssetType") photoBooth:0 photoStream:0 camera:2 cloudShared:0 cameraConnectionKit:0 cloudPhotoLibrary:1 wallpaper_UNUSED:0 momentShared:0 placeholder:0 referenced:0 alternate:0 guest:0 companionSynced:0 recovered:0 legacyImport:0 collectionShare:4 unrecognized:{0, 0}]);
  }

  return v6;
}

- (PLFileSystemImportAsset)initWithDestinationAlbum:(id)album assetKind:(int)kind
{
  albumCopy = album;
  v12.receiver = self;
  v12.super_class = PLFileSystemImportAsset;
  v8 = [(PLFileSystemImportAsset *)&v12 init];
  if (v8)
  {
    v9 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    urls = v8->_urls;
    v8->_urls = v9;

    objc_storeStrong(&v8->_destinationAlbum, album);
    v8->_assetKind = kind;
  }

  return v8;
}

@end