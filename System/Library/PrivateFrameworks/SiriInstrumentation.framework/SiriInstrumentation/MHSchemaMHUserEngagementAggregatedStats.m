@interface MHSchemaMHUserEngagementAggregatedStats
- (BOOL)isEqual:(id)a3;
- (MHSchemaMHUserEngagementAggregatedStats)initWithDictionary:(id)a3;
- (MHSchemaMHUserEngagementAggregatedStats)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasIntendedRequestCount:(BOOL)a3;
- (void)setHasIntendedRequestRatio:(BOOL)a3;
- (void)setHasRequestCount:(BOOL)a3;
- (void)setHasTriggeredMechanismRequestRatio:(BOOL)a3;
- (void)setHasUnintendedRequestCount:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation MHSchemaMHUserEngagementAggregatedStats

- (MHSchemaMHUserEngagementAggregatedStats)initWithDictionary:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = MHSchemaMHUserEngagementAggregatedStats;
  v5 = [(MHSchemaMHUserEngagementAggregatedStats *)&v16 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"mitigationType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[MHSchemaMHUserEngagementAggregatedStats setMitigationType:](v5, "setMitigationType:", [v6 intValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"requestCount"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[MHSchemaMHUserEngagementAggregatedStats setRequestCount:](v5, "setRequestCount:", [v7 intValue]);
    }

    v8 = [v4 objectForKeyedSubscript:@"intendedRequestCount"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[MHSchemaMHUserEngagementAggregatedStats setIntendedRequestCount:](v5, "setIntendedRequestCount:", [v8 intValue]);
    }

    v9 = [v4 objectForKeyedSubscript:@"unintendedRequestCount"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[MHSchemaMHUserEngagementAggregatedStats setUnintendedRequestCount:](v5, "setUnintendedRequestCount:", [v9 intValue]);
    }

    v10 = [v4 objectForKeyedSubscript:@"intendedRequestRatio"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v10 doubleValue];
      [(MHSchemaMHUserEngagementAggregatedStats *)v5 setIntendedRequestRatio:?];
    }

    v11 = [v4 objectForKeyedSubscript:@"triggeredMechanismRequestRatio"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v11 doubleValue];
      [(MHSchemaMHUserEngagementAggregatedStats *)v5 setTriggeredMechanismRequestRatio:?];
    }

    v12 = [v4 objectForKeyedSubscript:@"modelVersion"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [v12 copy];
      [(MHSchemaMHUserEngagementAggregatedStats *)v5 setModelVersion:v13];
    }

    v14 = v5;
  }

  return v5;
}

- (MHSchemaMHUserEngagementAggregatedStats)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(MHSchemaMHUserEngagementAggregatedStats *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(MHSchemaMHUserEngagementAggregatedStats *)self dictionaryRepresentation];
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
    v5 = [MEMORY[0x1E696AD98] numberWithInt:{-[MHSchemaMHUserEngagementAggregatedStats intendedRequestCount](self, "intendedRequestCount")}];
    [v3 setObject:v5 forKeyedSubscript:@"intendedRequestCount"];

    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_7;
    }
  }

  else if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_3;
  }

  v6 = MEMORY[0x1E696AD98];
  [(MHSchemaMHUserEngagementAggregatedStats *)self intendedRequestRatio];
  v7 = [v6 numberWithDouble:?];
  [v3 setObject:v7 forKeyedSubscript:@"intendedRequestRatio"];

  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_7:
  v8 = [(MHSchemaMHUserEngagementAggregatedStats *)self mitigationType]- 1;
  if (v8 > 2)
  {
    v9 = @"MHUSERENGAGEMENTMODELTRIGGERMECHANISM_UNKNOWN";
  }

  else
  {
    v9 = off_1E78D97F0[v8];
  }

  [v3 setObject:v9 forKeyedSubscript:@"mitigationType"];
LABEL_11:
  if (self->_modelVersion)
  {
    v10 = [(MHSchemaMHUserEngagementAggregatedStats *)self modelVersion];
    v11 = [v10 copy];
    [v3 setObject:v11 forKeyedSubscript:@"modelVersion"];
  }

  v12 = self->_has;
  if ((v12 & 2) != 0)
  {
    v15 = [MEMORY[0x1E696AD98] numberWithInt:{-[MHSchemaMHUserEngagementAggregatedStats requestCount](self, "requestCount")}];
    [v3 setObject:v15 forKeyedSubscript:@"requestCount"];

    v12 = self->_has;
    if ((v12 & 0x20) == 0)
    {
LABEL_15:
      if ((v12 & 8) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }
  }

  else if ((*&self->_has & 0x20) == 0)
  {
    goto LABEL_15;
  }

  v16 = MEMORY[0x1E696AD98];
  [(MHSchemaMHUserEngagementAggregatedStats *)self triggeredMechanismRequestRatio];
  v17 = [v16 numberWithDouble:?];
  [v3 setObject:v17 forKeyedSubscript:@"triggeredMechanismRequestRatio"];

  if ((*&self->_has & 8) != 0)
  {
LABEL_16:
    v13 = [MEMORY[0x1E696AD98] numberWithInt:{-[MHSchemaMHUserEngagementAggregatedStats unintendedRequestCount](self, "unintendedRequestCount")}];
    [v3 setObject:v13 forKeyedSubscript:@"unintendedRequestCount"];
  }

LABEL_17:
  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v8 = 2654435761 * self->_mitigationType;
    if ((*&self->_has & 2) != 0)
    {
LABEL_3:
      v9 = 2654435761 * self->_requestCount;
      if ((*&self->_has & 4) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v8 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  v9 = 0;
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    v10 = 2654435761 * self->_intendedRequestCount;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_5;
    }

LABEL_13:
    v11 = 0;
    if ((*&self->_has & 0x10) != 0)
    {
      goto LABEL_6;
    }

LABEL_14:
    v15 = 0;
    goto LABEL_15;
  }

LABEL_12:
  v10 = 0;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_13;
  }

LABEL_5:
  v11 = 2654435761 * self->_unintendedRequestCount;
  if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_14;
  }

LABEL_6:
  intendedRequestRatio = self->_intendedRequestRatio;
  if (intendedRequestRatio < 0.0)
  {
    intendedRequestRatio = -intendedRequestRatio;
  }

  *v6.i64 = floor(intendedRequestRatio + 0.5);
  v13 = (intendedRequestRatio - *v6.i64) * 1.84467441e19;
  *v7.i64 = *v6.i64 - trunc(*v6.i64 * 5.42101086e-20) * 1.84467441e19;
  v14.f64[0] = NAN;
  v14.f64[1] = NAN;
  v6 = vbslq_s8(vnegq_f64(v14), v7, v6);
  v15 = 2654435761u * *v6.i64;
  if (v13 >= 0.0)
  {
    if (v13 > 0.0)
    {
      v15 += v13;
    }
  }

  else
  {
    v15 -= fabs(v13);
  }

LABEL_15:
  if ((*&self->_has & 0x20) != 0)
  {
    triggeredMechanismRequestRatio = self->_triggeredMechanismRequestRatio;
    if (triggeredMechanismRequestRatio < 0.0)
    {
      triggeredMechanismRequestRatio = -triggeredMechanismRequestRatio;
    }

    *v6.i64 = floor(triggeredMechanismRequestRatio + 0.5);
    v18 = (triggeredMechanismRequestRatio - *v6.i64) * 1.84467441e19;
    *v7.i64 = *v6.i64 - trunc(*v6.i64 * 5.42101086e-20) * 1.84467441e19;
    v19.f64[0] = NAN;
    v19.f64[1] = NAN;
    v16 = 2654435761u * *vbslq_s8(vnegq_f64(v19), v7, v6).i64;
    if (v18 >= 0.0)
    {
      if (v18 > 0.0)
      {
        v16 += v18;
      }
    }

    else
    {
      v16 -= fabs(v18);
    }
  }

  else
  {
    v16 = 0;
  }

  return v9 ^ v8 ^ v10 ^ v11 ^ v15 ^ v16 ^ [(NSString *)self->_modelVersion hash:v3];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_30;
  }

  has = self->_has;
  v6 = v4[48];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_30;
  }

  if (*&has)
  {
    mitigationType = self->_mitigationType;
    if (mitigationType != [v4 mitigationType])
    {
      goto LABEL_30;
    }

    has = self->_has;
    v6 = v4[48];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 == ((v6 >> 1) & 1))
  {
    if (v8)
    {
      requestCount = self->_requestCount;
      if (requestCount != [v4 requestCount])
      {
        goto LABEL_30;
      }

      has = self->_has;
      v6 = v4[48];
    }

    v10 = (*&has >> 2) & 1;
    if (v10 == ((v6 >> 2) & 1))
    {
      if (v10)
      {
        intendedRequestCount = self->_intendedRequestCount;
        if (intendedRequestCount != [v4 intendedRequestCount])
        {
          goto LABEL_30;
        }

        has = self->_has;
        v6 = v4[48];
      }

      v12 = (*&has >> 3) & 1;
      if (v12 == ((v6 >> 3) & 1))
      {
        if (v12)
        {
          unintendedRequestCount = self->_unintendedRequestCount;
          if (unintendedRequestCount != [v4 unintendedRequestCount])
          {
            goto LABEL_30;
          }

          has = self->_has;
          v6 = v4[48];
        }

        v14 = (*&has >> 4) & 1;
        if (v14 == ((v6 >> 4) & 1))
        {
          if (v14)
          {
            intendedRequestRatio = self->_intendedRequestRatio;
            [v4 intendedRequestRatio];
            if (intendedRequestRatio != v16)
            {
              goto LABEL_30;
            }

            has = self->_has;
            v6 = v4[48];
          }

          v17 = (*&has >> 5) & 1;
          if (v17 == ((v6 >> 5) & 1))
          {
            if (!v17 || (triggeredMechanismRequestRatio = self->_triggeredMechanismRequestRatio, [v4 triggeredMechanismRequestRatio], triggeredMechanismRequestRatio == v19))
            {
              v20 = [(MHSchemaMHUserEngagementAggregatedStats *)self modelVersion];
              v21 = [v4 modelVersion];
              v22 = v21;
              if ((v20 != 0) != (v21 == 0))
              {
                v23 = [(MHSchemaMHUserEngagementAggregatedStats *)self modelVersion];
                if (!v23)
                {

LABEL_33:
                  v28 = 1;
                  goto LABEL_31;
                }

                v24 = v23;
                v25 = [(MHSchemaMHUserEngagementAggregatedStats *)self modelVersion];
                v26 = [v4 modelVersion];
                v27 = [v25 isEqual:v26];

                if (v27)
                {
                  goto LABEL_33;
                }
              }

              else
              {
              }
            }
          }
        }
      }
    }
  }

LABEL_30:
  v28 = 0;
LABEL_31:

  return v28;
}

- (void)writeTo:(id)a3
{
  v7 = a3;
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

      goto LABEL_15;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_15:
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_5:
    if ((has & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_16:
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_6:
    if ((has & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_17:
  PBDataWriterWriteDoubleField();
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_7:
    PBDataWriterWriteDoubleField();
  }

LABEL_8:
  v5 = [(MHSchemaMHUserEngagementAggregatedStats *)self modelVersion];

  v6 = v7;
  if (v5)
  {
    PBDataWriterWriteStringField();
    v6 = v7;
  }
}

- (void)setHasTriggeredMechanismRequestRatio:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (void)setHasIntendedRequestRatio:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasUnintendedRequestCount:(BOOL)a3
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

- (void)setHasIntendedRequestCount:(BOOL)a3
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

- (void)setHasRequestCount:(BOOL)a3
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