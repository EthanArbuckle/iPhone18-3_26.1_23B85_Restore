@interface SSVPlaybackItem
- (BOOL)isEqual:(id)equal;
- (BOOL)isiTunesStoreStream;
- (NSArray)assets;
- (NSURL)HLSKeyCertificateURL;
- (NSURL)HLSKeyServerURL;
- (NSURL)HLSPlaylistURL;
- (SSVPlaybackItem)initWithItemDictionary:(id)dictionary;
- (id)assetForFlavor:(id)flavor;
- (id)description;
- (unint64_t)hash;
- (void)_enumerateAssetsUsingBlock:(id)block;
@end

@implementation SSVPlaybackItem

- (SSVPlaybackItem)initWithItemDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v9.receiver = self;
  v9.super_class = SSVPlaybackItem;
  v5 = [(SSVPlaybackItem *)&v9 init];
  if (v5)
  {
    v6 = [dictionaryCopy copy];
    itemDictionary = v5->_itemDictionary;
    v5->_itemDictionary = v6;
  }

  return v5;
}

- (id)assetForFlavor:(id)flavor
{
  flavorCopy = flavor;
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
  v5 = flavorCopy;
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
  array = [MEMORY[0x1E695DF70] array];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __25__SSVPlaybackItem_assets__block_invoke;
  v6[3] = &unk_1E84B04B0;
  v4 = array;
  v7 = v4;
  [(SSVPlaybackItem *)self _enumerateAssetsUsingBlock:v6];

  return v4;
}

- (NSURL)HLSKeyCertificateURL
{
  v3 = [(NSDictionary *)self->_itemDictionary objectForKey:@"hls-key-cert-url"];
  if (![v3 isNSString] || (objc_msgSend(MEMORY[0x1E695DFF8], "URLWithString:", v3), (fallbackStreamingKeyCertificateURL = objc_claimAutoreleasedReturnValue()) == 0))
  {
    fallbackStreamingKeyCertificateURL = [(SSVPlaybackItem *)self fallbackStreamingKeyCertificateURL];
  }

  return fallbackStreamingKeyCertificateURL;
}

- (NSURL)HLSKeyServerURL
{
  v3 = [(NSDictionary *)self->_itemDictionary objectForKey:@"hls-key-server-url"];
  if (![v3 isNSString] || (objc_msgSend(MEMORY[0x1E695DFF8], "URLWithString:", v3), (fallbackStreamingKeyServerURL = objc_claimAutoreleasedReturnValue()) == 0))
  {
    fallbackStreamingKeyServerURL = [(SSVPlaybackItem *)self fallbackStreamingKeyServerURL];
  }

  return fallbackStreamingKeyServerURL;
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
    bOOLValue = [v2 BOOLValue];
  }

  else
  {
    bOOLValue = 1;
  }

  return bOOLValue;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v9.receiver = self;
  v9.super_class = SSVPlaybackItem;
  v4 = [(SSVPlaybackItem *)&v9 description];
  itemIdentifier = [(SSVPlaybackItem *)self itemIdentifier];
  assets = [(SSVPlaybackItem *)self assets];
  v7 = [v3 stringWithFormat:@"%@ [ID: %@, Assets: %@]", v4, itemIdentifier, assets];

  return v7;
}

- (unint64_t)hash
{
  itemIdentifier = [(SSVPlaybackItem *)self itemIdentifier];
  v4 = itemIdentifier;
  if (itemIdentifier)
  {
    v5 = [itemIdentifier hash];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  if (v5 == objc_opt_class())
  {
    itemIdentifier = [(SSVPlaybackItem *)self itemIdentifier];
    itemIdentifier2 = [equalCopy itemIdentifier];
    v6 = [itemIdentifier isEqual:itemIdentifier2];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_enumerateAssetsUsingBlock:(id)block
{
  blockCopy = block;
  v5 = [(NSDictionary *)self->_itemDictionary objectForKey:@"assets"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __46__SSVPlaybackItem__enumerateAssetsUsingBlock___block_invoke;
    v6[3] = &unk_1E84B04D8;
    v7 = blockCopy;
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