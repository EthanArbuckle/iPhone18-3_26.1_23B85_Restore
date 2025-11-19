@interface SISchemaCommonEventMetadata
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (SISchemaCommonEventMetadata)initWithDictionary:(id)a3;
- (SISchemaCommonEventMetadata)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation SISchemaCommonEventMetadata

- (SISchemaCommonEventMetadata)initWithDictionary:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = SISchemaCommonEventMetadata;
  v5 = [(SISchemaCommonEventMetadata *)&v15 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"timestamp"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaLogicalTimestamp alloc] initWithDictionary:v6];
      [(SISchemaCommonEventMetadata *)v5 setTimestamp:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"testFingerprint"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[SISchemaUUID alloc] initWithDictionary:v8];
      [(SISchemaCommonEventMetadata *)v5 setTestFingerprint:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"eventId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[SISchemaUUID alloc] initWithDictionary:v10];
      [(SISchemaCommonEventMetadata *)v5 setEventId:v11];
    }

    v12 = [v4 objectForKeyedSubscript:@"emitTimestamp"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaCommonEventMetadata setEmitTimestamp:](v5, "setEmitTimestamp:", [v12 longLongValue]);
    }

    v13 = v5;
  }

  return v5;
}

- (SISchemaCommonEventMetadata)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(SISchemaCommonEventMetadata *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(SISchemaCommonEventMetadata *)self dictionaryRepresentation];
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
    v4 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[SISchemaCommonEventMetadata emitTimestamp](self, "emitTimestamp")}];
    [v3 setObject:v4 forKeyedSubscript:@"emitTimestamp"];
  }

  if (self->_eventId)
  {
    v5 = [(SISchemaCommonEventMetadata *)self eventId];
    v6 = [v5 dictionaryRepresentation];
    if (v6)
    {
      [v3 setObject:v6 forKeyedSubscript:@"eventId"];
    }

    else
    {
      v7 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v7 forKeyedSubscript:@"eventId"];
    }
  }

  if (self->_testFingerprint)
  {
    v8 = [(SISchemaCommonEventMetadata *)self testFingerprint];
    v9 = [v8 dictionaryRepresentation];
    if (v9)
    {
      [v3 setObject:v9 forKeyedSubscript:@"testFingerprint"];
    }

    else
    {
      v10 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v10 forKeyedSubscript:@"testFingerprint"];
    }
  }

  if (self->_timestamp)
  {
    v11 = [(SISchemaCommonEventMetadata *)self timestamp];
    v12 = [v11 dictionaryRepresentation];
    if (v12)
    {
      [v3 setObject:v12 forKeyedSubscript:@"timestamp"];
    }

    else
    {
      v13 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v13 forKeyedSubscript:@"timestamp"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(SISchemaLogicalTimestamp *)self->_timestamp hash];
  v4 = [(SISchemaUUID *)self->_testFingerprint hash];
  v5 = [(SISchemaUUID *)self->_eventId hash];
  if (*&self->_has)
  {
    v6 = 2654435761 * self->_emitTimestamp;
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

  v5 = [(SISchemaCommonEventMetadata *)self timestamp];
  v6 = [v4 timestamp];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_16;
  }

  v7 = [(SISchemaCommonEventMetadata *)self timestamp];
  if (v7)
  {
    v8 = v7;
    v9 = [(SISchemaCommonEventMetadata *)self timestamp];
    v10 = [v4 timestamp];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v5 = [(SISchemaCommonEventMetadata *)self testFingerprint];
  v6 = [v4 testFingerprint];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_16;
  }

  v12 = [(SISchemaCommonEventMetadata *)self testFingerprint];
  if (v12)
  {
    v13 = v12;
    v14 = [(SISchemaCommonEventMetadata *)self testFingerprint];
    v15 = [v4 testFingerprint];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v5 = [(SISchemaCommonEventMetadata *)self eventId];
  v6 = [v4 eventId];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_16:

    goto LABEL_17;
  }

  v17 = [(SISchemaCommonEventMetadata *)self eventId];
  if (v17)
  {
    v18 = v17;
    v19 = [(SISchemaCommonEventMetadata *)self eventId];
    v20 = [v4 eventId];
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
    if ((*&self->_has & 1) == 0 || (emitTimestamp = self->_emitTimestamp, emitTimestamp == [v4 emitTimestamp]))
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
  v10 = a3;
  v4 = [(SISchemaCommonEventMetadata *)self timestamp];

  if (v4)
  {
    v5 = [(SISchemaCommonEventMetadata *)self timestamp];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(SISchemaCommonEventMetadata *)self testFingerprint];

  if (v6)
  {
    v7 = [(SISchemaCommonEventMetadata *)self testFingerprint];
    PBDataWriterWriteSubmessage();
  }

  v8 = [(SISchemaCommonEventMetadata *)self eventId];

  if (v8)
  {
    v9 = [(SISchemaCommonEventMetadata *)self eventId];
    PBDataWriterWriteSubmessage();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteInt64Field();
  }
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = SISchemaCommonEventMetadata;
  v5 = [(SISchemaInstrumentationMessage *)&v16 applySensitiveConditionsPolicy:v4];
  v6 = [(SISchemaCommonEventMetadata *)self timestamp];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(SISchemaCommonEventMetadata *)self deleteTimestamp];
  }

  v9 = [(SISchemaCommonEventMetadata *)self testFingerprint];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(SISchemaCommonEventMetadata *)self deleteTestFingerprint];
  }

  v12 = [(SISchemaCommonEventMetadata *)self eventId];
  v13 = [v12 applySensitiveConditionsPolicy:v4];
  v14 = [v13 suppressMessage];

  if (v14)
  {
    [(SISchemaCommonEventMetadata *)self deleteEventId];
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