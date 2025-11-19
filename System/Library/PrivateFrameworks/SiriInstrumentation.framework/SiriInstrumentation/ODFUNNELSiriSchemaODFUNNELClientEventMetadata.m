@interface ODFUNNELSiriSchemaODFUNNELClientEventMetadata
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (ODFUNNELSiriSchemaODFUNNELClientEventMetadata)initWithDictionary:(id)a3;
- (ODFUNNELSiriSchemaODFUNNELClientEventMetadata)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasUserAggregationIdExpirationTimestampMs:(BOOL)a3;
- (void)setHasUserAggregationIdRotationTimestampMs:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation ODFUNNELSiriSchemaODFUNNELClientEventMetadata

- (ODFUNNELSiriSchemaODFUNNELClientEventMetadata)initWithDictionary:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = ODFUNNELSiriSchemaODFUNNELClientEventMetadata;
  v5 = [(ODFUNNELSiriSchemaODFUNNELClientEventMetadata *)&v17 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"odfunnelId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(ODFUNNELSiriSchemaODFUNNELClientEventMetadata *)v5 setOdfunnelId:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"eventTimestampInMsSince1970"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODFUNNELSiriSchemaODFUNNELClientEventMetadata setEventTimestampInMsSince1970:](v5, "setEventTimestampInMsSince1970:", [v8 unsignedLongLongValue]);
    }

    v9 = [v4 objectForKeyedSubscript:@"aggregationInterval"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [[ODDSiriSchemaODDTimeInterval alloc] initWithDictionary:v9];
      [(ODFUNNELSiriSchemaODFUNNELClientEventMetadata *)v5 setAggregationInterval:v10];
    }

    v11 = [v4 objectForKeyedSubscript:@"deviceAggregationId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [[SISchemaUUID alloc] initWithDictionary:v11];
      [(ODFUNNELSiriSchemaODFUNNELClientEventMetadata *)v5 setDeviceAggregationId:v12];
    }

    v13 = [v4 objectForKeyedSubscript:@"userAggregationIdRotationTimestampMs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODFUNNELSiriSchemaODFUNNELClientEventMetadata setUserAggregationIdRotationTimestampMs:](v5, "setUserAggregationIdRotationTimestampMs:", [v13 unsignedLongLongValue]);
    }

    v14 = [v4 objectForKeyedSubscript:@"userAggregationIdExpirationTimestampMs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODFUNNELSiriSchemaODFUNNELClientEventMetadata setUserAggregationIdExpirationTimestampMs:](v5, "setUserAggregationIdExpirationTimestampMs:", [v14 unsignedLongLongValue]);
    }

    v15 = v5;
  }

  return v5;
}

- (ODFUNNELSiriSchemaODFUNNELClientEventMetadata)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(ODFUNNELSiriSchemaODFUNNELClientEventMetadata *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(ODFUNNELSiriSchemaODFUNNELClientEventMetadata *)self dictionaryRepresentation];
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
  if (self->_aggregationInterval)
  {
    v4 = [(ODFUNNELSiriSchemaODFUNNELClientEventMetadata *)self aggregationInterval];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"aggregationInterval"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"aggregationInterval"];
    }
  }

  if (self->_deviceAggregationId)
  {
    v7 = [(ODFUNNELSiriSchemaODFUNNELClientEventMetadata *)self deviceAggregationId];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"deviceAggregationId"];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v9 forKeyedSubscript:@"deviceAggregationId"];
    }
  }

  if (*&self->_has)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[ODFUNNELSiriSchemaODFUNNELClientEventMetadata eventTimestampInMsSince1970](self, "eventTimestampInMsSince1970")}];
    [v3 setObject:v10 forKeyedSubscript:@"eventTimestampInMsSince1970"];
  }

  if (self->_odfunnelId)
  {
    v11 = [(ODFUNNELSiriSchemaODFUNNELClientEventMetadata *)self odfunnelId];
    v12 = [v11 dictionaryRepresentation];
    if (v12)
    {
      [v3 setObject:v12 forKeyedSubscript:@"odfunnelId"];
    }

    else
    {
      v13 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v13 forKeyedSubscript:@"odfunnelId"];
    }
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    v15 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[ODFUNNELSiriSchemaODFUNNELClientEventMetadata userAggregationIdExpirationTimestampMs](self, "userAggregationIdExpirationTimestampMs")}];
    [v3 setObject:v15 forKeyedSubscript:@"userAggregationIdExpirationTimestampMs"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v16 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[ODFUNNELSiriSchemaODFUNNELClientEventMetadata userAggregationIdRotationTimestampMs](self, "userAggregationIdRotationTimestampMs")}];
    [v3 setObject:v16 forKeyedSubscript:@"userAggregationIdRotationTimestampMs"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_20;
  }

  v5 = [(ODFUNNELSiriSchemaODFUNNELClientEventMetadata *)self odfunnelId];
  v6 = [v4 odfunnelId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_19;
  }

  v7 = [(ODFUNNELSiriSchemaODFUNNELClientEventMetadata *)self odfunnelId];
  if (v7)
  {
    v8 = v7;
    v9 = [(ODFUNNELSiriSchemaODFUNNELClientEventMetadata *)self odfunnelId];
    v10 = [v4 odfunnelId];
    v11 = [v9 isEqual:v10];

    if (!v11)
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
    eventTimestampInMsSince1970 = self->_eventTimestampInMsSince1970;
    if (eventTimestampInMsSince1970 != [v4 eventTimestampInMsSince1970])
    {
      goto LABEL_20;
    }
  }

  v5 = [(ODFUNNELSiriSchemaODFUNNELClientEventMetadata *)self aggregationInterval];
  v6 = [v4 aggregationInterval];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_19;
  }

  v13 = [(ODFUNNELSiriSchemaODFUNNELClientEventMetadata *)self aggregationInterval];
  if (v13)
  {
    v14 = v13;
    v15 = [(ODFUNNELSiriSchemaODFUNNELClientEventMetadata *)self aggregationInterval];
    v16 = [v4 aggregationInterval];
    v17 = [v15 isEqual:v16];

    if (!v17)
    {
      goto LABEL_20;
    }
  }

  else
  {
  }

  v5 = [(ODFUNNELSiriSchemaODFUNNELClientEventMetadata *)self deviceAggregationId];
  v6 = [v4 deviceAggregationId];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_19:

    goto LABEL_20;
  }

  v18 = [(ODFUNNELSiriSchemaODFUNNELClientEventMetadata *)self deviceAggregationId];
  if (v18)
  {
    v19 = v18;
    v20 = [(ODFUNNELSiriSchemaODFUNNELClientEventMetadata *)self deviceAggregationId];
    v21 = [v4 deviceAggregationId];
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
      userAggregationIdRotationTimestampMs = self->_userAggregationIdRotationTimestampMs;
      if (userAggregationIdRotationTimestampMs != [v4 userAggregationIdRotationTimestampMs])
      {
        goto LABEL_20;
      }

      has = self->_has;
      v27 = v4[56];
    }

    v29 = (*&has >> 2) & 1;
    if (v29 == ((v27 >> 2) & 1))
    {
      if (!v29 || (userAggregationIdExpirationTimestampMs = self->_userAggregationIdExpirationTimestampMs, userAggregationIdExpirationTimestampMs == [v4 userAggregationIdExpirationTimestampMs]))
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
  v12 = a3;
  v4 = [(ODFUNNELSiriSchemaODFUNNELClientEventMetadata *)self odfunnelId];

  if (v4)
  {
    v5 = [(ODFUNNELSiriSchemaODFUNNELClientEventMetadata *)self odfunnelId];
    PBDataWriterWriteSubmessage();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteUint64Field();
  }

  v6 = [(ODFUNNELSiriSchemaODFUNNELClientEventMetadata *)self aggregationInterval];

  if (v6)
  {
    v7 = [(ODFUNNELSiriSchemaODFUNNELClientEventMetadata *)self aggregationInterval];
    PBDataWriterWriteSubmessage();
  }

  v8 = [(ODFUNNELSiriSchemaODFUNNELClientEventMetadata *)self deviceAggregationId];

  if (v8)
  {
    v9 = [(ODFUNNELSiriSchemaODFUNNELClientEventMetadata *)self deviceAggregationId];
    PBDataWriterWriteSubmessage();
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    PBDataWriterWriteUint64Field();
    has = self->_has;
  }

  v11 = v12;
  if ((has & 4) != 0)
  {
    PBDataWriterWriteUint64Field();
    v11 = v12;
  }
}

- (void)setHasUserAggregationIdExpirationTimestampMs:(BOOL)a3
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

- (void)setHasUserAggregationIdRotationTimestampMs:(BOOL)a3
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
  v4 = a3;
  v16.receiver = self;
  v16.super_class = ODFUNNELSiriSchemaODFUNNELClientEventMetadata;
  v5 = [(SISchemaInstrumentationMessage *)&v16 applySensitiveConditionsPolicy:v4];
  v6 = [(ODFUNNELSiriSchemaODFUNNELClientEventMetadata *)self odfunnelId];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(ODFUNNELSiriSchemaODFUNNELClientEventMetadata *)self deleteOdfunnelId];
  }

  v9 = [(ODFUNNELSiriSchemaODFUNNELClientEventMetadata *)self aggregationInterval];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(ODFUNNELSiriSchemaODFUNNELClientEventMetadata *)self deleteAggregationInterval];
  }

  v12 = [(ODFUNNELSiriSchemaODFUNNELClientEventMetadata *)self deviceAggregationId];
  v13 = [v12 applySensitiveConditionsPolicy:v4];
  v14 = [v13 suppressMessage];

  if (v14)
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