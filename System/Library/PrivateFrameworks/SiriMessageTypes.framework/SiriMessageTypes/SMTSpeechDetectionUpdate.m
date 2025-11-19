@interface SMTSpeechDetectionUpdate
+ (id)newWithBuilder:(id)a3;
- (BOOL)isEqual:(id)a3;
- (SMTSpeechDetectionUpdate)initWithBuilder:(id)a3;
- (SMTSpeechDetectionUpdate)initWithCoder:(id)a3;
- (id)_descriptionWithIndent:(unint64_t)a3;
- (id)mutatedCopyWithMutator:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SMTSpeechDetectionUpdate

- (void)encodeWithCoder:(id)a3
{
  v4 = MEMORY[0x277CCABB0];
  speechDetected = self->_speechDetected;
  v6 = a3;
  v7 = [v4 numberWithBool:speechDetected];
  [v6 encodeObject:v7 forKey:@"speechDetected"];

  [v6 encodeObject:self->_lastTRPCandidateId forKey:@"lastTRPCandidateId"];
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:self->_processedAudioDurationMs];
  [v6 encodeObject:v8 forKey:@"processedAudioDurationMs"];

  v9 = [MEMORY[0x277CCABB0] numberWithInteger:self->_trailingSilenceDurationMs];
  [v6 encodeObject:v9 forKey:@"trailingSilenceDurationMs"];

  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_wordCount];
  [v6 encodeObject:v10 forKey:@"wordCount"];
}

- (SMTSpeechDetectionUpdate)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeBoolForKey:@"speechDetected"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lastTRPCandidateId"];
  v7 = [v4 decodeIntegerForKey:@"processedAudioDurationMs"];
  v8 = [v4 decodeIntegerForKey:@"trailingSilenceDurationMs"];
  v9 = [v4 decodeIntegerForKey:@"wordCount"];

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __42__SMTSpeechDetectionUpdate_initWithCoder___block_invoke;
  v13[3] = &unk_2784D5D70;
  v18 = v5;
  v14 = v6;
  v15 = v7;
  v16 = v8;
  v17 = v9;
  v10 = v6;
  v11 = [(SMTSpeechDetectionUpdate *)self initWithBuilder:v13];

  return v11;
}

void __42__SMTSpeechDetectionUpdate_initWithCoder___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 64);
  v4 = a2;
  [v4 setSpeechDetected:v3];
  [v4 setLastTRPCandidateId:*(a1 + 32)];
  [v4 setProcessedAudioDurationMs:*(a1 + 40)];
  [v4 setTrailingSilenceDurationMs:*(a1 + 48)];
  [v4 setWordCount:*(a1 + 56)];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      speechDetected = self->_speechDetected;
      if (speechDetected == [(SMTSpeechDetectionUpdate *)v5 speechDetected])
      {
        v7 = [(SMTSpeechDetectionUpdate *)v5 lastTRPCandidateId];
        lastTRPCandidateId = self->_lastTRPCandidateId;
        if ((lastTRPCandidateId == v7 || [(NSString *)lastTRPCandidateId isEqual:v7]) && (processedAudioDurationMs = self->_processedAudioDurationMs, processedAudioDurationMs == [(SMTSpeechDetectionUpdate *)v5 processedAudioDurationMs]) && (trailingSilenceDurationMs = self->_trailingSilenceDurationMs, trailingSilenceDurationMs == [(SMTSpeechDetectionUpdate *)v5 trailingSilenceDurationMs]))
        {
          wordCount = self->_wordCount;
          v12 = wordCount == [(SMTSpeechDetectionUpdate *)v5 wordCount];
        }

        else
        {
          v12 = 0;
        }
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x277CCABB0] numberWithBool:self->_speechDetected];
  v4 = [v3 hash];
  v5 = [(NSString *)self->_lastTRPCandidateId hash]^ v4;
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:self->_processedAudioDurationMs];
  v7 = [v6 hash];
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:self->_trailingSilenceDurationMs];
  v9 = v5 ^ v7 ^ [v8 hash];
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_wordCount];
  v11 = [v10 hash];

  return v9 ^ v11;
}

- (id)_descriptionWithIndent:(unint64_t)a3
{
  v4 = objc_alloc(MEMORY[0x277CCACA8]);
  v8.receiver = self;
  v8.super_class = SMTSpeechDetectionUpdate;
  v5 = [(SMTSpeechDetectionUpdate *)&v8 description];
  v6 = [v4 initWithFormat:@"%@ {speechDetected = %u, lastTRPCandidateId = %@, processedAudioDurationMs = %ldtrailingSilenceDurationMs = %ld, wordCount = %ld}", v5, self->_speechDetected, self->_lastTRPCandidateId, self->_processedAudioDurationMs, self->_trailingSilenceDurationMs, self->_wordCount];

  return v6;
}

- (SMTSpeechDetectionUpdate)initWithBuilder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = SMTSpeechDetectionUpdate;
  v5 = [(SMTSpeechDetectionUpdate *)&v11 init];
  v6 = v5;
  if (v4 && v5)
  {
    v7 = [[_SMTSpeechDetectionUpdateMutation alloc] initWithBase:0];
    v4[2](v4, v7);
    if ([(_SMTSpeechDetectionUpdateMutation *)v7 isDirty])
    {
      v6->_speechDetected = [(_SMTSpeechDetectionUpdateMutation *)v7 getSpeechDetected];
      v8 = [(_SMTSpeechDetectionUpdateMutation *)v7 getLastTRPCandidateId];
      lastTRPCandidateId = v6->_lastTRPCandidateId;
      v6->_lastTRPCandidateId = v8;

      v6->_processedAudioDurationMs = [(_SMTSpeechDetectionUpdateMutation *)v7 getProcessedAudioDurationMs];
      v6->_trailingSilenceDurationMs = [(_SMTSpeechDetectionUpdateMutation *)v7 getTrailingSilenceDurationMs];
      v6->_wordCount = [(_SMTSpeechDetectionUpdateMutation *)v7 getWordCount];
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
    v5 = [[_SMTSpeechDetectionUpdateMutation alloc] initWithBase:self];
    v4[2](v4, v5);
    if ([(_SMTSpeechDetectionUpdateMutation *)v5 isDirty])
    {
      v6 = objc_alloc_init(SMTSpeechDetectionUpdate);
      v6->_speechDetected = [(_SMTSpeechDetectionUpdateMutation *)v5 getSpeechDetected];
      v7 = [(_SMTSpeechDetectionUpdateMutation *)v5 getLastTRPCandidateId];
      v8 = [v7 copy];
      lastTRPCandidateId = v6->_lastTRPCandidateId;
      v6->_lastTRPCandidateId = v8;

      v6->_processedAudioDurationMs = [(_SMTSpeechDetectionUpdateMutation *)v5 getProcessedAudioDurationMs];
      v6->_trailingSilenceDurationMs = [(_SMTSpeechDetectionUpdateMutation *)v5 getTrailingSilenceDurationMs];
      v6->_wordCount = [(_SMTSpeechDetectionUpdateMutation *)v5 getWordCount];
    }

    else
    {
      v6 = [(SMTSpeechDetectionUpdate *)self copy];
    }
  }

  else
  {
    v6 = [(SMTSpeechDetectionUpdate *)self copy];
  }

  return v6;
}

@end