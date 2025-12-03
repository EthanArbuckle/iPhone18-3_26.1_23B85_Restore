@interface UAFSchemaUAFClientEvent
+ (id)getInnerTypeStringByTag:(unint64_t)tag;
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (SISchemaInstrumentationMessage)innerEvent;
- (UAFSchemaUAFAssetDailyStatusWithDeviceProperties)uafAssetDailyStatus;
- (UAFSchemaUAFClientEvent)initWithDictionary:(id)dictionary;
- (UAFSchemaUAFClientEvent)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)qualifiedMessageName;
- (id)suppressMessageUnderConditions;
- (void)deleteUafAssetDailyStatus;
- (void)setUafAssetDailyStatus:(id)status;
- (void)writeTo:(id)to;
@end

@implementation UAFSchemaUAFClientEvent

- (UAFSchemaUAFClientEvent)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = UAFSchemaUAFClientEvent;
  v5 = [(UAFSchemaUAFClientEvent *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"eventMetadata"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[UAFSchemaUAFClientEventMetadata alloc] initWithDictionary:v6];
      [(UAFSchemaUAFClientEvent *)v5 setEventMetadata:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"uafAssetDailyStatus"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[UAFSchemaUAFAssetDailyStatusWithDeviceProperties alloc] initWithDictionary:v8];
      [(UAFSchemaUAFClientEvent *)v5 setUafAssetDailyStatus:v9];
    }

    v10 = v5;
  }

  return v5;
}

- (UAFSchemaUAFClientEvent)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(UAFSchemaUAFClientEvent *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(UAFSchemaUAFClientEvent *)self dictionaryRepresentation];
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
    eventMetadata = [(UAFSchemaUAFClientEvent *)self eventMetadata];
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

  if (self->_uafAssetDailyStatus)
  {
    uafAssetDailyStatus = [(UAFSchemaUAFClientEvent *)self uafAssetDailyStatus];
    dictionaryRepresentation2 = [uafAssetDailyStatus dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"uafAssetDailyStatus"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"uafAssetDailyStatus"];
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
    goto LABEL_13;
  }

  whichEvent_Type = self->_whichEvent_Type;
  if (whichEvent_Type != [equalCopy whichEvent_Type])
  {
    goto LABEL_13;
  }

  eventMetadata = [(UAFSchemaUAFClientEvent *)self eventMetadata];
  eventMetadata2 = [equalCopy eventMetadata];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_12;
  }

  eventMetadata3 = [(UAFSchemaUAFClientEvent *)self eventMetadata];
  if (eventMetadata3)
  {
    v9 = eventMetadata3;
    eventMetadata4 = [(UAFSchemaUAFClientEvent *)self eventMetadata];
    eventMetadata5 = [equalCopy eventMetadata];
    v12 = [eventMetadata4 isEqual:eventMetadata5];

    if (!v12)
    {
      goto LABEL_13;
    }
  }

  else
  {
  }

  eventMetadata = [(UAFSchemaUAFClientEvent *)self uafAssetDailyStatus];
  eventMetadata2 = [equalCopy uafAssetDailyStatus];
  if ((eventMetadata != 0) != (eventMetadata2 == 0))
  {
    uafAssetDailyStatus = [(UAFSchemaUAFClientEvent *)self uafAssetDailyStatus];
    if (!uafAssetDailyStatus)
    {

LABEL_16:
      v18 = 1;
      goto LABEL_14;
    }

    v14 = uafAssetDailyStatus;
    uafAssetDailyStatus2 = [(UAFSchemaUAFClientEvent *)self uafAssetDailyStatus];
    uafAssetDailyStatus3 = [equalCopy uafAssetDailyStatus];
    v17 = [uafAssetDailyStatus2 isEqual:uafAssetDailyStatus3];

    if (v17)
    {
      goto LABEL_16;
    }
  }

  else
  {
LABEL_12:
  }

LABEL_13:
  v18 = 0;
LABEL_14:

  return v18;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  eventMetadata = [(UAFSchemaUAFClientEvent *)self eventMetadata];

  if (eventMetadata)
  {
    eventMetadata2 = [(UAFSchemaUAFClientEvent *)self eventMetadata];
    PBDataWriterWriteSubmessage();
  }

  uafAssetDailyStatus = [(UAFSchemaUAFClientEvent *)self uafAssetDailyStatus];

  if (uafAssetDailyStatus)
  {
    uafAssetDailyStatus2 = [(UAFSchemaUAFClientEvent *)self uafAssetDailyStatus];
    PBDataWriterWriteSubmessage();
  }
}

- (void)deleteUafAssetDailyStatus
{
  if (self->_whichEvent_Type == 101)
  {
    self->_whichEvent_Type = 0;
    self->_uafAssetDailyStatus = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (UAFSchemaUAFAssetDailyStatusWithDeviceProperties)uafAssetDailyStatus
{
  if (self->_whichEvent_Type == 101)
  {
    v3 = self->_uafAssetDailyStatus;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setUafAssetDailyStatus:(id)status
{
  v3 = 101;
  if (!status)
  {
    v3 = 0;
  }

  self->_whichEvent_Type = v3;
  objc_storeStrong(&self->_uafAssetDailyStatus, status);
}

- (id)qualifiedMessageName
{
  if ([(UAFSchemaUAFClientEvent *)self whichEvent_Type]== 101)
  {
    return @"com.apple.aiml.uaf.UAFClientEvent.UAFAssetDailyStatusWithDeviceProperties";
  }

  else
  {
    return @"com.apple.aiml.uaf.UAFClientEvent";
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v13.receiver = self;
  v13.super_class = UAFSchemaUAFClientEvent;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:policyCopy];
  eventMetadata = [(UAFSchemaUAFClientEvent *)self eventMetadata];
  v7 = [eventMetadata applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(UAFSchemaUAFClientEvent *)self deleteEventMetadata];
  }

  uafAssetDailyStatus = [(UAFSchemaUAFClientEvent *)self uafAssetDailyStatus];
  v10 = [uafAssetDailyStatus applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(UAFSchemaUAFClientEvent *)self deleteUafAssetDailyStatus];
  }

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

- (SISchemaInstrumentationMessage)innerEvent
{
  if ([(UAFSchemaUAFClientEvent *)self whichEvent_Type]== 101)
  {
    v3 = self->_uafAssetDailyStatus;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

+ (id)getInnerTypeStringByTag:(unint64_t)tag
{
  if (tag == 101)
  {
    return @"uafAssetDailyStatus";
  }

  else
  {
    return 0;
  }
}

@end