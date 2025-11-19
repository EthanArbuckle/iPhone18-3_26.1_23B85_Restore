@interface CDASchemaCDAUserFeedbackParticipant
- (BOOL)isEqual:(id)a3;
- (CDASchemaCDAUserFeedbackParticipant)initWithDictionary:(id)a3;
- (CDASchemaCDAUserFeedbackParticipant)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addProductTypes:(id)a3;
- (void)setHasAlarmState:(BOOL)a3;
- (void)setHasGranularBoostDecay:(BOOL)a3;
- (void)setHasGranularBoostValue:(BOOL)a3;
- (void)setHasIsNearMiss:(BOOL)a3;
- (void)setHasMediaState:(BOOL)a3;
- (void)setHasPsdScore:(BOOL)a3;
- (void)setHasRawGoodnessScore:(BOOL)a3;
- (void)setHasTimeSinceLastWinInMilliseconds:(BOOL)a3;
- (void)setHasTimeSinceTriggerInMilliseconds:(BOOL)a3;
- (void)setHasTimerState:(BOOL)a3;
- (void)setHasTriggerType:(BOOL)a3;
- (void)setHasTrumpReason:(BOOL)a3;
- (void)setHasVoiceTriggerTimeNS:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation CDASchemaCDAUserFeedbackParticipant

- (CDASchemaCDAUserFeedbackParticipant)initWithDictionary:(id)a3
{
  v78 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v76.receiver = self;
  v76.super_class = CDASchemaCDAUserFeedbackParticipant;
  v5 = [(CDASchemaCDAUserFeedbackParticipant *)&v76 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"siriSpeechId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(CDASchemaCDAUserFeedbackParticipant *)v5 setSiriSpeechId:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"cdaId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[SISchemaUUID alloc] initWithDictionary:v8];
      [(CDASchemaCDAUserFeedbackParticipant *)v5 setCdaId:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"requestId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[SISchemaUUID alloc] initWithDictionary:v10];
      [(CDASchemaCDAUserFeedbackParticipant *)v5 setRequestId:v11];
    }

    v12 = [v4 objectForKeyedSubscript:@"halTargetSiriSpeechId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[SISchemaUUID alloc] initWithDictionary:v12];
      [(CDASchemaCDAUserFeedbackParticipant *)v5 setHalTargetSiriSpeechId:v13];
    }

    v14 = [v4 objectForKeyedSubscript:@"decision"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[CDASchemaCDAUserFeedbackParticipant setDecision:](v5, "setDecision:", [v14 intValue]);
    }

    v15 = [v4 objectForKeyedSubscript:@"voiceTriggerTimeNS"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[CDASchemaCDAUserFeedbackParticipant setVoiceTriggerTimeNS:](v5, "setVoiceTriggerTimeNS:", [v15 unsignedLongLongValue]);
    }

    v16 = [v4 objectForKeyedSubscript:@"rawGoodnessScore"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[CDASchemaCDAUserFeedbackParticipant setRawGoodnessScore:](v5, "setRawGoodnessScore:", [v16 unsignedIntValue]);
    }

    v61 = v16;
    v17 = [v4 objectForKeyedSubscript:@"granularBoostValue"];
    objc_opt_class();
    v71 = v17;
    if (objc_opt_isKindOfClass())
    {
      -[CDASchemaCDAUserFeedbackParticipant setGranularBoostValue:](v5, "setGranularBoostValue:", [v17 unsignedIntValue]);
    }

    v18 = [v4 objectForKeyedSubscript:@"granularBoostDecay"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v18 doubleValue];
      [(CDASchemaCDAUserFeedbackParticipant *)v5 setGranularBoostDecay:?];
    }

    v60 = v18;
    v19 = [v4 objectForKeyedSubscript:@"trumpReason"];
    objc_opt_class();
    v70 = v19;
    if (objc_opt_isKindOfClass())
    {
      -[CDASchemaCDAUserFeedbackParticipant setTrumpReason:](v5, "setTrumpReason:", [v19 intValue]);
    }

    v62 = v15;
    v20 = [v4 objectForKeyedSubscript:@"psdScore"];
    objc_opt_class();
    v69 = v20;
    v21 = v10;
    if (objc_opt_isKindOfClass())
    {
      -[CDASchemaCDAUserFeedbackParticipant setPsdScore:](v5, "setPsdScore:", [v20 unsignedIntValue]);
    }

    v22 = [v4 objectForKeyedSubscript:@"mediaState"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[CDASchemaCDAUserFeedbackParticipant setMediaState:](v5, "setMediaState:", [v22 intValue]);
    }

    v23 = [v4 objectForKeyedSubscript:@"alarmState"];
    objc_opt_class();
    v68 = v23;
    if (objc_opt_isKindOfClass())
    {
      -[CDASchemaCDAUserFeedbackParticipant setAlarmState:](v5, "setAlarmState:", [v23 intValue]);
    }

    v24 = [v4 objectForKeyedSubscript:@"timerState"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[CDASchemaCDAUserFeedbackParticipant setTimerState:](v5, "setTimerState:", [v24 intValue]);
    }

    v25 = [v4 objectForKeyedSubscript:@"timeSinceLastWinInMilliseconds"];
    objc_opt_class();
    v67 = v25;
    if (objc_opt_isKindOfClass())
    {
      -[CDASchemaCDAUserFeedbackParticipant setTimeSinceLastWinInMilliseconds:](v5, "setTimeSinceLastWinInMilliseconds:", [v25 unsignedLongLongValue]);
    }

    v64 = v12;
    v26 = [v4 objectForKeyedSubscript:@"triggerType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[CDASchemaCDAUserFeedbackParticipant setTriggerType:](v5, "setTriggerType:", [v26 intValue]);
    }

    v63 = v14;
    v27 = [v4 objectForKeyedSubscript:@"roomNameHash"];
    objc_opt_class();
    v66 = v27;
    v28 = v6;
    if (objc_opt_isKindOfClass())
    {
      v29 = [v27 copy];
      [(CDASchemaCDAUserFeedbackParticipant *)v5 setRoomNameHash:v29];
    }

    v30 = [v4 objectForKeyedSubscript:@"timeSinceTriggerInMilliseconds"];
    objc_opt_class();
    v31 = v8;
    if (objc_opt_isKindOfClass())
    {
      -[CDASchemaCDAUserFeedbackParticipant setTimeSinceTriggerInMilliseconds:](v5, "setTimeSinceTriggerInMilliseconds:", [v30 unsignedLongLongValue]);
    }

    v57 = v30;
    v32 = [v4 objectForKeyedSubscript:@"scoreBoosters"];
    objc_opt_class();
    v65 = v32;
    v33 = v21;
    if (objc_opt_isKindOfClass())
    {
      v34 = [[CDASchemaCDAScoreBoosters alloc] initWithDictionary:v32];
      [(CDASchemaCDAUserFeedbackParticipant *)v5 setScoreBoosters:v34];
    }

    v35 = [v4 objectForKeyedSubscript:@"build"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v36 = [v35 copy];
      [(CDASchemaCDAUserFeedbackParticipant *)v5 setBuild:v36];
    }

    v59 = v22;
    v37 = [v4 objectForKeyedSubscript:@"locale"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v38 = [v37 copy];
      [(CDASchemaCDAUserFeedbackParticipant *)v5 setLocale:v38];
    }

    v55 = v37;
    v56 = v35;
    v58 = v24;
    v39 = [v4 objectForKeyedSubscript:@"advertisement"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v40 = [[CDASchemaCDAAdvertisementData alloc] initWithDictionary:v39];
      [(CDASchemaCDAUserFeedbackParticipant *)v5 setAdvertisement:v40];
    }

    v41 = [v4 objectForKeyedSubscript:@"productTypes"];
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

    v49 = [v4 objectForKeyedSubscript:@"isNearMiss"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[CDASchemaCDAUserFeedbackParticipant setIsNearMiss:](v5, "setIsNearMiss:", [v49 BOOLValue]);
    }

    v50 = v5;
  }

  return v5;
}

- (CDASchemaCDAUserFeedbackParticipant)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(CDASchemaCDAUserFeedbackParticipant *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(CDASchemaCDAUserFeedbackParticipant *)self dictionaryRepresentation];
  if ([MEMORY[0x1E696ACB0] isValidJSONObject:v2])
  {
    v3 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v2 options:0 error:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_advertisement)
  {
    v4 = [(CDASchemaCDAUserFeedbackParticipant *)self advertisement];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"advertisement"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"advertisement"];
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

    [v3 setObject:v8 forKeyedSubscript:@"alarmState"];
  }

  if (self->_build)
  {
    v9 = [(CDASchemaCDAUserFeedbackParticipant *)self build];
    v10 = [v9 copy];
    [v3 setObject:v10 forKeyedSubscript:@"build"];
  }

  if (self->_cdaId)
  {
    v11 = [(CDASchemaCDAUserFeedbackParticipant *)self cdaId];
    v12 = [v11 dictionaryRepresentation];
    if (v12)
    {
      [v3 setObject:v12 forKeyedSubscript:@"cdaId"];
    }

    else
    {
      v13 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v13 forKeyedSubscript:@"cdaId"];
    }
  }

  v14 = *(&self->_isNearMiss + 1);
  if (v14)
  {
    v15 = [(CDASchemaCDAUserFeedbackParticipant *)self decision];
    v16 = @"CDADECISION_UNKNOWN";
    if (v15 == 1)
    {
      v16 = @"CDADECISION_WIN";
    }

    if (v15 == 2)
    {
      v17 = @"CDADECISION_LOSS";
    }

    else
    {
      v17 = v16;
    }

    [v3 setObject:v17 forKeyedSubscript:@"decision"];
    v14 = *(&self->_isNearMiss + 1);
  }

  if ((v14 & 0x10) != 0)
  {
    v18 = MEMORY[0x1E696AD98];
    [(CDASchemaCDAUserFeedbackParticipant *)self granularBoostDecay];
    v19 = [v18 numberWithDouble:?];
    [v3 setObject:v19 forKeyedSubscript:@"granularBoostDecay"];

    v14 = *(&self->_isNearMiss + 1);
  }

  if ((v14 & 8) != 0)
  {
    v20 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CDASchemaCDAUserFeedbackParticipant granularBoostValue](self, "granularBoostValue")}];
    [v3 setObject:v20 forKeyedSubscript:@"granularBoostValue"];
  }

  if (self->_halTargetSiriSpeechId)
  {
    v21 = [(CDASchemaCDAUserFeedbackParticipant *)self halTargetSiriSpeechId];
    v22 = [v21 dictionaryRepresentation];
    if (v22)
    {
      [v3 setObject:v22 forKeyedSubscript:@"halTargetSiriSpeechId"];
    }

    else
    {
      v23 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v23 forKeyedSubscript:@"halTargetSiriSpeechId"];
    }
  }

  if ((*(&self->_isNearMiss + 1) & 0x2000) != 0)
  {
    v24 = [MEMORY[0x1E696AD98] numberWithBool:{-[CDASchemaCDAUserFeedbackParticipant isNearMiss](self, "isNearMiss")}];
    [v3 setObject:v24 forKeyedSubscript:@"isNearMiss"];
  }

  if (self->_locale)
  {
    v25 = [(CDASchemaCDAUserFeedbackParticipant *)self locale];
    v26 = [v25 copy];
    [v3 setObject:v26 forKeyedSubscript:@"locale"];
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

    [v3 setObject:v28 forKeyedSubscript:@"mediaState"];
  }

  if (self->_productTypes)
  {
    v29 = [(CDASchemaCDAUserFeedbackParticipant *)self productTypes];
    v30 = [v29 copy];
    [v3 setObject:v30 forKeyedSubscript:@"productTypes"];
  }

  v31 = *(&self->_isNearMiss + 1);
  if ((v31 & 0x40) != 0)
  {
    v32 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CDASchemaCDAUserFeedbackParticipant psdScore](self, "psdScore")}];
    [v3 setObject:v32 forKeyedSubscript:@"psdScore"];

    v31 = *(&self->_isNearMiss + 1);
  }

  if ((v31 & 4) != 0)
  {
    v33 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CDASchemaCDAUserFeedbackParticipant rawGoodnessScore](self, "rawGoodnessScore")}];
    [v3 setObject:v33 forKeyedSubscript:@"rawGoodnessScore"];
  }

  if (self->_requestId)
  {
    v34 = [(CDASchemaCDAUserFeedbackParticipant *)self requestId];
    v35 = [v34 dictionaryRepresentation];
    if (v35)
    {
      [v3 setObject:v35 forKeyedSubscript:@"requestId"];
    }

    else
    {
      v36 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v36 forKeyedSubscript:@"requestId"];
    }
  }

  if (self->_roomNameHash)
  {
    v37 = [(CDASchemaCDAUserFeedbackParticipant *)self roomNameHash];
    v38 = [v37 copy];
    [v3 setObject:v38 forKeyedSubscript:@"roomNameHash"];
  }

  if (self->_scoreBoosters)
  {
    v39 = [(CDASchemaCDAUserFeedbackParticipant *)self scoreBoosters];
    v40 = [v39 dictionaryRepresentation];
    if (v40)
    {
      [v3 setObject:v40 forKeyedSubscript:@"scoreBoosters"];
    }

    else
    {
      v41 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v41 forKeyedSubscript:@"scoreBoosters"];
    }
  }

  if (self->_siriSpeechId)
  {
    v42 = [(CDASchemaCDAUserFeedbackParticipant *)self siriSpeechId];
    v43 = [v42 dictionaryRepresentation];
    if (v43)
    {
      [v3 setObject:v43 forKeyedSubscript:@"siriSpeechId"];
    }

    else
    {
      v44 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v44 forKeyedSubscript:@"siriSpeechId"];
    }
  }

  v45 = *(&self->_isNearMiss + 1);
  if ((v45 & 0x400) != 0)
  {
    v49 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[CDASchemaCDAUserFeedbackParticipant timeSinceLastWinInMilliseconds](self, "timeSinceLastWinInMilliseconds")}];
    [v3 setObject:v49 forKeyedSubscript:@"timeSinceLastWinInMilliseconds"];

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
  [v3 setObject:v50 forKeyedSubscript:@"timeSinceTriggerInMilliseconds"];

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

  [v3 setObject:v52 forKeyedSubscript:@"timerState"];
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

    [v3 setObject:v56 forKeyedSubscript:@"trumpReason"];
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

  [v3 setObject:v54 forKeyedSubscript:@"triggerType"];
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
    [v3 setObject:v46 forKeyedSubscript:@"voiceTriggerTimeNS"];
  }

LABEL_73:
  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];
  v47 = v3;

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_102;
  }

  v5 = [(CDASchemaCDAUserFeedbackParticipant *)self siriSpeechId];
  v6 = [v4 siriSpeechId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_101;
  }

  v7 = [(CDASchemaCDAUserFeedbackParticipant *)self siriSpeechId];
  if (v7)
  {
    v8 = v7;
    v9 = [(CDASchemaCDAUserFeedbackParticipant *)self siriSpeechId];
    v10 = [v4 siriSpeechId];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_102;
    }
  }

  else
  {
  }

  v5 = [(CDASchemaCDAUserFeedbackParticipant *)self cdaId];
  v6 = [v4 cdaId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_101;
  }

  v12 = [(CDASchemaCDAUserFeedbackParticipant *)self cdaId];
  if (v12)
  {
    v13 = v12;
    v14 = [(CDASchemaCDAUserFeedbackParticipant *)self cdaId];
    v15 = [v4 cdaId];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_102;
    }
  }

  else
  {
  }

  v5 = [(CDASchemaCDAUserFeedbackParticipant *)self requestId];
  v6 = [v4 requestId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_101;
  }

  v17 = [(CDASchemaCDAUserFeedbackParticipant *)self requestId];
  if (v17)
  {
    v18 = v17;
    v19 = [(CDASchemaCDAUserFeedbackParticipant *)self requestId];
    v20 = [v4 requestId];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_102;
    }
  }

  else
  {
  }

  v5 = [(CDASchemaCDAUserFeedbackParticipant *)self halTargetSiriSpeechId];
  v6 = [v4 halTargetSiriSpeechId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_101;
  }

  v22 = [(CDASchemaCDAUserFeedbackParticipant *)self halTargetSiriSpeechId];
  if (v22)
  {
    v23 = v22;
    v24 = [(CDASchemaCDAUserFeedbackParticipant *)self halTargetSiriSpeechId];
    v25 = [v4 halTargetSiriSpeechId];
    v26 = [v24 isEqual:v25];

    if (!v26)
    {
      goto LABEL_102;
    }
  }

  else
  {
  }

  v27 = *(&self->_isNearMiss + 1);
  v28 = *(v4 + 169);
  if ((v27 & 1) != (v28 & 1))
  {
    goto LABEL_102;
  }

  if (v27)
  {
    decision = self->_decision;
    if (decision != [v4 decision])
    {
      goto LABEL_102;
    }

    v27 = *(&self->_isNearMiss + 1);
    v28 = *(v4 + 169);
  }

  v30 = (v27 >> 1) & 1;
  if (v30 != ((v28 >> 1) & 1))
  {
    goto LABEL_102;
  }

  if (v30)
  {
    voiceTriggerTimeNS = self->_voiceTriggerTimeNS;
    if (voiceTriggerTimeNS != [v4 voiceTriggerTimeNS])
    {
      goto LABEL_102;
    }

    v27 = *(&self->_isNearMiss + 1);
    v28 = *(v4 + 169);
  }

  v32 = (v27 >> 2) & 1;
  if (v32 != ((v28 >> 2) & 1))
  {
    goto LABEL_102;
  }

  if (v32)
  {
    rawGoodnessScore = self->_rawGoodnessScore;
    if (rawGoodnessScore != [v4 rawGoodnessScore])
    {
      goto LABEL_102;
    }

    v27 = *(&self->_isNearMiss + 1);
    v28 = *(v4 + 169);
  }

  v34 = (v27 >> 3) & 1;
  if (v34 != ((v28 >> 3) & 1))
  {
    goto LABEL_102;
  }

  if (v34)
  {
    granularBoostValue = self->_granularBoostValue;
    if (granularBoostValue != [v4 granularBoostValue])
    {
      goto LABEL_102;
    }

    v27 = *(&self->_isNearMiss + 1);
    v28 = *(v4 + 169);
  }

  v36 = (v27 >> 4) & 1;
  if (v36 != ((v28 >> 4) & 1))
  {
    goto LABEL_102;
  }

  if (v36)
  {
    granularBoostDecay = self->_granularBoostDecay;
    [v4 granularBoostDecay];
    if (granularBoostDecay != v38)
    {
      goto LABEL_102;
    }

    v27 = *(&self->_isNearMiss + 1);
    v28 = *(v4 + 169);
  }

  v39 = (v27 >> 5) & 1;
  if (v39 != ((v28 >> 5) & 1))
  {
    goto LABEL_102;
  }

  if (v39)
  {
    trumpReason = self->_trumpReason;
    if (trumpReason != [v4 trumpReason])
    {
      goto LABEL_102;
    }

    v27 = *(&self->_isNearMiss + 1);
    v28 = *(v4 + 169);
  }

  v41 = (v27 >> 6) & 1;
  if (v41 != ((v28 >> 6) & 1))
  {
    goto LABEL_102;
  }

  if (v41)
  {
    psdScore = self->_psdScore;
    if (psdScore != [v4 psdScore])
    {
      goto LABEL_102;
    }

    v27 = *(&self->_isNearMiss + 1);
    v28 = *(v4 + 169);
  }

  v43 = (v27 >> 7) & 1;
  if (v43 != ((v28 >> 7) & 1))
  {
    goto LABEL_102;
  }

  if (v43)
  {
    mediaState = self->_mediaState;
    if (mediaState != [v4 mediaState])
    {
      goto LABEL_102;
    }

    v27 = *(&self->_isNearMiss + 1);
    v28 = *(v4 + 169);
  }

  v45 = (v27 >> 8) & 1;
  if (v45 != ((v28 >> 8) & 1))
  {
    goto LABEL_102;
  }

  if (v45)
  {
    alarmState = self->_alarmState;
    if (alarmState != [v4 alarmState])
    {
      goto LABEL_102;
    }

    v27 = *(&self->_isNearMiss + 1);
    v28 = *(v4 + 169);
  }

  v47 = (v27 >> 9) & 1;
  if (v47 != ((v28 >> 9) & 1))
  {
    goto LABEL_102;
  }

  if (v47)
  {
    timerState = self->_timerState;
    if (timerState != [v4 timerState])
    {
      goto LABEL_102;
    }

    v27 = *(&self->_isNearMiss + 1);
    v28 = *(v4 + 169);
  }

  v49 = (v27 >> 10) & 1;
  if (v49 != ((v28 >> 10) & 1))
  {
    goto LABEL_102;
  }

  if (v49)
  {
    timeSinceLastWinInMilliseconds = self->_timeSinceLastWinInMilliseconds;
    if (timeSinceLastWinInMilliseconds != [v4 timeSinceLastWinInMilliseconds])
    {
      goto LABEL_102;
    }

    v27 = *(&self->_isNearMiss + 1);
    v28 = *(v4 + 169);
  }

  v51 = (v27 >> 11) & 1;
  if (v51 != ((v28 >> 11) & 1))
  {
    goto LABEL_102;
  }

  if (v51)
  {
    triggerType = self->_triggerType;
    if (triggerType != [v4 triggerType])
    {
      goto LABEL_102;
    }
  }

  v5 = [(CDASchemaCDAUserFeedbackParticipant *)self roomNameHash];
  v6 = [v4 roomNameHash];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_101;
  }

  v53 = [(CDASchemaCDAUserFeedbackParticipant *)self roomNameHash];
  if (v53)
  {
    v54 = v53;
    v55 = [(CDASchemaCDAUserFeedbackParticipant *)self roomNameHash];
    v56 = [v4 roomNameHash];
    v57 = [v55 isEqual:v56];

    if (!v57)
    {
      goto LABEL_102;
    }
  }

  else
  {
  }

  v58 = (*(&self->_isNearMiss + 1) >> 12) & 1;
  if (v58 != ((*(v4 + 169) >> 12) & 1))
  {
    goto LABEL_102;
  }

  if (v58)
  {
    timeSinceTriggerInMilliseconds = self->_timeSinceTriggerInMilliseconds;
    if (timeSinceTriggerInMilliseconds != [v4 timeSinceTriggerInMilliseconds])
    {
      goto LABEL_102;
    }
  }

  v5 = [(CDASchemaCDAUserFeedbackParticipant *)self scoreBoosters];
  v6 = [v4 scoreBoosters];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_101;
  }

  v60 = [(CDASchemaCDAUserFeedbackParticipant *)self scoreBoosters];
  if (v60)
  {
    v61 = v60;
    v62 = [(CDASchemaCDAUserFeedbackParticipant *)self scoreBoosters];
    v63 = [v4 scoreBoosters];
    v64 = [v62 isEqual:v63];

    if (!v64)
    {
      goto LABEL_102;
    }
  }

  else
  {
  }

  v5 = [(CDASchemaCDAUserFeedbackParticipant *)self build];
  v6 = [v4 build];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_101;
  }

  v65 = [(CDASchemaCDAUserFeedbackParticipant *)self build];
  if (v65)
  {
    v66 = v65;
    v67 = [(CDASchemaCDAUserFeedbackParticipant *)self build];
    v68 = [v4 build];
    v69 = [v67 isEqual:v68];

    if (!v69)
    {
      goto LABEL_102;
    }
  }

  else
  {
  }

  v5 = [(CDASchemaCDAUserFeedbackParticipant *)self locale];
  v6 = [v4 locale];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_101;
  }

  v70 = [(CDASchemaCDAUserFeedbackParticipant *)self locale];
  if (v70)
  {
    v71 = v70;
    v72 = [(CDASchemaCDAUserFeedbackParticipant *)self locale];
    v73 = [v4 locale];
    v74 = [v72 isEqual:v73];

    if (!v74)
    {
      goto LABEL_102;
    }
  }

  else
  {
  }

  v5 = [(CDASchemaCDAUserFeedbackParticipant *)self advertisement];
  v6 = [v4 advertisement];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_101;
  }

  v75 = [(CDASchemaCDAUserFeedbackParticipant *)self advertisement];
  if (v75)
  {
    v76 = v75;
    v77 = [(CDASchemaCDAUserFeedbackParticipant *)self advertisement];
    v78 = [v4 advertisement];
    v79 = [v77 isEqual:v78];

    if (!v79)
    {
      goto LABEL_102;
    }
  }

  else
  {
  }

  v5 = [(CDASchemaCDAUserFeedbackParticipant *)self productTypes];
  v6 = [v4 productTypes];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_101:

    goto LABEL_102;
  }

  v80 = [(CDASchemaCDAUserFeedbackParticipant *)self productTypes];
  if (v80)
  {
    v81 = v80;
    v82 = [(CDASchemaCDAUserFeedbackParticipant *)self productTypes];
    v83 = [v4 productTypes];
    v84 = [v82 isEqual:v83];

    if (!v84)
    {
      goto LABEL_102;
    }
  }

  else
  {
  }

  v87 = (*(&self->_isNearMiss + 1) >> 13) & 1;
  if (v87 == ((*(v4 + 169) >> 13) & 1))
  {
    if (!v87 || (isNearMiss = self->_isNearMiss, isNearMiss == [v4 isNearMiss]))
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

- (void)writeTo:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(CDASchemaCDAUserFeedbackParticipant *)self siriSpeechId];

  if (v5)
  {
    v6 = [(CDASchemaCDAUserFeedbackParticipant *)self siriSpeechId];
    PBDataWriterWriteSubmessage();
  }

  v7 = [(CDASchemaCDAUserFeedbackParticipant *)self cdaId];

  if (v7)
  {
    v8 = [(CDASchemaCDAUserFeedbackParticipant *)self cdaId];
    PBDataWriterWriteSubmessage();
  }

  v9 = [(CDASchemaCDAUserFeedbackParticipant *)self requestId];

  if (v9)
  {
    v10 = [(CDASchemaCDAUserFeedbackParticipant *)self requestId];
    PBDataWriterWriteSubmessage();
  }

  v11 = [(CDASchemaCDAUserFeedbackParticipant *)self halTargetSiriSpeechId];

  if (v11)
  {
    v12 = [(CDASchemaCDAUserFeedbackParticipant *)self halTargetSiriSpeechId];
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
  v14 = [(CDASchemaCDAUserFeedbackParticipant *)self roomNameHash];

  if (v14)
  {
    PBDataWriterWriteStringField();
  }

  if ((*(&self->_isNearMiss + 1) & 0x1000) != 0)
  {
    PBDataWriterWriteUint64Field();
  }

  v15 = [(CDASchemaCDAUserFeedbackParticipant *)self scoreBoosters];

  if (v15)
  {
    v16 = [(CDASchemaCDAUserFeedbackParticipant *)self scoreBoosters];
    PBDataWriterWriteSubmessage();
  }

  v17 = [(CDASchemaCDAUserFeedbackParticipant *)self build];

  if (v17)
  {
    PBDataWriterWriteStringField();
  }

  v18 = [(CDASchemaCDAUserFeedbackParticipant *)self locale];

  if (v18)
  {
    PBDataWriterWriteStringField();
  }

  v19 = [(CDASchemaCDAUserFeedbackParticipant *)self advertisement];

  if (v19)
  {
    v20 = [(CDASchemaCDAUserFeedbackParticipant *)self advertisement];
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

- (void)setHasIsNearMiss:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x2000;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isNearMiss + 1) = *(&self->_isNearMiss + 1) & 0xDFFF | v3;
}

- (void)addProductTypes:(id)a3
{
  v4 = a3;
  productTypes = self->_productTypes;
  v8 = v4;
  if (!productTypes)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_productTypes;
    self->_productTypes = v6;

    v4 = v8;
    productTypes = self->_productTypes;
  }

  [(NSArray *)productTypes addObject:v4];
}

- (void)setHasTimeSinceTriggerInMilliseconds:(BOOL)a3
{
  if (a3)
  {
    v3 = 4096;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isNearMiss + 1) = *(&self->_isNearMiss + 1) & 0xEFFF | v3;
}

- (void)setHasTriggerType:(BOOL)a3
{
  if (a3)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isNearMiss + 1) = *(&self->_isNearMiss + 1) & 0xF7FF | v3;
}

- (void)setHasTimeSinceLastWinInMilliseconds:(BOOL)a3
{
  if (a3)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isNearMiss + 1) = *(&self->_isNearMiss + 1) & 0xFBFF | v3;
}

- (void)setHasTimerState:(BOOL)a3
{
  if (a3)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isNearMiss + 1) = *(&self->_isNearMiss + 1) & 0xFDFF | v3;
}

- (void)setHasAlarmState:(BOOL)a3
{
  if (a3)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isNearMiss + 1) = *(&self->_isNearMiss + 1) & 0xFEFF | v3;
}

- (void)setHasMediaState:(BOOL)a3
{
  if (a3)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isNearMiss + 1) = *(&self->_isNearMiss + 1) & 0xFF7F | v3;
}

- (void)setHasPsdScore:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isNearMiss + 1) = *(&self->_isNearMiss + 1) & 0xFFBF | v3;
}

- (void)setHasTrumpReason:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isNearMiss + 1) = *(&self->_isNearMiss + 1) & 0xFFDF | v3;
}

- (void)setHasGranularBoostDecay:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isNearMiss + 1) = *(&self->_isNearMiss + 1) & 0xFFEF | v3;
}

- (void)setHasGranularBoostValue:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isNearMiss + 1) = *(&self->_isNearMiss + 1) & 0xFFF7 | v3;
}

- (void)setHasRawGoodnessScore:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isNearMiss + 1) = *(&self->_isNearMiss + 1) & 0xFFFB | v3;
}

- (void)setHasVoiceTriggerTimeNS:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isNearMiss + 1) = *(&self->_isNearMiss + 1) & 0xFFFD | v3;
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v25.receiver = self;
  v25.super_class = CDASchemaCDAUserFeedbackParticipant;
  v5 = [(SISchemaInstrumentationMessage *)&v25 applySensitiveConditionsPolicy:v4];
  if ([v4 isConditionSet:8])
  {
    [(CDASchemaCDAUserFeedbackParticipant *)self deleteSiriSpeechId];
    [(CDASchemaCDAUserFeedbackParticipant *)self deleteHalTargetSiriSpeechId];
  }

  v6 = [(CDASchemaCDAUserFeedbackParticipant *)self siriSpeechId];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(CDASchemaCDAUserFeedbackParticipant *)self deleteSiriSpeechId];
  }

  v9 = [(CDASchemaCDAUserFeedbackParticipant *)self cdaId];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(CDASchemaCDAUserFeedbackParticipant *)self deleteCdaId];
  }

  v12 = [(CDASchemaCDAUserFeedbackParticipant *)self requestId];
  v13 = [v12 applySensitiveConditionsPolicy:v4];
  v14 = [v13 suppressMessage];

  if (v14)
  {
    [(CDASchemaCDAUserFeedbackParticipant *)self deleteRequestId];
  }

  v15 = [(CDASchemaCDAUserFeedbackParticipant *)self halTargetSiriSpeechId];
  v16 = [v15 applySensitiveConditionsPolicy:v4];
  v17 = [v16 suppressMessage];

  if (v17)
  {
    [(CDASchemaCDAUserFeedbackParticipant *)self deleteHalTargetSiriSpeechId];
  }

  v18 = [(CDASchemaCDAUserFeedbackParticipant *)self scoreBoosters];
  v19 = [v18 applySensitiveConditionsPolicy:v4];
  v20 = [v19 suppressMessage];

  if (v20)
  {
    [(CDASchemaCDAUserFeedbackParticipant *)self deleteScoreBoosters];
  }

  v21 = [(CDASchemaCDAUserFeedbackParticipant *)self advertisement];
  v22 = [v21 applySensitiveConditionsPolicy:v4];
  v23 = [v22 suppressMessage];

  if (v23)
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