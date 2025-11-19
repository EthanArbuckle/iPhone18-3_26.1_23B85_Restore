@interface PNUtilityTypeClassifier
+ (BOOL)screenshotInferredInAsset:(id)a3 usingSceneModel:(id)a4;
+ (unint64_t)utilityTypesDetectedInAsset:(id)a3 usingSceneModel:(id)a4;
@end

@implementation PNUtilityTypeClassifier

+ (BOOL)screenshotInferredInAsset:(id)a3 usingSceneModel:(id)a4
{
  swift_getObjCClassMetadata();
  swift_unknownObjectRetain();
  v6 = a4;
  v7 = static PNUtilityTypeClassifier.screenshotInferred(in:usingSceneModel:)(a3, v6);
  swift_unknownObjectRelease();

  return v7 & 1;
}

+ (unint64_t)utilityTypesDetectedInAsset:(id)a3 usingSceneModel:(id)a4
{
  swift_getObjCClassMetadata();
  swift_unknownObjectRetain();
  v6 = a4;
  v7 = static PNUtilityTypeClassifier.utilityTypesDetected(in:usingSceneModel:)(a3, v6);
  swift_unknownObjectRelease();

  return v7;
}

@end