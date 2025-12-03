@interface PNUtilityTypeClassifier
+ (BOOL)screenshotInferredInAsset:(id)asset usingSceneModel:(id)model;
+ (unint64_t)utilityTypesDetectedInAsset:(id)asset usingSceneModel:(id)model;
@end

@implementation PNUtilityTypeClassifier

+ (BOOL)screenshotInferredInAsset:(id)asset usingSceneModel:(id)model
{
  swift_getObjCClassMetadata();
  swift_unknownObjectRetain();
  modelCopy = model;
  v7 = static PNUtilityTypeClassifier.screenshotInferred(in:usingSceneModel:)(asset, modelCopy);
  swift_unknownObjectRelease();

  return v7 & 1;
}

+ (unint64_t)utilityTypesDetectedInAsset:(id)asset usingSceneModel:(id)model
{
  swift_getObjCClassMetadata();
  swift_unknownObjectRetain();
  modelCopy = model;
  v7 = static PNUtilityTypeClassifier.utilityTypesDetected(in:usingSceneModel:)(asset, modelCopy);
  swift_unknownObjectRelease();

  return v7;
}

@end