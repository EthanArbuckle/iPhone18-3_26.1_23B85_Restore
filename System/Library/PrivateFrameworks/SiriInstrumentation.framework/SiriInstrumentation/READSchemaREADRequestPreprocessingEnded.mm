@interface READSchemaREADRequestPreprocessingEnded
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (READSchemaREADRequestPreprocessingEnded)initWithDictionary:(id)a3;
- (READSchemaREADRequestPreprocessingEnded)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasEstimatedDuration:(BOOL)a3;
- (void)setHasUtteranceCount:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation READSchemaREADRequestPreprocessingEnded

- (READSchemaREADRequestPreprocessingEnded)initWithDictionary:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = READSchemaREADRequestPreprocessingEnded;
  v5 = [(READSchemaREADRequestPreprocessingEnded *)&v11 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"articleTextLength"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[READSchemaREADRequestPreprocessingEnded setArticleTextLength:](v5, "setArticleTextLength:", [v6 unsignedIntValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"utteranceCount"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[READSchemaREADRequestPreprocessingEnded setUtteranceCount:](v5, "setUtteranceCount:", [v7 unsignedIntValue]);
    }

    v8 = [v4 objectForKeyedSubscript:@"estimatedDuration"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v8 floatValue];
      [(READSchemaREADRequestPreprocessingEnded *)v5 setEstimatedDuration:?];
    }

    v9 = v5;
  }

  return v5;
}

- (READSchemaREADRequestPreprocessingEnded)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(READSchemaREADRequestPreprocessingEnded *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(READSchemaREADRequestPreprocessingEnded *)self dictionaryRepresentation];
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
  has = self->_has;
  if (has)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[READSchemaREADRequestPreprocessingEnded articleTextLength](self, "articleTextLength")}];
    [v3 setObject:v7 forKeyedSubscript:@"articleTextLength"];

    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  v8 = MEMORY[0x1E696AD98];
  [(READSchemaREADRequestPreprocessingEnded *)self estimatedDuration];
  v9 = [v8 numberWithFloat:?];
  [v3 setObject:v9 forKeyedSubscript:@"estimatedDuration"];

  if ((*&self->_has & 2) != 0)
  {
LABEL_4:
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[READSchemaREADRequestPreprocessingEnded utteranceCount](self, "utteranceCount")}];
    [v3 setObject:v5 forKeyedSubscript:@"utteranceCount"];
  }

LABEL_5:
  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  if ((*&self->_has & 1) == 0)
  {
    v4 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_10:
    v5 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_4;
    }

LABEL_11:
    v10 = 0;
    return v5 ^ v4 ^ v10;
  }

  v4 = 2654435761 * self->_articleTextLength;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_10;
  }

LABEL_3:
  v5 = 2654435761 * self->_utteranceCount;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_11;
  }

LABEL_4:
  estimatedDuration = self->_estimatedDuration;
  if (estimatedDuration >= 0.0)
  {
    v7 = estimatedDuration;
  }

  else
  {
    v7 = -estimatedDuration;
  }

  *v2.i64 = floor(v7 + 0.5);
  v8 = (v7 - *v2.i64) * 1.84467441e19;
  *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v9.f64[0] = NAN;
  v9.f64[1] = NAN;
  v10 = 2654435761u * *vbslq_s8(vnegq_f64(v9), v3, v2).i64;
  if (v8 >= 0.0)
  {
    if (v8 > 0.0)
    {
      v10 += v8;
    }
  }

  else
  {
    v10 -= fabs(v8);
  }

  return v5 ^ v4 ^ v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_13;
  }

  has = self->_has;
  v6 = v4[20];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_13;
  }

  if (*&has)
  {
    articleTextLength = self->_articleTextLength;
    if (articleTextLength != [v4 articleTextLength])
    {
      goto LABEL_13;
    }

    has = self->_has;
    v6 = v4[20];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 == ((v6 >> 1) & 1))
  {
    if (v8)
    {
      utteranceCount = self->_utteranceCount;
      if (utteranceCount != [v4 utteranceCount])
      {
        goto LABEL_13;
      }

      has = self->_has;
      v6 = v4[20];
    }

    v10 = (*&has >> 2) & 1;
    if (v10 == ((v6 >> 2) & 1))
    {
      if (!v10 || (estimatedDuration = self->_estimatedDuration, [v4 estimatedDuration], estimatedDuration == v12))
      {
        v13 = 1;
        goto LABEL_14;
      }
    }
  }

LABEL_13:
  v13 = 0;
LABEL_14:

  return v13;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  v6 = v4;
  if (has)
  {
    PBDataWriterWriteUint32Field();
    v4 = v6;
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

  PBDataWriterWriteUint32Field();
  v4 = v6;
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    PBDataWriterWriteFloatField();
    v4 = v6;
  }

LABEL_5:
}

- (void)setHasEstimatedDuration:(BOOL)a3
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

- (void)setHasUtteranceCount:(BOOL)a3
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

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end