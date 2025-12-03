@interface IKImageElement(MPArtworkCatalog)
- (id)artworkCatalog;
@end

@implementation IKImageElement(MPArtworkCatalog)

- (id)artworkCatalog
{
  v2 = +[VideosExtrasRootViewController currentController];
  v3 = objc_alloc(MEMORY[0x1E69704A0]);
  artworkDataSource = [v2 artworkDataSource];
  v5 = [v3 initWithToken:self dataSource:artworkDataSource];

  artworkDataSource2 = [v2 artworkDataSource];
  LODWORD(artworkDataSource) = [artworkDataSource2 areRepresentationsAvailableForCatalog:v5];

  if (artworkDataSource)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end