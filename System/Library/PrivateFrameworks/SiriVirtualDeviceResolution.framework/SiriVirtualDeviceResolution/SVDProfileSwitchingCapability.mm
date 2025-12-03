@interface SVDProfileSwitchingCapability
+ (id)capabilityDescriptionMatchingSupportStatus:(int64_t)status;
- (SVDProfileSwitchingCapability)initWithCoder:(id)coder;
- (SVDProfileSwitchingCapability)initWithStatus:(int64_t)status;
@end

@implementation SVDProfileSwitchingCapability

- (SVDProfileSwitchingCapability)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = SVDProfileSwitchingCapability;
  v5 = [(SVDProfileSwitchingCapability *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SVDProfileSwitchingCapabilityBacking"];
    backing = v5->_backing;
    v5->_backing = v6;
  }

  return v5;
}

- (SVDProfileSwitchingCapability)initWithStatus:(int64_t)status
{
  v8.receiver = self;
  v8.super_class = SVDProfileSwitchingCapability;
  v4 = [(SVDProfileSwitchingCapability *)&v8 init];
  if (v4)
  {
    v5 = [[_TtC27SiriVirtualDeviceResolution26ProfileSwitchingCapability alloc] initWithStatus:status];
    backing = v4->_backing;
    v4->_backing = v5;
  }

  return v4;
}

+ (id)capabilityDescriptionMatchingSupportStatus:(int64_t)status
{
  v3 = [_TtC27SiriVirtualDeviceResolution26ProfileSwitchingCapability capabilityDescriptionMatchingSupportStatus:status];
  v4 = [[SVDCapabilityDescription alloc] initWithBacking:v3];

  return v4;
}

@end