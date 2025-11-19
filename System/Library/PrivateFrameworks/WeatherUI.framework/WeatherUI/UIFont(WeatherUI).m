@interface UIFont(WeatherUI)
- (double)wu_exuberatedLineHeightAmount;
- (double)wu_lineHeightNotIncludingExuberatedAmount;
@end

@implementation UIFont(WeatherUI)

- (double)wu_exuberatedLineHeightAmount
{
  [a1 lineHeight];
  v2 = v1;
  CTFontGetExuberatedLineHeightForLineHeight();
  return v3 - v2;
}

- (double)wu_lineHeightNotIncludingExuberatedAmount
{
  [a1 lineHeight];
  v3 = v2;
  [a1 wu_exuberatedLineHeightAmount];
  return v3 - v4;
}

@end