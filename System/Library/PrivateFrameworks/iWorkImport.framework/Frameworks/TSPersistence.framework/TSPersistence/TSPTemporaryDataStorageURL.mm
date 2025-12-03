@interface TSPTemporaryDataStorageURL
- (id)initFileURLWithPath:(id)path parentDirectory:(id)directory;
@end

@implementation TSPTemporaryDataStorageURL

- (id)initFileURLWithPath:(id)path parentDirectory:(id)directory
{
  directoryCopy = directory;
  v11.receiver = self;
  v11.super_class = TSPTemporaryDataStorageURL;
  v8 = [(TSPTemporaryDataStorageURL *)&v11 initFileURLWithPath:path isDirectory:0];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(v8 + 5, directory);
  }

  return v9;
}

@end