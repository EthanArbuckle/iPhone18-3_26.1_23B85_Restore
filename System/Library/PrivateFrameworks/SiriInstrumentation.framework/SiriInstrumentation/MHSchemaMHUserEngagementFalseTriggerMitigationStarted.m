@interface MHSchemaMHUserEngagementFalseTriggerMitigationStarted
- (BOOL)isEqual:(id)a3;
- (MHSchemaMHUserEngagementFalseTriggerMitigationStarted)initWithDictionary:(id)a3;
- (MHSchemaMHUserEngagementFalseTriggerMitigationStarted)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation MHSchemaMHUserEngagementFalseTriggerMitigationStarted

- (MHSchemaMHUserEngagementFalseTriggerMitigationStarted)initWithDictionary:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = MHSchemaMHUserEngagementFalseTriggerMitigationStarted;
  v5 = [(MHSchemaMHUserEngagementFalseTriggerMitigationStarted *)&v13 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"modelVersion"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(MHSchemaMHUserEngagementFalseTriggerMitigationStarted *)v5 setModelVersion:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"uiWaitTimeInSeconds"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v8 doubleValue];
      [(MHSchemaMHUserEngagementFalseTriggerMitigationStarted *)v5 setUiWaitTimeInSeconds:?];
    }

    v9 = [v4 objectForKeyedSubscript:@"accumulatedAggregationStats"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [[MHSchemaMHUserEngagementAccumulatedAggregationStats alloc] initWithDictionary:v9];
      [(MHSchemaMHUserEngagementFalseTriggerMitigationStarted *)v5 setAccumulatedAggregationStats:v10];
    }

    v11 = v5;
  }

  return v5;
}

- (MHSchemaMHUserEngagementFalseTriggerMitigationStarted)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(MHSchemaMHUserEngagementFalseTriggerMitigationStarted *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(MHSchemaMHUserEngagementFalseTriggerMitigationStarted *)self dictionaryRepresentation];
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
  if (self->_accumulatedAggregationStats)
  {
    v4 = [(MHSchemaMHUserEngagementFalseTriggerMitigationStarted *)self accumulatedAggregationStats];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"accumulatedAggregationStats"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"accumulatedAggregationStats"];
    }
  }

  if (self->_modelVersion)
  {
    v7 = [(MHSchemaMHUserEngagementFalseTriggerMitigationStarted *)self modelVersion];
    v8 = [v7 copy];
    [v3 setObject:v8 forKeyedSubscript:@"modelVersion"];
  }

  if (*&self->_has)
  {
    v9 = MEMORY[0x1E696AD98];
    [(MHSchemaMHUserEngagementFalseTriggerMitigationStarted *)self uiWaitTimeInSeconds];
    v10 = [v9 numberWithDouble:?];
    [v3 setObject:v10 forKeyedSubscript:@"uiWaitTimeInSeconds"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_modelVersion hash];
  if (*&self->_has)
  {
    uiWaitTimeInSeconds = self->_uiWaitTimeInSeconds;
    if (uiWaitTimeInSeconds < 0.0)
    {
      uiWaitTimeInSeconds = -uiWaitTimeInSeconds;
    }

    *v4.i64 = floor(uiWaitTimeInSeconds + 0.5);
    v8 = (uiWaitTimeInSeconds - *v4.i64) * 1.84467441e19;
    *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
    v9.f64[0] = NAN;
    v9.f64[1] = NAN;
    v6 = 2654435761u * *vbslq_s8(vnegq_f64(v9), v5, v4).i64;
    if (v8 >= 0.0)
    {
      if (v8 > 0.0)
      {
        v6 += v8;
      }
    }

    else
    {
      v6 -= fabs(v8);
    }
  }

  else
  {
    v6 = 0;
  }

  return v6 ^ v3 ^ [(MHSchemaMHUserEngagementAccumulatedAggregationStats *)self->_accumulatedAggregationStats hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  v5 = [(MHSchemaMHUserEngagementFalseTriggerMitigationStarted *)self modelVersion];
  v6 = [v4 modelVersion];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_14;
  }

  v7 = [(MHSchemaMHUserEngagementFalseTriggerMitigationStarted *)self modelVersion];
  if (v7)
  {
    v8 = v7;
    v9 = [(MHSchemaMHUserEngagementFalseTriggerMitigationStarted *)self modelVersion];
    v10 = [v4 modelVersion];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_15;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) != (v4[32] & 1))
  {
    goto LABEL_15;
  }

  if (*&self->_has)
  {
    uiWaitTimeInSeconds = self->_uiWaitTimeInSeconds;
    [v4 uiWaitTimeInSeconds];
    if (uiWaitTimeInSeconds != v13)
    {
      goto LABEL_15;
    }
  }

  v5 = [(MHSchemaMHUserEngagementFalseTriggerMitigationStarted *)self accumulatedAggregationStats];
  v6 = [v4 accumulatedAggregationStats];
  if ((v5 != 0) != (v6 == 0))
  {
    v14 = [(MHSchemaMHUserEngagementFalseTriggerMitigationStarted *)self accumulatedAggregationStats];
    if (!v14)
    {

LABEL_18:
      v19 = 1;
      goto LABEL_16;
    }

    v15 = v14;
    v16 = [(MHSchemaMHUserEngagementFalseTriggerMitigationStarted *)self accumulatedAggregationStats];
    v17 = [v4 accumulatedAggregationStats];
    v18 = [v16 isEqual:v17];

    if (v18)
    {
      goto LABEL_18;
    }
  }

  else
  {
LABEL_14:
  }

LABEL_15:
  v19 = 0;
LABEL_16:

  return v19;
}

- (void)writeTo:(id)a3
{
  v8 = a3;
  v4 = [(MHSchemaMHUserEngagementFalseTriggerMitigationStarted *)self modelVersion];

  if (v4)
  {
    PBDataWriterWriteStringField();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteDoubleField();
  }

  v5 = [(MHSchemaMHUserEngagementFalseTriggerMitigationStarted *)self accumulatedAggregationStats];

  v6 = v8;
  if (v5)
  {
    v7 = [(MHSchemaMHUserEngagementFalseTriggerMitigationStarted *)self accumulatedAggregationStats];
    PBDataWriterWriteSubmessage();

    v6 = v8;
  }
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v9.receiver = self;
  v9.super_class = MHSchemaMHUserEngagementFalseTriggerMitigationStarted;
  v4 = a3;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:v4];
  v6 = [(MHSchemaMHUserEngagementFalseTriggerMitigationStarted *)self accumulatedAggregationStats:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:v4];

  LODWORD(v4) = [v7 suppressMessage];
  if (v4)
  {
    [(MHSchemaMHUserEngagementFalseTriggerMitigationStarted *)self deleteAccumulatedAggregationStats];
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