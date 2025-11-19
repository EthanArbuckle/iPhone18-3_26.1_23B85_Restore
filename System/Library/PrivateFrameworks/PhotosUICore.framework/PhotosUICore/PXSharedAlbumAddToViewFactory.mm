@interface PXSharedAlbumAddToViewFactory
+ (id)contentHostedViewControllerWithSharedAlbum:(id)a3 assets:(id)a4 doneCallback:(id)a5;
+ (id)contentHostedViewControllerWithSharedAlbum:(id)a3 mediaSources:(id)a4 collectionShareAssetSources:(id)a5 doneCallback:(id)a6;
- (_TtC12PhotosUICore29PXSharedAlbumAddToViewFactory)init;
@end

@implementation PXSharedAlbumAddToViewFactory

+ (id)contentHostedViewControllerWithSharedAlbum:(id)a3 assets:(id)a4 doneCallback:(id)a5
{
  v6 = _Block_copy(a5);
  sub_1A3C52C70(0, &qword_1EB126660);
  v7 = sub_1A524CA34();
  if (v6)
  {
    *(swift_allocObject() + 16) = v6;
    v6 = sub_1A3FABAE4;
  }

  sub_1A44C1EF8(a3, v7, v6);
}

+ (id)contentHostedViewControllerWithSharedAlbum:(id)a3 mediaSources:(id)a4 collectionShareAssetSources:(id)a5 doneCallback:(id)a6
{
  v9 = _Block_copy(a6);
  if (a4)
  {
    sub_1A3C52C70(0, &qword_1EB12B540);
    a4 = sub_1A524CA34();
  }

  if (a5)
  {
    sub_1A3C52C70(0, &qword_1EB12B610);
    a5 = sub_1A524CA34();
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

  sub_1A44C2544(a3, a4, a5, v9, v10);
}

- (_TtC12PhotosUICore29PXSharedAlbumAddToViewFactory)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for PXSharedAlbumAddToViewFactory();
  return [(PXSharedAlbumAddToViewFactory *)&v3 init];
}

@end