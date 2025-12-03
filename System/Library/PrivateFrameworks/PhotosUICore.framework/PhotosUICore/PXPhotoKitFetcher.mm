@interface PXPhotoKitFetcher
+ (id)fetchAssetsWithCurationKind:(int64_t)kind container:(id)container libraryFilter:(int64_t)filter curationContext:(int64_t)context;
- (_TtC12PhotosUICore17PXPhotoKitFetcher)init;
@end

@implementation PXPhotoKitFetcher

+ (id)fetchAssetsWithCurationKind:(int64_t)kind container:(id)container libraryFilter:(int64_t)filter curationContext:(int64_t)context
{
  containerCopy = container;
  v10 = sub_1A414CBD0(kind, containerCopy, filter, context);

  return v10;
}

- (_TtC12PhotosUICore17PXPhotoKitFetcher)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for PXPhotoKitFetcher();
  return [(PXPhotoKitFetcher *)&v3 init];
}

@end