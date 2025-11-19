@interface _SMTTRPCandidateMutation
- (BOOL)getIsContinuous;
- (_SMTTRPCandidateMutation)initWithBase:(id)a3;
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
    v2 = self->_userId;
  }

  else
  {
    v2 = [(SMTTRPCandidate *)self->_base userId];
  }

  return v2;
}

- (id)getTcuList
{
  if ((*&self->_mutationFlags & 8) != 0)
  {
    v2 = self->_tcuList;
  }

  else
  {
    v2 = [(SMTTRPCandidate *)self->_base tcuList];
  }

  return v2;
}

- (id)getRequestId
{
  if ((*&self->_mutationFlags & 4) != 0)
  {
    v2 = self->_requestId;
  }

  else
  {
    v2 = [(SMTTRPCandidate *)self->_base requestId];
  }

  return v2;
}

- (id)getTrpCandidateId
{
  if ((*&self->_mutationFlags & 2) != 0)
  {
    v2 = self->_trpCandidateId;
  }

  else
  {
    v2 = [(SMTTRPCandidate *)self->_base trpCandidateId];
  }

  return v2;
}

- (_SMTTRPCandidateMutation)initWithBase:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _SMTTRPCandidateMutation;
  v6 = [(_SMTTRPCandidateMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_base, a3);
  }

  return v7;
}

@end