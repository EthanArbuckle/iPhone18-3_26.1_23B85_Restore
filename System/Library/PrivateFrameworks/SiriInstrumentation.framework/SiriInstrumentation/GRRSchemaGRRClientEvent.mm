@interface GRRSchemaGRRClientEvent
+ (id)getInnerTypeStringByTag:(unint64_t)tag;
- (BOOL)isEqual:(id)equal;
- (GRRSchemaGRRClientEvent)initWithDictionary:(id)dictionary;
- (GRRSchemaGRRClientEvent)initWithJSON:(id)n;
- (GRRSchemaGRRFeatureExtractionContext)featureExtractionContext;
- (GRRSchemaGRRHypothesisRankingContext)hypothesisRankingContext;
- (GRRSchemaGRRSystemErrorOccurred)systemErrorOccurred;
- (NSData)jsonData;
- (SISchemaInstrumentationMessage)innerEvent;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)getComponentId;
- (id)qualifiedMessageName;
- (id)suppressMessageUnderConditions;
- (int)componentName;
- (unint64_t)hash;
- (void)deleteFeatureExtractionContext;
- (void)deleteHypothesisRankingContext;
- (void)deleteSystemErrorOccurred;
- (void)setFeatureExtractionContext:(id)context;
- (void)setHypothesisRankingContext:(id)context;
- (void)setSystemErrorOccurred:(id)occurred;
- (void)writeTo:(id)to;
@end

@implementation GRRSchemaGRRClientEvent

- (GRRSchemaGRRClientEvent)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v16.receiver = self;
  v16.super_class = GRRSchemaGRRClientEvent;
  v5 = [(GRRSchemaGRRClientEvent *)&v16 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"eventMetadata"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[GRRSchemaGRRClientEventMetadata alloc] initWithDictionary:v6];
      [(GRRSchemaGRRClientEvent *)v5 setEventMetadata:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"featureExtractionContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[GRRSchemaGRRFeatureExtractionContext alloc] initWithDictionary:v8];
      [(GRRSchemaGRRClientEvent *)v5 setFeatureExtractionContext:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"hypothesisRankingContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[GRRSchemaGRRHypothesisRankingContext alloc] initWithDictionary:v10];
      [(GRRSchemaGRRClientEvent *)v5 setHypothesisRankingContext:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"systemErrorOccurred"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[GRRSchemaGRRSystemErrorOccurred alloc] initWithDictionary:v12];
      [(GRRSchemaGRRClientEvent *)v5 setSystemErrorOccurred:v13];
    }

    v14 = v5;
  }

  return v5;
}

- (GRRSchemaGRRClientEvent)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(GRRSchemaGRRClientEvent *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(GRRSchemaGRRClientEvent *)self dictionaryRepresentation];
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
  if (self->_eventMetadata)
  {
    eventMetadata = [(GRRSchemaGRRClientEvent *)self eventMetadata];
    dictionaryRepresentation = [eventMetadata dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"eventMetadata"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"eventMetadata"];
    }
  }

  if (self->_featureExtractionContext)
  {
    featureExtractionContext = [(GRRSchemaGRRClientEvent *)self featureExtractionContext];
    dictionaryRepresentation2 = [featureExtractionContext dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"featureExtractionContext"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"featureExtractionContext"];
    }
  }

  if (self->_hypothesisRankingContext)
  {
    hypothesisRankingContext = [(GRRSchemaGRRClientEvent *)self hypothesisRankingContext];
    dictionaryRepresentation3 = [hypothesisRankingContext dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"hypothesisRankingContext"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"hypothesisRankingContext"];
    }
  }

  if (self->_systemErrorOccurred)
  {
    systemErrorOccurred = [(GRRSchemaGRRClientEvent *)self systemErrorOccurred];
    dictionaryRepresentation4 = [systemErrorOccurred dictionaryRepresentation];
    if (dictionaryRepresentation4)
    {
      [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"systemErrorOccurred"];
    }

    else
    {
      null4 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null4 forKeyedSubscript:@"systemErrorOccurred"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(GRRSchemaGRRClientEventMetadata *)self->_eventMetadata hash];
  v4 = [(GRRSchemaGRRFeatureExtractionContext *)self->_featureExtractionContext hash]^ v3;
  v5 = [(GRRSchemaGRRHypothesisRankingContext *)self->_hypothesisRankingContext hash];
  return v4 ^ v5 ^ [(GRRSchemaGRRSystemErrorOccurred *)self->_systemErrorOccurred hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_23;
  }

  whichEvent_Type = self->_whichEvent_Type;
  if (whichEvent_Type != [equalCopy whichEvent_Type])
  {
    goto LABEL_23;
  }

  eventMetadata = [(GRRSchemaGRRClientEvent *)self eventMetadata];
  eventMetadata2 = [equalCopy eventMetadata];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_22;
  }

  eventMetadata3 = [(GRRSchemaGRRClientEvent *)self eventMetadata];
  if (eventMetadata3)
  {
    v9 = eventMetadata3;
    eventMetadata4 = [(GRRSchemaGRRClientEvent *)self eventMetadata];
    eventMetadata5 = [equalCopy eventMetadata];
    v12 = [eventMetadata4 isEqual:eventMetadata5];

    if (!v12)
    {
      goto LABEL_23;
    }
  }

  else
  {
  }

  eventMetadata = [(GRRSchemaGRRClientEvent *)self featureExtractionContext];
  eventMetadata2 = [equalCopy featureExtractionContext];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_22;
  }

  featureExtractionContext = [(GRRSchemaGRRClientEvent *)self featureExtractionContext];
  if (featureExtractionContext)
  {
    v14 = featureExtractionContext;
    featureExtractionContext2 = [(GRRSchemaGRRClientEvent *)self featureExtractionContext];
    featureExtractionContext3 = [equalCopy featureExtractionContext];
    v17 = [featureExtractionContext2 isEqual:featureExtractionContext3];

    if (!v17)
    {
      goto LABEL_23;
    }
  }

  else
  {
  }

  eventMetadata = [(GRRSchemaGRRClientEvent *)self hypothesisRankingContext];
  eventMetadata2 = [equalCopy hypothesisRankingContext];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_22;
  }

  hypothesisRankingContext = [(GRRSchemaGRRClientEvent *)self hypothesisRankingContext];
  if (hypothesisRankingContext)
  {
    v19 = hypothesisRankingContext;
    hypothesisRankingContext2 = [(GRRSchemaGRRClientEvent *)self hypothesisRankingContext];
    hypothesisRankingContext3 = [equalCopy hypothesisRankingContext];
    v22 = [hypothesisRankingContext2 isEqual:hypothesisRankingContext3];

    if (!v22)
    {
      goto LABEL_23;
    }
  }

  else
  {
  }

  eventMetadata = [(GRRSchemaGRRClientEvent *)self systemErrorOccurred];
  eventMetadata2 = [equalCopy systemErrorOccurred];
  if ((eventMetadata != 0) != (eventMetadata2 == 0))
  {
    systemErrorOccurred = [(GRRSchemaGRRClientEvent *)self systemErrorOccurred];
    if (!systemErrorOccurred)
    {

LABEL_26:
      v28 = 1;
      goto LABEL_24;
    }

    v24 = systemErrorOccurred;
    systemErrorOccurred2 = [(GRRSchemaGRRClientEvent *)self systemErrorOccurred];
    systemErrorOccurred3 = [equalCopy systemErrorOccurred];
    v27 = [systemErrorOccurred2 isEqual:systemErrorOccurred3];

    if (v27)
    {
      goto LABEL_26;
    }
  }

  else
  {
LABEL_22:
  }

LABEL_23:
  v28 = 0;
LABEL_24:

  return v28;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  eventMetadata = [(GRRSchemaGRRClientEvent *)self eventMetadata];

  if (eventMetadata)
  {
    eventMetadata2 = [(GRRSchemaGRRClientEvent *)self eventMetadata];
    PBDataWriterWriteSubmessage();
  }

  featureExtractionContext = [(GRRSchemaGRRClientEvent *)self featureExtractionContext];

  if (featureExtractionContext)
  {
    featureExtractionContext2 = [(GRRSchemaGRRClientEvent *)self featureExtractionContext];
    PBDataWriterWriteSubmessage();
  }

  hypothesisRankingContext = [(GRRSchemaGRRClientEvent *)self hypothesisRankingContext];

  if (hypothesisRankingContext)
  {
    hypothesisRankingContext2 = [(GRRSchemaGRRClientEvent *)self hypothesisRankingContext];
    PBDataWriterWriteSubmessage();
  }

  systemErrorOccurred = [(GRRSchemaGRRClientEvent *)self systemErrorOccurred];

  v11 = toCopy;
  if (systemErrorOccurred)
  {
    systemErrorOccurred2 = [(GRRSchemaGRRClientEvent *)self systemErrorOccurred];
    PBDataWriterWriteSubmessage();

    v11 = toCopy;
  }
}

- (void)deleteSystemErrorOccurred
{
  if (self->_whichEvent_Type == 103)
  {
    self->_whichEvent_Type = 0;
    self->_systemErrorOccurred = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (GRRSchemaGRRSystemErrorOccurred)systemErrorOccurred
{
  if (self->_whichEvent_Type == 103)
  {
    v3 = self->_systemErrorOccurred;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setSystemErrorOccurred:(id)occurred
{
  occurredCopy = occurred;
  featureExtractionContext = self->_featureExtractionContext;
  self->_featureExtractionContext = 0;

  hypothesisRankingContext = self->_hypothesisRankingContext;
  self->_hypothesisRankingContext = 0;

  v7 = 103;
  if (!occurredCopy)
  {
    v7 = 0;
  }

  self->_whichEvent_Type = v7;
  systemErrorOccurred = self->_systemErrorOccurred;
  self->_systemErrorOccurred = occurredCopy;
}

- (void)deleteHypothesisRankingContext
{
  if (self->_whichEvent_Type == 102)
  {
    self->_whichEvent_Type = 0;
    self->_hypothesisRankingContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (GRRSchemaGRRHypothesisRankingContext)hypothesisRankingContext
{
  if (self->_whichEvent_Type == 102)
  {
    v3 = self->_hypothesisRankingContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setHypothesisRankingContext:(id)context
{
  contextCopy = context;
  featureExtractionContext = self->_featureExtractionContext;
  self->_featureExtractionContext = 0;

  systemErrorOccurred = self->_systemErrorOccurred;
  self->_systemErrorOccurred = 0;

  v7 = 102;
  if (!contextCopy)
  {
    v7 = 0;
  }

  self->_whichEvent_Type = v7;
  hypothesisRankingContext = self->_hypothesisRankingContext;
  self->_hypothesisRankingContext = contextCopy;
}

- (void)deleteFeatureExtractionContext
{
  if (self->_whichEvent_Type == 101)
  {
    self->_whichEvent_Type = 0;
    self->_featureExtractionContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (GRRSchemaGRRFeatureExtractionContext)featureExtractionContext
{
  if (self->_whichEvent_Type == 101)
  {
    v3 = self->_featureExtractionContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setFeatureExtractionContext:(id)context
{
  contextCopy = context;
  hypothesisRankingContext = self->_hypothesisRankingContext;
  self->_hypothesisRankingContext = 0;

  systemErrorOccurred = self->_systemErrorOccurred;
  self->_systemErrorOccurred = 0;

  v7 = 101;
  if (!contextCopy)
  {
    v7 = 0;
  }

  self->_whichEvent_Type = v7;
  featureExtractionContext = self->_featureExtractionContext;
  self->_featureExtractionContext = contextCopy;
}

- (id)qualifiedMessageName
{
  whichEvent_Type = [(GRRSchemaGRRClientEvent *)self whichEvent_Type];
  if (whichEvent_Type - 101 > 2)
  {
    return @"com.apple.aiml.siri.grr.GRRClientEvent";
  }

  else
  {
    return off_1E78D7970[whichEvent_Type - 101];
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v19.receiver = self;
  v19.super_class = GRRSchemaGRRClientEvent;
  v5 = [(SISchemaInstrumentationMessage *)&v19 applySensitiveConditionsPolicy:policyCopy];
  eventMetadata = [(GRRSchemaGRRClientEvent *)self eventMetadata];
  v7 = [eventMetadata applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(GRRSchemaGRRClientEvent *)self deleteEventMetadata];
  }

  featureExtractionContext = [(GRRSchemaGRRClientEvent *)self featureExtractionContext];
  v10 = [featureExtractionContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(GRRSchemaGRRClientEvent *)self deleteFeatureExtractionContext];
  }

  hypothesisRankingContext = [(GRRSchemaGRRClientEvent *)self hypothesisRankingContext];
  v13 = [hypothesisRankingContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
  {
    [(GRRSchemaGRRClientEvent *)self deleteHypothesisRankingContext];
  }

  systemErrorOccurred = [(GRRSchemaGRRClientEvent *)self systemErrorOccurred];
  v16 = [systemErrorOccurred applySensitiveConditionsPolicy:policyCopy];
  suppressMessage4 = [v16 suppressMessage];

  if (suppressMessage4)
  {
    [(GRRSchemaGRRClientEvent *)self deleteSystemErrorOccurred];
  }

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

- (int)componentName
{
  eventMetadata = [(GRRSchemaGRRClientEvent *)self eventMetadata];
  grrId = [eventMetadata grrId];

  if (grrId)
  {
    value = [grrId value];
    if (value)
    {
      value2 = [grrId value];
      v6 = [value2 length];

      if (v6)
      {
        LODWORD(value) = 5;
      }

      else
      {
        LODWORD(value) = 0;
      }
    }
  }

  else
  {
    LODWORD(value) = 0;
  }

  return value;
}

- (id)getComponentId
{
  eventMetadata = [(GRRSchemaGRRClientEvent *)self eventMetadata];
  grrId = [eventMetadata grrId];

  if (!grrId)
  {
    goto LABEL_5;
  }

  value = [grrId value];
  if (!value)
  {
    goto LABEL_6;
  }

  value2 = [grrId value];
  v6 = [value2 length];

  if (v6)
  {
    value = grrId;
  }

  else
  {
LABEL_5:
    value = 0;
  }

LABEL_6:

  return value;
}

- (SISchemaInstrumentationMessage)innerEvent
{
  whichEvent_Type = [(GRRSchemaGRRClientEvent *)self whichEvent_Type];
  if (whichEvent_Type - 101 > 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(&self->super.super.super.super.isa + *off_1E78E98E8[whichEvent_Type - 101]);
  }

  return v4;
}

+ (id)getInnerTypeStringByTag:(unint64_t)tag
{
  if (tag - 101 > 2)
  {
    return 0;
  }

  else
  {
    return off_1E78E9900[tag - 101];
  }
}

@end