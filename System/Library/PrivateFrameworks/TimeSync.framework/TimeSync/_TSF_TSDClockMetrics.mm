@interface _TSF_TSDClockMetrics
- (_TSF_TSDClockMetrics)initWithClock:(id)clock;
- (_TSF_TSDClockMetrics)initWithInterfaceMetrics:(id *)metrics;
- (id)getDelta:(id)delta;
@end

@implementation _TSF_TSDClockMetrics

- (_TSF_TSDClockMetrics)initWithClock:(id)clock
{
  v4 = MEMORY[0x277D1AE20];
  clockCopy = clock;
  v6 = +[_TSF_TSDgPTPClock iokitMatchingDictionaryForClockIdentifier:](_TSF_TSDgPTPClock, "iokitMatchingDictionaryForClockIdentifier:", [clockCopy clockIdentity]);
  v7 = [v4 matchingService:v6];

  iodProperties = [v7 iodProperties];
  clockIdentity = [clockCopy clockIdentity];

  self->_clockIdentity = clockIdentity;
  v10 = [iodProperties objectForKeyedSubscript:@"GrandmasterChangesCounter"];
  if (v10)
  {
    v11 = [iodProperties objectForKeyedSubscript:@"GrandmasterChangesCounter"];
    self->_gmChangesCount = [v11 unsignedIntValue];
  }

  else
  {
    self->_gmChangesCount = 0;
  }

  v12 = [iodProperties objectForKeyedSubscript:@"TimeToChangeGrandmaster"];
  if (v12)
  {
    v13 = [iodProperties objectForKeyedSubscript:@"TimeToChangeGrandmaster"];
    self->_timeToChangeGm = [v13 unsignedLongLongValue];
  }

  else
  {
    self->_timeToChangeGm = 0;
  }

  v14 = [iodProperties objectForKeyedSubscript:@"TimeToLock"];
  if (v14)
  {
    v15 = [iodProperties objectForKeyedSubscript:@"TimeToLock"];
    self->_timeToLock = [v15 unsignedLongLongValue];
  }

  else
  {
    self->_timeToLock = 0;
  }

  v16 = [iodProperties objectForKeyedSubscript:@"CoreAudioReanchors"];
  if (v16)
  {
    v17 = [iodProperties objectForKeyedSubscript:@"CoreAudioReanchors"];
    self->_coreAudioReanchors = [v17 unsignedIntValue];
  }

  else
  {
    self->_coreAudioReanchors = 0;
  }

  return self;
}

- (_TSF_TSDClockMetrics)initWithInterfaceMetrics:(id *)metrics
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
  v5 = objc_alloc_init(_TSF_TSDClockMetrics);
  [(_TSF_TSDClockMetrics *)v5 setClockIdentity:self->_clockIdentity];
  -[_TSF_TSDClockMetrics setGmChangesCount:](v5, "setGmChangesCount:", self->_gmChangesCount - [deltaCopy gmChangesCount]);
  coreAudioReanchors = self->_coreAudioReanchors;
  coreAudioReanchors = [deltaCopy coreAudioReanchors];

  [(_TSF_TSDClockMetrics *)v5 setCoreAudioReanchors:coreAudioReanchors - coreAudioReanchors];

  return v5;
}

@end