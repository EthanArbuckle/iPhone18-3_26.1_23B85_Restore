@interface PXConcatenatingAssetsDataSource
- (PXAssetReference)startingAssetReference;
- (PXConcatenatingAssetsDataSource)init;
- (PXSimpleIndexPath)indexPathForAssetReference:(SEL)reference;
- (id)assetReferenceForAssetReference:(id)reference;
- (int64_t)numberOfItemsInSection:(int64_t)section;
- (int64_t)numberOfSections;
@end

@implementation PXConcatenatingAssetsDataSource

- (int64_t)numberOfSections
{
  selfCopy = self;
  v3 = sub_1A4008420();

  return v3;
}

- (int64_t)numberOfItemsInSection:(int64_t)section
{
  selfCopy = self;
  v5 = sub_1A40072A4(section);

  return v5;
}

- (PXAssetReference)startingAssetReference
{
  selfCopy = self;
  v3 = sub_1A4007564();

  return v3;
}

- (PXSimpleIndexPath)indexPathForAssetReference:(SEL)reference
{
  v5 = a4;
  selfCopy = self;
  sub_1A4007698();
}

- (id)assetReferenceForAssetReference:(id)reference
{
  referenceCopy = reference;
  selfCopy = self;
  v6 = sub_1A4007BD8(referenceCopy);

  return v6;
}

- (PXConcatenatingAssetsDataSource)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end