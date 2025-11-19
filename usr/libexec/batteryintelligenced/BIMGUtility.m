@interface BIMGUtility
+ (BOOL)isiPhone;
@end

@implementation BIMGUtility

+ (BOOL)isiPhone
{
  v2 = MGGetStringAnswer();
  v3 = [v2 isEqualToString:@"iPhone"];

  return v3;
}

@end