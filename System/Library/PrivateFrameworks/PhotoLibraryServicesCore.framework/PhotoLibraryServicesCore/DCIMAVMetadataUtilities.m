@interface DCIMAVMetadataUtilities
+ (id)metadataItemForTimelapse;
@end

@implementation DCIMAVMetadataUtilities

+ (id)metadataItemForTimelapse
{
  v2 = [MEMORY[0x1E6988050] metadataItem];
  [v2 setKeySpace:*MEMORY[0x1E6987850]];
  [v2 setKey:@"com.apple.photos.captureMode"];
  [v2 setValue:@"Time-lapse"];
  v3 = [v2 copy];

  return v3;
}

@end