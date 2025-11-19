@interface ODDSiriSchemaODDiOSDevicePropertiesReported
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (ODDSiriSchemaODDiOSDevicePropertiesReported)initWithDictionary:(id)a3;
- (ODDSiriSchemaODDiOSDevicePropertiesReported)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation ODDSiriSchemaODDiOSDevicePropertiesReported

- (ODDSiriSchemaODDiOSDevicePropertiesReported)initWithDictionary:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = ODDSiriSchemaODDiOSDevicePropertiesReported;
  v5 = [(ODDSiriSchemaODDiOSDevicePropertiesReported *)&v18 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"general"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[ODDSiriSchemaODDGeneralProperties alloc] initWithDictionary:v6];
      [(ODDSiriSchemaODDiOSDevicePropertiesReported *)v5 setGeneral:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"assistant"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[ODDSiriSchemaODDAssistantProperties alloc] initWithDictionary:v8];
      [(ODDSiriSchemaODDiOSDevicePropertiesReported *)v5 setAssistant:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"dictation"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[ODDSiriSchemaODDDictationProperties alloc] initWithDictionary:v10];
      [(ODDSiriSchemaODDiOSDevicePropertiesReported *)v5 setDictation:v11];
    }

    v12 = [v4 objectForKeyedSubscript:@"iOSAssistant"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[ODDSiriSchemaODDiOSAssistantProperties alloc] initWithDictionary:v12];
      [(ODDSiriSchemaODDiOSDevicePropertiesReported *)v5 setIOSAssistant:v13];
    }

    v14 = [v4 objectForKeyedSubscript:@"iOSGeneral"];
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

- (ODDSiriSchemaODDiOSDevicePropertiesReported)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(ODDSiriSchemaODDiOSDevicePropertiesReported *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(ODDSiriSchemaODDiOSDevicePropertiesReported *)self dictionaryRepresentation];
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
    v4 = [(ODDSiriSchemaODDiOSDevicePropertiesReported *)self assistant];
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
    v7 = [(ODDSiriSchemaODDiOSDevicePropertiesReported *)self dictation];
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
    v10 = [(ODDSiriSchemaODDiOSDevicePropertiesReported *)self general];
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

  if (self->_iOSAssistant)
  {
    v13 = [(ODDSiriSchemaODDiOSDevicePropertiesReported *)self iOSAssistant];
    v14 = [v13 dictionaryRepresentation];
    if (v14)
    {
      [v3 setObject:v14 forKeyedSubscript:@"iOSAssistant"];
    }

    else
    {
      v15 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v15 forKeyedSubscript:@"iOSAssistant"];
    }
  }

  if (self->_iOSGeneral)
  {
    v16 = [(ODDSiriSchemaODDiOSDevicePropertiesReported *)self iOSGeneral];
    v17 = [v16 dictionaryRepresentation];
    if (v17)
    {
      [v3 setObject:v17 forKeyedSubscript:@"iOSGeneral"];
    }

    else
    {
      v18 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v18 forKeyedSubscript:@"iOSGeneral"];
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
  v6 = v4 ^ v5 ^ [(ODDSiriSchemaODDiOSAssistantProperties *)self->_iOSAssistant hash];
  return v6 ^ [(ODDSiriSchemaODDiOSGeneralProperties *)self->_iOSGeneral hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_27;
  }

  v5 = [(ODDSiriSchemaODDiOSDevicePropertiesReported *)self general];
  v6 = [v4 general];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_26;
  }

  v7 = [(ODDSiriSchemaODDiOSDevicePropertiesReported *)self general];
  if (v7)
  {
    v8 = v7;
    v9 = [(ODDSiriSchemaODDiOSDevicePropertiesReported *)self general];
    v10 = [v4 general];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  v5 = [(ODDSiriSchemaODDiOSDevicePropertiesReported *)self assistant];
  v6 = [v4 assistant];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_26;
  }

  v12 = [(ODDSiriSchemaODDiOSDevicePropertiesReported *)self assistant];
  if (v12)
  {
    v13 = v12;
    v14 = [(ODDSiriSchemaODDiOSDevicePropertiesReported *)self assistant];
    v15 = [v4 assistant];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  v5 = [(ODDSiriSchemaODDiOSDevicePropertiesReported *)self dictation];
  v6 = [v4 dictation];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_26;
  }

  v17 = [(ODDSiriSchemaODDiOSDevicePropertiesReported *)self dictation];
  if (v17)
  {
    v18 = v17;
    v19 = [(ODDSiriSchemaODDiOSDevicePropertiesReported *)self dictation];
    v20 = [v4 dictation];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  v5 = [(ODDSiriSchemaODDiOSDevicePropertiesReported *)self iOSAssistant];
  v6 = [v4 iOSAssistant];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_26;
  }

  v22 = [(ODDSiriSchemaODDiOSDevicePropertiesReported *)self iOSAssistant];
  if (v22)
  {
    v23 = v22;
    v24 = [(ODDSiriSchemaODDiOSDevicePropertiesReported *)self iOSAssistant];
    v25 = [v4 iOSAssistant];
    v26 = [v24 isEqual:v25];

    if (!v26)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  v5 = [(ODDSiriSchemaODDiOSDevicePropertiesReported *)self iOSGeneral];
  v6 = [v4 iOSGeneral];
  if ((v5 != 0) != (v6 == 0))
  {
    v27 = [(ODDSiriSchemaODDiOSDevicePropertiesReported *)self iOSGeneral];
    if (!v27)
    {

LABEL_30:
      v32 = 1;
      goto LABEL_28;
    }

    v28 = v27;
    v29 = [(ODDSiriSchemaODDiOSDevicePropertiesReported *)self iOSGeneral];
    v30 = [v4 iOSGeneral];
    v31 = [v29 isEqual:v30];

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

- (void)writeTo:(id)a3
{
  v15 = a3;
  v4 = [(ODDSiriSchemaODDiOSDevicePropertiesReported *)self general];

  if (v4)
  {
    v5 = [(ODDSiriSchemaODDiOSDevicePropertiesReported *)self general];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(ODDSiriSchemaODDiOSDevicePropertiesReported *)self assistant];

  if (v6)
  {
    v7 = [(ODDSiriSchemaODDiOSDevicePropertiesReported *)self assistant];
    PBDataWriterWriteSubmessage();
  }

  v8 = [(ODDSiriSchemaODDiOSDevicePropertiesReported *)self dictation];

  if (v8)
  {
    v9 = [(ODDSiriSchemaODDiOSDevicePropertiesReported *)self dictation];
    PBDataWriterWriteSubmessage();
  }

  v10 = [(ODDSiriSchemaODDiOSDevicePropertiesReported *)self iOSAssistant];

  if (v10)
  {
    v11 = [(ODDSiriSchemaODDiOSDevicePropertiesReported *)self iOSAssistant];
    PBDataWriterWriteSubmessage();
  }

  v12 = [(ODDSiriSchemaODDiOSDevicePropertiesReported *)self iOSGeneral];

  v13 = v15;
  if (v12)
  {
    v14 = [(ODDSiriSchemaODDiOSDevicePropertiesReported *)self iOSGeneral];
    PBDataWriterWriteSubmessage();

    v13 = v15;
  }
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v22.receiver = self;
  v22.super_class = ODDSiriSchemaODDiOSDevicePropertiesReported;
  v5 = [(SISchemaInstrumentationMessage *)&v22 applySensitiveConditionsPolicy:v4];
  v6 = [(ODDSiriSchemaODDiOSDevicePropertiesReported *)self general];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(ODDSiriSchemaODDiOSDevicePropertiesReported *)self deleteGeneral];
  }

  v9 = [(ODDSiriSchemaODDiOSDevicePropertiesReported *)self assistant];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(ODDSiriSchemaODDiOSDevicePropertiesReported *)self deleteAssistant];
  }

  v12 = [(ODDSiriSchemaODDiOSDevicePropertiesReported *)self dictation];
  v13 = [v12 applySensitiveConditionsPolicy:v4];
  v14 = [v13 suppressMessage];

  if (v14)
  {
    [(ODDSiriSchemaODDiOSDevicePropertiesReported *)self deleteDictation];
  }

  v15 = [(ODDSiriSchemaODDiOSDevicePropertiesReported *)self iOSAssistant];
  v16 = [v15 applySensitiveConditionsPolicy:v4];
  v17 = [v16 suppressMessage];

  if (v17)
  {
    [(ODDSiriSchemaODDiOSDevicePropertiesReported *)self deleteIOSAssistant];
  }

  v18 = [(ODDSiriSchemaODDiOSDevicePropertiesReported *)self iOSGeneral];
  v19 = [v18 applySensitiveConditionsPolicy:v4];
  v20 = [v19 suppressMessage];

  if (v20)
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