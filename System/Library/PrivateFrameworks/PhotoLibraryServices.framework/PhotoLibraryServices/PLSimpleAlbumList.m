@interface PLSimpleAlbumList
- (BOOL)isEmpty;
- (PLSimpleAlbumList)initWithAssetContainer:(id)a3;
- (PLSimpleAlbumList)initWithAssetContainers:(id)a3;
- (id)photoLibrary;
@end

@implementation PLSimpleAlbumList

- (id)photoLibrary
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = [(PLSimpleAlbumList *)self containers];
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v12;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          v9 = [v8 photoLibrary];

          v5 = v9;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isEmpty
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [(PLSimpleAlbumList *)self containers];
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        if (![*(*(&v9 + 1) + 8 * i) isEmpty])
        {
          v7 = 0;
          goto LABEL_11;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v7 = 1;
LABEL_11:

  return v7;
}

- (PLSimpleAlbumList)initWithAssetContainers:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PLSimpleAlbumList;
  v6 = [(PLSimpleAlbumList *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_containers, a3);
  }

  return v7;
}

- (PLSimpleAlbumList)initWithAssetContainer:(id)a3
{
  v4 = [MEMORY[0x1E695DFB8] orderedSetWithObject:a3];
  v5 = [(PLSimpleAlbumList *)self initWithAssetContainers:v4];

  return v5;
}

@end