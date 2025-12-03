@interface ODFUNNELSiriSchemaODFUNNELSiriClientEvent
+ (id)getInnerTypeStringByTag:(unint64_t)tag;
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (ODFUNNELSiriSchemaODFUNNELSiriClientEvent)initWithDictionary:(id)dictionary;
- (ODFUNNELSiriSchemaODFUNNELSiriClientEvent)initWithJSON:(id)n;
- (ODFUNNELSiriSchemaODFUNNELVoiceTriggerEnrollmentFunnel)voiceTriggerEnrollmentFunnelReported;
- (SISchemaInstrumentationMessage)innerEvent;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)qualifiedMessageName;
- (id)suppressMessageUnderConditions;
- (int)clockIsolationLevel;
- (void)deleteVoiceTriggerEnrollmentFunnelReported;
- (void)setVoiceTriggerEnrollmentFunnelReported:(id)reported;
- (void)writeTo:(id)to;
@end

@implementation ODFUNNELSiriSchemaODFUNNELSiriClientEvent

- (ODFUNNELSiriSchemaODFUNNELSiriClientEvent)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = ODFUNNELSiriSchemaODFUNNELSiriClientEvent;
  v5 = [(ODFUNNELSiriSchemaODFUNNELSiriClientEvent *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"eventMetadata"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[ODFUNNELSiriSchemaODFUNNELClientEventMetadata alloc] initWithDictionary:v6];
      [(ODFUNNELSiriSchemaODFUNNELSiriClientEvent *)v5 setEventMetadata:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"voiceTriggerEnrollmentFunnelReported"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[ODFUNNELSiriSchemaODFUNNELVoiceTriggerEnrollmentFunnel alloc] initWithDictionary:v8];
      [(ODFUNNELSiriSchemaODFUNNELSiriClientEvent *)v5 setVoiceTriggerEnrollmentFunnelReported:v9];
    }

    v10 = v5;
  }

  return v5;
}

- (ODFUNNELSiriSchemaODFUNNELSiriClientEvent)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(ODFUNNELSiriSchemaODFUNNELSiriClientEvent *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(ODFUNNELSiriSchemaODFUNNELSiriClientEvent *)self dictionaryRepresentation];
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
    eventMetadata = [(ODFUNNELSiriSchemaODFUNNELSiriClientEvent *)self eventMetadata];
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

  if (self->_voiceTriggerEnrollmentFunnelReported)
  {
    voiceTriggerEnrollmentFunnelReported = [(ODFUNNELSiriSchemaODFUNNELSiriClientEvent *)self voiceTriggerEnrollmentFunnelReported];
    dictionaryRepresentation2 = [voiceTriggerEnrollmentFunnelReported dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"voiceTriggerEnrollmentFunnelReported"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"voiceTriggerEnrollmentFunnelReported"];
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

  eventMetadata = [(ODFUNNELSiriSchemaODFUNNELSiriClientEvent *)self eventMetadata];
  eventMetadata2 = [equalCopy eventMetadata];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_12;
  }

  eventMetadata3 = [(ODFUNNELSiriSchemaODFUNNELSiriClientEvent *)self eventMetadata];
  if (eventMetadata3)
  {
    v9 = eventMetadata3;
    eventMetadata4 = [(ODFUNNELSiriSchemaODFUNNELSiriClientEvent *)self eventMetadata];
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

  eventMetadata = [(ODFUNNELSiriSchemaODFUNNELSiriClientEvent *)self voiceTriggerEnrollmentFunnelReported];
  eventMetadata2 = [equalCopy voiceTriggerEnrollmentFunnelReported];
  if ((eventMetadata != 0) != (eventMetadata2 == 0))
  {
    voiceTriggerEnrollmentFunnelReported = [(ODFUNNELSiriSchemaODFUNNELSiriClientEvent *)self voiceTriggerEnrollmentFunnelReported];
    if (!voiceTriggerEnrollmentFunnelReported)
    {

LABEL_16:
      v18 = 1;
      goto LABEL_14;
    }

    v14 = voiceTriggerEnrollmentFunnelReported;
    voiceTriggerEnrollmentFunnelReported2 = [(ODFUNNELSiriSchemaODFUNNELSiriClientEvent *)self voiceTriggerEnrollmentFunnelReported];
    voiceTriggerEnrollmentFunnelReported3 = [equalCopy voiceTriggerEnrollmentFunnelReported];
    v17 = [voiceTriggerEnrollmentFunnelReported2 isEqual:voiceTriggerEnrollmentFunnelReported3];

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
  eventMetadata = [(ODFUNNELSiriSchemaODFUNNELSiriClientEvent *)self eventMetadata];

  if (eventMetadata)
  {
    eventMetadata2 = [(ODFUNNELSiriSchemaODFUNNELSiriClientEvent *)self eventMetadata];
    PBDataWriterWriteSubmessage();
  }

  voiceTriggerEnrollmentFunnelReported = [(ODFUNNELSiriSchemaODFUNNELSiriClientEvent *)self voiceTriggerEnrollmentFunnelReported];

  if (voiceTriggerEnrollmentFunnelReported)
  {
    voiceTriggerEnrollmentFunnelReported2 = [(ODFUNNELSiriSchemaODFUNNELSiriClientEvent *)self voiceTriggerEnrollmentFunnelReported];
    PBDataWriterWriteSubmessage();
  }
}

- (void)deleteVoiceTriggerEnrollmentFunnelReported
{
  if (self->_whichEvent_Type == 10)
  {
    self->_whichEvent_Type = 0;
    self->_voiceTriggerEnrollmentFunnelReported = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (ODFUNNELSiriSchemaODFUNNELVoiceTriggerEnrollmentFunnel)voiceTriggerEnrollmentFunnelReported
{
  if (self->_whichEvent_Type == 10)
  {
    v3 = self->_voiceTriggerEnrollmentFunnelReported;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setVoiceTriggerEnrollmentFunnelReported:(id)reported
{
  v3 = 10;
  if (!reported)
  {
    v3 = 0;
  }

  self->_whichEvent_Type = v3;
  objc_storeStrong(&self->_voiceTriggerEnrollmentFunnelReported, reported);
}

- (id)qualifiedMessageName
{
  if ([(ODFUNNELSiriSchemaODFUNNELSiriClientEvent *)self whichEvent_Type]== 10)
  {
    return @"com.apple.aiml.siri.odfunnel.ODFUNNELSiriClientEvent.ODFUNNELVoiceTriggerEnrollmentFunnel";
  }

  else
  {
    return @"com.apple.aiml.siri.odfunnel.ODFUNNELSiriClientEvent";
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v13.receiver = self;
  v13.super_class = ODFUNNELSiriSchemaODFUNNELSiriClientEvent;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:policyCopy];
  eventMetadata = [(ODFUNNELSiriSchemaODFUNNELSiriClientEvent *)self eventMetadata];
  v7 = [eventMetadata applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(ODFUNNELSiriSchemaODFUNNELSiriClientEvent *)self deleteEventMetadata];
  }

  voiceTriggerEnrollmentFunnelReported = [(ODFUNNELSiriSchemaODFUNNELSiriClientEvent *)self voiceTriggerEnrollmentFunnelReported];
  v10 = [voiceTriggerEnrollmentFunnelReported applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(ODFUNNELSiriSchemaODFUNNELSiriClientEvent *)self deleteVoiceTriggerEnrollmentFunnelReported];
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
  if ([(ODFUNNELSiriSchemaODFUNNELSiriClientEvent *)self whichEvent_Type]== 10)
  {
    v3 = self->_voiceTriggerEnrollmentFunnelReported;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

+ (id)getInnerTypeStringByTag:(unint64_t)tag
{
  if (tag == 10)
  {
    return @"voiceTriggerEnrollmentFunnelReported";
  }

  else
  {
    return 0;
  }
}

- (int)clockIsolationLevel
{
  if ([(ODFUNNELSiriSchemaODFUNNELSiriClientEvent *)self whichEvent_Type]== 10)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

@end