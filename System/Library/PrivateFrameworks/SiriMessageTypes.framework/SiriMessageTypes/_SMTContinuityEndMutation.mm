@interface _SMTContinuityEndMutation
- (_SMTContinuityEndMutation)initWithBase:(id)base;
- (id)getLastTRPCandidateId;
- (id)getRequestId;
- (unint64_t)getGeneratedHostTime;
@end

@implementation _SMTContinuityEndMutation

- (id)getRequestId
{
  if ((*&self->_mutationFlags & 8) != 0)
  {
    requestId = self->_requestId;
  }

  else
  {
    requestId = [(SMTContinuityEnd *)self->_base requestId];
  }

  return requestId;
}

- (id)getLastTRPCandidateId
{
  if ((*&self->_mutationFlags & 4) != 0)
  {
    lastTRPCandidateId = self->_lastTRPCandidateId;
  }

  else
  {
    lastTRPCandidateId = [(SMTContinuityEnd *)self->_base lastTRPCandidateId];
  }

  return lastTRPCandidateId;
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

- (_SMTContinuityEndMutation)initWithBase:(id)base
{
  baseCopy = base;
  v9.receiver = self;
  v9.super_class = _SMTContinuityEndMutation;
  v6 = [(_SMTContinuityEndMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_base, base);
  }

  return v7;
}

@end