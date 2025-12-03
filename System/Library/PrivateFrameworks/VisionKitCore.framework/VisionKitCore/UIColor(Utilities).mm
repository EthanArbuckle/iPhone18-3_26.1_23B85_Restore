@interface UIColor(Utilities)
+ (uint64_t)vk_randomColor;
- (id)vk_colorWithMaxSaturation;
- (id)vk_resolvedColorWithAppearance:()Utilities;
- (uint64_t)vk_resolvedColor;
@end

@implementation UIColor(Utilities)

+ (uint64_t)vk_randomColor
{
  v0 = arc4random_uniform(0xFFu) / 255.0;
  v1 = arc4random_uniform(0xFFu) / 255.0;
  v2 = arc4random_uniform(0xFFu) / 255.0;
  v3 = MEMORY[0x1E69DC888];

  return [v3 colorWithRed:v0 green:v1 blue:v2 alpha:1.0];
}

- (id)vk_colorWithMaxSaturation
{
  v6 = 0.0;
  v4 = 0.0;
  v5 = 0;
  v3 = 0.0;
  [self getHue:&v6 saturation:&v5 brightness:&v4 alpha:&v3];
  v1 = [MEMORY[0x1E69DC888] colorWithHue:v6 saturation:1.0 brightness:v4 alpha:v3];

  return v1;
}

- (uint64_t)vk_resolvedColor
{
  v1 = MEMORY[0x1E69DC888];
  cGColor = [self CGColor];

  return [v1 colorWithCGColor:cGColor];
}

- (id)vk_resolvedColorWithAppearance:()Utilities
{
  if (a3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  v5 = [MEMORY[0x1E69DD1B8] traitCollectionWithUserInterfaceStyle:v4];
  v6 = [self resolvedColorWithTraitCollection:v5];

  return v6;
}

@end