@interface SVDVoiceTriggerCapability
+ (id)capabilityDescriptionMatchingSupportStatus:(int64_t)a3;
- (SVDVoiceTriggerCapability)initWithCoder:(id)a3;
- (SVDVoiceTriggerCapability)initWithStatus:(int64_t)a3;
@end

@implementation SVDVoiceTriggerCapability

- (SVDVoiceTriggerCapability)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SVDVoiceTriggerCapability;
  v5 = [(SVDVoiceTriggerCapability *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SVDVoiceTriggerCapabilityBacking"];
    backing = v5->_backing;
    v5->_backing = v6;
  }

  return v5;
}

- (SVDVoiceTriggerCapability)initWithStatus:(int64_t)a3
{
  v8.receiver = self;
  v8.super_class = SVDVoiceTriggerCapability;
  v4 = [(SVDVoiceTriggerCapability *)&v8 init];
  if (v4)
  {
    v5 = [[_TtC27SiriVirtualDeviceResolution22VoiceTriggerCapability alloc] initWithStatus:a3];
    backing = v4->_backing;
    v4->_backing = v5;
  }

  return v4;
}

+ (id)capabilityDescriptionMatchingSupportStatus:(int64_t)a3
{
  v3 = [_TtC27SiriVirtualDeviceResolution22VoiceTriggerCapability capabilityDescriptionMatchingSupportStatus:a3];
  v4 = [[SVDCapabilityDescription alloc] initWithBacking:v3];

  return v4;
}

@end