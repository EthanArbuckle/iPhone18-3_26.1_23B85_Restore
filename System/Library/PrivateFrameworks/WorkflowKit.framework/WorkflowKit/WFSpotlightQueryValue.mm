@interface WFSpotlightQueryValue
+ (id)string:(id)string operator:(int64_t)operator;
@end

@implementation WFSpotlightQueryValue

+ (id)string:(id)string operator:(int64_t)operator
{
  v5 = sub_1CA94C3A8();
  v7 = sub_1CA440598(v5, v6, operator);

  return v7;
}

@end