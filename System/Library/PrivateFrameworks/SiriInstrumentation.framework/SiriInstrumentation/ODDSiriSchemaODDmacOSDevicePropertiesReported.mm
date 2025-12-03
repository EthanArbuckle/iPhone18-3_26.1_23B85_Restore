@interface ODDSiriSchemaODDmacOSDevicePropertiesReported
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (ODDSiriSchemaODDmacOSDevicePropertiesReported)initWithDictionary:(id)dictionary;
- (ODDSiriSchemaODDmacOSDevicePropertiesReported)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation ODDSiriSchemaODDmacOSDevicePropertiesReported

- (ODDSiriSchemaODDmacOSDevicePropertiesReported)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v16.receiver = self;
  v16.super_class = ODDSiriSchemaODDmacOSDevicePropertiesReported;
  v5 = [(ODDSiriSchemaODDmacOSDevicePropertiesReported *)&v16 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"general"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[ODDSiriSchemaODDGeneralProperties alloc] initWithDictionary:v6];
      [(ODDSiriSchemaODDmacOSDevicePropertiesReported *)v5 setGeneral:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"assistant"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[ODDSiriSchemaODDAssistantProperties alloc] initWithDictionary:v8];
      [(ODDSiriSchemaODDmacOSDevicePropertiesReported *)v5 setAssistant:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"dictation"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[ODDSiriSchemaODDDictationProperties alloc] initWithDictionary:v10];
      [(ODDSiriSchemaODDmacOSDevicePropertiesReported *)v5 setDictation:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"macOSAssistant"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[ODDSiriSchemaODDmacOSAssistantProperties alloc] initWithDictionary:v12];
      [(ODDSiriSchemaODDmacOSDevicePropertiesReported *)v5 setMacOSAssistant:v13];
    }

    v14 = v5;
  }

  return v5;
}

- (ODDSiriSchemaODDmacOSDevicePropertiesReported)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(ODDSiriSchemaODDmacOSDevicePropertiesReported *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(ODDSiriSchemaODDmacOSDevicePropertiesReported *)self dictionaryRepresentation];
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
    assistant = [(ODDSiriSchemaODDmacOSDevicePropertiesReported *)self assistant];
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
    dictation = [(ODDSiriSchemaODDmacOSDevicePropertiesReported *)self dictation];
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
    general = [(ODDSiriSchemaODDmacOSDevicePropertiesReported *)self general];
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

  if (self->_macOSAssistant)
  {
    macOSAssistant = [(ODDSiriSchemaODDmacOSDevicePropertiesReported *)self macOSAssistant];
    dictionaryRepresentation4 = [macOSAssistant dictionaryRepresentation];
    if (dictionaryRepresentation4)
    {
      [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"macOSAssistant"];
    }

    else
    {
      null4 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null4 forKeyedSubscript:@"macOSAssistant"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(ODDSiriSchemaODDGeneralProperties *)self->_general hash];
  v4 = [(ODDSiriSchemaODDAssistantProperties *)self->_assistant hash]^ v3;
  v5 = [(ODDSiriSchemaODDDictationProperties *)self->_dictation hash];
  return v4 ^ v5 ^ [(ODDSiriSchemaODDmacOSAssistantProperties *)self->_macOSAssistant hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_22;
  }

  general = [(ODDSiriSchemaODDmacOSDevicePropertiesReported *)self general];
  general2 = [equalCopy general];
  if ((general != 0) == (general2 == 0))
  {
    goto LABEL_21;
  }

  general3 = [(ODDSiriSchemaODDmacOSDevicePropertiesReported *)self general];
  if (general3)
  {
    v8 = general3;
    general4 = [(ODDSiriSchemaODDmacOSDevicePropertiesReported *)self general];
    general5 = [equalCopy general];
    v11 = [general4 isEqual:general5];

    if (!v11)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  general = [(ODDSiriSchemaODDmacOSDevicePropertiesReported *)self assistant];
  general2 = [equalCopy assistant];
  if ((general != 0) == (general2 == 0))
  {
    goto LABEL_21;
  }

  assistant = [(ODDSiriSchemaODDmacOSDevicePropertiesReported *)self assistant];
  if (assistant)
  {
    v13 = assistant;
    assistant2 = [(ODDSiriSchemaODDmacOSDevicePropertiesReported *)self assistant];
    assistant3 = [equalCopy assistant];
    v16 = [assistant2 isEqual:assistant3];

    if (!v16)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  general = [(ODDSiriSchemaODDmacOSDevicePropertiesReported *)self dictation];
  general2 = [equalCopy dictation];
  if ((general != 0) == (general2 == 0))
  {
    goto LABEL_21;
  }

  dictation = [(ODDSiriSchemaODDmacOSDevicePropertiesReported *)self dictation];
  if (dictation)
  {
    v18 = dictation;
    dictation2 = [(ODDSiriSchemaODDmacOSDevicePropertiesReported *)self dictation];
    dictation3 = [equalCopy dictation];
    v21 = [dictation2 isEqual:dictation3];

    if (!v21)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  general = [(ODDSiriSchemaODDmacOSDevicePropertiesReported *)self macOSAssistant];
  general2 = [equalCopy macOSAssistant];
  if ((general != 0) != (general2 == 0))
  {
    macOSAssistant = [(ODDSiriSchemaODDmacOSDevicePropertiesReported *)self macOSAssistant];
    if (!macOSAssistant)
    {

LABEL_25:
      v27 = 1;
      goto LABEL_23;
    }

    v23 = macOSAssistant;
    macOSAssistant2 = [(ODDSiriSchemaODDmacOSDevicePropertiesReported *)self macOSAssistant];
    macOSAssistant3 = [equalCopy macOSAssistant];
    v26 = [macOSAssistant2 isEqual:macOSAssistant3];

    if (v26)
    {
      goto LABEL_25;
    }
  }

  else
  {
LABEL_21:
  }

LABEL_22:
  v27 = 0;
LABEL_23:

  return v27;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  general = [(ODDSiriSchemaODDmacOSDevicePropertiesReported *)self general];

  if (general)
  {
    general2 = [(ODDSiriSchemaODDmacOSDevicePropertiesReported *)self general];
    PBDataWriterWriteSubmessage();
  }

  assistant = [(ODDSiriSchemaODDmacOSDevicePropertiesReported *)self assistant];

  if (assistant)
  {
    assistant2 = [(ODDSiriSchemaODDmacOSDevicePropertiesReported *)self assistant];
    PBDataWriterWriteSubmessage();
  }

  dictation = [(ODDSiriSchemaODDmacOSDevicePropertiesReported *)self dictation];

  if (dictation)
  {
    dictation2 = [(ODDSiriSchemaODDmacOSDevicePropertiesReported *)self dictation];
    PBDataWriterWriteSubmessage();
  }

  macOSAssistant = [(ODDSiriSchemaODDmacOSDevicePropertiesReported *)self macOSAssistant];

  v11 = toCopy;
  if (macOSAssistant)
  {
    macOSAssistant2 = [(ODDSiriSchemaODDmacOSDevicePropertiesReported *)self macOSAssistant];
    PBDataWriterWriteSubmessage();

    v11 = toCopy;
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v19.receiver = self;
  v19.super_class = ODDSiriSchemaODDmacOSDevicePropertiesReported;
  v5 = [(SISchemaInstrumentationMessage *)&v19 applySensitiveConditionsPolicy:policyCopy];
  general = [(ODDSiriSchemaODDmacOSDevicePropertiesReported *)self general];
  v7 = [general applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(ODDSiriSchemaODDmacOSDevicePropertiesReported *)self deleteGeneral];
  }

  assistant = [(ODDSiriSchemaODDmacOSDevicePropertiesReported *)self assistant];
  v10 = [assistant applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(ODDSiriSchemaODDmacOSDevicePropertiesReported *)self deleteAssistant];
  }

  dictation = [(ODDSiriSchemaODDmacOSDevicePropertiesReported *)self dictation];
  v13 = [dictation applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
  {
    [(ODDSiriSchemaODDmacOSDevicePropertiesReported *)self deleteDictation];
  }

  macOSAssistant = [(ODDSiriSchemaODDmacOSDevicePropertiesReported *)self macOSAssistant];
  v16 = [macOSAssistant applySensitiveConditionsPolicy:policyCopy];
  suppressMessage4 = [v16 suppressMessage];

  if (suppressMessage4)
  {
    [(ODDSiriSchemaODDmacOSDevicePropertiesReported *)self deleteMacOSAssistant];
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