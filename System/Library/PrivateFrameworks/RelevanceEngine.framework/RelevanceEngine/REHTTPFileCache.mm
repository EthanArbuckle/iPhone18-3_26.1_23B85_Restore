@interface REHTTPFileCache
- (REHTTPFileCache)initWithRootDirectory:(id)directory;
- (id)loadFileAtPath:(id)path;
@end

@implementation REHTTPFileCache

- (REHTTPFileCache)initWithRootDirectory:(id)directory
{
  directoryCopy = directory;
  v11.receiver = self;
  v11.super_class = REHTTPFileCache;
  v6 = [(REHTTPFileCache *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_directory, directory);
    v8 = objc_alloc_init(MEMORY[0x277CBEA78]);
    cache = v7->_cache;
    v7->_cache = v8;
  }

  return v7;
}

- (id)loadFileAtPath:(id)path
{
  pathCopy = path;
  v5 = [(NSCache *)self->_cache objectForKey:pathCopy];
  if (v5)
  {
    v6 = v5;
    null = [MEMORY[0x277CBEB68] null];
    v8 = [v6 isEqual:null];

    if (v8)
    {
      v9 = 0;
      v10 = pathCopy;
      goto LABEL_13;
    }

    v10 = pathCopy;
  }

  else
  {
    v6 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:pathCopy];
    cache = self->_cache;
    null2 = v6;
    if (!v6)
    {
      null2 = [MEMORY[0x277CBEB68] null];
    }

    -[NSCache setObject:forKey:cost:](cache, "setObject:forKey:cost:", null2, pathCopy, [v6 length]);
    v10 = pathCopy;
    if (!v6)
    {

      v10 = [(NSString *)self->_directory stringByAppendingPathComponent:pathCopy];

      v6 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v10];
      v13 = self->_cache;
      null3 = v6;
      if (!v6)
      {
        null3 = [MEMORY[0x277CBEB68] null];
      }

      -[NSCache setObject:forKey:cost:](v13, "setObject:forKey:cost:", null3, pathCopy, [v6 length]);
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