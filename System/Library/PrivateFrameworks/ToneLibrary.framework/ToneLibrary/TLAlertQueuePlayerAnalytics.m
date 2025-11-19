@interface TLAlertQueuePlayerAnalytics
- (TLAlertQueuePlayerAnalytics)initWithAlert:(id)a3;
- (id)description;
- (void)_initializeToneIdentifierAndToneKindFromAlert:(id)a3;
@end

@implementation TLAlertQueuePlayerAnalytics

- (TLAlertQueuePlayerAnalytics)initWithAlert:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = TLAlertQueuePlayerAnalytics;
  v5 = [(TLAlertQueuePlayerAnalytics *)&v7 init];
  if (v5)
  {
    v5->_alertType = [v4 type];
    [(TLAlertQueuePlayerAnalytics *)v5 _initializeToneIdentifierAndToneKindFromAlert:v4];
  }

  return v5;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AD60]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 initWithFormat:@"<%@: %p", v5, self];

  v7 = _TLAlertTypeGetHumanReadableDescription(self->_alertType);
  [v6 appendFormat:@"; alertType = %@", v7];

  [v6 appendFormat:@"; toneIdentifierForAnalytics = %@", self->_toneIdentifierForAnalytics];
  [v6 appendFormat:@"; toneKindForAnalytics = %@", self->_toneKindForAnalytics];
  [v6 appendFormat:@"; reporterID = %lld", self->_reporterID];
  [v6 appendFormat:@"; userVolume = %f", self->_userVolume];
  if (self->_wasDeviceChargingOnStart)
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  [v6 appendFormat:@"; wasDeviceChargingOnStart = %@", v8];
  if (self->_wasDeviceChargingOnStop)
  {
    v9 = @"YES";
  }

  else
  {
    v9 = @"NO";
  }

  [v6 appendFormat:@"; wasDeviceChargingOnStop = %@", v9];
  if (self->_didAttenuatePlayback)
  {
    v10 = @"YES";
  }

  else
  {
    v10 = @"NO";
  }

  [v6 appendFormat:@"; didAttenuatePlayback = %@", v10];
  if (self->_attentionAwarenessSupportEnabled)
  {
    v11 = @"YES";
  }

  else
  {
    v11 = @"NO";
  }

  [v6 appendFormat:@"; isAttentionAwarenessSupportEnabled = %@", v11];
  [v6 appendFormat:@"; startTime = %f", *&self->_startTime];
  [v6 appendFormat:@"; attenuationTime = %f", *&self->_attenuationTime];
  [v6 appendFormat:@"; stopTime = %f", *&self->_stopTime];
  [v6 appendString:@">"];

  return v6;
}

- (void)_initializeToneIdentifierAndToneKindFromAlert:(id)a3
{
  v4 = [a3 toneIdentifier];
  if ([v4 isEqualToString:@"<default>"])
  {
    v5 = @"default";
    v6 = @"system";
    goto LABEL_9;
  }

  v7 = @"system:";
  if ([v4 hasPrefix:@"system:"])
  {
    v6 = @"system";
LABEL_7:
    v5 = [v4 substringFromIndex:{-[__CFString length](v7, "length")}];
    goto LABEL_9;
  }

  v7 = @"alarmWakeUp:";
  if ([v4 hasPrefix:@"alarmWakeUp:"])
  {
    v6 = @"alarmWakeUp";
    goto LABEL_7;
  }

  v5 = &stru_1F54CFF40;
  v6 = @"otherTone";
LABEL_9:
  v12 = v5;
  v8 = [(__CFString *)v5 copy];
  toneIdentifierForAnalytics = self->_toneIdentifierForAnalytics;
  self->_toneIdentifierForAnalytics = v8;

  v10 = [(__CFString *)v6 copy];
  toneKindForAnalytics = self->_toneKindForAnalytics;
  self->_toneKindForAnalytics = v10;
}

@end