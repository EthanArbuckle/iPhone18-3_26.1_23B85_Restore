@interface ODMSiriSchemaODMSiriTurnRestatementScore
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (ODMSiriSchemaODMSiriTurnRestatementScore)initWithDictionary:(id)dictionary;
- (ODMSiriSchemaODMSiriTurnRestatementScore)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasPhoneticRestatementScore:(BOOL)score;
- (void)setHasUtteranceRestatementScore:(BOOL)score;
- (void)writeTo:(id)to;
@end

@implementation ODMSiriSchemaODMSiriTurnRestatementScore

- (ODMSiriSchemaODMSiriTurnRestatementScore)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v15.receiver = self;
  v15.super_class = ODMSiriSchemaODMSiriTurnRestatementScore;
  v5 = [(ODMSiriSchemaODMSiriTurnRestatementScore *)&v15 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"currentTurnId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(ODMSiriSchemaODMSiriTurnRestatementScore *)v5 setCurrentTurnId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"nextTurnId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[SISchemaUUID alloc] initWithDictionary:v8];
      [(ODMSiriSchemaODMSiriTurnRestatementScore *)v5 setNextTurnId:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"isUserRequest"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODMSiriSchemaODMSiriTurnRestatementScore setIsUserRequest:](v5, "setIsUserRequest:", [v10 BOOLValue]);
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"utteranceRestatementScore"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v11 doubleValue];
      [(ODMSiriSchemaODMSiriTurnRestatementScore *)v5 setUtteranceRestatementScore:?];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"phoneticRestatementScore"];
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

- (ODMSiriSchemaODMSiriTurnRestatementScore)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(ODMSiriSchemaODMSiriTurnRestatementScore *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(ODMSiriSchemaODMSiriTurnRestatementScore *)self dictionaryRepresentation];
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
  if (self->_currentTurnId)
  {
    currentTurnId = [(ODMSiriSchemaODMSiriTurnRestatementScore *)self currentTurnId];
    dictionaryRepresentation = [currentTurnId dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"currentTurnId"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"currentTurnId"];
    }
  }

  if (*&self->_has)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[ODMSiriSchemaODMSiriTurnRestatementScore isUserRequest](self, "isUserRequest")}];
    [dictionary setObject:v7 forKeyedSubscript:@"isUserRequest"];
  }

  if (self->_nextTurnId)
  {
    nextTurnId = [(ODMSiriSchemaODMSiriTurnRestatementScore *)self nextTurnId];
    dictionaryRepresentation2 = [nextTurnId dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"nextTurnId"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"nextTurnId"];
    }
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    v12 = MEMORY[0x1E696AD98];
    [(ODMSiriSchemaODMSiriTurnRestatementScore *)self phoneticRestatementScore];
    v13 = [v12 numberWithDouble:?];
    [dictionary setObject:v13 forKeyedSubscript:@"phoneticRestatementScore"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v14 = MEMORY[0x1E696AD98];
    [(ODMSiriSchemaODMSiriTurnRestatementScore *)self utteranceRestatementScore];
    v15 = [v14 numberWithDouble:?];
    [dictionary setObject:v15 forKeyedSubscript:@"utteranceRestatementScore"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  currentTurnId = [(ODMSiriSchemaODMSiriTurnRestatementScore *)self currentTurnId];
  currentTurnId2 = [equalCopy currentTurnId];
  if ((currentTurnId != 0) == (currentTurnId2 == 0))
  {
    goto LABEL_11;
  }

  currentTurnId3 = [(ODMSiriSchemaODMSiriTurnRestatementScore *)self currentTurnId];
  if (currentTurnId3)
  {
    v8 = currentTurnId3;
    currentTurnId4 = [(ODMSiriSchemaODMSiriTurnRestatementScore *)self currentTurnId];
    currentTurnId5 = [equalCopy currentTurnId];
    v11 = [currentTurnId4 isEqual:currentTurnId5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  currentTurnId = [(ODMSiriSchemaODMSiriTurnRestatementScore *)self nextTurnId];
  currentTurnId2 = [equalCopy nextTurnId];
  if ((currentTurnId != 0) == (currentTurnId2 == 0))
  {
LABEL_11:

    goto LABEL_12;
  }

  nextTurnId = [(ODMSiriSchemaODMSiriTurnRestatementScore *)self nextTurnId];
  if (nextTurnId)
  {
    v13 = nextTurnId;
    nextTurnId2 = [(ODMSiriSchemaODMSiriTurnRestatementScore *)self nextTurnId];
    nextTurnId3 = [equalCopy nextTurnId];
    v16 = [nextTurnId2 isEqual:nextTurnId3];

    if (!v16)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  has = self->_has;
  v20 = equalCopy[48];
  if ((*&has & 1) == (v20 & 1))
  {
    if (*&has)
    {
      isUserRequest = self->_isUserRequest;
      if (isUserRequest != [equalCopy isUserRequest])
      {
        goto LABEL_12;
      }

      has = self->_has;
      v20 = equalCopy[48];
    }

    v22 = (*&has >> 1) & 1;
    if (v22 == ((v20 >> 1) & 1))
    {
      if (v22)
      {
        utteranceRestatementScore = self->_utteranceRestatementScore;
        [equalCopy utteranceRestatementScore];
        if (utteranceRestatementScore != v24)
        {
          goto LABEL_12;
        }

        has = self->_has;
        v20 = equalCopy[48];
      }

      v25 = (*&has >> 2) & 1;
      if (v25 == ((v20 >> 2) & 1))
      {
        if (!v25 || (phoneticRestatementScore = self->_phoneticRestatementScore, [equalCopy phoneticRestatementScore], phoneticRestatementScore == v27))
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

- (void)writeTo:(id)to
{
  toCopy = to;
  currentTurnId = [(ODMSiriSchemaODMSiriTurnRestatementScore *)self currentTurnId];

  if (currentTurnId)
  {
    currentTurnId2 = [(ODMSiriSchemaODMSiriTurnRestatementScore *)self currentTurnId];
    PBDataWriterWriteSubmessage();
  }

  nextTurnId = [(ODMSiriSchemaODMSiriTurnRestatementScore *)self nextTurnId];

  if (nextTurnId)
  {
    nextTurnId2 = [(ODMSiriSchemaODMSiriTurnRestatementScore *)self nextTurnId];
    PBDataWriterWriteSubmessage();
  }

  has = self->_has;
  if (has)
  {
    PBDataWriterWriteBOOLField();
    has = self->_has;
  }

  v9 = toCopy;
  if ((has & 2) != 0)
  {
    PBDataWriterWriteDoubleField();
    v9 = toCopy;
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    PBDataWriterWriteDoubleField();
    v9 = toCopy;
  }
}

- (void)setHasPhoneticRestatementScore:(BOOL)score
{
  if (score)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasUtteranceRestatementScore:(BOOL)score
{
  if (score)
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
  v13.receiver = self;
  v13.super_class = ODMSiriSchemaODMSiriTurnRestatementScore;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:policyCopy];
  currentTurnId = [(ODMSiriSchemaODMSiriTurnRestatementScore *)self currentTurnId];
  v7 = [currentTurnId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(ODMSiriSchemaODMSiriTurnRestatementScore *)self deleteCurrentTurnId];
  }

  nextTurnId = [(ODMSiriSchemaODMSiriTurnRestatementScore *)self nextTurnId];
  v10 = [nextTurnId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
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