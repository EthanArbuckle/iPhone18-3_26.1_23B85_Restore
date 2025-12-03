@interface CDASchemaCDAUserFeedbackParticipant
- (BOOL)isEqual:(id)equal;
- (CDASchemaCDAUserFeedbackParticipant)initWithDictionary:(id)dictionary;
- (CDASchemaCDAUserFeedbackParticipant)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addProductTypes:(id)types;
- (void)setHasAlarmState:(BOOL)state;
- (void)setHasGranularBoostDecay:(BOOL)decay;
- (void)setHasGranularBoostValue:(BOOL)value;
- (void)setHasIsNearMiss:(BOOL)miss;
- (void)setHasMediaState:(BOOL)state;
- (void)setHasPsdScore:(BOOL)score;
- (void)setHasRawGoodnessScore:(BOOL)score;
- (void)setHasTimeSinceLastWinInMilliseconds:(BOOL)milliseconds;
- (void)setHasTimeSinceTriggerInMilliseconds:(BOOL)milliseconds;
- (void)setHasTimerState:(BOOL)state;
- (void)setHasTriggerType:(BOOL)type;
- (void)setHasTrumpReason:(BOOL)reason;
- (void)setHasVoiceTriggerTimeNS:(BOOL)s;
- (void)writeTo:(id)to;
@end

@implementation CDASchemaCDAUserFeedbackParticipant

- (CDASchemaCDAUserFeedbackParticipant)initWithDictionary:(id)dictionary
{
  v78 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v76.receiver = self;
  v76.super_class = CDASchemaCDAUserFeedbackParticipant;
  v5 = [(CDASchemaCDAUserFeedbackParticipant *)&v76 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"siriSpeechId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(CDASchemaCDAUserFeedbackParticipant *)v5 setSiriSpeechId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"cdaId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[SISchemaUUID alloc] initWithDictionary:v8];
      [(CDASchemaCDAUserFeedbackParticipant *)v5 setCdaId:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"requestId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[SISchemaUUID alloc] initWithDictionary:v10];
      [(CDASchemaCDAUserFeedbackParticipant *)v5 setRequestId:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"halTargetSiriSpeechId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[SISchemaUUID alloc] initWithDictionary:v12];
      [(CDASchemaCDAUserFeedbackParticipant *)v5 setHalTargetSiriSpeechId:v13];
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"decision"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[CDASchemaCDAUserFeedbackParticipant setDecision:](v5, "setDecision:", [v14 intValue]);
    }

    v15 = [dictionaryCopy objectForKeyedSubscript:@"voiceTriggerTimeNS"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[CDASchemaCDAUserFeedbackParticipant setVoiceTriggerTimeNS:](v5, "setVoiceTriggerTimeNS:", [v15 unsignedLongLongValue]);
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:@"rawGoodnessScore"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[CDASchemaCDAUserFeedbackParticipant setRawGoodnessScore:](v5, "setRawGoodnessScore:", [v16 unsignedIntValue]);
    }

    v61 = v16;
    v17 = [dictionaryCopy objectForKeyedSubscript:@"granularBoostValue"];
    objc_opt_class();
    v71 = v17;
    if (objc_opt_isKindOfClass())
    {
      -[CDASchemaCDAUserFeedbackParticipant setGranularBoostValue:](v5, "setGranularBoostValue:", [v17 unsignedIntValue]);
    }

    v18 = [dictionaryCopy objectForKeyedSubscript:@"granularBoostDecay"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v18 doubleValue];
      [(CDASchemaCDAUserFeedbackParticipant *)v5 setGranularBoostDecay:?];
    }

    v60 = v18;
    v19 = [dictionaryCopy objectForKeyedSubscript:@"trumpReason"];
    objc_opt_class();
    v70 = v19;
    if (objc_opt_isKindOfClass())
    {
      -[CDASchemaCDAUserFeedbackParticipant setTrumpReason:](v5, "setTrumpReason:", [v19 intValue]);
    }

    v62 = v15;
    v20 = [dictionaryCopy objectForKeyedSubscript:@"psdScore"];
    objc_opt_class();
    v69 = v20;
    v21 = v10;
    if (objc_opt_isKindOfClass())
    {
      -[CDASchemaCDAUserFeedbackParticipant setPsdScore:](v5, "setPsdScore:", [v20 unsignedIntValue]);
    }

    v22 = [dictionaryCopy objectForKeyedSubscript:@"mediaState"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[CDASchemaCDAUserFeedbackParticipant setMediaState:](v5, "setMediaState:", [v22 intValue]);
    }

    v23 = [dictionaryCopy objectForKeyedSubscript:@"alarmState"];
    objc_opt_class();
    v68 = v23;
    if (objc_opt_isKindOfClass())
    {
      -[CDASchemaCDAUserFeedbackParticipant setAlarmState:](v5, "setAlarmState:", [v23 intValue]);
    }

    v24 = [dictionaryCopy objectForKeyedSubscript:@"timerState"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[CDASchemaCDAUserFeedbackParticipant setTimerState:](v5, "setTimerState:", [v24 intValue]);
    }

    v25 = [dictionaryCopy objectForKeyedSubscript:@"timeSinceLastWinInMilliseconds"];
    objc_opt_class();
    v67 = v25;
    if (objc_opt_isKindOfClass())
    {
      -[CDASchemaCDAUserFeedbackParticipant setTimeSinceLastWinInMilliseconds:](v5, "setTimeSinceLastWinInMilliseconds:", [v25 unsignedLongLongValue]);
    }

    v64 = v12;
    v26 = [dictionaryCopy objectForKeyedSubscript:@"triggerType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[CDASchemaCDAUserFeedbackParticipant setTriggerType:](v5, "setTriggerType:", [v26 intValue]);
    }

    v63 = v14;
    v27 = [dictionaryCopy objectForKeyedSubscript:@"roomNameHash"];
    objc_opt_class();
    v66 = v27;
    v28 = v6;
    if (objc_opt_isKindOfClass())
    {
      v29 = [v27 copy];
      [(CDASchemaCDAUserFeedbackParticipant *)v5 setRoomNameHash:v29];
    }

    v30 = [dictionaryCopy objectForKeyedSubscript:@"timeSinceTriggerInMilliseconds"];
    objc_opt_class();
    v31 = v8;
    if (objc_opt_isKindOfClass())
    {
      -[CDASchemaCDAUserFeedbackParticipant setTimeSinceTriggerInMilliseconds:](v5, "setTimeSinceTriggerInMilliseconds:", [v30 unsignedLongLongValue]);
    }

    v57 = v30;
    v32 = [dictionaryCopy objectForKeyedSubscript:@"scoreBoosters"];
    objc_opt_class();
    v65 = v32;
    v33 = v21;
    if (objc_opt_isKindOfClass())
    {
      v34 = [[CDASchemaCDAScoreBoosters alloc] initWithDictionary:v32];
      [(CDASchemaCDAUserFeedbackParticipant *)v5 setScoreBoosters:v34];
    }

    v35 = [dictionaryCopy objectForKeyedSubscript:@"build"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v36 = [v35 copy];
      [(CDASchemaCDAUserFeedbackParticipant *)v5 setBuild:v36];
    }

    v59 = v22;
    v37 = [dictionaryCopy objectForKeyedSubscript:@"locale"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v38 = [v37 copy];
      [(CDASchemaCDAUserFeedbackParticipant *)v5 setLocale:v38];
    }

    v55 = v37;
    v56 = v35;
    v58 = v24;
    v39 = [dictionaryCopy objectForKeyedSubscript:@"advertisement"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v40 = [[CDASchemaCDAAdvertisementData alloc] initWithDictionary:v39];
      [(CDASchemaCDAUserFeedbackParticipant *)v5 setAdvertisement:v40];
    }

    v41 = [dictionaryCopy objectForKeyedSubscript:@"productTypes"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v52 = v33;
      v53 = v31;
      v54 = v28;
      v74 = 0u;
      v75 = 0u;
      v72 = 0u;
      v73 = 0u;
      v42 = v41;
      v43 = [v42 countByEnumeratingWithState:&v72 objects:v77 count:16];
      if (v43)
      {
        v44 = v43;
        v45 = *v73;
        do
        {
          for (i = 0; i != v44; ++i)
          {
            if (*v73 != v45)
            {
              objc_enumerationMutation(v42);
            }

            v47 = *(*(&v72 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v48 = [v47 copy];
              [(CDASchemaCDAUserFeedbackParticipant *)v5 addProductTypes:v48];
            }
          }

          v44 = [v42 countByEnumeratingWithState:&v72 objects:v77 count:16];
        }

        while (v44);
      }

      v31 = v53;
      v28 = v54;
      v33 = v52;
    }

    v49 = [dictionaryCopy objectForKeyedSubscript:@"isNearMiss"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[CDASchemaCDAUserFeedbackParticipant setIsNearMiss:](v5, "setIsNearMiss:", [v49 BOOLValue]);
    }

    v50 = v5;
  }

  return v5;
}

- (CDASchemaCDAUserFeedbackParticipant)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(CDASchemaCDAUserFeedbackParticipant *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(CDASchemaCDAUserFeedbackParticipant *)self dictionaryRepresentation];
  if ([MEMORY[0x1E696ACB0] isValidJSONObject:dictionaryRepresentation])
  {
    v3 = [MEMORY[0x1E696ACB0] dataWithJSONObject:dictionaryRepresentation options:0 error:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_advertisement)
  {
    advertisement = [(CDASchemaCDAUserFeedbackParticipant *)self advertisement];
    dictionaryRepresentation = [advertisement dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"advertisement"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"advertisement"];
    }
  }

  if ((*(&self->_isNearMiss + 1) & 0x100) != 0)
  {
    v7 = [(CDASchemaCDAUserFeedbackParticipant *)self alarmState]- 1;
    if (v7 > 2)
    {
      v8 = @"CDATEMPORALUTILITYSTATE_UNKNOWN";
    }

    else
    {
      v8 = off_1E78D2940[v7];
    }

    [dictionary setObject:v8 forKeyedSubscript:@"alarmState"];
  }

  if (self->_build)
  {
    build = [(CDASchemaCDAUserFeedbackParticipant *)self build];
    v10 = [build copy];
    [dictionary setObject:v10 forKeyedSubscript:@"build"];
  }

  if (self->_cdaId)
  {
    cdaId = [(CDASchemaCDAUserFeedbackParticipant *)self cdaId];
    dictionaryRepresentation2 = [cdaId dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"cdaId"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"cdaId"];
    }
  }

  v14 = *(&self->_isNearMiss + 1);
  if (v14)
  {
    decision = [(CDASchemaCDAUserFeedbackParticipant *)self decision];
    v16 = @"CDADECISION_UNKNOWN";
    if (decision == 1)
    {
      v16 = @"CDADECISION_WIN";
    }

    if (decision == 2)
    {
      v17 = @"CDADECISION_LOSS";
    }

    else
    {
      v17 = v16;
    }

    [dictionary setObject:v17 forKeyedSubscript:@"decision"];
    v14 = *(&self->_isNearMiss + 1);
  }

  if ((v14 & 0x10) != 0)
  {
    v18 = MEMORY[0x1E696AD98];
    [(CDASchemaCDAUserFeedbackParticipant *)self granularBoostDecay];
    v19 = [v18 numberWithDouble:?];
    [dictionary setObject:v19 forKeyedSubscript:@"granularBoostDecay"];

    v14 = *(&self->_isNearMiss + 1);
  }

  if ((v14 & 8) != 0)
  {
    v20 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CDASchemaCDAUserFeedbackParticipant granularBoostValue](self, "granularBoostValue")}];
    [dictionary setObject:v20 forKeyedSubscript:@"granularBoostValue"];
  }

  if (self->_halTargetSiriSpeechId)
  {
    halTargetSiriSpeechId = [(CDASchemaCDAUserFeedbackParticipant *)self halTargetSiriSpeechId];
    dictionaryRepresentation3 = [halTargetSiriSpeechId dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"halTargetSiriSpeechId"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"halTargetSiriSpeechId"];
    }
  }

  if ((*(&self->_isNearMiss + 1) & 0x2000) != 0)
  {
    v24 = [MEMORY[0x1E696AD98] numberWithBool:{-[CDASchemaCDAUserFeedbackParticipant isNearMiss](self, "isNearMiss")}];
    [dictionary setObject:v24 forKeyedSubscript:@"isNearMiss"];
  }

  if (self->_locale)
  {
    locale = [(CDASchemaCDAUserFeedbackParticipant *)self locale];
    v26 = [locale copy];
    [dictionary setObject:v26 forKeyedSubscript:@"locale"];
  }

  if ((*(&self->_isNearMiss + 1) & 0x80) != 0)
  {
    v27 = [(CDASchemaCDAUserFeedbackParticipant *)self mediaState]- 1;
    if (v27 > 5)
    {
      v28 = @"MEDIAPLAYBACKSTATE_UNKNOWN";
    }

    else
    {
      v28 = off_1E78D2910[v27];
    }

    [dictionary setObject:v28 forKeyedSubscript:@"mediaState"];
  }

  if (self->_productTypes)
  {
    productTypes = [(CDASchemaCDAUserFeedbackParticipant *)self productTypes];
    v30 = [productTypes copy];
    [dictionary setObject:v30 forKeyedSubscript:@"productTypes"];
  }

  v31 = *(&self->_isNearMiss + 1);
  if ((v31 & 0x40) != 0)
  {
    v32 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CDASchemaCDAUserFeedbackParticipant psdScore](self, "psdScore")}];
    [dictionary setObject:v32 forKeyedSubscript:@"psdScore"];

    v31 = *(&self->_isNearMiss + 1);
  }

  if ((v31 & 4) != 0)
  {
    v33 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CDASchemaCDAUserFeedbackParticipant rawGoodnessScore](self, "rawGoodnessScore")}];
    [dictionary setObject:v33 forKeyedSubscript:@"rawGoodnessScore"];
  }

  if (self->_requestId)
  {
    requestId = [(CDASchemaCDAUserFeedbackParticipant *)self requestId];
    dictionaryRepresentation4 = [requestId dictionaryRepresentation];
    if (dictionaryRepresentation4)
    {
      [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"requestId"];
    }

    else
    {
      null4 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null4 forKeyedSubscript:@"requestId"];
    }
  }

  if (self->_roomNameHash)
  {
    roomNameHash = [(CDASchemaCDAUserFeedbackParticipant *)self roomNameHash];
    v38 = [roomNameHash copy];
    [dictionary setObject:v38 forKeyedSubscript:@"roomNameHash"];
  }

  if (self->_scoreBoosters)
  {
    scoreBoosters = [(CDASchemaCDAUserFeedbackParticipant *)self scoreBoosters];
    dictionaryRepresentation5 = [scoreBoosters dictionaryRepresentation];
    if (dictionaryRepresentation5)
    {
      [dictionary setObject:dictionaryRepresentation5 forKeyedSubscript:@"scoreBoosters"];
    }

    else
    {
      null5 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null5 forKeyedSubscript:@"scoreBoosters"];
    }
  }

  if (self->_siriSpeechId)
  {
    siriSpeechId = [(CDASchemaCDAUserFeedbackParticipant *)self siriSpeechId];
    dictionaryRepresentation6 = [siriSpeechId dictionaryRepresentation];
    if (dictionaryRepresentation6)
    {
      [dictionary setObject:dictionaryRepresentation6 forKeyedSubscript:@"siriSpeechId"];
    }

    else
    {
      null6 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null6 forKeyedSubscript:@"siriSpeechId"];
    }
  }

  v45 = *(&self->_isNearMiss + 1);
  if ((v45 & 0x400) != 0)
  {
    v49 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[CDASchemaCDAUserFeedbackParticipant timeSinceLastWinInMilliseconds](self, "timeSinceLastWinInMilliseconds")}];
    [dictionary setObject:v49 forKeyedSubscript:@"timeSinceLastWinInMilliseconds"];

    v45 = *(&self->_isNearMiss + 1);
    if ((v45 & 0x1000) == 0)
    {
LABEL_68:
      if ((v45 & 0x200) == 0)
      {
        goto LABEL_69;
      }

      goto LABEL_76;
    }
  }

  else if ((*(&self->_isNearMiss + 1) & 0x1000) == 0)
  {
    goto LABEL_68;
  }

  v50 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[CDASchemaCDAUserFeedbackParticipant timeSinceTriggerInMilliseconds](self, "timeSinceTriggerInMilliseconds")}];
  [dictionary setObject:v50 forKeyedSubscript:@"timeSinceTriggerInMilliseconds"];

  v45 = *(&self->_isNearMiss + 1);
  if ((v45 & 0x200) == 0)
  {
LABEL_69:
    if ((v45 & 0x800) == 0)
    {
      goto LABEL_70;
    }

    goto LABEL_80;
  }

LABEL_76:
  v51 = [(CDASchemaCDAUserFeedbackParticipant *)self timerState]- 1;
  if (v51 > 2)
  {
    v52 = @"CDATEMPORALUTILITYSTATE_UNKNOWN";
  }

  else
  {
    v52 = off_1E78D2940[v51];
  }

  [dictionary setObject:v52 forKeyedSubscript:@"timerState"];
  v45 = *(&self->_isNearMiss + 1);
  if ((v45 & 0x800) == 0)
  {
LABEL_70:
    if ((v45 & 0x20) == 0)
    {
      goto LABEL_71;
    }

LABEL_84:
    v55 = [(CDASchemaCDAUserFeedbackParticipant *)self trumpReason]- 1;
    if (v55 > 7)
    {
      v56 = @"CDATRUMPREASON_UNKNOWN";
    }

    else
    {
      v56 = off_1E78D2998[v55];
    }

    [dictionary setObject:v56 forKeyedSubscript:@"trumpReason"];
    if ((*(&self->_isNearMiss + 1) & 2) != 0)
    {
      goto LABEL_72;
    }

    goto LABEL_73;
  }

LABEL_80:
  v53 = [(CDASchemaCDAUserFeedbackParticipant *)self triggerType]- 1;
  if (v53 > 7)
  {
    v54 = @"CDATRIGGER_UKNOWN";
  }

  else
  {
    v54 = off_1E78D2958[v53];
  }

  [dictionary setObject:v54 forKeyedSubscript:@"triggerType"];
  v45 = *(&self->_isNearMiss + 1);
  if ((v45 & 0x20) != 0)
  {
    goto LABEL_84;
  }

LABEL_71:
  if ((v45 & 2) != 0)
  {
LABEL_72:
    v46 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[CDASchemaCDAUserFeedbackParticipant voiceTriggerTimeNS](self, "voiceTriggerTimeNS")}];
    [dictionary setObject:v46 forKeyedSubscript:@"voiceTriggerTimeNS"];
  }

LABEL_73:
  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];
  v47 = dictionary;

  return dictionary;
}

- (unint64_t)hash
{
  v33 = [(SISchemaUUID *)self->_siriSpeechId hash];
  v32 = [(SISchemaUUID *)self->_cdaId hash];
  v31 = [(SISchemaUUID *)self->_requestId hash];
  v30 = [(SISchemaUUID *)self->_halTargetSiriSpeechId hash];
  v5 = *(&self->_isNearMiss + 1);
  if (v5)
  {
    v29 = 2654435761 * self->_decision;
    if ((v5 & 2) != 0)
    {
LABEL_3:
      v28 = 2654435761u * self->_voiceTriggerTimeNS;
      if ((v5 & 4) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v29 = 0;
    if ((v5 & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  v28 = 0;
  if ((v5 & 4) != 0)
  {
LABEL_4:
    v27 = 2654435761 * self->_rawGoodnessScore;
    if ((v5 & 8) != 0)
    {
      goto LABEL_5;
    }

LABEL_13:
    v26 = 0;
    if ((v5 & 0x10) != 0)
    {
      goto LABEL_6;
    }

LABEL_14:
    v9 = 0;
    goto LABEL_15;
  }

LABEL_12:
  v27 = 0;
  if ((v5 & 8) == 0)
  {
    goto LABEL_13;
  }

LABEL_5:
  v26 = 2654435761 * self->_granularBoostValue;
  if ((v5 & 0x10) == 0)
  {
    goto LABEL_14;
  }

LABEL_6:
  granularBoostDecay = self->_granularBoostDecay;
  if (granularBoostDecay < 0.0)
  {
    granularBoostDecay = -granularBoostDecay;
  }

  *v3.i64 = floor(granularBoostDecay + 0.5);
  v7 = (granularBoostDecay - *v3.i64) * 1.84467441e19;
  *v4.i64 = *v3.i64 - trunc(*v3.i64 * 5.42101086e-20) * 1.84467441e19;
  v8.f64[0] = NAN;
  v8.f64[1] = NAN;
  v9 = 2654435761u * *vbslq_s8(vnegq_f64(v8), v4, v3).i64;
  if (v7 >= 0.0)
  {
    if (v7 > 0.0)
    {
      v9 += v7;
    }
  }

  else
  {
    v9 -= fabs(v7);
  }

LABEL_15:
  if ((v5 & 0x20) != 0)
  {
    v25 = 2654435761 * self->_trumpReason;
    if ((v5 & 0x40) != 0)
    {
LABEL_17:
      v24 = 2654435761 * self->_psdScore;
      if ((v5 & 0x80) != 0)
      {
        goto LABEL_18;
      }

      goto LABEL_25;
    }
  }

  else
  {
    v25 = 0;
    if ((v5 & 0x40) != 0)
    {
      goto LABEL_17;
    }
  }

  v24 = 0;
  if ((v5 & 0x80) != 0)
  {
LABEL_18:
    v23 = 2654435761 * self->_mediaState;
    if ((*(&self->_isNearMiss + 1) & 0x100) != 0)
    {
      goto LABEL_19;
    }

    goto LABEL_26;
  }

LABEL_25:
  v23 = 0;
  if ((*(&self->_isNearMiss + 1) & 0x100) != 0)
  {
LABEL_19:
    v22 = 2654435761 * self->_alarmState;
    if ((*(&self->_isNearMiss + 1) & 0x200) != 0)
    {
      goto LABEL_20;
    }

    goto LABEL_27;
  }

LABEL_26:
  v22 = 0;
  if ((*(&self->_isNearMiss + 1) & 0x200) != 0)
  {
LABEL_20:
    v21 = 2654435761 * self->_timerState;
    if ((*(&self->_isNearMiss + 1) & 0x400) != 0)
    {
      goto LABEL_21;
    }

LABEL_28:
    v20 = 0;
    if ((*(&self->_isNearMiss + 1) & 0x800) != 0)
    {
      goto LABEL_22;
    }

    goto LABEL_29;
  }

LABEL_27:
  v21 = 0;
  if ((*(&self->_isNearMiss + 1) & 0x400) == 0)
  {
    goto LABEL_28;
  }

LABEL_21:
  v20 = 2654435761u * self->_timeSinceLastWinInMilliseconds;
  if ((*(&self->_isNearMiss + 1) & 0x800) != 0)
  {
LABEL_22:
    v19 = 2654435761 * self->_triggerType;
    goto LABEL_30;
  }

LABEL_29:
  v19 = 0;
LABEL_30:
  v10 = [(NSString *)self->_roomNameHash hash];
  if ((*(&self->_isNearMiss + 1) & 0x1000) != 0)
  {
    v11 = 2654435761u * self->_timeSinceTriggerInMilliseconds;
  }

  else
  {
    v11 = 0;
  }

  v12 = [(CDASchemaCDAScoreBoosters *)self->_scoreBoosters hash];
  v13 = [(NSString *)self->_build hash];
  v14 = [(NSString *)self->_locale hash];
  v15 = [(CDASchemaCDAAdvertisementData *)self->_advertisement hash];
  v16 = [(NSArray *)self->_productTypes hash];
  if ((*(&self->_isNearMiss + 1) & 0x2000) != 0)
  {
    v17 = 2654435761 * self->_isNearMiss;
  }

  else
  {
    v17 = 0;
  }

  return v32 ^ v33 ^ v31 ^ v30 ^ v29 ^ v28 ^ v27 ^ v26 ^ v9 ^ v25 ^ v24 ^ v23 ^ v22 ^ v21 ^ v20 ^ v19 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_102;
  }

  siriSpeechId = [(CDASchemaCDAUserFeedbackParticipant *)self siriSpeechId];
  siriSpeechId2 = [equalCopy siriSpeechId];
  if ((siriSpeechId != 0) == (siriSpeechId2 == 0))
  {
    goto LABEL_101;
  }

  siriSpeechId3 = [(CDASchemaCDAUserFeedbackParticipant *)self siriSpeechId];
  if (siriSpeechId3)
  {
    v8 = siriSpeechId3;
    siriSpeechId4 = [(CDASchemaCDAUserFeedbackParticipant *)self siriSpeechId];
    siriSpeechId5 = [equalCopy siriSpeechId];
    v11 = [siriSpeechId4 isEqual:siriSpeechId5];

    if (!v11)
    {
      goto LABEL_102;
    }
  }

  else
  {
  }

  siriSpeechId = [(CDASchemaCDAUserFeedbackParticipant *)self cdaId];
  siriSpeechId2 = [equalCopy cdaId];
  if ((siriSpeechId != 0) == (siriSpeechId2 == 0))
  {
    goto LABEL_101;
  }

  cdaId = [(CDASchemaCDAUserFeedbackParticipant *)self cdaId];
  if (cdaId)
  {
    v13 = cdaId;
    cdaId2 = [(CDASchemaCDAUserFeedbackParticipant *)self cdaId];
    cdaId3 = [equalCopy cdaId];
    v16 = [cdaId2 isEqual:cdaId3];

    if (!v16)
    {
      goto LABEL_102;
    }
  }

  else
  {
  }

  siriSpeechId = [(CDASchemaCDAUserFeedbackParticipant *)self requestId];
  siriSpeechId2 = [equalCopy requestId];
  if ((siriSpeechId != 0) == (siriSpeechId2 == 0))
  {
    goto LABEL_101;
  }

  requestId = [(CDASchemaCDAUserFeedbackParticipant *)self requestId];
  if (requestId)
  {
    v18 = requestId;
    requestId2 = [(CDASchemaCDAUserFeedbackParticipant *)self requestId];
    requestId3 = [equalCopy requestId];
    v21 = [requestId2 isEqual:requestId3];

    if (!v21)
    {
      goto LABEL_102;
    }
  }

  else
  {
  }

  siriSpeechId = [(CDASchemaCDAUserFeedbackParticipant *)self halTargetSiriSpeechId];
  siriSpeechId2 = [equalCopy halTargetSiriSpeechId];
  if ((siriSpeechId != 0) == (siriSpeechId2 == 0))
  {
    goto LABEL_101;
  }

  halTargetSiriSpeechId = [(CDASchemaCDAUserFeedbackParticipant *)self halTargetSiriSpeechId];
  if (halTargetSiriSpeechId)
  {
    v23 = halTargetSiriSpeechId;
    halTargetSiriSpeechId2 = [(CDASchemaCDAUserFeedbackParticipant *)self halTargetSiriSpeechId];
    halTargetSiriSpeechId3 = [equalCopy halTargetSiriSpeechId];
    v26 = [halTargetSiriSpeechId2 isEqual:halTargetSiriSpeechId3];

    if (!v26)
    {
      goto LABEL_102;
    }
  }

  else
  {
  }

  v27 = *(&self->_isNearMiss + 1);
  v28 = *(equalCopy + 169);
  if ((v27 & 1) != (v28 & 1))
  {
    goto LABEL_102;
  }

  if (v27)
  {
    decision = self->_decision;
    if (decision != [equalCopy decision])
    {
      goto LABEL_102;
    }

    v27 = *(&self->_isNearMiss + 1);
    v28 = *(equalCopy + 169);
  }

  v30 = (v27 >> 1) & 1;
  if (v30 != ((v28 >> 1) & 1))
  {
    goto LABEL_102;
  }

  if (v30)
  {
    voiceTriggerTimeNS = self->_voiceTriggerTimeNS;
    if (voiceTriggerTimeNS != [equalCopy voiceTriggerTimeNS])
    {
      goto LABEL_102;
    }

    v27 = *(&self->_isNearMiss + 1);
    v28 = *(equalCopy + 169);
  }

  v32 = (v27 >> 2) & 1;
  if (v32 != ((v28 >> 2) & 1))
  {
    goto LABEL_102;
  }

  if (v32)
  {
    rawGoodnessScore = self->_rawGoodnessScore;
    if (rawGoodnessScore != [equalCopy rawGoodnessScore])
    {
      goto LABEL_102;
    }

    v27 = *(&self->_isNearMiss + 1);
    v28 = *(equalCopy + 169);
  }

  v34 = (v27 >> 3) & 1;
  if (v34 != ((v28 >> 3) & 1))
  {
    goto LABEL_102;
  }

  if (v34)
  {
    granularBoostValue = self->_granularBoostValue;
    if (granularBoostValue != [equalCopy granularBoostValue])
    {
      goto LABEL_102;
    }

    v27 = *(&self->_isNearMiss + 1);
    v28 = *(equalCopy + 169);
  }

  v36 = (v27 >> 4) & 1;
  if (v36 != ((v28 >> 4) & 1))
  {
    goto LABEL_102;
  }

  if (v36)
  {
    granularBoostDecay = self->_granularBoostDecay;
    [equalCopy granularBoostDecay];
    if (granularBoostDecay != v38)
    {
      goto LABEL_102;
    }

    v27 = *(&self->_isNearMiss + 1);
    v28 = *(equalCopy + 169);
  }

  v39 = (v27 >> 5) & 1;
  if (v39 != ((v28 >> 5) & 1))
  {
    goto LABEL_102;
  }

  if (v39)
  {
    trumpReason = self->_trumpReason;
    if (trumpReason != [equalCopy trumpReason])
    {
      goto LABEL_102;
    }

    v27 = *(&self->_isNearMiss + 1);
    v28 = *(equalCopy + 169);
  }

  v41 = (v27 >> 6) & 1;
  if (v41 != ((v28 >> 6) & 1))
  {
    goto LABEL_102;
  }

  if (v41)
  {
    psdScore = self->_psdScore;
    if (psdScore != [equalCopy psdScore])
    {
      goto LABEL_102;
    }

    v27 = *(&self->_isNearMiss + 1);
    v28 = *(equalCopy + 169);
  }

  v43 = (v27 >> 7) & 1;
  if (v43 != ((v28 >> 7) & 1))
  {
    goto LABEL_102;
  }

  if (v43)
  {
    mediaState = self->_mediaState;
    if (mediaState != [equalCopy mediaState])
    {
      goto LABEL_102;
    }

    v27 = *(&self->_isNearMiss + 1);
    v28 = *(equalCopy + 169);
  }

  v45 = (v27 >> 8) & 1;
  if (v45 != ((v28 >> 8) & 1))
  {
    goto LABEL_102;
  }

  if (v45)
  {
    alarmState = self->_alarmState;
    if (alarmState != [equalCopy alarmState])
    {
      goto LABEL_102;
    }

    v27 = *(&self->_isNearMiss + 1);
    v28 = *(equalCopy + 169);
  }

  v47 = (v27 >> 9) & 1;
  if (v47 != ((v28 >> 9) & 1))
  {
    goto LABEL_102;
  }

  if (v47)
  {
    timerState = self->_timerState;
    if (timerState != [equalCopy timerState])
    {
      goto LABEL_102;
    }

    v27 = *(&self->_isNearMiss + 1);
    v28 = *(equalCopy + 169);
  }

  v49 = (v27 >> 10) & 1;
  if (v49 != ((v28 >> 10) & 1))
  {
    goto LABEL_102;
  }

  if (v49)
  {
    timeSinceLastWinInMilliseconds = self->_timeSinceLastWinInMilliseconds;
    if (timeSinceLastWinInMilliseconds != [equalCopy timeSinceLastWinInMilliseconds])
    {
      goto LABEL_102;
    }

    v27 = *(&self->_isNearMiss + 1);
    v28 = *(equalCopy + 169);
  }

  v51 = (v27 >> 11) & 1;
  if (v51 != ((v28 >> 11) & 1))
  {
    goto LABEL_102;
  }

  if (v51)
  {
    triggerType = self->_triggerType;
    if (triggerType != [equalCopy triggerType])
    {
      goto LABEL_102;
    }
  }

  siriSpeechId = [(CDASchemaCDAUserFeedbackParticipant *)self roomNameHash];
  siriSpeechId2 = [equalCopy roomNameHash];
  if ((siriSpeechId != 0) == (siriSpeechId2 == 0))
  {
    goto LABEL_101;
  }

  roomNameHash = [(CDASchemaCDAUserFeedbackParticipant *)self roomNameHash];
  if (roomNameHash)
  {
    v54 = roomNameHash;
    roomNameHash2 = [(CDASchemaCDAUserFeedbackParticipant *)self roomNameHash];
    roomNameHash3 = [equalCopy roomNameHash];
    v57 = [roomNameHash2 isEqual:roomNameHash3];

    if (!v57)
    {
      goto LABEL_102;
    }
  }

  else
  {
  }

  v58 = (*(&self->_isNearMiss + 1) >> 12) & 1;
  if (v58 != ((*(equalCopy + 169) >> 12) & 1))
  {
    goto LABEL_102;
  }

  if (v58)
  {
    timeSinceTriggerInMilliseconds = self->_timeSinceTriggerInMilliseconds;
    if (timeSinceTriggerInMilliseconds != [equalCopy timeSinceTriggerInMilliseconds])
    {
      goto LABEL_102;
    }
  }

  siriSpeechId = [(CDASchemaCDAUserFeedbackParticipant *)self scoreBoosters];
  siriSpeechId2 = [equalCopy scoreBoosters];
  if ((siriSpeechId != 0) == (siriSpeechId2 == 0))
  {
    goto LABEL_101;
  }

  scoreBoosters = [(CDASchemaCDAUserFeedbackParticipant *)self scoreBoosters];
  if (scoreBoosters)
  {
    v61 = scoreBoosters;
    scoreBoosters2 = [(CDASchemaCDAUserFeedbackParticipant *)self scoreBoosters];
    scoreBoosters3 = [equalCopy scoreBoosters];
    v64 = [scoreBoosters2 isEqual:scoreBoosters3];

    if (!v64)
    {
      goto LABEL_102;
    }
  }

  else
  {
  }

  siriSpeechId = [(CDASchemaCDAUserFeedbackParticipant *)self build];
  siriSpeechId2 = [equalCopy build];
  if ((siriSpeechId != 0) == (siriSpeechId2 == 0))
  {
    goto LABEL_101;
  }

  build = [(CDASchemaCDAUserFeedbackParticipant *)self build];
  if (build)
  {
    v66 = build;
    build2 = [(CDASchemaCDAUserFeedbackParticipant *)self build];
    build3 = [equalCopy build];
    v69 = [build2 isEqual:build3];

    if (!v69)
    {
      goto LABEL_102;
    }
  }

  else
  {
  }

  siriSpeechId = [(CDASchemaCDAUserFeedbackParticipant *)self locale];
  siriSpeechId2 = [equalCopy locale];
  if ((siriSpeechId != 0) == (siriSpeechId2 == 0))
  {
    goto LABEL_101;
  }

  locale = [(CDASchemaCDAUserFeedbackParticipant *)self locale];
  if (locale)
  {
    v71 = locale;
    locale2 = [(CDASchemaCDAUserFeedbackParticipant *)self locale];
    locale3 = [equalCopy locale];
    v74 = [locale2 isEqual:locale3];

    if (!v74)
    {
      goto LABEL_102;
    }
  }

  else
  {
  }

  siriSpeechId = [(CDASchemaCDAUserFeedbackParticipant *)self advertisement];
  siriSpeechId2 = [equalCopy advertisement];
  if ((siriSpeechId != 0) == (siriSpeechId2 == 0))
  {
    goto LABEL_101;
  }

  advertisement = [(CDASchemaCDAUserFeedbackParticipant *)self advertisement];
  if (advertisement)
  {
    v76 = advertisement;
    advertisement2 = [(CDASchemaCDAUserFeedbackParticipant *)self advertisement];
    advertisement3 = [equalCopy advertisement];
    v79 = [advertisement2 isEqual:advertisement3];

    if (!v79)
    {
      goto LABEL_102;
    }
  }

  else
  {
  }

  siriSpeechId = [(CDASchemaCDAUserFeedbackParticipant *)self productTypes];
  siriSpeechId2 = [equalCopy productTypes];
  if ((siriSpeechId != 0) == (siriSpeechId2 == 0))
  {
LABEL_101:

    goto LABEL_102;
  }

  productTypes = [(CDASchemaCDAUserFeedbackParticipant *)self productTypes];
  if (productTypes)
  {
    v81 = productTypes;
    productTypes2 = [(CDASchemaCDAUserFeedbackParticipant *)self productTypes];
    productTypes3 = [equalCopy productTypes];
    v84 = [productTypes2 isEqual:productTypes3];

    if (!v84)
    {
      goto LABEL_102;
    }
  }

  else
  {
  }

  v87 = (*(&self->_isNearMiss + 1) >> 13) & 1;
  if (v87 == ((*(equalCopy + 169) >> 13) & 1))
  {
    if (!v87 || (isNearMiss = self->_isNearMiss, isNearMiss == [equalCopy isNearMiss]))
    {
      v85 = 1;
      goto LABEL_103;
    }
  }

LABEL_102:
  v85 = 0;
LABEL_103:

  return v85;
}

- (void)writeTo:(id)to
{
  v31 = *MEMORY[0x1E69E9840];
  toCopy = to;
  siriSpeechId = [(CDASchemaCDAUserFeedbackParticipant *)self siriSpeechId];

  if (siriSpeechId)
  {
    siriSpeechId2 = [(CDASchemaCDAUserFeedbackParticipant *)self siriSpeechId];
    PBDataWriterWriteSubmessage();
  }

  cdaId = [(CDASchemaCDAUserFeedbackParticipant *)self cdaId];

  if (cdaId)
  {
    cdaId2 = [(CDASchemaCDAUserFeedbackParticipant *)self cdaId];
    PBDataWriterWriteSubmessage();
  }

  requestId = [(CDASchemaCDAUserFeedbackParticipant *)self requestId];

  if (requestId)
  {
    requestId2 = [(CDASchemaCDAUserFeedbackParticipant *)self requestId];
    PBDataWriterWriteSubmessage();
  }

  halTargetSiriSpeechId = [(CDASchemaCDAUserFeedbackParticipant *)self halTargetSiriSpeechId];

  if (halTargetSiriSpeechId)
  {
    halTargetSiriSpeechId2 = [(CDASchemaCDAUserFeedbackParticipant *)self halTargetSiriSpeechId];
    PBDataWriterWriteSubmessage();
  }

  v13 = *(&self->_isNearMiss + 1);
  if (v13)
  {
    PBDataWriterWriteInt32Field();
    v13 = *(&self->_isNearMiss + 1);
    if ((v13 & 2) == 0)
    {
LABEL_11:
      if ((v13 & 4) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_46;
    }
  }

  else if ((v13 & 2) == 0)
  {
    goto LABEL_11;
  }

  PBDataWriterWriteUint64Field();
  v13 = *(&self->_isNearMiss + 1);
  if ((v13 & 4) == 0)
  {
LABEL_12:
    if ((v13 & 8) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_47;
  }

LABEL_46:
  PBDataWriterWriteUint32Field();
  v13 = *(&self->_isNearMiss + 1);
  if ((v13 & 8) == 0)
  {
LABEL_13:
    if ((v13 & 0x10) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_48;
  }

LABEL_47:
  PBDataWriterWriteUint32Field();
  v13 = *(&self->_isNearMiss + 1);
  if ((v13 & 0x10) == 0)
  {
LABEL_14:
    if ((v13 & 0x20) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_49;
  }

LABEL_48:
  PBDataWriterWriteDoubleField();
  v13 = *(&self->_isNearMiss + 1);
  if ((v13 & 0x20) == 0)
  {
LABEL_15:
    if ((v13 & 0x40) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_50;
  }

LABEL_49:
  PBDataWriterWriteInt32Field();
  v13 = *(&self->_isNearMiss + 1);
  if ((v13 & 0x40) == 0)
  {
LABEL_16:
    if ((v13 & 0x80) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_51;
  }

LABEL_50:
  PBDataWriterWriteUint32Field();
  v13 = *(&self->_isNearMiss + 1);
  if ((v13 & 0x80) == 0)
  {
LABEL_17:
    if ((v13 & 0x100) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_52;
  }

LABEL_51:
  PBDataWriterWriteInt32Field();
  v13 = *(&self->_isNearMiss + 1);
  if ((v13 & 0x100) == 0)
  {
LABEL_18:
    if ((v13 & 0x200) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_53;
  }

LABEL_52:
  PBDataWriterWriteInt32Field();
  v13 = *(&self->_isNearMiss + 1);
  if ((v13 & 0x200) == 0)
  {
LABEL_19:
    if ((v13 & 0x400) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_54;
  }

LABEL_53:
  PBDataWriterWriteInt32Field();
  v13 = *(&self->_isNearMiss + 1);
  if ((v13 & 0x400) == 0)
  {
LABEL_20:
    if ((v13 & 0x800) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

LABEL_54:
  PBDataWriterWriteUint64Field();
  if ((*(&self->_isNearMiss + 1) & 0x800) != 0)
  {
LABEL_21:
    PBDataWriterWriteInt32Field();
  }

LABEL_22:
  roomNameHash = [(CDASchemaCDAUserFeedbackParticipant *)self roomNameHash];

  if (roomNameHash)
  {
    PBDataWriterWriteStringField();
  }

  if ((*(&self->_isNearMiss + 1) & 0x1000) != 0)
  {
    PBDataWriterWriteUint64Field();
  }

  scoreBoosters = [(CDASchemaCDAUserFeedbackParticipant *)self scoreBoosters];

  if (scoreBoosters)
  {
    scoreBoosters2 = [(CDASchemaCDAUserFeedbackParticipant *)self scoreBoosters];
    PBDataWriterWriteSubmessage();
  }

  build = [(CDASchemaCDAUserFeedbackParticipant *)self build];

  if (build)
  {
    PBDataWriterWriteStringField();
  }

  locale = [(CDASchemaCDAUserFeedbackParticipant *)self locale];

  if (locale)
  {
    PBDataWriterWriteStringField();
  }

  advertisement = [(CDASchemaCDAUserFeedbackParticipant *)self advertisement];

  if (advertisement)
  {
    advertisement2 = [(CDASchemaCDAUserFeedbackParticipant *)self advertisement];
    PBDataWriterWriteSubmessage();
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v21 = self->_productTypes;
  v22 = [(NSArray *)v21 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v27;
    do
    {
      for (i = 0; i != v23; ++i)
      {
        if (*v27 != v24)
        {
          objc_enumerationMutation(v21);
        }

        PBDataWriterWriteStringField();
      }

      v23 = [(NSArray *)v21 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v23);
  }

  if ((*(&self->_isNearMiss + 1) & 0x2000) != 0)
  {
    PBDataWriterWriteBOOLField();
  }
}

- (void)setHasIsNearMiss:(BOOL)miss
{
  if (miss)
  {
    v3 = 0x2000;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isNearMiss + 1) = *(&self->_isNearMiss + 1) & 0xDFFF | v3;
}

- (void)addProductTypes:(id)types
{
  typesCopy = types;
  productTypes = self->_productTypes;
  v8 = typesCopy;
  if (!productTypes)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_productTypes;
    self->_productTypes = array;

    typesCopy = v8;
    productTypes = self->_productTypes;
  }

  [(NSArray *)productTypes addObject:typesCopy];
}

- (void)setHasTimeSinceTriggerInMilliseconds:(BOOL)milliseconds
{
  if (milliseconds)
  {
    v3 = 4096;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isNearMiss + 1) = *(&self->_isNearMiss + 1) & 0xEFFF | v3;
}

- (void)setHasTriggerType:(BOOL)type
{
  if (type)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isNearMiss + 1) = *(&self->_isNearMiss + 1) & 0xF7FF | v3;
}

- (void)setHasTimeSinceLastWinInMilliseconds:(BOOL)milliseconds
{
  if (milliseconds)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isNearMiss + 1) = *(&self->_isNearMiss + 1) & 0xFBFF | v3;
}

- (void)setHasTimerState:(BOOL)state
{
  if (state)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isNearMiss + 1) = *(&self->_isNearMiss + 1) & 0xFDFF | v3;
}

- (void)setHasAlarmState:(BOOL)state
{
  if (state)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isNearMiss + 1) = *(&self->_isNearMiss + 1) & 0xFEFF | v3;
}

- (void)setHasMediaState:(BOOL)state
{
  if (state)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isNearMiss + 1) = *(&self->_isNearMiss + 1) & 0xFF7F | v3;
}

- (void)setHasPsdScore:(BOOL)score
{
  if (score)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isNearMiss + 1) = *(&self->_isNearMiss + 1) & 0xFFBF | v3;
}

- (void)setHasTrumpReason:(BOOL)reason
{
  if (reason)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isNearMiss + 1) = *(&self->_isNearMiss + 1) & 0xFFDF | v3;
}

- (void)setHasGranularBoostDecay:(BOOL)decay
{
  if (decay)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isNearMiss + 1) = *(&self->_isNearMiss + 1) & 0xFFEF | v3;
}

- (void)setHasGranularBoostValue:(BOOL)value
{
  if (value)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isNearMiss + 1) = *(&self->_isNearMiss + 1) & 0xFFF7 | v3;
}

- (void)setHasRawGoodnessScore:(BOOL)score
{
  if (score)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isNearMiss + 1) = *(&self->_isNearMiss + 1) & 0xFFFB | v3;
}

- (void)setHasVoiceTriggerTimeNS:(BOOL)s
{
  if (s)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isNearMiss + 1) = *(&self->_isNearMiss + 1) & 0xFFFD | v3;
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v25.receiver = self;
  v25.super_class = CDASchemaCDAUserFeedbackParticipant;
  v5 = [(SISchemaInstrumentationMessage *)&v25 applySensitiveConditionsPolicy:policyCopy];
  if ([policyCopy isConditionSet:8])
  {
    [(CDASchemaCDAUserFeedbackParticipant *)self deleteSiriSpeechId];
    [(CDASchemaCDAUserFeedbackParticipant *)self deleteHalTargetSiriSpeechId];
  }

  siriSpeechId = [(CDASchemaCDAUserFeedbackParticipant *)self siriSpeechId];
  v7 = [siriSpeechId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(CDASchemaCDAUserFeedbackParticipant *)self deleteSiriSpeechId];
  }

  cdaId = [(CDASchemaCDAUserFeedbackParticipant *)self cdaId];
  v10 = [cdaId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(CDASchemaCDAUserFeedbackParticipant *)self deleteCdaId];
  }

  requestId = [(CDASchemaCDAUserFeedbackParticipant *)self requestId];
  v13 = [requestId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
  {
    [(CDASchemaCDAUserFeedbackParticipant *)self deleteRequestId];
  }

  halTargetSiriSpeechId = [(CDASchemaCDAUserFeedbackParticipant *)self halTargetSiriSpeechId];
  v16 = [halTargetSiriSpeechId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage4 = [v16 suppressMessage];

  if (suppressMessage4)
  {
    [(CDASchemaCDAUserFeedbackParticipant *)self deleteHalTargetSiriSpeechId];
  }

  scoreBoosters = [(CDASchemaCDAUserFeedbackParticipant *)self scoreBoosters];
  v19 = [scoreBoosters applySensitiveConditionsPolicy:policyCopy];
  suppressMessage5 = [v19 suppressMessage];

  if (suppressMessage5)
  {
    [(CDASchemaCDAUserFeedbackParticipant *)self deleteScoreBoosters];
  }

  advertisement = [(CDASchemaCDAUserFeedbackParticipant *)self advertisement];
  v22 = [advertisement applySensitiveConditionsPolicy:policyCopy];
  suppressMessage6 = [v22 suppressMessage];

  if (suppressMessage6)
  {
    [(CDASchemaCDAUserFeedbackParticipant *)self deleteAdvertisement];
  }

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end