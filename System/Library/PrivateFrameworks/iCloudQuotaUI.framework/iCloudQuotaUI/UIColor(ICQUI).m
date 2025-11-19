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
  v3 = [a3 lowercaseString];
  if ([v3 isEqualToString:@"red"])
  {
    v4 = [MEMORY[0x277D75348] redColor];
    goto LABEL_42;
  }

  if ([v3 isEqualToString:@"orange"])
  {
    v4 = [MEMORY[0x277D75348] orangeColor];
    goto LABEL_42;
  }

  if ([v3 isEqualToString:@"yellow"])
  {
    v4 = [MEMORY[0x277D75348] yellowColor];
    goto LABEL_42;
  }

  if ([v3 isEqualToString:@"green"])
  {
    v4 = [MEMORY[0x277D75348] greenColor];
    goto LABEL_42;
  }

  if ([v3 isEqualToString:@"mint"])
  {
    v4 = [MEMORY[0x277D75348] systemMintColor];
    goto LABEL_42;
  }

  if ([v3 isEqualToString:@"teal"])
  {
    v4 = [MEMORY[0x277D75348] systemTealColor];
    goto LABEL_42;
  }

  if ([v3 isEqualToString:@"cyan"])
  {
    v4 = [MEMORY[0x277D75348] cyanColor];
    goto LABEL_42;
  }

  if ([v3 isEqualToString:@"blue"])
  {
    v4 = [MEMORY[0x277D75348] blueColor];
    goto LABEL_42;
  }

  if ([v3 isEqualToString:@"indigo"])
  {
    v4 = [MEMORY[0x277D75348] systemIndigoColor];
    goto LABEL_42;
  }

  if ([v3 isEqualToString:@"purple"])
  {
    v4 = [MEMORY[0x277D75348] purpleColor];
    goto LABEL_42;
  }

  if ([v3 isEqualToString:@"pink"])
  {
    v4 = [MEMORY[0x277D75348] systemPinkColor];
    goto LABEL_42;
  }

  if ([v3 isEqualToString:@"brown"])
  {
    v4 = [MEMORY[0x277D75348] brownColor];
    goto LABEL_42;
  }

  if ([v3 isEqualToString:@"white"])
  {
    v5 = MEMORY[0x277D75348];
LABEL_27:
    v4 = [v5 whiteColor];
    goto LABEL_42;
  }

  if ([v3 isEqualToString:@"gray"])
  {
    v4 = [MEMORY[0x277D75348] grayColor];
  }

  else if ([v3 isEqualToString:@"black"])
  {
    v4 = [MEMORY[0x277D75348] blackColor];
  }

  else if ([v3 isEqualToString:@"primary"])
  {
    v4 = [MEMORY[0x277D75348] labelColor];
  }

  else if ([v3 isEqualToString:@"secondary"])
  {
    v4 = [MEMORY[0x277D75348] secondaryLabelColor];
  }

  else if ([v3 isEqualToString:@"tertiary"])
  {
    v4 = [MEMORY[0x277D75348] tertiaryLabelColor];
  }

  else if ([v3 isEqualToString:@"quaternary"])
  {
    v4 = [MEMORY[0x277D75348] quaternaryLabelColor];
  }

  else
  {
    v6 = [v3 isEqualToString:@"accent"];
    v5 = MEMORY[0x277D75348];
    if (!v6)
    {
      goto LABEL_27;
    }

    v4 = [MEMORY[0x277D75348] tintColor];
  }

LABEL_42:
  v7 = v4;

  return v7;
}

@end