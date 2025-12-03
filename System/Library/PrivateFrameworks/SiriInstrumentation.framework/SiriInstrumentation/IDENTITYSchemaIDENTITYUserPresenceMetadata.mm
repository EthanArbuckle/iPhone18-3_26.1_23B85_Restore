@interface IDENTITYSchemaIDENTITYUserPresenceMetadata
- (BOOL)isEqual:(id)equal;
- (IDENTITYSchemaIDENTITYUserPresenceMetadata)initWithDictionary:(id)dictionary;
- (IDENTITYSchemaIDENTITYUserPresenceMetadata)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasUserLocationSource:(BOOL)source;
- (void)writeTo:(id)to;
@end

@implementation IDENTITYSchemaIDENTITYUserPresenceMetadata

- (IDENTITYSchemaIDENTITYUserPresenceMetadata)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v14.receiver = self;
  v14.super_class = IDENTITYSchemaIDENTITYUserPresenceMetadata;
  v5 = [(IDENTITYSchemaIDENTITYUserPresenceMetadata *)&v14 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"loggableMultiUserSharedUserId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(IDENTITYSchemaIDENTITYUserPresenceMetadata *)v5 setLoggableMultiUserSharedUserId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"userLocation"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[IDENTITYSchemaIDENTITYUserPresenceMetadata setUserLocation:](v5, "setUserLocation:", [v8 intValue]);
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"userLocationSource"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[IDENTITYSchemaIDENTITYUserPresenceMetadata setUserLocationSource:](v5, "setUserLocationSource:", [v9 intValue]);
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"userEphemeralId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[SISchemaUUID alloc] initWithDictionary:v10];
      [(IDENTITYSchemaIDENTITYUserPresenceMetadata *)v5 setUserEphemeralId:v11];
    }

    v12 = v5;
  }

  return v5;
}

- (IDENTITYSchemaIDENTITYUserPresenceMetadata)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(IDENTITYSchemaIDENTITYUserPresenceMetadata *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(IDENTITYSchemaIDENTITYUserPresenceMetadata *)self dictionaryRepresentation];
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
  if (self->_loggableMultiUserSharedUserId)
  {
    loggableMultiUserSharedUserId = [(IDENTITYSchemaIDENTITYUserPresenceMetadata *)self loggableMultiUserSharedUserId];
    v5 = [loggableMultiUserSharedUserId copy];
    [dictionary setObject:v5 forKeyedSubscript:@"loggableMultiUserSharedUserId"];
  }

  if (self->_userEphemeralId)
  {
    userEphemeralId = [(IDENTITYSchemaIDENTITYUserPresenceMetadata *)self userEphemeralId];
    dictionaryRepresentation = [userEphemeralId dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"userEphemeralId"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"userEphemeralId"];
    }
  }

  has = self->_has;
  if (has)
  {
    userLocation = [(IDENTITYSchemaIDENTITYUserPresenceMetadata *)self userLocation];
    v11 = @"IDENTITYUSERLOCATION_UNKNOWN";
    if (userLocation == 1)
    {
      v11 = @"IDENTITYUSERLOCATION_HOME";
    }

    if (userLocation == 2)
    {
      v12 = @"IDENTITYUSERLOCATION_AWAY";
    }

    else
    {
      v12 = v11;
    }

    [dictionary setObject:v12 forKeyedSubscript:@"userLocation"];
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    userLocationSource = [(IDENTITYSchemaIDENTITYUserPresenceMetadata *)self userLocationSource];
    v14 = @"IDENTITYUSERPRESENCESOURCE_UNKNOWN";
    if (userLocationSource == 1)
    {
      v14 = @"IDENTITYUSERPRESENCESOURCE_GEO_FENCE";
    }

    if (userLocationSource == 2)
    {
      v15 = @"IDENTITYUSERPRESENCESOURCE_DEVICE_DISCOVERY";
    }

    else
    {
      v15 = v14;
    }

    [dictionary setObject:v15 forKeyedSubscript:@"userLocationSource"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_loggableMultiUserSharedUserId hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_userLocation;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v5 = 0;
    return v4 ^ v3 ^ v5 ^ [(SISchemaUUID *)self->_userEphemeralId hash];
  }

  v4 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v5 = 2654435761 * self->_userLocationSource;
  return v4 ^ v3 ^ v5 ^ [(SISchemaUUID *)self->_userEphemeralId hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_19;
  }

  loggableMultiUserSharedUserId = [(IDENTITYSchemaIDENTITYUserPresenceMetadata *)self loggableMultiUserSharedUserId];
  loggableMultiUserSharedUserId2 = [equalCopy loggableMultiUserSharedUserId];
  if ((loggableMultiUserSharedUserId != 0) == (loggableMultiUserSharedUserId2 == 0))
  {
    goto LABEL_18;
  }

  loggableMultiUserSharedUserId3 = [(IDENTITYSchemaIDENTITYUserPresenceMetadata *)self loggableMultiUserSharedUserId];
  if (loggableMultiUserSharedUserId3)
  {
    v8 = loggableMultiUserSharedUserId3;
    loggableMultiUserSharedUserId4 = [(IDENTITYSchemaIDENTITYUserPresenceMetadata *)self loggableMultiUserSharedUserId];
    loggableMultiUserSharedUserId5 = [equalCopy loggableMultiUserSharedUserId];
    v11 = [loggableMultiUserSharedUserId4 isEqual:loggableMultiUserSharedUserId5];

    if (!v11)
    {
      goto LABEL_19;
    }
  }

  else
  {
  }

  has = self->_has;
  v13 = equalCopy[32];
  if ((*&has & 1) != (v13 & 1))
  {
    goto LABEL_19;
  }

  if (*&has)
  {
    userLocation = self->_userLocation;
    if (userLocation != [equalCopy userLocation])
    {
      goto LABEL_19;
    }

    has = self->_has;
    v13 = equalCopy[32];
  }

  v15 = (*&has >> 1) & 1;
  if (v15 != ((v13 >> 1) & 1))
  {
    goto LABEL_19;
  }

  if (v15)
  {
    userLocationSource = self->_userLocationSource;
    if (userLocationSource != [equalCopy userLocationSource])
    {
      goto LABEL_19;
    }
  }

  loggableMultiUserSharedUserId = [(IDENTITYSchemaIDENTITYUserPresenceMetadata *)self userEphemeralId];
  loggableMultiUserSharedUserId2 = [equalCopy userEphemeralId];
  if ((loggableMultiUserSharedUserId != 0) == (loggableMultiUserSharedUserId2 == 0))
  {
LABEL_18:

    goto LABEL_19;
  }

  userEphemeralId = [(IDENTITYSchemaIDENTITYUserPresenceMetadata *)self userEphemeralId];
  if (!userEphemeralId)
  {

LABEL_22:
    v22 = 1;
    goto LABEL_20;
  }

  v18 = userEphemeralId;
  userEphemeralId2 = [(IDENTITYSchemaIDENTITYUserPresenceMetadata *)self userEphemeralId];
  userEphemeralId3 = [equalCopy userEphemeralId];
  v21 = [userEphemeralId2 isEqual:userEphemeralId3];

  if (v21)
  {
    goto LABEL_22;
  }

LABEL_19:
  v22 = 0;
LABEL_20:

  return v22;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  loggableMultiUserSharedUserId = [(IDENTITYSchemaIDENTITYUserPresenceMetadata *)self loggableMultiUserSharedUserId];

  if (loggableMultiUserSharedUserId)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if (has)
  {
    PBDataWriterWriteInt32Field();
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    PBDataWriterWriteInt32Field();
  }

  userEphemeralId = [(IDENTITYSchemaIDENTITYUserPresenceMetadata *)self userEphemeralId];

  v7 = toCopy;
  if (userEphemeralId)
  {
    userEphemeralId2 = [(IDENTITYSchemaIDENTITYUserPresenceMetadata *)self userEphemeralId];
    PBDataWriterWriteSubmessage();

    v7 = toCopy;
  }
}

- (void)setHasUserLocationSource:(BOOL)source
{
  if (source)
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
  v9.super_class = IDENTITYSchemaIDENTITYUserPresenceMetadata;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(IDENTITYSchemaIDENTITYUserPresenceMetadata *)self userEphemeralId:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(IDENTITYSchemaIDENTITYUserPresenceMetadata *)self deleteUserEphemeralId];
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