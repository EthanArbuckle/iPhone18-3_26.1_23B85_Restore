@interface WBSFaviconProviderRecordCache
- (WBSFaviconProviderRecordCache)init;
- (id)dateAddedForFaviconURLString:(id)string iconUUID:(id *)d size:(CGSize *)size;
- (void)removeAllRecords;
- (void)removeRecordForIconUUIDs:(id)ds;
- (void)setDateAdded:(id)added forFaviconURLString:(id)string iconUUID:(id)d iconSize:(CGSize)size hasGeneratedResolutions:(BOOL)resolutions;
@end

@implementation WBSFaviconProviderRecordCache

- (WBSFaviconProviderRecordCache)init
{
  v9.receiver = self;
  v9.super_class = WBSFaviconProviderRecordCache;
  v2 = [(WBSFaviconProviderRecordCache *)&v9 init];
  if (v2)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    iconURLStringToInfoDictionary = v2->_iconURLStringToInfoDictionary;
    v2->_iconURLStringToInfoDictionary = dictionary;

    dictionary2 = [MEMORY[0x1E695DF90] dictionary];
    iconUUIDToURLStringDictionary = v2->_iconUUIDToURLStringDictionary;
    v2->_iconUUIDToURLStringDictionary = dictionary2;

    v7 = v2;
  }

  return v2;
}

- (void)setDateAdded:(id)added forFaviconURLString:(id)string iconUUID:(id)d iconSize:(CGSize)size hasGeneratedResolutions:(BOOL)resolutions
{
  resolutionsCopy = resolutions;
  height = size.height;
  width = size.width;
  iconUUIDToURLStringDictionary = self->_iconUUIDToURLStringDictionary;
  dCopy = d;
  stringCopy = string;
  addedCopy = added;
  v18 = [(NSMutableDictionary *)iconUUIDToURLStringDictionary objectForKey:dCopy];
  if (v18)
  {
    [(NSMutableDictionary *)self->_iconURLStringToInfoDictionary removeObjectForKey:v18];
  }

  [(NSMutableDictionary *)self->_iconUUIDToURLStringDictionary removeObjectForKey:dCopy];
  height = [[WBSFaviconProviderIconInfo alloc] initWithPageURLString:0 iconURLString:stringCopy UUIDString:dCopy dateAdded:addedCopy size:resolutionsCopy hasGeneratedResolutions:0 isRejectedResource:width, height];

  [(NSMutableDictionary *)self->_iconURLStringToInfoDictionary setObject:height forKeyedSubscript:stringCopy];
  [(NSMutableDictionary *)self->_iconUUIDToURLStringDictionary setObject:stringCopy forKeyedSubscript:dCopy];
}

- (id)dateAddedForFaviconURLString:(id)string iconUUID:(id *)d size:(CGSize *)size
{
  v7 = [(NSMutableDictionary *)self->_iconURLStringToInfoDictionary objectForKeyedSubscript:string];
  v8 = v7;
  if (size && v7)
  {
    [v7 size];
    size->width = v9;
    size->height = v10;
  }

  if (d && v8)
  {
    *d = [v8 UUIDString];
  }

  dateAdded = [v8 dateAdded];

  return dateAdded;
}

- (void)removeAllRecords
{
  [(NSMutableDictionary *)self->_iconURLStringToInfoDictionary removeAllObjects];
  iconUUIDToURLStringDictionary = self->_iconUUIDToURLStringDictionary;

  [(NSMutableDictionary *)iconUUIDToURLStringDictionary removeAllObjects];
}

- (void)removeRecordForIconUUIDs:(id)ds
{
  v16 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [dsCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(dsCopy);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        v10 = [(NSMutableDictionary *)self->_iconUUIDToURLStringDictionary objectForKeyedSubscript:v9];
        if (v10)
        {
          [(NSMutableDictionary *)self->_iconURLStringToInfoDictionary removeObjectForKey:v10];
        }

        [(NSMutableDictionary *)self->_iconUUIDToURLStringDictionary removeObjectForKey:v9];
      }

      v6 = [dsCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }
}

@end