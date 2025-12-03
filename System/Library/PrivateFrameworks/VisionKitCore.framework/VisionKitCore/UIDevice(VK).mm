@interface UIDevice(VK)
+ (BOOL)vk_isiPad;
+ (BOOL)vk_isiPhone;
@end

@implementation UIDevice(VK)

+ (BOOL)vk_isiPad
{
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  v1 = [currentDevice userInterfaceIdiom] == 1;

  return v1;
}

+ (BOOL)vk_isiPhone
{
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  v1 = [currentDevice userInterfaceIdiom] == 0;

  return v1;
}

@end