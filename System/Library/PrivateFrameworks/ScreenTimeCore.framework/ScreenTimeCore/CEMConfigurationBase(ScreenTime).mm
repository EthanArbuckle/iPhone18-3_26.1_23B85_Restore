@interface CEMConfigurationBase(ScreenTime)
- (uint64_t)st_containsBundleIdentifier:()ScreenTime;
- (uint64_t)st_containsCategoryIdentifer:()ScreenTime;
- (uint64_t)st_containsWebDomain:()ScreenTime;
@end

@implementation CEMConfigurationBase(ScreenTime)

- (uint64_t)st_containsBundleIdentifier:()ScreenTime
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[CEMConfigurationBase(ScreenTime) st_containsBundleIdentifier:]"];
  [v0 handleFailureInFunction:v1 file:@"CEMConfigurationBase+ScreenTime.m" lineNumber:13 description:@"cannot directly call on CEMConfigurationBase"];

  return 0;
}

- (uint64_t)st_containsCategoryIdentifer:()ScreenTime
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[CEMConfigurationBase(ScreenTime) st_containsCategoryIdentifer:]"];
  [v0 handleFailureInFunction:v1 file:@"CEMConfigurationBase+ScreenTime.m" lineNumber:18 description:@"cannot directly call on CEMConfigurationBase"];

  return 0;
}

- (uint64_t)st_containsWebDomain:()ScreenTime
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[CEMConfigurationBase(ScreenTime) st_containsWebDomain:]"];
  [v0 handleFailureInFunction:v1 file:@"CEMConfigurationBase+ScreenTime.m" lineNumber:23 description:@"cannot directly call on CEMConfigurationBase"];

  return 0;
}

@end