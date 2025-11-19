@interface UAFSchemaUAFDeviceMetadata
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (UAFSchemaUAFDeviceMetadata)initWithDictionary:(id)a3;
- (UAFSchemaUAFDeviceMetadata)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasInputLocale:(BOOL)a3;
- (void)setHasNanoSecondsSinceLastBoot:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation UAFSchemaUAFDeviceMetadata

- (UAFSchemaUAFDeviceMetadata)initWithDictionary:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = UAFSchemaUAFDeviceMetadata;
  v5 = [(UAFSchemaUAFDeviceMetadata *)&v17 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"deviceId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(UAFSchemaUAFDeviceMetadata *)v5 setDeviceId:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"deviceType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(UAFSchemaUAFDeviceMetadata *)v5 setDeviceType:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"programCode"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[UAFSchemaUAFDeviceMetadata setProgramCode:](v5, "setProgramCode:", [v10 intValue]);
    }

    v11 = [v4 objectForKeyedSubscript:@"systemBuild"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [v11 copy];
      [(UAFSchemaUAFDeviceMetadata *)v5 setSystemBuild:v12];
    }

    v13 = [v4 objectForKeyedSubscript:@"inputLocale"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[UAFSchemaUAFDeviceMetadata setInputLocale:](v5, "setInputLocale:", [v13 intValue]);
    }

    v14 = [v4 objectForKeyedSubscript:@"nanoSecondsSinceLastBoot"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[UAFSchemaUAFDeviceMetadata setNanoSecondsSinceLastBoot:](v5, "setNanoSecondsSinceLastBoot:", [v14 unsignedLongLongValue]);
    }

    v15 = v5;
  }

  return v5;
}

- (UAFSchemaUAFDeviceMetadata)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(UAFSchemaUAFDeviceMetadata *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(UAFSchemaUAFDeviceMetadata *)self dictionaryRepresentation];
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
  if (self->_deviceId)
  {
    v4 = [(UAFSchemaUAFDeviceMetadata *)self deviceId];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"deviceId"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"deviceId"];
    }
  }

  if (self->_deviceType)
  {
    v7 = [(UAFSchemaUAFDeviceMetadata *)self deviceType];
    v8 = [v7 copy];
    [v3 setObject:v8 forKeyedSubscript:@"deviceType"];
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

    [v3 setObject:v11 forKeyedSubscript:@"inputLocale"];
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
  [v3 setObject:v12 forKeyedSubscript:@"nanoSecondsSinceLastBoot"];

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

  [v3 setObject:v14 forKeyedSubscript:@"programCode"];
LABEL_21:
  if (self->_systemBuild)
  {
    v15 = [(UAFSchemaUAFDeviceMetadata *)self systemBuild];
    v16 = [v15 copy];
    [v3 setObject:v16 forKeyedSubscript:@"systemBuild"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_20;
  }

  v5 = [(UAFSchemaUAFDeviceMetadata *)self deviceId];
  v6 = [v4 deviceId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_19;
  }

  v7 = [(UAFSchemaUAFDeviceMetadata *)self deviceId];
  if (v7)
  {
    v8 = v7;
    v9 = [(UAFSchemaUAFDeviceMetadata *)self deviceId];
    v10 = [v4 deviceId];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_20;
    }
  }

  else
  {
  }

  v5 = [(UAFSchemaUAFDeviceMetadata *)self deviceType];
  v6 = [v4 deviceType];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_19;
  }

  v12 = [(UAFSchemaUAFDeviceMetadata *)self deviceType];
  if (v12)
  {
    v13 = v12;
    v14 = [(UAFSchemaUAFDeviceMetadata *)self deviceType];
    v15 = [v4 deviceType];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_20;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) != (v4[56] & 1))
  {
    goto LABEL_20;
  }

  if (*&self->_has)
  {
    programCode = self->_programCode;
    if (programCode != [v4 programCode])
    {
      goto LABEL_20;
    }
  }

  v5 = [(UAFSchemaUAFDeviceMetadata *)self systemBuild];
  v6 = [v4 systemBuild];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_19:

    goto LABEL_20;
  }

  v18 = [(UAFSchemaUAFDeviceMetadata *)self systemBuild];
  if (v18)
  {
    v19 = v18;
    v20 = [(UAFSchemaUAFDeviceMetadata *)self systemBuild];
    v21 = [v4 systemBuild];
    v22 = [v20 isEqual:v21];

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
  v27 = v4[56];
  if (v26 == ((v27 >> 1) & 1))
  {
    if (v26)
    {
      inputLocale = self->_inputLocale;
      if (inputLocale != [v4 inputLocale])
      {
        goto LABEL_20;
      }

      has = self->_has;
      v27 = v4[56];
    }

    v29 = (*&has >> 2) & 1;
    if (v29 == ((v27 >> 2) & 1))
    {
      if (!v29 || (nanoSecondsSinceLastBoot = self->_nanoSecondsSinceLastBoot, nanoSecondsSinceLastBoot == [v4 nanoSecondsSinceLastBoot]))
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

- (void)writeTo:(id)a3
{
  v10 = a3;
  v4 = [(UAFSchemaUAFDeviceMetadata *)self deviceId];

  if (v4)
  {
    v5 = [(UAFSchemaUAFDeviceMetadata *)self deviceId];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(UAFSchemaUAFDeviceMetadata *)self deviceType];

  if (v6)
  {
    PBDataWriterWriteStringField();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }

  v7 = [(UAFSchemaUAFDeviceMetadata *)self systemBuild];

  if (v7)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  v9 = v10;
  if ((has & 2) != 0)
  {
    PBDataWriterWriteInt32Field();
    v9 = v10;
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    PBDataWriterWriteUint64Field();
    v9 = v10;
  }
}

- (void)setHasNanoSecondsSinceLastBoot:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasInputLocale:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v9.receiver = self;
  v9.super_class = UAFSchemaUAFDeviceMetadata;
  v4 = a3;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:v4];
  v6 = [(UAFSchemaUAFDeviceMetadata *)self deviceId:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:v4];

  LODWORD(v4) = [v7 suppressMessage];
  if (v4)
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