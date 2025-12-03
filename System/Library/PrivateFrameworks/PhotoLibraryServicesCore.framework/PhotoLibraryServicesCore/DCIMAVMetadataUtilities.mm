@interface DCIMAVMetadataUtilities
+ (id)metadataItemForTimelapse;
@end

@implementation DCIMAVMetadataUtilities

+ (id)metadataItemForTimelapse
{
  metadataItem = [MEMORY[0x1E6988050] metadataItem];
  [metadataItem setKeySpace:*MEMORY[0x1E6987850]];
  [metadataItem setKey:@"com.apple.photos.captureMode"];
  [metadataItem setValue:@"Time-lapse"];
  v3 = [metadataItem copy];

  return v3;
}

@end