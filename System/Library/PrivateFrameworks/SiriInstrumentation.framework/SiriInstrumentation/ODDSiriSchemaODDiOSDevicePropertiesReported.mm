@interface ODDSiriSchemaODDiOSDevicePropertiesReported
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (ODDSiriSchemaODDiOSDevicePropertiesReported)initWithDictionary:(id)dictionary;
- (ODDSiriSchemaODDiOSDevicePropertiesReported)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation ODDSiriSchemaODDiOSDevicePropertiesReported

- (ODDSiriSchemaODDiOSDevicePropertiesReported)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v18.receiver = self;
  v18.super_class = ODDSiriSchemaODDiOSDevicePropertiesReported;
  v5 = [(ODDSiriSchemaODDiOSDevicePropertiesReported *)&v18 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"general"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[ODDSiriSchemaODDGeneralProperties alloc] initWithDictionary:v6];
      [(ODDSiriSchemaODDiOSDevicePropertiesReported *)v5 setGeneral:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"assistant"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[ODDSiriSchemaODDAssistantProperties alloc] initWithDictionary:v8];
      [(ODDSiriSchemaODDiOSDevicePropertiesReported *)v5 setAssistant:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"dictation"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[ODDSiriSchemaODDDictationProperties alloc] initWithDictionary:v10];
      [(ODDSiriSchemaODDiOSDevicePropertiesReported *)v5 setDictation:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"iOSAssistant"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[ODDSiriSchemaODDiOSAssistantProperties alloc] initWithDictionary:v12];
      [(ODDSiriSchemaODDiOSDevicePropertiesReported *)v5 setIOSAssistant:v13];
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"iOSGeneral"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [[ODDSiriSchemaODDiOSGeneralProperties alloc] initWithDictionary:v14];
      [(ODDSiriSchemaODDiOSDevicePropertiesReported *)v5 setIOSGeneral:v15];
    }

    v16 = v5;
  }

  return v5;
}

- (ODDSiriSchemaODDiOSDevicePropertiesReported)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(ODDSiriSchemaODDiOSDevicePropertiesReported *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(ODDSiriSchemaODDiOSDevicePropertiesReported *)self dictionaryRepresentation];
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
    assistant = [(ODDSiriSchemaODDiOSDevicePropertiesReported *)self assistant];
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
    dictation = [(ODDSiriSchemaODDiOSDevicePropertiesReported *)self dictation];
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
    general = [(ODDSiriSchemaODDiOSDevicePropertiesReported *)self general];
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

  if (self->_iOSAssistant)
  {
    iOSAssistant = [(ODDSiriSchemaODDiOSDevicePropertiesReported *)self iOSAssistant];
    dictionaryRepresentation4 = [iOSAssistant dictionaryRepresentation];
    if (dictionaryRepresentation4)
    {
      [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"iOSAssistant"];
    }

    else
    {
      null4 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null4 forKeyedSubscript:@"iOSAssistant"];
    }
  }

  if (self->_iOSGeneral)
  {
    iOSGeneral = [(ODDSiriSchemaODDiOSDevicePropertiesReported *)self iOSGeneral];
    dictionaryRepresentation5 = [iOSGeneral dictionaryRepresentation];
    if (dictionaryRepresentation5)
    {
      [dictionary setObject:dictionaryRepresentation5 forKeyedSubscript:@"iOSGeneral"];
    }

    else
    {
      null5 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null5 forKeyedSubscript:@"iOSGeneral"];
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
  v6 = v4 ^ v5 ^ [(ODDSiriSchemaODDiOSAssistantProperties *)self->_iOSAssistant hash];
  return v6 ^ [(ODDSiriSchemaODDiOSGeneralProperties *)self->_iOSGeneral hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_27;
  }

  general = [(ODDSiriSchemaODDiOSDevicePropertiesReported *)self general];
  general2 = [equalCopy general];
  if ((general != 0) == (general2 == 0))
  {
    goto LABEL_26;
  }

  general3 = [(ODDSiriSchemaODDiOSDevicePropertiesReported *)self general];
  if (general3)
  {
    v8 = general3;
    general4 = [(ODDSiriSchemaODDiOSDevicePropertiesReported *)self general];
    general5 = [equalCopy general];
    v11 = [general4 isEqual:general5];

    if (!v11)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  general = [(ODDSiriSchemaODDiOSDevicePropertiesReported *)self assistant];
  general2 = [equalCopy assistant];
  if ((general != 0) == (general2 == 0))
  {
    goto LABEL_26;
  }

  assistant = [(ODDSiriSchemaODDiOSDevicePropertiesReported *)self assistant];
  if (assistant)
  {
    v13 = assistant;
    assistant2 = [(ODDSiriSchemaODDiOSDevicePropertiesReported *)self assistant];
    assistant3 = [equalCopy assistant];
    v16 = [assistant2 isEqual:assistant3];

    if (!v16)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  general = [(ODDSiriSchemaODDiOSDevicePropertiesReported *)self dictation];
  general2 = [equalCopy dictation];
  if ((general != 0) == (general2 == 0))
  {
    goto LABEL_26;
  }

  dictation = [(ODDSiriSchemaODDiOSDevicePropertiesReported *)self dictation];
  if (dictation)
  {
    v18 = dictation;
    dictation2 = [(ODDSiriSchemaODDiOSDevicePropertiesReported *)self dictation];
    dictation3 = [equalCopy dictation];
    v21 = [dictation2 isEqual:dictation3];

    if (!v21)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  general = [(ODDSiriSchemaODDiOSDevicePropertiesReported *)self iOSAssistant];
  general2 = [equalCopy iOSAssistant];
  if ((general != 0) == (general2 == 0))
  {
    goto LABEL_26;
  }

  iOSAssistant = [(ODDSiriSchemaODDiOSDevicePropertiesReported *)self iOSAssistant];
  if (iOSAssistant)
  {
    v23 = iOSAssistant;
    iOSAssistant2 = [(ODDSiriSchemaODDiOSDevicePropertiesReported *)self iOSAssistant];
    iOSAssistant3 = [equalCopy iOSAssistant];
    v26 = [iOSAssistant2 isEqual:iOSAssistant3];

    if (!v26)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  general = [(ODDSiriSchemaODDiOSDevicePropertiesReported *)self iOSGeneral];
  general2 = [equalCopy iOSGeneral];
  if ((general != 0) != (general2 == 0))
  {
    iOSGeneral = [(ODDSiriSchemaODDiOSDevicePropertiesReported *)self iOSGeneral];
    if (!iOSGeneral)
    {

LABEL_30:
      v32 = 1;
      goto LABEL_28;
    }

    v28 = iOSGeneral;
    iOSGeneral2 = [(ODDSiriSchemaODDiOSDevicePropertiesReported *)self iOSGeneral];
    iOSGeneral3 = [equalCopy iOSGeneral];
    v31 = [iOSGeneral2 isEqual:iOSGeneral3];

    if (v31)
    {
      goto LABEL_30;
    }
  }

  else
  {
LABEL_26:
  }

LABEL_27:
  v32 = 0;
LABEL_28:

  return v32;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  general = [(ODDSiriSchemaODDiOSDevicePropertiesReported *)self general];

  if (general)
  {
    general2 = [(ODDSiriSchemaODDiOSDevicePropertiesReported *)self general];
    PBDataWriterWriteSubmessage();
  }

  assistant = [(ODDSiriSchemaODDiOSDevicePropertiesReported *)self assistant];

  if (assistant)
  {
    assistant2 = [(ODDSiriSchemaODDiOSDevicePropertiesReported *)self assistant];
    PBDataWriterWriteSubmessage();
  }

  dictation = [(ODDSiriSchemaODDiOSDevicePropertiesReported *)self dictation];

  if (dictation)
  {
    dictation2 = [(ODDSiriSchemaODDiOSDevicePropertiesReported *)self dictation];
    PBDataWriterWriteSubmessage();
  }

  iOSAssistant = [(ODDSiriSchemaODDiOSDevicePropertiesReported *)self iOSAssistant];

  if (iOSAssistant)
  {
    iOSAssistant2 = [(ODDSiriSchemaODDiOSDevicePropertiesReported *)self iOSAssistant];
    PBDataWriterWriteSubmessage();
  }

  iOSGeneral = [(ODDSiriSchemaODDiOSDevicePropertiesReported *)self iOSGeneral];

  v13 = toCopy;
  if (iOSGeneral)
  {
    iOSGeneral2 = [(ODDSiriSchemaODDiOSDevicePropertiesReported *)self iOSGeneral];
    PBDataWriterWriteSubmessage();

    v13 = toCopy;
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v22.receiver = self;
  v22.super_class = ODDSiriSchemaODDiOSDevicePropertiesReported;
  v5 = [(SISchemaInstrumentationMessage *)&v22 applySensitiveConditionsPolicy:policyCopy];
  general = [(ODDSiriSchemaODDiOSDevicePropertiesReported *)self general];
  v7 = [general applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(ODDSiriSchemaODDiOSDevicePropertiesReported *)self deleteGeneral];
  }

  assistant = [(ODDSiriSchemaODDiOSDevicePropertiesReported *)self assistant];
  v10 = [assistant applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(ODDSiriSchemaODDiOSDevicePropertiesReported *)self deleteAssistant];
  }

  dictation = [(ODDSiriSchemaODDiOSDevicePropertiesReported *)self dictation];
  v13 = [dictation applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
  {
    [(ODDSiriSchemaODDiOSDevicePropertiesReported *)self deleteDictation];
  }

  iOSAssistant = [(ODDSiriSchemaODDiOSDevicePropertiesReported *)self iOSAssistant];
  v16 = [iOSAssistant applySensitiveConditionsPolicy:policyCopy];
  suppressMessage4 = [v16 suppressMessage];

  if (suppressMessage4)
  {
    [(ODDSiriSchemaODDiOSDevicePropertiesReported *)self deleteIOSAssistant];
  }

  iOSGeneral = [(ODDSiriSchemaODDiOSDevicePropertiesReported *)self iOSGeneral];
  v19 = [iOSGeneral applySensitiveConditionsPolicy:policyCopy];
  suppressMessage5 = [v19 suppressMessage];

  if (suppressMessage5)
  {
    [(ODDSiriSchemaODDiOSDevicePropertiesReported *)self deleteIOSGeneral];
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