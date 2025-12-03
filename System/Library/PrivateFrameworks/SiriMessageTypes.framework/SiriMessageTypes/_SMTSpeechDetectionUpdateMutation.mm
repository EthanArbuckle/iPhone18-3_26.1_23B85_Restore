@interface _SMTSpeechDetectionUpdateMutation
- (BOOL)getSpeechDetected;
- (_SMTSpeechDetectionUpdateMutation)initWithBase:(id)base;
- (id)getLastTRPCandidateId;
- (int64_t)getProcessedAudioDurationMs;
- (int64_t)getTrailingSilenceDurationMs;
- (unint64_t)getWordCount;
@end

@implementation _SMTSpeechDetectionUpdateMutation

- (unint64_t)getWordCount
{
  if ((*&self->_mutationFlags & 0x20) != 0)
  {
    return self->_wordCount;
  }

  else
  {
    return [(SMTSpeechDetectionUpdate *)self->_base wordCount];
  }
}

- (int64_t)getTrailingSilenceDurationMs
{
  if ((*&self->_mutationFlags & 0x10) != 0)
  {
    return self->_trailingSilenceDurationMs;
  }

  else
  {
    return [(SMTSpeechDetectionUpdate *)self->_base trailingSilenceDurationMs];
  }
}

- (int64_t)getProcessedAudioDurationMs
{
  if ((*&self->_mutationFlags & 8) != 0)
  {
    return self->_processedAudioDurationMs;
  }

  else
  {
    return [(SMTSpeechDetectionUpdate *)self->_base processedAudioDurationMs];
  }
}

- (id)getLastTRPCandidateId
{
  if ((*&self->_mutationFlags & 4) != 0)
  {
    lastTRPCandidateId = self->_lastTRPCandidateId;
  }

  else
  {
    lastTRPCandidateId = [(SMTSpeechDetectionUpdate *)self->_base lastTRPCandidateId];
  }

  return lastTRPCandidateId;
}

- (BOOL)getSpeechDetected
{
  if ((*&self->_mutationFlags & 2) != 0)
  {
    return self->_speechDetected;
  }

  else
  {
    return [(SMTSpeechDetectionUpdate *)self->_base speechDetected];
  }
}

- (_SMTSpeechDetectionUpdateMutation)initWithBase:(id)base
{
  baseCopy = base;
  v9.receiver = self;
  v9.super_class = _SMTSpeechDetectionUpdateMutation;
  v6 = [(_SMTSpeechDetectionUpdateMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_base, base);
  }

  return v7;
}

@end