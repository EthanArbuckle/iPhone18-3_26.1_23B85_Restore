@interface SMTTCUPackage
+ (id)newWithBuilder:(id)builder;
- (BOOL)isEqual:(id)equal;
- (SMTTCUPackage)initWithBuilder:(id)builder;
- (SMTTCUPackage)initWithCoder:(id)coder;
- (SMTTCUPackage)initWithTcuId:(id)id requestId:(id)requestId tcuState:(int64_t)state speechEvent:(int64_t)event voiceTriggerPhraseType:(int64_t)type siriIntendedInfo:(id)info prevTCUIds:(id)ids startAudioTimeStampInMs:(double)self0 endAudioTimeStampInMs:(double)self1 speechPackage:(id)self2;
- (id)_descriptionWithIndent:(unint64_t)indent;
- (id)mutatedCopyWithMutator:(id)mutator;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SMTTCUPackage

- (void)encodeWithCoder:(id)coder
{
  tcuId = self->_tcuId;
  coderCopy = coder;
  [coderCopy encodeObject:tcuId forKey:@"SMTTCUPackage::tcuId"];
  [coderCopy encodeObject:self->_requestId forKey:@"SMTTCUPackage::requestId"];
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:self->_tcuState];
  [coderCopy encodeObject:v5 forKey:@"SMTTCUPackage::tcuState"];

  v6 = [MEMORY[0x277CCABB0] numberWithInteger:self->_speechEvent];
  [coderCopy encodeObject:v6 forKey:@"SMTTCUPackage::speechEvent"];

  v7 = [MEMORY[0x277CCABB0] numberWithInteger:self->_voiceTriggerPhraseType];
  [coderCopy encodeObject:v7 forKey:@"SMTTCUPackage::voiceTriggerPhraseType"];

  [coderCopy encodeObject:self->_siriIntendedInfo forKey:@"SMTTCUPackage::siriIntendedInfo"];
  [coderCopy encodeObject:self->_prevTCUIds forKey:@"SMTTCUPackage::prevTCUIds"];
  v8 = [MEMORY[0x277CCABB0] numberWithDouble:self->_startAudioTimeStampInMs];
  [coderCopy encodeObject:v8 forKey:@"SMTTCUPackage::startAudioTimeStampInMs"];

  v9 = [MEMORY[0x277CCABB0] numberWithDouble:self->_endAudioTimeStampInMs];
  [coderCopy encodeObject:v9 forKey:@"SMTTCUPackage::endAudioTimeStampInMs"];

  [coderCopy encodeObject:self->_speechPackage forKey:@"SMTTCUPackage::speechPackage"];
}

- (SMTTCUPackage)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SMTTCUPackage::tcuId"];
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SMTTCUPackage::requestId"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SMTTCUPackage::tcuState"];
  integerValue = [v6 integerValue];

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SMTTCUPackage::speechEvent"];
  integerValue2 = [v7 integerValue];

  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SMTTCUPackage::voiceTriggerPhraseType"];
  integerValue3 = [v9 integerValue];

  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SMTTCUPackage::siriIntendedInfo"];
  v12 = MEMORY[0x277CBEB98];
  v13 = objc_opt_class();
  v14 = [v12 setWithObjects:{v13, objc_opt_class(), 0}];
  v15 = [coderCopy decodeObjectOfClasses:v14 forKey:@"SMTTCUPackage::prevTCUIds"];

  v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SMTTCUPackage::startAudioTimeStampInMs"];
  [v16 doubleValue];
  v18 = v17;

  v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SMTTCUPackage::endAudioTimeStampInMs"];
  [v19 doubleValue];
  v21 = v20;

  v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SMTTCUPackage::speechPackage"];

  v23 = [(SMTTCUPackage *)self initWithTcuId:v4 requestId:v5 tcuState:integerValue speechEvent:integerValue2 voiceTriggerPhraseType:integerValue3 siriIntendedInfo:v11 prevTCUIds:v18 startAudioTimeStampInMs:v21 endAudioTimeStampInMs:v15 speechPackage:v22];
  return v23;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      tcuState = self->_tcuState;
      if (tcuState == [(SMTTCUPackage *)v5 tcuState]&& (speechEvent = self->_speechEvent, speechEvent == [(SMTTCUPackage *)v5 speechEvent]) && (voiceTriggerPhraseType = self->_voiceTriggerPhraseType, voiceTriggerPhraseType == [(SMTTCUPackage *)v5 voiceTriggerPhraseType]) && (startAudioTimeStampInMs = self->_startAudioTimeStampInMs, [(SMTTCUPackage *)v5 startAudioTimeStampInMs], startAudioTimeStampInMs == v10) && (endAudioTimeStampInMs = self->_endAudioTimeStampInMs, [(SMTTCUPackage *)v5 endAudioTimeStampInMs], endAudioTimeStampInMs == v12))
      {
        tcuId = [(SMTTCUPackage *)v5 tcuId];
        tcuId = self->_tcuId;
        if (tcuId == tcuId || [(NSString *)tcuId isEqual:tcuId])
        {
          requestId = [(SMTTCUPackage *)v5 requestId];
          requestId = self->_requestId;
          if (requestId == requestId || [(NSString *)requestId isEqual:requestId])
          {
            siriIntendedInfo = [(SMTTCUPackage *)v5 siriIntendedInfo];
            siriIntendedInfo = self->_siriIntendedInfo;
            if (siriIntendedInfo == siriIntendedInfo || [(SMTSiriIntendedInfo *)siriIntendedInfo isEqual:siriIntendedInfo])
            {
              prevTCUIds = [(SMTTCUPackage *)v5 prevTCUIds];
              prevTCUIds = self->_prevTCUIds;
              if (prevTCUIds == prevTCUIds || [(NSArray *)prevTCUIds isEqual:prevTCUIds])
              {
                speechPackage = [(SMTTCUPackage *)v5 speechPackage];
                speechPackage = self->_speechPackage;
                v13 = speechPackage == speechPackage || [(AFSpeechPackage *)speechPackage isEqual:speechPackage];
              }

              else
              {
                v13 = 0;
              }
            }

            else
            {
              v13 = 0;
            }
          }

          else
          {
            v13 = 0;
          }
        }

        else
        {
          v13 = 0;
        }
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }
  }

  return v13;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_tcuId hash];
  v4 = [(NSString *)self->_requestId hash]^ v3;
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:self->_tcuState];
  v6 = v4 ^ [v5 hash];
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:self->_speechEvent];
  v8 = [v7 hash];
  v9 = [MEMORY[0x277CCABB0] numberWithInteger:self->_voiceTriggerPhraseType];
  v10 = v6 ^ v8 ^ [v9 hash];
  v11 = [(SMTSiriIntendedInfo *)self->_siriIntendedInfo hash];
  v12 = v11 ^ [(NSArray *)self->_prevTCUIds hash];
  v13 = [MEMORY[0x277CCABB0] numberWithDouble:self->_startAudioTimeStampInMs];
  v14 = v12 ^ [v13 hash];
  v15 = [MEMORY[0x277CCABB0] numberWithDouble:self->_endAudioTimeStampInMs];
  v16 = v10 ^ v14 ^ [v15 hash];
  v17 = [(AFSpeechPackage *)self->_speechPackage hash];

  return v16 ^ v17;
}

- (id)_descriptionWithIndent:(unint64_t)indent
{
  v4 = objc_alloc(MEMORY[0x277CCACA8]);
  v17.receiver = self;
  v17.super_class = SMTTCUPackage;
  v5 = [(SMTTCUPackage *)&v17 description];
  tcuState = self->_tcuState;
  if (tcuState > 4)
  {
    v7 = @"(unknown)";
  }

  else
  {
    v7 = off_2784D5E10[tcuState];
  }

  tcuId = self->_tcuId;
  requestId = self->_requestId;
  v10 = v7;
  speechEvent = self->_speechEvent;
  voiceTriggerPhraseType = self->_voiceTriggerPhraseType;
  if (voiceTriggerPhraseType > 2)
  {
    v13 = @"(unknown)";
  }

  else
  {
    v13 = off_2784D5F90[voiceTriggerPhraseType];
  }

  v14 = v13;
  v15 = [v4 initWithFormat:@"%@ {tcuId = %@, requestId = %@, tcuState = %@, speechEvent = %lld, voiceTriggerPhraseType = %@, siriIntendedInfo = %@, prevTCUIds = %@, startAudioTimeStampInMs = %f, endAudioTimeStampInMs = %f, speechPackage = %@, neuralCombinerMitigationDecision = %@}", v5, tcuId, requestId, v10, speechEvent, v14, self->_siriIntendedInfo, self->_prevTCUIds, *&self->_startAudioTimeStampInMs, *&self->_endAudioTimeStampInMs, self->_speechPackage, self->_neuralCombinerMitigationDecision];

  return v15;
}

- (SMTTCUPackage)initWithTcuId:(id)id requestId:(id)requestId tcuState:(int64_t)state speechEvent:(int64_t)event voiceTriggerPhraseType:(int64_t)type siriIntendedInfo:(id)info prevTCUIds:(id)ids startAudioTimeStampInMs:(double)self0 endAudioTimeStampInMs:(double)self1 speechPackage:(id)self2
{
  idCopy = id;
  requestIdCopy = requestId;
  infoCopy = info;
  idsCopy = ids;
  packageCopy = package;
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __173__SMTTCUPackage_initWithTcuId_requestId_tcuState_speechEvent_voiceTriggerPhraseType_siriIntendedInfo_prevTCUIds_startAudioTimeStampInMs_endAudioTimeStampInMs_speechPackage___block_invoke;
  v32[3] = &unk_2784D5DF0;
  v33 = idCopy;
  v34 = requestIdCopy;
  eventCopy = event;
  typeCopy = type;
  v35 = infoCopy;
  v36 = idsCopy;
  msCopy = ms;
  inMsCopy = inMs;
  v37 = packageCopy;
  stateCopy = state;
  v25 = packageCopy;
  v26 = idsCopy;
  v27 = infoCopy;
  v28 = requestIdCopy;
  v29 = idCopy;
  v30 = [(SMTTCUPackage *)self initWithBuilder:v32];

  return v30;
}

void __173__SMTTCUPackage_initWithTcuId_requestId_tcuState_speechEvent_voiceTriggerPhraseType_siriIntendedInfo_prevTCUIds_startAudioTimeStampInMs_endAudioTimeStampInMs_speechPackage___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setTcuId:v3];
  [v4 setRequestId:*(a1 + 40)];
  [v4 setTcuState:*(a1 + 72)];
  [v4 setSpeechEvent:*(a1 + 80)];
  [v4 setVoiceTriggerPhraseType:*(a1 + 88)];
  [v4 setSiriIntendedInfo:*(a1 + 48)];
  [v4 setPrevTCUIds:*(a1 + 56)];
  [v4 setStartAudioTimeStampInMs:*(a1 + 96)];
  [v4 setEndAudioTimeStampInMs:*(a1 + 104)];
  [v4 setSpeechPackage:*(a1 + 64)];
}

- (SMTTCUPackage)initWithBuilder:(id)builder
{
  builderCopy = builder;
  v26.receiver = self;
  v26.super_class = SMTTCUPackage;
  v5 = [(SMTTCUPackage *)&v26 init];
  v6 = v5;
  if (builderCopy && v5)
  {
    v7 = [[_SMTTCUPackageMutation alloc] initWithBase:0];
    builderCopy[2](builderCopy, v7);
    if ([(_SMTTCUPackageMutation *)v7 isDirty])
    {
      getTcuId = [(_SMTTCUPackageMutation *)v7 getTcuId];
      v9 = [getTcuId copy];
      tcuId = v6->_tcuId;
      v6->_tcuId = v9;

      getRequestId = [(_SMTTCUPackageMutation *)v7 getRequestId];
      v12 = [getRequestId copy];
      requestId = v6->_requestId;
      v6->_requestId = v12;

      v6->_tcuState = [(_SMTTCUPackageMutation *)v7 getTcuState];
      v6->_speechEvent = [(_SMTTCUPackageMutation *)v7 getSpeechEvent];
      v6->_voiceTriggerPhraseType = [(_SMTTCUPackageMutation *)v7 getVoiceTriggerPhraseType];
      getSiriIntendedInfo = [(_SMTTCUPackageMutation *)v7 getSiriIntendedInfo];
      v15 = [getSiriIntendedInfo copy];
      siriIntendedInfo = v6->_siriIntendedInfo;
      v6->_siriIntendedInfo = v15;

      getPrevTCUIds = [(_SMTTCUPackageMutation *)v7 getPrevTCUIds];
      v18 = [getPrevTCUIds copy];
      prevTCUIds = v6->_prevTCUIds;
      v6->_prevTCUIds = v18;

      [(_SMTTCUPackageMutation *)v7 getStartAudioTimeStampInMs];
      v6->_startAudioTimeStampInMs = v20;
      [(_SMTTCUPackageMutation *)v7 getEndAudioTimeStampInMs];
      v6->_endAudioTimeStampInMs = v21;
      getSpeechPackage = [(_SMTTCUPackageMutation *)v7 getSpeechPackage];
      v23 = [getSpeechPackage copy];
      speechPackage = v6->_speechPackage;
      v6->_speechPackage = v23;

      v6->_neuralCombinerMitigationDecision = [(_SMTTCUPackageMutation *)v7 getNeuralCombinerMitigationDecision];
    }
  }

  return v6;
}

+ (id)newWithBuilder:(id)builder
{
  builderCopy = builder;
  v4 = [objc_alloc(objc_opt_class()) initWithBuilder:builderCopy];

  return v4;
}

- (id)mutatedCopyWithMutator:(id)mutator
{
  mutatorCopy = mutator;
  if (mutatorCopy)
  {
    v5 = [[_SMTTCUPackageMutation alloc] initWithBase:self];
    mutatorCopy[2](mutatorCopy, v5);
    if ([(_SMTTCUPackageMutation *)v5 isDirty])
    {
      v6 = objc_alloc_init(SMTTCUPackage);
      getTcuId = [(_SMTTCUPackageMutation *)v5 getTcuId];
      v8 = [getTcuId copy];
      tcuId = v6->_tcuId;
      v6->_tcuId = v8;

      getRequestId = [(_SMTTCUPackageMutation *)v5 getRequestId];
      v11 = [getRequestId copy];
      requestId = v6->_requestId;
      v6->_requestId = v11;

      v6->_tcuState = [(_SMTTCUPackageMutation *)v5 getTcuState];
      v6->_speechEvent = [(_SMTTCUPackageMutation *)v5 getSpeechEvent];
      v6->_voiceTriggerPhraseType = [(_SMTTCUPackageMutation *)v5 getVoiceTriggerPhraseType];
      getSiriIntendedInfo = [(_SMTTCUPackageMutation *)v5 getSiriIntendedInfo];
      v14 = [getSiriIntendedInfo copy];
      siriIntendedInfo = v6->_siriIntendedInfo;
      v6->_siriIntendedInfo = v14;

      getPrevTCUIds = [(_SMTTCUPackageMutation *)v5 getPrevTCUIds];
      v17 = [getPrevTCUIds copy];
      prevTCUIds = v6->_prevTCUIds;
      v6->_prevTCUIds = v17;

      [(_SMTTCUPackageMutation *)v5 getStartAudioTimeStampInMs];
      v6->_startAudioTimeStampInMs = v19;
      [(_SMTTCUPackageMutation *)v5 getEndAudioTimeStampInMs];
      v6->_endAudioTimeStampInMs = v20;
      getSpeechPackage = [(_SMTTCUPackageMutation *)v5 getSpeechPackage];
      v22 = [getSpeechPackage copy];
      speechPackage = v6->_speechPackage;
      v6->_speechPackage = v22;
    }

    else
    {
      v6 = [(SMTTCUPackage *)self copy];
    }
  }

  else
  {
    v6 = [(SMTTCUPackage *)self copy];
  }

  return v6;
}

@end