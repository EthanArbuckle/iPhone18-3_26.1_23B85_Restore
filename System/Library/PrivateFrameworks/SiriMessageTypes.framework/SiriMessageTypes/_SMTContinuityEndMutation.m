@interface _SMTContinuityEndMutation
- (_SMTContinuityEndMutation)initWithBase:(id)a3;
- (id)getLastTRPCandidateId;
- (id)getRequestId;
- (unint64_t)getGeneratedHostTime;
@end

@implementation _SMTContinuityEndMutation

- (id)getRequestId
{
  if ((*&self->_mutationFlags & 8) != 0)
  {
    v2 = self->_requestId;
  }

  else
  {
    v2 = [(SMTContinuityEnd *)self->_base requestId];
  }

  return v2;
}

- (id)getLastTRPCandidateId
{
  if ((*&self->_mutationFlags & 4) != 0)
  {
    v2 = self->_lastTRPCandidateId;
  }

  else
  {
    v2 = [(SMTContinuityEnd *)self->_base lastTRPCandidateId];
  }

  return v2;
}

- (unint64_t)getGeneratedHostTime
{
  if ((*&self->_mutationFlags & 2) != 0)
  {
    return self->_generatedHostTime;
  }

  else
  {
    return [(SMTContinuityEnd *)self->_base generatedHostTime];
  }
}

- (_SMTContinuityEndMutation)initWithBase:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _SMTContinuityEndMutation;
  v6 = [(_SMTContinuityEndMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_base, a3);
  }

  return v7;
}

@end