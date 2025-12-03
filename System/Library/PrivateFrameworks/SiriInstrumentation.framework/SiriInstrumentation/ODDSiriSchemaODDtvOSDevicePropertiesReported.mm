@interface ODDSiriSchemaODDtvOSDevicePropertiesReported
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (ODDSiriSchemaODDtvOSDevicePropertiesReported)initWithDictionary:(id)dictionary;
- (ODDSiriSchemaODDtvOSDevicePropertiesReported)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation ODDSiriSchemaODDtvOSDevicePropertiesReported

- (ODDSiriSchemaODDtvOSDevicePropertiesReported)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v16.receiver = self;
  v16.super_class = ODDSiriSchemaODDtvOSDevicePropertiesReported;
  v5 = [(ODDSiriSchemaODDtvOSDevicePropertiesReported *)&v16 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"general"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[ODDSiriSchemaODDGeneralProperties alloc] initWithDictionary:v6];
      [(ODDSiriSchemaODDtvOSDevicePropertiesReported *)v5 setGeneral:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"assistant"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[ODDSiriSchemaODDAssistantProperties alloc] initWithDictionary:v8];
      [(ODDSiriSchemaODDtvOSDevicePropertiesReported *)v5 setAssistant:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"dictation"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[ODDSiriSchemaODDDictationProperties alloc] initWithDictionary:v10];
      [(ODDSiriSchemaODDtvOSDevicePropertiesReported *)v5 setDictation:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"tvOSAssistant"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[ODDSiriSchemaODDtvOSAssistantProperties alloc] initWithDictionary:v12];
      [(ODDSiriSchemaODDtvOSDevicePropertiesReported *)v5 setTvOSAssistant:v13];
    }

    v14 = v5;
  }

  return v5;
}

- (ODDSiriSchemaODDtvOSDevicePropertiesReported)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(ODDSiriSchemaODDtvOSDevicePropertiesReported *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(ODDSiriSchemaODDtvOSDevicePropertiesReported *)self dictionaryRepresentation];
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
    assistant = [(ODDSiriSchemaODDtvOSDevicePropertiesReported *)self assistant];
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
    dictation = [(ODDSiriSchemaODDtvOSDevicePropertiesReported *)self dictation];
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
    general = [(ODDSiriSchemaODDtvOSDevicePropertiesReported *)self general];
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

  if (self->_tvOSAssistant)
  {
    tvOSAssistant = [(ODDSiriSchemaODDtvOSDevicePropertiesReported *)self tvOSAssistant];
    dictionaryRepresentation4 = [tvOSAssistant dictionaryRepresentation];
    if (dictionaryRepresentation4)
    {
      [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"tvOSAssistant"];
    }

    else
    {
      null4 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null4 forKeyedSubscript:@"tvOSAssistant"];
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
  return v4 ^ v5 ^ [(ODDSiriSchemaODDtvOSAssistantProperties *)self->_tvOSAssistant hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_22;
  }

  general = [(ODDSiriSchemaODDtvOSDevicePropertiesReported *)self general];
  general2 = [equalCopy general];
  if ((general != 0) == (general2 == 0))
  {
    goto LABEL_21;
  }

  general3 = [(ODDSiriSchemaODDtvOSDevicePropertiesReported *)self general];
  if (general3)
  {
    v8 = general3;
    general4 = [(ODDSiriSchemaODDtvOSDevicePropertiesReported *)self general];
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

  general = [(ODDSiriSchemaODDtvOSDevicePropertiesReported *)self assistant];
  general2 = [equalCopy assistant];
  if ((general != 0) == (general2 == 0))
  {
    goto LABEL_21;
  }

  assistant = [(ODDSiriSchemaODDtvOSDevicePropertiesReported *)self assistant];
  if (assistant)
  {
    v13 = assistant;
    assistant2 = [(ODDSiriSchemaODDtvOSDevicePropertiesReported *)self assistant];
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

  general = [(ODDSiriSchemaODDtvOSDevicePropertiesReported *)self dictation];
  general2 = [equalCopy dictation];
  if ((general != 0) == (general2 == 0))
  {
    goto LABEL_21;
  }

  dictation = [(ODDSiriSchemaODDtvOSDevicePropertiesReported *)self dictation];
  if (dictation)
  {
    v18 = dictation;
    dictation2 = [(ODDSiriSchemaODDtvOSDevicePropertiesReported *)self dictation];
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

  general = [(ODDSiriSchemaODDtvOSDevicePropertiesReported *)self tvOSAssistant];
  general2 = [equalCopy tvOSAssistant];
  if ((general != 0) != (general2 == 0))
  {
    tvOSAssistant = [(ODDSiriSchemaODDtvOSDevicePropertiesReported *)self tvOSAssistant];
    if (!tvOSAssistant)
    {

LABEL_25:
      v27 = 1;
      goto LABEL_23;
    }

    v23 = tvOSAssistant;
    tvOSAssistant2 = [(ODDSiriSchemaODDtvOSDevicePropertiesReported *)self tvOSAssistant];
    tvOSAssistant3 = [equalCopy tvOSAssistant];
    v26 = [tvOSAssistant2 isEqual:tvOSAssistant3];

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
  general = [(ODDSiriSchemaODDtvOSDevicePropertiesReported *)self general];

  if (general)
  {
    general2 = [(ODDSiriSchemaODDtvOSDevicePropertiesReported *)self general];
    PBDataWriterWriteSubmessage();
  }

  assistant = [(ODDSiriSchemaODDtvOSDevicePropertiesReported *)self assistant];

  if (assistant)
  {
    assistant2 = [(ODDSiriSchemaODDtvOSDevicePropertiesReported *)self assistant];
    PBDataWriterWriteSubmessage();
  }

  dictation = [(ODDSiriSchemaODDtvOSDevicePropertiesReported *)self dictation];

  if (dictation)
  {
    dictation2 = [(ODDSiriSchemaODDtvOSDevicePropertiesReported *)self dictation];
    PBDataWriterWriteSubmessage();
  }

  tvOSAssistant = [(ODDSiriSchemaODDtvOSDevicePropertiesReported *)self tvOSAssistant];

  v11 = toCopy;
  if (tvOSAssistant)
  {
    tvOSAssistant2 = [(ODDSiriSchemaODDtvOSDevicePropertiesReported *)self tvOSAssistant];
    PBDataWriterWriteSubmessage();

    v11 = toCopy;
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v19.receiver = self;
  v19.super_class = ODDSiriSchemaODDtvOSDevicePropertiesReported;
  v5 = [(SISchemaInstrumentationMessage *)&v19 applySensitiveConditionsPolicy:policyCopy];
  general = [(ODDSiriSchemaODDtvOSDevicePropertiesReported *)self general];
  v7 = [general applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(ODDSiriSchemaODDtvOSDevicePropertiesReported *)self deleteGeneral];
  }

  assistant = [(ODDSiriSchemaODDtvOSDevicePropertiesReported *)self assistant];
  v10 = [assistant applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(ODDSiriSchemaODDtvOSDevicePropertiesReported *)self deleteAssistant];
  }

  dictation = [(ODDSiriSchemaODDtvOSDevicePropertiesReported *)self dictation];
  v13 = [dictation applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
  {
    [(ODDSiriSchemaODDtvOSDevicePropertiesReported *)self deleteDictation];
  }

  tvOSAssistant = [(ODDSiriSchemaODDtvOSDevicePropertiesReported *)self tvOSAssistant];
  v16 = [tvOSAssistant applySensitiveConditionsPolicy:policyCopy];
  suppressMessage4 = [v16 suppressMessage];

  if (suppressMessage4)
  {
    [(ODDSiriSchemaODDtvOSDevicePropertiesReported *)self deleteTvOSAssistant];
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