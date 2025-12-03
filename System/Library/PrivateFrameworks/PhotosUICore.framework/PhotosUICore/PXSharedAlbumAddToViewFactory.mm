@interface PXSharedAlbumAddToViewFactory
+ (id)contentHostedViewControllerWithSharedAlbum:(id)album assets:(id)assets doneCallback:(id)callback;
+ (id)contentHostedViewControllerWithSharedAlbum:(id)album mediaSources:(id)sources collectionShareAssetSources:(id)assetSources doneCallback:(id)callback;
- (_TtC12PhotosUICore29PXSharedAlbumAddToViewFactory)init;
@end

@implementation PXSharedAlbumAddToViewFactory

+ (id)contentHostedViewControllerWithSharedAlbum:(id)album assets:(id)assets doneCallback:(id)callback
{
  v6 = _Block_copy(callback);
  sub_1A3C52C70(0, &qword_1EB126660);
  v7 = sub_1A524CA34();
  if (v6)
  {
    *(swift_allocObject() + 16) = v6;
    v6 = sub_1A3FABAE4;
  }

  sub_1A44C1EF8(album, v7, v6);
}

+ (id)contentHostedViewControllerWithSharedAlbum:(id)album mediaSources:(id)sources collectionShareAssetSources:(id)assetSources doneCallback:(id)callback
{
  v9 = _Block_copy(callback);
  if (sources)
  {
    sub_1A3C52C70(0, &qword_1EB12B540);
    sources = sub_1A524CA34();
  }

  if (assetSources)
  {
    sub_1A3C52C70(0, &qword_1EB12B610);
    assetSources = sub_1A524CA34();
  }

  if (v9)
  {
    v10 = swift_allocObject();
    *(v10 + 16) = v9;
    v9 = sub_1A3D7A9AC;
  }

  else
  {
    v10 = 0;
  }

  sub_1A44C2544(album, sources, assetSources, v9, v10);
}

- (_TtC12PhotosUICore29PXSharedAlbumAddToViewFactory)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for PXSharedAlbumAddToViewFactory();
  return [(PXSharedAlbumAddToViewFactory *)&v3 init];
}

@end