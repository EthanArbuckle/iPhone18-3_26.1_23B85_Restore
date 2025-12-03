@interface ODDSiriSchemaODDvisionOSDevicePropertiesReported
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (ODDSiriSchemaODDvisionOSDevicePropertiesReported)initWithDictionary:(id)dictionary;
- (ODDSiriSchemaODDvisionOSDevicePropertiesReported)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation ODDSiriSchemaODDvisionOSDevicePropertiesReported

- (ODDSiriSchemaODDvisionOSDevicePropertiesReported)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v14.receiver = self;
  v14.super_class = ODDSiriSchemaODDvisionOSDevicePropertiesReported;
  v5 = [(ODDSiriSchemaODDvisionOSDevicePropertiesReported *)&v14 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"general"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[ODDSiriSchemaODDGeneralProperties alloc] initWithDictionary:v6];
      [(ODDSiriSchemaODDvisionOSDevicePropertiesReported *)v5 setGeneral:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"assistant"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[ODDSiriSchemaODDAssistantProperties alloc] initWithDictionary:v8];
      [(ODDSiriSchemaODDvisionOSDevicePropertiesReported *)v5 setAssistant:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"dictation"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[ODDSiriSchemaODDDictationProperties alloc] initWithDictionary:v10];
      [(ODDSiriSchemaODDvisionOSDevicePropertiesReported *)v5 setDictation:v11];
    }

    v12 = v5;
  }

  return v5;
}

- (ODDSiriSchemaODDvisionOSDevicePropertiesReported)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(ODDSiriSchemaODDvisionOSDevicePropertiesReported *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(ODDSiriSchemaODDvisionOSDevicePropertiesReported *)self dictionaryRepresentation];
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
  if (self->_assistant)
  {
    assistant = [(ODDSiriSchemaODDvisionOSDevicePropertiesReported *)self assistant];
    dictionaryRepresentation = [assistant dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"assistant"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"assistant"];
    }
  }

  if (self->_dictation)
  {
    dictation = [(ODDSiriSchemaODDvisionOSDevicePropertiesReported *)self dictation];
    dictionaryRepresentation2 = [dictation dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"dictation"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"dictation"];
    }
  }

  if (self->_general)
  {
    general = [(ODDSiriSchemaODDvisionOSDevicePropertiesReported *)self general];
    dictionaryRepresentation3 = [general dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"general"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"general"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(ODDSiriSchemaODDGeneralProperties *)self->_general hash];
  v4 = [(ODDSiriSchemaODDAssistantProperties *)self->_assistant hash]^ v3;
  return v4 ^ [(ODDSiriSchemaODDDictationProperties *)self->_dictation hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  general = [(ODDSiriSchemaODDvisionOSDevicePropertiesReported *)self general];
  general2 = [equalCopy general];
  if ((general != 0) == (general2 == 0))
  {
    goto LABEL_16;
  }

  general3 = [(ODDSiriSchemaODDvisionOSDevicePropertiesReported *)self general];
  if (general3)
  {
    v8 = general3;
    general4 = [(ODDSiriSchemaODDvisionOSDevicePropertiesReported *)self general];
    general5 = [equalCopy general];
    v11 = [general4 isEqual:general5];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  general = [(ODDSiriSchemaODDvisionOSDevicePropertiesReported *)self assistant];
  general2 = [equalCopy assistant];
  if ((general != 0) == (general2 == 0))
  {
    goto LABEL_16;
  }

  assistant = [(ODDSiriSchemaODDvisionOSDevicePropertiesReported *)self assistant];
  if (assistant)
  {
    v13 = assistant;
    assistant2 = [(ODDSiriSchemaODDvisionOSDevicePropertiesReported *)self assistant];
    assistant3 = [equalCopy assistant];
    v16 = [assistant2 isEqual:assistant3];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  general = [(ODDSiriSchemaODDvisionOSDevicePropertiesReported *)self dictation];
  general2 = [equalCopy dictation];
  if ((general != 0) != (general2 == 0))
  {
    dictation = [(ODDSiriSchemaODDvisionOSDevicePropertiesReported *)self dictation];
    if (!dictation)
    {

LABEL_20:
      v22 = 1;
      goto LABEL_18;
    }

    v18 = dictation;
    dictation2 = [(ODDSiriSchemaODDvisionOSDevicePropertiesReported *)self dictation];
    dictation3 = [equalCopy dictation];
    v21 = [dictation2 isEqual:dictation3];

    if (v21)
    {
      goto LABEL_20;
    }
  }

  else
  {
LABEL_16:
  }

LABEL_17:
  v22 = 0;
LABEL_18:

  return v22;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  general = [(ODDSiriSchemaODDvisionOSDevicePropertiesReported *)self general];

  if (general)
  {
    general2 = [(ODDSiriSchemaODDvisionOSDevicePropertiesReported *)self general];
    PBDataWriterWriteSubmessage();
  }

  assistant = [(ODDSiriSchemaODDvisionOSDevicePropertiesReported *)self assistant];

  if (assistant)
  {
    assistant2 = [(ODDSiriSchemaODDvisionOSDevicePropertiesReported *)self assistant];
    PBDataWriterWriteSubmessage();
  }

  dictation = [(ODDSiriSchemaODDvisionOSDevicePropertiesReported *)self dictation];

  v9 = toCopy;
  if (dictation)
  {
    dictation2 = [(ODDSiriSchemaODDvisionOSDevicePropertiesReported *)self dictation];
    PBDataWriterWriteSubmessage();

    v9 = toCopy;
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v16.receiver = self;
  v16.super_class = ODDSiriSchemaODDvisionOSDevicePropertiesReported;
  v5 = [(SISchemaInstrumentationMessage *)&v16 applySensitiveConditionsPolicy:policyCopy];
  general = [(ODDSiriSchemaODDvisionOSDevicePropertiesReported *)self general];
  v7 = [general applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(ODDSiriSchemaODDvisionOSDevicePropertiesReported *)self deleteGeneral];
  }

  assistant = [(ODDSiriSchemaODDvisionOSDevicePropertiesReported *)self assistant];
  v10 = [assistant applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(ODDSiriSchemaODDvisionOSDevicePropertiesReported *)self deleteAssistant];
  }

  dictation = [(ODDSiriSchemaODDvisionOSDevicePropertiesReported *)self dictation];
  v13 = [dictation applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
  {
    [(ODDSiriSchemaODDvisionOSDevicePropertiesReported *)self deleteDictation];
  }

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end