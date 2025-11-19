@interface WKUIConfigurationPreviewGenerator
+ (id)uiImageRepresentationForBlastDoorDataSource:(id)a3 scale:(double)a4;
+ (id)uiImageRepresentationForWorkoutFileData:(id)a3;
@end

@implementation WKUIConfigurationPreviewGenerator

+ (id)uiImageRepresentationForWorkoutFileData:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v4 = [NLWorkoutConfigurationImageGenerator createImageFromData:location[0]];
  objc_storeStrong(location, 0);

  return v4;
}

+ (id)uiImageRepresentationForBlastDoorDataSource:(id)a3 scale:(double)a4
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v6 = [NLWorkoutConfigurationImageGenerator createImageFromBlastDoorDataSource:location[0] scale:a4];
  objc_storeStrong(location, 0);

  return v6;
}

@end