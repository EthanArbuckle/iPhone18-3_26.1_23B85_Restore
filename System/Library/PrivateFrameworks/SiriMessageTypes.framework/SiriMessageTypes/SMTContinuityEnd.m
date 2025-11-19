@interface SMTContinuityEnd
+ (id)newWithBuilder:(id)a3;
- (BOOL)isEqual:(id)a3;
- (SMTContinuityEnd)initWithBuilder:(id)a3;
- (SMTContinuityEnd)initWithCoder:(id)a3;
- (SMTContinuityEnd)initWithGeneratedHostTime:(unint64_t)a3 lastTRPCandidateId:(id)a4;
- (SMTContinuityEnd)initWithGeneratedHostTime:(unint64_t)a3 lastTRPCandidateId:(id)a4 requestId:(id)a5;
- (id)_descriptionWithIndent:(unint64_t)a3;
- (id)mutatedCopyWithMutator:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SMTContinuityEnd

- (void)encodeWithCoder:(id)a3
{
  v4 = MEMORY[0x277CCABB0];
  generatedHostTime = self->_generatedHostTime;
  v7 = a3;
  v6 = [v4 numberWithUnsignedLongLong:generatedHostTime];
  [v7 encodeObject:v6 forKey:@"SMTContinuityEnd::generatedHostTime"];

  [v7 encodeObject:self->_lastTRPCandidateId forKey:@"SMTContinuityEnd::lastTRPCandidateId"];
  [v7 encodeObject:self->_requestId forKey:@"SMTContinuityEnd::requestId"];
}

- (SMTContinuityEnd)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SMTContinuityEnd::generatedHostTime"];
  v6 = [v5 unsignedLongLongValue];

  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SMTContinuityEnd::lastTRPCandidateId"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SMTContinuityEnd::requestId"];

  v9 = [(SMTContinuityEnd *)self initWithGeneratedHostTime:v6 lastTRPCandidateId:v7 requestId:v8];
  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      generatedHostTime = self->_generatedHostTime;
      if (generatedHostTime == [(SMTContinuityEnd *)v5 generatedHostTime])
      {
        v7 = [(SMTContinuityEnd *)v5 lastTRPCandidateId];
        lastTRPCandidateId = self->_lastTRPCandidateId;
        if (lastTRPCandidateId == v7 || [(NSString *)lastTRPCandidateId isEqual:v7])
        {
          v9 = [(SMTContinuityEnd *)v5 requestId];
          requestId = self->_requestId;
          v11 = requestId == v9 || [(NSString *)requestId isEqual:v9];
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

- (id)_descriptionWithIndent:(unint64_t)a3
{
  v4 = objc_alloc(MEMORY[0x277CCACA8]);
  v8.receiver = self;
  v8.super_class = SMTContinuityEnd;
  v5 = [(SMTContinuityEnd *)&v8 description];
  v6 = [v4 initWithFormat:@"%@ {generatedHostTime = %llu, lastTRPCandidateId = %@, requestId = %@}", v5, self->_generatedHostTime, self->_lastTRPCandidateId, self->_requestId];

  return v6;
}

- (SMTContinuityEnd)initWithGeneratedHostTime:(unint64_t)a3 lastTRPCandidateId:(id)a4
{
  v6 = a4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __65__SMTContinuityEnd_initWithGeneratedHostTime_lastTRPCandidateId___block_invoke;
  v10[3] = &unk_2784D5B50;
  v11 = v6;
  v12 = a3;
  v7 = v6;
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

- (SMTContinuityEnd)initWithGeneratedHostTime:(unint64_t)a3 lastTRPCandidateId:(id)a4 requestId:(id)a5
{
  v8 = a4;
  v9 = a5;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __75__SMTContinuityEnd_initWithGeneratedHostTime_lastTRPCandidateId_requestId___block_invoke;
  v14[3] = &unk_2784D5B28;
  v16 = v9;
  v17 = a3;
  v15 = v8;
  v10 = v9;
  v11 = v8;
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

- (SMTContinuityEnd)initWithBuilder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = SMTContinuityEnd;
  v5 = [(SMTContinuityEnd *)&v15 init];
  v6 = v5;
  if (v4 && v5)
  {
    v7 = [[_SMTContinuityEndMutation alloc] initWithBase:0];
    v4[2](v4, v7);
    if ([(_SMTContinuityEndMutation *)v7 isDirty])
    {
      v6->_generatedHostTime = [(_SMTContinuityEndMutation *)v7 getGeneratedHostTime];
      v8 = [(_SMTContinuityEndMutation *)v7 getLastTRPCandidateId];
      v9 = [v8 copy];
      lastTRPCandidateId = v6->_lastTRPCandidateId;
      v6->_lastTRPCandidateId = v9;

      v11 = [(_SMTContinuityEndMutation *)v7 getRequestId];
      v12 = [v11 copy];
      requestId = v6->_requestId;
      v6->_requestId = v12;
    }
  }

  return v6;
}

+ (id)newWithBuilder:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(objc_opt_class()) initWithBuilder:v3];

  return v4;
}

- (id)mutatedCopyWithMutator:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [[_SMTContinuityEndMutation alloc] initWithBase:self];
    v4[2](v4, v5);
    if ([(_SMTContinuityEndMutation *)v5 isDirty])
    {
      v6 = objc_alloc_init(SMTContinuityEnd);
      v6->_generatedHostTime = [(_SMTContinuityEndMutation *)v5 getGeneratedHostTime];
      v7 = [(_SMTContinuityEndMutation *)v5 getLastTRPCandidateId];
      v8 = [v7 copy];
      lastTRPCandidateId = v6->_lastTRPCandidateId;
      v6->_lastTRPCandidateId = v8;

      v10 = [(_SMTContinuityEndMutation *)v5 getRequestId];
      v11 = [v10 copy];
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