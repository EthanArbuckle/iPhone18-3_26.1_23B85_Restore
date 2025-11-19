@interface PXConcatenatingAssetsDataSource
- (PXAssetReference)startingAssetReference;
- (PXConcatenatingAssetsDataSource)init;
- (PXSimpleIndexPath)indexPathForAssetReference:(SEL)a3;
- (id)assetReferenceForAssetReference:(id)a3;
- (int64_t)numberOfItemsInSection:(int64_t)a3;
- (int64_t)numberOfSections;
@end

@implementation PXConcatenatingAssetsDataSource

- (int64_t)numberOfSections
{
  v2 = self;
  v3 = sub_1A4008420();

  return v3;
}

- (int64_t)numberOfItemsInSection:(int64_t)a3
{
  v4 = self;
  v5 = sub_1A40072A4(a3);

  return v5;
}

- (PXAssetReference)startingAssetReference
{
  v2 = self;
  v3 = sub_1A4007564();

  return v3;
}

- (PXSimpleIndexPath)indexPathForAssetReference:(SEL)a3
{
  v5 = a4;
  v6 = self;
  sub_1A4007698();
}

- (id)assetReferenceForAssetReference:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_1A4007BD8(v4);

  return v6;
}

- (PXConcatenatingAssetsDataSource)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end