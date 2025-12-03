@interface WiFiUsageLQMAnalysisSamplingRate
- (WiFiUsageLQMAnalysisSamplingRate)initWithValue:(id)value;
- (id)description;
@end

@implementation WiFiUsageLQMAnalysisSamplingRate

- (WiFiUsageLQMAnalysisSamplingRate)initWithValue:(id)value
{
  valueCopy = value;
  v11.receiver = self;
  v11.super_class = WiFiUsageLQMAnalysisSamplingRate;
  v5 = [(WiFiUsageLQMAnalysisSamplingRate *)&v11 init];
  v5->_samplingBase = 100;
  [valueCopy doubleValue];
  v7 = v6;
  v5->_samplingRate = v6;
  v8 = 5;
  do
  {
    if (v6 == v7)
    {
      break;
    }

    v6 = v6 * 10.0;
    v7 = v6;
    v9 = 10 * v5->_samplingBase;
    v5->_samplingRate = v6;
    v5->_samplingBase = v9;
    --v8;
  }

  while (v8);

  return v5;
}

- (id)description
{
  LODWORD(v2) = self->_samplingRate;
  LODWORD(v3) = self->_samplingBase;
  return [MEMORY[0x277CCACA8] stringWithFormat:@"%.03f%%", v2 * 100.0 / v3];
}

@end