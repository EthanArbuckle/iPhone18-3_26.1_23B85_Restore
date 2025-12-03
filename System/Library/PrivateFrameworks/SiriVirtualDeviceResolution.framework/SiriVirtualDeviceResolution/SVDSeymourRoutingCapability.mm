@interface SVDSeymourRoutingCapability
+ (id)capabilityDescriptionMatchingSupportStatus:(int64_t)status;
- (SVDSeymourRoutingCapability)initWithCoder:(id)coder;
- (SVDSeymourRoutingCapability)initWithStatus:(int64_t)status;
@end

@implementation SVDSeymourRoutingCapability

- (SVDSeymourRoutingCapability)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = SVDSeymourRoutingCapability;
  v5 = [(SVDSeymourRoutingCapability *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SVDSeymourRoutingCapabilityBacking"];
    backing = v5->_backing;
    v5->_backing = v6;
  }

  return v5;
}

- (SVDSeymourRoutingCapability)initWithStatus:(int64_t)status
{
  v8.receiver = self;
  v8.super_class = SVDSeymourRoutingCapability;
  v4 = [(SVDSeymourRoutingCapability *)&v8 init];
  if (v4)
  {
    v5 = [[_TtC27SiriVirtualDeviceResolution24SeymourRoutingCapability alloc] initWithStatus:status];
    backing = v4->_backing;
    v4->_backing = v5;
  }

  return v4;
}

+ (id)capabilityDescriptionMatchingSupportStatus:(int64_t)status
{
  v3 = [_TtC27SiriVirtualDeviceResolution24SeymourRoutingCapability capabilityDescriptionMatchingSupportStatus:status];
  v4 = [[SVDCapabilityDescription alloc] initWithBacking:v3];

  return v4;
}

@end