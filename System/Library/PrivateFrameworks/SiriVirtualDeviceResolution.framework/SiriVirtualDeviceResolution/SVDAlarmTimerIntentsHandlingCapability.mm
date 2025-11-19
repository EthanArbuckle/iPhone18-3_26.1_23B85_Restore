@interface SVDAlarmTimerIntentsHandlingCapability
+ (id)capabilityDescriptionMatchingSupportStatus:(int64_t)a3;
- (SVDAlarmTimerIntentsHandlingCapability)initWithCoder:(id)a3;
- (SVDAlarmTimerIntentsHandlingCapability)initWithStatus:(int64_t)a3;
@end

@implementation SVDAlarmTimerIntentsHandlingCapability

- (SVDAlarmTimerIntentsHandlingCapability)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SVDAlarmTimerIntentsHandlingCapability;
  v5 = [(SVDAlarmTimerIntentsHandlingCapability *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SVDAlarmTimerIntentsHandlingCapabilityBacking"];
    backing = v5->_backing;
    v5->_backing = v6;
  }

  return v5;
}

- (SVDAlarmTimerIntentsHandlingCapability)initWithStatus:(int64_t)a3
{
  v8.receiver = self;
  v8.super_class = SVDAlarmTimerIntentsHandlingCapability;
  v4 = [(SVDAlarmTimerIntentsHandlingCapability *)&v8 init];
  if (v4)
  {
    v5 = [[_TtC27SiriVirtualDeviceResolution35AlarmTimerIntentsHandlingCapability alloc] initWithStatus:a3];
    backing = v4->_backing;
    v4->_backing = v5;
  }

  return v4;
}

+ (id)capabilityDescriptionMatchingSupportStatus:(int64_t)a3
{
  v3 = [_TtC27SiriVirtualDeviceResolution35AlarmTimerIntentsHandlingCapability capabilityDescriptionMatchingSupportStatus:a3];
  v4 = [[SVDCapabilityDescription alloc] initWithBacking:v3];

  return v4;
}

@end