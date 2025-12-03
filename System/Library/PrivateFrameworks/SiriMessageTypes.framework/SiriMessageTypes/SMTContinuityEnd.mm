@interface SMTContinuityEnd
+ (id)newWithBuilder:(id)builder;
- (BOOL)isEqual:(id)equal;
- (SMTContinuityEnd)initWithBuilder:(id)builder;
- (SMTContinuityEnd)initWithCoder:(id)coder;
- (SMTContinuityEnd)initWithGeneratedHostTime:(unint64_t)time lastTRPCandidateId:(id)id;
- (SMTContinuityEnd)initWithGeneratedHostTime:(unint64_t)time lastTRPCandidateId:(id)id requestId:(id)requestId;
- (id)_descriptionWithIndent:(unint64_t)indent;
- (id)mutatedCopyWithMutator:(id)mutator;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SMTContinuityEnd

- (void)encodeWithCoder:(id)coder
{
  v4 = MEMORY[0x277CCABB0];
  generatedHostTime = self->_generatedHostTime;
  coderCopy = coder;
  v6 = [v4 numberWithUnsignedLongLong:generatedHostTime];
  [coderCopy encodeObject:v6 forKey:@"SMTContinuityEnd::generatedHostTime"];

  [coderCopy encodeObject:self->_lastTRPCandidateId forKey:@"SMTContinuityEnd::lastTRPCandidateId"];
  [coderCopy encodeObject:self->_requestId forKey:@"SMTContinuityEnd::requestId"];
}

- (SMTContinuityEnd)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SMTContinuityEnd::generatedHostTime"];
  unsignedLongLongValue = [v5 unsignedLongLongValue];

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SMTContinuityEnd::lastTRPCandidateId"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SMTContinuityEnd::requestId"];

  v9 = [(SMTContinuityEnd *)self initWithGeneratedHostTime:unsignedLongLongValue lastTRPCandidateId:v7 requestId:v8];
  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      generatedHostTime = self->_generatedHostTime;
      if (generatedHostTime == [(SMTContinuityEnd *)v5 generatedHostTime])
      {
        lastTRPCandidateId = [(SMTContinuityEnd *)v5 lastTRPCandidateId];
        lastTRPCandidateId = self->_lastTRPCandidateId;
        if (lastTRPCandidateId == lastTRPCandidateId || [(NSString *)lastTRPCandidateId isEqual:lastTRPCandidateId])
        {
          requestId = [(SMTContinuityEnd *)v5 requestId];
          requestId = self->_requestId;
          v11 = requestId == requestId || [(NSString *)requestId isEqual:requestId];
        }

        else
        {
          v11 = 0;
        }
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_generatedHostTime];
  v4 = [v3 hash];
  v5 = [(NSString *)self->_lastTRPCandidateId hash];
  v6 = v5 ^ [(NSString *)self->_requestId hash];

  return v6 ^ v4;
}

- (id)_descriptionWithIndent:(unint64_t)indent
{
  v4 = objc_alloc(MEMORY[0x277CCACA8]);
  v8.receiver = self;
  v8.super_class = SMTContinuityEnd;
  v5 = [(SMTContinuityEnd *)&v8 description];
  v6 = [v4 initWithFormat:@"%@ {generatedHostTime = %llu, lastTRPCandidateId = %@, requestId = %@}", v5, self->_generatedHostTime, self->_lastTRPCandidateId, self->_requestId];

  return v6;
}

- (SMTContinuityEnd)initWithGeneratedHostTime:(unint64_t)time lastTRPCandidateId:(id)id
{
  idCopy = id;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __65__SMTContinuityEnd_initWithGeneratedHostTime_lastTRPCandidateId___block_invoke;
  v10[3] = &unk_2784D5B50;
  v11 = idCopy;
  timeCopy = time;
  v7 = idCopy;
  v8 = [(SMTContinuityEnd *)self initWithBuilder:v10];

  return v8;
}

void __65__SMTContinuityEnd_initWithGeneratedHostTime_lastTRPCandidateId___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = a2;
  [v4 setGeneratedHostTime:v3];
  [v4 setLastTRPCandidateId:*(a1 + 32)];
  [v4 setRequestId:0];
}

- (SMTContinuityEnd)initWithGeneratedHostTime:(unint64_t)time lastTRPCandidateId:(id)id requestId:(id)requestId
{
  idCopy = id;
  requestIdCopy = requestId;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __75__SMTContinuityEnd_initWithGeneratedHostTime_lastTRPCandidateId_requestId___block_invoke;
  v14[3] = &unk_2784D5B28;
  v16 = requestIdCopy;
  timeCopy = time;
  v15 = idCopy;
  v10 = requestIdCopy;
  v11 = idCopy;
  v12 = [(SMTContinuityEnd *)self initWithBuilder:v14];

  return v12;
}

void __75__SMTContinuityEnd_initWithGeneratedHostTime_lastTRPCandidateId_requestId___block_invoke(void *a1, void *a2)
{
  v3 = a1[6];
  v4 = a2;
  [v4 setGeneratedHostTime:v3];
  [v4 setLastTRPCandidateId:a1[4]];
  [v4 setRequestId:a1[5]];
}

- (SMTContinuityEnd)initWithBuilder:(id)builder
{
  builderCopy = builder;
  v15.receiver = self;
  v15.super_class = SMTContinuityEnd;
  v5 = [(SMTContinuityEnd *)&v15 init];
  v6 = v5;
  if (builderCopy && v5)
  {
    v7 = [[_SMTContinuityEndMutation alloc] initWithBase:0];
    builderCopy[2](builderCopy, v7);
    if ([(_SMTContinuityEndMutation *)v7 isDirty])
    {
      v6->_generatedHostTime = [(_SMTContinuityEndMutation *)v7 getGeneratedHostTime];
      getLastTRPCandidateId = [(_SMTContinuityEndMutation *)v7 getLastTRPCandidateId];
      v9 = [getLastTRPCandidateId copy];
      lastTRPCandidateId = v6->_lastTRPCandidateId;
      v6->_lastTRPCandidateId = v9;

      getRequestId = [(_SMTContinuityEndMutation *)v7 getRequestId];
      v12 = [getRequestId copy];
      requestId = v6->_requestId;
      v6->_requestId = v12;
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
    v5 = [[_SMTContinuityEndMutation alloc] initWithBase:self];
    mutatorCopy[2](mutatorCopy, v5);
    if ([(_SMTContinuityEndMutation *)v5 isDirty])
    {
      v6 = objc_alloc_init(SMTContinuityEnd);
      v6->_generatedHostTime = [(_SMTContinuityEndMutation *)v5 getGeneratedHostTime];
      getLastTRPCandidateId = [(_SMTContinuityEndMutation *)v5 getLastTRPCandidateId];
      v8 = [getLastTRPCandidateId copy];
      lastTRPCandidateId = v6->_lastTRPCandidateId;
      v6->_lastTRPCandidateId = v8;

      getRequestId = [(_SMTContinuityEndMutation *)v5 getRequestId];
      v11 = [getRequestId copy];
      requestId = v6->_requestId;
      v6->_requestId = v11;
    }

    else
    {
      v6 = [(SMTContinuityEnd *)self copy];
    }
  }

  else
  {
    v6 = [(SMTContinuityEnd *)self copy];
  }

  return v6;
}

@end