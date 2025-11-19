@interface SVDAudioPlaybackCapability
+ (id)capabilityDescriptionMatchingSupportStatus:(int64_t)a3;
- (SVDAudioPlaybackCapability)initWithCoder:(id)a3;
- (SVDAudioPlaybackCapability)initWithStatus:(int64_t)a3;
@end

@implementation SVDAudioPlaybackCapability

- (SVDAudioPlaybackCapability)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SVDAudioPlaybackCapability;
  v5 = [(SVDAudioPlaybackCapability *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SVDAudioPlaybackCapabilityBacking"];
    backing = v5->_backing;
    v5->_backing = v6;
  }

  return v5;
}

- (SVDAudioPlaybackCapability)initWithStatus:(int64_t)a3
{
  v8.receiver = self;
  v8.super_class = SVDAudioPlaybackCapability;
  v4 = [(SVDAudioPlaybackCapability *)&v8 init];
  if (v4)
  {
    v5 = [[_TtC27SiriVirtualDeviceResolution23AudioPlaybackCapability alloc] initWithStatus:a3];
    backing = v4->_backing;
    v4->_backing = v5;
  }

  return v4;
}

+ (id)capabilityDescriptionMatchingSupportStatus:(int64_t)a3
{
  v3 = [_TtC27SiriVirtualDeviceResolution23AudioPlaybackCapability capabilityDescriptionMatchingSupportStatus:a3];
  v4 = [[SVDCapabilityDescription alloc] initWithBacking:v3];

  return v4;
}

@end