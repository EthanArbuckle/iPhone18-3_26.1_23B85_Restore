@interface ODDSiriSchemaODDwatchOSDevicePropertiesReported
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (ODDSiriSchemaODDwatchOSDevicePropertiesReported)initWithDictionary:(id)a3;
- (ODDSiriSchemaODDwatchOSDevicePropertiesReported)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation ODDSiriSchemaODDwatchOSDevicePropertiesReported

- (ODDSiriSchemaODDwatchOSDevicePropertiesReported)initWithDictionary:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = ODDSiriSchemaODDwatchOSDevicePropertiesReported;
  v5 = [(ODDSiriSchemaODDwatchOSDevicePropertiesReported *)&v16 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"general"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[ODDSiriSchemaODDGeneralProperties alloc] initWithDictionary:v6];
      [(ODDSiriSchemaODDwatchOSDevicePropertiesReported *)v5 setGeneral:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"assistant"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[ODDSiriSchemaODDAssistantProperties alloc] initWithDictionary:v8];
      [(ODDSiriSchemaODDwatchOSDevicePropertiesReported *)v5 setAssistant:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"dictation"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[ODDSiriSchemaODDDictationProperties alloc] initWithDictionary:v10];
      [(ODDSiriSchemaODDwatchOSDevicePropertiesReported *)v5 setDictation:v11];
    }

    v12 = [v4 objectForKeyedSubscript:@"watchOSAssistant"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[ODDSiriSchemaODDwatchOSAssistantProperties alloc] initWithDictionary:v12];
      [(ODDSiriSchemaODDwatchOSDevicePropertiesReported *)v5 setWatchOSAssistant:v13];
    }

    v14 = v5;
  }

  return v5;
}

- (ODDSiriSchemaODDwatchOSDevicePropertiesReported)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(ODDSiriSchemaODDwatchOSDevicePropertiesReported *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(ODDSiriSchemaODDwatchOSDevicePropertiesReported *)self dictionaryRepresentation];
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
    v4 = [(ODDSiriSchemaODDwatchOSDevicePropertiesReported *)self assistant];
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
    v7 = [(ODDSiriSchemaODDwatchOSDevicePropertiesReported *)self dictation];
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
    v10 = [(ODDSiriSchemaODDwatchOSDevicePropertiesReported *)self general];
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

  if (self->_watchOSAssistant)
  {
    v13 = [(ODDSiriSchemaODDwatchOSDevicePropertiesReported *)self watchOSAssistant];
    v14 = [v13 dictionaryRepresentation];
    if (v14)
    {
      [v3 setObject:v14 forKeyedSubscript:@"watchOSAssistant"];
    }

    else
    {
      v15 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v15 forKeyedSubscript:@"watchOSAssistant"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(ODDSiriSchemaODDGeneralProperties *)self->_general hash];
  v4 = [(ODDSiriSchemaODDAssistantProperties *)self->_assistant hash]^ v3;
  v5 = [(ODDSiriSchemaODDDictationProperties *)self->_dictation hash];
  return v4 ^ v5 ^ [(ODDSiriSchemaODDwatchOSAssistantProperties *)self->_watchOSAssistant hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_22;
  }

  v5 = [(ODDSiriSchemaODDwatchOSDevicePropertiesReported *)self general];
  v6 = [v4 general];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_21;
  }

  v7 = [(ODDSiriSchemaODDwatchOSDevicePropertiesReported *)self general];
  if (v7)
  {
    v8 = v7;
    v9 = [(ODDSiriSchemaODDwatchOSDevicePropertiesReported *)self general];
    v10 = [v4 general];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  v5 = [(ODDSiriSchemaODDwatchOSDevicePropertiesReported *)self assistant];
  v6 = [v4 assistant];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_21;
  }

  v12 = [(ODDSiriSchemaODDwatchOSDevicePropertiesReported *)self assistant];
  if (v12)
  {
    v13 = v12;
    v14 = [(ODDSiriSchemaODDwatchOSDevicePropertiesReported *)self assistant];
    v15 = [v4 assistant];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  v5 = [(ODDSiriSchemaODDwatchOSDevicePropertiesReported *)self dictation];
  v6 = [v4 dictation];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_21;
  }

  v17 = [(ODDSiriSchemaODDwatchOSDevicePropertiesReported *)self dictation];
  if (v17)
  {
    v18 = v17;
    v19 = [(ODDSiriSchemaODDwatchOSDevicePropertiesReported *)self dictation];
    v20 = [v4 dictation];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  v5 = [(ODDSiriSchemaODDwatchOSDevicePropertiesReported *)self watchOSAssistant];
  v6 = [v4 watchOSAssistant];
  if ((v5 != 0) != (v6 == 0))
  {
    v22 = [(ODDSiriSchemaODDwatchOSDevicePropertiesReported *)self watchOSAssistant];
    if (!v22)
    {

LABEL_25:
      v27 = 1;
      goto LABEL_23;
    }

    v23 = v22;
    v24 = [(ODDSiriSchemaODDwatchOSDevicePropertiesReported *)self watchOSAssistant];
    v25 = [v4 watchOSAssistant];
    v26 = [v24 isEqual:v25];

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

- (void)writeTo:(id)a3
{
  v13 = a3;
  v4 = [(ODDSiriSchemaODDwatchOSDevicePropertiesReported *)self general];

  if (v4)
  {
    v5 = [(ODDSiriSchemaODDwatchOSDevicePropertiesReported *)self general];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(ODDSiriSchemaODDwatchOSDevicePropertiesReported *)self assistant];

  if (v6)
  {
    v7 = [(ODDSiriSchemaODDwatchOSDevicePropertiesReported *)self assistant];
    PBDataWriterWriteSubmessage();
  }

  v8 = [(ODDSiriSchemaODDwatchOSDevicePropertiesReported *)self dictation];

  if (v8)
  {
    v9 = [(ODDSiriSchemaODDwatchOSDevicePropertiesReported *)self dictation];
    PBDataWriterWriteSubmessage();
  }

  v10 = [(ODDSiriSchemaODDwatchOSDevicePropertiesReported *)self watchOSAssistant];

  v11 = v13;
  if (v10)
  {
    v12 = [(ODDSiriSchemaODDwatchOSDevicePropertiesReported *)self watchOSAssistant];
    PBDataWriterWriteSubmessage();

    v11 = v13;
  }
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = ODDSiriSchemaODDwatchOSDevicePropertiesReported;
  v5 = [(SISchemaInstrumentationMessage *)&v19 applySensitiveConditionsPolicy:v4];
  v6 = [(ODDSiriSchemaODDwatchOSDevicePropertiesReported *)self general];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(ODDSiriSchemaODDwatchOSDevicePropertiesReported *)self deleteGeneral];
  }

  v9 = [(ODDSiriSchemaODDwatchOSDevicePropertiesReported *)self assistant];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(ODDSiriSchemaODDwatchOSDevicePropertiesReported *)self deleteAssistant];
  }

  v12 = [(ODDSiriSchemaODDwatchOSDevicePropertiesReported *)self dictation];
  v13 = [v12 applySensitiveConditionsPolicy:v4];
  v14 = [v13 suppressMessage];

  if (v14)
  {
    [(ODDSiriSchemaODDwatchOSDevicePropertiesReported *)self deleteDictation];
  }

  v15 = [(ODDSiriSchemaODDwatchOSDevicePropertiesReported *)self watchOSAssistant];
  v16 = [v15 applySensitiveConditionsPolicy:v4];
  v17 = [v16 suppressMessage];

  if (v17)
  {
    [(ODDSiriSchemaODDwatchOSDevicePropertiesReported *)self deleteWatchOSAssistant];
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