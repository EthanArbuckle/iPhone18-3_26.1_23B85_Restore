@interface PXFakePhotoKitAssetsFetcher
+ (PXFakePhotoKitAssetsFetcher)defaultFetcher;
+ (void)fillLibraryWithFakeAssets:(id)a3 completion:(id)a4;
- (PXFakePhotoKitAssetsFetcher)init;
- (id)fetchAssetsInContainer:(id)a3 curationKind:(int64_t)a4;
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

- (id)fetchAssetsInContainer:(id)a3 curationKind:(int64_t)a4
{
  v6 = a3;
  v7 = self;
  v8 = sub_1A47892B8(v6, a4);

  return v8;
}

+ (void)fillLibraryWithFakeAssets:(id)a3 completion:(id)a4
{
  v5 = _Block_copy(a4);
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
  v7 = a3;
  sub_1A4788530(v7, v5, v6);
  sub_1A3C784D4(v5, v6);
}

- (PXFakePhotoKitAssetsFetcher)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(PXFakePhotoKitAssetsFetcher *)&v3 init];
}

@end