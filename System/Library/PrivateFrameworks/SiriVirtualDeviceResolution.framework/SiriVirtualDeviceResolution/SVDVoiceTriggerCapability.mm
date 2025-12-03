@interface SVDVoiceTriggerCapability
+ (id)capabilityDescriptionMatchingSupportStatus:(int64_t)status;
- (SVDVoiceTriggerCapability)initWithCoder:(id)coder;
- (SVDVoiceTriggerCapability)initWithStatus:(int64_t)status;
@end

@implementation SVDVoiceTriggerCapability

- (SVDVoiceTriggerCapability)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = SVDVoiceTriggerCapability;
  v5 = [(SVDVoiceTriggerCapability *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SVDVoiceTriggerCapabilityBacking"];
    backing = v5->_backing;
    v5->_backing = v6;
  }

  return v5;
}

- (SVDVoiceTriggerCapability)initWithStatus:(int64_t)status
{
  v8.receiver = self;
  v8.super_class = SVDVoiceTriggerCapability;
  v4 = [(SVDVoiceTriggerCapability *)&v8 init];
  if (v4)
  {
    v5 = [[_TtC27SiriVirtualDeviceResolution22VoiceTriggerCapability alloc] initWithStatus:status];
    backing = v4->_backing;
    v4->_backing = v5;
  }

  return v4;
}

+ (id)capabilityDescriptionMatchingSupportStatus:(int64_t)status
{
  v3 = [_TtC27SiriVirtualDeviceResolution22VoiceTriggerCapability capabilityDescriptionMatchingSupportStatus:status];
  v4 = [[SVDCapabilityDescription alloc] initWithBacking:v3];

  return v4;
}

@end