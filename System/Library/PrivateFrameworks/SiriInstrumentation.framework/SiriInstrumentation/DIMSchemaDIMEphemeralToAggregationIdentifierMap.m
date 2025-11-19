@interface DIMSchemaDIMEphemeralToAggregationIdentifierMap
- (BOOL)isEqual:(id)a3;
- (DIMSchemaDIMEphemeralToAggregationIdentifierMap)initWithDictionary:(id)a3;
- (DIMSchemaDIMEphemeralToAggregationIdentifierMap)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasUserAggregationIdExpirationTimestampMs:(BOOL)a3;
- (void)setHasUserSamplingIdExpirationTimestampMs:(BOOL)a3;
- (void)setHasUserSamplingIdRotationTimestampMs:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation DIMSchemaDIMEphemeralToAggregationIdentifierMap

- (DIMSchemaDIMEphemeralToAggregationIdentifierMap)initWithDictionary:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = DIMSchemaDIMEphemeralToAggregationIdentifierMap;
  v5 = [(DIMSchemaDIMEphemeralToAggregationIdentifierMap *)&v20 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"userEphemeralId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(DIMSchemaDIMEphemeralToAggregationIdentifierMap *)v5 setUserEphemeralId:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"userAggregationId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[SISchemaUUID alloc] initWithDictionary:v8];
      [(DIMSchemaDIMEphemeralToAggregationIdentifierMap *)v5 setUserAggregationId:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"userAggregationIdRotationTimestampMs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[DIMSchemaDIMEphemeralToAggregationIdentifierMap setUserAggregationIdRotationTimestampMs:](v5, "setUserAggregationIdRotationTimestampMs:", [v10 unsignedLongLongValue]);
    }

    v11 = [v4 objectForKeyedSubscript:@"userAggregationIdExpirationTimestampMs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[DIMSchemaDIMEphemeralToAggregationIdentifierMap setUserAggregationIdExpirationTimestampMs:](v5, "setUserAggregationIdExpirationTimestampMs:", [v11 unsignedLongLongValue]);
    }

    v12 = [v4 objectForKeyedSubscript:@"deviceAggregationId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[SISchemaUUID alloc] initWithDictionary:v12];
      [(DIMSchemaDIMEphemeralToAggregationIdentifierMap *)v5 setDeviceAggregationId:v13];
    }

    v14 = [v4 objectForKeyedSubscript:@"userSamplingId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [[SISchemaUUID alloc] initWithDictionary:v14];
      [(DIMSchemaDIMEphemeralToAggregationIdentifierMap *)v5 setUserSamplingId:v15];
    }

    v16 = [v4 objectForKeyedSubscript:@"userSamplingIdRotationTimestampMs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[DIMSchemaDIMEphemeralToAggregationIdentifierMap setUserSamplingIdRotationTimestampMs:](v5, "setUserSamplingIdRotationTimestampMs:", [v16 unsignedLongLongValue]);
    }

    v17 = [v4 objectForKeyedSubscript:@"userSamplingIdExpirationTimestampMs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[DIMSchemaDIMEphemeralToAggregationIdentifierMap setUserSamplingIdExpirationTimestampMs:](v5, "setUserSamplingIdExpirationTimestampMs:", [v17 unsignedLongLongValue]);
    }

    v18 = v5;
  }

  return v5;
}

- (DIMSchemaDIMEphemeralToAggregationIdentifierMap)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(DIMSchemaDIMEphemeralToAggregationIdentifierMap *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(DIMSchemaDIMEphemeralToAggregationIdentifierMap *)self dictionaryRepresentation];
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
  if (self->_deviceAggregationId)
  {
    v4 = [(DIMSchemaDIMEphemeralToAggregationIdentifierMap *)self deviceAggregationId];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"deviceAggregationId"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"deviceAggregationId"];
    }
  }

  if (self->_userAggregationId)
  {
    v7 = [(DIMSchemaDIMEphemeralToAggregationIdentifierMap *)self userAggregationId];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"userAggregationId"];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v9 forKeyedSubscript:@"userAggregationId"];
    }
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[DIMSchemaDIMEphemeralToAggregationIdentifierMap userAggregationIdExpirationTimestampMs](self, "userAggregationIdExpirationTimestampMs")}];
    [v3 setObject:v11 forKeyedSubscript:@"userAggregationIdExpirationTimestampMs"];

    has = self->_has;
  }

  if (has)
  {
    v12 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[DIMSchemaDIMEphemeralToAggregationIdentifierMap userAggregationIdRotationTimestampMs](self, "userAggregationIdRotationTimestampMs")}];
    [v3 setObject:v12 forKeyedSubscript:@"userAggregationIdRotationTimestampMs"];
  }

  if (self->_userEphemeralId)
  {
    v13 = [(DIMSchemaDIMEphemeralToAggregationIdentifierMap *)self userEphemeralId];
    v14 = [v13 dictionaryRepresentation];
    if (v14)
    {
      [v3 setObject:v14 forKeyedSubscript:@"userEphemeralId"];
    }

    else
    {
      v15 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v15 forKeyedSubscript:@"userEphemeralId"];
    }
  }

  if (self->_userSamplingId)
  {
    v16 = [(DIMSchemaDIMEphemeralToAggregationIdentifierMap *)self userSamplingId];
    v17 = [v16 dictionaryRepresentation];
    if (v17)
    {
      [v3 setObject:v17 forKeyedSubscript:@"userSamplingId"];
    }

    else
    {
      v18 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v18 forKeyedSubscript:@"userSamplingId"];
    }
  }

  v19 = self->_has;
  if ((v19 & 8) != 0)
  {
    v20 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[DIMSchemaDIMEphemeralToAggregationIdentifierMap userSamplingIdExpirationTimestampMs](self, "userSamplingIdExpirationTimestampMs")}];
    [v3 setObject:v20 forKeyedSubscript:@"userSamplingIdExpirationTimestampMs"];

    v19 = self->_has;
  }

  if ((v19 & 4) != 0)
  {
    v21 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[DIMSchemaDIMEphemeralToAggregationIdentifierMap userSamplingIdRotationTimestampMs](self, "userSamplingIdRotationTimestampMs")}];
    [v3 setObject:v21 forKeyedSubscript:@"userSamplingIdRotationTimestampMs"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_29;
  }

  v5 = [(DIMSchemaDIMEphemeralToAggregationIdentifierMap *)self userEphemeralId];
  v6 = [v4 userEphemeralId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_28;
  }

  v7 = [(DIMSchemaDIMEphemeralToAggregationIdentifierMap *)self userEphemeralId];
  if (v7)
  {
    v8 = v7;
    v9 = [(DIMSchemaDIMEphemeralToAggregationIdentifierMap *)self userEphemeralId];
    v10 = [v4 userEphemeralId];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_29;
    }
  }

  else
  {
  }

  v5 = [(DIMSchemaDIMEphemeralToAggregationIdentifierMap *)self userAggregationId];
  v6 = [v4 userAggregationId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_28;
  }

  v12 = [(DIMSchemaDIMEphemeralToAggregationIdentifierMap *)self userAggregationId];
  if (v12)
  {
    v13 = v12;
    v14 = [(DIMSchemaDIMEphemeralToAggregationIdentifierMap *)self userAggregationId];
    v15 = [v4 userAggregationId];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_29;
    }
  }

  else
  {
  }

  has = self->_has;
  v18 = v4[72];
  if ((*&has & 1) != (v18 & 1))
  {
    goto LABEL_29;
  }

  if (*&has)
  {
    userAggregationIdRotationTimestampMs = self->_userAggregationIdRotationTimestampMs;
    if (userAggregationIdRotationTimestampMs != [v4 userAggregationIdRotationTimestampMs])
    {
      goto LABEL_29;
    }

    has = self->_has;
    v18 = v4[72];
  }

  v20 = (*&has >> 1) & 1;
  if (v20 != ((v18 >> 1) & 1))
  {
    goto LABEL_29;
  }

  if (v20)
  {
    userAggregationIdExpirationTimestampMs = self->_userAggregationIdExpirationTimestampMs;
    if (userAggregationIdExpirationTimestampMs != [v4 userAggregationIdExpirationTimestampMs])
    {
      goto LABEL_29;
    }
  }

  v5 = [(DIMSchemaDIMEphemeralToAggregationIdentifierMap *)self deviceAggregationId];
  v6 = [v4 deviceAggregationId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_28;
  }

  v22 = [(DIMSchemaDIMEphemeralToAggregationIdentifierMap *)self deviceAggregationId];
  if (v22)
  {
    v23 = v22;
    v24 = [(DIMSchemaDIMEphemeralToAggregationIdentifierMap *)self deviceAggregationId];
    v25 = [v4 deviceAggregationId];
    v26 = [v24 isEqual:v25];

    if (!v26)
    {
      goto LABEL_29;
    }
  }

  else
  {
  }

  v5 = [(DIMSchemaDIMEphemeralToAggregationIdentifierMap *)self userSamplingId];
  v6 = [v4 userSamplingId];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_28:

    goto LABEL_29;
  }

  v27 = [(DIMSchemaDIMEphemeralToAggregationIdentifierMap *)self userSamplingId];
  if (v27)
  {
    v28 = v27;
    v29 = [(DIMSchemaDIMEphemeralToAggregationIdentifierMap *)self userSamplingId];
    v30 = [v4 userSamplingId];
    v31 = [v29 isEqual:v30];

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
  v36 = v4[72];
  if (v35 == ((v36 >> 2) & 1))
  {
    if (v35)
    {
      userSamplingIdRotationTimestampMs = self->_userSamplingIdRotationTimestampMs;
      if (userSamplingIdRotationTimestampMs != [v4 userSamplingIdRotationTimestampMs])
      {
        goto LABEL_29;
      }

      v34 = self->_has;
      v36 = v4[72];
    }

    v38 = (*&v34 >> 3) & 1;
    if (v38 == ((v36 >> 3) & 1))
    {
      if (!v38 || (userSamplingIdExpirationTimestampMs = self->_userSamplingIdExpirationTimestampMs, userSamplingIdExpirationTimestampMs == [v4 userSamplingIdExpirationTimestampMs]))
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

- (void)writeTo:(id)a3
{
  v15 = a3;
  v4 = [(DIMSchemaDIMEphemeralToAggregationIdentifierMap *)self userEphemeralId];

  if (v4)
  {
    v5 = [(DIMSchemaDIMEphemeralToAggregationIdentifierMap *)self userEphemeralId];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(DIMSchemaDIMEphemeralToAggregationIdentifierMap *)self userAggregationId];

  if (v6)
  {
    v7 = [(DIMSchemaDIMEphemeralToAggregationIdentifierMap *)self userAggregationId];
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

  v9 = [(DIMSchemaDIMEphemeralToAggregationIdentifierMap *)self deviceAggregationId];

  if (v9)
  {
    v10 = [(DIMSchemaDIMEphemeralToAggregationIdentifierMap *)self deviceAggregationId];
    PBDataWriterWriteSubmessage();
  }

  v11 = [(DIMSchemaDIMEphemeralToAggregationIdentifierMap *)self userSamplingId];

  if (v11)
  {
    v12 = [(DIMSchemaDIMEphemeralToAggregationIdentifierMap *)self userSamplingId];
    PBDataWriterWriteSubmessage();
  }

  v13 = self->_has;
  if ((v13 & 4) != 0)
  {
    PBDataWriterWriteUint64Field();
    v13 = self->_has;
  }

  v14 = v15;
  if ((v13 & 8) != 0)
  {
    PBDataWriterWriteUint64Field();
    v14 = v15;
  }
}

- (void)setHasUserSamplingIdExpirationTimestampMs:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasUserSamplingIdRotationTimestampMs:(BOOL)a3
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

- (void)setHasUserAggregationIdExpirationTimestampMs:(BOOL)a3
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
  v19.receiver = self;
  v19.super_class = DIMSchemaDIMEphemeralToAggregationIdentifierMap;
  v5 = [(SISchemaInstrumentationMessage *)&v19 applySensitiveConditionsPolicy:v4];
  v6 = [(DIMSchemaDIMEphemeralToAggregationIdentifierMap *)self userEphemeralId];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(DIMSchemaDIMEphemeralToAggregationIdentifierMap *)self deleteUserEphemeralId];
  }

  v9 = [(DIMSchemaDIMEphemeralToAggregationIdentifierMap *)self userAggregationId];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(DIMSchemaDIMEphemeralToAggregationIdentifierMap *)self deleteUserAggregationId];
  }

  v12 = [(DIMSchemaDIMEphemeralToAggregationIdentifierMap *)self deviceAggregationId];
  v13 = [v12 applySensitiveConditionsPolicy:v4];
  v14 = [v13 suppressMessage];

  if (v14)
  {
    [(DIMSchemaDIMEphemeralToAggregationIdentifierMap *)self deleteDeviceAggregationId];
  }

  v15 = [(DIMSchemaDIMEphemeralToAggregationIdentifierMap *)self userSamplingId];
  v16 = [v15 applySensitiveConditionsPolicy:v4];
  v17 = [v16 suppressMessage];

  if (v17)
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