@interface PXFakePhotoKitAssetsFetcher
+ (PXFakePhotoKitAssetsFetcher)defaultFetcher;
+ (void)fillLibraryWithFakeAssets:(id)assets completion:(id)completion;
- (PXFakePhotoKitAssetsFetcher)init;
- (id)fetchAssetsInContainer:(id)container curationKind:(int64_t)kind;
@end

@implementation PXFakePhotoKitAssetsFetcher

+ (PXFakePhotoKitAssetsFetcher)defaultFetcher
{
  if (qword_1EB1D2A90 != -1)
  {
    swift_once();
  }

  v3 = qword_1EB1EBF70;

  return v3;
}

- (id)fetchAssetsInContainer:(id)container curationKind:(int64_t)kind
{
  containerCopy = container;
  selfCopy = self;
  v8 = sub_1A47892B8(containerCopy, kind);

  return v8;
}

+ (void)fillLibraryWithFakeAssets:(id)assets completion:(id)completion
{
  v5 = _Block_copy(completion);
  if (v5)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    v5 = sub_1A3D7A9AC;
  }

  else
  {
    v6 = 0;
  }

  swift_getObjCClassMetadata();
  assetsCopy = assets;
  sub_1A4788530(assetsCopy, v5, v6);
  sub_1A3C784D4(v5, v6);
}

- (PXFakePhotoKitAssetsFetcher)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(PXFakePhotoKitAssetsFetcher *)&v3 init];
}

@end