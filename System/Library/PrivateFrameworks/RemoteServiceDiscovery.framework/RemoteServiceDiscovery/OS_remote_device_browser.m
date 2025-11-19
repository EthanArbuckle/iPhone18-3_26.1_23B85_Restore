@interface OS_remote_device_browser
- (void)dealloc;
@end

@implementation OS_remote_device_browser

- (void)dealloc
{
  if (![(OS_remote_device_browser *)self canceled])
  {
    [OS_remote_device_browser dealloc];
  }

  v3.receiver = self;
  v3.super_class = OS_remote_device_browser;
  [(OS_remote_device_browser *)&v3 dealloc];
}

@end