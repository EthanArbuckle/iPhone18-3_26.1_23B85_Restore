@interface WKUIConfigurationPreviewGenerator
+ (id)uiImageRepresentationForBlastDoorDataSource:(id)source scale:(double)scale;
+ (id)uiImageRepresentationForWorkoutFileData:(id)data;
@end

@implementation WKUIConfigurationPreviewGenerator

+ (id)uiImageRepresentationForWorkoutFileData:(id)data
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, data);
  v4 = [NLWorkoutConfigurationImageGenerator createImageFromData:location[0]];
  objc_storeStrong(location, 0);

  return v4;
}

+ (id)uiImageRepresentationForBlastDoorDataSource:(id)source scale:(double)scale
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, source);
  v6 = [NLWorkoutConfigurationImageGenerator createImageFromBlastDoorDataSource:location[0] scale:scale];
  objc_storeStrong(location, 0);

  return v6;
}

@end