@interface ASRSpeechProfileSchemaASRSpeechProfileClientEvent
+ (id)getInnerTypeStringByTag:(unint64_t)tag;
- (ASRSpeechProfileSchemaASRSpeechProfileClientEvent)initWithDictionary:(id)dictionary;
- (ASRSpeechProfileSchemaASRSpeechProfileClientEvent)initWithJSON:(id)n;
- (ASRSpeechProfileSchemaASRSpeechProfileUpdateContext)speechProfileUpdateContext;
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (SISchemaInstrumentationMessage)innerEvent;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)qualifiedMessageName;
- (id)suppressMessageUnderConditions;
- (int)clockIsolationLevel;
- (void)deleteSpeechProfileUpdateContext;
- (void)setSpeechProfileUpdateContext:(id)context;
- (void)writeTo:(id)to;
@end

@implementation ASRSpeechProfileSchemaASRSpeechProfileClientEvent

- (ASRSpeechProfileSchemaASRSpeechProfileClientEvent)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = ASRSpeechProfileSchemaASRSpeechProfileClientEvent;
  v5 = [(ASRSpeechProfileSchemaASRSpeechProfileClientEvent *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"eventMetadata"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[ASRSpeechProfileSchemaASRSpeechProfileClientEventMetadata alloc] initWithDictionary:v6];
      [(ASRSpeechProfileSchemaASRSpeechProfileClientEvent *)v5 setEventMetadata:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"speechProfileUpdateContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[ASRSpeechProfileSchemaASRSpeechProfileUpdateContext alloc] initWithDictionary:v8];
      [(ASRSpeechProfileSchemaASRSpeechProfileClientEvent *)v5 setSpeechProfileUpdateContext:v9];
    }

    v10 = v5;
  }

  return v5;
}

- (ASRSpeechProfileSchemaASRSpeechProfileClientEvent)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(ASRSpeechProfileSchemaASRSpeechProfileClientEvent *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(ASRSpeechProfileSchemaASRSpeechProfileClientEvent *)self dictionaryRepresentation];
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
    eventMetadata = [(ASRSpeechProfileSchemaASRSpeechProfileClientEvent *)self eventMetadata];
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

  if (self->_speechProfileUpdateContext)
  {
    speechProfileUpdateContext = [(ASRSpeechProfileSchemaASRSpeechProfileClientEvent *)self speechProfileUpdateContext];
    dictionaryRepresentation2 = [speechProfileUpdateContext dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"speechProfileUpdateContext"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"speechProfileUpdateContext"];
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

  eventMetadata = [(ASRSpeechProfileSchemaASRSpeechProfileClientEvent *)self eventMetadata];
  eventMetadata2 = [equalCopy eventMetadata];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_12;
  }

  eventMetadata3 = [(ASRSpeechProfileSchemaASRSpeechProfileClientEvent *)self eventMetadata];
  if (eventMetadata3)
  {
    v9 = eventMetadata3;
    eventMetadata4 = [(ASRSpeechProfileSchemaASRSpeechProfileClientEvent *)self eventMetadata];
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

  eventMetadata = [(ASRSpeechProfileSchemaASRSpeechProfileClientEvent *)self speechProfileUpdateContext];
  eventMetadata2 = [equalCopy speechProfileUpdateContext];
  if ((eventMetadata != 0) != (eventMetadata2 == 0))
  {
    speechProfileUpdateContext = [(ASRSpeechProfileSchemaASRSpeechProfileClientEvent *)self speechProfileUpdateContext];
    if (!speechProfileUpdateContext)
    {

LABEL_16:
      v18 = 1;
      goto LABEL_14;
    }

    v14 = speechProfileUpdateContext;
    speechProfileUpdateContext2 = [(ASRSpeechProfileSchemaASRSpeechProfileClientEvent *)self speechProfileUpdateContext];
    speechProfileUpdateContext3 = [equalCopy speechProfileUpdateContext];
    v17 = [speechProfileUpdateContext2 isEqual:speechProfileUpdateContext3];

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
  eventMetadata = [(ASRSpeechProfileSchemaASRSpeechProfileClientEvent *)self eventMetadata];

  if (eventMetadata)
  {
    eventMetadata2 = [(ASRSpeechProfileSchemaASRSpeechProfileClientEvent *)self eventMetadata];
    PBDataWriterWriteSubmessage();
  }

  speechProfileUpdateContext = [(ASRSpeechProfileSchemaASRSpeechProfileClientEvent *)self speechProfileUpdateContext];

  if (speechProfileUpdateContext)
  {
    speechProfileUpdateContext2 = [(ASRSpeechProfileSchemaASRSpeechProfileClientEvent *)self speechProfileUpdateContext];
    PBDataWriterWriteSubmessage();
  }
}

- (void)deleteSpeechProfileUpdateContext
{
  if (self->_whichEvent_Type == 101)
  {
    self->_whichEvent_Type = 0;
    self->_speechProfileUpdateContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (ASRSpeechProfileSchemaASRSpeechProfileUpdateContext)speechProfileUpdateContext
{
  if (self->_whichEvent_Type == 101)
  {
    v3 = self->_speechProfileUpdateContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setSpeechProfileUpdateContext:(id)context
{
  v3 = 101;
  if (!context)
  {
    v3 = 0;
  }

  self->_whichEvent_Type = v3;
  objc_storeStrong(&self->_speechProfileUpdateContext, context);
}

- (id)qualifiedMessageName
{
  if ([(ASRSpeechProfileSchemaASRSpeechProfileClientEvent *)self whichEvent_Type]== 101)
  {
    return @"com.apple.aiml.siri.asrspeechprofile.ASRSpeechProfileClientEvent.ASRSpeechProfileUpdateContext";
  }

  else
  {
    return @"com.apple.aiml.siri.asrspeechprofile.ASRSpeechProfileClientEvent";
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v13.receiver = self;
  v13.super_class = ASRSpeechProfileSchemaASRSpeechProfileClientEvent;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:policyCopy];
  eventMetadata = [(ASRSpeechProfileSchemaASRSpeechProfileClientEvent *)self eventMetadata];
  v7 = [eventMetadata applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(ASRSpeechProfileSchemaASRSpeechProfileClientEvent *)self deleteEventMetadata];
  }

  speechProfileUpdateContext = [(ASRSpeechProfileSchemaASRSpeechProfileClientEvent *)self speechProfileUpdateContext];
  v10 = [speechProfileUpdateContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(ASRSpeechProfileSchemaASRSpeechProfileClientEvent *)self deleteSpeechProfileUpdateContext];
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
  if ([(ASRSpeechProfileSchemaASRSpeechProfileClientEvent *)self whichEvent_Type]== 101)
  {
    v3 = self->_speechProfileUpdateContext;
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
    return @"speechProfileUpdateContext";
  }

  else
  {
    return 0;
  }
}

- (int)clockIsolationLevel
{
  if ([(ASRSpeechProfileSchemaASRSpeechProfileClientEvent *)self whichEvent_Type]== 101)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

@end