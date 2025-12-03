@interface PVDocumentCacheManager
+ (id)sharedInstance;
+ (void)releaseSharedInstance;
- (PVDocumentCacheManager)init;
- (id)generateKeyFromFilePathString:(id)string;
- (void)cacheOZXDocument:(void *)document forKey:(id)key timeElapsed:(double)elapsed memoryInfo:(unint64_t)info;
- (void)dealloc;
- (void)getOZXDocumentForKey:(id)key;
- (void)newOZXDocumentForKey:(id)key;
@end

@implementation PVDocumentCacheManager

+ (id)sharedInstance
{
  result = s_sharedInstance;
  if (!s_sharedInstance)
  {
    if (s_wasReleased)
    {
      return 0;
    }

    else
    {
      objc_sync_enter(self);
      if (!s_sharedInstance)
      {
        s_sharedInstance = objc_alloc_init(PVDocumentCacheManager);
      }

      objc_sync_exit(self);
      return s_sharedInstance;
    }
  }

  return result;
}

+ (void)releaseSharedInstance
{
  s_wasReleased = 1;

  s_sharedInstance = 0;
}

- (PVDocumentCacheManager)init
{
  v5.receiver = self;
  v5.super_class = PVDocumentCacheManager;
  v2 = [(PVDocumentCacheManager *)&v5 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEA78]);
    v2->_cache = v3;
    [(NSCache *)v3 setCountLimit:30];
    [(NSCache *)v2->_cache setTotalCostLimit:300000000];
    [(NSCache *)v2->_cache setEvictsObjectsWithDiscardedContent:1];
    [(NSCache *)v2->_cache setDelegate:v2];
  }

  return v2;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = PVDocumentCacheManager;
  [(PVDocumentCacheManager *)&v3 dealloc];
}

- (id)generateKeyFromFilePathString:(id)string
{
  v4 = [objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")];
  if (!v4)
  {
    return string;
  }

  v5 = [objc_msgSend(v4 "fileModificationDate")];

  return [string stringByAppendingString:v5];
}

- (void)cacheOZXDocument:(void *)document forKey:(id)key timeElapsed:(double)elapsed memoryInfo:(unint64_t)info
{
  v12 = 0;
  if (document)
  {
    OZXCopyDocument(document, &v12);
    v9 = [PVDocumentWrapper alloc];
    v10 = [(PVDocumentWrapper *)v9 initWithOZXDocument:v12 forKey:key];
    v11 = v10;
    [(NSCache *)self->_cache setObject:v10 forKey:[(PVDocumentCacheManager *)self generateKeyFromFilePathString:key] cost:info];
  }
}

- (void)newOZXDocumentForKey:(id)key
{
  v4 = 0;
  result = [(NSCache *)self->_cache objectForKey:[(PVDocumentCacheManager *)self generateKeyFromFilePathString:key]];
  if (result)
  {
    OZXCopyDocument([result ozxDocument], &v4);
    return v4;
  }

  return result;
}

- (void)getOZXDocumentForKey:(id)key
{
  result = [(NSCache *)self->_cache objectForKey:[(PVDocumentCacheManager *)self generateKeyFromFilePathString:key]];
  if (result)
  {

    return [result ozxDocument];
  }

  return result;
}

@end