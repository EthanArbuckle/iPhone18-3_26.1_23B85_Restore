@interface LTSchemaTask
- (BOOL)isEqual:(id)equal;
- (LTSchemaTask)initWithDictionary:(id)dictionary;
- (LTSchemaTask)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation LTSchemaTask

- (LTSchemaTask)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v22.receiver = self;
  v22.super_class = LTSchemaTask;
  v5 = [(LTSchemaTask *)&v22 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"translationTask"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(LTSchemaTask *)v5 setTranslationTask:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"sourceLanguage"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(LTSchemaTask *)v5 setSourceLanguage:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"targetLanguage"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [v10 copy];
      [(LTSchemaTask *)v5 setTargetLanguage:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"deviceOS"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [v12 copy];
      [(LTSchemaTask *)v5 setDeviceOS:v13];
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"deviceType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [v14 copy];
      [(LTSchemaTask *)v5 setDeviceType:v15];
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:@"osVersion"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [v16 copy];
      [(LTSchemaTask *)v5 setOsVersion:v17];
    }

    v18 = [dictionaryCopy objectForKeyedSubscript:@"bundleIdentifier"];
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

- (LTSchemaTask)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(LTSchemaTask *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(LTSchemaTask *)self dictionaryRepresentation];
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
  if (self->_bundleIdentifier)
  {
    bundleIdentifier = [(LTSchemaTask *)self bundleIdentifier];
    v5 = [bundleIdentifier copy];
    [dictionary setObject:v5 forKeyedSubscript:@"bundleIdentifier"];
  }

  if (self->_deviceOS)
  {
    deviceOS = [(LTSchemaTask *)self deviceOS];
    v7 = [deviceOS copy];
    [dictionary setObject:v7 forKeyedSubscript:@"deviceOS"];
  }

  if (self->_deviceType)
  {
    deviceType = [(LTSchemaTask *)self deviceType];
    v9 = [deviceType copy];
    [dictionary setObject:v9 forKeyedSubscript:@"deviceType"];
  }

  if (self->_osVersion)
  {
    osVersion = [(LTSchemaTask *)self osVersion];
    v11 = [osVersion copy];
    [dictionary setObject:v11 forKeyedSubscript:@"osVersion"];
  }

  if (self->_sourceLanguage)
  {
    sourceLanguage = [(LTSchemaTask *)self sourceLanguage];
    v13 = [sourceLanguage copy];
    [dictionary setObject:v13 forKeyedSubscript:@"sourceLanguage"];
  }

  if (self->_targetLanguage)
  {
    targetLanguage = [(LTSchemaTask *)self targetLanguage];
    v15 = [targetLanguage copy];
    [dictionary setObject:v15 forKeyedSubscript:@"targetLanguage"];
  }

  if (self->_translationTask)
  {
    translationTask = [(LTSchemaTask *)self translationTask];
    v17 = [translationTask copy];
    [dictionary setObject:v17 forKeyedSubscript:@"translationTask"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_37;
  }

  translationTask = [(LTSchemaTask *)self translationTask];
  translationTask2 = [equalCopy translationTask];
  if ((translationTask != 0) == (translationTask2 == 0))
  {
    goto LABEL_36;
  }

  translationTask3 = [(LTSchemaTask *)self translationTask];
  if (translationTask3)
  {
    v8 = translationTask3;
    translationTask4 = [(LTSchemaTask *)self translationTask];
    translationTask5 = [equalCopy translationTask];
    v11 = [translationTask4 isEqual:translationTask5];

    if (!v11)
    {
      goto LABEL_37;
    }
  }

  else
  {
  }

  translationTask = [(LTSchemaTask *)self sourceLanguage];
  translationTask2 = [equalCopy sourceLanguage];
  if ((translationTask != 0) == (translationTask2 == 0))
  {
    goto LABEL_36;
  }

  sourceLanguage = [(LTSchemaTask *)self sourceLanguage];
  if (sourceLanguage)
  {
    v13 = sourceLanguage;
    sourceLanguage2 = [(LTSchemaTask *)self sourceLanguage];
    sourceLanguage3 = [equalCopy sourceLanguage];
    v16 = [sourceLanguage2 isEqual:sourceLanguage3];

    if (!v16)
    {
      goto LABEL_37;
    }
  }

  else
  {
  }

  translationTask = [(LTSchemaTask *)self targetLanguage];
  translationTask2 = [equalCopy targetLanguage];
  if ((translationTask != 0) == (translationTask2 == 0))
  {
    goto LABEL_36;
  }

  targetLanguage = [(LTSchemaTask *)self targetLanguage];
  if (targetLanguage)
  {
    v18 = targetLanguage;
    targetLanguage2 = [(LTSchemaTask *)self targetLanguage];
    targetLanguage3 = [equalCopy targetLanguage];
    v21 = [targetLanguage2 isEqual:targetLanguage3];

    if (!v21)
    {
      goto LABEL_37;
    }
  }

  else
  {
  }

  translationTask = [(LTSchemaTask *)self deviceOS];
  translationTask2 = [equalCopy deviceOS];
  if ((translationTask != 0) == (translationTask2 == 0))
  {
    goto LABEL_36;
  }

  deviceOS = [(LTSchemaTask *)self deviceOS];
  if (deviceOS)
  {
    v23 = deviceOS;
    deviceOS2 = [(LTSchemaTask *)self deviceOS];
    deviceOS3 = [equalCopy deviceOS];
    v26 = [deviceOS2 isEqual:deviceOS3];

    if (!v26)
    {
      goto LABEL_37;
    }
  }

  else
  {
  }

  translationTask = [(LTSchemaTask *)self deviceType];
  translationTask2 = [equalCopy deviceType];
  if ((translationTask != 0) == (translationTask2 == 0))
  {
    goto LABEL_36;
  }

  deviceType = [(LTSchemaTask *)self deviceType];
  if (deviceType)
  {
    v28 = deviceType;
    deviceType2 = [(LTSchemaTask *)self deviceType];
    deviceType3 = [equalCopy deviceType];
    v31 = [deviceType2 isEqual:deviceType3];

    if (!v31)
    {
      goto LABEL_37;
    }
  }

  else
  {
  }

  translationTask = [(LTSchemaTask *)self osVersion];
  translationTask2 = [equalCopy osVersion];
  if ((translationTask != 0) == (translationTask2 == 0))
  {
    goto LABEL_36;
  }

  osVersion = [(LTSchemaTask *)self osVersion];
  if (osVersion)
  {
    v33 = osVersion;
    osVersion2 = [(LTSchemaTask *)self osVersion];
    osVersion3 = [equalCopy osVersion];
    v36 = [osVersion2 isEqual:osVersion3];

    if (!v36)
    {
      goto LABEL_37;
    }
  }

  else
  {
  }

  translationTask = [(LTSchemaTask *)self bundleIdentifier];
  translationTask2 = [equalCopy bundleIdentifier];
  if ((translationTask != 0) != (translationTask2 == 0))
  {
    bundleIdentifier = [(LTSchemaTask *)self bundleIdentifier];
    if (!bundleIdentifier)
    {

LABEL_40:
      v42 = 1;
      goto LABEL_38;
    }

    v38 = bundleIdentifier;
    bundleIdentifier2 = [(LTSchemaTask *)self bundleIdentifier];
    bundleIdentifier3 = [equalCopy bundleIdentifier];
    v41 = [bundleIdentifier2 isEqual:bundleIdentifier3];

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

- (void)writeTo:(id)to
{
  toCopy = to;
  translationTask = [(LTSchemaTask *)self translationTask];

  if (translationTask)
  {
    PBDataWriterWriteStringField();
  }

  sourceLanguage = [(LTSchemaTask *)self sourceLanguage];

  if (sourceLanguage)
  {
    PBDataWriterWriteStringField();
  }

  targetLanguage = [(LTSchemaTask *)self targetLanguage];

  if (targetLanguage)
  {
    PBDataWriterWriteStringField();
  }

  deviceOS = [(LTSchemaTask *)self deviceOS];

  if (deviceOS)
  {
    PBDataWriterWriteStringField();
  }

  deviceType = [(LTSchemaTask *)self deviceType];

  if (deviceType)
  {
    PBDataWriterWriteStringField();
  }

  osVersion = [(LTSchemaTask *)self osVersion];

  if (osVersion)
  {
    PBDataWriterWriteStringField();
  }

  bundleIdentifier = [(LTSchemaTask *)self bundleIdentifier];

  v11 = toCopy;
  if (bundleIdentifier)
  {
    PBDataWriterWriteStringField();
    v11 = toCopy;
  }
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end