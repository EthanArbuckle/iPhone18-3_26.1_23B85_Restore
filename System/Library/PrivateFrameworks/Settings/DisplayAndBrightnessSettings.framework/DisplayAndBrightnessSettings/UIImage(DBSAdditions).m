@interface UIImage(DBSAdditions)
+ (id)dbs_maxSliderImage;
+ (id)dbs_minSliderImage;
@end

@implementation UIImage(DBSAdditions)

+ (id)dbs_minSliderImage
{
  v0 = MEMORY[0x277D755D0];
  v1 = [MEMORY[0x277D74300] systemFontOfSize:22.0];
  v2 = [v0 configurationWithFont:v1 scale:2];

  v3 = [MEMORY[0x277D755B8] systemImageNamed:@"sun.min.fill" withConfiguration:v2];
  v4 = [MEMORY[0x277D75348] colorWithRed:0.560000002 green:0.560000002 blue:0.579999983 alpha:1.0];
  v5 = [v3 imageWithTintColor:v4 renderingMode:1];

  return v5;
}

+ (id)dbs_maxSliderImage
{
  v0 = MEMORY[0x277D755D0];
  v1 = [MEMORY[0x277D74300] systemFontOfSize:22.0];
  v2 = [v0 configurationWithFont:v1 scale:2];

  v3 = [MEMORY[0x277D755B8] systemImageNamed:@"sun.max.fill" withConfiguration:v2];
  v4 = [MEMORY[0x277D75348] colorWithRed:0.560000002 green:0.560000002 blue:0.579999983 alpha:1.0];
  v5 = [v3 imageWithTintColor:v4 renderingMode:1];

  return v5;
}

@end