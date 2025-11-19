@interface TSPTemporaryDataStorageURL
- (id)initFileURLWithPath:(id)a3 parentDirectory:(id)a4;
@end

@implementation TSPTemporaryDataStorageURL

- (id)initFileURLWithPath:(id)a3 parentDirectory:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = TSPTemporaryDataStorageURL;
  v8 = [(TSPTemporaryDataStorageURL *)&v11 initFileURLWithPath:a3 isDirectory:0];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(v8 + 5, a4);
  }

  return v9;
}

@end