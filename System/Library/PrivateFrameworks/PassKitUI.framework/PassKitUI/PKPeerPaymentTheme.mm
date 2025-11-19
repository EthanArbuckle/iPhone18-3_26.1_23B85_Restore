@interface PKPeerPaymentTheme
+ (id)disabledTextColor;
+ (id)platterPressedColor;
+ (id)secondaryButtonTextPressedColor;
+ (id)secondaryTextColor;
+ (id)separatorColor;
@end

@implementation PKPeerPaymentTheme

+ (id)secondaryTextColor
{
  v2 = [a1 primaryTextColor];
  v3 = [v2 colorWithAlphaComponent:0.5];

  return v3;
}

+ (id)secondaryButtonTextPressedColor
{
  v2 = [a1 secondaryButtonTextColor];
  v3 = [v2 colorWithAlphaComponent:0.3];

  return v3;
}

+ (id)disabledTextColor
{
  v2 = [a1 primaryTextColor];
  v3 = [v2 colorWithAlphaComponent:0.3];

  return v3;
}

+ (id)platterPressedColor
{
  v2 = [a1 platterColor];
  v3 = [v2 colorWithAlphaComponent:0.8];

  return v3;
}

+ (id)separatorColor
{
  v2 = [a1 primaryTextColor];
  v3 = [v2 colorWithAlphaComponent:0.07];

  return v3;
}

@end