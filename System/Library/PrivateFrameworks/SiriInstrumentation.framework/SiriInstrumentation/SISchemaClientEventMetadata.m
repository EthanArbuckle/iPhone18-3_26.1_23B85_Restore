@interface SISchemaClientEventMetadata
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (SISchemaClientEventMetadata)initWithDictionary:(id)a3;
- (SISchemaClientEventMetadata)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)willProduceDictionaryRepresentation:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation SISchemaClientEventMetadata

- (void)willProduceDictionaryRepresentation:(id)a3
{
  v8 = a3;
  v4 = [(SISchemaClientEventMetadata *)self turnID];
  v5 = v4;
  if (v4 && [v4 length] == 16)
  {
    v6 = [v5 si_asNSUUID];
    v7 = [v6 UUIDString];
    [v8 setObject:v7 forKeyedSubscript:@"turnID"];
  }
}

- (SISchemaClientEventMetadata)initWithDictionary:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = SISchemaClientEventMetadata;
  v5 = [(SISchemaClientEventMetadata *)&v15 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"turnID"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v6 options:0];
      [(SISchemaClientEventMetadata *)v5 setTurnID:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"siriDeviceID"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v8 options:0];
      [(SISchemaClientEventMetadata *)v5 setSiriDeviceID:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"eventGeneratedTimestampRefId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [v10 copy];
      [(SISchemaClientEventMetadata *)v5 setEventGeneratedTimestampRefId:v11];
    }

    v12 = [v4 objectForKeyedSubscript:@"eventGeneratedRelativeToBootTimeTimestampNs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaClientEventMetadata setEventGeneratedRelativeToBootTimeTimestampNs:](v5, "setEventGeneratedRelativeToBootTimeTimestampNs:", [v12 longLongValue]);
    }

    v13 = v5;
  }

  return v5;
}

- (SISchemaClientEventMetadata)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(SISchemaClientEventMetadata *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(SISchemaClientEventMetadata *)self dictionaryRepresentation];
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
  if (*&self->_has)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[SISchemaClientEventMetadata eventGeneratedRelativeToBootTimeTimestampNs](self, "eventGeneratedRelativeToBootTimeTimestampNs")}];
    [v3 setObject:v4 forKeyedSubscript:@"eventGeneratedRelativeToBootTimeTimestampNs"];
  }

  if (self->_eventGeneratedTimestampRefId)
  {
    v5 = [(SISchemaClientEventMetadata *)self eventGeneratedTimestampRefId];
    v6 = [v5 copy];
    [v3 setObject:v6 forKeyedSubscript:@"eventGeneratedTimestampRefId"];
  }

  if (self->_siriDeviceID)
  {
    v7 = [(SISchemaClientEventMetadata *)self siriDeviceID];
    v8 = [v7 base64EncodedStringWithOptions:0];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"siriDeviceID"];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v9 forKeyedSubscript:@"siriDeviceID"];
    }
  }

  if (self->_turnID)
  {
    v10 = [(SISchemaClientEventMetadata *)self turnID];
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

  [(SISchemaClientEventMetadata *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(NSData *)self->_turnID hash];
  v4 = [(NSData *)self->_siriDeviceID hash];
  v5 = [(NSString *)self->_eventGeneratedTimestampRefId hash];
  if (*&self->_has)
  {
    v6 = 2654435761 * self->_eventGeneratedRelativeToBootTimeTimestampNs;
  }

  else
  {
    v6 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  v5 = [(SISchemaClientEventMetadata *)self turnID];
  v6 = [v4 turnID];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_16;
  }

  v7 = [(SISchemaClientEventMetadata *)self turnID];
  if (v7)
  {
    v8 = v7;
    v9 = [(SISchemaClientEventMetadata *)self turnID];
    v10 = [v4 turnID];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v5 = [(SISchemaClientEventMetadata *)self siriDeviceID];
  v6 = [v4 siriDeviceID];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_16;
  }

  v12 = [(SISchemaClientEventMetadata *)self siriDeviceID];
  if (v12)
  {
    v13 = v12;
    v14 = [(SISchemaClientEventMetadata *)self siriDeviceID];
    v15 = [v4 siriDeviceID];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v5 = [(SISchemaClientEventMetadata *)self eventGeneratedTimestampRefId];
  v6 = [v4 eventGeneratedTimestampRefId];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_16:

    goto LABEL_17;
  }

  v17 = [(SISchemaClientEventMetadata *)self eventGeneratedTimestampRefId];
  if (v17)
  {
    v18 = v17;
    v19 = [(SISchemaClientEventMetadata *)self eventGeneratedTimestampRefId];
    v20 = [v4 eventGeneratedTimestampRefId];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) == (v4[40] & 1))
  {
    if ((*&self->_has & 1) == 0 || (eventGeneratedRelativeToBootTimeTimestampNs = self->_eventGeneratedRelativeToBootTimeTimestampNs, eventGeneratedRelativeToBootTimeTimestampNs == [v4 eventGeneratedRelativeToBootTimeTimestampNs]))
    {
      v22 = 1;
      goto LABEL_18;
    }
  }

LABEL_17:
  v22 = 0;
LABEL_18:

  return v22;
}

- (void)writeTo:(id)a3
{
  v8 = a3;
  v4 = [(SISchemaClientEventMetadata *)self turnID];

  if (v4)
  {
    PBDataWriterWriteDataField();
  }

  v5 = [(SISchemaClientEventMetadata *)self siriDeviceID];

  if (v5)
  {
    PBDataWriterWriteDataField();
  }

  v6 = [(SISchemaClientEventMetadata *)self eventGeneratedTimestampRefId];

  if (v6)
  {
    PBDataWriterWriteStringField();
  }

  v7 = v8;
  if (*&self->_has)
  {
    PBDataWriterWriteInt64Field();
    v7 = v8;
  }
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v8.receiver = self;
  v8.super_class = SISchemaClientEventMetadata;
  v4 = a3;
  v5 = [(SISchemaInstrumentationMessage *)&v8 applySensitiveConditionsPolicy:v4];
  v6 = [v4 isConditionSet:{8, v8.receiver, v8.super_class}];

  if (v6)
  {
    [(SISchemaClientEventMetadata *)self deleteSiriDeviceID];
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