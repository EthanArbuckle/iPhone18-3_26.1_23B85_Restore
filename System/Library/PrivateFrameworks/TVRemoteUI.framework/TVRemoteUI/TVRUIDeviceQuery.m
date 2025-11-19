@interface TVRUIDeviceQuery
+ (id)deviceQuery;
@end

@implementation TVRUIDeviceQuery

+ (id)deviceQuery
{
  v2 = objc_alloc_init(TVRUICoreDeviceQuery);

  return v2;
}

@end