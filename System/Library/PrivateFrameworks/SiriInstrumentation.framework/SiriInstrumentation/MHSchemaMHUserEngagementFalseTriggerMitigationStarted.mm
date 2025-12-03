@interface MHSchemaMHUserEngagementFalseTriggerMitigationStarted
- (BOOL)isEqual:(id)equal;
- (MHSchemaMHUserEngagementFalseTriggerMitigationStarted)initWithDictionary:(id)dictionary;
- (MHSchemaMHUserEngagementFalseTriggerMitigationStarted)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation MHSchemaMHUserEngagementFalseTriggerMitigationStarted

- (MHSchemaMHUserEngagementFalseTriggerMitigationStarted)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v13.receiver = self;
  v13.super_class = MHSchemaMHUserEngagementFalseTriggerMitigationStarted;
  v5 = [(MHSchemaMHUserEngagementFalseTriggerMitigationStarted *)&v13 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"modelVersion"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(MHSchemaMHUserEngagementFalseTriggerMitigationStarted *)v5 setModelVersion:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"uiWaitTimeInSeconds"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v8 doubleValue];
      [(MHSchemaMHUserEngagementFalseTriggerMitigationStarted *)v5 setUiWaitTimeInSeconds:?];
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"accumulatedAggregationStats"];
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

- (MHSchemaMHUserEngagementFalseTriggerMitigationStarted)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(MHSchemaMHUserEngagementFalseTriggerMitigationStarted *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(MHSchemaMHUserEngagementFalseTriggerMitigationStarted *)self dictionaryRepresentation];
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
  if (self->_accumulatedAggregationStats)
  {
    accumulatedAggregationStats = [(MHSchemaMHUserEngagementFalseTriggerMitigationStarted *)self accumulatedAggregationStats];
    dictionaryRepresentation = [accumulatedAggregationStats dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"accumulatedAggregationStats"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"accumulatedAggregationStats"];
    }
  }

  if (self->_modelVersion)
  {
    modelVersion = [(MHSchemaMHUserEngagementFalseTriggerMitigationStarted *)self modelVersion];
    v8 = [modelVersion copy];
    [dictionary setObject:v8 forKeyedSubscript:@"modelVersion"];
  }

  if (*&self->_has)
  {
    v9 = MEMORY[0x1E696AD98];
    [(MHSchemaMHUserEngagementFalseTriggerMitigationStarted *)self uiWaitTimeInSeconds];
    v10 = [v9 numberWithDouble:?];
    [dictionary setObject:v10 forKeyedSubscript:@"uiWaitTimeInSeconds"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  modelVersion = [(MHSchemaMHUserEngagementFalseTriggerMitigationStarted *)self modelVersion];
  modelVersion2 = [equalCopy modelVersion];
  if ((modelVersion != 0) == (modelVersion2 == 0))
  {
    goto LABEL_14;
  }

  modelVersion3 = [(MHSchemaMHUserEngagementFalseTriggerMitigationStarted *)self modelVersion];
  if (modelVersion3)
  {
    v8 = modelVersion3;
    modelVersion4 = [(MHSchemaMHUserEngagementFalseTriggerMitigationStarted *)self modelVersion];
    modelVersion5 = [equalCopy modelVersion];
    v11 = [modelVersion4 isEqual:modelVersion5];

    if (!v11)
    {
      goto LABEL_15;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) != (equalCopy[32] & 1))
  {
    goto LABEL_15;
  }

  if (*&self->_has)
  {
    uiWaitTimeInSeconds = self->_uiWaitTimeInSeconds;
    [equalCopy uiWaitTimeInSeconds];
    if (uiWaitTimeInSeconds != v13)
    {
      goto LABEL_15;
    }
  }

  modelVersion = [(MHSchemaMHUserEngagementFalseTriggerMitigationStarted *)self accumulatedAggregationStats];
  modelVersion2 = [equalCopy accumulatedAggregationStats];
  if ((modelVersion != 0) != (modelVersion2 == 0))
  {
    accumulatedAggregationStats = [(MHSchemaMHUserEngagementFalseTriggerMitigationStarted *)self accumulatedAggregationStats];
    if (!accumulatedAggregationStats)
    {

LABEL_18:
      v19 = 1;
      goto LABEL_16;
    }

    v15 = accumulatedAggregationStats;
    accumulatedAggregationStats2 = [(MHSchemaMHUserEngagementFalseTriggerMitigationStarted *)self accumulatedAggregationStats];
    accumulatedAggregationStats3 = [equalCopy accumulatedAggregationStats];
    v18 = [accumulatedAggregationStats2 isEqual:accumulatedAggregationStats3];

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

- (void)writeTo:(id)to
{
  toCopy = to;
  modelVersion = [(MHSchemaMHUserEngagementFalseTriggerMitigationStarted *)self modelVersion];

  if (modelVersion)
  {
    PBDataWriterWriteStringField();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteDoubleField();
  }

  accumulatedAggregationStats = [(MHSchemaMHUserEngagementFalseTriggerMitigationStarted *)self accumulatedAggregationStats];

  v6 = toCopy;
  if (accumulatedAggregationStats)
  {
    accumulatedAggregationStats2 = [(MHSchemaMHUserEngagementFalseTriggerMitigationStarted *)self accumulatedAggregationStats];
    PBDataWriterWriteSubmessage();

    v6 = toCopy;
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = MHSchemaMHUserEngagementFalseTriggerMitigationStarted;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(MHSchemaMHUserEngagementFalseTriggerMitigationStarted *)self accumulatedAggregationStats:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
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