@interface _SMTTRPDetectedMutation
- (_SMTTRPDetectedMutation)initWithBase:(id)base;
- (double)getTrpDetectedAudioTimeStamp;
- (id)getLastTRPCandidateId;
- (id)getRequestId;
- (unint64_t)getGeneratedHostTime;
@end

@implementation _SMTTRPDetectedMutation

- (double)getTrpDetectedAudioTimeStamp
{
  if ((*&self->_mutationFlags & 0x10) != 0)
  {
    return self->_trpDetectedAudioTimeStamp;
  }

  [(SMTTRPDetected *)self->_base trpDetectedAudioTimeStamp];
  return result;
}

- (id)getRequestId
{
  if ((*&self->_mutationFlags & 8) != 0)
  {
    requestId = self->_requestId;
  }

  else
  {
    requestId = [(SMTTRPDetected *)self->_base requestId];
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
    lastTRPCandidateId = [(SMTTRPDetected *)self->_base lastTRPCandidateId];
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
    return [(SMTTRPDetected *)self->_base generatedHostTime];
  }
}

- (_SMTTRPDetectedMutation)initWithBase:(id)base
{
  baseCopy = base;
  v9.receiver = self;
  v9.super_class = _SMTTRPDetectedMutation;
  v6 = [(_SMTTRPDetectedMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_base, base);
  }

  return v7;
}

@end