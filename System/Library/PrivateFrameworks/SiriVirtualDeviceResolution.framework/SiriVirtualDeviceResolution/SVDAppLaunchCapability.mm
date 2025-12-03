@interface SVDAppLaunchCapability
+ (id)capabilityDescriptionMatchingSupportStatus:(int64_t)status;
- (SVDAppLaunchCapability)initWithCoder:(id)coder;
- (SVDAppLaunchCapability)initWithStatus:(int64_t)status;
@end

@implementation SVDAppLaunchCapability

- (SVDAppLaunchCapability)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = SVDAppLaunchCapability;
  v5 = [(SVDAppLaunchCapability *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SVDAppLaunchCapabilityBacking"];
    backing = v5->_backing;
    v5->_backing = v6;
  }

  return v5;
}

- (SVDAppLaunchCapability)initWithStatus:(int64_t)status
{
  v8.receiver = self;
  v8.super_class = SVDAppLaunchCapability;
  v4 = [(SVDAppLaunchCapability *)&v8 init];
  if (v4)
  {
    v5 = [[_TtC27SiriVirtualDeviceResolution19AppLaunchCapability alloc] initWithStatus:status];
    backing = v4->_backing;
    v4->_backing = v5;
  }

  return v4;
}

+ (id)capabilityDescriptionMatchingSupportStatus:(int64_t)status
{
  v3 = [_TtC27SiriVirtualDeviceResolution19AppLaunchCapability capabilityDescriptionMatchingSupportStatus:status];
  v4 = [[SVDCapabilityDescription alloc] initWithBacking:v3];

  return v4;
}

@end