@interface MHSchemaMHVoiceTriggerFirstPassDailyMetadata
- (BOOL)isEqual:(id)equal;
- (MHSchemaMHVoiceTriggerFirstPassDailyMetadata)initWithDictionary:(id)dictionary;
- (MHSchemaMHVoiceTriggerFirstPassDailyMetadata)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation MHSchemaMHVoiceTriggerFirstPassDailyMetadata

- (MHSchemaMHVoiceTriggerFirstPassDailyMetadata)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v13.receiver = self;
  v13.super_class = MHSchemaMHVoiceTriggerFirstPassDailyMetadata;
  v5 = [(MHSchemaMHVoiceTriggerFirstPassDailyMetadata *)&v13 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"configVersion"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(MHSchemaMHVoiceTriggerFirstPassDailyMetadata *)v5 setConfigVersion:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"hardwareSampleRate"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[MHSchemaMHVoiceTriggerFirstPassDailyMetadata setHardwareSampleRate:](v5, "setHardwareSampleRate:", [v8 intValue]);
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"mitigationAssetVersion"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [v9 copy];
      [(MHSchemaMHVoiceTriggerFirstPassDailyMetadata *)v5 setMitigationAssetVersion:v10];
    }

    v11 = v5;
  }

  return v5;
}

- (MHSchemaMHVoiceTriggerFirstPassDailyMetadata)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(MHSchemaMHVoiceTriggerFirstPassDailyMetadata *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(MHSchemaMHVoiceTriggerFirstPassDailyMetadata *)self dictionaryRepresentation];
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
  if (self->_configVersion)
  {
    configVersion = [(MHSchemaMHVoiceTriggerFirstPassDailyMetadata *)self configVersion];
    v5 = [configVersion copy];
    [dictionary setObject:v5 forKeyedSubscript:@"configVersion"];
  }

  if (*&self->_has)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithInt:{-[MHSchemaMHVoiceTriggerFirstPassDailyMetadata hardwareSampleRate](self, "hardwareSampleRate")}];
    [dictionary setObject:v6 forKeyedSubscript:@"hardwareSampleRate"];
  }

  if (self->_mitigationAssetVersion)
  {
    mitigationAssetVersion = [(MHSchemaMHVoiceTriggerFirstPassDailyMetadata *)self mitigationAssetVersion];
    v8 = [mitigationAssetVersion copy];
    [dictionary setObject:v8 forKeyedSubscript:@"mitigationAssetVersion"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_configVersion hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_hardwareSampleRate;
  }

  else
  {
    v4 = 0;
  }

  return v4 ^ v3 ^ [(NSString *)self->_mitigationAssetVersion hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  configVersion = [(MHSchemaMHVoiceTriggerFirstPassDailyMetadata *)self configVersion];
  configVersion2 = [equalCopy configVersion];
  if ((configVersion != 0) == (configVersion2 == 0))
  {
    goto LABEL_14;
  }

  configVersion3 = [(MHSchemaMHVoiceTriggerFirstPassDailyMetadata *)self configVersion];
  if (configVersion3)
  {
    v8 = configVersion3;
    configVersion4 = [(MHSchemaMHVoiceTriggerFirstPassDailyMetadata *)self configVersion];
    configVersion5 = [equalCopy configVersion];
    v11 = [configVersion4 isEqual:configVersion5];

    if (!v11)
    {
      goto LABEL_15;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) != (equalCopy[32] & 1))
  {
    goto LABEL_15;
  }

  if (*&self->_has)
  {
    hardwareSampleRate = self->_hardwareSampleRate;
    if (hardwareSampleRate != [equalCopy hardwareSampleRate])
    {
      goto LABEL_15;
    }
  }

  configVersion = [(MHSchemaMHVoiceTriggerFirstPassDailyMetadata *)self mitigationAssetVersion];
  configVersion2 = [equalCopy mitigationAssetVersion];
  if ((configVersion != 0) != (configVersion2 == 0))
  {
    mitigationAssetVersion = [(MHSchemaMHVoiceTriggerFirstPassDailyMetadata *)self mitigationAssetVersion];
    if (!mitigationAssetVersion)
    {

LABEL_18:
      v18 = 1;
      goto LABEL_16;
    }

    v14 = mitigationAssetVersion;
    mitigationAssetVersion2 = [(MHSchemaMHVoiceTriggerFirstPassDailyMetadata *)self mitigationAssetVersion];
    mitigationAssetVersion3 = [equalCopy mitigationAssetVersion];
    v17 = [mitigationAssetVersion2 isEqual:mitigationAssetVersion3];

    if (v17)
    {
      goto LABEL_18;
    }
  }

  else
  {
LABEL_14:
  }

LABEL_15:
  v18 = 0;
LABEL_16:

  return v18;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  configVersion = [(MHSchemaMHVoiceTriggerFirstPassDailyMetadata *)self configVersion];

  if (configVersion)
  {
    PBDataWriterWriteStringField();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }

  mitigationAssetVersion = [(MHSchemaMHVoiceTriggerFirstPassDailyMetadata *)self mitigationAssetVersion];

  v6 = toCopy;
  if (mitigationAssetVersion)
  {
    PBDataWriterWriteStringField();
    v6 = toCopy;
  }
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end