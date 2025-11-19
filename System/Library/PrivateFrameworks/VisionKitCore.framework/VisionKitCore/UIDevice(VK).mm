@interface UIDevice(VK)
+ (BOOL)vk_isiPad;
+ (BOOL)vk_isiPhone;
@end

@implementation UIDevice(VK)

+ (BOOL)vk_isiPad
{
  v0 = [MEMORY[0x1E69DC938] currentDevice];
  v1 = [v0 userInterfaceIdiom] == 1;

  return v1;
}

+ (BOOL)vk_isiPhone
{
  v0 = [MEMORY[0x1E69DC938] currentDevice];
  v1 = [v0 userInterfaceIdiom] == 0;

  return v1;
}

@end