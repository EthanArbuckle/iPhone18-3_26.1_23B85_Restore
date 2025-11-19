@interface SISchemaServerEventMetadata
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (SISchemaServerEventMetadata)initWithDictionary:(id)a3;
- (SISchemaServerEventMetadata)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation SISchemaServerEventMetadata

- (SISchemaServerEventMetadata)initWithDictionary:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = SISchemaServerEventMetadata;
  v5 = [(SISchemaServerEventMetadata *)&v15 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"turnID"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v6 options:0];
      [(SISchemaServerEventMetadata *)v5 setTurnID:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"timestampNs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaServerEventMetadata setTimestampNs:](v5, "setTimestampNs:", [v8 longLongValue]);
    }

    v9 = [v4 objectForKeyedSubscript:@"siriDeviceID"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v9 options:0];
      [(SISchemaServerEventMetadata *)v5 setSiriDeviceID:v10];
    }

    v11 = [v4 objectForKeyedSubscript:@"serverPod"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [v11 copy];
      [(SISchemaServerEventMetadata *)v5 setServerPod:v12];
    }

    v13 = v5;
  }

  return v5;
}

- (SISchemaServerEventMetadata)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(SISchemaServerEventMetadata *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(SISchemaServerEventMetadata *)self dictionaryRepresentation];
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
  if (self->_serverPod)
  {
    v4 = [(SISchemaServerEventMetadata *)self serverPod];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"serverPod"];
  }

  if (self->_siriDeviceID)
  {
    v6 = [(SISchemaServerEventMetadata *)self siriDeviceID];
    v7 = [v6 base64EncodedStringWithOptions:0];
    if (v7)
    {
      [v3 setObject:v7 forKeyedSubscript:@"siriDeviceID"];
    }

    else
    {
      v8 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v8 forKeyedSubscript:@"siriDeviceID"];
    }
  }

  if (*&self->_has)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[SISchemaServerEventMetadata timestampNs](self, "timestampNs")}];
    [v3 setObject:v9 forKeyedSubscript:@"timestampNs"];
  }

  if (self->_turnID)
  {
    v10 = [(SISchemaServerEventMetadata *)self turnID];
    v11 = [v10 base64EncodedStringWithOptions:0];
    if (v11)
    {
      [v3 setObject:v11 forKeyedSubscript:@"turnID"];
    }

    else
    {
      v12 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v12 forKeyedSubscript:@"turnID"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(NSData *)self->_turnID hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_timestampNs;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4 ^ v3;
  v6 = [(NSData *)self->_siriDeviceID hash];
  return v5 ^ v6 ^ [(NSString *)self->_serverPod hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_20;
  }

  v5 = [(SISchemaServerEventMetadata *)self turnID];
  v6 = [v4 turnID];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_19;
  }

  v7 = [(SISchemaServerEventMetadata *)self turnID];
  if (v7)
  {
    v8 = v7;
    v9 = [(SISchemaServerEventMetadata *)self turnID];
    v10 = [v4 turnID];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_20;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) != (v4[40] & 1))
  {
    goto LABEL_20;
  }

  if (*&self->_has)
  {
    timestampNs = self->_timestampNs;
    if (timestampNs != [v4 timestampNs])
    {
      goto LABEL_20;
    }
  }

  v5 = [(SISchemaServerEventMetadata *)self siriDeviceID];
  v6 = [v4 siriDeviceID];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_19;
  }

  v13 = [(SISchemaServerEventMetadata *)self siriDeviceID];
  if (v13)
  {
    v14 = v13;
    v15 = [(SISchemaServerEventMetadata *)self siriDeviceID];
    v16 = [v4 siriDeviceID];
    v17 = [v15 isEqual:v16];

    if (!v17)
    {
      goto LABEL_20;
    }
  }

  else
  {
  }

  v5 = [(SISchemaServerEventMetadata *)self serverPod];
  v6 = [v4 serverPod];
  if ((v5 != 0) != (v6 == 0))
  {
    v18 = [(SISchemaServerEventMetadata *)self serverPod];
    if (!v18)
    {

LABEL_23:
      v23 = 1;
      goto LABEL_21;
    }

    v19 = v18;
    v20 = [(SISchemaServerEventMetadata *)self serverPod];
    v21 = [v4 serverPod];
    v22 = [v20 isEqual:v21];

    if (v22)
    {
      goto LABEL_23;
    }
  }

  else
  {
LABEL_19:
  }

LABEL_20:
  v23 = 0;
LABEL_21:

  return v23;
}

- (void)writeTo:(id)a3
{
  v8 = a3;
  v4 = [(SISchemaServerEventMetadata *)self turnID];

  if (v4)
  {
    PBDataWriterWriteDataField();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteInt64Field();
  }

  v5 = [(SISchemaServerEventMetadata *)self siriDeviceID];

  if (v5)
  {
    PBDataWriterWriteDataField();
  }

  v6 = [(SISchemaServerEventMetadata *)self serverPod];

  v7 = v8;
  if (v6)
  {
    PBDataWriterWriteStringField();
    v7 = v8;
  }
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v8.receiver = self;
  v8.super_class = SISchemaServerEventMetadata;
  v4 = a3;
  v5 = [(SISchemaInstrumentationMessage *)&v8 applySensitiveConditionsPolicy:v4];
  v6 = [v4 isConditionSet:{8, v8.receiver, v8.super_class}];

  if (v6)
  {
    [(SISchemaServerEventMetadata *)self deleteSiriDeviceID];
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