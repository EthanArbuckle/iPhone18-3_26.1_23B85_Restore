@interface SVDVideoPlaybackCapability
+ (id)capabilityDescriptionMatchingSupportStatus:(int64_t)status;
- (SVDVideoPlaybackCapability)initWithCoder:(id)coder;
- (SVDVideoPlaybackCapability)initWithStatus:(int64_t)status;
@end

@implementation SVDVideoPlaybackCapability

- (SVDVideoPlaybackCapability)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = SVDVideoPlaybackCapability;
  v5 = [(SVDVideoPlaybackCapability *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SVDVideoPlaybackCapabilityBacking"];
    backing = v5->_backing;
    v5->_backing = v6;
  }

  return v5;
}

- (SVDVideoPlaybackCapability)initWithStatus:(int64_t)status
{
  v8.receiver = self;
  v8.super_class = SVDVideoPlaybackCapability;
  v4 = [(SVDVideoPlaybackCapability *)&v8 init];
  if (v4)
  {
    v5 = [[_TtC27SiriVirtualDeviceResolution23VideoPlaybackCapability alloc] initWithStatus:status];
    backing = v4->_backing;
    v4->_backing = v5;
  }

  return v4;
}

+ (id)capabilityDescriptionMatchingSupportStatus:(int64_t)status
{
  v3 = [_TtC27SiriVirtualDeviceResolution23VideoPlaybackCapability capabilityDescriptionMatchingSupportStatus:status];
  v4 = [[SVDCapabilityDescription alloc] initWithBacking:v3];

  return v4;
}

@end