@interface DonationSchemaSDSpeechDonationEventMetaData
- (BOOL)isEqual:(id)equal;
- (DonationSchemaSDSpeechDonationEventMetaData)initWithDictionary:(id)dictionary;
- (DonationSchemaSDSpeechDonationEventMetaData)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation DonationSchemaSDSpeechDonationEventMetaData

- (DonationSchemaSDSpeechDonationEventMetaData)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v13.receiver = self;
  v13.super_class = DonationSchemaSDSpeechDonationEventMetaData;
  v5 = [(DonationSchemaSDSpeechDonationEventMetaData *)&v13 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"sdId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(DonationSchemaSDSpeechDonationEventMetaData *)v5 setSdId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"deviceType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[DonationSchemaSDSpeechDonationEventMetaData setDeviceType:](v5, "setDeviceType:", [v8 intValue]);
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"systemBuild"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [v9 copy];
      [(DonationSchemaSDSpeechDonationEventMetaData *)v5 setSystemBuild:v10];
    }

    v11 = v5;
  }

  return v5;
}

- (DonationSchemaSDSpeechDonationEventMetaData)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(DonationSchemaSDSpeechDonationEventMetaData *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(DonationSchemaSDSpeechDonationEventMetaData *)self dictionaryRepresentation];
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
  if (*&self->_has)
  {
    v4 = [(DonationSchemaSDSpeechDonationEventMetaData *)self deviceType]- 1;
    if (v4 > 7)
    {
      v5 = @"DEVICEFAMILY_UNKNOWN";
    }

    else
    {
      v5 = off_1E78D44E8[v4];
    }

    [dictionary setObject:v5 forKeyedSubscript:@"deviceType"];
  }

  if (self->_sdId)
  {
    sdId = [(DonationSchemaSDSpeechDonationEventMetaData *)self sdId];
    dictionaryRepresentation = [sdId dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"sdId"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"sdId"];
    }
  }

  if (self->_systemBuild)
  {
    systemBuild = [(DonationSchemaSDSpeechDonationEventMetaData *)self systemBuild];
    v10 = [systemBuild copy];
    [dictionary setObject:v10 forKeyedSubscript:@"systemBuild"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(SISchemaUUID *)self->_sdId hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_deviceType;
  }

  else
  {
    v4 = 0;
  }

  return v4 ^ v3 ^ [(NSString *)self->_systemBuild hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  sdId = [(DonationSchemaSDSpeechDonationEventMetaData *)self sdId];
  sdId2 = [equalCopy sdId];
  if ((sdId != 0) == (sdId2 == 0))
  {
    goto LABEL_14;
  }

  sdId3 = [(DonationSchemaSDSpeechDonationEventMetaData *)self sdId];
  if (sdId3)
  {
    v8 = sdId3;
    sdId4 = [(DonationSchemaSDSpeechDonationEventMetaData *)self sdId];
    sdId5 = [equalCopy sdId];
    v11 = [sdId4 isEqual:sdId5];

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
    deviceType = self->_deviceType;
    if (deviceType != [equalCopy deviceType])
    {
      goto LABEL_15;
    }
  }

  sdId = [(DonationSchemaSDSpeechDonationEventMetaData *)self systemBuild];
  sdId2 = [equalCopy systemBuild];
  if ((sdId != 0) != (sdId2 == 0))
  {
    systemBuild = [(DonationSchemaSDSpeechDonationEventMetaData *)self systemBuild];
    if (!systemBuild)
    {

LABEL_18:
      v18 = 1;
      goto LABEL_16;
    }

    v14 = systemBuild;
    systemBuild2 = [(DonationSchemaSDSpeechDonationEventMetaData *)self systemBuild];
    systemBuild3 = [equalCopy systemBuild];
    v17 = [systemBuild2 isEqual:systemBuild3];

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
  sdId = [(DonationSchemaSDSpeechDonationEventMetaData *)self sdId];

  if (sdId)
  {
    sdId2 = [(DonationSchemaSDSpeechDonationEventMetaData *)self sdId];
    PBDataWriterWriteSubmessage();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }

  systemBuild = [(DonationSchemaSDSpeechDonationEventMetaData *)self systemBuild];

  v7 = toCopy;
  if (systemBuild)
  {
    PBDataWriterWriteStringField();
    v7 = toCopy;
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = DonationSchemaSDSpeechDonationEventMetaData;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(DonationSchemaSDSpeechDonationEventMetaData *)self sdId:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(DonationSchemaSDSpeechDonationEventMetaData *)self deleteSdId];
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