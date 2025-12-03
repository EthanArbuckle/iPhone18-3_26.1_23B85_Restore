@interface DonationSchemaSDSpeechDonationEvent
+ (id)getInnerTypeStringByTag:(unint64_t)tag;
- (BOOL)isEqual:(id)equal;
- (DonationSchemaSDSpeechDonationEvent)initWithDictionary:(id)dictionary;
- (DonationSchemaSDSpeechDonationEvent)initWithJSON:(id)n;
- (DonationSchemaSDSpeechSampleDonation)speechSampleDonation;
- (NSData)jsonData;
- (SISchemaInstrumentationMessage)innerEvent;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)qualifiedMessageName;
- (id)suppressMessageUnderConditions;
- (int)clockIsolationLevel;
- (void)deleteSpeechSampleDonation;
- (void)setSpeechSampleDonation:(id)donation;
- (void)writeTo:(id)to;
@end

@implementation DonationSchemaSDSpeechDonationEvent

- (DonationSchemaSDSpeechDonationEvent)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = DonationSchemaSDSpeechDonationEvent;
  v5 = [(DonationSchemaSDSpeechDonationEvent *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"eventMetaData"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[DonationSchemaSDSpeechDonationEventMetaData alloc] initWithDictionary:v6];
      [(DonationSchemaSDSpeechDonationEvent *)v5 setEventMetaData:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"speechSampleDonation"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[DonationSchemaSDSpeechSampleDonation alloc] initWithDictionary:v8];
      [(DonationSchemaSDSpeechDonationEvent *)v5 setSpeechSampleDonation:v9];
    }

    v10 = v5;
  }

  return v5;
}

- (DonationSchemaSDSpeechDonationEvent)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(DonationSchemaSDSpeechDonationEvent *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(DonationSchemaSDSpeechDonationEvent *)self dictionaryRepresentation];
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
  if (self->_eventMetaData)
  {
    eventMetaData = [(DonationSchemaSDSpeechDonationEvent *)self eventMetaData];
    dictionaryRepresentation = [eventMetaData dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"eventMetaData"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"eventMetaData"];
    }
  }

  if (self->_speechSampleDonation)
  {
    speechSampleDonation = [(DonationSchemaSDSpeechDonationEvent *)self speechSampleDonation];
    dictionaryRepresentation2 = [speechSampleDonation dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"speechSampleDonation"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"speechSampleDonation"];
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

  eventMetaData = [(DonationSchemaSDSpeechDonationEvent *)self eventMetaData];
  eventMetaData2 = [equalCopy eventMetaData];
  if ((eventMetaData != 0) == (eventMetaData2 == 0))
  {
    goto LABEL_12;
  }

  eventMetaData3 = [(DonationSchemaSDSpeechDonationEvent *)self eventMetaData];
  if (eventMetaData3)
  {
    v9 = eventMetaData3;
    eventMetaData4 = [(DonationSchemaSDSpeechDonationEvent *)self eventMetaData];
    eventMetaData5 = [equalCopy eventMetaData];
    v12 = [eventMetaData4 isEqual:eventMetaData5];

    if (!v12)
    {
      goto LABEL_13;
    }
  }

  else
  {
  }

  eventMetaData = [(DonationSchemaSDSpeechDonationEvent *)self speechSampleDonation];
  eventMetaData2 = [equalCopy speechSampleDonation];
  if ((eventMetaData != 0) != (eventMetaData2 == 0))
  {
    speechSampleDonation = [(DonationSchemaSDSpeechDonationEvent *)self speechSampleDonation];
    if (!speechSampleDonation)
    {

LABEL_16:
      v18 = 1;
      goto LABEL_14;
    }

    v14 = speechSampleDonation;
    speechSampleDonation2 = [(DonationSchemaSDSpeechDonationEvent *)self speechSampleDonation];
    speechSampleDonation3 = [equalCopy speechSampleDonation];
    v17 = [speechSampleDonation2 isEqual:speechSampleDonation3];

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
  eventMetaData = [(DonationSchemaSDSpeechDonationEvent *)self eventMetaData];

  if (eventMetaData)
  {
    eventMetaData2 = [(DonationSchemaSDSpeechDonationEvent *)self eventMetaData];
    PBDataWriterWriteSubmessage();
  }

  speechSampleDonation = [(DonationSchemaSDSpeechDonationEvent *)self speechSampleDonation];

  if (speechSampleDonation)
  {
    speechSampleDonation2 = [(DonationSchemaSDSpeechDonationEvent *)self speechSampleDonation];
    PBDataWriterWriteSubmessage();
  }
}

- (void)deleteSpeechSampleDonation
{
  if (self->_whichEvent_Type == 101)
  {
    self->_whichEvent_Type = 0;
    self->_speechSampleDonation = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (DonationSchemaSDSpeechSampleDonation)speechSampleDonation
{
  if (self->_whichEvent_Type == 101)
  {
    v3 = self->_speechSampleDonation;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setSpeechSampleDonation:(id)donation
{
  v3 = 101;
  if (!donation)
  {
    v3 = 0;
  }

  self->_whichEvent_Type = v3;
  objc_storeStrong(&self->_speechSampleDonation, donation);
}

- (id)qualifiedMessageName
{
  if ([(DonationSchemaSDSpeechDonationEvent *)self whichEvent_Type]== 101)
  {
    return @"com.apple.aiml.donation.SDSpeechDonationEvent.SDSpeechSampleDonation";
  }

  else
  {
    return @"com.apple.aiml.donation.SDSpeechDonationEvent";
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v13.receiver = self;
  v13.super_class = DonationSchemaSDSpeechDonationEvent;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:policyCopy];
  eventMetaData = [(DonationSchemaSDSpeechDonationEvent *)self eventMetaData];
  v7 = [eventMetaData applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(DonationSchemaSDSpeechDonationEvent *)self deleteEventMetaData];
  }

  speechSampleDonation = [(DonationSchemaSDSpeechDonationEvent *)self speechSampleDonation];
  v10 = [speechSampleDonation applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(DonationSchemaSDSpeechDonationEvent *)self deleteSpeechSampleDonation];
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
  if ([(DonationSchemaSDSpeechDonationEvent *)self whichEvent_Type]== 101)
  {
    v3 = self->_speechSampleDonation;
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
    return @"speechSampleDonation";
  }

  else
  {
    return 0;
  }
}

- (int)clockIsolationLevel
{
  if ([(DonationSchemaSDSpeechDonationEvent *)self whichEvent_Type]== 101)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

@end