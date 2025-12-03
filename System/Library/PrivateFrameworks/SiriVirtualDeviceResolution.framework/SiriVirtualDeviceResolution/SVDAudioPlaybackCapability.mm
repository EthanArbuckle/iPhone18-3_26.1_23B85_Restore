@interface SVDAudioPlaybackCapability
+ (id)capabilityDescriptionMatchingSupportStatus:(int64_t)status;
- (SVDAudioPlaybackCapability)initWithCoder:(id)coder;
- (SVDAudioPlaybackCapability)initWithStatus:(int64_t)status;
@end

@implementation SVDAudioPlaybackCapability

- (SVDAudioPlaybackCapability)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = SVDAudioPlaybackCapability;
  v5 = [(SVDAudioPlaybackCapability *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SVDAudioPlaybackCapabilityBacking"];
    backing = v5->_backing;
    v5->_backing = v6;
  }

  return v5;
}

- (SVDAudioPlaybackCapability)initWithStatus:(int64_t)status
{
  v8.receiver = self;
  v8.super_class = SVDAudioPlaybackCapability;
  v4 = [(SVDAudioPlaybackCapability *)&v8 init];
  if (v4)
  {
    v5 = [[_TtC27SiriVirtualDeviceResolution23AudioPlaybackCapability alloc] initWithStatus:status];
    backing = v4->_backing;
    v4->_backing = v5;
  }

  return v4;
}

+ (id)capabilityDescriptionMatchingSupportStatus:(int64_t)status
{
  v3 = [_TtC27SiriVirtualDeviceResolution23AudioPlaybackCapability capabilityDescriptionMatchingSupportStatus:status];
  v4 = [[SVDCapabilityDescription alloc] initWithBacking:v3];

  return v4;
}

@end