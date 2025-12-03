@interface TTMSchemaTTMClientEvent
+ (id)getInnerTypeStringByTag:(unint64_t)tag;
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (SISchemaInstrumentationMessage)innerEvent;
- (TTMSchemaTTMClientEvent)initWithDictionary:(id)dictionary;
- (TTMSchemaTTMClientEvent)initWithJSON:(id)n;
- (TTMSchemaTTMNeuralCombinerRequestContext)ttmNeuralCombinerRequestContext;
- (TTMSchemaTTMOverrideRequestContext)ttmOverrideRequestContext;
- (TTMSchemaTTMRequestContext)ttmRequestContext;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)getComponentId;
- (id)qualifiedMessageName;
- (id)suppressMessageUnderConditions;
- (int)componentName;
- (unint64_t)hash;
- (void)deleteTtmNeuralCombinerRequestContext;
- (void)deleteTtmOverrideRequestContext;
- (void)deleteTtmRequestContext;
- (void)setTtmNeuralCombinerRequestContext:(id)context;
- (void)setTtmOverrideRequestContext:(id)context;
- (void)setTtmRequestContext:(id)context;
- (void)writeTo:(id)to;
@end

@implementation TTMSchemaTTMClientEvent

- (TTMSchemaTTMClientEvent)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v16.receiver = self;
  v16.super_class = TTMSchemaTTMClientEvent;
  v5 = [(TTMSchemaTTMClientEvent *)&v16 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"eventMetadata"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[TTMSchemaTTMClientEventMetadata alloc] initWithDictionary:v6];
      [(TTMSchemaTTMClientEvent *)v5 setEventMetadata:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"ttmRequestContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[TTMSchemaTTMRequestContext alloc] initWithDictionary:v8];
      [(TTMSchemaTTMClientEvent *)v5 setTtmRequestContext:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"ttmNeuralCombinerRequestContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[TTMSchemaTTMNeuralCombinerRequestContext alloc] initWithDictionary:v10];
      [(TTMSchemaTTMClientEvent *)v5 setTtmNeuralCombinerRequestContext:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"ttmOverrideRequestContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[TTMSchemaTTMOverrideRequestContext alloc] initWithDictionary:v12];
      [(TTMSchemaTTMClientEvent *)v5 setTtmOverrideRequestContext:v13];
    }

    v14 = v5;
  }

  return v5;
}

- (TTMSchemaTTMClientEvent)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(TTMSchemaTTMClientEvent *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(TTMSchemaTTMClientEvent *)self dictionaryRepresentation];
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
    eventMetadata = [(TTMSchemaTTMClientEvent *)self eventMetadata];
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

  if (self->_ttmNeuralCombinerRequestContext)
  {
    ttmNeuralCombinerRequestContext = [(TTMSchemaTTMClientEvent *)self ttmNeuralCombinerRequestContext];
    dictionaryRepresentation2 = [ttmNeuralCombinerRequestContext dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"ttmNeuralCombinerRequestContext"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"ttmNeuralCombinerRequestContext"];
    }
  }

  if (self->_ttmOverrideRequestContext)
  {
    ttmOverrideRequestContext = [(TTMSchemaTTMClientEvent *)self ttmOverrideRequestContext];
    dictionaryRepresentation3 = [ttmOverrideRequestContext dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"ttmOverrideRequestContext"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"ttmOverrideRequestContext"];
    }
  }

  if (self->_ttmRequestContext)
  {
    ttmRequestContext = [(TTMSchemaTTMClientEvent *)self ttmRequestContext];
    dictionaryRepresentation4 = [ttmRequestContext dictionaryRepresentation];
    if (dictionaryRepresentation4)
    {
      [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"ttmRequestContext"];
    }

    else
    {
      null4 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null4 forKeyedSubscript:@"ttmRequestContext"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(TTMSchemaTTMClientEventMetadata *)self->_eventMetadata hash];
  v4 = [(TTMSchemaTTMRequestContext *)self->_ttmRequestContext hash]^ v3;
  v5 = [(TTMSchemaTTMNeuralCombinerRequestContext *)self->_ttmNeuralCombinerRequestContext hash];
  return v4 ^ v5 ^ [(TTMSchemaTTMOverrideRequestContext *)self->_ttmOverrideRequestContext hash];
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

  eventMetadata = [(TTMSchemaTTMClientEvent *)self eventMetadata];
  eventMetadata2 = [equalCopy eventMetadata];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_22;
  }

  eventMetadata3 = [(TTMSchemaTTMClientEvent *)self eventMetadata];
  if (eventMetadata3)
  {
    v9 = eventMetadata3;
    eventMetadata4 = [(TTMSchemaTTMClientEvent *)self eventMetadata];
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

  eventMetadata = [(TTMSchemaTTMClientEvent *)self ttmRequestContext];
  eventMetadata2 = [equalCopy ttmRequestContext];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_22;
  }

  ttmRequestContext = [(TTMSchemaTTMClientEvent *)self ttmRequestContext];
  if (ttmRequestContext)
  {
    v14 = ttmRequestContext;
    ttmRequestContext2 = [(TTMSchemaTTMClientEvent *)self ttmRequestContext];
    ttmRequestContext3 = [equalCopy ttmRequestContext];
    v17 = [ttmRequestContext2 isEqual:ttmRequestContext3];

    if (!v17)
    {
      goto LABEL_23;
    }
  }

  else
  {
  }

  eventMetadata = [(TTMSchemaTTMClientEvent *)self ttmNeuralCombinerRequestContext];
  eventMetadata2 = [equalCopy ttmNeuralCombinerRequestContext];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_22;
  }

  ttmNeuralCombinerRequestContext = [(TTMSchemaTTMClientEvent *)self ttmNeuralCombinerRequestContext];
  if (ttmNeuralCombinerRequestContext)
  {
    v19 = ttmNeuralCombinerRequestContext;
    ttmNeuralCombinerRequestContext2 = [(TTMSchemaTTMClientEvent *)self ttmNeuralCombinerRequestContext];
    ttmNeuralCombinerRequestContext3 = [equalCopy ttmNeuralCombinerRequestContext];
    v22 = [ttmNeuralCombinerRequestContext2 isEqual:ttmNeuralCombinerRequestContext3];

    if (!v22)
    {
      goto LABEL_23;
    }
  }

  else
  {
  }

  eventMetadata = [(TTMSchemaTTMClientEvent *)self ttmOverrideRequestContext];
  eventMetadata2 = [equalCopy ttmOverrideRequestContext];
  if ((eventMetadata != 0) != (eventMetadata2 == 0))
  {
    ttmOverrideRequestContext = [(TTMSchemaTTMClientEvent *)self ttmOverrideRequestContext];
    if (!ttmOverrideRequestContext)
    {

LABEL_26:
      v28 = 1;
      goto LABEL_24;
    }

    v24 = ttmOverrideRequestContext;
    ttmOverrideRequestContext2 = [(TTMSchemaTTMClientEvent *)self ttmOverrideRequestContext];
    ttmOverrideRequestContext3 = [equalCopy ttmOverrideRequestContext];
    v27 = [ttmOverrideRequestContext2 isEqual:ttmOverrideRequestContext3];

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
  eventMetadata = [(TTMSchemaTTMClientEvent *)self eventMetadata];

  if (eventMetadata)
  {
    eventMetadata2 = [(TTMSchemaTTMClientEvent *)self eventMetadata];
    PBDataWriterWriteSubmessage();
  }

  ttmRequestContext = [(TTMSchemaTTMClientEvent *)self ttmRequestContext];

  if (ttmRequestContext)
  {
    ttmRequestContext2 = [(TTMSchemaTTMClientEvent *)self ttmRequestContext];
    PBDataWriterWriteSubmessage();
  }

  ttmNeuralCombinerRequestContext = [(TTMSchemaTTMClientEvent *)self ttmNeuralCombinerRequestContext];

  if (ttmNeuralCombinerRequestContext)
  {
    ttmNeuralCombinerRequestContext2 = [(TTMSchemaTTMClientEvent *)self ttmNeuralCombinerRequestContext];
    PBDataWriterWriteSubmessage();
  }

  ttmOverrideRequestContext = [(TTMSchemaTTMClientEvent *)self ttmOverrideRequestContext];

  v11 = toCopy;
  if (ttmOverrideRequestContext)
  {
    ttmOverrideRequestContext2 = [(TTMSchemaTTMClientEvent *)self ttmOverrideRequestContext];
    PBDataWriterWriteSubmessage();

    v11 = toCopy;
  }
}

- (void)deleteTtmOverrideRequestContext
{
  if (self->_whichEvent_Type == 103)
  {
    self->_whichEvent_Type = 0;
    self->_ttmOverrideRequestContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (TTMSchemaTTMOverrideRequestContext)ttmOverrideRequestContext
{
  if (self->_whichEvent_Type == 103)
  {
    v3 = self->_ttmOverrideRequestContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setTtmOverrideRequestContext:(id)context
{
  contextCopy = context;
  ttmRequestContext = self->_ttmRequestContext;
  self->_ttmRequestContext = 0;

  ttmNeuralCombinerRequestContext = self->_ttmNeuralCombinerRequestContext;
  self->_ttmNeuralCombinerRequestContext = 0;

  v7 = 103;
  if (!contextCopy)
  {
    v7 = 0;
  }

  self->_whichEvent_Type = v7;
  ttmOverrideRequestContext = self->_ttmOverrideRequestContext;
  self->_ttmOverrideRequestContext = contextCopy;
}

- (void)deleteTtmNeuralCombinerRequestContext
{
  if (self->_whichEvent_Type == 102)
  {
    self->_whichEvent_Type = 0;
    self->_ttmNeuralCombinerRequestContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (TTMSchemaTTMNeuralCombinerRequestContext)ttmNeuralCombinerRequestContext
{
  if (self->_whichEvent_Type == 102)
  {
    v3 = self->_ttmNeuralCombinerRequestContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setTtmNeuralCombinerRequestContext:(id)context
{
  contextCopy = context;
  ttmRequestContext = self->_ttmRequestContext;
  self->_ttmRequestContext = 0;

  ttmOverrideRequestContext = self->_ttmOverrideRequestContext;
  self->_ttmOverrideRequestContext = 0;

  v7 = 102;
  if (!contextCopy)
  {
    v7 = 0;
  }

  self->_whichEvent_Type = v7;
  ttmNeuralCombinerRequestContext = self->_ttmNeuralCombinerRequestContext;
  self->_ttmNeuralCombinerRequestContext = contextCopy;
}

- (void)deleteTtmRequestContext
{
  if (self->_whichEvent_Type == 101)
  {
    self->_whichEvent_Type = 0;
    self->_ttmRequestContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (TTMSchemaTTMRequestContext)ttmRequestContext
{
  if (self->_whichEvent_Type == 101)
  {
    v3 = self->_ttmRequestContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setTtmRequestContext:(id)context
{
  contextCopy = context;
  ttmNeuralCombinerRequestContext = self->_ttmNeuralCombinerRequestContext;
  self->_ttmNeuralCombinerRequestContext = 0;

  ttmOverrideRequestContext = self->_ttmOverrideRequestContext;
  self->_ttmOverrideRequestContext = 0;

  v7 = 101;
  if (!contextCopy)
  {
    v7 = 0;
  }

  self->_whichEvent_Type = v7;
  ttmRequestContext = self->_ttmRequestContext;
  self->_ttmRequestContext = contextCopy;
}

- (id)qualifiedMessageName
{
  whichEvent_Type = [(TTMSchemaTTMClientEvent *)self whichEvent_Type];
  if (whichEvent_Type - 101 > 2)
  {
    return @"com.apple.aiml.siri.ttm.TTMClientEvent";
  }

  else
  {
    return off_1E78E7E90[whichEvent_Type - 101];
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v19.receiver = self;
  v19.super_class = TTMSchemaTTMClientEvent;
  v5 = [(SISchemaInstrumentationMessage *)&v19 applySensitiveConditionsPolicy:policyCopy];
  eventMetadata = [(TTMSchemaTTMClientEvent *)self eventMetadata];
  v7 = [eventMetadata applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(TTMSchemaTTMClientEvent *)self deleteEventMetadata];
  }

  ttmRequestContext = [(TTMSchemaTTMClientEvent *)self ttmRequestContext];
  v10 = [ttmRequestContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(TTMSchemaTTMClientEvent *)self deleteTtmRequestContext];
  }

  ttmNeuralCombinerRequestContext = [(TTMSchemaTTMClientEvent *)self ttmNeuralCombinerRequestContext];
  v13 = [ttmNeuralCombinerRequestContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
  {
    [(TTMSchemaTTMClientEvent *)self deleteTtmNeuralCombinerRequestContext];
  }

  ttmOverrideRequestContext = [(TTMSchemaTTMClientEvent *)self ttmOverrideRequestContext];
  v16 = [ttmOverrideRequestContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage4 = [v16 suppressMessage];

  if (suppressMessage4)
  {
    [(TTMSchemaTTMClientEvent *)self deleteTtmOverrideRequestContext];
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
  eventMetadata = [(TTMSchemaTTMClientEvent *)self eventMetadata];
  ttmId = [eventMetadata ttmId];

  if (ttmId)
  {
    value = [ttmId value];
    if (value)
    {
      value2 = [ttmId value];
      v6 = [value2 length];

      if (v6)
      {
        LODWORD(value) = 37;
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
  eventMetadata = [(TTMSchemaTTMClientEvent *)self eventMetadata];
  ttmId = [eventMetadata ttmId];

  if (!ttmId)
  {
    goto LABEL_5;
  }

  value = [ttmId value];
  if (!value)
  {
    goto LABEL_6;
  }

  value2 = [ttmId value];
  v6 = [value2 length];

  if (v6)
  {
    value = ttmId;
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
  whichEvent_Type = [(TTMSchemaTTMClientEvent *)self whichEvent_Type];
  if (whichEvent_Type - 101 > 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(&self->super.super.super.super.isa + *off_1E78EB328[whichEvent_Type - 101]);
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
    return off_1E78EB340[tag - 101];
  }
}

@end