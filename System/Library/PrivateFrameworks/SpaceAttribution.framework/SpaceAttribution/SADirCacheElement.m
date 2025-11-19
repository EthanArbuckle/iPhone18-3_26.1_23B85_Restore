@interface SADirCacheElement
- (SADirCacheElement)initWithBundleIDs:(id)a3 purgeable:(BOOL)a4 cacheFolder:(BOOL)a5;
@end

@implementation SADirCacheElement

- (SADirCacheElement)initWithBundleIDs:(id)a3 purgeable:(BOOL)a4 cacheFolder:(BOOL)a5
{
  v9 = a3;
  v13.receiver = self;
  v13.super_class = SADirCacheElement;
  v10 = [(SADirCacheElement *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_bundleIDs, a3);
    v11->_purgeable = a4;
    v11->_cacheFolder = a5;
  }

  return v11;
}

@end