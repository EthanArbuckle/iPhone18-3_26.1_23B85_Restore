@interface _SMTTRPCandidateMutation
- (BOOL)getIsContinuous;
- (_SMTTRPCandidateMutation)initWithBase:(id)base;
- (id)getRequestId;
- (id)getTcuList;
- (id)getTrpCandidateId;
- (id)getUserId;
@end

@implementation _SMTTRPCandidateMutation

- (BOOL)getIsContinuous
{
  if ((*&self->_mutationFlags & 0x20) != 0)
  {
    return self->_isContinuous;
  }

  else
  {
    return [(SMTTRPCandidate *)self->_base isContinuous];
  }
}

- (id)getUserId
{
  if ((*&self->_mutationFlags & 0x10) != 0)
  {
    userId = self->_userId;
  }

  else
  {
    userId = [(SMTTRPCandidate *)self->_base userId];
  }

  return userId;
}

- (id)getTcuList
{
  if ((*&self->_mutationFlags & 8) != 0)
  {
    tcuList = self->_tcuList;
  }

  else
  {
    tcuList = [(SMTTRPCandidate *)self->_base tcuList];
  }

  return tcuList;
}

- (id)getRequestId
{
  if ((*&self->_mutationFlags & 4) != 0)
  {
    requestId = self->_requestId;
  }

  else
  {
    requestId = [(SMTTRPCandidate *)self->_base requestId];
  }

  return requestId;
}

- (id)getTrpCandidateId
{
  if ((*&self->_mutationFlags & 2) != 0)
  {
    trpCandidateId = self->_trpCandidateId;
  }

  else
  {
    trpCandidateId = [(SMTTRPCandidate *)self->_base trpCandidateId];
  }

  return trpCandidateId;
}

- (_SMTTRPCandidateMutation)initWithBase:(id)base
{
  baseCopy = base;
  v9.receiver = self;
  v9.super_class = _SMTTRPCandidateMutation;
  v6 = [(_SMTTRPCandidateMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_base, base);
  }

  return v7;
}

@end