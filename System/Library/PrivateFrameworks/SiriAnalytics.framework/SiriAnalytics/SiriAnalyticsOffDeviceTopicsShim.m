@interface SiriAnalyticsOffDeviceTopicsShim
+ (NSString)unordered;
@end

@implementation SiriAnalyticsOffDeviceTopicsShim

+ (NSString)unordered
{
  static OffDeviceTopicsShim.unordered.getter();
  v2 = sub_1D992B614();

  return v2;
}

@end