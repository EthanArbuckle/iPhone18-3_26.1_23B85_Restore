@interface SISchemaAggregatedMetrics
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (SISchemaAggregatedMetrics)initWithDictionary:(id)dictionary;
- (SISchemaAggregatedMetrics)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)writeTo:(id)to;
@end

@implementation SISchemaAggregatedMetrics

- (SISchemaAggregatedMetrics)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = SISchemaAggregatedMetrics;
  v5 = [(SISchemaAggregatedMetrics *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"voiceTrigger"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaVoiceTriggerMetrics alloc] initWithDictionary:v6];
      [(SISchemaAggregatedMetrics *)v5 setVoiceTrigger:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"selfTriggerSuppression"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[SISchemaSelfTriggerSuppressionMetrics alloc] initWithDictionary:v8];
      [(SISchemaAggregatedMetrics *)v5 setSelfTriggerSuppression:v9];
    }

    v10 = v5;
  }

  return v5;
}

- (SISchemaAggregatedMetrics)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(SISchemaAggregatedMetrics *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(SISchemaAggregatedMetrics *)self dictionaryRepresentation];
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
  if (self->_selfTriggerSuppression)
  {
    selfTriggerSuppression = [(SISchemaAggregatedMetrics *)self selfTriggerSuppression];
    dictionaryRepresentation = [selfTriggerSuppression dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"selfTriggerSuppression"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"selfTriggerSuppression"];
    }
  }

  if (self->_voiceTrigger)
  {
    voiceTrigger = [(SISchemaAggregatedMetrics *)self voiceTrigger];
    dictionaryRepresentation2 = [voiceTrigger dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"voiceTrigger"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"voiceTrigger"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  voiceTrigger = [(SISchemaAggregatedMetrics *)self voiceTrigger];
  voiceTrigger2 = [equalCopy voiceTrigger];
  if ((voiceTrigger != 0) == (voiceTrigger2 == 0))
  {
    goto LABEL_11;
  }

  voiceTrigger3 = [(SISchemaAggregatedMetrics *)self voiceTrigger];
  if (voiceTrigger3)
  {
    v8 = voiceTrigger3;
    voiceTrigger4 = [(SISchemaAggregatedMetrics *)self voiceTrigger];
    voiceTrigger5 = [equalCopy voiceTrigger];
    v11 = [voiceTrigger4 isEqual:voiceTrigger5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  voiceTrigger = [(SISchemaAggregatedMetrics *)self selfTriggerSuppression];
  voiceTrigger2 = [equalCopy selfTriggerSuppression];
  if ((voiceTrigger != 0) != (voiceTrigger2 == 0))
  {
    selfTriggerSuppression = [(SISchemaAggregatedMetrics *)self selfTriggerSuppression];
    if (!selfTriggerSuppression)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = selfTriggerSuppression;
    selfTriggerSuppression2 = [(SISchemaAggregatedMetrics *)self selfTriggerSuppression];
    selfTriggerSuppression3 = [equalCopy selfTriggerSuppression];
    v16 = [selfTriggerSuppression2 isEqual:selfTriggerSuppression3];

    if (v16)
    {
      goto LABEL_15;
    }
  }

  else
  {
LABEL_11:
  }

LABEL_12:
  v17 = 0;
LABEL_13:

  return v17;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  voiceTrigger = [(SISchemaAggregatedMetrics *)self voiceTrigger];

  if (voiceTrigger)
  {
    voiceTrigger2 = [(SISchemaAggregatedMetrics *)self voiceTrigger];
    PBDataWriterWriteSubmessage();
  }

  selfTriggerSuppression = [(SISchemaAggregatedMetrics *)self selfTriggerSuppression];

  if (selfTriggerSuppression)
  {
    selfTriggerSuppression2 = [(SISchemaAggregatedMetrics *)self selfTriggerSuppression];
    PBDataWriterWriteSubmessage();
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v13.receiver = self;
  v13.super_class = SISchemaAggregatedMetrics;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:policyCopy];
  voiceTrigger = [(SISchemaAggregatedMetrics *)self voiceTrigger];
  v7 = [voiceTrigger applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(SISchemaAggregatedMetrics *)self deleteVoiceTrigger];
  }

  selfTriggerSuppression = [(SISchemaAggregatedMetrics *)self selfTriggerSuppression];
  v10 = [selfTriggerSuppression applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(SISchemaAggregatedMetrics *)self deleteSelfTriggerSuppression];
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