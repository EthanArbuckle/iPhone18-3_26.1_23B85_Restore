@interface _TSF_TSDClockMetrics
- (_TSF_TSDClockMetrics)initWithClock:(id)a3;
- (_TSF_TSDClockMetrics)initWithInterfaceMetrics:(id *)a3;
- (id)getDelta:(id)a3;
@end

@implementation _TSF_TSDClockMetrics

- (_TSF_TSDClockMetrics)initWithClock:(id)a3
{
  v4 = MEMORY[0x277D1AE20];
  v5 = a3;
  v6 = +[_TSF_TSDgPTPClock iokitMatchingDictionaryForClockIdentifier:](_TSF_TSDgPTPClock, "iokitMatchingDictionaryForClockIdentifier:", [v5 clockIdentity]);
  v7 = [v4 matchingService:v6];

  v8 = [v7 iodProperties];
  v9 = [v5 clockIdentity];

  self->_clockIdentity = v9;
  v10 = [v8 objectForKeyedSubscript:@"GrandmasterChangesCounter"];
  if (v10)
  {
    v11 = [v8 objectForKeyedSubscript:@"GrandmasterChangesCounter"];
    self->_gmChangesCount = [v11 unsignedIntValue];
  }

  else
  {
    self->_gmChangesCount = 0;
  }

  v12 = [v8 objectForKeyedSubscript:@"TimeToChangeGrandmaster"];
  if (v12)
  {
    v13 = [v8 objectForKeyedSubscript:@"TimeToChangeGrandmaster"];
    self->_timeToChangeGm = [v13 unsignedLongLongValue];
  }

  else
  {
    self->_timeToChangeGm = 0;
  }

  v14 = [v8 objectForKeyedSubscript:@"TimeToLock"];
  if (v14)
  {
    v15 = [v8 objectForKeyedSubscript:@"TimeToLock"];
    self->_timeToLock = [v15 unsignedLongLongValue];
  }

  else
  {
    self->_timeToLock = 0;
  }

  v16 = [v8 objectForKeyedSubscript:@"CoreAudioReanchors"];
  if (v16)
  {
    v17 = [v8 objectForKeyedSubscript:@"CoreAudioReanchors"];
    self->_coreAudioReanchors = [v17 unsignedIntValue];
  }

  else
  {
    self->_coreAudioReanchors = 0;
  }

  return self;
}

- (_TSF_TSDClockMetrics)initWithInterfaceMetrics:(id *)a3
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
  v5 = objc_alloc_init(_TSF_TSDClockMetrics);
  [(_TSF_TSDClockMetrics *)v5 setClockIdentity:self->_clockIdentity];
  -[_TSF_TSDClockMetrics setGmChangesCount:](v5, "setGmChangesCount:", self->_gmChangesCount - [v4 gmChangesCount]);
  coreAudioReanchors = self->_coreAudioReanchors;
  v7 = [v4 coreAudioReanchors];

  [(_TSF_TSDClockMetrics *)v5 setCoreAudioReanchors:coreAudioReanchors - v7];

  return v5;
}

@end