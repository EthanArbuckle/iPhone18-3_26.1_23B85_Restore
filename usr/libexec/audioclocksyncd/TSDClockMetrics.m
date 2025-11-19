@interface TSDClockMetrics
- (TSDClockMetrics)initWithClock:(id)a3;
- (TSDClockMetrics)initWithInterfaceMetrics:(id *)a3;
- (id)getDelta:(id)a3;
@end

@implementation TSDClockMetrics

- (TSDClockMetrics)initWithClock:(id)a3
{
  v4 = a3;
  v5 = +[TSDgPTPClock iokitMatchingDictionaryForClockIdentifier:](TSDgPTPClock, "iokitMatchingDictionaryForClockIdentifier:", [v4 clockIdentity]);
  v6 = [IOKService matchingService:v5];

  v7 = [v6 iodProperties];
  v8 = [v4 clockIdentity];

  self->_clockIdentity = v8;
  v9 = [v7 objectForKeyedSubscript:@"GrandmasterChangesCounter"];
  if (v9)
  {
    v10 = [v7 objectForKeyedSubscript:@"GrandmasterChangesCounter"];
    self->_gmChangesCount = [v10 unsignedIntValue];
  }

  else
  {
    self->_gmChangesCount = 0;
  }

  v11 = [v7 objectForKeyedSubscript:@"TimeToChangeGrandmaster"];
  if (v11)
  {
    v12 = [v7 objectForKeyedSubscript:@"TimeToChangeGrandmaster"];
    self->_timeToChangeGm = [v12 unsignedLongLongValue];
  }

  else
  {
    self->_timeToChangeGm = 0;
  }

  v13 = [v7 objectForKeyedSubscript:@"TimeToLock"];
  if (v13)
  {
    v14 = [v7 objectForKeyedSubscript:@"TimeToLock"];
    self->_timeToLock = [v14 unsignedLongLongValue];
  }

  else
  {
    self->_timeToLock = 0;
  }

  v15 = [v7 objectForKeyedSubscript:@"CoreAudioReanchors"];
  if (v15)
  {
    v16 = [v7 objectForKeyedSubscript:@"CoreAudioReanchors"];
    self->_coreAudioReanchors = [v16 unsignedIntValue];
  }

  else
  {
    self->_coreAudioReanchors = 0;
  }

  return self;
}

- (TSDClockMetrics)initWithInterfaceMetrics:(id *)a3
{
  self->_clockIdentity = a3->var0;
  v3 = *&a3->var3;
  *&self->_gmChangesCount = *&a3->var1;
  *&self->_timeToLock = v3;
  return self;
}

- (id)getDelta:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(TSDClockMetrics);
  [(TSDClockMetrics *)v5 setClockIdentity:self->_clockIdentity];
  -[TSDClockMetrics setGmChangesCount:](v5, "setGmChangesCount:", self->_gmChangesCount - [v4 gmChangesCount]);
  coreAudioReanchors = self->_coreAudioReanchors;
  v7 = [v4 coreAudioReanchors];

  [(TSDClockMetrics *)v5 setCoreAudioReanchors:coreAudioReanchors - v7];

  return v5;
}

@end