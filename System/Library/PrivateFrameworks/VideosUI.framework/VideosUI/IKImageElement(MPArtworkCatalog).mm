@interface IKImageElement(MPArtworkCatalog)
- (id)artworkCatalog;
@end

@implementation IKImageElement(MPArtworkCatalog)

- (id)artworkCatalog
{
  v2 = +[VideosExtrasRootViewController currentController];
  v3 = objc_alloc(MEMORY[0x1E69704A0]);
  v4 = [v2 artworkDataSource];
  v5 = [v3 initWithToken:a1 dataSource:v4];

  v6 = [v2 artworkDataSource];
  LODWORD(v4) = [v6 areRepresentationsAvailableForCatalog:v5];

  if (v4)
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