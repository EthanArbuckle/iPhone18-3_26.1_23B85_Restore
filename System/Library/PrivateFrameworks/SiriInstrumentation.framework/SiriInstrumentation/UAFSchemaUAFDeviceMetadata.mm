@interface UAFSchemaUAFDeviceMetadata
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (UAFSchemaUAFDeviceMetadata)initWithDictionary:(id)dictionary;
- (UAFSchemaUAFDeviceMetadata)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasInputLocale:(BOOL)locale;
- (void)setHasNanoSecondsSinceLastBoot:(BOOL)boot;
- (void)writeTo:(id)to;
@end

@implementation UAFSchemaUAFDeviceMetadata

- (UAFSchemaUAFDeviceMetadata)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v17.receiver = self;
  v17.super_class = UAFSchemaUAFDeviceMetadata;
  v5 = [(UAFSchemaUAFDeviceMetadata *)&v17 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"deviceId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(UAFSchemaUAFDeviceMetadata *)v5 setDeviceId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"deviceType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(UAFSchemaUAFDeviceMetadata *)v5 setDeviceType:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"programCode"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[UAFSchemaUAFDeviceMetadata setProgramCode:](v5, "setProgramCode:", [v10 intValue]);
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"systemBuild"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [v11 copy];
      [(UAFSchemaUAFDeviceMetadata *)v5 setSystemBuild:v12];
    }

    v13 = [dictionaryCopy objectForKeyedSubscript:@"inputLocale"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[UAFSchemaUAFDeviceMetadata setInputLocale:](v5, "setInputLocale:", [v13 intValue]);
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"nanoSecondsSinceLastBoot"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[UAFSchemaUAFDeviceMetadata setNanoSecondsSinceLastBoot:](v5, "setNanoSecondsSinceLastBoot:", [v14 unsignedLongLongValue]);
    }

    v15 = v5;
  }

  return v5;
}

- (UAFSchemaUAFDeviceMetadata)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(UAFSchemaUAFDeviceMetadata *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(UAFSchemaUAFDeviceMetadata *)self dictionaryRepresentation];
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
  if (self->_deviceId)
  {
    deviceId = [(UAFSchemaUAFDeviceMetadata *)self deviceId];
    dictionaryRepresentation = [deviceId dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"deviceId"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"deviceId"];
    }
  }

  if (self->_deviceType)
  {
    deviceType = [(UAFSchemaUAFDeviceMetadata *)self deviceType];
    v8 = [deviceType copy];
    [dictionary setObject:v8 forKeyedSubscript:@"deviceType"];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    v10 = [(UAFSchemaUAFDeviceMetadata *)self inputLocale]- 1;
    if (v10 > 0x3D)
    {
      v11 = @"LOCALE_UNKNOWN_LOCALE";
    }

    else
    {
      v11 = off_1E78E8810[v10];
    }

    [dictionary setObject:v11 forKeyedSubscript:@"inputLocale"];
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_10:
      if ((has & 1) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_17;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_10;
  }

  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[UAFSchemaUAFDeviceMetadata nanoSecondsSinceLastBoot](self, "nanoSecondsSinceLastBoot")}];
  [dictionary setObject:v12 forKeyedSubscript:@"nanoSecondsSinceLastBoot"];

  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_17:
  v13 = [(UAFSchemaUAFDeviceMetadata *)self programCode]- 1;
  if (v13 > 4)
  {
    v14 = @"PROGRAMCODE_UNKNOWN";
  }

  else
  {
    v14 = off_1E78E8A00[v13];
  }

  [dictionary setObject:v14 forKeyedSubscript:@"programCode"];
LABEL_21:
  if (self->_systemBuild)
  {
    systemBuild = [(UAFSchemaUAFDeviceMetadata *)self systemBuild];
    v16 = [systemBuild copy];
    [dictionary setObject:v16 forKeyedSubscript:@"systemBuild"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(SISchemaUUID *)self->_deviceId hash];
  v4 = [(NSString *)self->_deviceType hash];
  if (*&self->_has)
  {
    v5 = 2654435761 * self->_programCode;
  }

  else
  {
    v5 = 0;
  }

  v6 = [(NSString *)self->_systemBuild hash];
  if ((*&self->_has & 2) != 0)
  {
    v7 = 2654435761 * self->_inputLocale;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_6;
    }

LABEL_8:
    v8 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8;
  }

  v7 = 0;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_8;
  }

LABEL_6:
  v8 = 2654435761u * self->_nanoSecondsSinceLastBoot;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_20;
  }

  deviceId = [(UAFSchemaUAFDeviceMetadata *)self deviceId];
  deviceId2 = [equalCopy deviceId];
  if ((deviceId != 0) == (deviceId2 == 0))
  {
    goto LABEL_19;
  }

  deviceId3 = [(UAFSchemaUAFDeviceMetadata *)self deviceId];
  if (deviceId3)
  {
    v8 = deviceId3;
    deviceId4 = [(UAFSchemaUAFDeviceMetadata *)self deviceId];
    deviceId5 = [equalCopy deviceId];
    v11 = [deviceId4 isEqual:deviceId5];

    if (!v11)
    {
      goto LABEL_20;
    }
  }

  else
  {
  }

  deviceId = [(UAFSchemaUAFDeviceMetadata *)self deviceType];
  deviceId2 = [equalCopy deviceType];
  if ((deviceId != 0) == (deviceId2 == 0))
  {
    goto LABEL_19;
  }

  deviceType = [(UAFSchemaUAFDeviceMetadata *)self deviceType];
  if (deviceType)
  {
    v13 = deviceType;
    deviceType2 = [(UAFSchemaUAFDeviceMetadata *)self deviceType];
    deviceType3 = [equalCopy deviceType];
    v16 = [deviceType2 isEqual:deviceType3];

    if (!v16)
    {
      goto LABEL_20;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) != (equalCopy[56] & 1))
  {
    goto LABEL_20;
  }

  if (*&self->_has)
  {
    programCode = self->_programCode;
    if (programCode != [equalCopy programCode])
    {
      goto LABEL_20;
    }
  }

  deviceId = [(UAFSchemaUAFDeviceMetadata *)self systemBuild];
  deviceId2 = [equalCopy systemBuild];
  if ((deviceId != 0) == (deviceId2 == 0))
  {
LABEL_19:

    goto LABEL_20;
  }

  systemBuild = [(UAFSchemaUAFDeviceMetadata *)self systemBuild];
  if (systemBuild)
  {
    v19 = systemBuild;
    systemBuild2 = [(UAFSchemaUAFDeviceMetadata *)self systemBuild];
    systemBuild3 = [equalCopy systemBuild];
    v22 = [systemBuild2 isEqual:systemBuild3];

    if (!v22)
    {
      goto LABEL_20;
    }
  }

  else
  {
  }

  has = self->_has;
  v26 = (*&has >> 1) & 1;
  v27 = equalCopy[56];
  if (v26 == ((v27 >> 1) & 1))
  {
    if (v26)
    {
      inputLocale = self->_inputLocale;
      if (inputLocale != [equalCopy inputLocale])
      {
        goto LABEL_20;
      }

      has = self->_has;
      v27 = equalCopy[56];
    }

    v29 = (*&has >> 2) & 1;
    if (v29 == ((v27 >> 2) & 1))
    {
      if (!v29 || (nanoSecondsSinceLastBoot = self->_nanoSecondsSinceLastBoot, nanoSecondsSinceLastBoot == [equalCopy nanoSecondsSinceLastBoot]))
      {
        v23 = 1;
        goto LABEL_21;
      }
    }
  }

LABEL_20:
  v23 = 0;
LABEL_21:

  return v23;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  deviceId = [(UAFSchemaUAFDeviceMetadata *)self deviceId];

  if (deviceId)
  {
    deviceId2 = [(UAFSchemaUAFDeviceMetadata *)self deviceId];
    PBDataWriterWriteSubmessage();
  }

  deviceType = [(UAFSchemaUAFDeviceMetadata *)self deviceType];

  if (deviceType)
  {
    PBDataWriterWriteStringField();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }

  systemBuild = [(UAFSchemaUAFDeviceMetadata *)self systemBuild];

  if (systemBuild)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  v9 = toCopy;
  if ((has & 2) != 0)
  {
    PBDataWriterWriteInt32Field();
    v9 = toCopy;
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    PBDataWriterWriteUint64Field();
    v9 = toCopy;
  }
}

- (void)setHasNanoSecondsSinceLastBoot:(BOOL)boot
{
  if (boot)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasInputLocale:(BOOL)locale
{
  if (locale)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = UAFSchemaUAFDeviceMetadata;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(UAFSchemaUAFDeviceMetadata *)self deviceId:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(UAFSchemaUAFDeviceMetadata *)self deleteDeviceId];
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