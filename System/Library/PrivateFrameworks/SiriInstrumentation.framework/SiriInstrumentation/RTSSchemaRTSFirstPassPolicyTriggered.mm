@interface RTSSchemaRTSFirstPassPolicyTriggered
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (RTSSchemaRTSFirstPassPolicyTriggered)initWithDictionary:(id)dictionary;
- (RTSSchemaRTSFirstPassPolicyTriggered)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasFirstPassTriggerScore:(BOOL)score;
- (void)writeTo:(id)to;
@end

@implementation RTSSchemaRTSFirstPassPolicyTriggered

- (RTSSchemaRTSFirstPassPolicyTriggered)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = RTSSchemaRTSFirstPassPolicyTriggered;
  v5 = [(RTSSchemaRTSFirstPassPolicyTriggered *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"isReplayModeEnabled"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[RTSSchemaRTSFirstPassPolicyTriggered setIsReplayModeEnabled:](v5, "setIsReplayModeEnabled:", [v6 BOOLValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"firstPassTriggerScore"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v7 doubleValue];
      [(RTSSchemaRTSFirstPassPolicyTriggered *)v5 setFirstPassTriggerScore:?];
    }

    v8 = v5;
  }

  return v5;
}

- (RTSSchemaRTSFirstPassPolicyTriggered)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(RTSSchemaRTSFirstPassPolicyTriggered *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(RTSSchemaRTSFirstPassPolicyTriggered *)self dictionaryRepresentation];
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
    [(RTSSchemaRTSFirstPassPolicyTriggered *)self firstPassTriggerScore];
    v6 = [v5 numberWithDouble:?];
    [dictionary setObject:v6 forKeyedSubscript:@"firstPassTriggerScore"];

    has = self->_has;
  }

  if (has)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[RTSSchemaRTSFirstPassPolicyTriggered isReplayModeEnabled](self, "isReplayModeEnabled")}];
    [dictionary setObject:v7 forKeyedSubscript:@"isReplayModeEnabled"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_isReplayModeEnabled;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_8:
    v8 = 0;
    return v8 ^ v4;
  }

  v4 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_8;
  }

LABEL_3:
  firstPassTriggerScore = self->_firstPassTriggerScore;
  if (firstPassTriggerScore < 0.0)
  {
    firstPassTriggerScore = -firstPassTriggerScore;
  }

  *v2.i64 = floor(firstPassTriggerScore + 0.5);
  v6 = (firstPassTriggerScore - *v2.i64) * 1.84467441e19;
  *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v7.f64[0] = NAN;
  v7.f64[1] = NAN;
  v8 = 2654435761u * *vbslq_s8(vnegq_f64(v7), v3, v2).i64;
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

  return v8 ^ v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_9;
  }

  has = self->_has;
  v6 = equalCopy[24];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_9;
  }

  if (*&has)
  {
    isReplayModeEnabled = self->_isReplayModeEnabled;
    if (isReplayModeEnabled != [equalCopy isReplayModeEnabled])
    {
      goto LABEL_9;
    }

    has = self->_has;
    v6 = equalCopy[24];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 == ((v6 >> 1) & 1))
  {
    if (!v8 || (firstPassTriggerScore = self->_firstPassTriggerScore, [equalCopy firstPassTriggerScore], firstPassTriggerScore == v10))
    {
      v11 = 1;
      goto LABEL_10;
    }
  }

LABEL_9:
  v11 = 0;
LABEL_10:

  return v11;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  v6 = toCopy;
  if (has)
  {
    PBDataWriterWriteBOOLField();
    toCopy = v6;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    PBDataWriterWriteDoubleField();
    toCopy = v6;
  }
}

- (void)setHasFirstPassTriggerScore:(BOOL)score
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