@interface SSVPlaybackItem
- (BOOL)isEqual:(id)a3;
- (BOOL)isiTunesStoreStream;
- (NSArray)assets;
- (NSURL)HLSKeyCertificateURL;
- (NSURL)HLSKeyServerURL;
- (NSURL)HLSPlaylistURL;
- (SSVPlaybackItem)initWithItemDictionary:(id)a3;
- (id)assetForFlavor:(id)a3;
- (id)description;
- (unint64_t)hash;
- (void)_enumerateAssetsUsingBlock:(id)a3;
@end

@implementation SSVPlaybackItem

- (SSVPlaybackItem)initWithItemDictionary:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SSVPlaybackItem;
  v5 = [(SSVPlaybackItem *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    itemDictionary = v5->_itemDictionary;
    v5->_itemDictionary = v6;
  }

  return v5;
}

- (id)assetForFlavor:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__28;
  v15 = __Block_byref_object_dispose__28;
  v16 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __34__SSVPlaybackItem_assetForFlavor___block_invoke;
  v8[3] = &unk_1E84B0488;
  v5 = v4;
  v9 = v5;
  v10 = &v11;
  [(SSVPlaybackItem *)self _enumerateAssetsUsingBlock:v8];
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

void __34__SSVPlaybackItem_assetForFlavor___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v8 = a2;
  v6 = [v8 flavor];
  v7 = [v6 isEqualToString:*(a1 + 32)];

  if (v7)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a3 = 1;
  }
}

- (NSArray)assets
{
  v3 = [MEMORY[0x1E695DF70] array];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __25__SSVPlaybackItem_assets__block_invoke;
  v6[3] = &unk_1E84B04B0;
  v4 = v3;
  v7 = v4;
  [(SSVPlaybackItem *)self _enumerateAssetsUsingBlock:v6];

  return v4;
}

- (NSURL)HLSKeyCertificateURL
{
  v3 = [(NSDictionary *)self->_itemDictionary objectForKey:@"hls-key-cert-url"];
  if (![v3 isNSString] || (objc_msgSend(MEMORY[0x1E695DFF8], "URLWithString:", v3), (v4 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v4 = [(SSVPlaybackItem *)self fallbackStreamingKeyCertificateURL];
  }

  return v4;
}

- (NSURL)HLSKeyServerURL
{
  v3 = [(NSDictionary *)self->_itemDictionary objectForKey:@"hls-key-server-url"];
  if (![v3 isNSString] || (objc_msgSend(MEMORY[0x1E695DFF8], "URLWithString:", v3), (v4 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v4 = [(SSVPlaybackItem *)self fallbackStreamingKeyServerURL];
  }

  return v4;
}

- (NSURL)HLSPlaylistURL
{
  v2 = [(NSDictionary *)self->_itemDictionary objectForKey:@"hls-playlist-url"];
  if ([v2 isNSString])
  {
    v3 = [MEMORY[0x1E695DFF8] URLWithString:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)isiTunesStoreStream
{
  v2 = [(NSDictionary *)self->_itemDictionary objectForKey:@"is-itunes-stream"];
  if (objc_opt_respondsToSelector())
  {
    v3 = [v2 BOOLValue];
  }

  else
  {
    v3 = 1;
  }

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v9.receiver = self;
  v9.super_class = SSVPlaybackItem;
  v4 = [(SSVPlaybackItem *)&v9 description];
  v5 = [(SSVPlaybackItem *)self itemIdentifier];
  v6 = [(SSVPlaybackItem *)self assets];
  v7 = [v3 stringWithFormat:@"%@ [ID: %@, Assets: %@]", v4, v5, v6];

  return v7;
}

- (unint64_t)hash
{
  v3 = [(SSVPlaybackItem *)self itemIdentifier];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 hash];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = SSVPlaybackItem;
    v5 = [(SSVPlaybackItem *)&v8 hash];
  }

  v6 = v5;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  if (v5 == objc_opt_class())
  {
    v7 = [(SSVPlaybackItem *)self itemIdentifier];
    v8 = [v4 itemIdentifier];
    v6 = [v7 isEqual:v8];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_enumerateAssetsUsingBlock:(id)a3
{
  v4 = a3;
  v5 = [(NSDictionary *)self->_itemDictionary objectForKey:@"assets"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __46__SSVPlaybackItem__enumerateAssetsUsingBlock___block_invoke;
    v6[3] = &unk_1E84B04D8;
    v7 = v4;
    [v5 enumerateObjectsUsingBlock:v6];
  }
}

void __46__SSVPlaybackItem__enumerateAssetsUsingBlock___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [[SSVPlaybackAsset alloc] initWithAssetDictionary:v4];
    if (v3)
    {
      (*(*(a1 + 32) + 16))();
    }
  }
}

@end