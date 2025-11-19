@interface ORCHSchemaORCHMUXEphemeralToAggregationIdentifierMap
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (ORCHSchemaORCHMUXEphemeralToAggregationIdentifierMap)initWithDictionary:(id)a3;
- (ORCHSchemaORCHMUXEphemeralToAggregationIdentifierMap)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasUserAggregationIdExpirationTimestampMs:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation ORCHSchemaORCHMUXEphemeralToAggregationIdentifierMap

- (ORCHSchemaORCHMUXEphemeralToAggregationIdentifierMap)initWithDictionary:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = ORCHSchemaORCHMUXEphemeralToAggregationIdentifierMap;
  v5 = [(ORCHSchemaORCHMUXEphemeralToAggregationIdentifierMap *)&v16 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"userEphemeralId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(ORCHSchemaORCHMUXEphemeralToAggregationIdentifierMap *)v5 setUserEphemeralId:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"userAggregationId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[SISchemaUUID alloc] initWithDictionary:v8];
      [(ORCHSchemaORCHMUXEphemeralToAggregationIdentifierMap *)v5 setUserAggregationId:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"userAggregationIdRotationTimestampMs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ORCHSchemaORCHMUXEphemeralToAggregationIdentifierMap setUserAggregationIdRotationTimestampMs:](v5, "setUserAggregationIdRotationTimestampMs:", [v10 unsignedLongLongValue]);
    }

    v11 = [v4 objectForKeyedSubscript:@"userAggregationIdExpirationTimestampMs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ORCHSchemaORCHMUXEphemeralToAggregationIdentifierMap setUserAggregationIdExpirationTimestampMs:](v5, "setUserAggregationIdExpirationTimestampMs:", [v11 unsignedLongLongValue]);
    }

    v12 = [v4 objectForKeyedSubscript:@"deviceAggregationId"];
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

- (ORCHSchemaORCHMUXEphemeralToAggregationIdentifierMap)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(ORCHSchemaORCHMUXEphemeralToAggregationIdentifierMap *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(ORCHSchemaORCHMUXEphemeralToAggregationIdentifierMap *)self dictionaryRepresentation];
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
    v4 = [(ORCHSchemaORCHMUXEphemeralToAggregationIdentifierMap *)self deviceAggregationId];
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
    v7 = [(ORCHSchemaORCHMUXEphemeralToAggregationIdentifierMap *)self userAggregationId];
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
    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[ORCHSchemaORCHMUXEphemeralToAggregationIdentifierMap userAggregationIdExpirationTimestampMs](self, "userAggregationIdExpirationTimestampMs")}];
    [v3 setObject:v11 forKeyedSubscript:@"userAggregationIdExpirationTimestampMs"];

    has = self->_has;
  }

  if (has)
  {
    v12 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[ORCHSchemaORCHMUXEphemeralToAggregationIdentifierMap userAggregationIdRotationTimestampMs](self, "userAggregationIdRotationTimestampMs")}];
    [v3 setObject:v12 forKeyedSubscript:@"userAggregationIdRotationTimestampMs"];
  }

  if (self->_userEphemeralId)
  {
    v13 = [(ORCHSchemaORCHMUXEphemeralToAggregationIdentifierMap *)self userEphemeralId];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_24;
  }

  v5 = [(ORCHSchemaORCHMUXEphemeralToAggregationIdentifierMap *)self userEphemeralId];
  v6 = [v4 userEphemeralId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_23;
  }

  v7 = [(ORCHSchemaORCHMUXEphemeralToAggregationIdentifierMap *)self userEphemeralId];
  if (v7)
  {
    v8 = v7;
    v9 = [(ORCHSchemaORCHMUXEphemeralToAggregationIdentifierMap *)self userEphemeralId];
    v10 = [v4 userEphemeralId];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_24;
    }
  }

  else
  {
  }

  v5 = [(ORCHSchemaORCHMUXEphemeralToAggregationIdentifierMap *)self userAggregationId];
  v6 = [v4 userAggregationId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_23;
  }

  v12 = [(ORCHSchemaORCHMUXEphemeralToAggregationIdentifierMap *)self userAggregationId];
  if (v12)
  {
    v13 = v12;
    v14 = [(ORCHSchemaORCHMUXEphemeralToAggregationIdentifierMap *)self userAggregationId];
    v15 = [v4 userAggregationId];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_24;
    }
  }

  else
  {
  }

  has = self->_has;
  v18 = v4[48];
  if ((*&has & 1) != (v18 & 1))
  {
    goto LABEL_24;
  }

  if (*&has)
  {
    userAggregationIdRotationTimestampMs = self->_userAggregationIdRotationTimestampMs;
    if (userAggregationIdRotationTimestampMs != [v4 userAggregationIdRotationTimestampMs])
    {
      goto LABEL_24;
    }

    has = self->_has;
    v18 = v4[48];
  }

  v20 = (*&has >> 1) & 1;
  if (v20 != ((v18 >> 1) & 1))
  {
    goto LABEL_24;
  }

  if (v20)
  {
    userAggregationIdExpirationTimestampMs = self->_userAggregationIdExpirationTimestampMs;
    if (userAggregationIdExpirationTimestampMs != [v4 userAggregationIdExpirationTimestampMs])
    {
      goto LABEL_24;
    }
  }

  v5 = [(ORCHSchemaORCHMUXEphemeralToAggregationIdentifierMap *)self deviceAggregationId];
  v6 = [v4 deviceAggregationId];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_23:

    goto LABEL_24;
  }

  v22 = [(ORCHSchemaORCHMUXEphemeralToAggregationIdentifierMap *)self deviceAggregationId];
  if (!v22)
  {

LABEL_27:
    v27 = 1;
    goto LABEL_25;
  }

  v23 = v22;
  v24 = [(ORCHSchemaORCHMUXEphemeralToAggregationIdentifierMap *)self deviceAggregationId];
  v25 = [v4 deviceAggregationId];
  v26 = [v24 isEqual:v25];

  if (v26)
  {
    goto LABEL_27;
  }

LABEL_24:
  v27 = 0;
LABEL_25:

  return v27;
}

- (void)writeTo:(id)a3
{
  v12 = a3;
  v4 = [(ORCHSchemaORCHMUXEphemeralToAggregationIdentifierMap *)self userEphemeralId];

  if (v4)
  {
    v5 = [(ORCHSchemaORCHMUXEphemeralToAggregationIdentifierMap *)self userEphemeralId];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(ORCHSchemaORCHMUXEphemeralToAggregationIdentifierMap *)self userAggregationId];

  if (v6)
  {
    v7 = [(ORCHSchemaORCHMUXEphemeralToAggregationIdentifierMap *)self userAggregationId];
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

  v9 = [(ORCHSchemaORCHMUXEphemeralToAggregationIdentifierMap *)self deviceAggregationId];

  v10 = v12;
  if (v9)
  {
    v11 = [(ORCHSchemaORCHMUXEphemeralToAggregationIdentifierMap *)self deviceAggregationId];
    PBDataWriterWriteSubmessage();

    v10 = v12;
  }
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
  v16.receiver = self;
  v16.super_class = ORCHSchemaORCHMUXEphemeralToAggregationIdentifierMap;
  v5 = [(SISchemaInstrumentationMessage *)&v16 applySensitiveConditionsPolicy:v4];
  v6 = [(ORCHSchemaORCHMUXEphemeralToAggregationIdentifierMap *)self userEphemeralId];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(ORCHSchemaORCHMUXEphemeralToAggregationIdentifierMap *)self deleteUserEphemeralId];
  }

  v9 = [(ORCHSchemaORCHMUXEphemeralToAggregationIdentifierMap *)self userAggregationId];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(ORCHSchemaORCHMUXEphemeralToAggregationIdentifierMap *)self deleteUserAggregationId];
  }

  v12 = [(ORCHSchemaORCHMUXEphemeralToAggregationIdentifierMap *)self deviceAggregationId];
  v13 = [v12 applySensitiveConditionsPolicy:v4];
  v14 = [v13 suppressMessage];

  if (v14)
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