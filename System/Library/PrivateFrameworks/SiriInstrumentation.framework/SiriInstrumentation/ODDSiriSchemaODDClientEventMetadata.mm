@interface ODDSiriSchemaODDClientEventMetadata
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (ODDSiriSchemaODDClientEventMetadata)initWithDictionary:(id)a3;
- (ODDSiriSchemaODDClientEventMetadata)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasEventOrigin:(BOOL)a3;
- (void)setHasIsLongLivedIDUploadDisabled:(BOOL)a3;
- (void)setHasUserAggregationIdExpirationTimestampMs:(BOOL)a3;
- (void)setHasUserAggregationIdRotationTimestampMs:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation ODDSiriSchemaODDClientEventMetadata

- (ODDSiriSchemaODDClientEventMetadata)initWithDictionary:(id)a3
{
  v4 = a3;
  v22.receiver = self;
  v22.super_class = ODDSiriSchemaODDClientEventMetadata;
  v5 = [(ODDSiriSchemaODDClientEventMetadata *)&v22 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"oddId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(ODDSiriSchemaODDClientEventMetadata *)v5 setOddId:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"eventTimestampInMsSince1970"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODDSiriSchemaODDClientEventMetadata setEventTimestampInMsSince1970:](v5, "setEventTimestampInMsSince1970:", [v8 unsignedLongLongValue]);
    }

    v9 = [v4 objectForKeyedSubscript:{@"aggregationInterval", v8}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [[ODDSiriSchemaODDTimeInterval alloc] initWithDictionary:v9];
      [(ODDSiriSchemaODDClientEventMetadata *)v5 setAggregationInterval:v10];
    }

    v11 = [v4 objectForKeyedSubscript:@"deviceAggregationId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [[SISchemaUUID alloc] initWithDictionary:v11];
      [(ODDSiriSchemaODDClientEventMetadata *)v5 setDeviceAggregationId:v12];
    }

    v13 = [v4 objectForKeyedSubscript:@"userAggregationIdRotationTimestampMs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODDSiriSchemaODDClientEventMetadata setUserAggregationIdRotationTimestampMs:](v5, "setUserAggregationIdRotationTimestampMs:", [v13 unsignedLongLongValue]);
    }

    v14 = [v4 objectForKeyedSubscript:@"userAggregationIdExpirationTimestampMs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODDSiriSchemaODDClientEventMetadata setUserAggregationIdExpirationTimestampMs:](v5, "setUserAggregationIdExpirationTimestampMs:", [v14 unsignedLongLongValue]);
    }

    v15 = [v4 objectForKeyedSubscript:@"eventOrigin"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODDSiriSchemaODDClientEventMetadata setEventOrigin:](v5, "setEventOrigin:", [v15 intValue]);
    }

    v16 = [v4 objectForKeyedSubscript:@"userAggregationId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [[SISchemaUUID alloc] initWithDictionary:v16];
      [(ODDSiriSchemaODDClientEventMetadata *)v5 setUserAggregationId:v17];
    }

    v18 = [v4 objectForKeyedSubscript:@"isLongLivedIDUploadDisabled"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODDSiriSchemaODDClientEventMetadata setIsLongLivedIDUploadDisabled:](v5, "setIsLongLivedIDUploadDisabled:", [v18 BOOLValue]);
    }

    v19 = v5;
  }

  return v5;
}

- (ODDSiriSchemaODDClientEventMetadata)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(ODDSiriSchemaODDClientEventMetadata *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(ODDSiriSchemaODDClientEventMetadata *)self dictionaryRepresentation];
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
    v4 = [(ODDSiriSchemaODDClientEventMetadata *)self aggregationInterval];
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
    v7 = [(ODDSiriSchemaODDClientEventMetadata *)self deviceAggregationId];
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

    [v3 setObject:v12 forKeyedSubscript:@"eventOrigin"];
    v10 = *(&self->_isLongLivedIDUploadDisabled + 1);
  }

  if (v10)
  {
    v13 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[ODDSiriSchemaODDClientEventMetadata eventTimestampInMsSince1970](self, "eventTimestampInMsSince1970")}];
    [v3 setObject:v13 forKeyedSubscript:@"eventTimestampInMsSince1970"];

    v10 = *(&self->_isLongLivedIDUploadDisabled + 1);
  }

  if ((v10 & 0x10) != 0)
  {
    v14 = [MEMORY[0x1E696AD98] numberWithBool:{-[ODDSiriSchemaODDClientEventMetadata isLongLivedIDUploadDisabled](self, "isLongLivedIDUploadDisabled")}];
    [v3 setObject:v14 forKeyedSubscript:@"isLongLivedIDUploadDisabled"];
  }

  if (self->_oddId)
  {
    v15 = [(ODDSiriSchemaODDClientEventMetadata *)self oddId];
    v16 = [v15 dictionaryRepresentation];
    if (v16)
    {
      [v3 setObject:v16 forKeyedSubscript:@"oddId"];
    }

    else
    {
      v17 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v17 forKeyedSubscript:@"oddId"];
    }
  }

  if (self->_userAggregationId)
  {
    v18 = [(ODDSiriSchemaODDClientEventMetadata *)self userAggregationId];
    v19 = [v18 dictionaryRepresentation];
    if (v19)
    {
      [v3 setObject:v19 forKeyedSubscript:@"userAggregationId"];
    }

    else
    {
      v20 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v20 forKeyedSubscript:@"userAggregationId"];
    }
  }

  v21 = *(&self->_isLongLivedIDUploadDisabled + 1);
  if ((v21 & 4) != 0)
  {
    v22 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[ODDSiriSchemaODDClientEventMetadata userAggregationIdExpirationTimestampMs](self, "userAggregationIdExpirationTimestampMs")}];
    [v3 setObject:v22 forKeyedSubscript:@"userAggregationIdExpirationTimestampMs"];

    v21 = *(&self->_isLongLivedIDUploadDisabled + 1);
  }

  if ((v21 & 2) != 0)
  {
    v23 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[ODDSiriSchemaODDClientEventMetadata userAggregationIdRotationTimestampMs](self, "userAggregationIdRotationTimestampMs")}];
    [v3 setObject:v23 forKeyedSubscript:@"userAggregationIdRotationTimestampMs"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_36;
  }

  v5 = [(ODDSiriSchemaODDClientEventMetadata *)self oddId];
  v6 = [v4 oddId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_35;
  }

  v7 = [(ODDSiriSchemaODDClientEventMetadata *)self oddId];
  if (v7)
  {
    v8 = v7;
    v9 = [(ODDSiriSchemaODDClientEventMetadata *)self oddId];
    v10 = [v4 oddId];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_36;
    }
  }

  else
  {
  }

  if (*(&self->_isLongLivedIDUploadDisabled + 1) != (v4[73] & 1))
  {
    goto LABEL_36;
  }

  if (*(&self->_isLongLivedIDUploadDisabled + 1))
  {
    eventTimestampInMsSince1970 = self->_eventTimestampInMsSince1970;
    if (eventTimestampInMsSince1970 != [v4 eventTimestampInMsSince1970])
    {
      goto LABEL_36;
    }
  }

  v5 = [(ODDSiriSchemaODDClientEventMetadata *)self aggregationInterval];
  v6 = [v4 aggregationInterval];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_35;
  }

  v13 = [(ODDSiriSchemaODDClientEventMetadata *)self aggregationInterval];
  if (v13)
  {
    v14 = v13;
    v15 = [(ODDSiriSchemaODDClientEventMetadata *)self aggregationInterval];
    v16 = [v4 aggregationInterval];
    v17 = [v15 isEqual:v16];

    if (!v17)
    {
      goto LABEL_36;
    }
  }

  else
  {
  }

  v5 = [(ODDSiriSchemaODDClientEventMetadata *)self deviceAggregationId];
  v6 = [v4 deviceAggregationId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_35;
  }

  v18 = [(ODDSiriSchemaODDClientEventMetadata *)self deviceAggregationId];
  if (v18)
  {
    v19 = v18;
    v20 = [(ODDSiriSchemaODDClientEventMetadata *)self deviceAggregationId];
    v21 = [v4 deviceAggregationId];
    v22 = [v20 isEqual:v21];

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
  v25 = v4[73];
  if (v24 != ((v25 >> 1) & 1))
  {
    goto LABEL_36;
  }

  if (v24)
  {
    userAggregationIdRotationTimestampMs = self->_userAggregationIdRotationTimestampMs;
    if (userAggregationIdRotationTimestampMs != [v4 userAggregationIdRotationTimestampMs])
    {
      goto LABEL_36;
    }

    v23 = *(&self->_isLongLivedIDUploadDisabled + 1);
    v25 = v4[73];
  }

  v27 = (v23 >> 2) & 1;
  if (v27 != ((v25 >> 2) & 1))
  {
    goto LABEL_36;
  }

  if (v27)
  {
    userAggregationIdExpirationTimestampMs = self->_userAggregationIdExpirationTimestampMs;
    if (userAggregationIdExpirationTimestampMs != [v4 userAggregationIdExpirationTimestampMs])
    {
      goto LABEL_36;
    }

    v23 = *(&self->_isLongLivedIDUploadDisabled + 1);
    v25 = v4[73];
  }

  v29 = (v23 >> 3) & 1;
  if (v29 != ((v25 >> 3) & 1))
  {
    goto LABEL_36;
  }

  if (v29)
  {
    eventOrigin = self->_eventOrigin;
    if (eventOrigin != [v4 eventOrigin])
    {
      goto LABEL_36;
    }
  }

  v5 = [(ODDSiriSchemaODDClientEventMetadata *)self userAggregationId];
  v6 = [v4 userAggregationId];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_35:

    goto LABEL_36;
  }

  v31 = [(ODDSiriSchemaODDClientEventMetadata *)self userAggregationId];
  if (v31)
  {
    v32 = v31;
    v33 = [(ODDSiriSchemaODDClientEventMetadata *)self userAggregationId];
    v34 = [v4 userAggregationId];
    v35 = [v33 isEqual:v34];

    if (!v35)
    {
      goto LABEL_36;
    }
  }

  else
  {
  }

  v38 = (*(&self->_isLongLivedIDUploadDisabled + 1) >> 4) & 1;
  if (v38 == ((v4[73] >> 4) & 1))
  {
    if (!v38 || (isLongLivedIDUploadDisabled = self->_isLongLivedIDUploadDisabled, isLongLivedIDUploadDisabled == [v4 isLongLivedIDUploadDisabled]))
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

- (void)writeTo:(id)a3
{
  v13 = a3;
  v4 = [(ODDSiriSchemaODDClientEventMetadata *)self oddId];

  if (v4)
  {
    v5 = [(ODDSiriSchemaODDClientEventMetadata *)self oddId];
    PBDataWriterWriteSubmessage();
  }

  if (*(&self->_isLongLivedIDUploadDisabled + 1))
  {
    PBDataWriterWriteUint64Field();
  }

  v6 = [(ODDSiriSchemaODDClientEventMetadata *)self aggregationInterval];

  if (v6)
  {
    v7 = [(ODDSiriSchemaODDClientEventMetadata *)self aggregationInterval];
    PBDataWriterWriteSubmessage();
  }

  v8 = [(ODDSiriSchemaODDClientEventMetadata *)self deviceAggregationId];

  if (v8)
  {
    v9 = [(ODDSiriSchemaODDClientEventMetadata *)self deviceAggregationId];
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
  v11 = [(ODDSiriSchemaODDClientEventMetadata *)self userAggregationId];

  if (v11)
  {
    v12 = [(ODDSiriSchemaODDClientEventMetadata *)self userAggregationId];
    PBDataWriterWriteSubmessage();
  }

  if ((*(&self->_isLongLivedIDUploadDisabled + 1) & 0x10) != 0)
  {
    PBDataWriterWriteBOOLField();
  }
}

- (void)setHasIsLongLivedIDUploadDisabled:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isLongLivedIDUploadDisabled + 1) = *(&self->_isLongLivedIDUploadDisabled + 1) & 0xEF | v3;
}

- (void)setHasEventOrigin:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isLongLivedIDUploadDisabled + 1) = *(&self->_isLongLivedIDUploadDisabled + 1) & 0xF7 | v3;
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

  *(&self->_isLongLivedIDUploadDisabled + 1) = *(&self->_isLongLivedIDUploadDisabled + 1) & 0xFB | v3;
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

  *(&self->_isLongLivedIDUploadDisabled + 1) = *(&self->_isLongLivedIDUploadDisabled + 1) & 0xFD | v3;
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = ODDSiriSchemaODDClientEventMetadata;
  v5 = [(SISchemaInstrumentationMessage *)&v19 applySensitiveConditionsPolicy:v4];
  v6 = [(ODDSiriSchemaODDClientEventMetadata *)self oddId];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(ODDSiriSchemaODDClientEventMetadata *)self deleteOddId];
  }

  v9 = [(ODDSiriSchemaODDClientEventMetadata *)self aggregationInterval];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(ODDSiriSchemaODDClientEventMetadata *)self deleteAggregationInterval];
  }

  v12 = [(ODDSiriSchemaODDClientEventMetadata *)self deviceAggregationId];
  v13 = [v12 applySensitiveConditionsPolicy:v4];
  v14 = [v13 suppressMessage];

  if (v14)
  {
    [(ODDSiriSchemaODDClientEventMetadata *)self deleteDeviceAggregationId];
  }

  v15 = [(ODDSiriSchemaODDClientEventMetadata *)self userAggregationId];
  v16 = [v15 applySensitiveConditionsPolicy:v4];
  v17 = [v16 suppressMessage];

  if (v17)
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