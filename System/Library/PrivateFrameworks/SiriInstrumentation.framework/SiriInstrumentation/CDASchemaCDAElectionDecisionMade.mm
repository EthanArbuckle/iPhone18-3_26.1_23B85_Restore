@interface CDASchemaCDAElectionDecisionMade
- (BOOL)isEqual:(id)equal;
- (CDASchemaCDAElectionDecisionMade)initWithDictionary:(id)dictionary;
- (CDASchemaCDAElectionDecisionMade)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addHeardParticipants:(id)participants;
- (void)setHasDecision:(BOOL)decision;
- (void)setHasPreviousDecision:(BOOL)decision;
- (void)setHasRawGoodnessScore:(BOOL)score;
- (void)setHasTimeSinceLastDecisionInMs:(BOOL)ms;
- (void)writeTo:(id)to;
@end

@implementation CDASchemaCDAElectionDecisionMade

- (CDASchemaCDAElectionDecisionMade)initWithDictionary:(id)dictionary
{
  v37 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v35.receiver = self;
  v35.super_class = CDASchemaCDAElectionDecisionMade;
  v5 = [(CDASchemaCDAElectionDecisionMade *)&v35 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"version"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v6 floatValue];
      [(CDASchemaCDAElectionDecisionMade *)v5 setVersion:?];
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"decision"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[CDASchemaCDAElectionDecisionMade setDecision:](v5, "setDecision:", [v7 intValue]);
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"previousDecision"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[CDASchemaCDAElectionDecisionMade setPreviousDecision:](v5, "setPreviousDecision:", [v8 intValue]);
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"thisDevice"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [[CDASchemaCDAParticipant alloc] initWithDictionary:v9];
      [(CDASchemaCDAElectionDecisionMade *)v5 setThisDevice:v10];
    }

    v30 = v9;
    v11 = [dictionaryCopy objectForKeyedSubscript:@"winningDevice"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [[CDASchemaCDAParticipant alloc] initWithDictionary:v11];
      [(CDASchemaCDAElectionDecisionMade *)v5 setWinningDevice:v12];
    }

    v29 = v11;
    v13 = [dictionaryCopy objectForKeyedSubscript:@"heardParticipants"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v27 = v8;
      v28 = v6;
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v14 = v13;
      v15 = [v14 countByEnumeratingWithState:&v31 objects:v36 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v32;
        do
        {
          for (i = 0; i != v16; ++i)
          {
            if (*v32 != v17)
            {
              objc_enumerationMutation(v14);
            }

            v19 = *(*(&v31 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v20 = [[CDASchemaCDAParticipant alloc] initWithDictionary:v19];
              [(CDASchemaCDAElectionDecisionMade *)v5 addHeardParticipants:v20];
            }
          }

          v16 = [v14 countByEnumeratingWithState:&v31 objects:v36 count:16];
        }

        while (v16);
      }

      v6 = v28;
      v8 = v27;
    }

    v21 = [dictionaryCopy objectForKeyedSubscript:@"timeSinceLastDecisionInMs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[CDASchemaCDAElectionDecisionMade setTimeSinceLastDecisionInMs:](v5, "setTimeSinceLastDecisionInMs:", [v21 unsignedLongLongValue]);
    }

    v22 = [dictionaryCopy objectForKeyedSubscript:@"rawGoodnessScore"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[CDASchemaCDAElectionDecisionMade setRawGoodnessScore:](v5, "setRawGoodnessScore:", [v22 unsignedIntValue]);
    }

    v23 = [dictionaryCopy objectForKeyedSubscript:@"goodnessScoreBoosts"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v24 = [[CDASchemaCDAScoreBoosters alloc] initWithDictionary:v23];
      [(CDASchemaCDAElectionDecisionMade *)v5 setGoodnessScoreBoosts:v24];
    }

    v25 = v5;
  }

  return v5;
}

- (CDASchemaCDAElectionDecisionMade)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(CDASchemaCDAElectionDecisionMade *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(CDASchemaCDAElectionDecisionMade *)self dictionaryRepresentation];
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
  v39 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ((*&self->_has & 2) != 0)
  {
    decision = [(CDASchemaCDAElectionDecisionMade *)self decision];
    if (decision == 1)
    {
      v5 = @"CDADECISION_WIN";
    }

    else
    {
      v5 = @"CDADECISION_UNKNOWN";
    }

    if (decision == 2)
    {
      v6 = @"CDADECISION_LOSS";
    }

    else
    {
      v6 = v5;
    }

    [dictionary setObject:v6 forKeyedSubscript:@"decision"];
  }

  if (self->_goodnessScoreBoosts)
  {
    goodnessScoreBoosts = [(CDASchemaCDAElectionDecisionMade *)self goodnessScoreBoosts];
    dictionaryRepresentation = [goodnessScoreBoosts dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"goodnessScoreBoosts"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"goodnessScoreBoosts"];
    }
  }

  if ([(NSArray *)self->_heardParticipants count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v11 = self->_heardParticipants;
    v12 = [(NSArray *)v11 countByEnumeratingWithState:&v34 objects:v38 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v35;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v35 != v14)
          {
            objc_enumerationMutation(v11);
          }

          dictionaryRepresentation2 = [*(*(&v34 + 1) + 8 * i) dictionaryRepresentation];
          if (dictionaryRepresentation2)
          {
            [array addObject:dictionaryRepresentation2];
          }

          else
          {
            null2 = [MEMORY[0x1E695DFB0] null];
            [array addObject:null2];
          }
        }

        v13 = [(NSArray *)v11 countByEnumeratingWithState:&v34 objects:v38 count:16];
      }

      while (v13);
    }

    [dictionary setObject:array forKeyedSubscript:@"heardParticipants"];
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    previousDecision = [(CDASchemaCDAElectionDecisionMade *)self previousDecision];
    if (previousDecision == 1)
    {
      v20 = @"CDADECISION_WIN";
    }

    else
    {
      v20 = @"CDADECISION_UNKNOWN";
    }

    if (previousDecision == 2)
    {
      v21 = @"CDADECISION_LOSS";
    }

    else
    {
      v21 = v20;
    }

    [dictionary setObject:v21 forKeyedSubscript:@"previousDecision"];
    has = self->_has;
  }

  if ((has & 0x10) != 0)
  {
    v22 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CDASchemaCDAElectionDecisionMade rawGoodnessScore](self, "rawGoodnessScore")}];
    [dictionary setObject:v22 forKeyedSubscript:@"rawGoodnessScore"];
  }

  if (self->_thisDevice)
  {
    thisDevice = [(CDASchemaCDAElectionDecisionMade *)self thisDevice];
    dictionaryRepresentation3 = [thisDevice dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"thisDevice"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"thisDevice"];
    }
  }

  v26 = self->_has;
  if ((v26 & 8) != 0)
  {
    v27 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[CDASchemaCDAElectionDecisionMade timeSinceLastDecisionInMs](self, "timeSinceLastDecisionInMs")}];
    [dictionary setObject:v27 forKeyedSubscript:@"timeSinceLastDecisionInMs"];

    v26 = self->_has;
  }

  if (v26)
  {
    v28 = MEMORY[0x1E696AD98];
    [(CDASchemaCDAElectionDecisionMade *)self version];
    v29 = [v28 numberWithFloat:?];
    [dictionary setObject:v29 forKeyedSubscript:@"version"];
  }

  if (self->_winningDevice)
  {
    winningDevice = [(CDASchemaCDAElectionDecisionMade *)self winningDevice];
    dictionaryRepresentation4 = [winningDevice dictionaryRepresentation];
    if (dictionaryRepresentation4)
    {
      [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"winningDevice"];
    }

    else
    {
      null4 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null4 forKeyedSubscript:@"winningDevice"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    version = self->_version;
    if (version >= 0.0)
    {
      v7 = version;
    }

    else
    {
      v7 = -version;
    }

    *v2.i64 = floor(v7 + 0.5);
    v8 = (v7 - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v9.f64[0] = NAN;
    v9.f64[1] = NAN;
    v5 = 2654435761u * *vbslq_s8(vnegq_f64(v9), v3, v2).i64;
    if (v8 >= 0.0)
    {
      if (v8 > 0.0)
      {
        v5 += v8;
      }
    }

    else
    {
      v5 -= fabs(v8);
    }
  }

  else
  {
    v5 = 0;
  }

  if ((*&self->_has & 2) != 0)
  {
    v10 = 2654435761 * self->_decision;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v10 = 0;
    if ((*&self->_has & 4) != 0)
    {
LABEL_12:
      v11 = 2654435761 * self->_previousDecision;
      goto LABEL_15;
    }
  }

  v11 = 0;
LABEL_15:
  v12 = [(CDASchemaCDAParticipant *)self->_thisDevice hash];
  v13 = [(CDASchemaCDAParticipant *)self->_winningDevice hash];
  v14 = [(NSArray *)self->_heardParticipants hash];
  if ((*&self->_has & 8) != 0)
  {
    v15 = 2654435761u * self->_timeSinceLastDecisionInMs;
    if ((*&self->_has & 0x10) != 0)
    {
      goto LABEL_17;
    }

LABEL_19:
    v16 = 0;
    return v10 ^ v5 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ [(CDASchemaCDAScoreBoosters *)self->_goodnessScoreBoosts hash];
  }

  v15 = 0;
  if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_19;
  }

LABEL_17:
  v16 = 2654435761 * self->_rawGoodnessScore;
  return v10 ^ v5 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ [(CDASchemaCDAScoreBoosters *)self->_goodnessScoreBoosts hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_40;
  }

  has = self->_has;
  v6 = equalCopy[72];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_40;
  }

  if (*&has)
  {
    version = self->_version;
    [equalCopy version];
    if (version != v8)
    {
      goto LABEL_40;
    }

    has = self->_has;
    v6 = equalCopy[72];
  }

  v9 = (*&has >> 1) & 1;
  if (v9 != ((v6 >> 1) & 1))
  {
    goto LABEL_40;
  }

  if (v9)
  {
    decision = self->_decision;
    if (decision != [equalCopy decision])
    {
      goto LABEL_40;
    }

    has = self->_has;
    v6 = equalCopy[72];
  }

  v11 = (*&has >> 2) & 1;
  if (v11 != ((v6 >> 2) & 1))
  {
    goto LABEL_40;
  }

  if (v11)
  {
    previousDecision = self->_previousDecision;
    if (previousDecision != [equalCopy previousDecision])
    {
      goto LABEL_40;
    }
  }

  thisDevice = [(CDASchemaCDAElectionDecisionMade *)self thisDevice];
  thisDevice2 = [equalCopy thisDevice];
  if ((thisDevice != 0) == (thisDevice2 == 0))
  {
    goto LABEL_39;
  }

  thisDevice3 = [(CDASchemaCDAElectionDecisionMade *)self thisDevice];
  if (thisDevice3)
  {
    v16 = thisDevice3;
    thisDevice4 = [(CDASchemaCDAElectionDecisionMade *)self thisDevice];
    thisDevice5 = [equalCopy thisDevice];
    v19 = [thisDevice4 isEqual:thisDevice5];

    if (!v19)
    {
      goto LABEL_40;
    }
  }

  else
  {
  }

  thisDevice = [(CDASchemaCDAElectionDecisionMade *)self winningDevice];
  thisDevice2 = [equalCopy winningDevice];
  if ((thisDevice != 0) == (thisDevice2 == 0))
  {
    goto LABEL_39;
  }

  winningDevice = [(CDASchemaCDAElectionDecisionMade *)self winningDevice];
  if (winningDevice)
  {
    v21 = winningDevice;
    winningDevice2 = [(CDASchemaCDAElectionDecisionMade *)self winningDevice];
    winningDevice3 = [equalCopy winningDevice];
    v24 = [winningDevice2 isEqual:winningDevice3];

    if (!v24)
    {
      goto LABEL_40;
    }
  }

  else
  {
  }

  thisDevice = [(CDASchemaCDAElectionDecisionMade *)self heardParticipants];
  thisDevice2 = [equalCopy heardParticipants];
  if ((thisDevice != 0) == (thisDevice2 == 0))
  {
    goto LABEL_39;
  }

  heardParticipants = [(CDASchemaCDAElectionDecisionMade *)self heardParticipants];
  if (heardParticipants)
  {
    v26 = heardParticipants;
    heardParticipants2 = [(CDASchemaCDAElectionDecisionMade *)self heardParticipants];
    heardParticipants3 = [equalCopy heardParticipants];
    v29 = [heardParticipants2 isEqual:heardParticipants3];

    if (!v29)
    {
      goto LABEL_40;
    }
  }

  else
  {
  }

  v30 = self->_has;
  v31 = (*&v30 >> 3) & 1;
  v32 = equalCopy[72];
  if (v31 != ((v32 >> 3) & 1))
  {
    goto LABEL_40;
  }

  if (v31)
  {
    timeSinceLastDecisionInMs = self->_timeSinceLastDecisionInMs;
    if (timeSinceLastDecisionInMs != [equalCopy timeSinceLastDecisionInMs])
    {
      goto LABEL_40;
    }

    v30 = self->_has;
    v32 = equalCopy[72];
  }

  v34 = (*&v30 >> 4) & 1;
  if (v34 != ((v32 >> 4) & 1))
  {
    goto LABEL_40;
  }

  if (v34)
  {
    rawGoodnessScore = self->_rawGoodnessScore;
    if (rawGoodnessScore != [equalCopy rawGoodnessScore])
    {
      goto LABEL_40;
    }
  }

  thisDevice = [(CDASchemaCDAElectionDecisionMade *)self goodnessScoreBoosts];
  thisDevice2 = [equalCopy goodnessScoreBoosts];
  if ((thisDevice != 0) == (thisDevice2 == 0))
  {
LABEL_39:

    goto LABEL_40;
  }

  goodnessScoreBoosts = [(CDASchemaCDAElectionDecisionMade *)self goodnessScoreBoosts];
  if (!goodnessScoreBoosts)
  {

LABEL_43:
    v41 = 1;
    goto LABEL_41;
  }

  v37 = goodnessScoreBoosts;
  goodnessScoreBoosts2 = [(CDASchemaCDAElectionDecisionMade *)self goodnessScoreBoosts];
  goodnessScoreBoosts3 = [equalCopy goodnessScoreBoosts];
  v40 = [goodnessScoreBoosts2 isEqual:goodnessScoreBoosts3];

  if (v40)
  {
    goto LABEL_43;
  }

LABEL_40:
  v41 = 0;
LABEL_41:

  return v41;
}

- (void)writeTo:(id)to
{
  v23 = *MEMORY[0x1E69E9840];
  toCopy = to;
  has = self->_has;
  if (has)
  {
    PBDataWriterWriteFloatField();
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  PBDataWriterWriteInt32Field();
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    PBDataWriterWriteInt32Field();
  }

LABEL_5:
  thisDevice = [(CDASchemaCDAElectionDecisionMade *)self thisDevice];

  if (thisDevice)
  {
    thisDevice2 = [(CDASchemaCDAElectionDecisionMade *)self thisDevice];
    PBDataWriterWriteSubmessage();
  }

  winningDevice = [(CDASchemaCDAElectionDecisionMade *)self winningDevice];

  if (winningDevice)
  {
    winningDevice2 = [(CDASchemaCDAElectionDecisionMade *)self winningDevice];
    PBDataWriterWriteSubmessage();
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v10 = self->_heardParticipants;
  v11 = [(NSArray *)v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v19;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v19 != v13)
        {
          objc_enumerationMutation(v10);
        }

        PBDataWriterWriteSubmessage();
      }

      v12 = [(NSArray *)v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v12);
  }

  v15 = self->_has;
  if ((v15 & 8) != 0)
  {
    PBDataWriterWriteUint64Field();
    v15 = self->_has;
  }

  if ((v15 & 0x10) != 0)
  {
    PBDataWriterWriteUint32Field();
  }

  goodnessScoreBoosts = [(CDASchemaCDAElectionDecisionMade *)self goodnessScoreBoosts];

  if (goodnessScoreBoosts)
  {
    goodnessScoreBoosts2 = [(CDASchemaCDAElectionDecisionMade *)self goodnessScoreBoosts];
    PBDataWriterWriteSubmessage();
  }
}

- (void)setHasRawGoodnessScore:(BOOL)score
{
  if (score)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasTimeSinceLastDecisionInMs:(BOOL)ms
{
  if (ms)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)addHeardParticipants:(id)participants
{
  participantsCopy = participants;
  heardParticipants = self->_heardParticipants;
  v8 = participantsCopy;
  if (!heardParticipants)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_heardParticipants;
    self->_heardParticipants = array;

    participantsCopy = v8;
    heardParticipants = self->_heardParticipants;
  }

  [(NSArray *)heardParticipants addObject:participantsCopy];
}

- (void)setHasPreviousDecision:(BOOL)decision
{
  if (decision)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasDecision:(BOOL)decision
{
  if (decision)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v18.receiver = self;
  v18.super_class = CDASchemaCDAElectionDecisionMade;
  v5 = [(SISchemaInstrumentationMessage *)&v18 applySensitiveConditionsPolicy:policyCopy];
  thisDevice = [(CDASchemaCDAElectionDecisionMade *)self thisDevice];
  v7 = [thisDevice applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(CDASchemaCDAElectionDecisionMade *)self deleteThisDevice];
  }

  winningDevice = [(CDASchemaCDAElectionDecisionMade *)self winningDevice];
  v10 = [winningDevice applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(CDASchemaCDAElectionDecisionMade *)self deleteWinningDevice];
  }

  heardParticipants = [(CDASchemaCDAElectionDecisionMade *)self heardParticipants];
  v13 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:heardParticipants underConditions:policyCopy];
  [(CDASchemaCDAElectionDecisionMade *)self setHeardParticipants:v13];

  goodnessScoreBoosts = [(CDASchemaCDAElectionDecisionMade *)self goodnessScoreBoosts];
  v15 = [goodnessScoreBoosts applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v15 suppressMessage];

  if (suppressMessage3)
  {
    [(CDASchemaCDAElectionDecisionMade *)self deleteGoodnessScoreBoosts];
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