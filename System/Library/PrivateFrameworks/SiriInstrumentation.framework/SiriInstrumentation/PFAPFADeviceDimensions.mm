@interface PFAPFADeviceDimensions
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (PFAPFADeviceDimensions)initWithDictionary:(id)dictionary;
- (PFAPFADeviceDimensions)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation PFAPFADeviceDimensions

- (PFAPFADeviceDimensions)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v13.receiver = self;
  v13.super_class = PFAPFADeviceDimensions;
  v5 = [(PFAPFADeviceDimensions *)&v13 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"systemBuild"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(PFAPFADeviceDimensions *)v5 setSystemBuild:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"deviceType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(PFAPFADeviceDimensions *)v5 setDeviceType:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"programCode"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PFAPFADeviceDimensions setProgramCode:](v5, "setProgramCode:", [v10 intValue]);
    }

    v11 = v5;
  }

  return v5;
}

- (PFAPFADeviceDimensions)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(PFAPFADeviceDimensions *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(PFAPFADeviceDimensions *)self dictionaryRepresentation];
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
  if (self->_deviceType)
  {
    deviceType = [(PFAPFADeviceDimensions *)self deviceType];
    v5 = [deviceType copy];
    [dictionary setObject:v5 forKeyedSubscript:@"deviceType"];
  }

  if (*&self->_has)
  {
    v6 = [(PFAPFADeviceDimensions *)self programCode]- 1;
    if (v6 > 4)
    {
      v7 = @"PROGRAMCODE_UNKNOWN";
    }

    else
    {
      v7 = off_1E78E0280[v6];
    }

    [dictionary setObject:v7 forKeyedSubscript:@"programCode"];
  }

  if (self->_systemBuild)
  {
    systemBuild = [(PFAPFADeviceDimensions *)self systemBuild];
    v9 = [systemBuild copy];
    [dictionary setObject:v9 forKeyedSubscript:@"systemBuild"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_systemBuild hash];
  v4 = [(NSString *)self->_deviceType hash];
  if (*&self->_has)
  {
    v5 = 2654435761 * self->_programCode;
  }

  else
  {
    v5 = 0;
  }

  return v4 ^ v3 ^ v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  systemBuild = [(PFAPFADeviceDimensions *)self systemBuild];
  systemBuild2 = [equalCopy systemBuild];
  if ((systemBuild != 0) == (systemBuild2 == 0))
  {
    goto LABEL_11;
  }

  systemBuild3 = [(PFAPFADeviceDimensions *)self systemBuild];
  if (systemBuild3)
  {
    v8 = systemBuild3;
    systemBuild4 = [(PFAPFADeviceDimensions *)self systemBuild];
    systemBuild5 = [equalCopy systemBuild];
    v11 = [systemBuild4 isEqual:systemBuild5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  systemBuild = [(PFAPFADeviceDimensions *)self deviceType];
  systemBuild2 = [equalCopy deviceType];
  if ((systemBuild != 0) == (systemBuild2 == 0))
  {
LABEL_11:

    goto LABEL_12;
  }

  deviceType = [(PFAPFADeviceDimensions *)self deviceType];
  if (deviceType)
  {
    v13 = deviceType;
    deviceType2 = [(PFAPFADeviceDimensions *)self deviceType];
    deviceType3 = [equalCopy deviceType];
    v16 = [deviceType2 isEqual:deviceType3];

    if (!v16)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) == (equalCopy[28] & 1))
  {
    if ((*&self->_has & 1) == 0 || (programCode = self->_programCode, programCode == [equalCopy programCode]))
    {
      v17 = 1;
      goto LABEL_13;
    }
  }

LABEL_12:
  v17 = 0;
LABEL_13:

  return v17;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  systemBuild = [(PFAPFADeviceDimensions *)self systemBuild];

  if (systemBuild)
  {
    PBDataWriterWriteStringField();
  }

  deviceType = [(PFAPFADeviceDimensions *)self deviceType];

  if (deviceType)
  {
    PBDataWriterWriteStringField();
  }

  v6 = toCopy;
  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
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