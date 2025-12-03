@interface ODFUNNELSiriSchemaODFUNNELClientEventMetadata
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (ODFUNNELSiriSchemaODFUNNELClientEventMetadata)initWithDictionary:(id)dictionary;
- (ODFUNNELSiriSchemaODFUNNELClientEventMetadata)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasUserAggregationIdExpirationTimestampMs:(BOOL)ms;
- (void)setHasUserAggregationIdRotationTimestampMs:(BOOL)ms;
- (void)writeTo:(id)to;
@end

@implementation ODFUNNELSiriSchemaODFUNNELClientEventMetadata

- (ODFUNNELSiriSchemaODFUNNELClientEventMetadata)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v17.receiver = self;
  v17.super_class = ODFUNNELSiriSchemaODFUNNELClientEventMetadata;
  v5 = [(ODFUNNELSiriSchemaODFUNNELClientEventMetadata *)&v17 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"odfunnelId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(ODFUNNELSiriSchemaODFUNNELClientEventMetadata *)v5 setOdfunnelId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"eventTimestampInMsSince1970"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODFUNNELSiriSchemaODFUNNELClientEventMetadata setEventTimestampInMsSince1970:](v5, "setEventTimestampInMsSince1970:", [v8 unsignedLongLongValue]);
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"aggregationInterval"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [[ODDSiriSchemaODDTimeInterval alloc] initWithDictionary:v9];
      [(ODFUNNELSiriSchemaODFUNNELClientEventMetadata *)v5 setAggregationInterval:v10];
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"deviceAggregationId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [[SISchemaUUID alloc] initWithDictionary:v11];
      [(ODFUNNELSiriSchemaODFUNNELClientEventMetadata *)v5 setDeviceAggregationId:v12];
    }

    v13 = [dictionaryCopy objectForKeyedSubscript:@"userAggregationIdRotationTimestampMs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODFUNNELSiriSchemaODFUNNELClientEventMetadata setUserAggregationIdRotationTimestampMs:](v5, "setUserAggregationIdRotationTimestampMs:", [v13 unsignedLongLongValue]);
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"userAggregationIdExpirationTimestampMs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODFUNNELSiriSchemaODFUNNELClientEventMetadata setUserAggregationIdExpirationTimestampMs:](v5, "setUserAggregationIdExpirationTimestampMs:", [v14 unsignedLongLongValue]);
    }

    v15 = v5;
  }

  return v5;
}

- (ODFUNNELSiriSchemaODFUNNELClientEventMetadata)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(ODFUNNELSiriSchemaODFUNNELClientEventMetadata *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(ODFUNNELSiriSchemaODFUNNELClientEventMetadata *)self dictionaryRepresentation];
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
    aggregationInterval = [(ODFUNNELSiriSchemaODFUNNELClientEventMetadata *)self aggregationInterval];
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
    deviceAggregationId = [(ODFUNNELSiriSchemaODFUNNELClientEventMetadata *)self deviceAggregationId];
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

  if (*&self->_has)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[ODFUNNELSiriSchemaODFUNNELClientEventMetadata eventTimestampInMsSince1970](self, "eventTimestampInMsSince1970")}];
    [dictionary setObject:v10 forKeyedSubscript:@"eventTimestampInMsSince1970"];
  }

  if (self->_odfunnelId)
  {
    odfunnelId = [(ODFUNNELSiriSchemaODFUNNELClientEventMetadata *)self odfunnelId];
    dictionaryRepresentation3 = [odfunnelId dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"odfunnelId"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"odfunnelId"];
    }
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    v15 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[ODFUNNELSiriSchemaODFUNNELClientEventMetadata userAggregationIdExpirationTimestampMs](self, "userAggregationIdExpirationTimestampMs")}];
    [dictionary setObject:v15 forKeyedSubscript:@"userAggregationIdExpirationTimestampMs"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v16 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[ODFUNNELSiriSchemaODFUNNELClientEventMetadata userAggregationIdRotationTimestampMs](self, "userAggregationIdRotationTimestampMs")}];
    [dictionary setObject:v16 forKeyedSubscript:@"userAggregationIdRotationTimestampMs"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(SISchemaUUID *)self->_odfunnelId hash];
  if (*&self->_has)
  {
    v4 = 2654435761u * self->_eventTimestampInMsSince1970;
  }

  else
  {
    v4 = 0;
  }

  v5 = [(ODDSiriSchemaODDTimeInterval *)self->_aggregationInterval hash];
  v6 = [(SISchemaUUID *)self->_deviceAggregationId hash];
  if ((*&self->_has & 2) != 0)
  {
    v7 = 2654435761u * self->_userAggregationIdRotationTimestampMs;
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
  v8 = 2654435761u * self->_userAggregationIdExpirationTimestampMs;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_20;
  }

  odfunnelId = [(ODFUNNELSiriSchemaODFUNNELClientEventMetadata *)self odfunnelId];
  odfunnelId2 = [equalCopy odfunnelId];
  if ((odfunnelId != 0) == (odfunnelId2 == 0))
  {
    goto LABEL_19;
  }

  odfunnelId3 = [(ODFUNNELSiriSchemaODFUNNELClientEventMetadata *)self odfunnelId];
  if (odfunnelId3)
  {
    v8 = odfunnelId3;
    odfunnelId4 = [(ODFUNNELSiriSchemaODFUNNELClientEventMetadata *)self odfunnelId];
    odfunnelId5 = [equalCopy odfunnelId];
    v11 = [odfunnelId4 isEqual:odfunnelId5];

    if (!v11)
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
    eventTimestampInMsSince1970 = self->_eventTimestampInMsSince1970;
    if (eventTimestampInMsSince1970 != [equalCopy eventTimestampInMsSince1970])
    {
      goto LABEL_20;
    }
  }

  odfunnelId = [(ODFUNNELSiriSchemaODFUNNELClientEventMetadata *)self aggregationInterval];
  odfunnelId2 = [equalCopy aggregationInterval];
  if ((odfunnelId != 0) == (odfunnelId2 == 0))
  {
    goto LABEL_19;
  }

  aggregationInterval = [(ODFUNNELSiriSchemaODFUNNELClientEventMetadata *)self aggregationInterval];
  if (aggregationInterval)
  {
    v14 = aggregationInterval;
    aggregationInterval2 = [(ODFUNNELSiriSchemaODFUNNELClientEventMetadata *)self aggregationInterval];
    aggregationInterval3 = [equalCopy aggregationInterval];
    v17 = [aggregationInterval2 isEqual:aggregationInterval3];

    if (!v17)
    {
      goto LABEL_20;
    }
  }

  else
  {
  }

  odfunnelId = [(ODFUNNELSiriSchemaODFUNNELClientEventMetadata *)self deviceAggregationId];
  odfunnelId2 = [equalCopy deviceAggregationId];
  if ((odfunnelId != 0) == (odfunnelId2 == 0))
  {
LABEL_19:

    goto LABEL_20;
  }

  deviceAggregationId = [(ODFUNNELSiriSchemaODFUNNELClientEventMetadata *)self deviceAggregationId];
  if (deviceAggregationId)
  {
    v19 = deviceAggregationId;
    deviceAggregationId2 = [(ODFUNNELSiriSchemaODFUNNELClientEventMetadata *)self deviceAggregationId];
    deviceAggregationId3 = [equalCopy deviceAggregationId];
    v22 = [deviceAggregationId2 isEqual:deviceAggregationId3];

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
      userAggregationIdRotationTimestampMs = self->_userAggregationIdRotationTimestampMs;
      if (userAggregationIdRotationTimestampMs != [equalCopy userAggregationIdRotationTimestampMs])
      {
        goto LABEL_20;
      }

      has = self->_has;
      v27 = equalCopy[56];
    }

    v29 = (*&has >> 2) & 1;
    if (v29 == ((v27 >> 2) & 1))
    {
      if (!v29 || (userAggregationIdExpirationTimestampMs = self->_userAggregationIdExpirationTimestampMs, userAggregationIdExpirationTimestampMs == [equalCopy userAggregationIdExpirationTimestampMs]))
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
  odfunnelId = [(ODFUNNELSiriSchemaODFUNNELClientEventMetadata *)self odfunnelId];

  if (odfunnelId)
  {
    odfunnelId2 = [(ODFUNNELSiriSchemaODFUNNELClientEventMetadata *)self odfunnelId];
    PBDataWriterWriteSubmessage();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteUint64Field();
  }

  aggregationInterval = [(ODFUNNELSiriSchemaODFUNNELClientEventMetadata *)self aggregationInterval];

  if (aggregationInterval)
  {
    aggregationInterval2 = [(ODFUNNELSiriSchemaODFUNNELClientEventMetadata *)self aggregationInterval];
    PBDataWriterWriteSubmessage();
  }

  deviceAggregationId = [(ODFUNNELSiriSchemaODFUNNELClientEventMetadata *)self deviceAggregationId];

  if (deviceAggregationId)
  {
    deviceAggregationId2 = [(ODFUNNELSiriSchemaODFUNNELClientEventMetadata *)self deviceAggregationId];
    PBDataWriterWriteSubmessage();
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    PBDataWriterWriteUint64Field();
    has = self->_has;
  }

  v11 = toCopy;
  if ((has & 4) != 0)
  {
    PBDataWriterWriteUint64Field();
    v11 = toCopy;
  }
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

  *&self->_has = *&self->_has & 0xFB | v3;
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

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v16.receiver = self;
  v16.super_class = ODFUNNELSiriSchemaODFUNNELClientEventMetadata;
  v5 = [(SISchemaInstrumentationMessage *)&v16 applySensitiveConditionsPolicy:policyCopy];
  odfunnelId = [(ODFUNNELSiriSchemaODFUNNELClientEventMetadata *)self odfunnelId];
  v7 = [odfunnelId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(ODFUNNELSiriSchemaODFUNNELClientEventMetadata *)self deleteOdfunnelId];
  }

  aggregationInterval = [(ODFUNNELSiriSchemaODFUNNELClientEventMetadata *)self aggregationInterval];
  v10 = [aggregationInterval applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(ODFUNNELSiriSchemaODFUNNELClientEventMetadata *)self deleteAggregationInterval];
  }

  deviceAggregationId = [(ODFUNNELSiriSchemaODFUNNELClientEventMetadata *)self deviceAggregationId];
  v13 = [deviceAggregationId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
  {
    [(ODFUNNELSiriSchemaODFUNNELClientEventMetadata *)self deleteDeviceAggregationId];
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