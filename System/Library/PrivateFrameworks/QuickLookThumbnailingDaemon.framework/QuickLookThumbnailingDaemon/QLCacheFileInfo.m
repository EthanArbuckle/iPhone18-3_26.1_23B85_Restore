@interface QLCacheFileInfo
- (QLCacheFileInfo)initWithCacheId:(unint64_t)a3 versionedFileIdentifier:(id)a4 thumbnailCount:(unint64_t)a5 minSize:(float)a6 maxSize:(float)a7 totalDataLength:(unint64_t)a8;
@end

@implementation QLCacheFileInfo

- (QLCacheFileInfo)initWithCacheId:(unint64_t)a3 versionedFileIdentifier:(id)a4 thumbnailCount:(unint64_t)a5 minSize:(float)a6 maxSize:(float)a7 totalDataLength:(unint64_t)a8
{
  v15 = a4;
  v19.receiver = self;
  v19.super_class = QLCacheFileInfo;
  v16 = [(QLCacheFileInfo *)&v19 init];
  v17 = v16;
  if (v16)
  {
    v16->_cacheId = a3;
    objc_storeStrong(&v16->_fileIdentifier, a4);
    v17->_minSize = a6;
    v17->_maxSize = a7;
    v17->_thumbnailCount = a5;
    v17->_totalDataLength = a8;
  }

  return v17;
}

@end