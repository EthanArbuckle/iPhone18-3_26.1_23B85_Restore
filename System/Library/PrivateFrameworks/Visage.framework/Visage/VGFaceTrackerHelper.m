@interface VGFaceTrackerHelper
+ (NSArray)blendshapeNames;
+ (NSDictionary)blendshapeNamesToIdx;
@end

@implementation VGFaceTrackerHelper

+ (NSArray)blendshapeNames
{
  if (blendshapesInitialization(void)::onceToken != -1)
  {
    +[VGFaceTrackerHelper blendshapeNames];
  }

  v3 = _blendshapeNames;

  return v3;
}

+ (NSDictionary)blendshapeNamesToIdx
{
  if (blendshapesInitialization(void)::onceToken != -1)
  {
    +[VGFaceTrackerHelper blendshapeNames];
  }

  v3 = _blendshapeNameToIdx;

  return v3;
}

@end