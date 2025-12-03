@interface ODBATCHSiriSchemaODBATCHTurnRestatementScore
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (ODBATCHSiriSchemaODBATCHTurnRestatementScore)initWithDictionary:(id)dictionary;
- (ODBATCHSiriSchemaODBATCHTurnRestatementScore)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasIsCrossDevice:(BOOL)device;
- (void)setHasSemanticSimilarityScore:(BOOL)score;
- (void)writeTo:(id)to;
@end

@implementation ODBATCHSiriSchemaODBATCHTurnRestatementScore

- (ODBATCHSiriSchemaODBATCHTurnRestatementScore)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v15.receiver = self;
  v15.super_class = ODBATCHSiriSchemaODBATCHTurnRestatementScore;
  v5 = [(ODBATCHSiriSchemaODBATCHTurnRestatementScore *)&v15 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"currentTurnId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(ODBATCHSiriSchemaODBATCHTurnRestatementScore *)v5 setCurrentTurnId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"nextTurnId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[SISchemaUUID alloc] initWithDictionary:v8];
      [(ODBATCHSiriSchemaODBATCHTurnRestatementScore *)v5 setNextTurnId:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"utteranceRestatementScore"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v10 doubleValue];
      [(ODBATCHSiriSchemaODBATCHTurnRestatementScore *)v5 setUtteranceRestatementScore:?];
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"semanticSimilarityScore"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v11 doubleValue];
      [(ODBATCHSiriSchemaODBATCHTurnRestatementScore *)v5 setSemanticSimilarityScore:?];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"isCrossDevice"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODBATCHSiriSchemaODBATCHTurnRestatementScore setIsCrossDevice:](v5, "setIsCrossDevice:", [v12 BOOLValue]);
    }

    v13 = v5;
  }

  return v5;
}

- (ODBATCHSiriSchemaODBATCHTurnRestatementScore)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(ODBATCHSiriSchemaODBATCHTurnRestatementScore *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(ODBATCHSiriSchemaODBATCHTurnRestatementScore *)self dictionaryRepresentation];
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
    currentTurnId = [(ODBATCHSiriSchemaODBATCHTurnRestatementScore *)self currentTurnId];
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

  if ((*(&self->_isCrossDevice + 1) & 4) != 0)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[ODBATCHSiriSchemaODBATCHTurnRestatementScore isCrossDevice](self, "isCrossDevice")}];
    [dictionary setObject:v7 forKeyedSubscript:@"isCrossDevice"];
  }

  if (self->_nextTurnId)
  {
    nextTurnId = [(ODBATCHSiriSchemaODBATCHTurnRestatementScore *)self nextTurnId];
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

  v11 = *(&self->_isCrossDevice + 1);
  if ((v11 & 2) != 0)
  {
    v12 = MEMORY[0x1E696AD98];
    [(ODBATCHSiriSchemaODBATCHTurnRestatementScore *)self semanticSimilarityScore];
    v13 = [v12 numberWithDouble:?];
    [dictionary setObject:v13 forKeyedSubscript:@"semanticSimilarityScore"];

    v11 = *(&self->_isCrossDevice + 1);
  }

  if (v11)
  {
    v14 = MEMORY[0x1E696AD98];
    [(ODBATCHSiriSchemaODBATCHTurnRestatementScore *)self utteranceRestatementScore];
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
  if (*(&self->_isCrossDevice + 1))
  {
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
    v7 = 2654435761u * *v5.i64;
    if (v9 >= 0.0)
    {
      if (v9 > 0.0)
      {
        v7 += v9;
      }
    }

    else
    {
      v7 -= fabs(v9);
    }
  }

  else
  {
    v7 = 0;
  }

  if ((*(&self->_isCrossDevice + 1) & 2) != 0)
  {
    semanticSimilarityScore = self->_semanticSimilarityScore;
    if (semanticSimilarityScore < 0.0)
    {
      semanticSimilarityScore = -semanticSimilarityScore;
    }

    *v5.i64 = floor(semanticSimilarityScore + 0.5);
    v13 = (semanticSimilarityScore - *v5.i64) * 1.84467441e19;
    *v6.i64 = *v5.i64 - trunc(*v5.i64 * 5.42101086e-20) * 1.84467441e19;
    v14.f64[0] = NAN;
    v14.f64[1] = NAN;
    v11 = 2654435761u * *vbslq_s8(vnegq_f64(v14), v6, v5).i64;
    if (v13 >= 0.0)
    {
      if (v13 > 0.0)
      {
        v11 += v13;
      }
    }

    else
    {
      v11 -= fabs(v13);
    }
  }

  else
  {
    v11 = 0;
  }

  if ((*(&self->_isCrossDevice + 1) & 4) != 0)
  {
    v15 = 2654435761 * self->_isCrossDevice;
  }

  else
  {
    v15 = 0;
  }

  return v4 ^ v3 ^ v7 ^ v11 ^ v15;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  currentTurnId = [(ODBATCHSiriSchemaODBATCHTurnRestatementScore *)self currentTurnId];
  currentTurnId2 = [equalCopy currentTurnId];
  if ((currentTurnId != 0) == (currentTurnId2 == 0))
  {
    goto LABEL_11;
  }

  currentTurnId3 = [(ODBATCHSiriSchemaODBATCHTurnRestatementScore *)self currentTurnId];
  if (currentTurnId3)
  {
    v8 = currentTurnId3;
    currentTurnId4 = [(ODBATCHSiriSchemaODBATCHTurnRestatementScore *)self currentTurnId];
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

  currentTurnId = [(ODBATCHSiriSchemaODBATCHTurnRestatementScore *)self nextTurnId];
  currentTurnId2 = [equalCopy nextTurnId];
  if ((currentTurnId != 0) == (currentTurnId2 == 0))
  {
LABEL_11:

    goto LABEL_12;
  }

  nextTurnId = [(ODBATCHSiriSchemaODBATCHTurnRestatementScore *)self nextTurnId];
  if (nextTurnId)
  {
    v13 = nextTurnId;
    nextTurnId2 = [(ODBATCHSiriSchemaODBATCHTurnRestatementScore *)self nextTurnId];
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

  v19 = *(&self->_isCrossDevice + 1);
  v20 = equalCopy[41];
  if ((v19 & 1) == (v20 & 1))
  {
    if (v19)
    {
      utteranceRestatementScore = self->_utteranceRestatementScore;
      [equalCopy utteranceRestatementScore];
      if (utteranceRestatementScore != v22)
      {
        goto LABEL_12;
      }

      v19 = *(&self->_isCrossDevice + 1);
      v20 = equalCopy[41];
    }

    v23 = (v19 >> 1) & 1;
    if (v23 == ((v20 >> 1) & 1))
    {
      if (v23)
      {
        semanticSimilarityScore = self->_semanticSimilarityScore;
        [equalCopy semanticSimilarityScore];
        if (semanticSimilarityScore != v25)
        {
          goto LABEL_12;
        }

        v19 = *(&self->_isCrossDevice + 1);
        v20 = equalCopy[41];
      }

      v26 = (v19 >> 2) & 1;
      if (v26 == ((v20 >> 2) & 1))
      {
        if (!v26 || (isCrossDevice = self->_isCrossDevice, isCrossDevice == [equalCopy isCrossDevice]))
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
  currentTurnId = [(ODBATCHSiriSchemaODBATCHTurnRestatementScore *)self currentTurnId];

  if (currentTurnId)
  {
    currentTurnId2 = [(ODBATCHSiriSchemaODBATCHTurnRestatementScore *)self currentTurnId];
    PBDataWriterWriteSubmessage();
  }

  nextTurnId = [(ODBATCHSiriSchemaODBATCHTurnRestatementScore *)self nextTurnId];

  if (nextTurnId)
  {
    nextTurnId2 = [(ODBATCHSiriSchemaODBATCHTurnRestatementScore *)self nextTurnId];
    PBDataWriterWriteSubmessage();
  }

  v8 = *(&self->_isCrossDevice + 1);
  if (v8)
  {
    PBDataWriterWriteDoubleField();
    v8 = *(&self->_isCrossDevice + 1);
  }

  v9 = toCopy;
  if ((v8 & 2) != 0)
  {
    PBDataWriterWriteDoubleField();
    v9 = toCopy;
    v8 = *(&self->_isCrossDevice + 1);
  }

  if ((v8 & 4) != 0)
  {
    PBDataWriterWriteBOOLField();
    v9 = toCopy;
  }
}

- (void)setHasIsCrossDevice:(BOOL)device
{
  if (device)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isCrossDevice + 1) = *(&self->_isCrossDevice + 1) & 0xFB | v3;
}

- (void)setHasSemanticSimilarityScore:(BOOL)score
{
  if (score)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isCrossDevice + 1) = *(&self->_isCrossDevice + 1) & 0xFD | v3;
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v13.receiver = self;
  v13.super_class = ODBATCHSiriSchemaODBATCHTurnRestatementScore;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:policyCopy];
  currentTurnId = [(ODBATCHSiriSchemaODBATCHTurnRestatementScore *)self currentTurnId];
  v7 = [currentTurnId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(ODBATCHSiriSchemaODBATCHTurnRestatementScore *)self deleteCurrentTurnId];
  }

  nextTurnId = [(ODBATCHSiriSchemaODBATCHTurnRestatementScore *)self nextTurnId];
  v10 = [nextTurnId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(ODBATCHSiriSchemaODBATCHTurnRestatementScore *)self deleteNextTurnId];
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