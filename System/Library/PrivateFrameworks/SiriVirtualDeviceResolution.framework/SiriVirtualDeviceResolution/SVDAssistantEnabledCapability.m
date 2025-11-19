@interface SVDAssistantEnabledCapability
+ (id)capabilityDescriptionMatchingSupportStatus:(int64_t)a3;
- (SVDAssistantEnabledCapability)initWithCoder:(id)a3;
- (SVDAssistantEnabledCapability)initWithStatus:(int64_t)a3;
@end

@implementation SVDAssistantEnabledCapability

- (SVDAssistantEnabledCapability)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SVDAssistantEnabledCapability;
  v5 = [(SVDAssistantEnabledCapability *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SVDAssistantEnabledCapabilityBacking"];
    backing = v5->_backing;
    v5->_backing = v6;
  }

  return v5;
}

- (SVDAssistantEnabledCapability)initWithStatus:(int64_t)a3
{
  v8.receiver = self;
  v8.super_class = SVDAssistantEnabledCapability;
  v4 = [(SVDAssistantEnabledCapability *)&v8 init];
  if (v4)
  {
    v5 = [[_TtC27SiriVirtualDeviceResolution26AssistantEnabledCapability alloc] initWithStatus:a3];
    backing = v4->_backing;
    v4->_backing = v5;
  }

  return v4;
}

+ (id)capabilityDescriptionMatchingSupportStatus:(int64_t)a3
{
  v3 = [_TtC27SiriVirtualDeviceResolution26AssistantEnabledCapability capabilityDescriptionMatchingSupportStatus:a3];
  v4 = [[SVDCapabilityDescription alloc] initWithBacking:v3];

  return v4;
}

@end