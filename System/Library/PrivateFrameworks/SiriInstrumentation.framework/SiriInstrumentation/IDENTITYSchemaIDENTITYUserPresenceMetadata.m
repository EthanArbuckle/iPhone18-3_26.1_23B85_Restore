@interface IDENTITYSchemaIDENTITYUserPresenceMetadata
- (BOOL)isEqual:(id)a3;
- (IDENTITYSchemaIDENTITYUserPresenceMetadata)initWithDictionary:(id)a3;
- (IDENTITYSchemaIDENTITYUserPresenceMetadata)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasUserLocationSource:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation IDENTITYSchemaIDENTITYUserPresenceMetadata

- (IDENTITYSchemaIDENTITYUserPresenceMetadata)initWithDictionary:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = IDENTITYSchemaIDENTITYUserPresenceMetadata;
  v5 = [(IDENTITYSchemaIDENTITYUserPresenceMetadata *)&v14 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"loggableMultiUserSharedUserId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(IDENTITYSchemaIDENTITYUserPresenceMetadata *)v5 setLoggableMultiUserSharedUserId:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"userLocation"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[IDENTITYSchemaIDENTITYUserPresenceMetadata setUserLocation:](v5, "setUserLocation:", [v8 intValue]);
    }

    v9 = [v4 objectForKeyedSubscript:@"userLocationSource"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[IDENTITYSchemaIDENTITYUserPresenceMetadata setUserLocationSource:](v5, "setUserLocationSource:", [v9 intValue]);
    }

    v10 = [v4 objectForKeyedSubscript:@"userEphemeralId"];
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

- (IDENTITYSchemaIDENTITYUserPresenceMetadata)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(IDENTITYSchemaIDENTITYUserPresenceMetadata *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(IDENTITYSchemaIDENTITYUserPresenceMetadata *)self dictionaryRepresentation];
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
  if (self->_loggableMultiUserSharedUserId)
  {
    v4 = [(IDENTITYSchemaIDENTITYUserPresenceMetadata *)self loggableMultiUserSharedUserId];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"loggableMultiUserSharedUserId"];
  }

  if (self->_userEphemeralId)
  {
    v6 = [(IDENTITYSchemaIDENTITYUserPresenceMetadata *)self userEphemeralId];
    v7 = [v6 dictionaryRepresentation];
    if (v7)
    {
      [v3 setObject:v7 forKeyedSubscript:@"userEphemeralId"];
    }

    else
    {
      v8 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v8 forKeyedSubscript:@"userEphemeralId"];
    }
  }

  has = self->_has;
  if (has)
  {
    v10 = [(IDENTITYSchemaIDENTITYUserPresenceMetadata *)self userLocation];
    v11 = @"IDENTITYUSERLOCATION_UNKNOWN";
    if (v10 == 1)
    {
      v11 = @"IDENTITYUSERLOCATION_HOME";
    }

    if (v10 == 2)
    {
      v12 = @"IDENTITYUSERLOCATION_AWAY";
    }

    else
    {
      v12 = v11;
    }

    [v3 setObject:v12 forKeyedSubscript:@"userLocation"];
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v13 = [(IDENTITYSchemaIDENTITYUserPresenceMetadata *)self userLocationSource];
    v14 = @"IDENTITYUSERPRESENCESOURCE_UNKNOWN";
    if (v13 == 1)
    {
      v14 = @"IDENTITYUSERPRESENCESOURCE_GEO_FENCE";
    }

    if (v13 == 2)
    {
      v15 = @"IDENTITYUSERPRESENCESOURCE_DEVICE_DISCOVERY";
    }

    else
    {
      v15 = v14;
    }

    [v3 setObject:v15 forKeyedSubscript:@"userLocationSource"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_19;
  }

  v5 = [(IDENTITYSchemaIDENTITYUserPresenceMetadata *)self loggableMultiUserSharedUserId];
  v6 = [v4 loggableMultiUserSharedUserId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_18;
  }

  v7 = [(IDENTITYSchemaIDENTITYUserPresenceMetadata *)self loggableMultiUserSharedUserId];
  if (v7)
  {
    v8 = v7;
    v9 = [(IDENTITYSchemaIDENTITYUserPresenceMetadata *)self loggableMultiUserSharedUserId];
    v10 = [v4 loggableMultiUserSharedUserId];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_19;
    }
  }

  else
  {
  }

  has = self->_has;
  v13 = v4[32];
  if ((*&has & 1) != (v13 & 1))
  {
    goto LABEL_19;
  }

  if (*&has)
  {
    userLocation = self->_userLocation;
    if (userLocation != [v4 userLocation])
    {
      goto LABEL_19;
    }

    has = self->_has;
    v13 = v4[32];
  }

  v15 = (*&has >> 1) & 1;
  if (v15 != ((v13 >> 1) & 1))
  {
    goto LABEL_19;
  }

  if (v15)
  {
    userLocationSource = self->_userLocationSource;
    if (userLocationSource != [v4 userLocationSource])
    {
      goto LABEL_19;
    }
  }

  v5 = [(IDENTITYSchemaIDENTITYUserPresenceMetadata *)self userEphemeralId];
  v6 = [v4 userEphemeralId];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_18:

    goto LABEL_19;
  }

  v17 = [(IDENTITYSchemaIDENTITYUserPresenceMetadata *)self userEphemeralId];
  if (!v17)
  {

LABEL_22:
    v22 = 1;
    goto LABEL_20;
  }

  v18 = v17;
  v19 = [(IDENTITYSchemaIDENTITYUserPresenceMetadata *)self userEphemeralId];
  v20 = [v4 userEphemeralId];
  v21 = [v19 isEqual:v20];

  if (v21)
  {
    goto LABEL_22;
  }

LABEL_19:
  v22 = 0;
LABEL_20:

  return v22;
}

- (void)writeTo:(id)a3
{
  v9 = a3;
  v4 = [(IDENTITYSchemaIDENTITYUserPresenceMetadata *)self loggableMultiUserSharedUserId];

  if (v4)
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

  v6 = [(IDENTITYSchemaIDENTITYUserPresenceMetadata *)self userEphemeralId];

  v7 = v9;
  if (v6)
  {
    v8 = [(IDENTITYSchemaIDENTITYUserPresenceMetadata *)self userEphemeralId];
    PBDataWriterWriteSubmessage();

    v7 = v9;
  }
}

- (void)setHasUserLocationSource:(BOOL)a3
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
  v9.super_class = IDENTITYSchemaIDENTITYUserPresenceMetadata;
  v4 = a3;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:v4];
  v6 = [(IDENTITYSchemaIDENTITYUserPresenceMetadata *)self userEphemeralId:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:v4];

  LODWORD(v4) = [v7 suppressMessage];
  if (v4)
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