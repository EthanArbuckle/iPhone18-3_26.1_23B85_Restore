@interface SVDCustomTimerIntentHandlingCapability
+ (id)capabilityDescriptionMatchingSupportStatus:(int64_t)status;
- (SVDCustomTimerIntentHandlingCapability)initWithCoder:(id)coder;
- (SVDCustomTimerIntentHandlingCapability)initWithStatus:(int64_t)status;
@end

@implementation SVDCustomTimerIntentHandlingCapability

- (SVDCustomTimerIntentHandlingCapability)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = SVDCustomTimerIntentHandlingCapability;
  v5 = [(SVDCustomTimerIntentHandlingCapability *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SVDCustomTimerIntentHandlingCapability"];
    backing = v5->_backing;
    v5->_backing = v6;
  }

  return v5;
}

- (SVDCustomTimerIntentHandlingCapability)initWithStatus:(int64_t)status
{
  v8.receiver = self;
  v8.super_class = SVDCustomTimerIntentHandlingCapability;
  v4 = [(SVDCustomTimerIntentHandlingCapability *)&v8 init];
  if (v4)
  {
    v5 = [[_TtC27SiriVirtualDeviceResolution35CustomTimerIntentHandlingCapability alloc] initWithStatus:status];
    backing = v4->_backing;
    v4->_backing = v5;
  }

  return v4;
}

+ (id)capabilityDescriptionMatchingSupportStatus:(int64_t)status
{
  v3 = [_TtC27SiriVirtualDeviceResolution35CustomTimerIntentHandlingCapability capabilityDescriptionMatchingSupportStatus:status];
  v4 = [[SVDCapabilityDescription alloc] initWithBacking:v3];

  return v4;
}

@end