@interface CAARSchemaCAARClientEvent
+ (id)getInnerTypeStringByTag:(unint64_t)tag;
- (BOOL)isEqual:(id)equal;
- (CAARSchemaCAARClientEvent)initWithDictionary:(id)dictionary;
- (CAARSchemaCAARClientEvent)initWithJSON:(id)n;
- (CAARSchemaCAARFeaturesGenerated)featuresGenerated;
- (CAARSchemaCAARModelExecuted)modelExecuted;
- (CAARSchemaCAARRequestContext)caarRequestContext;
- (CAARSchemaCAARTieBreakersExecuted)tieBreakersExecuted;
- (NSData)jsonData;
- (SISchemaInstrumentationMessage)innerEvent;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)getComponentId;
- (id)qualifiedMessageName;
- (id)suppressMessageUnderConditions;
- (int)componentName;
- (unint64_t)hash;
- (void)deleteCaarRequestContext;
- (void)deleteFeaturesGenerated;
- (void)deleteModelExecuted;
- (void)deleteTieBreakersExecuted;
- (void)setCaarRequestContext:(id)context;
- (void)setFeaturesGenerated:(id)generated;
- (void)setModelExecuted:(id)executed;
- (void)setTieBreakersExecuted:(id)executed;
- (void)writeTo:(id)to;
@end

@implementation CAARSchemaCAARClientEvent

- (CAARSchemaCAARClientEvent)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v18.receiver = self;
  v18.super_class = CAARSchemaCAARClientEvent;
  v5 = [(CAARSchemaCAARClientEvent *)&v18 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"eventMetadata"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[CAARSchemaCAARClientEventMetadata alloc] initWithDictionary:v6];
      [(CAARSchemaCAARClientEvent *)v5 setEventMetadata:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"caarRequestContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[CAARSchemaCAARRequestContext alloc] initWithDictionary:v8];
      [(CAARSchemaCAARClientEvent *)v5 setCaarRequestContext:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"featuresGenerated"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[CAARSchemaCAARFeaturesGenerated alloc] initWithDictionary:v10];
      [(CAARSchemaCAARClientEvent *)v5 setFeaturesGenerated:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"modelExecuted"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[CAARSchemaCAARModelExecuted alloc] initWithDictionary:v12];
      [(CAARSchemaCAARClientEvent *)v5 setModelExecuted:v13];
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"tieBreakersExecuted"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [[CAARSchemaCAARTieBreakersExecuted alloc] initWithDictionary:v14];
      [(CAARSchemaCAARClientEvent *)v5 setTieBreakersExecuted:v15];
    }

    v16 = v5;
  }

  return v5;
}

- (CAARSchemaCAARClientEvent)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(CAARSchemaCAARClientEvent *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(CAARSchemaCAARClientEvent *)self dictionaryRepresentation];
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
  if (self->_caarRequestContext)
  {
    caarRequestContext = [(CAARSchemaCAARClientEvent *)self caarRequestContext];
    dictionaryRepresentation = [caarRequestContext dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"caarRequestContext"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"caarRequestContext"];
    }
  }

  if (self->_eventMetadata)
  {
    eventMetadata = [(CAARSchemaCAARClientEvent *)self eventMetadata];
    dictionaryRepresentation2 = [eventMetadata dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"eventMetadata"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"eventMetadata"];
    }
  }

  if (self->_featuresGenerated)
  {
    featuresGenerated = [(CAARSchemaCAARClientEvent *)self featuresGenerated];
    dictionaryRepresentation3 = [featuresGenerated dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"featuresGenerated"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"featuresGenerated"];
    }
  }

  if (self->_modelExecuted)
  {
    modelExecuted = [(CAARSchemaCAARClientEvent *)self modelExecuted];
    dictionaryRepresentation4 = [modelExecuted dictionaryRepresentation];
    if (dictionaryRepresentation4)
    {
      [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"modelExecuted"];
    }

    else
    {
      null4 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null4 forKeyedSubscript:@"modelExecuted"];
    }
  }

  if (self->_tieBreakersExecuted)
  {
    tieBreakersExecuted = [(CAARSchemaCAARClientEvent *)self tieBreakersExecuted];
    dictionaryRepresentation5 = [tieBreakersExecuted dictionaryRepresentation];
    if (dictionaryRepresentation5)
    {
      [dictionary setObject:dictionaryRepresentation5 forKeyedSubscript:@"tieBreakersExecuted"];
    }

    else
    {
      null5 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null5 forKeyedSubscript:@"tieBreakersExecuted"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(CAARSchemaCAARClientEventMetadata *)self->_eventMetadata hash];
  v4 = [(CAARSchemaCAARRequestContext *)self->_caarRequestContext hash]^ v3;
  v5 = [(CAARSchemaCAARFeaturesGenerated *)self->_featuresGenerated hash];
  v6 = v4 ^ v5 ^ [(CAARSchemaCAARModelExecuted *)self->_modelExecuted hash];
  return v6 ^ [(CAARSchemaCAARTieBreakersExecuted *)self->_tieBreakersExecuted hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_28;
  }

  whichEvent_Type = self->_whichEvent_Type;
  if (whichEvent_Type != [equalCopy whichEvent_Type])
  {
    goto LABEL_28;
  }

  eventMetadata = [(CAARSchemaCAARClientEvent *)self eventMetadata];
  eventMetadata2 = [equalCopy eventMetadata];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_27;
  }

  eventMetadata3 = [(CAARSchemaCAARClientEvent *)self eventMetadata];
  if (eventMetadata3)
  {
    v9 = eventMetadata3;
    eventMetadata4 = [(CAARSchemaCAARClientEvent *)self eventMetadata];
    eventMetadata5 = [equalCopy eventMetadata];
    v12 = [eventMetadata4 isEqual:eventMetadata5];

    if (!v12)
    {
      goto LABEL_28;
    }
  }

  else
  {
  }

  eventMetadata = [(CAARSchemaCAARClientEvent *)self caarRequestContext];
  eventMetadata2 = [equalCopy caarRequestContext];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_27;
  }

  caarRequestContext = [(CAARSchemaCAARClientEvent *)self caarRequestContext];
  if (caarRequestContext)
  {
    v14 = caarRequestContext;
    caarRequestContext2 = [(CAARSchemaCAARClientEvent *)self caarRequestContext];
    caarRequestContext3 = [equalCopy caarRequestContext];
    v17 = [caarRequestContext2 isEqual:caarRequestContext3];

    if (!v17)
    {
      goto LABEL_28;
    }
  }

  else
  {
  }

  eventMetadata = [(CAARSchemaCAARClientEvent *)self featuresGenerated];
  eventMetadata2 = [equalCopy featuresGenerated];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_27;
  }

  featuresGenerated = [(CAARSchemaCAARClientEvent *)self featuresGenerated];
  if (featuresGenerated)
  {
    v19 = featuresGenerated;
    featuresGenerated2 = [(CAARSchemaCAARClientEvent *)self featuresGenerated];
    featuresGenerated3 = [equalCopy featuresGenerated];
    v22 = [featuresGenerated2 isEqual:featuresGenerated3];

    if (!v22)
    {
      goto LABEL_28;
    }
  }

  else
  {
  }

  eventMetadata = [(CAARSchemaCAARClientEvent *)self modelExecuted];
  eventMetadata2 = [equalCopy modelExecuted];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_27;
  }

  modelExecuted = [(CAARSchemaCAARClientEvent *)self modelExecuted];
  if (modelExecuted)
  {
    v24 = modelExecuted;
    modelExecuted2 = [(CAARSchemaCAARClientEvent *)self modelExecuted];
    modelExecuted3 = [equalCopy modelExecuted];
    v27 = [modelExecuted2 isEqual:modelExecuted3];

    if (!v27)
    {
      goto LABEL_28;
    }
  }

  else
  {
  }

  eventMetadata = [(CAARSchemaCAARClientEvent *)self tieBreakersExecuted];
  eventMetadata2 = [equalCopy tieBreakersExecuted];
  if ((eventMetadata != 0) != (eventMetadata2 == 0))
  {
    tieBreakersExecuted = [(CAARSchemaCAARClientEvent *)self tieBreakersExecuted];
    if (!tieBreakersExecuted)
    {

LABEL_31:
      v33 = 1;
      goto LABEL_29;
    }

    v29 = tieBreakersExecuted;
    tieBreakersExecuted2 = [(CAARSchemaCAARClientEvent *)self tieBreakersExecuted];
    tieBreakersExecuted3 = [equalCopy tieBreakersExecuted];
    v32 = [tieBreakersExecuted2 isEqual:tieBreakersExecuted3];

    if (v32)
    {
      goto LABEL_31;
    }
  }

  else
  {
LABEL_27:
  }

LABEL_28:
  v33 = 0;
LABEL_29:

  return v33;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  eventMetadata = [(CAARSchemaCAARClientEvent *)self eventMetadata];

  if (eventMetadata)
  {
    eventMetadata2 = [(CAARSchemaCAARClientEvent *)self eventMetadata];
    PBDataWriterWriteSubmessage();
  }

  caarRequestContext = [(CAARSchemaCAARClientEvent *)self caarRequestContext];

  if (caarRequestContext)
  {
    caarRequestContext2 = [(CAARSchemaCAARClientEvent *)self caarRequestContext];
    PBDataWriterWriteSubmessage();
  }

  featuresGenerated = [(CAARSchemaCAARClientEvent *)self featuresGenerated];

  if (featuresGenerated)
  {
    featuresGenerated2 = [(CAARSchemaCAARClientEvent *)self featuresGenerated];
    PBDataWriterWriteSubmessage();
  }

  modelExecuted = [(CAARSchemaCAARClientEvent *)self modelExecuted];

  if (modelExecuted)
  {
    modelExecuted2 = [(CAARSchemaCAARClientEvent *)self modelExecuted];
    PBDataWriterWriteSubmessage();
  }

  tieBreakersExecuted = [(CAARSchemaCAARClientEvent *)self tieBreakersExecuted];

  v13 = toCopy;
  if (tieBreakersExecuted)
  {
    tieBreakersExecuted2 = [(CAARSchemaCAARClientEvent *)self tieBreakersExecuted];
    PBDataWriterWriteSubmessage();

    v13 = toCopy;
  }
}

- (void)deleteTieBreakersExecuted
{
  if (self->_whichEvent_Type == 104)
  {
    self->_whichEvent_Type = 0;
    self->_tieBreakersExecuted = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (CAARSchemaCAARTieBreakersExecuted)tieBreakersExecuted
{
  if (self->_whichEvent_Type == 104)
  {
    v3 = self->_tieBreakersExecuted;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setTieBreakersExecuted:(id)executed
{
  executedCopy = executed;
  caarRequestContext = self->_caarRequestContext;
  self->_caarRequestContext = 0;

  featuresGenerated = self->_featuresGenerated;
  self->_featuresGenerated = 0;

  modelExecuted = self->_modelExecuted;
  self->_modelExecuted = 0;

  v8 = 104;
  if (!executedCopy)
  {
    v8 = 0;
  }

  self->_whichEvent_Type = v8;
  tieBreakersExecuted = self->_tieBreakersExecuted;
  self->_tieBreakersExecuted = executedCopy;
}

- (void)deleteModelExecuted
{
  if (self->_whichEvent_Type == 103)
  {
    self->_whichEvent_Type = 0;
    self->_modelExecuted = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (CAARSchemaCAARModelExecuted)modelExecuted
{
  if (self->_whichEvent_Type == 103)
  {
    v3 = self->_modelExecuted;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setModelExecuted:(id)executed
{
  executedCopy = executed;
  caarRequestContext = self->_caarRequestContext;
  self->_caarRequestContext = 0;

  featuresGenerated = self->_featuresGenerated;
  self->_featuresGenerated = 0;

  tieBreakersExecuted = self->_tieBreakersExecuted;
  self->_tieBreakersExecuted = 0;

  v8 = 103;
  if (!executedCopy)
  {
    v8 = 0;
  }

  self->_whichEvent_Type = v8;
  modelExecuted = self->_modelExecuted;
  self->_modelExecuted = executedCopy;
}

- (void)deleteFeaturesGenerated
{
  if (self->_whichEvent_Type == 102)
  {
    self->_whichEvent_Type = 0;
    self->_featuresGenerated = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (CAARSchemaCAARFeaturesGenerated)featuresGenerated
{
  if (self->_whichEvent_Type == 102)
  {
    v3 = self->_featuresGenerated;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setFeaturesGenerated:(id)generated
{
  generatedCopy = generated;
  caarRequestContext = self->_caarRequestContext;
  self->_caarRequestContext = 0;

  modelExecuted = self->_modelExecuted;
  self->_modelExecuted = 0;

  tieBreakersExecuted = self->_tieBreakersExecuted;
  self->_tieBreakersExecuted = 0;

  v8 = 102;
  if (!generatedCopy)
  {
    v8 = 0;
  }

  self->_whichEvent_Type = v8;
  featuresGenerated = self->_featuresGenerated;
  self->_featuresGenerated = generatedCopy;
}

- (void)deleteCaarRequestContext
{
  if (self->_whichEvent_Type == 101)
  {
    self->_whichEvent_Type = 0;
    self->_caarRequestContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (CAARSchemaCAARRequestContext)caarRequestContext
{
  if (self->_whichEvent_Type == 101)
  {
    v3 = self->_caarRequestContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setCaarRequestContext:(id)context
{
  contextCopy = context;
  featuresGenerated = self->_featuresGenerated;
  self->_featuresGenerated = 0;

  modelExecuted = self->_modelExecuted;
  self->_modelExecuted = 0;

  tieBreakersExecuted = self->_tieBreakersExecuted;
  self->_tieBreakersExecuted = 0;

  v8 = 101;
  if (!contextCopy)
  {
    v8 = 0;
  }

  self->_whichEvent_Type = v8;
  caarRequestContext = self->_caarRequestContext;
  self->_caarRequestContext = contextCopy;
}

- (id)qualifiedMessageName
{
  whichEvent_Type = [(CAARSchemaCAARClientEvent *)self whichEvent_Type];
  if (whichEvent_Type - 101 > 3)
  {
    return @"com.apple.aiml.siri.caar.CAARClientEvent";
  }

  else
  {
    return off_1E78D22C8[whichEvent_Type - 101];
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v22.receiver = self;
  v22.super_class = CAARSchemaCAARClientEvent;
  v5 = [(SISchemaInstrumentationMessage *)&v22 applySensitiveConditionsPolicy:policyCopy];
  eventMetadata = [(CAARSchemaCAARClientEvent *)self eventMetadata];
  v7 = [eventMetadata applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(CAARSchemaCAARClientEvent *)self deleteEventMetadata];
  }

  caarRequestContext = [(CAARSchemaCAARClientEvent *)self caarRequestContext];
  v10 = [caarRequestContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(CAARSchemaCAARClientEvent *)self deleteCaarRequestContext];
  }

  featuresGenerated = [(CAARSchemaCAARClientEvent *)self featuresGenerated];
  v13 = [featuresGenerated applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
  {
    [(CAARSchemaCAARClientEvent *)self deleteFeaturesGenerated];
  }

  modelExecuted = [(CAARSchemaCAARClientEvent *)self modelExecuted];
  v16 = [modelExecuted applySensitiveConditionsPolicy:policyCopy];
  suppressMessage4 = [v16 suppressMessage];

  if (suppressMessage4)
  {
    [(CAARSchemaCAARClientEvent *)self deleteModelExecuted];
  }

  tieBreakersExecuted = [(CAARSchemaCAARClientEvent *)self tieBreakersExecuted];
  v19 = [tieBreakersExecuted applySensitiveConditionsPolicy:policyCopy];
  suppressMessage5 = [v19 suppressMessage];

  if (suppressMessage5)
  {
    [(CAARSchemaCAARClientEvent *)self deleteTieBreakersExecuted];
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
  eventMetadata = [(CAARSchemaCAARClientEvent *)self eventMetadata];
  caarId = [eventMetadata caarId];

  if (caarId && ([caarId value], (v5 = objc_claimAutoreleasedReturnValue()) != 0) && (v6 = v5, objc_msgSend(caarId, "value"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "length"), v7, v6, v8))
  {
    LODWORD(value) = 30;
  }

  else
  {
    eventMetadata2 = [(CAARSchemaCAARClientEvent *)self eventMetadata];
    requestId = [eventMetadata2 requestId];

    if (requestId && ([requestId value], (v12 = objc_claimAutoreleasedReturnValue()) != 0) && (v13 = v12, objc_msgSend(requestId, "value"), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "length"), v14, v13, v15))
    {
      LODWORD(value) = 1;
      caarId = requestId;
    }

    else
    {
      eventMetadata3 = [(CAARSchemaCAARClientEvent *)self eventMetadata];
      caarId = [eventMetadata3 subRequestId];

      if (caarId)
      {
        value = [caarId value];
        if (value)
        {
          value2 = [caarId value];
          v18 = [value2 length];

          if (v18)
          {
            LODWORD(value) = 43;
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
    }
  }

  return value;
}

- (id)getComponentId
{
  eventMetadata = [(CAARSchemaCAARClientEvent *)self eventMetadata];
  caarId = [eventMetadata caarId];

  if (caarId)
  {
    value = [caarId value];
    if (value)
    {
      v6 = value;
      value2 = [caarId value];
      v8 = [value2 length];

      if (v8)
      {
        goto LABEL_11;
      }
    }
  }

  eventMetadata2 = [(CAARSchemaCAARClientEvent *)self eventMetadata];
  requestId = [eventMetadata2 requestId];

  if (requestId)
  {
    value3 = [requestId value];
    if (value3)
    {
      v12 = value3;
      value4 = [requestId value];
      v14 = [value4 length];

      if (v14)
      {
        caarId = requestId;
LABEL_11:
        value5 = caarId;
        caarId = value5;
        goto LABEL_13;
      }
    }
  }

  eventMetadata3 = [(CAARSchemaCAARClientEvent *)self eventMetadata];
  caarId = [eventMetadata3 subRequestId];

  if (caarId)
  {
    value5 = [caarId value];
    if (!value5)
    {
      goto LABEL_13;
    }

    value6 = [caarId value];
    v18 = [value6 length];

    if (v18)
    {
      goto LABEL_11;
    }
  }

  value5 = 0;
LABEL_13:

  return value5;
}

- (SISchemaInstrumentationMessage)innerEvent
{
  whichEvent_Type = [(CAARSchemaCAARClientEvent *)self whichEvent_Type];
  if (whichEvent_Type - 101 > 3)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(&self->super.super.super.super.isa + *off_1E78E8FC0[whichEvent_Type - 101]);
  }

  return v4;
}

+ (id)getInnerTypeStringByTag:(unint64_t)tag
{
  if (tag - 101 > 3)
  {
    return 0;
  }

  else
  {
    return off_1E78E8FE0[tag - 101];
  }
}

@end