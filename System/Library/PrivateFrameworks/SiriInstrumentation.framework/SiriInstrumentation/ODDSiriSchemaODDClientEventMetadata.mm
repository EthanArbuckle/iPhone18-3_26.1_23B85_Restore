@interface ODDSiriSchemaODDClientEventMetadata
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (ODDSiriSchemaODDClientEventMetadata)initWithDictionary:(id)dictionary;
- (ODDSiriSchemaODDClientEventMetadata)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasEventOrigin:(BOOL)origin;
- (void)setHasIsLongLivedIDUploadDisabled:(BOOL)disabled;
- (void)setHasUserAggregationIdExpirationTimestampMs:(BOOL)ms;
- (void)setHasUserAggregationIdRotationTimestampMs:(BOOL)ms;
- (void)writeTo:(id)to;
@end

@implementation ODDSiriSchemaODDClientEventMetadata

- (ODDSiriSchemaODDClientEventMetadata)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v22.receiver = self;
  v22.super_class = ODDSiriSchemaODDClientEventMetadata;
  v5 = [(ODDSiriSchemaODDClientEventMetadata *)&v22 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"oddId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(ODDSiriSchemaODDClientEventMetadata *)v5 setOddId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"eventTimestampInMsSince1970"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODDSiriSchemaODDClientEventMetadata setEventTimestampInMsSince1970:](v5, "setEventTimestampInMsSince1970:", [v8 unsignedLongLongValue]);
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:{@"aggregationInterval", v8}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [[ODDSiriSchemaODDTimeInterval alloc] initWithDictionary:v9];
      [(ODDSiriSchemaODDClientEventMetadata *)v5 setAggregationInterval:v10];
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"deviceAggregationId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [[SISchemaUUID alloc] initWithDictionary:v11];
      [(ODDSiriSchemaODDClientEventMetadata *)v5 setDeviceAggregationId:v12];
    }

    v13 = [dictionaryCopy objectForKeyedSubscript:@"userAggregationIdRotationTimestampMs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODDSiriSchemaODDClientEventMetadata setUserAggregationIdRotationTimestampMs:](v5, "setUserAggregationIdRotationTimestampMs:", [v13 unsignedLongLongValue]);
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"userAggregationIdExpirationTimestampMs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODDSiriSchemaODDClientEventMetadata setUserAggregationIdExpirationTimestampMs:](v5, "setUserAggregationIdExpirationTimestampMs:", [v14 unsignedLongLongValue]);
    }

    v15 = [dictionaryCopy objectForKeyedSubscript:@"eventOrigin"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODDSiriSchemaODDClientEventMetadata setEventOrigin:](v5, "setEventOrigin:", [v15 intValue]);
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:@"userAggregationId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [[SISchemaUUID alloc] initWithDictionary:v16];
      [(ODDSiriSchemaODDClientEventMetadata *)v5 setUserAggregationId:v17];
    }

    v18 = [dictionaryCopy objectForKeyedSubscript:@"isLongLivedIDUploadDisabled"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODDSiriSchemaODDClientEventMetadata setIsLongLivedIDUploadDisabled:](v5, "setIsLongLivedIDUploadDisabled:", [v18 BOOLValue]);
    }

    v19 = v5;
  }

  return v5;
}

- (ODDSiriSchemaODDClientEventMetadata)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(ODDSiriSchemaODDClientEventMetadata *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(ODDSiriSchemaODDClientEventMetadata *)self dictionaryRepresentation];
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
  if (self->_aggregationInterval)
  {
    aggregationInterval = [(ODDSiriSchemaODDClientEventMetadata *)self aggregationInterval];
    dictionaryRepresentation = [aggregationInterval dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"aggregationInterval"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"aggregationInterval"];
    }
  }

  if (self->_deviceAggregationId)
  {
    deviceAggregationId = [(ODDSiriSchemaODDClientEventMetadata *)self deviceAggregationId];
    dictionaryRepresentation2 = [deviceAggregationId dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"deviceAggregationId"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"deviceAggregationId"];
    }
  }

  v10 = *(&self->_isLongLivedIDUploadDisabled + 1);
  if ((v10 & 8) != 0)
  {
    v11 = [(ODDSiriSchemaODDClientEventMetadata *)self eventOrigin]- 1;
    if (v11 > 3)
    {
      v12 = @"ODDEVENTORIGIN_UNKNOWN";
    }

    else
    {
      v12 = off_1E78DD1D8[v11];
    }

    [dictionary setObject:v12 forKeyedSubscript:@"eventOrigin"];
    v10 = *(&self->_isLongLivedIDUploadDisabled + 1);
  }

  if (v10)
  {
    v13 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[ODDSiriSchemaODDClientEventMetadata eventTimestampInMsSince1970](self, "eventTimestampInMsSince1970")}];
    [dictionary setObject:v13 forKeyedSubscript:@"eventTimestampInMsSince1970"];

    v10 = *(&self->_isLongLivedIDUploadDisabled + 1);
  }

  if ((v10 & 0x10) != 0)
  {
    v14 = [MEMORY[0x1E696AD98] numberWithBool:{-[ODDSiriSchemaODDClientEventMetadata isLongLivedIDUploadDisabled](self, "isLongLivedIDUploadDisabled")}];
    [dictionary setObject:v14 forKeyedSubscript:@"isLongLivedIDUploadDisabled"];
  }

  if (self->_oddId)
  {
    oddId = [(ODDSiriSchemaODDClientEventMetadata *)self oddId];
    dictionaryRepresentation3 = [oddId dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"oddId"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"oddId"];
    }
  }

  if (self->_userAggregationId)
  {
    userAggregationId = [(ODDSiriSchemaODDClientEventMetadata *)self userAggregationId];
    dictionaryRepresentation4 = [userAggregationId dictionaryRepresentation];
    if (dictionaryRepresentation4)
    {
      [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"userAggregationId"];
    }

    else
    {
      null4 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null4 forKeyedSubscript:@"userAggregationId"];
    }
  }

  v21 = *(&self->_isLongLivedIDUploadDisabled + 1);
  if ((v21 & 4) != 0)
  {
    v22 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[ODDSiriSchemaODDClientEventMetadata userAggregationIdExpirationTimestampMs](self, "userAggregationIdExpirationTimestampMs")}];
    [dictionary setObject:v22 forKeyedSubscript:@"userAggregationIdExpirationTimestampMs"];

    v21 = *(&self->_isLongLivedIDUploadDisabled + 1);
  }

  if ((v21 & 2) != 0)
  {
    v23 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[ODDSiriSchemaODDClientEventMetadata userAggregationIdRotationTimestampMs](self, "userAggregationIdRotationTimestampMs")}];
    [dictionary setObject:v23 forKeyedSubscript:@"userAggregationIdRotationTimestampMs"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(SISchemaUUID *)self->_oddId hash];
  if (*(&self->_isLongLivedIDUploadDisabled + 1))
  {
    v4 = 2654435761u * self->_eventTimestampInMsSince1970;
  }

  else
  {
    v4 = 0;
  }

  v5 = [(ODDSiriSchemaODDTimeInterval *)self->_aggregationInterval hash];
  v6 = [(SISchemaUUID *)self->_deviceAggregationId hash];
  if ((*(&self->_isLongLivedIDUploadDisabled + 1) & 2) == 0)
  {
    v7 = 0;
    if ((*(&self->_isLongLivedIDUploadDisabled + 1) & 4) != 0)
    {
      goto LABEL_6;
    }

LABEL_9:
    v8 = 0;
    if ((*(&self->_isLongLivedIDUploadDisabled + 1) & 8) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_10;
  }

  v7 = 2654435761u * self->_userAggregationIdRotationTimestampMs;
  if ((*(&self->_isLongLivedIDUploadDisabled + 1) & 4) == 0)
  {
    goto LABEL_9;
  }

LABEL_6:
  v8 = 2654435761u * self->_userAggregationIdExpirationTimestampMs;
  if ((*(&self->_isLongLivedIDUploadDisabled + 1) & 8) != 0)
  {
LABEL_7:
    v9 = 2654435761 * self->_eventOrigin;
    goto LABEL_11;
  }

LABEL_10:
  v9 = 0;
LABEL_11:
  v10 = [(SISchemaUUID *)self->_userAggregationId hash];
  if ((*(&self->_isLongLivedIDUploadDisabled + 1) & 0x10) != 0)
  {
    v11 = 2654435761 * self->_isLongLivedIDUploadDisabled;
  }

  else
  {
    v11 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_36;
  }

  oddId = [(ODDSiriSchemaODDClientEventMetadata *)self oddId];
  oddId2 = [equalCopy oddId];
  if ((oddId != 0) == (oddId2 == 0))
  {
    goto LABEL_35;
  }

  oddId3 = [(ODDSiriSchemaODDClientEventMetadata *)self oddId];
  if (oddId3)
  {
    v8 = oddId3;
    oddId4 = [(ODDSiriSchemaODDClientEventMetadata *)self oddId];
    oddId5 = [equalCopy oddId];
    v11 = [oddId4 isEqual:oddId5];

    if (!v11)
    {
      goto LABEL_36;
    }
  }

  else
  {
  }

  if (*(&self->_isLongLivedIDUploadDisabled + 1) != (equalCopy[73] & 1))
  {
    goto LABEL_36;
  }

  if (*(&self->_isLongLivedIDUploadDisabled + 1))
  {
    eventTimestampInMsSince1970 = self->_eventTimestampInMsSince1970;
    if (eventTimestampInMsSince1970 != [equalCopy eventTimestampInMsSince1970])
    {
      goto LABEL_36;
    }
  }

  oddId = [(ODDSiriSchemaODDClientEventMetadata *)self aggregationInterval];
  oddId2 = [equalCopy aggregationInterval];
  if ((oddId != 0) == (oddId2 == 0))
  {
    goto LABEL_35;
  }

  aggregationInterval = [(ODDSiriSchemaODDClientEventMetadata *)self aggregationInterval];
  if (aggregationInterval)
  {
    v14 = aggregationInterval;
    aggregationInterval2 = [(ODDSiriSchemaODDClientEventMetadata *)self aggregationInterval];
    aggregationInterval3 = [equalCopy aggregationInterval];
    v17 = [aggregationInterval2 isEqual:aggregationInterval3];

    if (!v17)
    {
      goto LABEL_36;
    }
  }

  else
  {
  }

  oddId = [(ODDSiriSchemaODDClientEventMetadata *)self deviceAggregationId];
  oddId2 = [equalCopy deviceAggregationId];
  if ((oddId != 0) == (oddId2 == 0))
  {
    goto LABEL_35;
  }

  deviceAggregationId = [(ODDSiriSchemaODDClientEventMetadata *)self deviceAggregationId];
  if (deviceAggregationId)
  {
    v19 = deviceAggregationId;
    deviceAggregationId2 = [(ODDSiriSchemaODDClientEventMetadata *)self deviceAggregationId];
    deviceAggregationId3 = [equalCopy deviceAggregationId];
    v22 = [deviceAggregationId2 isEqual:deviceAggregationId3];

    if (!v22)
    {
      goto LABEL_36;
    }
  }

  else
  {
  }

  v23 = *(&self->_isLongLivedIDUploadDisabled + 1);
  v24 = (v23 >> 1) & 1;
  v25 = equalCopy[73];
  if (v24 != ((v25 >> 1) & 1))
  {
    goto LABEL_36;
  }

  if (v24)
  {
    userAggregationIdRotationTimestampMs = self->_userAggregationIdRotationTimestampMs;
    if (userAggregationIdRotationTimestampMs != [equalCopy userAggregationIdRotationTimestampMs])
    {
      goto LABEL_36;
    }

    v23 = *(&self->_isLongLivedIDUploadDisabled + 1);
    v25 = equalCopy[73];
  }

  v27 = (v23 >> 2) & 1;
  if (v27 != ((v25 >> 2) & 1))
  {
    goto LABEL_36;
  }

  if (v27)
  {
    userAggregationIdExpirationTimestampMs = self->_userAggregationIdExpirationTimestampMs;
    if (userAggregationIdExpirationTimestampMs != [equalCopy userAggregationIdExpirationTimestampMs])
    {
      goto LABEL_36;
    }

    v23 = *(&self->_isLongLivedIDUploadDisabled + 1);
    v25 = equalCopy[73];
  }

  v29 = (v23 >> 3) & 1;
  if (v29 != ((v25 >> 3) & 1))
  {
    goto LABEL_36;
  }

  if (v29)
  {
    eventOrigin = self->_eventOrigin;
    if (eventOrigin != [equalCopy eventOrigin])
    {
      goto LABEL_36;
    }
  }

  oddId = [(ODDSiriSchemaODDClientEventMetadata *)self userAggregationId];
  oddId2 = [equalCopy userAggregationId];
  if ((oddId != 0) == (oddId2 == 0))
  {
LABEL_35:

    goto LABEL_36;
  }

  userAggregationId = [(ODDSiriSchemaODDClientEventMetadata *)self userAggregationId];
  if (userAggregationId)
  {
    v32 = userAggregationId;
    userAggregationId2 = [(ODDSiriSchemaODDClientEventMetadata *)self userAggregationId];
    userAggregationId3 = [equalCopy userAggregationId];
    v35 = [userAggregationId2 isEqual:userAggregationId3];

    if (!v35)
    {
      goto LABEL_36;
    }
  }

  else
  {
  }

  v38 = (*(&self->_isLongLivedIDUploadDisabled + 1) >> 4) & 1;
  if (v38 == ((equalCopy[73] >> 4) & 1))
  {
    if (!v38 || (isLongLivedIDUploadDisabled = self->_isLongLivedIDUploadDisabled, isLongLivedIDUploadDisabled == [equalCopy isLongLivedIDUploadDisabled]))
    {
      v36 = 1;
      goto LABEL_37;
    }
  }

LABEL_36:
  v36 = 0;
LABEL_37:

  return v36;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  oddId = [(ODDSiriSchemaODDClientEventMetadata *)self oddId];

  if (oddId)
  {
    oddId2 = [(ODDSiriSchemaODDClientEventMetadata *)self oddId];
    PBDataWriterWriteSubmessage();
  }

  if (*(&self->_isLongLivedIDUploadDisabled + 1))
  {
    PBDataWriterWriteUint64Field();
  }

  aggregationInterval = [(ODDSiriSchemaODDClientEventMetadata *)self aggregationInterval];

  if (aggregationInterval)
  {
    aggregationInterval2 = [(ODDSiriSchemaODDClientEventMetadata *)self aggregationInterval];
    PBDataWriterWriteSubmessage();
  }

  deviceAggregationId = [(ODDSiriSchemaODDClientEventMetadata *)self deviceAggregationId];

  if (deviceAggregationId)
  {
    deviceAggregationId2 = [(ODDSiriSchemaODDClientEventMetadata *)self deviceAggregationId];
    PBDataWriterWriteSubmessage();
  }

  v10 = *(&self->_isLongLivedIDUploadDisabled + 1);
  if ((v10 & 2) != 0)
  {
    PBDataWriterWriteUint64Field();
    v10 = *(&self->_isLongLivedIDUploadDisabled + 1);
    if ((v10 & 4) == 0)
    {
LABEL_11:
      if ((v10 & 8) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }
  }

  else if ((*(&self->_isLongLivedIDUploadDisabled + 1) & 4) == 0)
  {
    goto LABEL_11;
  }

  PBDataWriterWriteUint64Field();
  if ((*(&self->_isLongLivedIDUploadDisabled + 1) & 8) != 0)
  {
LABEL_12:
    PBDataWriterWriteInt32Field();
  }

LABEL_13:
  userAggregationId = [(ODDSiriSchemaODDClientEventMetadata *)self userAggregationId];

  if (userAggregationId)
  {
    userAggregationId2 = [(ODDSiriSchemaODDClientEventMetadata *)self userAggregationId];
    PBDataWriterWriteSubmessage();
  }

  if ((*(&self->_isLongLivedIDUploadDisabled + 1) & 0x10) != 0)
  {
    PBDataWriterWriteBOOLField();
  }
}

- (void)setHasIsLongLivedIDUploadDisabled:(BOOL)disabled
{
  if (disabled)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isLongLivedIDUploadDisabled + 1) = *(&self->_isLongLivedIDUploadDisabled + 1) & 0xEF | v3;
}

- (void)setHasEventOrigin:(BOOL)origin
{
  if (origin)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isLongLivedIDUploadDisabled + 1) = *(&self->_isLongLivedIDUploadDisabled + 1) & 0xF7 | v3;
}

- (void)setHasUserAggregationIdExpirationTimestampMs:(BOOL)ms
{
  if (ms)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isLongLivedIDUploadDisabled + 1) = *(&self->_isLongLivedIDUploadDisabled + 1) & 0xFB | v3;
}

- (void)setHasUserAggregationIdRotationTimestampMs:(BOOL)ms
{
  if (ms)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isLongLivedIDUploadDisabled + 1) = *(&self->_isLongLivedIDUploadDisabled + 1) & 0xFD | v3;
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v19.receiver = self;
  v19.super_class = ODDSiriSchemaODDClientEventMetadata;
  v5 = [(SISchemaInstrumentationMessage *)&v19 applySensitiveConditionsPolicy:policyCopy];
  oddId = [(ODDSiriSchemaODDClientEventMetadata *)self oddId];
  v7 = [oddId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(ODDSiriSchemaODDClientEventMetadata *)self deleteOddId];
  }

  aggregationInterval = [(ODDSiriSchemaODDClientEventMetadata *)self aggregationInterval];
  v10 = [aggregationInterval applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(ODDSiriSchemaODDClientEventMetadata *)self deleteAggregationInterval];
  }

  deviceAggregationId = [(ODDSiriSchemaODDClientEventMetadata *)self deviceAggregationId];
  v13 = [deviceAggregationId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
  {
    [(ODDSiriSchemaODDClientEventMetadata *)self deleteDeviceAggregationId];
  }

  userAggregationId = [(ODDSiriSchemaODDClientEventMetadata *)self userAggregationId];
  v16 = [userAggregationId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage4 = [v16 suppressMessage];

  if (suppressMessage4)
  {
    [(ODDSiriSchemaODDClientEventMetadata *)self deleteUserAggregationId];
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