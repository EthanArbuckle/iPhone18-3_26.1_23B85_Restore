@interface UIColor(ICQUI)
+ (id)colorFromString:()ICQUI;
+ (id)icqui_colorWithHexString:()ICQUI;
@end

@implementation UIColor(ICQUI)

+ (id)icqui_colorWithHexString:()ICQUI
{
  v3 = 0;
  v0 = [MEMORY[0x277CCAC80] scannerWithString:?];
  [v0 scanHexInt:&v3];

  v1 = [MEMORY[0x277D75348] colorWithRed:(BYTE2(v3) / 255.0) green:(BYTE1(v3) / 255.0) blue:(v3 / 255.0) alpha:1.0];

  return v1;
}

+ (id)colorFromString:()ICQUI
{
  lowercaseString = [a3 lowercaseString];
  if ([lowercaseString isEqualToString:@"red"])
  {
    redColor = [MEMORY[0x277D75348] redColor];
    goto LABEL_42;
  }

  if ([lowercaseString isEqualToString:@"orange"])
  {
    redColor = [MEMORY[0x277D75348] orangeColor];
    goto LABEL_42;
  }

  if ([lowercaseString isEqualToString:@"yellow"])
  {
    redColor = [MEMORY[0x277D75348] yellowColor];
    goto LABEL_42;
  }

  if ([lowercaseString isEqualToString:@"green"])
  {
    redColor = [MEMORY[0x277D75348] greenColor];
    goto LABEL_42;
  }

  if ([lowercaseString isEqualToString:@"mint"])
  {
    redColor = [MEMORY[0x277D75348] systemMintColor];
    goto LABEL_42;
  }

  if ([lowercaseString isEqualToString:@"teal"])
  {
    redColor = [MEMORY[0x277D75348] systemTealColor];
    goto LABEL_42;
  }

  if ([lowercaseString isEqualToString:@"cyan"])
  {
    redColor = [MEMORY[0x277D75348] cyanColor];
    goto LABEL_42;
  }

  if ([lowercaseString isEqualToString:@"blue"])
  {
    redColor = [MEMORY[0x277D75348] blueColor];
    goto LABEL_42;
  }

  if ([lowercaseString isEqualToString:@"indigo"])
  {
    redColor = [MEMORY[0x277D75348] systemIndigoColor];
    goto LABEL_42;
  }

  if ([lowercaseString isEqualToString:@"purple"])
  {
    redColor = [MEMORY[0x277D75348] purpleColor];
    goto LABEL_42;
  }

  if ([lowercaseString isEqualToString:@"pink"])
  {
    redColor = [MEMORY[0x277D75348] systemPinkColor];
    goto LABEL_42;
  }

  if ([lowercaseString isEqualToString:@"brown"])
  {
    redColor = [MEMORY[0x277D75348] brownColor];
    goto LABEL_42;
  }

  if ([lowercaseString isEqualToString:@"white"])
  {
    v5 = MEMORY[0x277D75348];
LABEL_27:
    redColor = [v5 whiteColor];
    goto LABEL_42;
  }

  if ([lowercaseString isEqualToString:@"gray"])
  {
    redColor = [MEMORY[0x277D75348] grayColor];
  }

  else if ([lowercaseString isEqualToString:@"black"])
  {
    redColor = [MEMORY[0x277D75348] blackColor];
  }

  else if ([lowercaseString isEqualToString:@"primary"])
  {
    redColor = [MEMORY[0x277D75348] labelColor];
  }

  else if ([lowercaseString isEqualToString:@"secondary"])
  {
    redColor = [MEMORY[0x277D75348] secondaryLabelColor];
  }

  else if ([lowercaseString isEqualToString:@"tertiary"])
  {
    redColor = [MEMORY[0x277D75348] tertiaryLabelColor];
  }

  else if ([lowercaseString isEqualToString:@"quaternary"])
  {
    redColor = [MEMORY[0x277D75348] quaternaryLabelColor];
  }

  else
  {
    v6 = [lowercaseString isEqualToString:@"accent"];
    v5 = MEMORY[0x277D75348];
    if (!v6)
    {
      goto LABEL_27;
    }

    redColor = [MEMORY[0x277D75348] tintColor];
  }

LABEL_42:
  v7 = redColor;

  return v7;
}

@end