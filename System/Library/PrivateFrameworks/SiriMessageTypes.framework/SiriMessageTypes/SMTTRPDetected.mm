@interface SMTTRPDetected
+ (id)newWithBuilder:(id)builder;
- (BOOL)isEqual:(id)equal;
- (SMTTRPDetected)initWithBuilder:(id)builder;
- (SMTTRPDetected)initWithCoder:(id)coder;
- (SMTTRPDetected)initWithGeneratedHostTime:(unint64_t)time lastTRPCandidateId:(id)id trpDetectedAudioTimeStamp:(double)stamp;
- (SMTTRPDetected)initWithGeneratedHostTime:(unint64_t)time lastTRPCandidateId:(id)id trpDetectedAudioTimeStamp:(double)stamp requestId:(id)requestId;
- (id)_descriptionWithIndent:(unint64_t)indent;
- (id)mutatedCopyWithMutator:(id)mutator;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SMTTRPDetected

- (void)encodeWithCoder:(id)coder
{
  v4 = MEMORY[0x277CCABB0];
  generatedHostTime = self->_generatedHostTime;
  coderCopy = coder;
  v7 = [v4 numberWithUnsignedLongLong:generatedHostTime];
  [coderCopy encodeObject:v7 forKey:@"SMTTRPDetected::generatedHostTime"];

  [coderCopy encodeObject:self->_lastTRPCandidateId forKey:@"SMTTRPDetected::lastTRPCandidateId"];
  [coderCopy encodeObject:self->_requestId forKey:@"SMTTRPDetected::requestId"];
  v8 = [MEMORY[0x277CCABB0] numberWithDouble:self->_trpDetectedAudioTimeStamp];
  [coderCopy encodeObject:v8 forKey:@"SMTTRPDetected::trpDetectedAudioTimeStamp"];
}

- (SMTTRPDetected)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SMTTRPDetected::generatedHostTime"];
  unsignedLongLongValue = [v5 unsignedLongLongValue];

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SMTTRPDetected::lastTRPCandidateId"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SMTTRPDetected::requestId"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SMTTRPDetected::trpDetectedAudioTimeStamp"];

  [v9 doubleValue];
  v11 = v10;

  v12 = [(SMTTRPDetected *)self initWithGeneratedHostTime:unsignedLongLongValue lastTRPCandidateId:v7 trpDetectedAudioTimeStamp:v8 requestId:v11];
  return v12;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      generatedHostTime = self->_generatedHostTime;
      if (generatedHostTime == [(SMTTRPDetected *)v5 generatedHostTime]&& (trpDetectedAudioTimeStamp = self->_trpDetectedAudioTimeStamp, [(SMTTRPDetected *)v5 trpDetectedAudioTimeStamp], trpDetectedAudioTimeStamp == v8))
      {
        lastTRPCandidateId = [(SMTTRPDetected *)v5 lastTRPCandidateId];
        lastTRPCandidateId = self->_lastTRPCandidateId;
        if (lastTRPCandidateId == lastTRPCandidateId || [(NSString *)lastTRPCandidateId isEqual:lastTRPCandidateId])
        {
          requestId = [(SMTTRPDetected *)v5 requestId];
          requestId = self->_requestId;
          v9 = requestId == requestId || [(NSString *)requestId isEqual:requestId];
        }

        else
        {
          v9 = 0;
        }
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_generatedHostTime];
  v4 = [v3 hash];
  v5 = [(NSString *)self->_lastTRPCandidateId hash]^ v4;
  v6 = [MEMORY[0x277CCABB0] numberWithDouble:self->_trpDetectedAudioTimeStamp];
  v7 = [v6 hash];

  return v5 ^ v7;
}

- (id)_descriptionWithIndent:(unint64_t)indent
{
  v4 = objc_alloc(MEMORY[0x277CCACA8]);
  v8.receiver = self;
  v8.super_class = SMTTRPDetected;
  v5 = [(SMTTRPDetected *)&v8 description];
  v6 = [v4 initWithFormat:@"%@ {generatedHostTime = %llu, lastTRPCandidateId = %@, requestId = %@trpDetectedAudioTimeStamp = %f}", v5, self->_generatedHostTime, self->_lastTRPCandidateId, self->_requestId, *&self->_trpDetectedAudioTimeStamp];

  return v6;
}

- (SMTTRPDetected)initWithGeneratedHostTime:(unint64_t)time lastTRPCandidateId:(id)id trpDetectedAudioTimeStamp:(double)stamp
{
  idCopy = id;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __89__SMTTRPDetected_initWithGeneratedHostTime_lastTRPCandidateId_trpDetectedAudioTimeStamp___block_invoke;
  v12[3] = &unk_2784D5F50;
  v13 = idCopy;
  timeCopy = time;
  stampCopy = stamp;
  v9 = idCopy;
  v10 = [(SMTTRPDetected *)self initWithBuilder:v12];

  return v10;
}

void __89__SMTTRPDetected_initWithGeneratedHostTime_lastTRPCandidateId_trpDetectedAudioTimeStamp___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = a2;
  [v4 setGeneratedHostTime:v3];
  [v4 setLastTRPCandidateId:*(a1 + 32)];
  [v4 setRequestId:0];
  [v4 setTrpDetectedAudioTimeStamp:*(a1 + 48)];
}

- (SMTTRPDetected)initWithGeneratedHostTime:(unint64_t)time lastTRPCandidateId:(id)id trpDetectedAudioTimeStamp:(double)stamp requestId:(id)requestId
{
  idCopy = id;
  requestIdCopy = requestId;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __99__SMTTRPDetected_initWithGeneratedHostTime_lastTRPCandidateId_trpDetectedAudioTimeStamp_requestId___block_invoke;
  v16[3] = &unk_2784D5F28;
  v18 = requestIdCopy;
  timeCopy = time;
  v17 = idCopy;
  stampCopy = stamp;
  v12 = requestIdCopy;
  v13 = idCopy;
  v14 = [(SMTTRPDetected *)self initWithBuilder:v16];

  return v14;
}

void __99__SMTTRPDetected_initWithGeneratedHostTime_lastTRPCandidateId_trpDetectedAudioTimeStamp_requestId___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 48);
  v4 = a2;
  [v4 setGeneratedHostTime:v3];
  [v4 setLastTRPCandidateId:*(a1 + 32)];
  [v4 setRequestId:*(a1 + 40)];
  [v4 setTrpDetectedAudioTimeStamp:*(a1 + 56)];
}

- (SMTTRPDetected)initWithBuilder:(id)builder
{
  builderCopy = builder;
  v16.receiver = self;
  v16.super_class = SMTTRPDetected;
  v5 = [(SMTTRPDetected *)&v16 init];
  v6 = v5;
  if (builderCopy && v5)
  {
    v7 = [[_SMTTRPDetectedMutation alloc] initWithBase:0];
    builderCopy[2](builderCopy, v7);
    if ([(_SMTTRPDetectedMutation *)v7 isDirty])
    {
      v6->_generatedHostTime = [(_SMTTRPDetectedMutation *)v7 getGeneratedHostTime];
      getLastTRPCandidateId = [(_SMTTRPDetectedMutation *)v7 getLastTRPCandidateId];
      v9 = [getLastTRPCandidateId copy];
      lastTRPCandidateId = v6->_lastTRPCandidateId;
      v6->_lastTRPCandidateId = v9;

      getRequestId = [(_SMTTRPDetectedMutation *)v7 getRequestId];
      v12 = [getRequestId copy];
      requestId = v6->_requestId;
      v6->_requestId = v12;

      [(_SMTTRPDetectedMutation *)v7 getTrpDetectedAudioTimeStamp];
      v6->_trpDetectedAudioTimeStamp = v14;
    }
  }

  return v6;
}

+ (id)newWithBuilder:(id)builder
{
  builderCopy = builder;
  v4 = [objc_alloc(objc_opt_class()) initWithBuilder:builderCopy];

  return v4;
}

- (id)mutatedCopyWithMutator:(id)mutator
{
  mutatorCopy = mutator;
  if (mutatorCopy)
  {
    v5 = [[_SMTTRPDetectedMutation alloc] initWithBase:self];
    mutatorCopy[2](mutatorCopy, v5);
    if ([(_SMTTRPDetectedMutation *)v5 isDirty])
    {
      v6 = objc_alloc_init(SMTTRPDetected);
      v6->_generatedHostTime = [(_SMTTRPDetectedMutation *)v5 getGeneratedHostTime];
      getLastTRPCandidateId = [(_SMTTRPDetectedMutation *)v5 getLastTRPCandidateId];
      v8 = [getLastTRPCandidateId copy];
      lastTRPCandidateId = v6->_lastTRPCandidateId;
      v6->_lastTRPCandidateId = v8;

      getRequestId = [(_SMTTRPDetectedMutation *)v5 getRequestId];
      v11 = [getRequestId copy];
      requestId = v6->_requestId;
      v6->_requestId = v11;

      [(_SMTTRPDetectedMutation *)v5 getTrpDetectedAudioTimeStamp];
      v6->_trpDetectedAudioTimeStamp = v13;
    }

    else
    {
      v6 = [(SMTTRPDetected *)self copy];
    }
  }

  else
  {
    v6 = [(SMTTRPDetected *)self copy];
  }

  return v6;
}

@end