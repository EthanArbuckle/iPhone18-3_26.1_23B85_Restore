@interface SFUIDeviceIconProvider
+ (id)deviceImageWithModelIdentifier:(id)a3;
@end

@implementation SFUIDeviceIconProvider

+ (id)deviceImageWithModelIdentifier:(id)a3
{
  swift_getObjCClassMetadata();
  MEMORY[0x1E69E5928](a3);
  sub_1B9ED8AAC();
  swift_getObjCClassMetadata();
  v5 = sub_1B9ED4508();

  MEMORY[0x1E69E5920](a3);

  return v5;
}

@end