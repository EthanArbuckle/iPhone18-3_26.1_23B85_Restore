@interface PHProject(PhotosUICore)
- (id)px_rootCollectionList;
@end

@implementation PHProject(PhotosUICore)

- (id)px_rootCollectionList
{
  v1 = [a1 photoLibrary];
  v2 = [v1 px_virtualCollections];
  v3 = [v2 rootProjectCollectionList];

  return v3;
}

@end