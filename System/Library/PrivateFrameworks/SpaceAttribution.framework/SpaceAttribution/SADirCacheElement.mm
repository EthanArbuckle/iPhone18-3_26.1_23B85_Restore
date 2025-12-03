@interface SADirCacheElement
- (SADirCacheElement)initWithBundleIDs:(id)ds purgeable:(BOOL)purgeable cacheFolder:(BOOL)folder;
@end

@implementation SADirCacheElement

- (SADirCacheElement)initWithBundleIDs:(id)ds purgeable:(BOOL)purgeable cacheFolder:(BOOL)folder
{
  dsCopy = ds;
  v13.receiver = self;
  v13.super_class = SADirCacheElement;
  v10 = [(SADirCacheElement *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_bundleIDs, ds);
    v11->_purgeable = purgeable;
    v11->_cacheFolder = folder;
  }

  return v11;
}

@end