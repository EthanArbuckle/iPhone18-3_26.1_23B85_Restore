@interface TSDClockMetrics
- (TSDClockMetrics)initWithClock:(id)clock;
- (TSDClockMetrics)initWithInterfaceMetrics:(id *)metrics;
- (id)getDelta:(id)delta;
@end

@implementation TSDClockMetrics

- (TSDClockMetrics)initWithClock:(id)clock
{
  clockCopy = clock;
  v5 = +[TSDgPTPClock iokitMatchingDictionaryForClockIdentifier:](TSDgPTPClock, "iokitMatchingDictionaryForClockIdentifier:", [clockCopy clockIdentity]);
  v6 = [IOKService matchingService:v5];

  iodProperties = [v6 iodProperties];
  clockIdentity = [clockCopy clockIdentity];

  self->_clockIdentity = clockIdentity;
  v9 = [iodProperties objectForKeyedSubscript:@"GrandmasterChangesCounter"];
  if (v9)
  {
    v10 = [iodProperties objectForKeyedSubscript:@"GrandmasterChangesCounter"];
    self->_gmChangesCount = [v10 unsignedIntValue];
  }

  else
  {
    self->_gmChangesCount = 0;
  }

  v11 = [iodProperties objectForKeyedSubscript:@"TimeToChangeGrandmaster"];
  if (v11)
  {
    v12 = [iodProperties objectForKeyedSubscript:@"TimeToChangeGrandmaster"];
    self->_timeToChangeGm = [v12 unsignedLongLongValue];
  }

  else
  {
    self->_timeToChangeGm = 0;
  }

  v13 = [iodProperties objectForKeyedSubscript:@"TimeToLock"];
  if (v13)
  {
    v14 = [iodProperties objectForKeyedSubscript:@"TimeToLock"];
    self->_timeToLock = [v14 unsignedLongLongValue];
  }

  else
  {
    self->_timeToLock = 0;
  }

  v15 = [iodProperties objectForKeyedSubscript:@"CoreAudioReanchors"];
  if (v15)
  {
    v16 = [iodProperties objectForKeyedSubscript:@"CoreAudioReanchors"];
    self->_coreAudioReanchors = [v16 unsignedIntValue];
  }

  else
  {
    self->_coreAudioReanchors = 0;
  }

  return self;
}

- (TSDClockMetrics)initWithInterfaceMetrics:(id *)metrics
{
  self->_clockIdentity = metrics->var0;
  v3 = *&metrics->var3;
  *&self->_gmChangesCount = *&metrics->var1;
  *&self->_timeToLock = v3;
  return self;
}

- (id)getDelta:(id)delta
{
  deltaCopy = delta;
  v5 = objc_alloc_init(TSDClockMetrics);
  [(TSDClockMetrics *)v5 setClockIdentity:self->_clockIdentity];
  -[TSDClockMetrics setGmChangesCount:](v5, "setGmChangesCount:", self->_gmChangesCount - [deltaCopy gmChangesCount]);
  coreAudioReanchors = self->_coreAudioReanchors;
  coreAudioReanchors = [deltaCopy coreAudioReanchors];

  [(TSDClockMetrics *)v5 setCoreAudioReanchors:coreAudioReanchors - coreAudioReanchors];

  return v5;
}

@end