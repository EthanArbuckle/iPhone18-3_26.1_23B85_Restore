@interface SSVPlaybackResponse
- (NSArray)items;
- (SSVPlaybackResponse)initWithDictionary:(id)a3 URLResponse:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)itemForItemIdentifier:(id)a3;
- (void)_enumerateItemsUsingBlock:(id)a3;
@end

@implementation SSVPlaybackResponse

- (SSVPlaybackResponse)initWithDictionary:(id)a3 URLResponse:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = SSVPlaybackResponse;
  v8 = [(SSVPlaybackResponse *)&v12 init];
  if (v8)
  {
    v9 = [v6 copy];
    responseDictionary = v8->_responseDictionary;
    v8->_responseDictionary = v9;

    objc_storeStrong(&v8->_urlResponse, a4);
  }

  return v8;
}

- (id)itemForItemIdentifier:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__5;
  v15 = __Block_byref_object_dispose__5;
  v16 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __45__SSVPlaybackResponse_itemForItemIdentifier___block_invoke;
  v8[3] = &unk_1E84AD578;
  v5 = v4;
  v9 = v5;
  v10 = &v11;
  [(SSVPlaybackResponse *)self _enumerateItemsUsingBlock:v8];
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

void __45__SSVPlaybackResponse_itemForItemIdentifier___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v8 = a2;
  v6 = [v8 itemIdentifier];
  v7 = [v6 isEqual:*(a1 + 32)];

  if (v7)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a3 = 1;
  }
}

- (NSArray)items
{
  v3 = [MEMORY[0x1E695DF70] array];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __28__SSVPlaybackResponse_items__block_invoke;
  v6[3] = &unk_1E84AD5A0;
  v4 = v3;
  v7 = v4;
  [(SSVPlaybackResponse *)self _enumerateItemsUsingBlock:v6];

  return v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSDictionary *)self->_responseDictionary copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSHTTPURLResponse *)self->_urlResponse copyWithZone:a3];
  v9 = v5[2];
  v5[2] = v8;

  return v5;
}

- (void)_enumerateItemsUsingBlock:(id)a3
{
  v4 = a3;
  v5 = [(NSDictionary *)self->_responseDictionary objectForKey:@"songList"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __49__SSVPlaybackResponse__enumerateItemsUsingBlock___block_invoke;
    v6[3] = &unk_1E84AD5C8;
    v6[4] = self;
    v7 = v4;
    [v5 enumerateObjectsUsingBlock:v6];
  }
}

void __49__SSVPlaybackResponse__enumerateItemsUsingBlock___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [[SSVPlaybackItem alloc] initWithItemDictionary:v6];
    v4 = [*(a1 + 32) fallbackStreamingKeyCertificateURL];
    [(SSVPlaybackItem *)v3 setFallbackStreamingKeyCertificateURL:v4];

    v5 = [*(a1 + 32) fallbackStreamingKeyServerURL];
    [(SSVPlaybackItem *)v3 setFallbackStreamingKeyServerURL:v5];

    if (v3)
    {
      (*(*(a1 + 40) + 16))();
    }
  }
}

@end