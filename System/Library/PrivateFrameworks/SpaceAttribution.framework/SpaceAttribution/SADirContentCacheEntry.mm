@interface SADirContentCacheEntry
- (SADirContentCacheEntry)initWithData:(id)data idx:(unint64_t)idx andParentPath:(id)path;
@end

@implementation SADirContentCacheEntry

- (SADirContentCacheEntry)initWithData:(id)data idx:(unint64_t)idx andParentPath:(id)path
{
  dataCopy = data;
  pathCopy = path;
  v14.receiver = self;
  v14.super_class = SADirContentCacheEntry;
  v11 = [(SADirContentCacheEntry *)&v14 init];
  v12 = v11;
  if (v11)
  {
    v11->_index = idx;
    objc_storeStrong(&v11->_dir_content, data);
    objc_storeStrong(&v12->_parent_path, path);
  }

  return v12;
}

@end