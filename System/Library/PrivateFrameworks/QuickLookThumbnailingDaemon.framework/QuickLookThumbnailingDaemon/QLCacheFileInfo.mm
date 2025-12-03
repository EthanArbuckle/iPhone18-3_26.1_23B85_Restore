@interface QLCacheFileInfo
- (QLCacheFileInfo)initWithCacheId:(unint64_t)id versionedFileIdentifier:(id)identifier thumbnailCount:(unint64_t)count minSize:(float)size maxSize:(float)maxSize totalDataLength:(unint64_t)length;
@end

@implementation QLCacheFileInfo

- (QLCacheFileInfo)initWithCacheId:(unint64_t)id versionedFileIdentifier:(id)identifier thumbnailCount:(unint64_t)count minSize:(float)size maxSize:(float)maxSize totalDataLength:(unint64_t)length
{
  identifierCopy = identifier;
  v19.receiver = self;
  v19.super_class = QLCacheFileInfo;
  v16 = [(QLCacheFileInfo *)&v19 init];
  v17 = v16;
  if (v16)
  {
    v16->_cacheId = id;
    objc_storeStrong(&v16->_fileIdentifier, identifier);
    v17->_minSize = size;
    v17->_maxSize = maxSize;
    v17->_thumbnailCount = count;
    v17->_totalDataLength = length;
  }

  return v17;
}

@end