@interface SetupSchemaProvisionalSiriSetupEvent
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (SetupSchemaProvisionalSiriSetupContext)siriSetupContext;
- (SetupSchemaProvisionalSiriSetupEvent)initWithDictionary:(id)a3;
- (SetupSchemaProvisionalSiriSetupEvent)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (id)qualifiedMessageName;
- (void)deleteSiriSetupContext;
- (void)setSiriSetupContext:(id)a3;
- (void)writeTo:(id)a3;
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

- (void)setSiriSetupContext:(id)a3
{
  v3 = 100;
  if (!a3)
  {
    v3 = 0;
  }

  self->_whichEvent_Type = v3;
  objc_storeStrong(&self->_siriSetupContext, a3);
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

- (void)writeTo:(id)a3
{
  v8 = a3;
  v4 = [(SetupSchemaProvisionalSiriSetupEvent *)self eventMetadata];

  if (v4)
  {
    v5 = [(SetupSchemaProvisionalSiriSetupEvent *)self eventMetadata];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(SetupSchemaProvisionalSiriSetupEvent *)self siriSetupContext];

  if (v6)
  {
    v7 = [(SetupSchemaProvisionalSiriSetupEvent *)self siriSetupContext];
    PBDataWriterWriteSubmessage();
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_13;
  }

  whichEvent_Type = self->_whichEvent_Type;
  if (whichEvent_Type != [v4 whichEvent_Type])
  {
    goto LABEL_13;
  }

  v6 = [(SetupSchemaProvisionalSiriSetupEvent *)self eventMetadata];
  v7 = [v4 eventMetadata];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_12;
  }

  v8 = [(SetupSchemaProvisionalSiriSetupEvent *)self eventMetadata];
  if (v8)
  {
    v9 = v8;
    v10 = [(SetupSchemaProvisionalSiriSetupEvent *)self eventMetadata];
    v11 = [v4 eventMetadata];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_13;
    }
  }

  else
  {
  }

  v6 = [(SetupSchemaProvisionalSiriSetupEvent *)self siriSetupContext];
  v7 = [v4 siriSetupContext];
  if ((v6 != 0) != (v7 == 0))
  {
    v13 = [(SetupSchemaProvisionalSiriSetupEvent *)self siriSetupContext];
    if (!v13)
    {

LABEL_16:
      v18 = 1;
      goto LABEL_14;
    }

    v14 = v13;
    v15 = [(SetupSchemaProvisionalSiriSetupEvent *)self siriSetupContext];
    v16 = [v4 siriSetupContext];
    v17 = [v15 isEqual:v16];

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
  v3 = [MEMORY[0x277CBEB38] dictionary];
  if (self->_eventMetadata)
  {
    v4 = [(SetupSchemaProvisionalSiriSetupEvent *)self eventMetadata];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"eventMetadata"];
    }

    else
    {
      v6 = [MEMORY[0x277CBEB68] null];
      [v3 setObject:v6 forKeyedSubscript:@"eventMetadata"];
    }
  }

  if (self->_siriSetupContext)
  {
    v7 = [(SetupSchemaProvisionalSiriSetupEvent *)self siriSetupContext];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"siriSetupContext"];
    }

    else
    {
      v9 = [MEMORY[0x277CBEB68] null];
      [v3 setObject:v9 forKeyedSubscript:@"siriSetupContext"];
    }
  }

  [(SetupSchemaProvisionalSiriSetupEvent *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (NSData)jsonData
{
  v2 = [(SetupSchemaProvisionalSiriSetupEvent *)self dictionaryRepresentation];
  if ([MEMORY[0x277CCAAA0] isValidJSONObject:v2])
  {
    v3 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v2 options:0 error:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (SetupSchemaProvisionalSiriSetupEvent)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x277CCAAA0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(SetupSchemaProvisionalSiriSetupEvent *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (SetupSchemaProvisionalSiriSetupEvent)initWithDictionary:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = SetupSchemaProvisionalSiriSetupEvent;
  v5 = [(SetupSchemaProvisionalSiriSetupEvent *)&v12 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"eventMetadata"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SetupSchemaProvisionalSiriSetupEventMetadata alloc] initWithDictionary:v6];
      [(SetupSchemaProvisionalSiriSetupEvent *)v5 setEventMetadata:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"siriSetupContext"];
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