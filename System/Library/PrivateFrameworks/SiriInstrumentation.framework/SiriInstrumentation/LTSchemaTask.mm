@interface LTSchemaTask
- (BOOL)isEqual:(id)a3;
- (LTSchemaTask)initWithDictionary:(id)a3;
- (LTSchemaTask)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation LTSchemaTask

- (LTSchemaTask)initWithDictionary:(id)a3
{
  v4 = a3;
  v22.receiver = self;
  v22.super_class = LTSchemaTask;
  v5 = [(LTSchemaTask *)&v22 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"translationTask"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(LTSchemaTask *)v5 setTranslationTask:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"sourceLanguage"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(LTSchemaTask *)v5 setSourceLanguage:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"targetLanguage"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [v10 copy];
      [(LTSchemaTask *)v5 setTargetLanguage:v11];
    }

    v12 = [v4 objectForKeyedSubscript:@"deviceOS"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [v12 copy];
      [(LTSchemaTask *)v5 setDeviceOS:v13];
    }

    v14 = [v4 objectForKeyedSubscript:@"deviceType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [v14 copy];
      [(LTSchemaTask *)v5 setDeviceType:v15];
    }

    v16 = [v4 objectForKeyedSubscript:@"osVersion"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [v16 copy];
      [(LTSchemaTask *)v5 setOsVersion:v17];
    }

    v18 = [v4 objectForKeyedSubscript:@"bundleIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = [v18 copy];
      [(LTSchemaTask *)v5 setBundleIdentifier:v19];
    }

    v20 = v5;
  }

  return v5;
}

- (LTSchemaTask)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(LTSchemaTask *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(LTSchemaTask *)self dictionaryRepresentation];
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
  if (self->_bundleIdentifier)
  {
    v4 = [(LTSchemaTask *)self bundleIdentifier];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"bundleIdentifier"];
  }

  if (self->_deviceOS)
  {
    v6 = [(LTSchemaTask *)self deviceOS];
    v7 = [v6 copy];
    [v3 setObject:v7 forKeyedSubscript:@"deviceOS"];
  }

  if (self->_deviceType)
  {
    v8 = [(LTSchemaTask *)self deviceType];
    v9 = [v8 copy];
    [v3 setObject:v9 forKeyedSubscript:@"deviceType"];
  }

  if (self->_osVersion)
  {
    v10 = [(LTSchemaTask *)self osVersion];
    v11 = [v10 copy];
    [v3 setObject:v11 forKeyedSubscript:@"osVersion"];
  }

  if (self->_sourceLanguage)
  {
    v12 = [(LTSchemaTask *)self sourceLanguage];
    v13 = [v12 copy];
    [v3 setObject:v13 forKeyedSubscript:@"sourceLanguage"];
  }

  if (self->_targetLanguage)
  {
    v14 = [(LTSchemaTask *)self targetLanguage];
    v15 = [v14 copy];
    [v3 setObject:v15 forKeyedSubscript:@"targetLanguage"];
  }

  if (self->_translationTask)
  {
    v16 = [(LTSchemaTask *)self translationTask];
    v17 = [v16 copy];
    [v3 setObject:v17 forKeyedSubscript:@"translationTask"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_translationTask hash];
  v4 = [(NSString *)self->_sourceLanguage hash]^ v3;
  v5 = [(NSString *)self->_targetLanguage hash];
  v6 = v4 ^ v5 ^ [(NSString *)self->_deviceOS hash];
  v7 = [(NSString *)self->_deviceType hash];
  v8 = v7 ^ [(NSString *)self->_osVersion hash];
  return v6 ^ v8 ^ [(NSString *)self->_bundleIdentifier hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_37;
  }

  v5 = [(LTSchemaTask *)self translationTask];
  v6 = [v4 translationTask];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_36;
  }

  v7 = [(LTSchemaTask *)self translationTask];
  if (v7)
  {
    v8 = v7;
    v9 = [(LTSchemaTask *)self translationTask];
    v10 = [v4 translationTask];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_37;
    }
  }

  else
  {
  }

  v5 = [(LTSchemaTask *)self sourceLanguage];
  v6 = [v4 sourceLanguage];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_36;
  }

  v12 = [(LTSchemaTask *)self sourceLanguage];
  if (v12)
  {
    v13 = v12;
    v14 = [(LTSchemaTask *)self sourceLanguage];
    v15 = [v4 sourceLanguage];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_37;
    }
  }

  else
  {
  }

  v5 = [(LTSchemaTask *)self targetLanguage];
  v6 = [v4 targetLanguage];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_36;
  }

  v17 = [(LTSchemaTask *)self targetLanguage];
  if (v17)
  {
    v18 = v17;
    v19 = [(LTSchemaTask *)self targetLanguage];
    v20 = [v4 targetLanguage];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_37;
    }
  }

  else
  {
  }

  v5 = [(LTSchemaTask *)self deviceOS];
  v6 = [v4 deviceOS];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_36;
  }

  v22 = [(LTSchemaTask *)self deviceOS];
  if (v22)
  {
    v23 = v22;
    v24 = [(LTSchemaTask *)self deviceOS];
    v25 = [v4 deviceOS];
    v26 = [v24 isEqual:v25];

    if (!v26)
    {
      goto LABEL_37;
    }
  }

  else
  {
  }

  v5 = [(LTSchemaTask *)self deviceType];
  v6 = [v4 deviceType];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_36;
  }

  v27 = [(LTSchemaTask *)self deviceType];
  if (v27)
  {
    v28 = v27;
    v29 = [(LTSchemaTask *)self deviceType];
    v30 = [v4 deviceType];
    v31 = [v29 isEqual:v30];

    if (!v31)
    {
      goto LABEL_37;
    }
  }

  else
  {
  }

  v5 = [(LTSchemaTask *)self osVersion];
  v6 = [v4 osVersion];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_36;
  }

  v32 = [(LTSchemaTask *)self osVersion];
  if (v32)
  {
    v33 = v32;
    v34 = [(LTSchemaTask *)self osVersion];
    v35 = [v4 osVersion];
    v36 = [v34 isEqual:v35];

    if (!v36)
    {
      goto LABEL_37;
    }
  }

  else
  {
  }

  v5 = [(LTSchemaTask *)self bundleIdentifier];
  v6 = [v4 bundleIdentifier];
  if ((v5 != 0) != (v6 == 0))
  {
    v37 = [(LTSchemaTask *)self bundleIdentifier];
    if (!v37)
    {

LABEL_40:
      v42 = 1;
      goto LABEL_38;
    }

    v38 = v37;
    v39 = [(LTSchemaTask *)self bundleIdentifier];
    v40 = [v4 bundleIdentifier];
    v41 = [v39 isEqual:v40];

    if (v41)
    {
      goto LABEL_40;
    }
  }

  else
  {
LABEL_36:
  }

LABEL_37:
  v42 = 0;
LABEL_38:

  return v42;
}

- (void)writeTo:(id)a3
{
  v12 = a3;
  v4 = [(LTSchemaTask *)self translationTask];

  if (v4)
  {
    PBDataWriterWriteStringField();
  }

  v5 = [(LTSchemaTask *)self sourceLanguage];

  if (v5)
  {
    PBDataWriterWriteStringField();
  }

  v6 = [(LTSchemaTask *)self targetLanguage];

  if (v6)
  {
    PBDataWriterWriteStringField();
  }

  v7 = [(LTSchemaTask *)self deviceOS];

  if (v7)
  {
    PBDataWriterWriteStringField();
  }

  v8 = [(LTSchemaTask *)self deviceType];

  if (v8)
  {
    PBDataWriterWriteStringField();
  }

  v9 = [(LTSchemaTask *)self osVersion];

  if (v9)
  {
    PBDataWriterWriteStringField();
  }

  v10 = [(LTSchemaTask *)self bundleIdentifier];

  v11 = v12;
  if (v10)
  {
    PBDataWriterWriteStringField();
    v11 = v12;
  }
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end