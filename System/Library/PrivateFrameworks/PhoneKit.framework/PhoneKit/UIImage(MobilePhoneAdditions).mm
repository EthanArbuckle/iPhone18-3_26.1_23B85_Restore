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
  v8 = a4;
  v9 = a5;
  if (!v8)
  {
    v8 = [MEMORY[0x277CCA8D8] mainBundle];
  }

  v10 = [MEMORY[0x277D755B8] imageNamed:v7 inBundle:v8 compatibleWithTraitCollection:v9];

  return v10;
}

+ (id)phImageNamed:()MobilePhoneAdditions
{
  v3 = MEMORY[0x277D755B8];
  v4 = MEMORY[0x277D759A0];
  v5 = a3;
  v6 = [v4 mainScreen];
  v7 = [v6 traitCollection];
  v8 = [v3 _phImageNamed:v5 inBundle:0 compatibleWithTraitCollection:v7];

  return v8;
}

+ (id)phCarPlayImageNamed:()MobilePhoneAdditions inBundle:
{
  v5 = MEMORY[0x277D755B8];
  v6 = MEMORY[0x277D759A0];
  v7 = a4;
  v8 = a3;
  v9 = [v6 _carScreen];
  v10 = [v9 traitCollection];
  v11 = [v5 _phImageNamed:v8 inBundle:v7 compatibleWithTraitCollection:v10];

  return v11;
}

+ (id)phPathForImageNamed:()MobilePhoneAdditions
{
  v3 = MEMORY[0x277D755B8];
  v4 = MEMORY[0x277CCA8D8];
  v5 = a3;
  v6 = [v4 mainBundle];
  v7 = [v3 phPathForImageNamed:v5 inBundle:v6];

  return v7;
}

+ (id)phPathForImageNamed:()MobilePhoneAdditions inBundle:
{
  v5 = a3;
  v6 = a4;
  if (!v6)
  {
    v6 = [MEMORY[0x277CCA8D8] mainBundle];
  }

  v7 = [MEMORY[0x277D759A0] mainScreen];
  [v7 scale];
  v9 = v8;

  if (v9 > 1.0)
  {
    v10 = MEMORY[0x277CCACA8];
    v11 = [MEMORY[0x277D759A0] mainScreen];
    [v11 scale];
    v13 = [v10 stringWithFormat:@"@%dx", v12];

    if ([v5 hasSuffix:v13])
    {
    }

    else
    {
      v14 = [v5 stringByAppendingString:v13];
      v15 = [v6 pathForResource:v14 ofType:@"png"];

      if (v15)
      {
        goto LABEL_8;
      }
    }
  }

  v15 = [v6 pathForResource:v5 ofType:@"png"];
LABEL_8:

  return v15;
}

@end