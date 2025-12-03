@interface SFUIDeviceIconProvider
+ (id)deviceImageWithModelIdentifier:(id)identifier;
@end

@implementation SFUIDeviceIconProvider

+ (id)deviceImageWithModelIdentifier:(id)identifier
{
  swift_getObjCClassMetadata();
  MEMORY[0x1E69E5928](identifier);
  sub_1B9ED8AAC();
  swift_getObjCClassMetadata();
  v5 = sub_1B9ED4508();

  MEMORY[0x1E69E5920](identifier);

  return v5;
}

@end