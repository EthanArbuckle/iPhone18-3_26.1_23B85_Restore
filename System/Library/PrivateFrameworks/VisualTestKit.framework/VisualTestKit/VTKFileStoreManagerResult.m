@interface VTKFileStoreManagerResult
- (NSString)saveDescription;
- (VTKFileStoreManagerResult)initWithURL:(id)a3;
@end

@implementation VTKFileStoreManagerResult

- (VTKFileStoreManagerResult)initWithURL:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = VTKFileStoreManagerResult;
  v6 = [(VTKFileStoreManagerResult *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_rootFolderItemsURL, a3);
  }

  return v7;
}

- (NSString)saveDescription
{
  v2 = [(VTKFileStoreManagerResult *)self rootFolderItemsURL];
  v3 = [v2 absoluteString];
  v4 = [NSString stringWithFormat:@"Images save at:%@", v3];

  return v4;
}

@end