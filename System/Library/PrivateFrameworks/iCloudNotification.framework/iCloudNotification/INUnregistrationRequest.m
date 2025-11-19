@interface INUnregistrationRequest
- (id)urlString;
@end

@implementation INUnregistrationRequest

- (id)urlString
{
  v2 = +[AAURLConfiguration urlConfiguration];
  v3 = [v2 unregisterDeviceURL];

  return v3;
}

@end