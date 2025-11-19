@interface IMBaseDiskCache
- (BOOL)hasItemForKey:(id)a3;
- (BOOL)isEmpty;
- (IMBaseDiskCache)init;
- (IMBaseDiskCache)initWithBasePath:(id)a3;
- (id)_allFiles;
- (id)pathForKey:(id)a3;
- (void)clearCache;
- (void)initialize;
- (void)removeItemForKey:(id)a3;
- (void)removeItemsWithPrefx:(id)a3;
@end

@implementation IMBaseDiskCache

- (void)initialize
{
  v5 = [MEMORY[0x277CCAA00] defaultManager];
  v3 = [(IMBaseDiskCache *)self basePath];
  if (([v5 fileExistsAtPath:v3] & 1) == 0)
  {
    v4 = [MEMORY[0x277D3DB60] supportsImageStore];

    if (!v4)
    {
      goto LABEL_5;
    }

    v3 = [(IMBaseDiskCache *)self basePath];
    [v5 createDirectoryAtPath:v3 withIntermediateDirectories:1 attributes:0 error:0];
  }

LABEL_5:
}

- (IMBaseDiskCache)init
{
  v3 = [MEMORY[0x277D75128] applicationCacheDirectory];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringByAppendingPathComponent:v5];

  v7 = [(IMBaseDiskCache *)self initWithBasePath:v6];
  return v7;
}

- (IMBaseDiskCache)initWithBasePath:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = IMBaseDiskCache;
  v5 = [(IMBaseDiskCache *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(IMBaseDiskCache *)v5 setBasePath:v4];
    [(IMBaseDiskCache *)v6 initialize];
  }

  return v6;
}

- (void)clearCache
{
  v3 = [MEMORY[0x277CCAA00] defaultManager];
  v4 = [(IMBaseDiskCache *)self basePath];
  [v3 removeItemAtPath:v4 error:0];

  [(IMBaseDiskCache *)self initialize];
}

- (void)removeItemsWithPrefx:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 length])
  {
    v5 = [MEMORY[0x277CCAA00] defaultManager];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v6 = [(IMBaseDiskCache *)self _allFiles];
    v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v14 + 1) + 8 * i);
          if ([v11 hasPrefix:v4])
          {
            v12 = [(IMBaseDiskCache *)self basePath];
            v13 = [v12 stringByAppendingPathComponent:v11];

            [v5 removeItemAtPath:v13 error:0];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v8);
    }
  }
}

- (void)removeItemForKey:(id)a3
{
  v4 = [(IMBaseDiskCache *)self pathForKey:a3];
  if ([v4 length])
  {
    v3 = [MEMORY[0x277CCAA00] defaultManager];
    [v3 removeItemAtPath:v4 error:0];
  }
}

- (BOOL)hasItemForKey:(id)a3
{
  v3 = [(IMBaseDiskCache *)self pathForKey:a3];
  if ([v3 length])
  {
    v4 = [MEMORY[0x277CCAA00] defaultManager];
    v5 = [v4 fileExistsAtPath:v3];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isEmpty
{
  v2 = [(IMBaseDiskCache *)self _allFiles];
  v3 = [v2 count] == 0;

  return v3;
}

- (id)pathForKey:(id)a3
{
  v22[3] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 length])
  {
    v5 = [v4 pf_stringWithPercentEscape];
    v6 = v5;
    if ([v5 length] >= 0x100)
    {
      v7 = [v4 pathExtension];
      v8 = [v4 stringByDeletingPathExtension];
      v9 = [v8 UTF8String];
      v6 = v5;
      if (v9)
      {
        v10 = v9;
        v11 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:32];
        CC_SHA256(v10, [v8 length], objc_msgSend(v11, "mutableBytes"));
        v12 = [v11 base64EncodedStringWithOptions:0];
        v22[0] = @"shortened-";
        v22[1] = v12;
        v22[2] = v7;
        v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:3];
        v6 = [v13 componentsJoinedByString:&stru_282CBB070];
      }

      v14 = _MTLogCategoryDefault();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v18 = 138412546;
        v19 = v5;
        v20 = 2112;
        v21 = v6;
        _os_log_impl(&dword_21B365000, v14, OS_LOG_TYPE_DEFAULT, "Image name exceeds 255 characters. Shortening %@ to %@", &v18, 0x16u);
      }
    }

    v15 = [(IMBaseDiskCache *)self basePath];
    v16 = [v15 stringByAppendingPathComponent:v6];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (id)_allFiles
{
  v3 = [MEMORY[0x277CCAA00] defaultManager];
  v4 = [(IMBaseDiskCache *)self basePath];
  v5 = [v3 contentsOfDirectoryAtPath:v4 error:0];

  return v5;
}

@end