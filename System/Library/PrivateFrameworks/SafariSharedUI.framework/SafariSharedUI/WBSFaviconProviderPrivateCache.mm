@interface WBSFaviconProviderPrivateCache
- (BOOL)linkPageURLString:(id)string toIconURLString:(id)lString;
- (WBSFaviconProviderPrivateCache)init;
- (id)firstImageDataMatchingPageURLStringIn:(id)in matchedPageURLString:(id *)string;
- (id)imageDataForIconURLString:(id)string;
- (id)imageDataForPageURLString:(id)string;
- (id)imageInfoForIconURLString:(id)string;
- (id)imageInfoForPageURLString:(id)string;
- (id)pageURLStringsWithPrefixesIn:(id)in;
- (id)rejectedResourceInfosForPageURLString:(id)string iconURLString:(id)lString;
- (void)removeAllImageDataWithCompletionHandler:(id)handler;
- (void)removeImageDataForPageURLString:(id)string;
- (void)setImageData:(id)data forPageURLString:(id)string iconURLString:(id)lString iconSize:(CGSize)size hasGeneratedResolutions:(BOOL)resolutions;
- (void)setIsRejectedResource:(BOOL)resource forPageURLString:(id)string iconURLString:(id)lString;
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

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    pageURLStringToIconInfoDict = v2->_pageURLStringToIconInfoDict;
    v2->_pageURLStringToIconInfoDict = dictionary;

    dictionary2 = [MEMORY[0x1E695DF90] dictionary];
    iconURLStringToIconInfoDict = v2->_iconURLStringToIconInfoDict;
    v2->_iconURLStringToIconInfoDict = dictionary2;

    dictionary3 = [MEMORY[0x1E695DF90] dictionary];
    urlStringToRejectedResourceIconInfoDict = v2->_urlStringToRejectedResourceIconInfoDict;
    v2->_urlStringToRejectedResourceIconInfoDict = dictionary3;

    v11 = v2;
  }

  return v2;
}

- (id)imageDataForPageURLString:(id)string
{
  v4 = [(NSMutableDictionary *)self->_pageURLStringToIconInfoDict objectForKeyedSubscript:string];
  v5 = v4;
  if (v4)
  {
    uuidToImageDataCache = self->_uuidToImageDataCache;
    uUIDString = [v4 UUIDString];
    v8 = [(NSCache *)uuidToImageDataCache objectForKey:uUIDString];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)imageDataForIconURLString:(id)string
{
  v4 = [(NSMutableDictionary *)self->_iconURLStringToIconInfoDict objectForKeyedSubscript:string];
  v5 = v4;
  if (v4)
  {
    uuidToImageDataCache = self->_uuidToImageDataCache;
    uUIDString = [v4 UUIDString];
    v8 = [(NSCache *)uuidToImageDataCache objectForKey:uUIDString];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)firstImageDataMatchingPageURLStringIn:(id)in matchedPageURLString:(id *)string
{
  v21 = *MEMORY[0x1E69E9840];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  inCopy = in;
  v7 = [inCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(inCopy);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        v12 = [(WBSFaviconProviderPrivateCache *)self imageDataForPageURLString:v11, v16];
        if (v12)
        {
          v13 = v12;
          if (string)
          {
            v14 = v11;
            *string = v11;
          }

          goto LABEL_12;
        }
      }

      v8 = [inCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
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

- (id)pageURLStringsWithPrefixesIn:(id)in
{
  v29 = *MEMORY[0x1E69E9840];
  inCopy = in;
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
        v11 = inCopy;
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

  allObjects = [v5 allObjects];

  return allObjects;
}

- (id)imageInfoForPageURLString:(id)string
{
  v4 = [(NSMutableDictionary *)self->_pageURLStringToIconInfoDict objectForKeyedSubscript:string];
  v5 = v4;
  if (v4)
  {
    uuidToImageDataCache = self->_uuidToImageDataCache;
    uUIDString = [v4 UUIDString];
    v8 = [(NSCache *)uuidToImageDataCache objectForKey:uUIDString];
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

- (id)imageInfoForIconURLString:(id)string
{
  v4 = [(NSMutableDictionary *)self->_iconURLStringToIconInfoDict objectForKeyedSubscript:string];
  v5 = v4;
  if (v4)
  {
    uuidToImageDataCache = self->_uuidToImageDataCache;
    uUIDString = [v4 UUIDString];
    v8 = [(NSCache *)uuidToImageDataCache objectForKey:uUIDString];
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

- (void)setImageData:(id)data forPageURLString:(id)string iconURLString:(id)lString iconSize:(CGSize)size hasGeneratedResolutions:(BOOL)resolutions
{
  resolutionsCopy = resolutions;
  height = size.height;
  width = size.width;
  dataCopy = data;
  stringCopy = string;
  lStringCopy = lString;
  v15 = [(WBSFaviconProviderPrivateCache *)self imageInfoForPageURLString:stringCopy];
  v16 = [(WBSFaviconProviderPrivateCache *)self imageInfoForIconURLString:lStringCopy];
  v17 = v16;
  if (!v15 || v16)
  {
    if (!v15 || !v16)
    {
      goto LABEL_4;
    }

    uUIDString = [v15 UUIDString];
    uUIDString2 = [v17 UUIDString];
    v28 = [uUIDString isEqual:uUIDString2];

    if (v28)
    {
      if (dataCopy)
      {
        uuidToImageDataCache = self->_uuidToImageDataCache;
        uUIDString3 = [v15 UUIDString];
        [(NSCache *)uuidToImageDataCache setObject:dataCopy forKey:uUIDString3];
      }

      else
      {
        [(WBSFaviconProviderPrivateCache *)self removeImageDataForPageURLString:stringCopy];
      }

      goto LABEL_16;
    }
  }

  [(WBSFaviconProviderPrivateCache *)self removeImageDataForPageURLString:stringCopy];

  v15 = 0;
LABEL_4:
  if (!dataCopy)
  {
    goto LABEL_16;
  }

  if (!(v15 | v17))
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString4 = [uUID UUIDString];

    date = [MEMORY[0x1E695DF00] date];
    height = [[WBSFaviconProviderIconInfo alloc] initWithPageURLString:stringCopy iconURLString:lStringCopy UUIDString:uUIDString4 dateAdded:date size:resolutionsCopy hasGeneratedResolutions:0 isRejectedResource:width, height];
    [(NSMutableDictionary *)self->_pageURLStringToIconInfoDict setObject:height forKeyedSubscript:stringCopy];

    height2 = [[WBSFaviconProviderIconInfo alloc] initWithPageURLString:0 iconURLString:lStringCopy UUIDString:uUIDString4 dateAdded:date size:resolutionsCopy hasGeneratedResolutions:0 isRejectedResource:width, height];
    [(NSMutableDictionary *)self->_iconURLStringToIconInfoDict setObject:height2 forKeyedSubscript:lStringCopy];

    [(NSCache *)self->_uuidToImageDataCache setObject:dataCopy forKey:uUIDString4];
    goto LABEL_15;
  }

  if (!v15 && v17)
  {
    v18 = [WBSFaviconProviderIconInfo alloc];
    uUIDString5 = [v17 UUIDString];
    dateAdded = [v17 dateAdded];
    [v17 size];
    v23 = -[WBSFaviconProviderIconInfo initWithPageURLString:iconURLString:UUIDString:dateAdded:size:hasGeneratedResolutions:isRejectedResource:](v18, "initWithPageURLString:iconURLString:UUIDString:dateAdded:size:hasGeneratedResolutions:isRejectedResource:", stringCopy, lStringCopy, uUIDString5, dateAdded, [v17 hasGeneratedResolutions], 0, v21, v22);
    [(NSMutableDictionary *)self->_pageURLStringToIconInfoDict setObject:v23 forKeyedSubscript:stringCopy];

    v24 = self->_uuidToImageDataCache;
    uUIDString6 = [v17 UUIDString];
    [(NSCache *)v24 setObject:dataCopy forKey:uUIDString6];

LABEL_15:
    v15 = 0;
  }

LABEL_16:
}

- (void)setIsRejectedResource:(BOOL)resource forPageURLString:(id)string iconURLString:(id)lString
{
  resourceCopy = resource;
  stringCopy = string;
  lStringCopy = lString;
  if (resourceCopy)
  {
    v9 = [WBSFaviconProviderIconInfo alloc];
    date = [MEMORY[0x1E695DF00] date];
    v11 = [(WBSFaviconProviderIconInfo *)v9 initWithPageURLString:stringCopy iconURLString:lStringCopy UUIDString:0 dateAdded:date size:0 hasGeneratedResolutions:1 isRejectedResource:*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)];
  }

  else
  {
    v11 = 0;
  }

  [(NSMutableDictionary *)self->_urlStringToRejectedResourceIconInfoDict setObject:v11 forKeyedSubscript:stringCopy];
  [(NSMutableDictionary *)self->_urlStringToRejectedResourceIconInfoDict setObject:v11 forKeyedSubscript:lStringCopy];
}

- (id)rejectedResourceInfosForPageURLString:(id)string iconURLString:(id)lString
{
  lStringCopy = lString;
  v7 = MEMORY[0x1E695DF70];
  stringCopy = string;
  array = [v7 array];
  v10 = [(NSMutableDictionary *)self->_urlStringToRejectedResourceIconInfoDict objectForKeyedSubscript:stringCopy];

  if (v10)
  {
    [array addObject:v10];
  }

  v11 = [(NSMutableDictionary *)self->_urlStringToRejectedResourceIconInfoDict objectForKeyedSubscript:lStringCopy];

  if (v11)
  {
    [array addObject:v11];
  }

  return array;
}

- (BOOL)linkPageURLString:(id)string toIconURLString:(id)lString
{
  stringCopy = string;
  lStringCopy = lString;
  v8 = [(WBSFaviconProviderPrivateCache *)self imageInfoForPageURLString:stringCopy];
  v9 = [(WBSFaviconProviderPrivateCache *)self imageInfoForIconURLString:lStringCopy];
  if (v9)
  {
    uUIDString = [v8 UUIDString];
    uUIDString2 = [v9 UUIDString];
    v12 = [uUIDString isEqual:uUIDString2];

    if ((v12 & 1) == 0)
    {
      [(WBSFaviconProviderPrivateCache *)self removeImageDataForPageURLString:stringCopy];
      v13 = [WBSFaviconProviderIconInfo alloc];
      uUIDString3 = [v9 UUIDString];
      dateAdded = [v9 dateAdded];
      [v9 size];
      v18 = -[WBSFaviconProviderIconInfo initWithPageURLString:iconURLString:UUIDString:dateAdded:size:hasGeneratedResolutions:isRejectedResource:](v13, "initWithPageURLString:iconURLString:UUIDString:dateAdded:size:hasGeneratedResolutions:isRejectedResource:", stringCopy, lStringCopy, uUIDString3, dateAdded, [v9 hasGeneratedResolutions], 0, v16, v17);
      [(NSMutableDictionary *)self->_pageURLStringToIconInfoDict setObject:v18 forKeyedSubscript:stringCopy];
    }
  }

  return v9 != 0;
}

- (void)removeImageDataForPageURLString:(id)string
{
  stringCopy = string;
  v5 = [(WBSFaviconProviderPrivateCache *)self imageInfoForPageURLString:stringCopy];
  if (v5)
  {
    [(NSMutableDictionary *)self->_pageURLStringToIconInfoDict removeObjectForKey:stringCopy];
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
        uUIDString = [v9 UUIDString];
        [(NSCache *)uuidToImageDataCache removeObjectForKey:uUIDString];
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

- (void)removeAllImageDataWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  allKeys = [(NSMutableDictionary *)self->_pageURLStringToIconInfoDict allKeys];
  [(NSCache *)self->_uuidToImageDataCache removeAllObjects];
  [(NSMutableDictionary *)self->_pageURLStringToIconInfoDict removeAllObjects];
  [(NSMutableDictionary *)self->_iconURLStringToIconInfoDict removeAllObjects];
  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, allKeys);
  }
}

@end