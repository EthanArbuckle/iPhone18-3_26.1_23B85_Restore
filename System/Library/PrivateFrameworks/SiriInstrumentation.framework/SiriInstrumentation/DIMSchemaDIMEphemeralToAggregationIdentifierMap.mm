@interface DIMSchemaDIMEphemeralToAggregationIdentifierMap
- (BOOL)isEqual:(id)equal;
- (DIMSchemaDIMEphemeralToAggregationIdentifierMap)initWithDictionary:(id)dictionary;
- (DIMSchemaDIMEphemeralToAggregationIdentifierMap)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasUserAggregationIdExpirationTimestampMs:(BOOL)ms;
- (void)setHasUserSamplingIdExpirationTimestampMs:(BOOL)ms;
- (void)setHasUserSamplingIdRotationTimestampMs:(BOOL)ms;
- (void)writeTo:(id)to;
@end

@implementation DIMSchemaDIMEphemeralToAggregationIdentifierMap

- (DIMSchemaDIMEphemeralToAggregationIdentifierMap)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v20.receiver = self;
  v20.super_class = DIMSchemaDIMEphemeralToAggregationIdentifierMap;
  v5 = [(DIMSchemaDIMEphemeralToAggregationIdentifierMap *)&v20 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"userEphemeralId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(DIMSchemaDIMEphemeralToAggregationIdentifierMap *)v5 setUserEphemeralId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"userAggregationId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[SISchemaUUID alloc] initWithDictionary:v8];
      [(DIMSchemaDIMEphemeralToAggregationIdentifierMap *)v5 setUserAggregationId:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"userAggregationIdRotationTimestampMs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[DIMSchemaDIMEphemeralToAggregationIdentifierMap setUserAggregationIdRotationTimestampMs:](v5, "setUserAggregationIdRotationTimestampMs:", [v10 unsignedLongLongValue]);
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"userAggregationIdExpirationTimestampMs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[DIMSchemaDIMEphemeralToAggregationIdentifierMap setUserAggregationIdExpirationTimestampMs:](v5, "setUserAggregationIdExpirationTimestampMs:", [v11 unsignedLongLongValue]);
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"deviceAggregationId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[SISchemaUUID alloc] initWithDictionary:v12];
      [(DIMSchemaDIMEphemeralToAggregationIdentifierMap *)v5 setDeviceAggregationId:v13];
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"userSamplingId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [[SISchemaUUID alloc] initWithDictionary:v14];
      [(DIMSchemaDIMEphemeralToAggregationIdentifierMap *)v5 setUserSamplingId:v15];
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:@"userSamplingIdRotationTimestampMs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[DIMSchemaDIMEphemeralToAggregationIdentifierMap setUserSamplingIdRotationTimestampMs:](v5, "setUserSamplingIdRotationTimestampMs:", [v16 unsignedLongLongValue]);
    }

    v17 = [dictionaryCopy objectForKeyedSubscript:@"userSamplingIdExpirationTimestampMs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[DIMSchemaDIMEphemeralToAggregationIdentifierMap setUserSamplingIdExpirationTimestampMs:](v5, "setUserSamplingIdExpirationTimestampMs:", [v17 unsignedLongLongValue]);
    }

    v18 = v5;
  }

  return v5;
}

- (DIMSchemaDIMEphemeralToAggregationIdentifierMap)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(DIMSchemaDIMEphemeralToAggregationIdentifierMap *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(DIMSchemaDIMEphemeralToAggregationIdentifierMap *)self dictionaryRepresentation];
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
    deviceAggregationId = [(DIMSchemaDIMEphemeralToAggregationIdentifierMap *)self deviceAggregationId];
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
    userAggregationId = [(DIMSchemaDIMEphemeralToAggregationIdentifierMap *)self userAggregationId];
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
    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[DIMSchemaDIMEphemeralToAggregationIdentifierMap userAggregationIdExpirationTimestampMs](self, "userAggregationIdExpirationTimestampMs")}];
    [dictionary setObject:v11 forKeyedSubscript:@"userAggregationIdExpirationTimestampMs"];

    has = self->_has;
  }

  if (has)
  {
    v12 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[DIMSchemaDIMEphemeralToAggregationIdentifierMap userAggregationIdRotationTimestampMs](self, "userAggregationIdRotationTimestampMs")}];
    [dictionary setObject:v12 forKeyedSubscript:@"userAggregationIdRotationTimestampMs"];
  }

  if (self->_userEphemeralId)
  {
    userEphemeralId = [(DIMSchemaDIMEphemeralToAggregationIdentifierMap *)self userEphemeralId];
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

  if (self->_userSamplingId)
  {
    userSamplingId = [(DIMSchemaDIMEphemeralToAggregationIdentifierMap *)self userSamplingId];
    dictionaryRepresentation4 = [userSamplingId dictionaryRepresentation];
    if (dictionaryRepresentation4)
    {
      [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"userSamplingId"];
    }

    else
    {
      null4 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null4 forKeyedSubscript:@"userSamplingId"];
    }
  }

  v19 = self->_has;
  if ((v19 & 8) != 0)
  {
    v20 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[DIMSchemaDIMEphemeralToAggregationIdentifierMap userSamplingIdExpirationTimestampMs](self, "userSamplingIdExpirationTimestampMs")}];
    [dictionary setObject:v20 forKeyedSubscript:@"userSamplingIdExpirationTimestampMs"];

    v19 = self->_has;
  }

  if ((v19 & 4) != 0)
  {
    v21 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[DIMSchemaDIMEphemeralToAggregationIdentifierMap userSamplingIdRotationTimestampMs](self, "userSamplingIdRotationTimestampMs")}];
    [dictionary setObject:v21 forKeyedSubscript:@"userSamplingIdRotationTimestampMs"];
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
  }

  else
  {
    v5 = 0;
    if ((*&self->_has & 2) != 0)
    {
LABEL_3:
      v6 = 2654435761u * self->_userAggregationIdExpirationTimestampMs;
      goto LABEL_6;
    }
  }

  v6 = 0;
LABEL_6:
  v7 = [(SISchemaUUID *)self->_deviceAggregationId hash];
  v8 = [(SISchemaUUID *)self->_userSamplingId hash];
  if ((*&self->_has & 4) != 0)
  {
    v9 = 2654435761u * self->_userSamplingIdRotationTimestampMs;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_8;
    }

LABEL_10:
    v10 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10;
  }

  v9 = 0;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_10;
  }

LABEL_8:
  v10 = 2654435761u * self->_userSamplingIdExpirationTimestampMs;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_29;
  }

  userEphemeralId = [(DIMSchemaDIMEphemeralToAggregationIdentifierMap *)self userEphemeralId];
  userEphemeralId2 = [equalCopy userEphemeralId];
  if ((userEphemeralId != 0) == (userEphemeralId2 == 0))
  {
    goto LABEL_28;
  }

  userEphemeralId3 = [(DIMSchemaDIMEphemeralToAggregationIdentifierMap *)self userEphemeralId];
  if (userEphemeralId3)
  {
    v8 = userEphemeralId3;
    userEphemeralId4 = [(DIMSchemaDIMEphemeralToAggregationIdentifierMap *)self userEphemeralId];
    userEphemeralId5 = [equalCopy userEphemeralId];
    v11 = [userEphemeralId4 isEqual:userEphemeralId5];

    if (!v11)
    {
      goto LABEL_29;
    }
  }

  else
  {
  }

  userEphemeralId = [(DIMSchemaDIMEphemeralToAggregationIdentifierMap *)self userAggregationId];
  userEphemeralId2 = [equalCopy userAggregationId];
  if ((userEphemeralId != 0) == (userEphemeralId2 == 0))
  {
    goto LABEL_28;
  }

  userAggregationId = [(DIMSchemaDIMEphemeralToAggregationIdentifierMap *)self userAggregationId];
  if (userAggregationId)
  {
    v13 = userAggregationId;
    userAggregationId2 = [(DIMSchemaDIMEphemeralToAggregationIdentifierMap *)self userAggregationId];
    userAggregationId3 = [equalCopy userAggregationId];
    v16 = [userAggregationId2 isEqual:userAggregationId3];

    if (!v16)
    {
      goto LABEL_29;
    }
  }

  else
  {
  }

  has = self->_has;
  v18 = equalCopy[72];
  if ((*&has & 1) != (v18 & 1))
  {
    goto LABEL_29;
  }

  if (*&has)
  {
    userAggregationIdRotationTimestampMs = self->_userAggregationIdRotationTimestampMs;
    if (userAggregationIdRotationTimestampMs != [equalCopy userAggregationIdRotationTimestampMs])
    {
      goto LABEL_29;
    }

    has = self->_has;
    v18 = equalCopy[72];
  }

  v20 = (*&has >> 1) & 1;
  if (v20 != ((v18 >> 1) & 1))
  {
    goto LABEL_29;
  }

  if (v20)
  {
    userAggregationIdExpirationTimestampMs = self->_userAggregationIdExpirationTimestampMs;
    if (userAggregationIdExpirationTimestampMs != [equalCopy userAggregationIdExpirationTimestampMs])
    {
      goto LABEL_29;
    }
  }

  userEphemeralId = [(DIMSchemaDIMEphemeralToAggregationIdentifierMap *)self deviceAggregationId];
  userEphemeralId2 = [equalCopy deviceAggregationId];
  if ((userEphemeralId != 0) == (userEphemeralId2 == 0))
  {
    goto LABEL_28;
  }

  deviceAggregationId = [(DIMSchemaDIMEphemeralToAggregationIdentifierMap *)self deviceAggregationId];
  if (deviceAggregationId)
  {
    v23 = deviceAggregationId;
    deviceAggregationId2 = [(DIMSchemaDIMEphemeralToAggregationIdentifierMap *)self deviceAggregationId];
    deviceAggregationId3 = [equalCopy deviceAggregationId];
    v26 = [deviceAggregationId2 isEqual:deviceAggregationId3];

    if (!v26)
    {
      goto LABEL_29;
    }
  }

  else
  {
  }

  userEphemeralId = [(DIMSchemaDIMEphemeralToAggregationIdentifierMap *)self userSamplingId];
  userEphemeralId2 = [equalCopy userSamplingId];
  if ((userEphemeralId != 0) == (userEphemeralId2 == 0))
  {
LABEL_28:

    goto LABEL_29;
  }

  userSamplingId = [(DIMSchemaDIMEphemeralToAggregationIdentifierMap *)self userSamplingId];
  if (userSamplingId)
  {
    v28 = userSamplingId;
    userSamplingId2 = [(DIMSchemaDIMEphemeralToAggregationIdentifierMap *)self userSamplingId];
    userSamplingId3 = [equalCopy userSamplingId];
    v31 = [userSamplingId2 isEqual:userSamplingId3];

    if (!v31)
    {
      goto LABEL_29;
    }
  }

  else
  {
  }

  v34 = self->_has;
  v35 = (*&v34 >> 2) & 1;
  v36 = equalCopy[72];
  if (v35 == ((v36 >> 2) & 1))
  {
    if (v35)
    {
      userSamplingIdRotationTimestampMs = self->_userSamplingIdRotationTimestampMs;
      if (userSamplingIdRotationTimestampMs != [equalCopy userSamplingIdRotationTimestampMs])
      {
        goto LABEL_29;
      }

      v34 = self->_has;
      v36 = equalCopy[72];
    }

    v38 = (*&v34 >> 3) & 1;
    if (v38 == ((v36 >> 3) & 1))
    {
      if (!v38 || (userSamplingIdExpirationTimestampMs = self->_userSamplingIdExpirationTimestampMs, userSamplingIdExpirationTimestampMs == [equalCopy userSamplingIdExpirationTimestampMs]))
      {
        v32 = 1;
        goto LABEL_30;
      }
    }
  }

LABEL_29:
  v32 = 0;
LABEL_30:

  return v32;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  userEphemeralId = [(DIMSchemaDIMEphemeralToAggregationIdentifierMap *)self userEphemeralId];

  if (userEphemeralId)
  {
    userEphemeralId2 = [(DIMSchemaDIMEphemeralToAggregationIdentifierMap *)self userEphemeralId];
    PBDataWriterWriteSubmessage();
  }

  userAggregationId = [(DIMSchemaDIMEphemeralToAggregationIdentifierMap *)self userAggregationId];

  if (userAggregationId)
  {
    userAggregationId2 = [(DIMSchemaDIMEphemeralToAggregationIdentifierMap *)self userAggregationId];
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

  deviceAggregationId = [(DIMSchemaDIMEphemeralToAggregationIdentifierMap *)self deviceAggregationId];

  if (deviceAggregationId)
  {
    deviceAggregationId2 = [(DIMSchemaDIMEphemeralToAggregationIdentifierMap *)self deviceAggregationId];
    PBDataWriterWriteSubmessage();
  }

  userSamplingId = [(DIMSchemaDIMEphemeralToAggregationIdentifierMap *)self userSamplingId];

  if (userSamplingId)
  {
    userSamplingId2 = [(DIMSchemaDIMEphemeralToAggregationIdentifierMap *)self userSamplingId];
    PBDataWriterWriteSubmessage();
  }

  v13 = self->_has;
  if ((v13 & 4) != 0)
  {
    PBDataWriterWriteUint64Field();
    v13 = self->_has;
  }

  v14 = toCopy;
  if ((v13 & 8) != 0)
  {
    PBDataWriterWriteUint64Field();
    v14 = toCopy;
  }
}

- (void)setHasUserSamplingIdExpirationTimestampMs:(BOOL)ms
{
  if (ms)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasUserSamplingIdRotationTimestampMs:(BOOL)ms
{
  if (ms)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
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
  v19.receiver = self;
  v19.super_class = DIMSchemaDIMEphemeralToAggregationIdentifierMap;
  v5 = [(SISchemaInstrumentationMessage *)&v19 applySensitiveConditionsPolicy:policyCopy];
  userEphemeralId = [(DIMSchemaDIMEphemeralToAggregationIdentifierMap *)self userEphemeralId];
  v7 = [userEphemeralId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(DIMSchemaDIMEphemeralToAggregationIdentifierMap *)self deleteUserEphemeralId];
  }

  userAggregationId = [(DIMSchemaDIMEphemeralToAggregationIdentifierMap *)self userAggregationId];
  v10 = [userAggregationId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(DIMSchemaDIMEphemeralToAggregationIdentifierMap *)self deleteUserAggregationId];
  }

  deviceAggregationId = [(DIMSchemaDIMEphemeralToAggregationIdentifierMap *)self deviceAggregationId];
  v13 = [deviceAggregationId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
  {
    [(DIMSchemaDIMEphemeralToAggregationIdentifierMap *)self deleteDeviceAggregationId];
  }

  userSamplingId = [(DIMSchemaDIMEphemeralToAggregationIdentifierMap *)self userSamplingId];
  v16 = [userSamplingId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage4 = [v16 suppressMessage];

  if (suppressMessage4)
  {
    [(DIMSchemaDIMEphemeralToAggregationIdentifierMap *)self deleteUserSamplingId];
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