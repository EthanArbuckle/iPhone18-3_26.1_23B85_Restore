@interface UIFont(WeatherUI)
- (double)wu_exuberatedLineHeightAmount;
- (double)wu_lineHeightNotIncludingExuberatedAmount;
@end

@implementation UIFont(WeatherUI)

- (double)wu_exuberatedLineHeightAmount
{
  [self lineHeight];
  v2 = v1;
  CTFontGetExuberatedLineHeightForLineHeight();
  return v3 - v2;
}

- (double)wu_lineHeightNotIncludingExuberatedAmount
{
  [self lineHeight];
  v3 = v2;
  [self wu_exuberatedLineHeightAmount];
  return v3 - v4;
}

@end