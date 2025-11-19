@interface SADirContentCacheEntry
- (SADirContentCacheEntry)initWithData:(id)a3 idx:(unint64_t)a4 andParentPath:(id)a5;
@end

@implementation SADirContentCacheEntry

- (SADirContentCacheEntry)initWithData:(id)a3 idx:(unint64_t)a4 andParentPath:(id)a5
{
  v9 = a3;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = SADirContentCacheEntry;
  v11 = [(SADirContentCacheEntry *)&v14 init];
  v12 = v11;
  if (v11)
  {
    v11->_index = a4;
    objc_storeStrong(&v11->_dir_content, a3);
    objc_storeStrong(&v12->_parent_path, a5);
  }

  return v12;
}

@end