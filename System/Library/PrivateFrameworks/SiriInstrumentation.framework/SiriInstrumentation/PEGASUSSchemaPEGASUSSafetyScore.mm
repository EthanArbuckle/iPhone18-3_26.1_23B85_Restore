@interface PEGASUSSchemaPEGASUSSafetyScore
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (PEGASUSSchemaPEGASUSSafetyScore)initWithDictionary:(id)dictionary;
- (PEGASUSSchemaPEGASUSSafetyScore)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasScore:(BOOL)score;
- (void)writeTo:(id)to;
@end

@implementation PEGASUSSchemaPEGASUSSafetyScore

- (PEGASUSSchemaPEGASUSSafetyScore)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = PEGASUSSchemaPEGASUSSafetyScore;
  v5 = [(PEGASUSSchemaPEGASUSSafetyScore *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"scoreClass"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PEGASUSSchemaPEGASUSSafetyScore setScoreClass:](v5, "setScoreClass:", [v6 intValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"score"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v7 floatValue];
      [(PEGASUSSchemaPEGASUSSafetyScore *)v5 setScore:?];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"scoreLabel"];
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

- (PEGASUSSchemaPEGASUSSafetyScore)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(PEGASUSSchemaPEGASUSSafetyScore *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(PEGASUSSchemaPEGASUSSafetyScore *)self dictionaryRepresentation];
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
  has = self->_has;
  if ((has & 2) != 0)
  {
    v5 = MEMORY[0x1E696AD98];
    [(PEGASUSSchemaPEGASUSSafetyScore *)self score];
    v6 = [v5 numberWithFloat:?];
    [dictionary setObject:v6 forKeyedSubscript:@"score"];

    has = self->_has;
  }

  if (has)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithInt:{-[PEGASUSSchemaPEGASUSSafetyScore scoreClass](self, "scoreClass")}];
    [dictionary setObject:v7 forKeyedSubscript:@"scoreClass"];
  }

  if (self->_scoreLabel)
  {
    scoreLabel = [(PEGASUSSchemaPEGASUSSafetyScore *)self scoreLabel];
    v9 = [scoreLabel copy];
    [dictionary setObject:v9 forKeyedSubscript:@"scoreLabel"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_14;
  }

  has = self->_has;
  v6 = equalCopy[24];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_14;
  }

  if (*&has)
  {
    scoreClass = self->_scoreClass;
    if (scoreClass != [equalCopy scoreClass])
    {
      goto LABEL_14;
    }

    has = self->_has;
    v6 = equalCopy[24];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 == ((v6 >> 1) & 1))
  {
    if (!v8 || (score = self->_score, [equalCopy score], score == v10))
    {
      scoreLabel = [(PEGASUSSchemaPEGASUSSafetyScore *)self scoreLabel];
      scoreLabel2 = [equalCopy scoreLabel];
      v13 = scoreLabel2;
      if ((scoreLabel != 0) != (scoreLabel2 == 0))
      {
        scoreLabel3 = [(PEGASUSSchemaPEGASUSSafetyScore *)self scoreLabel];
        if (!scoreLabel3)
        {

LABEL_17:
          v19 = 1;
          goto LABEL_15;
        }

        v15 = scoreLabel3;
        scoreLabel4 = [(PEGASUSSchemaPEGASUSSafetyScore *)self scoreLabel];
        scoreLabel5 = [equalCopy scoreLabel];
        v18 = [scoreLabel4 isEqual:scoreLabel5];

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

- (void)writeTo:(id)to
{
  toCopy = to;
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

  scoreLabel = [(PEGASUSSchemaPEGASUSSafetyScore *)self scoreLabel];

  v6 = toCopy;
  if (scoreLabel)
  {
    PBDataWriterWriteStringField();
    v6 = toCopy;
  }
}

- (void)setHasScore:(BOOL)score
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

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end