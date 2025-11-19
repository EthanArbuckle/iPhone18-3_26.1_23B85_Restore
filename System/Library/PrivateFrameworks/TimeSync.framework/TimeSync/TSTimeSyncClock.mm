@interface TSTimeSyncClock
- (BOOL)convertFromDomainTime:(unint64_t *)a3 toMachAbsoluteTime:(unint64_t *)a4 withCount:(unsigned int)a5;
- (BOOL)convertFromMachAbsoluteTime:(unint64_t *)a3 toDomainTime:(unint64_t *)a4 withCount:(unsigned int)a5;
- (BOOL)getTimeSyncTimeRateRatioNumerator:(unint64_t *)a3 denominator:(unint64_t *)a4 timeSyncAnchor:(unint64_t *)a5 andDomainAnchor:(unint64_t *)a6 withError:(id *)a7;
- (TSTimeSyncClock)initWithClockIdentifier:(unint64_t)a3 translationClock:(id)a4;
- (unint64_t)convertFromDomainIntervalToMachAbsoluteInterval:(unint64_t)a3;
- (unint64_t)convertFromDomainToMachAbsoluteTime:(unint64_t)a3;
- (unint64_t)convertFromMachAbsoluteIntervalToDomainInterval:(unint64_t)a3;
- (unint64_t)convertFromMachAbsoluteToDomainTime:(unint64_t)a3;
@end

@implementation TSTimeSyncClock

- (TSTimeSyncClock)initWithClockIdentifier:(unint64_t)a3 translationClock:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = TSTimeSyncClock;
  v8 = [(TSClock *)&v11 initWithClockIdentifier:a3];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_translationClock, a4);
  }

  return v9;
}

- (unint64_t)convertFromMachAbsoluteToDomainTime:(unint64_t)a3
{
  v4 = [(TSClock *)self->_translationClock convertFromMachAbsoluteToDomainTime:a3];
  translationClock = self->_translationClock;

  return [(TSClock *)translationClock convertFromDomainToTimeSyncTime:v4];
}

- (unint64_t)convertFromDomainToMachAbsoluteTime:(unint64_t)a3
{
  v4 = [(TSClock *)self->_translationClock convertFromTimeSyncToDomainTime:a3];
  translationClock = self->_translationClock;

  return [(TSClock *)translationClock convertFromDomainToMachAbsoluteTime:v4];
}

- (BOOL)convertFromMachAbsoluteTime:(unint64_t *)a3 toDomainTime:(unint64_t *)a4 withCount:(unsigned int)a5
{
  if (a5)
  {
    v8 = a5;
    do
    {
      v9 = *a3++;
      *a4++ = [(TSClock *)self->_translationClock convertFromDomainToTimeSyncTime:[(TSClock *)self->_translationClock convertFromMachAbsoluteToDomainTime:v9]];
      --v8;
    }

    while (v8);
  }

  return 1;
}

- (BOOL)convertFromDomainTime:(unint64_t *)a3 toMachAbsoluteTime:(unint64_t *)a4 withCount:(unsigned int)a5
{
  if (a5)
  {
    v8 = a5;
    do
    {
      v9 = *a3++;
      *a4++ = [(TSClock *)self->_translationClock convertFromDomainToMachAbsoluteTime:[(TSClock *)self->_translationClock convertFromTimeSyncToDomainTime:v9]];
      --v8;
    }

    while (v8);
  }

  return 1;
}

- (unint64_t)convertFromMachAbsoluteIntervalToDomainInterval:(unint64_t)a3
{
  v4 = [(TSClock *)self->_translationClock convertFromMachAbsoluteIntervalToDomainInterval:a3];
  translationClock = self->_translationClock;

  return [(TSClock *)translationClock convertFromDomainIntervalToTimeSyncTimeInterval:v4];
}

- (unint64_t)convertFromDomainIntervalToMachAbsoluteInterval:(unint64_t)a3
{
  v4 = [(TSClock *)self->_translationClock convertFromTimeSyncTimeIntervalToDomainInterval:a3];
  translationClock = self->_translationClock;

  return [(TSClock *)translationClock convertFromDomainIntervalToMachAbsoluteInterval:v4];
}

- (BOOL)getTimeSyncTimeRateRatioNumerator:(unint64_t *)a3 denominator:(unint64_t *)a4 timeSyncAnchor:(unint64_t *)a5 andDomainAnchor:(unint64_t *)a6 withError:(id *)a7
{
  if (a3)
  {
    *a3 = 1;
  }

  if (a4)
  {
    *a4 = 1;
  }

  if (a5)
  {
    *a5 = 0;
  }

  if (a6)
  {
    *a6 = 0;
  }

  return 1;
}

@end