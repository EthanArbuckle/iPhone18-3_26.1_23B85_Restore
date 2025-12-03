@interface PUVitalityTransformProducer
- (AVAsset)videoAsset;
- (PHAsset)photoKitAsset;
- (PUVitalityTransformProducer)initWithDidChangeHandler:(id)handler;
- (__n128)transform;
- (double)setComputedTransform:(__n128)transform;
- (id)didChangeHandler;
- (void)handleTransform:(float32x4_t)transform limitingAllowed:(float32x4_t)allowed;
- (void)produceVitalityTransform;
- (void)setAssetMetadataTransform:(__n128)transform;
- (void)setHasProducedAssetMetadataTransform:(BOOL)transform;
- (void)setPhotoKitAsset:(id)asset;
- (void)setVideoAsset:(id)asset;
- (void)updateAssetMetadataTransform;
@end

@implementation PUVitalityTransformProducer

- (PUVitalityTransformProducer)initWithDidChangeHandler:(id)handler
{
  v3 = _Block_copy(handler);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  return sub_1B37FFEC8(sub_1B37568D0, v4);
}

- (PHAsset)photoKitAsset
{
  v2 = sub_1B3800018();

  return v2;
}

- (void)setPhotoKitAsset:(id)asset
{
  assetCopy = asset;
  selfCopy = self;
  sub_1B3800264(asset, &OBJC_IVAR___PUVitalityTransformProducer_photoKitAsset, sub_1B38000C0);
}

- (AVAsset)videoAsset
{
  v2 = sub_1B38001BC();

  return v2;
}

- (void)setVideoAsset:(id)asset
{
  assetCopy = asset;
  selfCopy = self;
  sub_1B3800264(asset, &OBJC_IVAR___PUVitalityTransformProducer_videoAsset, sub_1B38002D0);
}

- (__n128)transform
{
  selfCopy = self;
  sub_1B3800350(&v4);
  v3 = v4;

  return v3;
}

- (id)didChangeHandler
{
  v5[4] = sub_1B3800494();
  v5[5] = v2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 1107296256;
  v5[2] = sub_1B370C014;
  v5[3] = &block_descriptor_23;
  v3 = _Block_copy(v5);

  return v3;
}

- (void)setAssetMetadataTransform:(__n128)transform
{
  v5[0] = a2;
  v5[1] = transform;
  v5[2] = a4;
  selfCopy = self;
  sub_1B3800560(v5);
}

- (void)setHasProducedAssetMetadataTransform:(BOOL)transform
{
  transformCopy = transform;
  selfCopy = self;
  sub_1B380061C(transformCopy);
}

- (void)produceVitalityTransform
{
  selfCopy = self;
  sub_1B3800650();
}

- (void)handleTransform:(float32x4_t)transform limitingAllowed:(float32x4_t)allowed
{
  v8[0] = a2;
  v8[1] = transform;
  v8[2] = allowed;
  selfCopy = self;
  sub_1B3800BCC(v8, a6);
}

- (double)setComputedTransform:(__n128)transform
{
  v4[0] = self;
  v4[1] = a2;
  v4[2] = transform;
  *&result = sub_1B3800DEC(v4).n128_u64[0];
  return result;
}

- (void)updateAssetMetadataTransform
{
  selfCopy = self;
  sub_1B3800E7C();
}

@end