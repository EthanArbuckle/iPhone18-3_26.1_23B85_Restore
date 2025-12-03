@interface UIImage(MobilePhoneAdditions)
+ (id)_phImageNamed:()MobilePhoneAdditions inBundle:compatibleWithTraitCollection:;
+ (id)phCarPlayImageNamed:()MobilePhoneAdditions inBundle:;
+ (id)phImageNamed:()MobilePhoneAdditions;
+ (id)phPathForImageNamed:()MobilePhoneAdditions;
+ (id)phPathForImageNamed:()MobilePhoneAdditions inBundle:;
@end

@implementation UIImage(MobilePhoneAdditions)

+ (id)_phImageNamed:()MobilePhoneAdditions inBundle:compatibleWithTraitCollection:
{
  v7 = a3;
  mainBundle = a4;
  v9 = a5;
  if (!mainBundle)
  {
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  }

  v10 = [MEMORY[0x277D755B8] imageNamed:v7 inBundle:mainBundle compatibleWithTraitCollection:v9];

  return v10;
}

+ (id)phImageNamed:()MobilePhoneAdditions
{
  v3 = MEMORY[0x277D755B8];
  v4 = MEMORY[0x277D759A0];
  v5 = a3;
  mainScreen = [v4 mainScreen];
  traitCollection = [mainScreen traitCollection];
  v8 = [v3 _phImageNamed:v5 inBundle:0 compatibleWithTraitCollection:traitCollection];

  return v8;
}

+ (id)phCarPlayImageNamed:()MobilePhoneAdditions inBundle:
{
  v5 = MEMORY[0x277D755B8];
  v6 = MEMORY[0x277D759A0];
  v7 = a4;
  v8 = a3;
  _carScreen = [v6 _carScreen];
  traitCollection = [_carScreen traitCollection];
  v11 = [v5 _phImageNamed:v8 inBundle:v7 compatibleWithTraitCollection:traitCollection];

  return v11;
}

+ (id)phPathForImageNamed:()MobilePhoneAdditions
{
  v3 = MEMORY[0x277D755B8];
  v4 = MEMORY[0x277CCA8D8];
  v5 = a3;
  mainBundle = [v4 mainBundle];
  v7 = [v3 phPathForImageNamed:v5 inBundle:mainBundle];

  return v7;
}

+ (id)phPathForImageNamed:()MobilePhoneAdditions inBundle:
{
  v5 = a3;
  mainBundle = a4;
  if (!mainBundle)
  {
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  }

  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen scale];
  v9 = v8;

  if (v9 > 1.0)
  {
    v10 = MEMORY[0x277CCACA8];
    mainScreen2 = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen2 scale];
    v13 = [v10 stringWithFormat:@"@%dx", v12];

    if ([v5 hasSuffix:v13])
    {
    }

    else
    {
      v14 = [v5 stringByAppendingString:v13];
      v15 = [mainBundle pathForResource:v14 ofType:@"png"];

      if (v15)
      {
        goto LABEL_8;
      }
    }
  }

  v15 = [mainBundle pathForResource:v5 ofType:@"png"];
LABEL_8:

  return v15;
}

@end