@interface SVDAssistantEnabledCapability
+ (id)capabilityDescriptionMatchingSupportStatus:(int64_t)status;
- (SVDAssistantEnabledCapability)initWithCoder:(id)coder;
- (SVDAssistantEnabledCapability)initWithStatus:(int64_t)status;
@end

@implementation SVDAssistantEnabledCapability

- (SVDAssistantEnabledCapability)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = SVDAssistantEnabledCapability;
  v5 = [(SVDAssistantEnabledCapability *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SVDAssistantEnabledCapabilityBacking"];
    backing = v5->_backing;
    v5->_backing = v6;
  }

  return v5;
}

- (SVDAssistantEnabledCapability)initWithStatus:(int64_t)status
{
  v8.receiver = self;
  v8.super_class = SVDAssistantEnabledCapability;
  v4 = [(SVDAssistantEnabledCapability *)&v8 init];
  if (v4)
  {
    v5 = [[_TtC27SiriVirtualDeviceResolution26AssistantEnabledCapability alloc] initWithStatus:status];
    backing = v4->_backing;
    v4->_backing = v5;
  }

  return v4;
}

+ (id)capabilityDescriptionMatchingSupportStatus:(int64_t)status
{
  v3 = [_TtC27SiriVirtualDeviceResolution26AssistantEnabledCapability capabilityDescriptionMatchingSupportStatus:status];
  v4 = [[SVDCapabilityDescription alloc] initWithBacking:v3];

  return v4;
}

@end