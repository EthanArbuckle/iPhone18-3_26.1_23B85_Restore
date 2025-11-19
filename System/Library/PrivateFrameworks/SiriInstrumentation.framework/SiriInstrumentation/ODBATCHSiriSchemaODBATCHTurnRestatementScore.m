@interface ODBATCHSiriSchemaODBATCHTurnRestatementScore
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (ODBATCHSiriSchemaODBATCHTurnRestatementScore)initWithDictionary:(id)a3;
- (ODBATCHSiriSchemaODBATCHTurnRestatementScore)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasIsCrossDevice:(BOOL)a3;
- (void)setHasSemanticSimilarityScore:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation ODBATCHSiriSchemaODBATCHTurnRestatementScore

- (ODBATCHSiriSchemaODBATCHTurnRestatementScore)initWithDictionary:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = ODBATCHSiriSchemaODBATCHTurnRestatementScore;
  v5 = [(ODBATCHSiriSchemaODBATCHTurnRestatementScore *)&v15 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"currentTurnId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(ODBATCHSiriSchemaODBATCHTurnRestatementScore *)v5 setCurrentTurnId:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"nextTurnId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[SISchemaUUID alloc] initWithDictionary:v8];
      [(ODBATCHSiriSchemaODBATCHTurnRestatementScore *)v5 setNextTurnId:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"utteranceRestatementScore"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v10 doubleValue];
      [(ODBATCHSiriSchemaODBATCHTurnRestatementScore *)v5 setUtteranceRestatementScore:?];
    }

    v11 = [v4 objectForKeyedSubscript:@"semanticSimilarityScore"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v11 doubleValue];
      [(ODBATCHSiriSchemaODBATCHTurnRestatementScore *)v5 setSemanticSimilarityScore:?];
    }

    v12 = [v4 objectForKeyedSubscript:@"isCrossDevice"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODBATCHSiriSchemaODBATCHTurnRestatementScore setIsCrossDevice:](v5, "setIsCrossDevice:", [v12 BOOLValue]);
    }

    v13 = v5;
  }

  return v5;
}

- (ODBATCHSiriSchemaODBATCHTurnRestatementScore)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(ODBATCHSiriSchemaODBATCHTurnRestatementScore *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(ODBATCHSiriSchemaODBATCHTurnRestatementScore *)self dictionaryRepresentation];
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
    v4 = [(ODBATCHSiriSchemaODBATCHTurnRestatementScore *)self currentTurnId];
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

  if ((*(&self->_isCrossDevice + 1) & 4) != 0)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[ODBATCHSiriSchemaODBATCHTurnRestatementScore isCrossDevice](self, "isCrossDevice")}];
    [v3 setObject:v7 forKeyedSubscript:@"isCrossDevice"];
  }

  if (self->_nextTurnId)
  {
    v8 = [(ODBATCHSiriSchemaODBATCHTurnRestatementScore *)self nextTurnId];
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

  v11 = *(&self->_isCrossDevice + 1);
  if ((v11 & 2) != 0)
  {
    v12 = MEMORY[0x1E696AD98];
    [(ODBATCHSiriSchemaODBATCHTurnRestatementScore *)self semanticSimilarityScore];
    v13 = [v12 numberWithDouble:?];
    [v3 setObject:v13 forKeyedSubscript:@"semanticSimilarityScore"];

    v11 = *(&self->_isCrossDevice + 1);
  }

  if (v11)
  {
    v14 = MEMORY[0x1E696AD98];
    [(ODBATCHSiriSchemaODBATCHTurnRestatementScore *)self utteranceRestatementScore];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  v5 = [(ODBATCHSiriSchemaODBATCHTurnRestatementScore *)self currentTurnId];
  v6 = [v4 currentTurnId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_11;
  }

  v7 = [(ODBATCHSiriSchemaODBATCHTurnRestatementScore *)self currentTurnId];
  if (v7)
  {
    v8 = v7;
    v9 = [(ODBATCHSiriSchemaODBATCHTurnRestatementScore *)self currentTurnId];
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

  v5 = [(ODBATCHSiriSchemaODBATCHTurnRestatementScore *)self nextTurnId];
  v6 = [v4 nextTurnId];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_11:

    goto LABEL_12;
  }

  v12 = [(ODBATCHSiriSchemaODBATCHTurnRestatementScore *)self nextTurnId];
  if (v12)
  {
    v13 = v12;
    v14 = [(ODBATCHSiriSchemaODBATCHTurnRestatementScore *)self nextTurnId];
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

  v19 = *(&self->_isCrossDevice + 1);
  v20 = v4[41];
  if ((v19 & 1) == (v20 & 1))
  {
    if (v19)
    {
      utteranceRestatementScore = self->_utteranceRestatementScore;
      [v4 utteranceRestatementScore];
      if (utteranceRestatementScore != v22)
      {
        goto LABEL_12;
      }

      v19 = *(&self->_isCrossDevice + 1);
      v20 = v4[41];
    }

    v23 = (v19 >> 1) & 1;
    if (v23 == ((v20 >> 1) & 1))
    {
      if (v23)
      {
        semanticSimilarityScore = self->_semanticSimilarityScore;
        [v4 semanticSimilarityScore];
        if (semanticSimilarityScore != v25)
        {
          goto LABEL_12;
        }

        v19 = *(&self->_isCrossDevice + 1);
        v20 = v4[41];
      }

      v26 = (v19 >> 2) & 1;
      if (v26 == ((v20 >> 2) & 1))
      {
        if (!v26 || (isCrossDevice = self->_isCrossDevice, isCrossDevice == [v4 isCrossDevice]))
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
  v4 = [(ODBATCHSiriSchemaODBATCHTurnRestatementScore *)self currentTurnId];

  if (v4)
  {
    v5 = [(ODBATCHSiriSchemaODBATCHTurnRestatementScore *)self currentTurnId];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(ODBATCHSiriSchemaODBATCHTurnRestatementScore *)self nextTurnId];

  if (v6)
  {
    v7 = [(ODBATCHSiriSchemaODBATCHTurnRestatementScore *)self nextTurnId];
    PBDataWriterWriteSubmessage();
  }

  v8 = *(&self->_isCrossDevice + 1);
  if (v8)
  {
    PBDataWriterWriteDoubleField();
    v8 = *(&self->_isCrossDevice + 1);
  }

  v9 = v10;
  if ((v8 & 2) != 0)
  {
    PBDataWriterWriteDoubleField();
    v9 = v10;
    v8 = *(&self->_isCrossDevice + 1);
  }

  if ((v8 & 4) != 0)
  {
    PBDataWriterWriteBOOLField();
    v9 = v10;
  }
}

- (void)setHasIsCrossDevice:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isCrossDevice + 1) = *(&self->_isCrossDevice + 1) & 0xFB | v3;
}

- (void)setHasSemanticSimilarityScore:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isCrossDevice + 1) = *(&self->_isCrossDevice + 1) & 0xFD | v3;
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = ODBATCHSiriSchemaODBATCHTurnRestatementScore;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:v4];
  v6 = [(ODBATCHSiriSchemaODBATCHTurnRestatementScore *)self currentTurnId];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(ODBATCHSiriSchemaODBATCHTurnRestatementScore *)self deleteCurrentTurnId];
  }

  v9 = [(ODBATCHSiriSchemaODBATCHTurnRestatementScore *)self nextTurnId];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
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