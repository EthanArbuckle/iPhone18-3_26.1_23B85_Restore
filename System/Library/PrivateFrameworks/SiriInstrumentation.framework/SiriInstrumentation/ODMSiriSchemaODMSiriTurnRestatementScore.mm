@interface ODMSiriSchemaODMSiriTurnRestatementScore
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (ODMSiriSchemaODMSiriTurnRestatementScore)initWithDictionary:(id)a3;
- (ODMSiriSchemaODMSiriTurnRestatementScore)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasPhoneticRestatementScore:(BOOL)a3;
- (void)setHasUtteranceRestatementScore:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation ODMSiriSchemaODMSiriTurnRestatementScore

- (ODMSiriSchemaODMSiriTurnRestatementScore)initWithDictionary:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = ODMSiriSchemaODMSiriTurnRestatementScore;
  v5 = [(ODMSiriSchemaODMSiriTurnRestatementScore *)&v15 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"currentTurnId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(ODMSiriSchemaODMSiriTurnRestatementScore *)v5 setCurrentTurnId:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"nextTurnId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[SISchemaUUID alloc] initWithDictionary:v8];
      [(ODMSiriSchemaODMSiriTurnRestatementScore *)v5 setNextTurnId:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"isUserRequest"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODMSiriSchemaODMSiriTurnRestatementScore setIsUserRequest:](v5, "setIsUserRequest:", [v10 BOOLValue]);
    }

    v11 = [v4 objectForKeyedSubscript:@"utteranceRestatementScore"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v11 doubleValue];
      [(ODMSiriSchemaODMSiriTurnRestatementScore *)v5 setUtteranceRestatementScore:?];
    }

    v12 = [v4 objectForKeyedSubscript:@"phoneticRestatementScore"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v12 doubleValue];
      [(ODMSiriSchemaODMSiriTurnRestatementScore *)v5 setPhoneticRestatementScore:?];
    }

    v13 = v5;
  }

  return v5;
}

- (ODMSiriSchemaODMSiriTurnRestatementScore)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(ODMSiriSchemaODMSiriTurnRestatementScore *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(ODMSiriSchemaODMSiriTurnRestatementScore *)self dictionaryRepresentation];
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
  if (self->_currentTurnId)
  {
    v4 = [(ODMSiriSchemaODMSiriTurnRestatementScore *)self currentTurnId];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"currentTurnId"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"currentTurnId"];
    }
  }

  if (*&self->_has)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[ODMSiriSchemaODMSiriTurnRestatementScore isUserRequest](self, "isUserRequest")}];
    [v3 setObject:v7 forKeyedSubscript:@"isUserRequest"];
  }

  if (self->_nextTurnId)
  {
    v8 = [(ODMSiriSchemaODMSiriTurnRestatementScore *)self nextTurnId];
    v9 = [v8 dictionaryRepresentation];
    if (v9)
    {
      [v3 setObject:v9 forKeyedSubscript:@"nextTurnId"];
    }

    else
    {
      v10 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v10 forKeyedSubscript:@"nextTurnId"];
    }
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    v12 = MEMORY[0x1E696AD98];
    [(ODMSiriSchemaODMSiriTurnRestatementScore *)self phoneticRestatementScore];
    v13 = [v12 numberWithDouble:?];
    [v3 setObject:v13 forKeyedSubscript:@"phoneticRestatementScore"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v14 = MEMORY[0x1E696AD98];
    [(ODMSiriSchemaODMSiriTurnRestatementScore *)self utteranceRestatementScore];
    v15 = [v14 numberWithDouble:?];
    [v3 setObject:v15 forKeyedSubscript:@"utteranceRestatementScore"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(SISchemaUUID *)self->_currentTurnId hash];
  v4 = [(SISchemaUUID *)self->_nextTurnId hash];
  if (*&self->_has)
  {
    v7 = 2654435761 * self->_isUserRequest;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_8:
    v11 = 0;
    goto LABEL_9;
  }

  v7 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_8;
  }

LABEL_3:
  utteranceRestatementScore = self->_utteranceRestatementScore;
  if (utteranceRestatementScore < 0.0)
  {
    utteranceRestatementScore = -utteranceRestatementScore;
  }

  *v5.i64 = floor(utteranceRestatementScore + 0.5);
  v9 = (utteranceRestatementScore - *v5.i64) * 1.84467441e19;
  *v6.i64 = *v5.i64 - trunc(*v5.i64 * 5.42101086e-20) * 1.84467441e19;
  v10.f64[0] = NAN;
  v10.f64[1] = NAN;
  v5 = vbslq_s8(vnegq_f64(v10), v6, v5);
  v11 = 2654435761u * *v5.i64;
  if (v9 >= 0.0)
  {
    if (v9 > 0.0)
    {
      v11 += v9;
    }
  }

  else
  {
    v11 -= fabs(v9);
  }

LABEL_9:
  if ((*&self->_has & 4) != 0)
  {
    phoneticRestatementScore = self->_phoneticRestatementScore;
    if (phoneticRestatementScore < 0.0)
    {
      phoneticRestatementScore = -phoneticRestatementScore;
    }

    *v5.i64 = floor(phoneticRestatementScore + 0.5);
    v14 = (phoneticRestatementScore - *v5.i64) * 1.84467441e19;
    *v6.i64 = *v5.i64 - trunc(*v5.i64 * 5.42101086e-20) * 1.84467441e19;
    v15.f64[0] = NAN;
    v15.f64[1] = NAN;
    v12 = 2654435761u * *vbslq_s8(vnegq_f64(v15), v6, v5).i64;
    if (v14 >= 0.0)
    {
      if (v14 > 0.0)
      {
        v12 += v14;
      }
    }

    else
    {
      v12 -= fabs(v14);
    }
  }

  else
  {
    v12 = 0;
  }

  return v4 ^ v3 ^ v7 ^ v11 ^ v12;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  v5 = [(ODMSiriSchemaODMSiriTurnRestatementScore *)self currentTurnId];
  v6 = [v4 currentTurnId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_11;
  }

  v7 = [(ODMSiriSchemaODMSiriTurnRestatementScore *)self currentTurnId];
  if (v7)
  {
    v8 = v7;
    v9 = [(ODMSiriSchemaODMSiriTurnRestatementScore *)self currentTurnId];
    v10 = [v4 currentTurnId];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  v5 = [(ODMSiriSchemaODMSiriTurnRestatementScore *)self nextTurnId];
  v6 = [v4 nextTurnId];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_11:

    goto LABEL_12;
  }

  v12 = [(ODMSiriSchemaODMSiriTurnRestatementScore *)self nextTurnId];
  if (v12)
  {
    v13 = v12;
    v14 = [(ODMSiriSchemaODMSiriTurnRestatementScore *)self nextTurnId];
    v15 = [v4 nextTurnId];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  has = self->_has;
  v20 = v4[48];
  if ((*&has & 1) == (v20 & 1))
  {
    if (*&has)
    {
      isUserRequest = self->_isUserRequest;
      if (isUserRequest != [v4 isUserRequest])
      {
        goto LABEL_12;
      }

      has = self->_has;
      v20 = v4[48];
    }

    v22 = (*&has >> 1) & 1;
    if (v22 == ((v20 >> 1) & 1))
    {
      if (v22)
      {
        utteranceRestatementScore = self->_utteranceRestatementScore;
        [v4 utteranceRestatementScore];
        if (utteranceRestatementScore != v24)
        {
          goto LABEL_12;
        }

        has = self->_has;
        v20 = v4[48];
      }

      v25 = (*&has >> 2) & 1;
      if (v25 == ((v20 >> 2) & 1))
      {
        if (!v25 || (phoneticRestatementScore = self->_phoneticRestatementScore, [v4 phoneticRestatementScore], phoneticRestatementScore == v27))
        {
          v17 = 1;
          goto LABEL_13;
        }
      }
    }
  }

LABEL_12:
  v17 = 0;
LABEL_13:

  return v17;
}

- (void)writeTo:(id)a3
{
  v10 = a3;
  v4 = [(ODMSiriSchemaODMSiriTurnRestatementScore *)self currentTurnId];

  if (v4)
  {
    v5 = [(ODMSiriSchemaODMSiriTurnRestatementScore *)self currentTurnId];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(ODMSiriSchemaODMSiriTurnRestatementScore *)self nextTurnId];

  if (v6)
  {
    v7 = [(ODMSiriSchemaODMSiriTurnRestatementScore *)self nextTurnId];
    PBDataWriterWriteSubmessage();
  }

  has = self->_has;
  if (has)
  {
    PBDataWriterWriteBOOLField();
    has = self->_has;
  }

  v9 = v10;
  if ((has & 2) != 0)
  {
    PBDataWriterWriteDoubleField();
    v9 = v10;
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    PBDataWriterWriteDoubleField();
    v9 = v10;
  }
}

- (void)setHasPhoneticRestatementScore:(BOOL)a3
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

- (void)setHasUtteranceRestatementScore:(BOOL)a3
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
  v13.receiver = self;
  v13.super_class = ODMSiriSchemaODMSiriTurnRestatementScore;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:v4];
  v6 = [(ODMSiriSchemaODMSiriTurnRestatementScore *)self currentTurnId];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(ODMSiriSchemaODMSiriTurnRestatementScore *)self deleteCurrentTurnId];
  }

  v9 = [(ODMSiriSchemaODMSiriTurnRestatementScore *)self nextTurnId];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(ODMSiriSchemaODMSiriTurnRestatementScore *)self deleteNextTurnId];
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