@interface _SMTTCUPackageMutation
- (_SMTTCUPackageMutation)initWithBase:(id)a3;
- (double)getEndAudioTimeStampInMs;
- (double)getStartAudioTimeStampInMs;
- (id)getPrevTCUIds;
- (id)getRequestId;
- (id)getSiriIntendedInfo;
- (id)getSpeechPackage;
- (id)getTcuId;
- (int64_t)getNeuralCombinerMitigationDecision;
- (int64_t)getSpeechEvent;
- (int64_t)getTcuState;
- (int64_t)getVoiceTriggerPhraseType;
@end

@implementation _SMTTCUPackageMutation

- (int64_t)getNeuralCombinerMitigationDecision
{
  if ((*&self->_mutationFlags & 0x800) != 0)
  {
    return self->_neuralCombinerMitigationDecision;
  }

  else
  {
    return [(SMTTCUPackage *)self->_base neuralCombinerMitigationDecision];
  }
}

- (id)getSpeechPackage
{
  if ((*&self->_mutationFlags & 0x400) != 0)
  {
    v2 = self->_speechPackage;
  }

  else
  {
    v2 = [(SMTTCUPackage *)self->_base speechPackage];
  }

  return v2;
}

- (double)getEndAudioTimeStampInMs
{
  if ((*&self->_mutationFlags & 0x200) != 0)
  {
    return self->_endAudioTimeStampInMs;
  }

  [(SMTTCUPackage *)self->_base endAudioTimeStampInMs];
  return result;
}

- (double)getStartAudioTimeStampInMs
{
  if ((*&self->_mutationFlags & 0x100) != 0)
  {
    return self->_startAudioTimeStampInMs;
  }

  [(SMTTCUPackage *)self->_base startAudioTimeStampInMs];
  return result;
}

- (id)getPrevTCUIds
{
  if ((*&self->_mutationFlags & 0x80) != 0)
  {
    v2 = self->_prevTCUIds;
  }

  else
  {
    v2 = [(SMTTCUPackage *)self->_base prevTCUIds];
  }

  return v2;
}

- (id)getSiriIntendedInfo
{
  if ((*&self->_mutationFlags & 0x40) != 0)
  {
    v2 = self->_siriIntendedInfo;
  }

  else
  {
    v2 = [(SMTTCUPackage *)self->_base siriIntendedInfo];
  }

  return v2;
}

- (int64_t)getVoiceTriggerPhraseType
{
  if ((*&self->_mutationFlags & 0x20) != 0)
  {
    return self->_voiceTriggerPhraseType;
  }

  else
  {
    return [(SMTTCUPackage *)self->_base voiceTriggerPhraseType];
  }
}

- (int64_t)getSpeechEvent
{
  if ((*&self->_mutationFlags & 0x10) != 0)
  {
    return self->_speechEvent;
  }

  else
  {
    return [(SMTTCUPackage *)self->_base speechEvent];
  }
}

- (int64_t)getTcuState
{
  if ((*&self->_mutationFlags & 8) != 0)
  {
    return self->_tcuState;
  }

  else
  {
    return [(SMTTCUPackage *)self->_base tcuState];
  }
}

- (id)getRequestId
{
  if ((*&self->_mutationFlags & 4) != 0)
  {
    v2 = self->_requestId;
  }

  else
  {
    v2 = [(SMTTCUPackage *)self->_base requestId];
  }

  return v2;
}

- (id)getTcuId
{
  if ((*&self->_mutationFlags & 2) != 0)
  {
    v2 = self->_tcuId;
  }

  else
  {
    v2 = [(SMTTCUPackage *)self->_base tcuId];
  }

  return v2;
}

- (_SMTTCUPackageMutation)initWithBase:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _SMTTCUPackageMutation;
  v6 = [(_SMTTCUPackageMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_base, a3);
  }

  return v7;
}

@end