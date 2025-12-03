@interface QLDiskCacheFileInfoEnumerator
- (QLDiskCacheFileInfoEnumerator)initWithDiskCache:(id)cache forUbiquitousFiles:(BOOL)files extraInfo:(BOOL)info;
- (id)nextFileInfo;
@end

@implementation QLDiskCacheFileInfoEnumerator

- (QLDiskCacheFileInfoEnumerator)initWithDiskCache:(id)cache forUbiquitousFiles:(BOOL)files extraInfo:(BOOL)info
{
  result = [(QLDiskCacheEnumerator *)self initWithDiskCache:cache];
  if (result)
  {
    result->_ubiquitous = files;
    result->_extraInfo = info;
  }

  return result;
}

- (id)nextFileInfo
{
  v17 = 0;
  v16 = 0;
  v15 = 0;
  indexEnumerator = self->_indexEnumerator;
  if (!indexEnumerator)
  {
    indexDatabase = [(QLDiskCache *)self->super._diskCache indexDatabase];
    v5 = [indexDatabase enumeratorForAllUbiquitousFiles:self->_ubiquitous withExtraInfo:self->_extraInfo];
    v6 = self->_indexEnumerator;
    self->_indexEnumerator = v5;

    indexEnumerator = self->_indexEnumerator;
  }

  v18 = 0;
  v14 = 0;
  v7 = [(QLCacheIndexDatabaseFileInfoEnumerator *)indexEnumerator nextFileWithCacheId:&v18 versionedFileIdentifier:&v14 thumbnailCount:&v17 + 4 minSize:&v17 maxSize:&v16 totalDataLength:&v15];
  v8 = v14;
  v9 = 0;
  if (v7)
  {
    v10 = [QLCacheFileInfo alloc];
    LODWORD(v12) = v16;
    LODWORD(v11) = v17;
    v9 = [(QLCacheFileInfo *)v10 initWithCacheId:v18 versionedFileIdentifier:v8 thumbnailCount:HIDWORD(v17) minSize:v15 maxSize:v11 totalDataLength:v12];
  }

  return v9;
}

@end