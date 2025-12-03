@interface RFGSchemaRFGClientEvent
+ (id)getInnerTypeStringByTag:(unint64_t)tag;
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (RFGSchemaRFGClientEvent)initWithDictionary:(id)dictionary;
- (RFGSchemaRFGClientEvent)initWithJSON:(id)n;
- (RFSchemaRFGVisualResponseShownLink)visualResponseShownLink;
- (RFSchemaRFGVisualResponseShownTier1)visualResponseShownTier1;
- (SISchemaInstrumentationMessage)innerEvent;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)getComponentId;
- (id)qualifiedMessageName;
- (id)suppressMessageUnderConditions;
- (int)componentName;
- (unint64_t)hash;
- (void)deleteVisualResponseShownLink;
- (void)deleteVisualResponseShownTier1;
- (void)setVisualResponseShownLink:(id)link;
- (void)setVisualResponseShownTier1:(id)tier1;
- (void)writeTo:(id)to;
@end

@implementation RFGSchemaRFGClientEvent

- (id)qualifiedMessageName
{
  whichEvent_Type = [(RFGSchemaRFGClientEvent *)self whichEvent_Type];
  v3 = @"com.apple.aiml.siri.rf.RFGClientEvent";
  if (whichEvent_Type == 102)
  {
    v3 = @"com.apple.aiml.siri.rf.RFGClientEvent.RFGVisualResponseShownLink";
  }

  if (whichEvent_Type == 101)
  {
    return @"com.apple.aiml.siri.rf.RFGClientEvent.RFGVisualResponseShownTier1";
  }

  else
  {
    return v3;
  }
}

- (RFSchemaRFGVisualResponseShownLink)visualResponseShownLink
{
  if (self->_whichEvent_Type == 102)
  {
    v3 = self->_visualResponseShownLink;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (RFSchemaRFGVisualResponseShownTier1)visualResponseShownTier1
{
  if (self->_whichEvent_Type == 101)
  {
    v3 = self->_visualResponseShownTier1;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (RFGSchemaRFGClientEvent)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v14.receiver = self;
  v14.super_class = RFGSchemaRFGClientEvent;
  v5 = [(RFGSchemaRFGClientEvent *)&v14 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"eventMetadata"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[RFSchemaRFGClientEventMetadata alloc] initWithDictionary:v6];
      [(RFGSchemaRFGClientEvent *)v5 setEventMetadata:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"visualResponseShownTier1"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[RFSchemaRFGVisualResponseShownTier1 alloc] initWithDictionary:v8];
      [(RFGSchemaRFGClientEvent *)v5 setVisualResponseShownTier1:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"visualResponseShownLink"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[RFSchemaRFGVisualResponseShownLink alloc] initWithDictionary:v10];
      [(RFGSchemaRFGClientEvent *)v5 setVisualResponseShownLink:v11];
    }

    v12 = v5;
  }

  return v5;
}

- (RFGSchemaRFGClientEvent)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(RFGSchemaRFGClientEvent *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(RFGSchemaRFGClientEvent *)self dictionaryRepresentation];
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
    eventMetadata = [(RFGSchemaRFGClientEvent *)self eventMetadata];
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

  if (self->_visualResponseShownLink)
  {
    visualResponseShownLink = [(RFGSchemaRFGClientEvent *)self visualResponseShownLink];
    dictionaryRepresentation2 = [visualResponseShownLink dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"visualResponseShownLink"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"visualResponseShownLink"];
    }
  }

  if (self->_visualResponseShownTier1)
  {
    visualResponseShownTier1 = [(RFGSchemaRFGClientEvent *)self visualResponseShownTier1];
    dictionaryRepresentation3 = [visualResponseShownTier1 dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"visualResponseShownTier1"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"visualResponseShownTier1"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(RFSchemaRFGClientEventMetadata *)self->_eventMetadata hash];
  v4 = [(RFSchemaRFGVisualResponseShownTier1 *)self->_visualResponseShownTier1 hash]^ v3;
  return v4 ^ [(RFSchemaRFGVisualResponseShownLink *)self->_visualResponseShownLink hash];
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

  eventMetadata = [(RFGSchemaRFGClientEvent *)self eventMetadata];
  eventMetadata2 = [equalCopy eventMetadata];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_17;
  }

  eventMetadata3 = [(RFGSchemaRFGClientEvent *)self eventMetadata];
  if (eventMetadata3)
  {
    v9 = eventMetadata3;
    eventMetadata4 = [(RFGSchemaRFGClientEvent *)self eventMetadata];
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

  eventMetadata = [(RFGSchemaRFGClientEvent *)self visualResponseShownTier1];
  eventMetadata2 = [equalCopy visualResponseShownTier1];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_17;
  }

  visualResponseShownTier1 = [(RFGSchemaRFGClientEvent *)self visualResponseShownTier1];
  if (visualResponseShownTier1)
  {
    v14 = visualResponseShownTier1;
    visualResponseShownTier12 = [(RFGSchemaRFGClientEvent *)self visualResponseShownTier1];
    visualResponseShownTier13 = [equalCopy visualResponseShownTier1];
    v17 = [visualResponseShownTier12 isEqual:visualResponseShownTier13];

    if (!v17)
    {
      goto LABEL_18;
    }
  }

  else
  {
  }

  eventMetadata = [(RFGSchemaRFGClientEvent *)self visualResponseShownLink];
  eventMetadata2 = [equalCopy visualResponseShownLink];
  if ((eventMetadata != 0) != (eventMetadata2 == 0))
  {
    visualResponseShownLink = [(RFGSchemaRFGClientEvent *)self visualResponseShownLink];
    if (!visualResponseShownLink)
    {

LABEL_21:
      v23 = 1;
      goto LABEL_19;
    }

    v19 = visualResponseShownLink;
    visualResponseShownLink2 = [(RFGSchemaRFGClientEvent *)self visualResponseShownLink];
    visualResponseShownLink3 = [equalCopy visualResponseShownLink];
    v22 = [visualResponseShownLink2 isEqual:visualResponseShownLink3];

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
  eventMetadata = [(RFGSchemaRFGClientEvent *)self eventMetadata];

  if (eventMetadata)
  {
    eventMetadata2 = [(RFGSchemaRFGClientEvent *)self eventMetadata];
    PBDataWriterWriteSubmessage();
  }

  visualResponseShownTier1 = [(RFGSchemaRFGClientEvent *)self visualResponseShownTier1];

  if (visualResponseShownTier1)
  {
    visualResponseShownTier12 = [(RFGSchemaRFGClientEvent *)self visualResponseShownTier1];
    PBDataWriterWriteSubmessage();
  }

  visualResponseShownLink = [(RFGSchemaRFGClientEvent *)self visualResponseShownLink];

  v9 = toCopy;
  if (visualResponseShownLink)
  {
    visualResponseShownLink2 = [(RFGSchemaRFGClientEvent *)self visualResponseShownLink];
    PBDataWriterWriteSubmessage();

    v9 = toCopy;
  }
}

- (void)deleteVisualResponseShownLink
{
  if (self->_whichEvent_Type == 102)
  {
    self->_whichEvent_Type = 0;
    self->_visualResponseShownLink = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setVisualResponseShownLink:(id)link
{
  linkCopy = link;
  visualResponseShownTier1 = self->_visualResponseShownTier1;
  self->_visualResponseShownTier1 = 0;

  v6 = 102;
  if (!linkCopy)
  {
    v6 = 0;
  }

  self->_whichEvent_Type = v6;
  visualResponseShownLink = self->_visualResponseShownLink;
  self->_visualResponseShownLink = linkCopy;
}

- (void)deleteVisualResponseShownTier1
{
  if (self->_whichEvent_Type == 101)
  {
    self->_whichEvent_Type = 0;
    self->_visualResponseShownTier1 = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setVisualResponseShownTier1:(id)tier1
{
  tier1Copy = tier1;
  visualResponseShownLink = self->_visualResponseShownLink;
  self->_visualResponseShownLink = 0;

  v6 = 101;
  if (!tier1Copy)
  {
    v6 = 0;
  }

  self->_whichEvent_Type = v6;
  visualResponseShownTier1 = self->_visualResponseShownTier1;
  self->_visualResponseShownTier1 = tier1Copy;
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v16.receiver = self;
  v16.super_class = RFGSchemaRFGClientEvent;
  v5 = [(SISchemaInstrumentationMessage *)&v16 applySensitiveConditionsPolicy:policyCopy];
  if ([policyCopy isConditionSet:2])
  {
    [(RFGSchemaRFGClientEvent *)self deleteVisualResponseShownTier1];
  }

  if ([policyCopy isConditionSet:4])
  {
    [(RFGSchemaRFGClientEvent *)self deleteVisualResponseShownTier1];
  }

  if ([policyCopy isConditionSet:5])
  {
    [(RFGSchemaRFGClientEvent *)self deleteVisualResponseShownTier1];
  }

  if ([policyCopy isConditionSet:6])
  {
    [(RFGSchemaRFGClientEvent *)self deleteVisualResponseShownTier1];
  }

  if ([policyCopy isConditionSet:7])
  {
    [(RFGSchemaRFGClientEvent *)self deleteVisualResponseShownTier1];
  }

  if ([policyCopy isConditionSet:11])
  {
    [(RFGSchemaRFGClientEvent *)self deleteVisualResponseShownTier1];
  }

  eventMetadata = [(RFGSchemaRFGClientEvent *)self eventMetadata];
  v7 = [eventMetadata applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(RFGSchemaRFGClientEvent *)self deleteEventMetadata];
  }

  visualResponseShownTier1 = [(RFGSchemaRFGClientEvent *)self visualResponseShownTier1];
  v10 = [visualResponseShownTier1 applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(RFGSchemaRFGClientEvent *)self deleteVisualResponseShownTier1];
  }

  visualResponseShownLink = [(RFGSchemaRFGClientEvent *)self visualResponseShownLink];
  v13 = [visualResponseShownLink applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
  {
    [(RFGSchemaRFGClientEvent *)self deleteVisualResponseShownLink];
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
  eventMetadata = [(RFGSchemaRFGClientEvent *)self eventMetadata];
  rfId = [eventMetadata rfId];

  if (rfId)
  {
    value = [rfId value];
    if (value)
    {
      value2 = [rfId value];
      v6 = [value2 length];

      if (v6)
      {
        LODWORD(value) = 28;
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
  eventMetadata = [(RFGSchemaRFGClientEvent *)self eventMetadata];
  rfId = [eventMetadata rfId];

  if (!rfId)
  {
    goto LABEL_5;
  }

  value = [rfId value];
  if (!value)
  {
    goto LABEL_6;
  }

  value2 = [rfId value];
  v6 = [value2 length];

  if (v6)
  {
    value = rfId;
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
  whichEvent_Type = [(RFGSchemaRFGClientEvent *)self whichEvent_Type];
  if (whichEvent_Type == 101)
  {
    v4 = &OBJC_IVAR___RFGSchemaRFGClientEvent__visualResponseShownTier1;
    goto LABEL_5;
  }

  if (whichEvent_Type == 102)
  {
    v4 = &OBJC_IVAR___RFGSchemaRFGClientEvent__visualResponseShownLink;
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
  v3 = @"visualResponseShownLink";
  if (tag != 102)
  {
    v3 = 0;
  }

  if (tag == 101)
  {
    return @"visualResponseShownTier1";
  }

  else
  {
    return v3;
  }
}

@end