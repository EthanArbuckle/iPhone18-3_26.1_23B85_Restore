@interface WBSFaviconProviderPrivateCache
- (BOOL)linkPageURLString:(id)a3 toIconURLString:(id)a4;
- (WBSFaviconProviderPrivateCache)init;
- (id)firstImageDataMatchingPageURLStringIn:(id)a3 matchedPageURLString:(id *)a4;
- (id)imageDataForIconURLString:(id)a3;
- (id)imageDataForPageURLString:(id)a3;
- (id)imageInfoForIconURLString:(id)a3;
- (id)imageInfoForPageURLString:(id)a3;
- (id)pageURLStringsWithPrefixesIn:(id)a3;
- (id)rejectedResourceInfosForPageURLString:(id)a3 iconURLString:(id)a4;
- (void)removeAllImageDataWithCompletionHandler:(id)a3;
- (void)removeImageDataForPageURLString:(id)a3;
- (void)setImageData:(id)a3 forPageURLString:(id)a4 iconURLString:(id)a5 iconSize:(CGSize)a6 hasGeneratedResolutions:(BOOL)a7;
- (void)setIsRejectedResource:(BOOL)a3 forPageURLString:(id)a4 iconURLString:(id)a5;
@end

@implementation WBSFaviconProviderPrivateCache

- (WBSFaviconProviderPrivateCache)init
{
  v13.receiver = self;
  v13.super_class = WBSFaviconProviderPrivateCache;
  v2 = [(WBSFaviconProviderPrivateCache *)&v13 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DEE0]);
    uuidToImageDataCache = v2->_uuidToImageDataCache;
    v2->_uuidToImageDataCache = v3;

    v5 = [MEMORY[0x1E695DF90] dictionary];
    pageURLStringToIconInfoDict = v2->_pageURLStringToIconInfoDict;
    v2->_pageURLStringToIconInfoDict = v5;

    v7 = [MEMORY[0x1E695DF90] dictionary];
    iconURLStringToIconInfoDict = v2->_iconURLStringToIconInfoDict;
    v2->_iconURLStringToIconInfoDict = v7;

    v9 = [MEMORY[0x1E695DF90] dictionary];
    urlStringToRejectedResourceIconInfoDict = v2->_urlStringToRejectedResourceIconInfoDict;
    v2->_urlStringToRejectedResourceIconInfoDict = v9;

    v11 = v2;
  }

  return v2;
}

- (id)imageDataForPageURLString:(id)a3
{
  v4 = [(NSMutableDictionary *)self->_pageURLStringToIconInfoDict objectForKeyedSubscript:a3];
  v5 = v4;
  if (v4)
  {
    uuidToImageDataCache = self->_uuidToImageDataCache;
    v7 = [v4 UUIDString];
    v8 = [(NSCache *)uuidToImageDataCache objectForKey:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)imageDataForIconURLString:(id)a3
{
  v4 = [(NSMutableDictionary *)self->_iconURLStringToIconInfoDict objectForKeyedSubscript:a3];
  v5 = v4;
  if (v4)
  {
    uuidToImageDataCache = self->_uuidToImageDataCache;
    v7 = [v4 UUIDString];
    v8 = [(NSCache *)uuidToImageDataCache objectForKey:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)firstImageDataMatchingPageURLStringIn:(id)a3 matchedPageURLString:(id *)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = a3;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        v12 = [(WBSFaviconProviderPrivateCache *)self imageDataForPageURLString:v11, v16];
        if (v12)
        {
          v13 = v12;
          if (a4)
          {
            v14 = v11;
            *a4 = v11;
          }

          goto LABEL_12;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v13 = 0;
LABEL_12:

  return v13;
}

- (id)pageURLStringsWithPrefixesIn:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DFA8] set];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = [(NSMutableDictionary *)self->_pageURLStringToIconInfoDict allKeys];
  v6 = [obj countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v24;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v24 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v23 + 1) + 8 * i);
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v11 = v4;
        v12 = [v11 countByEnumeratingWithState:&v19 objects:v27 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v20;
          do
          {
            for (j = 0; j != v13; ++j)
            {
              if (*v20 != v14)
              {
                objc_enumerationMutation(v11);
              }

              if (![v10 rangeOfString:*(*(&v19 + 1) + 8 * j) options:3])
              {
                [v5 addObject:v10];
              }
            }

            v13 = [v11 countByEnumeratingWithState:&v19 objects:v27 count:16];
          }

          while (v13);
        }
      }

      v7 = [obj countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v7);
  }

  v16 = [v5 allObjects];

  return v16;
}

- (id)imageInfoForPageURLString:(id)a3
{
  v4 = [(NSMutableDictionary *)self->_pageURLStringToIconInfoDict objectForKeyedSubscript:a3];
  v5 = v4;
  if (v4)
  {
    uuidToImageDataCache = self->_uuidToImageDataCache;
    v7 = [v4 UUIDString];
    v8 = [(NSCache *)uuidToImageDataCache objectForKey:v7];
    if (v8)
    {
      v9 = v5;
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)imageInfoForIconURLString:(id)a3
{
  v4 = [(NSMutableDictionary *)self->_iconURLStringToIconInfoDict objectForKeyedSubscript:a3];
  v5 = v4;
  if (v4)
  {
    uuidToImageDataCache = self->_uuidToImageDataCache;
    v7 = [v4 UUIDString];
    v8 = [(NSCache *)uuidToImageDataCache objectForKey:v7];
    if (v8)
    {
      v9 = v5;
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)setImageData:(id)a3 forPageURLString:(id)a4 iconURLString:(id)a5 iconSize:(CGSize)a6 hasGeneratedResolutions:(BOOL)a7
{
  v7 = a7;
  height = a6.height;
  width = a6.width;
  v36 = a3;
  v13 = a4;
  v14 = a5;
  v15 = [(WBSFaviconProviderPrivateCache *)self imageInfoForPageURLString:v13];
  v16 = [(WBSFaviconProviderPrivateCache *)self imageInfoForIconURLString:v14];
  v17 = v16;
  if (!v15 || v16)
  {
    if (!v15 || !v16)
    {
      goto LABEL_4;
    }

    v26 = [v15 UUIDString];
    v27 = [v17 UUIDString];
    v28 = [v26 isEqual:v27];

    if (v28)
    {
      if (v36)
      {
        uuidToImageDataCache = self->_uuidToImageDataCache;
        v30 = [v15 UUIDString];
        [(NSCache *)uuidToImageDataCache setObject:v36 forKey:v30];
      }

      else
      {
        [(WBSFaviconProviderPrivateCache *)self removeImageDataForPageURLString:v13];
      }

      goto LABEL_16;
    }
  }

  [(WBSFaviconProviderPrivateCache *)self removeImageDataForPageURLString:v13];

  v15 = 0;
LABEL_4:
  if (!v36)
  {
    goto LABEL_16;
  }

  if (!(v15 | v17))
  {
    v31 = [MEMORY[0x1E696AFB0] UUID];
    v32 = [v31 UUIDString];

    v33 = [MEMORY[0x1E695DF00] date];
    v34 = [[WBSFaviconProviderIconInfo alloc] initWithPageURLString:v13 iconURLString:v14 UUIDString:v32 dateAdded:v33 size:v7 hasGeneratedResolutions:0 isRejectedResource:width, height];
    [(NSMutableDictionary *)self->_pageURLStringToIconInfoDict setObject:v34 forKeyedSubscript:v13];

    v35 = [[WBSFaviconProviderIconInfo alloc] initWithPageURLString:0 iconURLString:v14 UUIDString:v32 dateAdded:v33 size:v7 hasGeneratedResolutions:0 isRejectedResource:width, height];
    [(NSMutableDictionary *)self->_iconURLStringToIconInfoDict setObject:v35 forKeyedSubscript:v14];

    [(NSCache *)self->_uuidToImageDataCache setObject:v36 forKey:v32];
    goto LABEL_15;
  }

  if (!v15 && v17)
  {
    v18 = [WBSFaviconProviderIconInfo alloc];
    v19 = [v17 UUIDString];
    v20 = [v17 dateAdded];
    [v17 size];
    v23 = -[WBSFaviconProviderIconInfo initWithPageURLString:iconURLString:UUIDString:dateAdded:size:hasGeneratedResolutions:isRejectedResource:](v18, "initWithPageURLString:iconURLString:UUIDString:dateAdded:size:hasGeneratedResolutions:isRejectedResource:", v13, v14, v19, v20, [v17 hasGeneratedResolutions], 0, v21, v22);
    [(NSMutableDictionary *)self->_pageURLStringToIconInfoDict setObject:v23 forKeyedSubscript:v13];

    v24 = self->_uuidToImageDataCache;
    v25 = [v17 UUIDString];
    [(NSCache *)v24 setObject:v36 forKey:v25];

LABEL_15:
    v15 = 0;
  }

LABEL_16:
}

- (void)setIsRejectedResource:(BOOL)a3 forPageURLString:(id)a4 iconURLString:(id)a5
{
  v6 = a3;
  v12 = a4;
  v8 = a5;
  if (v6)
  {
    v9 = [WBSFaviconProviderIconInfo alloc];
    v10 = [MEMORY[0x1E695DF00] date];
    v11 = [(WBSFaviconProviderIconInfo *)v9 initWithPageURLString:v12 iconURLString:v8 UUIDString:0 dateAdded:v10 size:0 hasGeneratedResolutions:1 isRejectedResource:*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)];
  }

  else
  {
    v11 = 0;
  }

  [(NSMutableDictionary *)self->_urlStringToRejectedResourceIconInfoDict setObject:v11 forKeyedSubscript:v12];
  [(NSMutableDictionary *)self->_urlStringToRejectedResourceIconInfoDict setObject:v11 forKeyedSubscript:v8];
}

- (id)rejectedResourceInfosForPageURLString:(id)a3 iconURLString:(id)a4
{
  v6 = a4;
  v7 = MEMORY[0x1E695DF70];
  v8 = a3;
  v9 = [v7 array];
  v10 = [(NSMutableDictionary *)self->_urlStringToRejectedResourceIconInfoDict objectForKeyedSubscript:v8];

  if (v10)
  {
    [v9 addObject:v10];
  }

  v11 = [(NSMutableDictionary *)self->_urlStringToRejectedResourceIconInfoDict objectForKeyedSubscript:v6];

  if (v11)
  {
    [v9 addObject:v11];
  }

  return v9;
}

- (BOOL)linkPageURLString:(id)a3 toIconURLString:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(WBSFaviconProviderPrivateCache *)self imageInfoForPageURLString:v6];
  v9 = [(WBSFaviconProviderPrivateCache *)self imageInfoForIconURLString:v7];
  if (v9)
  {
    v10 = [v8 UUIDString];
    v11 = [v9 UUIDString];
    v12 = [v10 isEqual:v11];

    if ((v12 & 1) == 0)
    {
      [(WBSFaviconProviderPrivateCache *)self removeImageDataForPageURLString:v6];
      v13 = [WBSFaviconProviderIconInfo alloc];
      v14 = [v9 UUIDString];
      v15 = [v9 dateAdded];
      [v9 size];
      v18 = -[WBSFaviconProviderIconInfo initWithPageURLString:iconURLString:UUIDString:dateAdded:size:hasGeneratedResolutions:isRejectedResource:](v13, "initWithPageURLString:iconURLString:UUIDString:dateAdded:size:hasGeneratedResolutions:isRejectedResource:", v6, v7, v14, v15, [v9 hasGeneratedResolutions], 0, v16, v17);
      [(NSMutableDictionary *)self->_pageURLStringToIconInfoDict setObject:v18 forKeyedSubscript:v6];
    }
  }

  return v9 != 0;
}

- (void)removeImageDataForPageURLString:(id)a3
{
  v4 = a3;
  v5 = [(WBSFaviconProviderPrivateCache *)self imageInfoForPageURLString:v4];
  if (v5)
  {
    [(NSMutableDictionary *)self->_pageURLStringToIconInfoDict removeObjectForKey:v4];
    v27 = 0;
    v28 = &v27;
    v29 = 0x2020000000;
    v30 = 1;
    pageURLStringToIconInfoDict = self->_pageURLStringToIconInfoDict;
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __66__WBSFaviconProviderPrivateCache_removeImageDataForPageURLString___block_invoke;
    v24[3] = &unk_1E8284C68;
    v7 = v5;
    v25 = v7;
    v26 = &v27;
    [(NSMutableDictionary *)pageURLStringToIconInfoDict enumerateKeysAndObjectsUsingBlock:v24];
    if (v28[3])
    {
      v18 = 0;
      v19 = &v18;
      v20 = 0x3032000000;
      v21 = __Block_byref_object_copy__4;
      v22 = __Block_byref_object_dispose__4;
      v23 = 0;
      iconURLStringToIconInfoDict = self->_iconURLStringToIconInfoDict;
      v12 = MEMORY[0x1E69E9820];
      v13 = 3221225472;
      v14 = __66__WBSFaviconProviderPrivateCache_removeImageDataForPageURLString___block_invoke_7;
      v15 = &unk_1E8284C68;
      v9 = v7;
      v16 = v9;
      v17 = &v18;
      [(NSMutableDictionary *)iconURLStringToIconInfoDict enumerateKeysAndObjectsUsingBlock:&v12];
      if (v19[5])
      {
        [(NSMutableDictionary *)self->_iconURLStringToIconInfoDict removeObjectForKey:v12, v13, v14, v15];
        uuidToImageDataCache = self->_uuidToImageDataCache;
        v11 = [v9 UUIDString];
        [(NSCache *)uuidToImageDataCache removeObjectForKey:v11];
      }

      _Block_object_dispose(&v18, 8);
    }

    _Block_object_dispose(&v27, 8);
  }
}

void __66__WBSFaviconProviderPrivateCache_removeImageDataForPageURLString___block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v6 = *(a1 + 32);
  v7 = a3;
  v8 = [v6 UUIDString];
  v9 = [v7 UUIDString];

  LODWORD(v7) = [v8 isEqual:v9];
  if (v7)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
    *a4 = 1;
  }
}

void __66__WBSFaviconProviderPrivateCache_removeImageDataForPageURLString___block_invoke_7(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v12 = a2;
  v8 = *(a1 + 32);
  v9 = a3;
  v10 = [v8 UUIDString];
  v11 = [v9 UUIDString];

  LODWORD(v9) = [v10 isEqual:v11];
  if (v9)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

- (void)removeAllImageDataWithCompletionHandler:(id)a3
{
  v5 = a3;
  v4 = [(NSMutableDictionary *)self->_pageURLStringToIconInfoDict allKeys];
  [(NSCache *)self->_uuidToImageDataCache removeAllObjects];
  [(NSMutableDictionary *)self->_pageURLStringToIconInfoDict removeAllObjects];
  [(NSMutableDictionary *)self->_iconURLStringToIconInfoDict removeAllObjects];
  if (v5)
  {
    v5[2](v5, v4);
  }
}

@end