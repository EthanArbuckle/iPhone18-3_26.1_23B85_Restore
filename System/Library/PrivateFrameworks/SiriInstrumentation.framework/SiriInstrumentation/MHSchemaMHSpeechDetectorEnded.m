@interface MHSchemaMHSpeechDetectorEnded
- (BOOL)isEqual:(id)a3;
- (MHSchemaMHSpeechDetectorEnded)initWithDictionary:(id)a3;
- (MHSchemaMHSpeechDetectorEnded)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasAmountOfSpeechDetectedInMs:(BOOL)a3;
- (void)setHasStartSpeechDetectionThresholdInMs:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation MHSchemaMHSpeechDetectorEnded

- (MHSchemaMHSpeechDetectorEnded)initWithDictionary:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = MHSchemaMHSpeechDetectorEnded;
  v5 = [(MHSchemaMHSpeechDetectorEnded *)&v13 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"previousRequestId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(MHSchemaMHSpeechDetectorEnded *)v5 setPreviousRequestId:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"timeSinceLastAcceptedRequestInNs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[MHSchemaMHSpeechDetectorEnded setTimeSinceLastAcceptedRequestInNs:](v5, "setTimeSinceLastAcceptedRequestInNs:", [v8 unsignedLongLongValue]);
    }

    v9 = [v4 objectForKeyedSubscript:@"amountOfSpeechDetectedInMs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v9 floatValue];
      [(MHSchemaMHSpeechDetectorEnded *)v5 setAmountOfSpeechDetectedInMs:?];
    }

    v10 = [v4 objectForKeyedSubscript:@"startSpeechDetectionThresholdInMs"];
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

- (MHSchemaMHSpeechDetectorEnded)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(MHSchemaMHSpeechDetectorEnded *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(MHSchemaMHSpeechDetectorEnded *)self dictionaryRepresentation];
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
  if ((*&self->_has & 2) != 0)
  {
    v4 = MEMORY[0x1E696AD98];
    [(MHSchemaMHSpeechDetectorEnded *)self amountOfSpeechDetectedInMs];
    v5 = [v4 numberWithFloat:?];
    [v3 setObject:v5 forKeyedSubscript:@"amountOfSpeechDetectedInMs"];
  }

  if (self->_previousRequestId)
  {
    v6 = [(MHSchemaMHSpeechDetectorEnded *)self previousRequestId];
    v7 = [v6 dictionaryRepresentation];
    if (v7)
    {
      [v3 setObject:v7 forKeyedSubscript:@"previousRequestId"];
    }

    else
    {
      v8 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v8 forKeyedSubscript:@"previousRequestId"];
    }
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    v10 = MEMORY[0x1E696AD98];
    [(MHSchemaMHSpeechDetectorEnded *)self startSpeechDetectionThresholdInMs];
    v11 = [v10 numberWithFloat:?];
    [v3 setObject:v11 forKeyedSubscript:@"startSpeechDetectionThresholdInMs"];

    has = self->_has;
  }

  if (has)
  {
    v12 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[MHSchemaMHSpeechDetectorEnded timeSinceLastAcceptedRequestInNs](self, "timeSinceLastAcceptedRequestInNs")}];
    [v3 setObject:v12 forKeyedSubscript:@"timeSinceLastAcceptedRequestInNs"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_19;
  }

  v5 = [(MHSchemaMHSpeechDetectorEnded *)self previousRequestId];
  v6 = [v4 previousRequestId];
  v7 = v6;
  if ((v5 != 0) != (v6 == 0))
  {
    v8 = [(MHSchemaMHSpeechDetectorEnded *)self previousRequestId];
    if (v8)
    {
      v9 = v8;
      v10 = [(MHSchemaMHSpeechDetectorEnded *)self previousRequestId];
      v11 = [v4 previousRequestId];
      v12 = [v10 isEqual:v11];

      if (!v12)
      {
        goto LABEL_19;
      }
    }

    else
    {
    }

    has = self->_has;
    v14 = v4[32];
    if ((*&has & 1) == (v14 & 1))
    {
      if (*&has)
      {
        timeSinceLastAcceptedRequestInNs = self->_timeSinceLastAcceptedRequestInNs;
        if (timeSinceLastAcceptedRequestInNs != [v4 timeSinceLastAcceptedRequestInNs])
        {
          goto LABEL_19;
        }

        has = self->_has;
        v14 = v4[32];
      }

      v16 = (*&has >> 1) & 1;
      if (v16 == ((v14 >> 1) & 1))
      {
        if (v16)
        {
          amountOfSpeechDetectedInMs = self->_amountOfSpeechDetectedInMs;
          [v4 amountOfSpeechDetectedInMs];
          if (amountOfSpeechDetectedInMs != v18)
          {
            goto LABEL_19;
          }

          has = self->_has;
          v14 = v4[32];
        }

        v19 = (*&has >> 2) & 1;
        if (v19 == ((v14 >> 2) & 1))
        {
          if (!v19 || (startSpeechDetectionThresholdInMs = self->_startSpeechDetectionThresholdInMs, [v4 startSpeechDetectionThresholdInMs], startSpeechDetectionThresholdInMs == v21))
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

- (void)writeTo:(id)a3
{
  v8 = a3;
  v4 = [(MHSchemaMHSpeechDetectorEnded *)self previousRequestId];

  if (v4)
  {
    v5 = [(MHSchemaMHSpeechDetectorEnded *)self previousRequestId];
    PBDataWriterWriteSubmessage();
  }

  has = self->_has;
  if (has)
  {
    PBDataWriterWriteUint64Field();
    has = self->_has;
  }

  v7 = v8;
  if ((has & 2) != 0)
  {
    PBDataWriterWriteFloatField();
    v7 = v8;
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    PBDataWriterWriteFloatField();
    v7 = v8;
  }
}

- (void)setHasStartSpeechDetectionThresholdInMs:(BOOL)a3
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

- (void)setHasAmountOfSpeechDetectedInMs:(BOOL)a3
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
  v9.receiver = self;
  v9.super_class = MHSchemaMHSpeechDetectorEnded;
  v4 = a3;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:v4];
  v6 = [(MHSchemaMHSpeechDetectorEnded *)self previousRequestId:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:v4];

  LODWORD(v4) = [v7 suppressMessage];
  if (v4)
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