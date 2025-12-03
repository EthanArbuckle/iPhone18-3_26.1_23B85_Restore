@interface UIColor(SBWallpaper)
+ (id)sb_colorWithRGBHexString:()SBWallpaper;
- (id)sb_RGBHexString;
@end

@implementation UIColor(SBWallpaper)

+ (id)sb_colorWithRGBHexString:()SBWallpaper
{
  v4 = MEMORY[0x277CCAC80];
  v5 = a3;
  v6 = [[v4 alloc] initWithString:v5];

  v7 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"#"];
  [v6 setCharactersToBeSkipped:v7];

  v10 = 0;
  if ([v6 scanHexInt:&v10])
  {
    v8 = [self colorWithRed:BYTE2(v10) / 255.0 green:BYTE1(v10) / 255.0 blue:v10 / 255.0 alpha:1.0];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)sb_RGBHexString
{
  v4 = 0.0;
  v5 = 0.0;
  v3 = 0.0;
  [self getRed:&v5 green:&v4 blue:&v3 alpha:0];
  v1 = [MEMORY[0x277CCACA8] stringWithFormat:@"#%X%X%X", (v5 * 255.0), (v4 * 255.0), (v3 * 255.0)];

  return v1;
}

@end