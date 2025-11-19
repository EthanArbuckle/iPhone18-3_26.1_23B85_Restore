@interface VUIJSDevice
+ (id)getMobileGestaltString:(__CFString *)a3;
- (NSString)productType;
- (VUIJSDevice)initWithAppContext:(id)a3;
- (void)dealloc;
@end

@implementation VUIJSDevice

- (VUIJSDevice)initWithAppContext:(id)a3
{
  v4.receiver = self;
  v4.super_class = VUIJSDevice;
  return [(VUIJSObject *)&v4 initWithAppContext:a3];
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self->_networkPropertiesChangedToken];

  v4.receiver = self;
  v4.super_class = VUIJSDevice;
  [(VUIJSDevice *)&v4 dealloc];
}

- (NSString)productType
{
  v2 = objc_opt_class();

  return [v2 getMobileGestaltString:@"ProductType"];
}

+ (id)getMobileGestaltString:(__CFString *)a3
{
  v3 = MGCopyAnswer();
  if (v3)
  {
    v4 = v3;
    v5 = CFGetTypeID(v3);
    if (v5 == CFStringGetTypeID())
    {
      v6 = [MEMORY[0x1E696AEC0] stringWithString:v4];
    }

    else
    {
      v6 = 0;
    }

    CFRelease(v4);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end