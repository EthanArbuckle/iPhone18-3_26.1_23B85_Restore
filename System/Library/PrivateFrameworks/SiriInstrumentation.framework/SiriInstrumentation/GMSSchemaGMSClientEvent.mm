@interface GMSSchemaGMSClientEvent
+ (id)getInnerTypeStringByTag:(unint64_t)tag;
- (BOOL)isEqual:(id)equal;
- (GMSSchemaGMSClientEvent)initWithDictionary:(id)dictionary;
- (GMSSchemaGMSClientEvent)initWithJSON:(id)n;
- (GMSSchemaGMSModelRequestContext)gmsModelRequestContext;
- (GMSSchemaGMSPrivateCloudMetricsReceived)gmsPrivateCloudMetricsReceived;
- (NSData)jsonData;
- (SISchemaInstrumentationMessage)innerEvent;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)getComponentId;
- (id)qualifiedMessageName;
- (id)suppressMessageUnderConditions;
- (int)componentName;
- (unint64_t)hash;
- (void)deleteGmsModelRequestContext;
- (void)deleteGmsPrivateCloudMetricsReceived;
- (void)setGmsModelRequestContext:(id)context;
- (void)setGmsPrivateCloudMetricsReceived:(id)received;
- (void)writeTo:(id)to;
@end

@implementation GMSSchemaGMSClientEvent

- (GMSSchemaGMSClientEvent)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v14.receiver = self;
  v14.super_class = GMSSchemaGMSClientEvent;
  v5 = [(GMSSchemaGMSClientEvent *)&v14 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"eventMetadata"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[GMSSchemaGMSClientEventMetadata alloc] initWithDictionary:v6];
      [(GMSSchemaGMSClientEvent *)v5 setEventMetadata:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"gmsModelRequestContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[GMSSchemaGMSModelRequestContext alloc] initWithDictionary:v8];
      [(GMSSchemaGMSClientEvent *)v5 setGmsModelRequestContext:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"gmsPrivateCloudMetricsReceived"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[GMSSchemaGMSPrivateCloudMetricsReceived alloc] initWithDictionary:v10];
      [(GMSSchemaGMSClientEvent *)v5 setGmsPrivateCloudMetricsReceived:v11];
    }

    v12 = v5;
  }

  return v5;
}

- (GMSSchemaGMSClientEvent)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(GMSSchemaGMSClientEvent *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(GMSSchemaGMSClientEvent *)self dictionaryRepresentation];
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
    eventMetadata = [(GMSSchemaGMSClientEvent *)self eventMetadata];
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

  if (self->_gmsModelRequestContext)
  {
    gmsModelRequestContext = [(GMSSchemaGMSClientEvent *)self gmsModelRequestContext];
    dictionaryRepresentation2 = [gmsModelRequestContext dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"gmsModelRequestContext"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"gmsModelRequestContext"];
    }
  }

  if (self->_gmsPrivateCloudMetricsReceived)
  {
    gmsPrivateCloudMetricsReceived = [(GMSSchemaGMSClientEvent *)self gmsPrivateCloudMetricsReceived];
    dictionaryRepresentation3 = [gmsPrivateCloudMetricsReceived dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"gmsPrivateCloudMetricsReceived"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"gmsPrivateCloudMetricsReceived"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(GMSSchemaGMSClientEventMetadata *)self->_eventMetadata hash];
  v4 = [(GMSSchemaGMSModelRequestContext *)self->_gmsModelRequestContext hash]^ v3;
  return v4 ^ [(GMSSchemaGMSPrivateCloudMetricsReceived *)self->_gmsPrivateCloudMetricsReceived hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_18;
  }

  whichEvent_Type = self->_whichEvent_Type;
  if (whichEvent_Type != [equalCopy whichEvent_Type])
  {
    goto LABEL_18;
  }

  eventMetadata = [(GMSSchemaGMSClientEvent *)self eventMetadata];
  eventMetadata2 = [equalCopy eventMetadata];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_17;
  }

  eventMetadata3 = [(GMSSchemaGMSClientEvent *)self eventMetadata];
  if (eventMetadata3)
  {
    v9 = eventMetadata3;
    eventMetadata4 = [(GMSSchemaGMSClientEvent *)self eventMetadata];
    eventMetadata5 = [equalCopy eventMetadata];
    v12 = [eventMetadata4 isEqual:eventMetadata5];

    if (!v12)
    {
      goto LABEL_18;
    }
  }

  else
  {
  }

  eventMetadata = [(GMSSchemaGMSClientEvent *)self gmsModelRequestContext];
  eventMetadata2 = [equalCopy gmsModelRequestContext];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_17;
  }

  gmsModelRequestContext = [(GMSSchemaGMSClientEvent *)self gmsModelRequestContext];
  if (gmsModelRequestContext)
  {
    v14 = gmsModelRequestContext;
    gmsModelRequestContext2 = [(GMSSchemaGMSClientEvent *)self gmsModelRequestContext];
    gmsModelRequestContext3 = [equalCopy gmsModelRequestContext];
    v17 = [gmsModelRequestContext2 isEqual:gmsModelRequestContext3];

    if (!v17)
    {
      goto LABEL_18;
    }
  }

  else
  {
  }

  eventMetadata = [(GMSSchemaGMSClientEvent *)self gmsPrivateCloudMetricsReceived];
  eventMetadata2 = [equalCopy gmsPrivateCloudMetricsReceived];
  if ((eventMetadata != 0) != (eventMetadata2 == 0))
  {
    gmsPrivateCloudMetricsReceived = [(GMSSchemaGMSClientEvent *)self gmsPrivateCloudMetricsReceived];
    if (!gmsPrivateCloudMetricsReceived)
    {

LABEL_21:
      v23 = 1;
      goto LABEL_19;
    }

    v19 = gmsPrivateCloudMetricsReceived;
    gmsPrivateCloudMetricsReceived2 = [(GMSSchemaGMSClientEvent *)self gmsPrivateCloudMetricsReceived];
    gmsPrivateCloudMetricsReceived3 = [equalCopy gmsPrivateCloudMetricsReceived];
    v22 = [gmsPrivateCloudMetricsReceived2 isEqual:gmsPrivateCloudMetricsReceived3];

    if (v22)
    {
      goto LABEL_21;
    }
  }

  else
  {
LABEL_17:
  }

LABEL_18:
  v23 = 0;
LABEL_19:

  return v23;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  eventMetadata = [(GMSSchemaGMSClientEvent *)self eventMetadata];

  if (eventMetadata)
  {
    eventMetadata2 = [(GMSSchemaGMSClientEvent *)self eventMetadata];
    PBDataWriterWriteSubmessage();
  }

  gmsModelRequestContext = [(GMSSchemaGMSClientEvent *)self gmsModelRequestContext];

  if (gmsModelRequestContext)
  {
    gmsModelRequestContext2 = [(GMSSchemaGMSClientEvent *)self gmsModelRequestContext];
    PBDataWriterWriteSubmessage();
  }

  gmsPrivateCloudMetricsReceived = [(GMSSchemaGMSClientEvent *)self gmsPrivateCloudMetricsReceived];

  v9 = toCopy;
  if (gmsPrivateCloudMetricsReceived)
  {
    gmsPrivateCloudMetricsReceived2 = [(GMSSchemaGMSClientEvent *)self gmsPrivateCloudMetricsReceived];
    PBDataWriterWriteSubmessage();

    v9 = toCopy;
  }
}

- (void)deleteGmsPrivateCloudMetricsReceived
{
  if (self->_whichEvent_Type == 102)
  {
    self->_whichEvent_Type = 0;
    self->_gmsPrivateCloudMetricsReceived = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (GMSSchemaGMSPrivateCloudMetricsReceived)gmsPrivateCloudMetricsReceived
{
  if (self->_whichEvent_Type == 102)
  {
    v3 = self->_gmsPrivateCloudMetricsReceived;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setGmsPrivateCloudMetricsReceived:(id)received
{
  receivedCopy = received;
  gmsModelRequestContext = self->_gmsModelRequestContext;
  self->_gmsModelRequestContext = 0;

  v6 = 102;
  if (!receivedCopy)
  {
    v6 = 0;
  }

  self->_whichEvent_Type = v6;
  gmsPrivateCloudMetricsReceived = self->_gmsPrivateCloudMetricsReceived;
  self->_gmsPrivateCloudMetricsReceived = receivedCopy;
}

- (void)deleteGmsModelRequestContext
{
  if (self->_whichEvent_Type == 101)
  {
    self->_whichEvent_Type = 0;
    self->_gmsModelRequestContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (GMSSchemaGMSModelRequestContext)gmsModelRequestContext
{
  if (self->_whichEvent_Type == 101)
  {
    v3 = self->_gmsModelRequestContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setGmsModelRequestContext:(id)context
{
  contextCopy = context;
  gmsPrivateCloudMetricsReceived = self->_gmsPrivateCloudMetricsReceived;
  self->_gmsPrivateCloudMetricsReceived = 0;

  v6 = 101;
  if (!contextCopy)
  {
    v6 = 0;
  }

  self->_whichEvent_Type = v6;
  gmsModelRequestContext = self->_gmsModelRequestContext;
  self->_gmsModelRequestContext = contextCopy;
}

- (id)qualifiedMessageName
{
  whichEvent_Type = [(GMSSchemaGMSClientEvent *)self whichEvent_Type];
  v3 = @"com.apple.aiml.siri.gms.GMSClientEvent";
  if (whichEvent_Type == 102)
  {
    v3 = @"com.apple.aiml.siri.gms.GMSClientEvent.GMSPrivateCloudMetricsReceived";
  }

  if (whichEvent_Type == 101)
  {
    return @"com.apple.aiml.siri.gms.GMSClientEvent.GMSModelRequestContext";
  }

  else
  {
    return v3;
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v16.receiver = self;
  v16.super_class = GMSSchemaGMSClientEvent;
  v5 = [(SISchemaInstrumentationMessage *)&v16 applySensitiveConditionsPolicy:policyCopy];
  eventMetadata = [(GMSSchemaGMSClientEvent *)self eventMetadata];
  v7 = [eventMetadata applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(GMSSchemaGMSClientEvent *)self deleteEventMetadata];
  }

  gmsModelRequestContext = [(GMSSchemaGMSClientEvent *)self gmsModelRequestContext];
  v10 = [gmsModelRequestContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(GMSSchemaGMSClientEvent *)self deleteGmsModelRequestContext];
  }

  gmsPrivateCloudMetricsReceived = [(GMSSchemaGMSClientEvent *)self gmsPrivateCloudMetricsReceived];
  v13 = [gmsPrivateCloudMetricsReceived applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
  {
    [(GMSSchemaGMSClientEvent *)self deleteGmsPrivateCloudMetricsReceived];
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
  eventMetadata = [(GMSSchemaGMSClientEvent *)self eventMetadata];
  gmsId = [eventMetadata gmsId];

  if (gmsId)
  {
    value = [gmsId value];
    if (value)
    {
      value2 = [gmsId value];
      v6 = [value2 length];

      if (v6)
      {
        LODWORD(value) = 62;
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
  eventMetadata = [(GMSSchemaGMSClientEvent *)self eventMetadata];
  gmsId = [eventMetadata gmsId];

  if (!gmsId)
  {
    goto LABEL_5;
  }

  value = [gmsId value];
  if (!value)
  {
    goto LABEL_6;
  }

  value2 = [gmsId value];
  v6 = [value2 length];

  if (v6)
  {
    value = gmsId;
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
  whichEvent_Type = [(GMSSchemaGMSClientEvent *)self whichEvent_Type];
  if (whichEvent_Type == 101)
  {
    v4 = &OBJC_IVAR___GMSSchemaGMSClientEvent__gmsModelRequestContext;
    goto LABEL_5;
  }

  if (whichEvent_Type == 102)
  {
    v4 = &OBJC_IVAR___GMSSchemaGMSClientEvent__gmsPrivateCloudMetricsReceived;
LABEL_5:
    v5 = *(&self->super.super.super.super.isa + *v4);
    goto LABEL_7;
  }

  v5 = 0;
LABEL_7:

  return v5;
}

+ (id)getInnerTypeStringByTag:(unint64_t)tag
{
  v3 = @"gmsPrivateCloudMetricsReceived";
  if (tag != 102)
  {
    v3 = 0;
  }

  if (tag == 101)
  {
    return @"gmsModelRequestContext";
  }

  else
  {
    return v3;
  }
}

@end