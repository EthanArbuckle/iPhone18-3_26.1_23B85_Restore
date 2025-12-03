@interface SetupSchemaProvisionalSiriSetupEvent
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (SetupSchemaProvisionalSiriSetupContext)siriSetupContext;
- (SetupSchemaProvisionalSiriSetupEvent)initWithDictionary:(id)dictionary;
- (SetupSchemaProvisionalSiriSetupEvent)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (id)qualifiedMessageName;
- (void)deleteSiriSetupContext;
- (void)setSiriSetupContext:(id)context;
- (void)writeTo:(id)to;
@end

@implementation SetupSchemaProvisionalSiriSetupEvent

- (id)qualifiedMessageName
{
  if ([(SetupSchemaProvisionalSiriSetupEvent *)self whichEvent_Type]== 100)
  {
    return @"com.apple.aiml.siri.setup.ProvisionalSiriSetupEvent.ProvisionalSiriSetupContext";
  }

  else
  {
    return @"com.apple.aiml.siri.setup.ProvisionalSiriSetupEvent";
  }
}

- (void)setSiriSetupContext:(id)context
{
  v3 = 100;
  if (!context)
  {
    v3 = 0;
  }

  self->_whichEvent_Type = v3;
  objc_storeStrong(&self->_siriSetupContext, context);
}

- (SetupSchemaProvisionalSiriSetupContext)siriSetupContext
{
  if (self->_whichEvent_Type == 100)
  {
    v3 = self->_siriSetupContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)deleteSiriSetupContext
{
  if (self->_whichEvent_Type == 100)
  {
    self->_whichEvent_Type = 0;
    siriSetupContext = self->_siriSetupContext;
    self->_siriSetupContext = 0;
    MEMORY[0x2821F96F8]();
  }
}

- (void)writeTo:(id)to
{
  toCopy = to;
  eventMetadata = [(SetupSchemaProvisionalSiriSetupEvent *)self eventMetadata];

  if (eventMetadata)
  {
    eventMetadata2 = [(SetupSchemaProvisionalSiriSetupEvent *)self eventMetadata];
    PBDataWriterWriteSubmessage();
  }

  siriSetupContext = [(SetupSchemaProvisionalSiriSetupEvent *)self siriSetupContext];

  if (siriSetupContext)
  {
    siriSetupContext2 = [(SetupSchemaProvisionalSiriSetupEvent *)self siriSetupContext];
    PBDataWriterWriteSubmessage();
  }
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

  eventMetadata = [(SetupSchemaProvisionalSiriSetupEvent *)self eventMetadata];
  eventMetadata2 = [equalCopy eventMetadata];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_12;
  }

  eventMetadata3 = [(SetupSchemaProvisionalSiriSetupEvent *)self eventMetadata];
  if (eventMetadata3)
  {
    v9 = eventMetadata3;
    eventMetadata4 = [(SetupSchemaProvisionalSiriSetupEvent *)self eventMetadata];
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

  eventMetadata = [(SetupSchemaProvisionalSiriSetupEvent *)self siriSetupContext];
  eventMetadata2 = [equalCopy siriSetupContext];
  if ((eventMetadata != 0) != (eventMetadata2 == 0))
  {
    siriSetupContext = [(SetupSchemaProvisionalSiriSetupEvent *)self siriSetupContext];
    if (!siriSetupContext)
    {

LABEL_16:
      v18 = 1;
      goto LABEL_14;
    }

    v14 = siriSetupContext;
    siriSetupContext2 = [(SetupSchemaProvisionalSiriSetupEvent *)self siriSetupContext];
    siriSetupContext3 = [equalCopy siriSetupContext];
    v17 = [siriSetupContext2 isEqual:siriSetupContext3];

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

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if (self->_eventMetadata)
  {
    eventMetadata = [(SetupSchemaProvisionalSiriSetupEvent *)self eventMetadata];
    dictionaryRepresentation = [eventMetadata dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"eventMetadata"];
    }

    else
    {
      null = [MEMORY[0x277CBEB68] null];
      [dictionary setObject:null forKeyedSubscript:@"eventMetadata"];
    }
  }

  if (self->_siriSetupContext)
  {
    siriSetupContext = [(SetupSchemaProvisionalSiriSetupEvent *)self siriSetupContext];
    dictionaryRepresentation2 = [siriSetupContext dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"siriSetupContext"];
    }

    else
    {
      null2 = [MEMORY[0x277CBEB68] null];
      [dictionary setObject:null2 forKeyedSubscript:@"siriSetupContext"];
    }
  }

  [(SetupSchemaProvisionalSiriSetupEvent *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(SetupSchemaProvisionalSiriSetupEvent *)self dictionaryRepresentation];
  if ([MEMORY[0x277CCAAA0] isValidJSONObject:dictionaryRepresentation])
  {
    v3 = [MEMORY[0x277CCAAA0] dataWithJSONObject:dictionaryRepresentation options:0 error:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (SetupSchemaProvisionalSiriSetupEvent)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x277CCAAA0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(SetupSchemaProvisionalSiriSetupEvent *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (SetupSchemaProvisionalSiriSetupEvent)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = SetupSchemaProvisionalSiriSetupEvent;
  v5 = [(SetupSchemaProvisionalSiriSetupEvent *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"eventMetadata"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SetupSchemaProvisionalSiriSetupEventMetadata alloc] initWithDictionary:v6];
      [(SetupSchemaProvisionalSiriSetupEvent *)v5 setEventMetadata:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"siriSetupContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[SetupSchemaProvisionalSiriSetupContext alloc] initWithDictionary:v8];
      [(SetupSchemaProvisionalSiriSetupEvent *)v5 setSiriSetupContext:v9];
    }

    v10 = v5;
  }

  return v5;
}

@end