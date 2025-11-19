@interface MHSchemaMHRaiseToSpeakSecondPassPolicyDecisionMade
- (BOOL)isEqual:(id)a3;
- (MHSchemaMHRaiseToSpeakSecondPassPolicyDecisionMade)initWithDictionary:(id)a3;
- (MHSchemaMHRaiseToSpeakSecondPassPolicyDecisionMade)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasIsReplayModeEnabled:(BOOL)a3;
- (void)setHasProcessedAudioDurationInMs:(BOOL)a3;
- (void)setHasSpeakingProbability:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation MHSchemaMHRaiseToSpeakSecondPassPolicyDecisionMade

- (MHSchemaMHRaiseToSpeakSecondPassPolicyDecisionMade)initWithDictionary:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = MHSchemaMHRaiseToSpeakSecondPassPolicyDecisionMade;
  v5 = [(MHSchemaMHRaiseToSpeakSecondPassPolicyDecisionMade *)&v12 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"isSecondPassTriggered"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[MHSchemaMHRaiseToSpeakSecondPassPolicyDecisionMade setIsSecondPassTriggered:](v5, "setIsSecondPassTriggered:", [v6 BOOLValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"speakingProbability"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v7 doubleValue];
      [(MHSchemaMHRaiseToSpeakSecondPassPolicyDecisionMade *)v5 setSpeakingProbability:?];
    }

    v8 = [v4 objectForKeyedSubscript:@"processedAudioDurationInMs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v8 doubleValue];
      [(MHSchemaMHRaiseToSpeakSecondPassPolicyDecisionMade *)v5 setProcessedAudioDurationInMs:?];
    }

    v9 = [v4 objectForKeyedSubscript:@"isReplayModeEnabled"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[MHSchemaMHRaiseToSpeakSecondPassPolicyDecisionMade setIsReplayModeEnabled:](v5, "setIsReplayModeEnabled:", [v9 BOOLValue]);
    }

    v10 = v5;
  }

  return v5;
}

- (MHSchemaMHRaiseToSpeakSecondPassPolicyDecisionMade)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(MHSchemaMHRaiseToSpeakSecondPassPolicyDecisionMade *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(MHSchemaMHRaiseToSpeakSecondPassPolicyDecisionMade *)self dictionaryRepresentation];
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
  v4 = *(&self->_isReplayModeEnabled + 1);
  if ((v4 & 8) != 0)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[MHSchemaMHRaiseToSpeakSecondPassPolicyDecisionMade isReplayModeEnabled](self, "isReplayModeEnabled")}];
    [v3 setObject:v8 forKeyedSubscript:@"isReplayModeEnabled"];

    v4 = *(&self->_isReplayModeEnabled + 1);
    if ((v4 & 1) == 0)
    {
LABEL_3:
      if ((v4 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if (!*(&self->_isReplayModeEnabled + 1))
  {
    goto LABEL_3;
  }

  v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[MHSchemaMHRaiseToSpeakSecondPassPolicyDecisionMade isSecondPassTriggered](self, "isSecondPassTriggered")}];
  [v3 setObject:v9 forKeyedSubscript:@"isSecondPassTriggered"];

  v4 = *(&self->_isReplayModeEnabled + 1);
  if ((v4 & 4) == 0)
  {
LABEL_4:
    if ((v4 & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  v10 = MEMORY[0x1E696AD98];
  [(MHSchemaMHRaiseToSpeakSecondPassPolicyDecisionMade *)self processedAudioDurationInMs];
  v11 = [v10 numberWithDouble:?];
  [v3 setObject:v11 forKeyedSubscript:@"processedAudioDurationInMs"];

  if ((*(&self->_isReplayModeEnabled + 1) & 2) != 0)
  {
LABEL_5:
    v5 = MEMORY[0x1E696AD98];
    [(MHSchemaMHRaiseToSpeakSecondPassPolicyDecisionMade *)self speakingProbability];
    v6 = [v5 numberWithDouble:?];
    [v3 setObject:v6 forKeyedSubscript:@"speakingProbability"];
  }

LABEL_6:
  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  if (*(&self->_isReplayModeEnabled + 1))
  {
    v4 = 2654435761 * self->_isSecondPassTriggered;
    if ((*(&self->_isReplayModeEnabled + 1) & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_8:
    v8 = 0;
    goto LABEL_9;
  }

  v4 = 0;
  if ((*(&self->_isReplayModeEnabled + 1) & 2) == 0)
  {
    goto LABEL_8;
  }

LABEL_3:
  speakingProbability = self->_speakingProbability;
  if (speakingProbability < 0.0)
  {
    speakingProbability = -speakingProbability;
  }

  *v2.i64 = floor(speakingProbability + 0.5);
  v6 = (speakingProbability - *v2.i64) * 1.84467441e19;
  *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v7.f64[0] = NAN;
  v7.f64[1] = NAN;
  v2 = vbslq_s8(vnegq_f64(v7), v3, v2);
  v8 = 2654435761u * *v2.i64;
  if (v6 >= 0.0)
  {
    if (v6 > 0.0)
    {
      v8 += v6;
    }
  }

  else
  {
    v8 -= fabs(v6);
  }

LABEL_9:
  if ((*(&self->_isReplayModeEnabled + 1) & 4) != 0)
  {
    processedAudioDurationInMs = self->_processedAudioDurationInMs;
    if (processedAudioDurationInMs < 0.0)
    {
      processedAudioDurationInMs = -processedAudioDurationInMs;
    }

    *v2.i64 = floor(processedAudioDurationInMs + 0.5);
    v11 = (processedAudioDurationInMs - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v12.f64[0] = NAN;
    v12.f64[1] = NAN;
    v9 = 2654435761u * *vbslq_s8(vnegq_f64(v12), v3, v2).i64;
    if (v11 >= 0.0)
    {
      if (v11 > 0.0)
      {
        v9 += v11;
      }
    }

    else
    {
      v9 -= fabs(v11);
    }
  }

  else
  {
    v9 = 0;
  }

  if ((*(&self->_isReplayModeEnabled + 1) & 8) != 0)
  {
    v13 = 2654435761 * self->_isReplayModeEnabled;
  }

  else
  {
    v13 = 0;
  }

  return v8 ^ v4 ^ v9 ^ v13;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_18;
  }

  v5 = *(&self->_isReplayModeEnabled + 1);
  v6 = v4[33];
  if ((v5 & 1) != (v6 & 1))
  {
    goto LABEL_18;
  }

  if (v5)
  {
    isSecondPassTriggered = self->_isSecondPassTriggered;
    if (isSecondPassTriggered != [v4 isSecondPassTriggered])
    {
      goto LABEL_18;
    }

    v5 = *(&self->_isReplayModeEnabled + 1);
    v6 = v4[33];
  }

  v8 = (v5 >> 1) & 1;
  if (v8 != ((v6 >> 1) & 1))
  {
    goto LABEL_18;
  }

  if (v8)
  {
    speakingProbability = self->_speakingProbability;
    [v4 speakingProbability];
    if (speakingProbability != v10)
    {
      goto LABEL_18;
    }

    v5 = *(&self->_isReplayModeEnabled + 1);
    v6 = v4[33];
  }

  v11 = (v5 >> 2) & 1;
  if (v11 != ((v6 >> 2) & 1))
  {
    goto LABEL_18;
  }

  if (v11)
  {
    processedAudioDurationInMs = self->_processedAudioDurationInMs;
    [v4 processedAudioDurationInMs];
    if (processedAudioDurationInMs == v13)
    {
      v5 = *(&self->_isReplayModeEnabled + 1);
      v6 = v4[33];
      goto LABEL_14;
    }

LABEL_18:
    v16 = 0;
    goto LABEL_19;
  }

LABEL_14:
  v14 = (v5 >> 3) & 1;
  if (v14 != ((v6 >> 3) & 1))
  {
    goto LABEL_18;
  }

  if (v14)
  {
    isReplayModeEnabled = self->_isReplayModeEnabled;
    if (isReplayModeEnabled != [v4 isReplayModeEnabled])
    {
      goto LABEL_18;
    }
  }

  v16 = 1;
LABEL_19:

  return v16;
}

- (void)writeTo:(id)a3
{
  v5 = a3;
  v4 = *(&self->_isReplayModeEnabled + 1);
  if (v4)
  {
    PBDataWriterWriteBOOLField();
    v4 = *(&self->_isReplayModeEnabled + 1);
    if ((v4 & 2) == 0)
    {
LABEL_3:
      if ((v4 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*(&self->_isReplayModeEnabled + 1) & 2) == 0)
  {
    goto LABEL_3;
  }

  PBDataWriterWriteDoubleField();
  v4 = *(&self->_isReplayModeEnabled + 1);
  if ((v4 & 4) == 0)
  {
LABEL_4:
    if ((v4 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  PBDataWriterWriteDoubleField();
  if ((*(&self->_isReplayModeEnabled + 1) & 8) != 0)
  {
LABEL_5:
    PBDataWriterWriteBOOLField();
  }

LABEL_6:
}

- (void)setHasIsReplayModeEnabled:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isReplayModeEnabled + 1) = *(&self->_isReplayModeEnabled + 1) & 0xF7 | v3;
}

- (void)setHasProcessedAudioDurationInMs:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isReplayModeEnabled + 1) = *(&self->_isReplayModeEnabled + 1) & 0xFB | v3;
}

- (void)setHasSpeakingProbability:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isReplayModeEnabled + 1) = *(&self->_isReplayModeEnabled + 1) & 0xFD | v3;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end