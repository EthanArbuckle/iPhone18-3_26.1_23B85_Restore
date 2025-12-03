@interface PUOneUpActivitySharingActionPerformer
- (BOOL)performActionWithActivityType:(id)type assetsByAssetCollection:(id)collection;
@end

@implementation PUOneUpActivitySharingActionPerformer

- (BOOL)performActionWithActivityType:(id)type assetsByAssetCollection:(id)collection
{
  v5 = sub_1B3C9C5E8();
  v7 = v6;
  sub_1B37FFE2C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8540F0);
  sub_1B37FFE70();
  v8 = sub_1B3C9C4C8();
  selfCopy = self;
  v10._countAndFlagsBits = v5;
  v10._object = v7;
  LOBYTE(v5) = OneUpActivitySharingActionPerformer.performAction(forActivityType:assetsByAssetCollection:)(v10, v8);

  return v5 & 1;
}

@end