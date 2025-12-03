@interface IMBaseDiskCache
- (BOOL)hasItemForKey:(id)key;
- (BOOL)isEmpty;
- (IMBaseDiskCache)init;
- (IMBaseDiskCache)initWithBasePath:(id)path;
- (id)_allFiles;
- (id)pathForKey:(id)key;
- (void)clearCache;
- (void)initialize;
- (void)removeItemForKey:(id)key;
- (void)removeItemsWithPrefx:(id)prefx;
@end

@implementation IMBaseDiskCache

- (void)initialize
{
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  basePath = [(IMBaseDiskCache *)self basePath];
  if (([defaultManager fileExistsAtPath:basePath] & 1) == 0)
  {
    supportsImageStore = [MEMORY[0x277D3DB60] supportsImageStore];

    if (!supportsImageStore)
    {
      goto LABEL_5;
    }

    basePath = [(IMBaseDiskCache *)self basePath];
    [defaultManager createDirectoryAtPath:basePath withIntermediateDirectories:1 attributes:0 error:0];
  }

LABEL_5:
}

- (IMBaseDiskCache)init
{
  applicationCacheDirectory = [MEMORY[0x277D75128] applicationCacheDirectory];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [applicationCacheDirectory stringByAppendingPathComponent:v5];

  v7 = [(IMBaseDiskCache *)self initWithBasePath:v6];
  return v7;
}

- (IMBaseDiskCache)initWithBasePath:(id)path
{
  pathCopy = path;
  v8.receiver = self;
  v8.super_class = IMBaseDiskCache;
  v5 = [(IMBaseDiskCache *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(IMBaseDiskCache *)v5 setBasePath:pathCopy];
    [(IMBaseDiskCache *)v6 initialize];
  }

  return v6;
}

- (void)clearCache
{
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  basePath = [(IMBaseDiskCache *)self basePath];
  [defaultManager removeItemAtPath:basePath error:0];

  [(IMBaseDiskCache *)self initialize];
}

- (void)removeItemsWithPrefx:(id)prefx
{
  v19 = *MEMORY[0x277D85DE8];
  prefxCopy = prefx;
  if ([prefxCopy length])
  {
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    _allFiles = [(IMBaseDiskCache *)self _allFiles];
    v7 = [_allFiles countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(_allFiles);
          }

          v11 = *(*(&v14 + 1) + 8 * i);
          if ([v11 hasPrefix:prefxCopy])
          {
            basePath = [(IMBaseDiskCache *)self basePath];
            v13 = [basePath stringByAppendingPathComponent:v11];

            [defaultManager removeItemAtPath:v13 error:0];
          }
        }

        v8 = [_allFiles countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v8);
    }
  }
}

- (void)removeItemForKey:(id)key
{
  v4 = [(IMBaseDiskCache *)self pathForKey:key];
  if ([v4 length])
  {
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    [defaultManager removeItemAtPath:v4 error:0];
  }
}

- (BOOL)hasItemForKey:(id)key
{
  v3 = [(IMBaseDiskCache *)self pathForKey:key];
  if ([v3 length])
  {
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v5 = [defaultManager fileExistsAtPath:v3];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isEmpty
{
  _allFiles = [(IMBaseDiskCache *)self _allFiles];
  v3 = [_allFiles count] == 0;

  return v3;
}

- (id)pathForKey:(id)key
{
  v22[3] = *MEMORY[0x277D85DE8];
  keyCopy = key;
  if ([keyCopy length])
  {
    pf_stringWithPercentEscape = [keyCopy pf_stringWithPercentEscape];
    v6 = pf_stringWithPercentEscape;
    if ([pf_stringWithPercentEscape length] >= 0x100)
    {
      pathExtension = [keyCopy pathExtension];
      stringByDeletingPathExtension = [keyCopy stringByDeletingPathExtension];
      uTF8String = [stringByDeletingPathExtension UTF8String];
      v6 = pf_stringWithPercentEscape;
      if (uTF8String)
      {
        v10 = uTF8String;
        v11 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:32];
        CC_SHA256(v10, [stringByDeletingPathExtension length], objc_msgSend(v11, "mutableBytes"));
        v12 = [v11 base64EncodedStringWithOptions:0];
        v22[0] = @"shortened-";
        v22[1] = v12;
        v22[2] = pathExtension;
        v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:3];
        v6 = [v13 componentsJoinedByString:&stru_282CBB070];
      }

      v14 = _MTLogCategoryDefault();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v18 = 138412546;
        v19 = pf_stringWithPercentEscape;
        v20 = 2112;
        v21 = v6;
        _os_log_impl(&dword_21B365000, v14, OS_LOG_TYPE_DEFAULT, "Image name exceeds 255 characters. Shortening %@ to %@", &v18, 0x16u);
      }
    }

    basePath = [(IMBaseDiskCache *)self basePath];
    v16 = [basePath stringByAppendingPathComponent:v6];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (id)_allFiles
{
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  basePath = [(IMBaseDiskCache *)self basePath];
  v5 = [defaultManager contentsOfDirectoryAtPath:basePath error:0];

  return v5;
}

@end