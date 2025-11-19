@interface REHTTPFileCache
- (REHTTPFileCache)initWithRootDirectory:(id)a3;
- (id)loadFileAtPath:(id)a3;
@end

@implementation REHTTPFileCache

- (REHTTPFileCache)initWithRootDirectory:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = REHTTPFileCache;
  v6 = [(REHTTPFileCache *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_directory, a3);
    v8 = objc_alloc_init(MEMORY[0x277CBEA78]);
    cache = v7->_cache;
    v7->_cache = v8;
  }

  return v7;
}

- (id)loadFileAtPath:(id)a3
{
  v4 = a3;
  v5 = [(NSCache *)self->_cache objectForKey:v4];
  if (v5)
  {
    v6 = v5;
    v7 = [MEMORY[0x277CBEB68] null];
    v8 = [v6 isEqual:v7];

    if (v8)
    {
      v9 = 0;
      v10 = v4;
      goto LABEL_13;
    }

    v10 = v4;
  }

  else
  {
    v6 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v4];
    cache = self->_cache;
    v12 = v6;
    if (!v6)
    {
      v12 = [MEMORY[0x277CBEB68] null];
    }

    -[NSCache setObject:forKey:cost:](cache, "setObject:forKey:cost:", v12, v4, [v6 length]);
    v10 = v4;
    if (!v6)
    {

      v10 = [(NSString *)self->_directory stringByAppendingPathComponent:v4];

      v6 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v10];
      v13 = self->_cache;
      v14 = v6;
      if (!v6)
      {
        v14 = [MEMORY[0x277CBEB68] null];
      }

      -[NSCache setObject:forKey:cost:](v13, "setObject:forKey:cost:", v14, v4, [v6 length]);
      if (!v6)
      {
      }
    }
  }

  v9 = v6;
  v6 = v9;
LABEL_13:

  return v9;
}

@end