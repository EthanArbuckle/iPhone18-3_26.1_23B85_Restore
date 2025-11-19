@interface CDASchemaCDAElectionDecisionMade
- (BOOL)isEqual:(id)a3;
- (CDASchemaCDAElectionDecisionMade)initWithDictionary:(id)a3;
- (CDASchemaCDAElectionDecisionMade)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addHeardParticipants:(id)a3;
- (void)setHasDecision:(BOOL)a3;
- (void)setHasPreviousDecision:(BOOL)a3;
- (void)setHasRawGoodnessScore:(BOOL)a3;
- (void)setHasTimeSinceLastDecisionInMs:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation CDASchemaCDAElectionDecisionMade

- (CDASchemaCDAElectionDecisionMade)initWithDictionary:(id)a3
{
  v37 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v35.receiver = self;
  v35.super_class = CDASchemaCDAElectionDecisionMade;
  v5 = [(CDASchemaCDAElectionDecisionMade *)&v35 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"version"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v6 floatValue];
      [(CDASchemaCDAElectionDecisionMade *)v5 setVersion:?];
    }

    v7 = [v4 objectForKeyedSubscript:@"decision"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[CDASchemaCDAElectionDecisionMade setDecision:](v5, "setDecision:", [v7 intValue]);
    }

    v8 = [v4 objectForKeyedSubscript:@"previousDecision"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[CDASchemaCDAElectionDecisionMade setPreviousDecision:](v5, "setPreviousDecision:", [v8 intValue]);
    }

    v9 = [v4 objectForKeyedSubscript:@"thisDevice"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [[CDASchemaCDAParticipant alloc] initWithDictionary:v9];
      [(CDASchemaCDAElectionDecisionMade *)v5 setThisDevice:v10];
    }

    v30 = v9;
    v11 = [v4 objectForKeyedSubscript:@"winningDevice"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [[CDASchemaCDAParticipant alloc] initWithDictionary:v11];
      [(CDASchemaCDAElectionDecisionMade *)v5 setWinningDevice:v12];
    }

    v29 = v11;
    v13 = [v4 objectForKeyedSubscript:@"heardParticipants"];
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

    v21 = [v4 objectForKeyedSubscript:@"timeSinceLastDecisionInMs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[CDASchemaCDAElectionDecisionMade setTimeSinceLastDecisionInMs:](v5, "setTimeSinceLastDecisionInMs:", [v21 unsignedLongLongValue]);
    }

    v22 = [v4 objectForKeyedSubscript:@"rawGoodnessScore"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[CDASchemaCDAElectionDecisionMade setRawGoodnessScore:](v5, "setRawGoodnessScore:", [v22 unsignedIntValue]);
    }

    v23 = [v4 objectForKeyedSubscript:@"goodnessScoreBoosts"];
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

- (CDASchemaCDAElectionDecisionMade)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(CDASchemaCDAElectionDecisionMade *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(CDASchemaCDAElectionDecisionMade *)self dictionaryRepresentation];
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
  v39 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ((*&self->_has & 2) != 0)
  {
    v4 = [(CDASchemaCDAElectionDecisionMade *)self decision];
    if (v4 == 1)
    {
      v5 = @"CDADECISION_WIN";
    }

    else
    {
      v5 = @"CDADECISION_UNKNOWN";
    }

    if (v4 == 2)
    {
      v6 = @"CDADECISION_LOSS";
    }

    else
    {
      v6 = v5;
    }

    [v3 setObject:v6 forKeyedSubscript:@"decision"];
  }

  if (self->_goodnessScoreBoosts)
  {
    v7 = [(CDASchemaCDAElectionDecisionMade *)self goodnessScoreBoosts];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"goodnessScoreBoosts"];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v9 forKeyedSubscript:@"goodnessScoreBoosts"];
    }
  }

  if ([(NSArray *)self->_heardParticipants count])
  {
    v10 = [MEMORY[0x1E695DF70] array];
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

          v16 = [*(*(&v34 + 1) + 8 * i) dictionaryRepresentation];
          if (v16)
          {
            [v10 addObject:v16];
          }

          else
          {
            v17 = [MEMORY[0x1E695DFB0] null];
            [v10 addObject:v17];
          }
        }

        v13 = [(NSArray *)v11 countByEnumeratingWithState:&v34 objects:v38 count:16];
      }

      while (v13);
    }

    [v3 setObject:v10 forKeyedSubscript:@"heardParticipants"];
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    v19 = [(CDASchemaCDAElectionDecisionMade *)self previousDecision];
    if (v19 == 1)
    {
      v20 = @"CDADECISION_WIN";
    }

    else
    {
      v20 = @"CDADECISION_UNKNOWN";
    }

    if (v19 == 2)
    {
      v21 = @"CDADECISION_LOSS";
    }

    else
    {
      v21 = v20;
    }

    [v3 setObject:v21 forKeyedSubscript:@"previousDecision"];
    has = self->_has;
  }

  if ((has & 0x10) != 0)
  {
    v22 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CDASchemaCDAElectionDecisionMade rawGoodnessScore](self, "rawGoodnessScore")}];
    [v3 setObject:v22 forKeyedSubscript:@"rawGoodnessScore"];
  }

  if (self->_thisDevice)
  {
    v23 = [(CDASchemaCDAElectionDecisionMade *)self thisDevice];
    v24 = [v23 dictionaryRepresentation];
    if (v24)
    {
      [v3 setObject:v24 forKeyedSubscript:@"thisDevice"];
    }

    else
    {
      v25 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v25 forKeyedSubscript:@"thisDevice"];
    }
  }

  v26 = self->_has;
  if ((v26 & 8) != 0)
  {
    v27 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[CDASchemaCDAElectionDecisionMade timeSinceLastDecisionInMs](self, "timeSinceLastDecisionInMs")}];
    [v3 setObject:v27 forKeyedSubscript:@"timeSinceLastDecisionInMs"];

    v26 = self->_has;
  }

  if (v26)
  {
    v28 = MEMORY[0x1E696AD98];
    [(CDASchemaCDAElectionDecisionMade *)self version];
    v29 = [v28 numberWithFloat:?];
    [v3 setObject:v29 forKeyedSubscript:@"version"];
  }

  if (self->_winningDevice)
  {
    v30 = [(CDASchemaCDAElectionDecisionMade *)self winningDevice];
    v31 = [v30 dictionaryRepresentation];
    if (v31)
    {
      [v3 setObject:v31 forKeyedSubscript:@"winningDevice"];
    }

    else
    {
      v32 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v32 forKeyedSubscript:@"winningDevice"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_40;
  }

  has = self->_has;
  v6 = v4[72];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_40;
  }

  if (*&has)
  {
    version = self->_version;
    [v4 version];
    if (version != v8)
    {
      goto LABEL_40;
    }

    has = self->_has;
    v6 = v4[72];
  }

  v9 = (*&has >> 1) & 1;
  if (v9 != ((v6 >> 1) & 1))
  {
    goto LABEL_40;
  }

  if (v9)
  {
    decision = self->_decision;
    if (decision != [v4 decision])
    {
      goto LABEL_40;
    }

    has = self->_has;
    v6 = v4[72];
  }

  v11 = (*&has >> 2) & 1;
  if (v11 != ((v6 >> 2) & 1))
  {
    goto LABEL_40;
  }

  if (v11)
  {
    previousDecision = self->_previousDecision;
    if (previousDecision != [v4 previousDecision])
    {
      goto LABEL_40;
    }
  }

  v13 = [(CDASchemaCDAElectionDecisionMade *)self thisDevice];
  v14 = [v4 thisDevice];
  if ((v13 != 0) == (v14 == 0))
  {
    goto LABEL_39;
  }

  v15 = [(CDASchemaCDAElectionDecisionMade *)self thisDevice];
  if (v15)
  {
    v16 = v15;
    v17 = [(CDASchemaCDAElectionDecisionMade *)self thisDevice];
    v18 = [v4 thisDevice];
    v19 = [v17 isEqual:v18];

    if (!v19)
    {
      goto LABEL_40;
    }
  }

  else
  {
  }

  v13 = [(CDASchemaCDAElectionDecisionMade *)self winningDevice];
  v14 = [v4 winningDevice];
  if ((v13 != 0) == (v14 == 0))
  {
    goto LABEL_39;
  }

  v20 = [(CDASchemaCDAElectionDecisionMade *)self winningDevice];
  if (v20)
  {
    v21 = v20;
    v22 = [(CDASchemaCDAElectionDecisionMade *)self winningDevice];
    v23 = [v4 winningDevice];
    v24 = [v22 isEqual:v23];

    if (!v24)
    {
      goto LABEL_40;
    }
  }

  else
  {
  }

  v13 = [(CDASchemaCDAElectionDecisionMade *)self heardParticipants];
  v14 = [v4 heardParticipants];
  if ((v13 != 0) == (v14 == 0))
  {
    goto LABEL_39;
  }

  v25 = [(CDASchemaCDAElectionDecisionMade *)self heardParticipants];
  if (v25)
  {
    v26 = v25;
    v27 = [(CDASchemaCDAElectionDecisionMade *)self heardParticipants];
    v28 = [v4 heardParticipants];
    v29 = [v27 isEqual:v28];

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
  v32 = v4[72];
  if (v31 != ((v32 >> 3) & 1))
  {
    goto LABEL_40;
  }

  if (v31)
  {
    timeSinceLastDecisionInMs = self->_timeSinceLastDecisionInMs;
    if (timeSinceLastDecisionInMs != [v4 timeSinceLastDecisionInMs])
    {
      goto LABEL_40;
    }

    v30 = self->_has;
    v32 = v4[72];
  }

  v34 = (*&v30 >> 4) & 1;
  if (v34 != ((v32 >> 4) & 1))
  {
    goto LABEL_40;
  }

  if (v34)
  {
    rawGoodnessScore = self->_rawGoodnessScore;
    if (rawGoodnessScore != [v4 rawGoodnessScore])
    {
      goto LABEL_40;
    }
  }

  v13 = [(CDASchemaCDAElectionDecisionMade *)self goodnessScoreBoosts];
  v14 = [v4 goodnessScoreBoosts];
  if ((v13 != 0) == (v14 == 0))
  {
LABEL_39:

    goto LABEL_40;
  }

  v36 = [(CDASchemaCDAElectionDecisionMade *)self goodnessScoreBoosts];
  if (!v36)
  {

LABEL_43:
    v41 = 1;
    goto LABEL_41;
  }

  v37 = v36;
  v38 = [(CDASchemaCDAElectionDecisionMade *)self goodnessScoreBoosts];
  v39 = [v4 goodnessScoreBoosts];
  v40 = [v38 isEqual:v39];

  if (v40)
  {
    goto LABEL_43;
  }

LABEL_40:
  v41 = 0;
LABEL_41:

  return v41;
}

- (void)writeTo:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
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
  v6 = [(CDASchemaCDAElectionDecisionMade *)self thisDevice];

  if (v6)
  {
    v7 = [(CDASchemaCDAElectionDecisionMade *)self thisDevice];
    PBDataWriterWriteSubmessage();
  }

  v8 = [(CDASchemaCDAElectionDecisionMade *)self winningDevice];

  if (v8)
  {
    v9 = [(CDASchemaCDAElectionDecisionMade *)self winningDevice];
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

  v16 = [(CDASchemaCDAElectionDecisionMade *)self goodnessScoreBoosts];

  if (v16)
  {
    v17 = [(CDASchemaCDAElectionDecisionMade *)self goodnessScoreBoosts];
    PBDataWriterWriteSubmessage();
  }
}

- (void)setHasRawGoodnessScore:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasTimeSinceLastDecisionInMs:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)addHeardParticipants:(id)a3
{
  v4 = a3;
  heardParticipants = self->_heardParticipants;
  v8 = v4;
  if (!heardParticipants)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_heardParticipants;
    self->_heardParticipants = v6;

    v4 = v8;
    heardParticipants = self->_heardParticipants;
  }

  [(NSArray *)heardParticipants addObject:v4];
}

- (void)setHasPreviousDecision:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasDecision:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = CDASchemaCDAElectionDecisionMade;
  v5 = [(SISchemaInstrumentationMessage *)&v18 applySensitiveConditionsPolicy:v4];
  v6 = [(CDASchemaCDAElectionDecisionMade *)self thisDevice];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(CDASchemaCDAElectionDecisionMade *)self deleteThisDevice];
  }

  v9 = [(CDASchemaCDAElectionDecisionMade *)self winningDevice];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(CDASchemaCDAElectionDecisionMade *)self deleteWinningDevice];
  }

  v12 = [(CDASchemaCDAElectionDecisionMade *)self heardParticipants];
  v13 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:v12 underConditions:v4];
  [(CDASchemaCDAElectionDecisionMade *)self setHeardParticipants:v13];

  v14 = [(CDASchemaCDAElectionDecisionMade *)self goodnessScoreBoosts];
  v15 = [v14 applySensitiveConditionsPolicy:v4];
  v16 = [v15 suppressMessage];

  if (v16)
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