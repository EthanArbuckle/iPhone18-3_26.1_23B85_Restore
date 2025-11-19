@interface WBSFaviconProviderRecordCache
- (WBSFaviconProviderRecordCache)init;
- (id)dateAddedForFaviconURLString:(id)a3 iconUUID:(id *)a4 size:(CGSize *)a5;
- (void)removeAllRecords;
- (void)removeRecordForIconUUIDs:(id)a3;
- (void)setDateAdded:(id)a3 forFaviconURLString:(id)a4 iconUUID:(id)a5 iconSize:(CGSize)a6 hasGeneratedResolutions:(BOOL)a7;
@end

@implementation WBSFaviconProviderRecordCache

- (WBSFaviconProviderRecordCache)init
{
  v9.receiver = self;
  v9.super_class = WBSFaviconProviderRecordCache;
  v2 = [(WBSFaviconProviderRecordCache *)&v9 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DF90] dictionary];
    iconURLStringToInfoDictionary = v2->_iconURLStringToInfoDictionary;
    v2->_iconURLStringToInfoDictionary = v3;

    v5 = [MEMORY[0x1E695DF90] dictionary];
    iconUUIDToURLStringDictionary = v2->_iconUUIDToURLStringDictionary;
    v2->_iconUUIDToURLStringDictionary = v5;

    v7 = v2;
  }

  return v2;
}

- (void)setDateAdded:(id)a3 forFaviconURLString:(id)a4 iconUUID:(id)a5 iconSize:(CGSize)a6 hasGeneratedResolutions:(BOOL)a7
{
  v7 = a7;
  height = a6.height;
  width = a6.width;
  iconUUIDToURLStringDictionary = self->_iconUUIDToURLStringDictionary;
  v14 = a5;
  v15 = a4;
  v16 = a3;
  v18 = [(NSMutableDictionary *)iconUUIDToURLStringDictionary objectForKey:v14];
  if (v18)
  {
    [(NSMutableDictionary *)self->_iconURLStringToInfoDictionary removeObjectForKey:v18];
  }

  [(NSMutableDictionary *)self->_iconUUIDToURLStringDictionary removeObjectForKey:v14];
  v17 = [[WBSFaviconProviderIconInfo alloc] initWithPageURLString:0 iconURLString:v15 UUIDString:v14 dateAdded:v16 size:v7 hasGeneratedResolutions:0 isRejectedResource:width, height];

  [(NSMutableDictionary *)self->_iconURLStringToInfoDictionary setObject:v17 forKeyedSubscript:v15];
  [(NSMutableDictionary *)self->_iconUUIDToURLStringDictionary setObject:v15 forKeyedSubscript:v14];
}

- (id)dateAddedForFaviconURLString:(id)a3 iconUUID:(id *)a4 size:(CGSize *)a5
{
  v7 = [(NSMutableDictionary *)self->_iconURLStringToInfoDictionary objectForKeyedSubscript:a3];
  v8 = v7;
  if (a5 && v7)
  {
    [v7 size];
    a5->width = v9;
    a5->height = v10;
  }

  if (a4 && v8)
  {
    *a4 = [v8 UUIDString];
  }

  v11 = [v8 dateAdded];

  return v11;
}

- (void)removeAllRecords
{
  [(NSMutableDictionary *)self->_iconURLStringToInfoDictionary removeAllObjects];
  iconUUIDToURLStringDictionary = self->_iconUUIDToURLStringDictionary;

  [(NSMutableDictionary *)iconUUIDToURLStringDictionary removeAllObjects];
}

- (void)removeRecordForIconUUIDs:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        v10 = [(NSMutableDictionary *)self->_iconUUIDToURLStringDictionary objectForKeyedSubscript:v9];
        if (v10)
        {
          [(NSMutableDictionary *)self->_iconURLStringToInfoDictionary removeObjectForKey:v10];
        }

        [(NSMutableDictionary *)self->_iconUUIDToURLStringDictionary removeObjectForKey:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }
}

@end