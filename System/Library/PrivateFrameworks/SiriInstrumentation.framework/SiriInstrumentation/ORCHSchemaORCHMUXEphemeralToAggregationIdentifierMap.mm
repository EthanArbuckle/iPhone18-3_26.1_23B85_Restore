@interface ORCHSchemaORCHMUXEphemeralToAggregationIdentifierMap
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (ORCHSchemaORCHMUXEphemeralToAggregationIdentifierMap)initWithDictionary:(id)dictionary;
- (ORCHSchemaORCHMUXEphemeralToAggregationIdentifierMap)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasUserAggregationIdExpirationTimestampMs:(BOOL)ms;
- (void)writeTo:(id)to;
@end

@implementation ORCHSchemaORCHMUXEphemeralToAggregationIdentifierMap

- (ORCHSchemaORCHMUXEphemeralToAggregationIdentifierMap)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v16.receiver = self;
  v16.super_class = ORCHSchemaORCHMUXEphemeralToAggregationIdentifierMap;
  v5 = [(ORCHSchemaORCHMUXEphemeralToAggregationIdentifierMap *)&v16 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"userEphemeralId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(ORCHSchemaORCHMUXEphemeralToAggregationIdentifierMap *)v5 setUserEphemeralId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"userAggregationId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[SISchemaUUID alloc] initWithDictionary:v8];
      [(ORCHSchemaORCHMUXEphemeralToAggregationIdentifierMap *)v5 setUserAggregationId:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"userAggregationIdRotationTimestampMs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ORCHSchemaORCHMUXEphemeralToAggregationIdentifierMap setUserAggregationIdRotationTimestampMs:](v5, "setUserAggregationIdRotationTimestampMs:", [v10 unsignedLongLongValue]);
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"userAggregationIdExpirationTimestampMs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ORCHSchemaORCHMUXEphemeralToAggregationIdentifierMap setUserAggregationIdExpirationTimestampMs:](v5, "setUserAggregationIdExpirationTimestampMs:", [v11 unsignedLongLongValue]);
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"deviceAggregationId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[SISchemaUUID alloc] initWithDictionary:v12];
      [(ORCHSchemaORCHMUXEphemeralToAggregationIdentifierMap *)v5 setDeviceAggregationId:v13];
    }

    v14 = v5;
  }

  return v5;
}

- (ORCHSchemaORCHMUXEphemeralToAggregationIdentifierMap)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(ORCHSchemaORCHMUXEphemeralToAggregationIdentifierMap *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(ORCHSchemaORCHMUXEphemeralToAggregationIdentifierMap *)self dictionaryRepresentation];
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
  if (self->_deviceAggregationId)
  {
    deviceAggregationId = [(ORCHSchemaORCHMUXEphemeralToAggregationIdentifierMap *)self deviceAggregationId];
    dictionaryRepresentation = [deviceAggregationId dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"deviceAggregationId"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"deviceAggregationId"];
    }
  }

  if (self->_userAggregationId)
  {
    userAggregationId = [(ORCHSchemaORCHMUXEphemeralToAggregationIdentifierMap *)self userAggregationId];
    dictionaryRepresentation2 = [userAggregationId dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"userAggregationId"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"userAggregationId"];
    }
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[ORCHSchemaORCHMUXEphemeralToAggregationIdentifierMap userAggregationIdExpirationTimestampMs](self, "userAggregationIdExpirationTimestampMs")}];
    [dictionary setObject:v11 forKeyedSubscript:@"userAggregationIdExpirationTimestampMs"];

    has = self->_has;
  }

  if (has)
  {
    v12 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[ORCHSchemaORCHMUXEphemeralToAggregationIdentifierMap userAggregationIdRotationTimestampMs](self, "userAggregationIdRotationTimestampMs")}];
    [dictionary setObject:v12 forKeyedSubscript:@"userAggregationIdRotationTimestampMs"];
  }

  if (self->_userEphemeralId)
  {
    userEphemeralId = [(ORCHSchemaORCHMUXEphemeralToAggregationIdentifierMap *)self userEphemeralId];
    dictionaryRepresentation3 = [userEphemeralId dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"userEphemeralId"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"userEphemeralId"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(SISchemaUUID *)self->_userEphemeralId hash];
  v4 = [(SISchemaUUID *)self->_userAggregationId hash];
  if (*&self->_has)
  {
    v5 = 2654435761u * self->_userAggregationIdRotationTimestampMs;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v6 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ [(SISchemaUUID *)self->_deviceAggregationId hash];
  }

  v5 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v6 = 2654435761u * self->_userAggregationIdExpirationTimestampMs;
  return v4 ^ v3 ^ v5 ^ v6 ^ [(SISchemaUUID *)self->_deviceAggregationId hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_24;
  }

  userEphemeralId = [(ORCHSchemaORCHMUXEphemeralToAggregationIdentifierMap *)self userEphemeralId];
  userEphemeralId2 = [equalCopy userEphemeralId];
  if ((userEphemeralId != 0) == (userEphemeralId2 == 0))
  {
    goto LABEL_23;
  }

  userEphemeralId3 = [(ORCHSchemaORCHMUXEphemeralToAggregationIdentifierMap *)self userEphemeralId];
  if (userEphemeralId3)
  {
    v8 = userEphemeralId3;
    userEphemeralId4 = [(ORCHSchemaORCHMUXEphemeralToAggregationIdentifierMap *)self userEphemeralId];
    userEphemeralId5 = [equalCopy userEphemeralId];
    v11 = [userEphemeralId4 isEqual:userEphemeralId5];

    if (!v11)
    {
      goto LABEL_24;
    }
  }

  else
  {
  }

  userEphemeralId = [(ORCHSchemaORCHMUXEphemeralToAggregationIdentifierMap *)self userAggregationId];
  userEphemeralId2 = [equalCopy userAggregationId];
  if ((userEphemeralId != 0) == (userEphemeralId2 == 0))
  {
    goto LABEL_23;
  }

  userAggregationId = [(ORCHSchemaORCHMUXEphemeralToAggregationIdentifierMap *)self userAggregationId];
  if (userAggregationId)
  {
    v13 = userAggregationId;
    userAggregationId2 = [(ORCHSchemaORCHMUXEphemeralToAggregationIdentifierMap *)self userAggregationId];
    userAggregationId3 = [equalCopy userAggregationId];
    v16 = [userAggregationId2 isEqual:userAggregationId3];

    if (!v16)
    {
      goto LABEL_24;
    }
  }

  else
  {
  }

  has = self->_has;
  v18 = equalCopy[48];
  if ((*&has & 1) != (v18 & 1))
  {
    goto LABEL_24;
  }

  if (*&has)
  {
    userAggregationIdRotationTimestampMs = self->_userAggregationIdRotationTimestampMs;
    if (userAggregationIdRotationTimestampMs != [equalCopy userAggregationIdRotationTimestampMs])
    {
      goto LABEL_24;
    }

    has = self->_has;
    v18 = equalCopy[48];
  }

  v20 = (*&has >> 1) & 1;
  if (v20 != ((v18 >> 1) & 1))
  {
    goto LABEL_24;
  }

  if (v20)
  {
    userAggregationIdExpirationTimestampMs = self->_userAggregationIdExpirationTimestampMs;
    if (userAggregationIdExpirationTimestampMs != [equalCopy userAggregationIdExpirationTimestampMs])
    {
      goto LABEL_24;
    }
  }

  userEphemeralId = [(ORCHSchemaORCHMUXEphemeralToAggregationIdentifierMap *)self deviceAggregationId];
  userEphemeralId2 = [equalCopy deviceAggregationId];
  if ((userEphemeralId != 0) == (userEphemeralId2 == 0))
  {
LABEL_23:

    goto LABEL_24;
  }

  deviceAggregationId = [(ORCHSchemaORCHMUXEphemeralToAggregationIdentifierMap *)self deviceAggregationId];
  if (!deviceAggregationId)
  {

LABEL_27:
    v27 = 1;
    goto LABEL_25;
  }

  v23 = deviceAggregationId;
  deviceAggregationId2 = [(ORCHSchemaORCHMUXEphemeralToAggregationIdentifierMap *)self deviceAggregationId];
  deviceAggregationId3 = [equalCopy deviceAggregationId];
  v26 = [deviceAggregationId2 isEqual:deviceAggregationId3];

  if (v26)
  {
    goto LABEL_27;
  }

LABEL_24:
  v27 = 0;
LABEL_25:

  return v27;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  userEphemeralId = [(ORCHSchemaORCHMUXEphemeralToAggregationIdentifierMap *)self userEphemeralId];

  if (userEphemeralId)
  {
    userEphemeralId2 = [(ORCHSchemaORCHMUXEphemeralToAggregationIdentifierMap *)self userEphemeralId];
    PBDataWriterWriteSubmessage();
  }

  userAggregationId = [(ORCHSchemaORCHMUXEphemeralToAggregationIdentifierMap *)self userAggregationId];

  if (userAggregationId)
  {
    userAggregationId2 = [(ORCHSchemaORCHMUXEphemeralToAggregationIdentifierMap *)self userAggregationId];
    PBDataWriterWriteSubmessage();
  }

  has = self->_has;
  if (has)
  {
    PBDataWriterWriteUint64Field();
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    PBDataWriterWriteUint64Field();
  }

  deviceAggregationId = [(ORCHSchemaORCHMUXEphemeralToAggregationIdentifierMap *)self deviceAggregationId];

  v10 = toCopy;
  if (deviceAggregationId)
  {
    deviceAggregationId2 = [(ORCHSchemaORCHMUXEphemeralToAggregationIdentifierMap *)self deviceAggregationId];
    PBDataWriterWriteSubmessage();

    v10 = toCopy;
  }
}

- (void)setHasUserAggregationIdExpirationTimestampMs:(BOOL)ms
{
  if (ms)
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
  policyCopy = policy;
  v16.receiver = self;
  v16.super_class = ORCHSchemaORCHMUXEphemeralToAggregationIdentifierMap;
  v5 = [(SISchemaInstrumentationMessage *)&v16 applySensitiveConditionsPolicy:policyCopy];
  userEphemeralId = [(ORCHSchemaORCHMUXEphemeralToAggregationIdentifierMap *)self userEphemeralId];
  v7 = [userEphemeralId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(ORCHSchemaORCHMUXEphemeralToAggregationIdentifierMap *)self deleteUserEphemeralId];
  }

  userAggregationId = [(ORCHSchemaORCHMUXEphemeralToAggregationIdentifierMap *)self userAggregationId];
  v10 = [userAggregationId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(ORCHSchemaORCHMUXEphemeralToAggregationIdentifierMap *)self deleteUserAggregationId];
  }

  deviceAggregationId = [(ORCHSchemaORCHMUXEphemeralToAggregationIdentifierMap *)self deviceAggregationId];
  v13 = [deviceAggregationId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
  {
    [(ORCHSchemaORCHMUXEphemeralToAggregationIdentifierMap *)self deleteDeviceAggregationId];
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