@interface INUnregistrationRequest
- (id)urlString;
@end

@implementation INUnregistrationRequest

- (id)urlString
{
  v2 = +[AAURLConfiguration urlConfiguration];
  unregisterDeviceURL = [v2 unregisterDeviceURL];

  return unregisterDeviceURL;
}

@end