@interface WiFiUsageSessionCAConfig
- (BOOL)canSubmit;
- (WiFiUsageSessionCAConfig)initWithSampling:(unint64_t)a3 minInterval:(double)a4;
- (id)description;
- (void)countSubmission;
@end

@implementation WiFiUsageSessionCAConfig

- (WiFiUsageSessionCAConfig)initWithSampling:(unint64_t)a3 minInterval:(double)a4
{
  v10.receiver = self;
  v10.super_class = WiFiUsageSessionCAConfig;
  v6 = [(WiFiUsageSessionCAConfig *)&v10 init];
  v7 = v6;
  if (v6)
  {
    v6->_ca_sampling = a3;
    v6->_ca_minTimeIntervalBetweenSubmissions = a4;
    ca_lastSubmission = v6->_ca_lastSubmission;
    v6->_ca_lastSubmission = 0;
  }

  return v7;
}

- (void)countSubmission
{
  v3 = [MEMORY[0x277CBEAA8] now];
  ca_lastSubmission = self->_ca_lastSubmission;
  self->_ca_lastSubmission = v3;

  MEMORY[0x2821F96F8](v3, ca_lastSubmission);
}

- (BOOL)canSubmit
{
  if (self->_ca_lastSubmission)
  {
    v3 = [MEMORY[0x277CBEAA8] now];
    [v3 timeIntervalSinceDate:self->_ca_lastSubmission];
    v5 = v4;
    ca_minTimeIntervalBetweenSubmissions = self->_ca_minTimeIntervalBetweenSubmissions;

    if (v5 < ca_minTimeIntervalBetweenSubmissions)
    {
      return 0;
    }
  }

  ca_sampling = self->_ca_sampling;

  return [WiFiUsagePrivacyFilter canPerformActionWithSampleRate:ca_sampling];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [WiFiUsagePrivacyFilter describeSampleRate:self->_ca_sampling];
  v5 = [WiFiUsagePrivacyFilter getHumanSecondsFromTimeInterval:self->_ca_minTimeIntervalBetweenSubmissions];
  v6 = [v3 stringWithFormat:@"samplingRate:%@, minTimeInterval:%@ lastSubmission:%@", v4, v5, self->_ca_lastSubmission];

  return v6;
}

@end