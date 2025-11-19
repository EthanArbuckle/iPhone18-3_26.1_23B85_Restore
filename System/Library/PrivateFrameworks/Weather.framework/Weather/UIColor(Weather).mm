@interface UIColor(Weather)
+ (id)wa_colorFromHexString:()Weather;
@end

@implementation UIColor(Weather)

+ (id)wa_colorFromHexString:()Weather
{
  v3 = 0;
  v0 = [MEMORY[0x277CCAC80] scannerWithString:?];
  [v0 setScanLocation:1];
  [v0 scanHexInt:&v3];
  v1 = [MEMORY[0x277D75348] colorWithRed:BYTE2(v3) / 255.0 green:BYTE1(v3) / 255.0 blue:v3 / 255.0 alpha:1.0];

  return v1;
}

@end