@interface SVDMUXCapability
+ (id)capabilityDescriptionMatchingSupportStatus:(int64_t)status;
- (SVDMUXCapability)initWithCoder:(id)coder;
- (SVDMUXCapability)initWithStatus:(int64_t)status;
@end

@implementation SVDMUXCapability

- (SVDMUXCapability)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = SVDMUXCapability;
  v5 = [(SVDMUXCapability *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SVDMUXCapabilityBacking"];
    backing = v5->_backing;
    v5->_backing = v6;
  }

  return v5;
}

- (SVDMUXCapability)initWithStatus:(int64_t)status
{
  v8.receiver = self;
  v8.super_class = SVDMUXCapability;
  v4 = [(SVDMUXCapability *)&v8 init];
  if (v4)
  {
    v5 = [[_TtC27SiriVirtualDeviceResolution13MUXCapability alloc] initWithStatus:status];
    backing = v4->_backing;
    v4->_backing = v5;
  }

  return v4;
}

+ (id)capabilityDescriptionMatchingSupportStatus:(int64_t)status
{
  v3 = [_TtC27SiriVirtualDeviceResolution13MUXCapability capabilityDescriptionMatchingSupportStatus:status];
  v4 = [[SVDCapabilityDescription alloc] initWithBacking:v3];

  return v4;
}

@end