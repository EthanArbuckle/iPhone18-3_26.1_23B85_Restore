@interface ISURLCache
+ (id)cacheDirectoryPath;
- (ISURLCache)initWithCacheConfiguration:(id)a3;
- (void)dealloc;
- (void)purgeMemoryCache;
- (void)reloadWithCacheConfiguration:(id)a3;
- (void)saveMemoryCacheToDisk;
@end

@implementation ISURLCache

- (ISURLCache)initWithCacheConfiguration:(id)a3
{
  if (!a3)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"Must provide a configuration"];
  }

  v8.receiver = self;
  v8.super_class = ISURLCache;
  v5 = [(ISURLCache *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(ISURLCache *)v5 reloadWithCacheConfiguration:a3];
  }

  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = ISURLCache;
  [(ISURLCache *)&v3 dealloc];
}

+ (id)cacheDirectoryPath
{
  result = cacheDirectoryPath_sCacheDirectoryPath;
  if (!cacheDirectoryPath_sCacheDirectoryPath)
  {
    v3 = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:{-[NSArray lastObject](NSSearchPathForDirectoriesInDomains(NSCachesDirectory, 1uLL, 1), "lastObject"), @"com.apple.iTunesStore", @"URLCache", 0}];
    v4 = [MEMORY[0x277CCACA8] pathWithComponents:v3];
    if ([MEMORY[0x277CCAA00] ensureDirectoryExists:v4])
    {
      cacheDirectoryPath_sCacheDirectoryPath = v4;
    }

    return cacheDirectoryPath_sCacheDirectoryPath;
  }

  return result;
}

- (void)reloadWithCacheConfiguration:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"Must provide a configuration"];
  }

  if (self->_configuration != a3)
  {
    v5 = [a3 persistentIdentifier];
    if (self->_cache)
    {
      v6 = [(NSString *)[(ISURLCache *)self persistentIdentifier] isEqualToString:v5];
      cache = self->_cache;
      if (v6)
      {
        -[NSURLCache setDiskCapacity:](cache, "setDiskCapacity:", [a3 diskCapacity]);
        -[NSURLCache setMemoryCapacity:](self->_cache, "setMemoryCapacity:", [a3 memoryCapacity]);
LABEL_9:

        self->_configuration = [a3 copy];
        v9 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
        if (!v9)
        {
          v9 = [MEMORY[0x277D69B38] sharedConfig];
        }

        v10 = [v9 shouldLog];
        if ([v9 shouldLogToDisk])
        {
          v11 = v10 | 2;
        }

        else
        {
          v11 = v10;
        }

        if (!os_log_type_enabled([v9 OSLogObject], OS_LOG_TYPE_INFO))
        {
          v11 &= 2u;
        }

        if (v11)
        {
          v16 = 138413058;
          v17 = objc_opt_class();
          v18 = 2112;
          v19 = v5;
          v20 = 2048;
          v21 = [a3 diskCapacity];
          v22 = 2048;
          v23 = [a3 memoryCapacity];
          LODWORD(v15) = 42;
          v12 = _os_log_send_and_compose_impl();
          if (v12)
          {
            v13 = v12;
            [MEMORY[0x277CCACA8] stringWithCString:v12 encoding:{4, &v16, v15}];
            free(v13);
            SSFileLog();
          }
        }

        goto LABEL_19;
      }
    }

    else
    {
      cache = 0;
    }

    v8 = [objc_alloc(MEMORY[0x277CCACD8]) initWithMemoryCapacity:objc_msgSend(a3 diskCapacity:"memoryCapacity") diskPath:{objc_msgSend(a3, "diskCapacity"), v5}];
    self->_cache = v8;
    [(NSURLCache *)v8 _CFURLCache];
    _CFURLCacheLoadMemoryFromDiskNow();
    goto LABEL_9;
  }

LABEL_19:
  v14 = *MEMORY[0x277D85DE8];
}

- (void)purgeMemoryCache
{
  v2 = [(NSURLCache *)self->_cache _CFURLCache];

  MEMORY[0x28210D1A0](v2);
}

- (void)saveMemoryCacheToDisk
{
  v2 = [(NSURLCache *)self->_cache _CFURLCache];

  MEMORY[0x28210D198](v2);
}

@end