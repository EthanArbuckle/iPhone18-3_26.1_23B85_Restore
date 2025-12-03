@interface TSTimeSyncClock
- (BOOL)convertFromDomainTime:(unint64_t *)time toMachAbsoluteTime:(unint64_t *)absoluteTime withCount:(unsigned int)count;
- (BOOL)convertFromMachAbsoluteTime:(unint64_t *)time toDomainTime:(unint64_t *)domainTime withCount:(unsigned int)count;
- (BOOL)getTimeSyncTimeRateRatioNumerator:(unint64_t *)numerator denominator:(unint64_t *)denominator timeSyncAnchor:(unint64_t *)anchor andDomainAnchor:(unint64_t *)domainAnchor withError:(id *)error;
- (TSTimeSyncClock)initWithClockIdentifier:(unint64_t)identifier translationClock:(id)clock;
- (unint64_t)convertFromDomainIntervalToMachAbsoluteInterval:(unint64_t)interval;
- (unint64_t)convertFromDomainToMachAbsoluteTime:(unint64_t)time;
- (unint64_t)convertFromMachAbsoluteIntervalToDomainInterval:(unint64_t)interval;
- (unint64_t)convertFromMachAbsoluteToDomainTime:(unint64_t)time;
@end

@implementation TSTimeSyncClock

- (TSTimeSyncClock)initWithClockIdentifier:(unint64_t)identifier translationClock:(id)clock
{
  clockCopy = clock;
  v11.receiver = self;
  v11.super_class = TSTimeSyncClock;
  v8 = [(TSClock *)&v11 initWithClockIdentifier:identifier];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_translationClock, clock);
  }

  return v9;
}

- (unint64_t)convertFromMachAbsoluteToDomainTime:(unint64_t)time
{
  v4 = [(TSClock *)self->_translationClock convertFromMachAbsoluteToDomainTime:time];
  translationClock = self->_translationClock;

  return [(TSClock *)translationClock convertFromDomainToTimeSyncTime:v4];
}

- (unint64_t)convertFromDomainToMachAbsoluteTime:(unint64_t)time
{
  v4 = [(TSClock *)self->_translationClock convertFromTimeSyncToDomainTime:time];
  translationClock = self->_translationClock;

  return [(TSClock *)translationClock convertFromDomainToMachAbsoluteTime:v4];
}

- (BOOL)convertFromMachAbsoluteTime:(unint64_t *)time toDomainTime:(unint64_t *)domainTime withCount:(unsigned int)count
{
  if (count)
  {
    countCopy = count;
    do
    {
      v9 = *time++;
      *domainTime++ = [(TSClock *)self->_translationClock convertFromDomainToTimeSyncTime:[(TSClock *)self->_translationClock convertFromMachAbsoluteToDomainTime:v9]];
      --countCopy;
    }

    while (countCopy);
  }

  return 1;
}

- (BOOL)convertFromDomainTime:(unint64_t *)time toMachAbsoluteTime:(unint64_t *)absoluteTime withCount:(unsigned int)count
{
  if (count)
  {
    countCopy = count;
    do
    {
      v9 = *time++;
      *absoluteTime++ = [(TSClock *)self->_translationClock convertFromDomainToMachAbsoluteTime:[(TSClock *)self->_translationClock convertFromTimeSyncToDomainTime:v9]];
      --countCopy;
    }

    while (countCopy);
  }

  return 1;
}

- (unint64_t)convertFromMachAbsoluteIntervalToDomainInterval:(unint64_t)interval
{
  v4 = [(TSClock *)self->_translationClock convertFromMachAbsoluteIntervalToDomainInterval:interval];
  translationClock = self->_translationClock;

  return [(TSClock *)translationClock convertFromDomainIntervalToTimeSyncTimeInterval:v4];
}

- (unint64_t)convertFromDomainIntervalToMachAbsoluteInterval:(unint64_t)interval
{
  v4 = [(TSClock *)self->_translationClock convertFromTimeSyncTimeIntervalToDomainInterval:interval];
  translationClock = self->_translationClock;

  return [(TSClock *)translationClock convertFromDomainIntervalToMachAbsoluteInterval:v4];
}

- (BOOL)getTimeSyncTimeRateRatioNumerator:(unint64_t *)numerator denominator:(unint64_t *)denominator timeSyncAnchor:(unint64_t *)anchor andDomainAnchor:(unint64_t *)domainAnchor withError:(id *)error
{
  if (numerator)
  {
    *numerator = 1;
  }

  if (denominator)
  {
    *denominator = 1;
  }

  if (anchor)
  {
    *anchor = 0;
  }

  if (domainAnchor)
  {
    *domainAnchor = 0;
  }

  return 1;
}

@end