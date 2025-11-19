@interface CDASchemaCDAElectionAdvertisingStartStarted
- (BOOL)isEqual:(id)a3;
- (CDASchemaCDAElectionAdvertisingStartStarted)initWithDictionary:(id)a3;
- (CDASchemaCDAElectionAdvertisingStartStarted)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasAdvertisementDelay:(BOOL)a3;
- (void)setHasAdvertisementInterval:(BOOL)a3;
- (void)setHasVoiceTriggerLatency:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation CDASchemaCDAElectionAdvertisingStartStarted

- (CDASchemaCDAElectionAdvertisingStartStarted)initWithDictionary:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = CDASchemaCDAElectionAdvertisingStartStarted;
  v5 = [(CDASchemaCDAElectionAdvertisingStartStarted *)&v12 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"state"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[CDASchemaCDAElectionAdvertisingStartStarted setState:](v5, "setState:", [v6 intValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"advertisementInterval"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v7 floatValue];
      [(CDASchemaCDAElectionAdvertisingStartStarted *)v5 setAdvertisementInterval:?];
    }

    v8 = [v4 objectForKeyedSubscript:@"advertisementDelay"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v8 floatValue];
      [(CDASchemaCDAElectionAdvertisingStartStarted *)v5 setAdvertisementDelay:?];
    }

    v9 = [v4 objectForKeyedSubscript:@"voiceTriggerLatency"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v9 floatValue];
      [(CDASchemaCDAElectionAdvertisingStartStarted *)v5 setVoiceTriggerLatency:?];
    }

    v10 = v5;
  }

  return v5;
}

- (CDASchemaCDAElectionAdvertisingStartStarted)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(CDASchemaCDAElectionAdvertisingStartStarted *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(CDASchemaCDAElectionAdvertisingStartStarted *)self dictionaryRepresentation];
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
  if ((has & 4) != 0)
  {
    v8 = MEMORY[0x1E696AD98];
    [(CDASchemaCDAElectionAdvertisingStartStarted *)self advertisementDelay];
    v9 = [v8 numberWithFloat:?];
    [v3 setObject:v9 forKeyedSubscript:@"advertisementDelay"];

    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  v10 = MEMORY[0x1E696AD98];
  [(CDASchemaCDAElectionAdvertisingStartStarted *)self advertisementInterval];
  v11 = [v10 numberWithFloat:?];
  [v3 setObject:v11 forKeyedSubscript:@"advertisementInterval"];

  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  v12 = [(CDASchemaCDAElectionAdvertisingStartStarted *)self state]- 1;
  if (v12 > 0x11)
  {
    v13 = @"CDASTATE_UNKNOWN";
  }

  else
  {
    v13 = off_1E78D2710[v12];
  }

  [v3 setObject:v13 forKeyedSubscript:@"state"];
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_6;
  }

LABEL_5:
  v5 = MEMORY[0x1E696AD98];
  [(CDASchemaCDAElectionAdvertisingStartStarted *)self voiceTriggerLatency];
  v6 = [v5 numberWithFloat:?];
  [v3 setObject:v6 forKeyedSubscript:@"voiceTriggerLatency"];

LABEL_6:
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

LABEL_9:
    v9 = 0;
    goto LABEL_10;
  }

  v4 = 2654435761 * self->_state;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_9;
  }

LABEL_3:
  advertisementInterval = self->_advertisementInterval;
  if (advertisementInterval >= 0.0)
  {
    v6 = advertisementInterval;
  }

  else
  {
    v6 = -advertisementInterval;
  }

  *v2.i64 = floor(v6 + 0.5);
  v7 = (v6 - *v2.i64) * 1.84467441e19;
  *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v8.f64[0] = NAN;
  v8.f64[1] = NAN;
  v2 = vbslq_s8(vnegq_f64(v8), v3, v2);
  v9 = 2654435761u * *v2.i64;
  if (v7 >= 0.0)
  {
    if (v7 > 0.0)
    {
      v9 += v7;
    }
  }

  else
  {
    v9 -= fabs(v7);
  }

LABEL_10:
  if ((*&self->_has & 4) != 0)
  {
    advertisementDelay = self->_advertisementDelay;
    if (advertisementDelay >= 0.0)
    {
      v12 = advertisementDelay;
    }

    else
    {
      v12 = -advertisementDelay;
    }

    *v2.i64 = floor(v12 + 0.5);
    v13 = (v12 - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v14.f64[0] = NAN;
    v14.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v14), v3, v2);
    v10 = 2654435761u * *v2.i64;
    if (v13 >= 0.0)
    {
      if (v13 > 0.0)
      {
        v10 += v13;
      }
    }

    else
    {
      v10 -= fabs(v13);
    }
  }

  else
  {
    v10 = 0;
  }

  if ((*&self->_has & 8) != 0)
  {
    voiceTriggerLatency = self->_voiceTriggerLatency;
    if (voiceTriggerLatency >= 0.0)
    {
      v17 = voiceTriggerLatency;
    }

    else
    {
      v17 = -voiceTriggerLatency;
    }

    *v2.i64 = floor(v17 + 0.5);
    v18 = (v17 - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v19.f64[0] = NAN;
    v19.f64[1] = NAN;
    v15 = 2654435761u * *vbslq_s8(vnegq_f64(v19), v3, v2).i64;
    if (v18 >= 0.0)
    {
      if (v18 > 0.0)
      {
        v15 += v18;
      }
    }

    else
    {
      v15 -= fabs(v18);
    }
  }

  else
  {
    v15 = 0;
  }

  return v9 ^ v4 ^ v10 ^ v15;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  has = self->_has;
  v6 = v4[24];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_17;
  }

  if (*&has)
  {
    state = self->_state;
    if (state != [v4 state])
    {
      goto LABEL_17;
    }

    has = self->_has;
    v6 = v4[24];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 == ((v6 >> 1) & 1))
  {
    if (v8)
    {
      advertisementInterval = self->_advertisementInterval;
      [v4 advertisementInterval];
      if (advertisementInterval != v10)
      {
        goto LABEL_17;
      }

      has = self->_has;
      v6 = v4[24];
    }

    v11 = (*&has >> 2) & 1;
    if (v11 == ((v6 >> 2) & 1))
    {
      if (v11)
      {
        advertisementDelay = self->_advertisementDelay;
        [v4 advertisementDelay];
        if (advertisementDelay != v13)
        {
          goto LABEL_17;
        }

        has = self->_has;
        v6 = v4[24];
      }

      v14 = (*&has >> 3) & 1;
      if (v14 == ((v6 >> 3) & 1))
      {
        if (!v14 || (voiceTriggerLatency = self->_voiceTriggerLatency, [v4 voiceTriggerLatency], voiceTriggerLatency == v16))
        {
          v17 = 1;
          goto LABEL_18;
        }
      }
    }
  }

LABEL_17:
  v17 = 0;
LABEL_18:

  return v17;
}

- (void)writeTo:(id)a3
{
  v5 = a3;
  has = self->_has;
  if (has)
  {
    PBDataWriterWriteInt32Field();
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  PBDataWriterWriteFloatField();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  PBDataWriterWriteFloatField();
  if ((*&self->_has & 8) != 0)
  {
LABEL_5:
    PBDataWriterWriteFloatField();
  }

LABEL_6:
}

- (void)setHasVoiceTriggerLatency:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasAdvertisementDelay:(BOOL)a3
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

- (void)setHasAdvertisementInterval:(BOOL)a3
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