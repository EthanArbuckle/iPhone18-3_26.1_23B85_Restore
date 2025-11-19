@interface ODDSiriSchemaODDvisionOSDevicePropertiesReported
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (ODDSiriSchemaODDvisionOSDevicePropertiesReported)initWithDictionary:(id)a3;
- (ODDSiriSchemaODDvisionOSDevicePropertiesReported)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation ODDSiriSchemaODDvisionOSDevicePropertiesReported

- (ODDSiriSchemaODDvisionOSDevicePropertiesReported)initWithDictionary:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = ODDSiriSchemaODDvisionOSDevicePropertiesReported;
  v5 = [(ODDSiriSchemaODDvisionOSDevicePropertiesReported *)&v14 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"general"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[ODDSiriSchemaODDGeneralProperties alloc] initWithDictionary:v6];
      [(ODDSiriSchemaODDvisionOSDevicePropertiesReported *)v5 setGeneral:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"assistant"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[ODDSiriSchemaODDAssistantProperties alloc] initWithDictionary:v8];
      [(ODDSiriSchemaODDvisionOSDevicePropertiesReported *)v5 setAssistant:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"dictation"];
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

- (ODDSiriSchemaODDvisionOSDevicePropertiesReported)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(ODDSiriSchemaODDvisionOSDevicePropertiesReported *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(ODDSiriSchemaODDvisionOSDevicePropertiesReported *)self dictionaryRepresentation];
  if ([MEMORY[0x1E696ACB0] isValidJSONObject:v2])
  {
    v3 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v2 options:0 error:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_assistant)
  {
    v4 = [(ODDSiriSchemaODDvisionOSDevicePropertiesReported *)self assistant];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"assistant"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"assistant"];
    }
  }

  if (self->_dictation)
  {
    v7 = [(ODDSiriSchemaODDvisionOSDevicePropertiesReported *)self dictation];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"dictation"];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v9 forKeyedSubscript:@"dictation"];
    }
  }

  if (self->_general)
  {
    v10 = [(ODDSiriSchemaODDvisionOSDevicePropertiesReported *)self general];
    v11 = [v10 dictionaryRepresentation];
    if (v11)
    {
      [v3 setObject:v11 forKeyedSubscript:@"general"];
    }

    else
    {
      v12 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v12 forKeyedSubscript:@"general"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(ODDSiriSchemaODDGeneralProperties *)self->_general hash];
  v4 = [(ODDSiriSchemaODDAssistantProperties *)self->_assistant hash]^ v3;
  return v4 ^ [(ODDSiriSchemaODDDictationProperties *)self->_dictation hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  v5 = [(ODDSiriSchemaODDvisionOSDevicePropertiesReported *)self general];
  v6 = [v4 general];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_16;
  }

  v7 = [(ODDSiriSchemaODDvisionOSDevicePropertiesReported *)self general];
  if (v7)
  {
    v8 = v7;
    v9 = [(ODDSiriSchemaODDvisionOSDevicePropertiesReported *)self general];
    v10 = [v4 general];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v5 = [(ODDSiriSchemaODDvisionOSDevicePropertiesReported *)self assistant];
  v6 = [v4 assistant];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_16;
  }

  v12 = [(ODDSiriSchemaODDvisionOSDevicePropertiesReported *)self assistant];
  if (v12)
  {
    v13 = v12;
    v14 = [(ODDSiriSchemaODDvisionOSDevicePropertiesReported *)self assistant];
    v15 = [v4 assistant];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v5 = [(ODDSiriSchemaODDvisionOSDevicePropertiesReported *)self dictation];
  v6 = [v4 dictation];
  if ((v5 != 0) != (v6 == 0))
  {
    v17 = [(ODDSiriSchemaODDvisionOSDevicePropertiesReported *)self dictation];
    if (!v17)
    {

LABEL_20:
      v22 = 1;
      goto LABEL_18;
    }

    v18 = v17;
    v19 = [(ODDSiriSchemaODDvisionOSDevicePropertiesReported *)self dictation];
    v20 = [v4 dictation];
    v21 = [v19 isEqual:v20];

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

- (void)writeTo:(id)a3
{
  v11 = a3;
  v4 = [(ODDSiriSchemaODDvisionOSDevicePropertiesReported *)self general];

  if (v4)
  {
    v5 = [(ODDSiriSchemaODDvisionOSDevicePropertiesReported *)self general];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(ODDSiriSchemaODDvisionOSDevicePropertiesReported *)self assistant];

  if (v6)
  {
    v7 = [(ODDSiriSchemaODDvisionOSDevicePropertiesReported *)self assistant];
    PBDataWriterWriteSubmessage();
  }

  v8 = [(ODDSiriSchemaODDvisionOSDevicePropertiesReported *)self dictation];

  v9 = v11;
  if (v8)
  {
    v10 = [(ODDSiriSchemaODDvisionOSDevicePropertiesReported *)self dictation];
    PBDataWriterWriteSubmessage();

    v9 = v11;
  }
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = ODDSiriSchemaODDvisionOSDevicePropertiesReported;
  v5 = [(SISchemaInstrumentationMessage *)&v16 applySensitiveConditionsPolicy:v4];
  v6 = [(ODDSiriSchemaODDvisionOSDevicePropertiesReported *)self general];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(ODDSiriSchemaODDvisionOSDevicePropertiesReported *)self deleteGeneral];
  }

  v9 = [(ODDSiriSchemaODDvisionOSDevicePropertiesReported *)self assistant];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(ODDSiriSchemaODDvisionOSDevicePropertiesReported *)self deleteAssistant];
  }

  v12 = [(ODDSiriSchemaODDvisionOSDevicePropertiesReported *)self dictation];
  v13 = [v12 applySensitiveConditionsPolicy:v4];
  v14 = [v13 suppressMessage];

  if (v14)
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