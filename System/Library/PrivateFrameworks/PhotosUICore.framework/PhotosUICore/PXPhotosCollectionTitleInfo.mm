@interface PXPhotosCollectionTitleInfo
- (_TtC12PhotosUICore27PXPhotosCollectionTitleInfo)init;
- (_TtC12PhotosUICore27PXPhotosCollectionTitleInfo)initWithAssetCollection:(id)collection;
@end

@implementation PXPhotosCollectionTitleInfo

- (_TtC12PhotosUICore27PXPhotosCollectionTitleInfo)initWithAssetCollection:(id)collection
{
  ObjectType = swift_getObjectType();
  if (collection)
  {
    swift_unknownObjectRetain();
    PXDisplayAssetCollection.photosCollectionTitleInfo.getter(&v9);
    v5 = v9;
    v6 = v10;
  }

  else
  {
    v5 = xmmword_1A5301350;
    v6 = 0uLL;
  }

  v9 = v5;
  v10 = v6;
  v7 = (*(ObjectType + 96))(&v9);
  swift_unknownObjectRelease();
  swift_deallocPartialClassInstance();
  return v7;
}

- (_TtC12PhotosUICore27PXPhotosCollectionTitleInfo)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end