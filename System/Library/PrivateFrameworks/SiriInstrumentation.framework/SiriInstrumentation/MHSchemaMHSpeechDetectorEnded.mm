@interface MHSchemaMHSpeechDetectorEnded
- (BOOL)isEqual:(id)equal;
- (MHSchemaMHSpeechDetectorEnded)initWithDictionary:(id)dictionary;
- (MHSchemaMHSpeechDetectorEnded)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasAmountOfSpeechDetectedInMs:(BOOL)ms;
- (void)setHasStartSpeechDetectionThresholdInMs:(BOOL)ms;
- (void)writeTo:(id)to;
@end

@implementation MHSchemaMHSpeechDetectorEnded

- (MHSchemaMHSpeechDetectorEnded)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v13.receiver = self;
  v13.super_class = MHSchemaMHSpeechDetectorEnded;
  v5 = [(MHSchemaMHSpeechDetectorEnded *)&v13 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"previousRequestId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(MHSchemaMHSpeechDetectorEnded *)v5 setPreviousRequestId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"timeSinceLastAcceptedRequestInNs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[MHSchemaMHSpeechDetectorEnded setTimeSinceLastAcceptedRequestInNs:](v5, "setTimeSinceLastAcceptedRequestInNs:", [v8 unsignedLongLongValue]);
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"amountOfSpeechDetectedInMs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v9 floatValue];
      [(MHSchemaMHSpeechDetectorEnded *)v5 setAmountOfSpeechDetectedInMs:?];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"startSpeechDetectionThresholdInMs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v10 floatValue];
      [(MHSchemaMHSpeechDetectorEnded *)v5 setStartSpeechDetectionThresholdInMs:?];
    }

    v11 = v5;
  }

  return v5;
}

- (MHSchemaMHSpeechDetectorEnded)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(MHSchemaMHSpeechDetectorEnded *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(MHSchemaMHSpeechDetectorEnded *)self dictionaryRepresentation];
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
  if ((*&self->_has & 2) != 0)
  {
    v4 = MEMORY[0x1E696AD98];
    [(MHSchemaMHSpeechDetectorEnded *)self amountOfSpeechDetectedInMs];
    v5 = [v4 numberWithFloat:?];
    [dictionary setObject:v5 forKeyedSubscript:@"amountOfSpeechDetectedInMs"];
  }

  if (self->_previousRequestId)
  {
    previousRequestId = [(MHSchemaMHSpeechDetectorEnded *)self previousRequestId];
    dictionaryRepresentation = [previousRequestId dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"previousRequestId"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"previousRequestId"];
    }
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    v10 = MEMORY[0x1E696AD98];
    [(MHSchemaMHSpeechDetectorEnded *)self startSpeechDetectionThresholdInMs];
    v11 = [v10 numberWithFloat:?];
    [dictionary setObject:v11 forKeyedSubscript:@"startSpeechDetectionThresholdInMs"];

    has = self->_has;
  }

  if (has)
  {
    v12 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[MHSchemaMHSpeechDetectorEnded timeSinceLastAcceptedRequestInNs](self, "timeSinceLastAcceptedRequestInNs")}];
    [dictionary setObject:v12 forKeyedSubscript:@"timeSinceLastAcceptedRequestInNs"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(SISchemaUUID *)self->_previousRequestId hash];
  if ((*&self->_has & 1) == 0)
  {
    v6 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_9:
    v11 = 0;
    goto LABEL_10;
  }

  v6 = 2654435761u * self->_timeSinceLastAcceptedRequestInNs;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_9;
  }

LABEL_3:
  amountOfSpeechDetectedInMs = self->_amountOfSpeechDetectedInMs;
  if (amountOfSpeechDetectedInMs >= 0.0)
  {
    v8 = amountOfSpeechDetectedInMs;
  }

  else
  {
    v8 = -amountOfSpeechDetectedInMs;
  }

  *v4.i64 = floor(v8 + 0.5);
  v9 = (v8 - *v4.i64) * 1.84467441e19;
  *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
  v10.f64[0] = NAN;
  v10.f64[1] = NAN;
  v4 = vbslq_s8(vnegq_f64(v10), v5, v4);
  v11 = 2654435761u * *v4.i64;
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

LABEL_10:
  if ((*&self->_has & 4) != 0)
  {
    startSpeechDetectionThresholdInMs = self->_startSpeechDetectionThresholdInMs;
    if (startSpeechDetectionThresholdInMs >= 0.0)
    {
      v14 = startSpeechDetectionThresholdInMs;
    }

    else
    {
      v14 = -startSpeechDetectionThresholdInMs;
    }

    *v4.i64 = floor(v14 + 0.5);
    v15 = (v14 - *v4.i64) * 1.84467441e19;
    *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
    v16.f64[0] = NAN;
    v16.f64[1] = NAN;
    v12 = 2654435761u * *vbslq_s8(vnegq_f64(v16), v5, v4).i64;
    if (v15 >= 0.0)
    {
      if (v15 > 0.0)
      {
        v12 += v15;
      }
    }

    else
    {
      v12 -= fabs(v15);
    }
  }

  else
  {
    v12 = 0;
  }

  return v6 ^ v3 ^ v11 ^ v12;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_19;
  }

  previousRequestId = [(MHSchemaMHSpeechDetectorEnded *)self previousRequestId];
  previousRequestId2 = [equalCopy previousRequestId];
  v7 = previousRequestId2;
  if ((previousRequestId != 0) != (previousRequestId2 == 0))
  {
    previousRequestId3 = [(MHSchemaMHSpeechDetectorEnded *)self previousRequestId];
    if (previousRequestId3)
    {
      v9 = previousRequestId3;
      previousRequestId4 = [(MHSchemaMHSpeechDetectorEnded *)self previousRequestId];
      previousRequestId5 = [equalCopy previousRequestId];
      v12 = [previousRequestId4 isEqual:previousRequestId5];

      if (!v12)
      {
        goto LABEL_19;
      }
    }

    else
    {
    }

    has = self->_has;
    v14 = equalCopy[32];
    if ((*&has & 1) == (v14 & 1))
    {
      if (*&has)
      {
        timeSinceLastAcceptedRequestInNs = self->_timeSinceLastAcceptedRequestInNs;
        if (timeSinceLastAcceptedRequestInNs != [equalCopy timeSinceLastAcceptedRequestInNs])
        {
          goto LABEL_19;
        }

        has = self->_has;
        v14 = equalCopy[32];
      }

      v16 = (*&has >> 1) & 1;
      if (v16 == ((v14 >> 1) & 1))
      {
        if (v16)
        {
          amountOfSpeechDetectedInMs = self->_amountOfSpeechDetectedInMs;
          [equalCopy amountOfSpeechDetectedInMs];
          if (amountOfSpeechDetectedInMs != v18)
          {
            goto LABEL_19;
          }

          has = self->_has;
          v14 = equalCopy[32];
        }

        v19 = (*&has >> 2) & 1;
        if (v19 == ((v14 >> 2) & 1))
        {
          if (!v19 || (startSpeechDetectionThresholdInMs = self->_startSpeechDetectionThresholdInMs, [equalCopy startSpeechDetectionThresholdInMs], startSpeechDetectionThresholdInMs == v21))
          {
            v22 = 1;
            goto LABEL_20;
          }
        }
      }
    }
  }

  else
  {
  }

LABEL_19:
  v22 = 0;
LABEL_20:

  return v22;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  previousRequestId = [(MHSchemaMHSpeechDetectorEnded *)self previousRequestId];

  if (previousRequestId)
  {
    previousRequestId2 = [(MHSchemaMHSpeechDetectorEnded *)self previousRequestId];
    PBDataWriterWriteSubmessage();
  }

  has = self->_has;
  if (has)
  {
    PBDataWriterWriteUint64Field();
    has = self->_has;
  }

  v7 = toCopy;
  if ((has & 2) != 0)
  {
    PBDataWriterWriteFloatField();
    v7 = toCopy;
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    PBDataWriterWriteFloatField();
    v7 = toCopy;
  }
}

- (void)setHasStartSpeechDetectionThresholdInMs:(BOOL)ms
{
  if (ms)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasAmountOfSpeechDetectedInMs:(BOOL)ms
{
  if (ms)
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
  v9.receiver = self;
  v9.super_class = MHSchemaMHSpeechDetectorEnded;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(MHSchemaMHSpeechDetectorEnded *)self previousRequestId:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(MHSchemaMHSpeechDetectorEnded *)self deletePreviousRequestId];
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