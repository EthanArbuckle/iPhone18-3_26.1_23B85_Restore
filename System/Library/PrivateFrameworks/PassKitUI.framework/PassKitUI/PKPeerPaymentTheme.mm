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
  primaryTextColor = [self primaryTextColor];
  v3 = [primaryTextColor colorWithAlphaComponent:0.5];

  return v3;
}

+ (id)secondaryButtonTextPressedColor
{
  secondaryButtonTextColor = [self secondaryButtonTextColor];
  v3 = [secondaryButtonTextColor colorWithAlphaComponent:0.3];

  return v3;
}

+ (id)disabledTextColor
{
  primaryTextColor = [self primaryTextColor];
  v3 = [primaryTextColor colorWithAlphaComponent:0.3];

  return v3;
}

+ (id)platterPressedColor
{
  platterColor = [self platterColor];
  v3 = [platterColor colorWithAlphaComponent:0.8];

  return v3;
}

+ (id)separatorColor
{
  primaryTextColor = [self primaryTextColor];
  v3 = [primaryTextColor colorWithAlphaComponent:0.07];

  return v3;
}

@end