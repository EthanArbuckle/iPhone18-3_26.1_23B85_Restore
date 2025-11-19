@interface SUSUIFakeSUAutoInstallForecast
- (double)_now;
- (id)firstUnlock;
- (id)suEndDate;
- (id)suStartDate;
- (id)unlockEndDate;
- (id)unlockStartDate;
@end

@implementation SUSUIFakeSUAutoInstallForecast

- (id)unlockStartDate
{
  v4 = MEMORY[0x277CBEAA8];
  [(SUSUIFakeSUAutoInstallForecast *)self _now];
  return [v4 dateWithTimeIntervalSinceReferenceDate:v2 + 18000.0];
}

- (id)unlockEndDate
{
  v4 = MEMORY[0x277CBEAA8];
  [(SUSUIFakeSUAutoInstallForecast *)self _now];
  return [v4 dateWithTimeIntervalSinceReferenceDate:v2 + 28800.0];
}

- (id)suStartDate
{
  v4 = MEMORY[0x277CBEAA8];
  [(SUSUIFakeSUAutoInstallForecast *)self _now];
  return [v4 dateWithTimeIntervalSinceReferenceDate:v2 + 43200.0];
}

- (id)suEndDate
{
  v4 = MEMORY[0x277CBEAA8];
  [(SUSUIFakeSUAutoInstallForecast *)self _now];
  return [v4 dateWithTimeIntervalSinceReferenceDate:v2 + 57600.0];
}

- (id)firstUnlock
{
  v4 = MEMORY[0x277CBEAA8];
  [(SUSUIFakeSUAutoInstallForecast *)self _now];
  return [v4 dateWithTimeIntervalSinceReferenceDate:v2 + 10800.0];
}

- (double)_now
{
  if (self->_now == 0.0)
  {
    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    self->_now = v2;
  }

  return self->_now;
}

@end