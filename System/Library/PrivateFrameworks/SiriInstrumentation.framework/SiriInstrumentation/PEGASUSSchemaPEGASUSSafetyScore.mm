@interface PEGASUSSchemaPEGASUSSafetyScore
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (PEGASUSSchemaPEGASUSSafetyScore)initWithDictionary:(id)a3;
- (PEGASUSSchemaPEGASUSSafetyScore)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasScore:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation PEGASUSSchemaPEGASUSSafetyScore

- (PEGASUSSchemaPEGASUSSafetyScore)initWithDictionary:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = PEGASUSSchemaPEGASUSSafetyScore;
  v5 = [(PEGASUSSchemaPEGASUSSafetyScore *)&v12 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"scoreClass"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PEGASUSSchemaPEGASUSSafetyScore setScoreClass:](v5, "setScoreClass:", [v6 intValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"score"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v7 floatValue];
      [(PEGASUSSchemaPEGASUSSafetyScore *)v5 setScore:?];
    }

    v8 = [v4 objectForKeyedSubscript:@"scoreLabel"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(PEGASUSSchemaPEGASUSSafetyScore *)v5 setScoreLabel:v9];
    }

    v10 = v5;
  }

  return v5;
}

- (PEGASUSSchemaPEGASUSSafetyScore)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(PEGASUSSchemaPEGASUSSafetyScore *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(PEGASUSSchemaPEGASUSSafetyScore *)self dictionaryRepresentation];
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
  if ((has & 2) != 0)
  {
    v5 = MEMORY[0x1E696AD98];
    [(PEGASUSSchemaPEGASUSSafetyScore *)self score];
    v6 = [v5 numberWithFloat:?];
    [v3 setObject:v6 forKeyedSubscript:@"score"];

    has = self->_has;
  }

  if (has)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithInt:{-[PEGASUSSchemaPEGASUSSafetyScore scoreClass](self, "scoreClass")}];
    [v3 setObject:v7 forKeyedSubscript:@"scoreClass"];
  }

  if (self->_scoreLabel)
  {
    v8 = [(PEGASUSSchemaPEGASUSSafetyScore *)self scoreLabel];
    v9 = [v8 copy];
    [v3 setObject:v9 forKeyedSubscript:@"scoreLabel"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v8 = 2654435761 * self->_scoreClass;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_9:
    v13 = 0;
    return v13 ^ v8 ^ [(NSString *)self->_scoreLabel hash:v3];
  }

  v8 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_9;
  }

LABEL_3:
  score = self->_score;
  if (score >= 0.0)
  {
    v10 = score;
  }

  else
  {
    v10 = -score;
  }

  *v6.i64 = floor(v10 + 0.5);
  v11 = (v10 - *v6.i64) * 1.84467441e19;
  *v7.i64 = *v6.i64 - trunc(*v6.i64 * 5.42101086e-20) * 1.84467441e19;
  v12.f64[0] = NAN;
  v12.f64[1] = NAN;
  v13 = 2654435761u * *vbslq_s8(vnegq_f64(v12), v7, v6).i64;
  if (v11 >= 0.0)
  {
    if (v11 > 0.0)
    {
      v13 += v11;
    }
  }

  else
  {
    v13 -= fabs(v11);
  }

  return v13 ^ v8 ^ [(NSString *)self->_scoreLabel hash:v3];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_14;
  }

  has = self->_has;
  v6 = v4[24];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_14;
  }

  if (*&has)
  {
    scoreClass = self->_scoreClass;
    if (scoreClass != [v4 scoreClass])
    {
      goto LABEL_14;
    }

    has = self->_has;
    v6 = v4[24];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 == ((v6 >> 1) & 1))
  {
    if (!v8 || (score = self->_score, [v4 score], score == v10))
    {
      v11 = [(PEGASUSSchemaPEGASUSSafetyScore *)self scoreLabel];
      v12 = [v4 scoreLabel];
      v13 = v12;
      if ((v11 != 0) != (v12 == 0))
      {
        v14 = [(PEGASUSSchemaPEGASUSSafetyScore *)self scoreLabel];
        if (!v14)
        {

LABEL_17:
          v19 = 1;
          goto LABEL_15;
        }

        v15 = v14;
        v16 = [(PEGASUSSchemaPEGASUSSafetyScore *)self scoreLabel];
        v17 = [v4 scoreLabel];
        v18 = [v16 isEqual:v17];

        if (v18)
        {
          goto LABEL_17;
        }
      }

      else
      {
      }
    }
  }

LABEL_14:
  v19 = 0;
LABEL_15:

  return v19;
}

- (void)writeTo:(id)a3
{
  v7 = a3;
  has = self->_has;
  if (has)
  {
    PBDataWriterWriteInt32Field();
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    PBDataWriterWriteFloatField();
  }

  v5 = [(PEGASUSSchemaPEGASUSSafetyScore *)self scoreLabel];

  v6 = v7;
  if (v5)
  {
    PBDataWriterWriteStringField();
    v6 = v7;
  }
}

- (void)setHasScore:(BOOL)a3
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