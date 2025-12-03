@interface VTKFileStoreManagerResult
- (NSString)saveDescription;
- (VTKFileStoreManagerResult)initWithURL:(id)l;
@end

@implementation VTKFileStoreManagerResult

- (VTKFileStoreManagerResult)initWithURL:(id)l
{
  lCopy = l;
  v9.receiver = self;
  v9.super_class = VTKFileStoreManagerResult;
  v6 = [(VTKFileStoreManagerResult *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_rootFolderItemsURL, l);
  }

  return v7;
}

- (NSString)saveDescription
{
  rootFolderItemsURL = [(VTKFileStoreManagerResult *)self rootFolderItemsURL];
  absoluteString = [rootFolderItemsURL absoluteString];
  v4 = [NSString stringWithFormat:@"Images save at:%@", absoluteString];

  return v4;
}

@end