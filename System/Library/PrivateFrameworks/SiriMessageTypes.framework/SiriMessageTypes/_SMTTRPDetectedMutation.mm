@interface _SMTTRPDetectedMutation
- (_SMTTRPDetectedMutation)initWithBase:(id)a3;
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
    v2 = self->_requestId;
  }

  else
  {
    v2 = [(SMTTRPDetected *)self->_base requestId];
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
    v2 = [(SMTTRPDetected *)self->_base lastTRPCandidateId];
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
    return [(SMTTRPDetected *)self->_base generatedHostTime];
  }
}

- (_SMTTRPDetectedMutation)initWithBase:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _SMTTRPDetectedMutation;
  v6 = [(_SMTTRPDetectedMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_base, a3);
  }

  return v7;
}

@end