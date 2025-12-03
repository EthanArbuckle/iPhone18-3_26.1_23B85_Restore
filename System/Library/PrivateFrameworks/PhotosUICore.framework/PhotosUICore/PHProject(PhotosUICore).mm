@interface PHProject(PhotosUICore)
- (id)px_rootCollectionList;
@end

@implementation PHProject(PhotosUICore)

- (id)px_rootCollectionList
{
  photoLibrary = [self photoLibrary];
  px_virtualCollections = [photoLibrary px_virtualCollections];
  rootProjectCollectionList = [px_virtualCollections rootProjectCollectionList];

  return rootProjectCollectionList;
}

@end