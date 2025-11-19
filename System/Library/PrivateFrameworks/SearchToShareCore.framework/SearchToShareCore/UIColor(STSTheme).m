@interface UIColor(STSTheme)
+ (id)sts_colorFromHexString:()STSTheme alpha:;
@end

@implementation UIColor(STSTheme)

+ (id)sts_colorFromHexString:()STSTheme alpha:
{
  if (a4)
  {
    v5 = [MEMORY[0x277CCAC80] scannerWithString:?];
    v8 = 0;
    if ([v5 scanHexInt:&v8])
    {
      v6 = [MEMORY[0x277D75348] colorWithRed:BYTE2(v8) / 255.0 green:BYTE1(v8) / 255.0 blue:v8 / 255.0 alpha:a1];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end