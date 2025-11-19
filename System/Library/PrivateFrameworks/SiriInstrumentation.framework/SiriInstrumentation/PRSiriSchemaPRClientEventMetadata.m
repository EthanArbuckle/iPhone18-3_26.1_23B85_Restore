@interface PRSiriSchemaPRClientEventMetadata
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (PRSiriSchemaPRClientEventMetadata)initWithDictionary:(id)a3;
- (PRSiriSchemaPRClientEventMetadata)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasSpanId:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation PRSiriSchemaPRClientEventMetadata

- (PRSiriSchemaPRClientEventMetadata)initWithDictionary:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = PRSiriSchemaPRClientEventMetadata;
  v5 = [(PRSiriSchemaPRClientEventMetadata *)&v16 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"ifRequestId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(PRSiriSchemaPRClientEventMetadata *)v5 setIfRequestId:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"postingSpanId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PRSiriSchemaPRClientEventMetadata setPostingSpanId:](v5, "setPostingSpanId:", [v8 unsignedIntValue]);
    }

    v9 = [v4 objectForKeyedSubscript:@"pgId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [[SISchemaUUID alloc] initWithDictionary:v9];
      [(PRSiriSchemaPRClientEventMetadata *)v5 setPgId:v10];
    }

    v11 = [v4 objectForKeyedSubscript:@"spanId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PRSiriSchemaPRClientEventMetadata setSpanId:](v5, "setSpanId:", [v11 unsignedLongLongValue]);
    }

    v12 = [v4 objectForKeyedSubscript:@"prId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[SISchemaUUID alloc] initWithDictionary:v12];
      [(PRSiriSchemaPRClientEventMetadata *)v5 setPrId:v13];
    }

    v14 = v5;
  }

  return v5;
}

- (PRSiriSchemaPRClientEventMetadata)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(PRSiriSchemaPRClientEventMetadata *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(PRSiriSchemaPRClientEventMetadata *)self dictionaryRepresentation];
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
  if (self->_ifRequestId)
  {
    v4 = [(PRSiriSchemaPRClientEventMetadata *)self ifRequestId];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"ifRequestId"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"ifRequestId"];
    }
  }

  if (self->_pgId)
  {
    v7 = [(PRSiriSchemaPRClientEventMetadata *)self pgId];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"pgId"];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v9 forKeyedSubscript:@"pgId"];
    }
  }

  if (*&self->_has)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[PRSiriSchemaPRClientEventMetadata postingSpanId](self, "postingSpanId")}];
    [v3 setObject:v10 forKeyedSubscript:@"postingSpanId"];
  }

  if (self->_prId)
  {
    v11 = [(PRSiriSchemaPRClientEventMetadata *)self prId];
    v12 = [v11 dictionaryRepresentation];
    if (v12)
    {
      [v3 setObject:v12 forKeyedSubscript:@"prId"];
    }

    else
    {
      v13 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v13 forKeyedSubscript:@"prId"];
    }
  }

  if ((*&self->_has & 2) != 0)
  {
    v14 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[PRSiriSchemaPRClientEventMetadata spanId](self, "spanId")}];
    [v3 setObject:v14 forKeyedSubscript:@"spanId"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(SISchemaUUID *)self->_ifRequestId hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_postingSpanId;
  }

  else
  {
    v4 = 0;
  }

  v5 = [(SISchemaUUID *)self->_pgId hash];
  if ((*&self->_has & 2) != 0)
  {
    v6 = 2654435761u * self->_spanId;
  }

  else
  {
    v6 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ [(SISchemaUUID *)self->_prId hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_23;
  }

  v5 = [(PRSiriSchemaPRClientEventMetadata *)self ifRequestId];
  v6 = [v4 ifRequestId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_22;
  }

  v7 = [(PRSiriSchemaPRClientEventMetadata *)self ifRequestId];
  if (v7)
  {
    v8 = v7;
    v9 = [(PRSiriSchemaPRClientEventMetadata *)self ifRequestId];
    v10 = [v4 ifRequestId];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_23;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) != (v4[48] & 1))
  {
    goto LABEL_23;
  }

  if (*&self->_has)
  {
    postingSpanId = self->_postingSpanId;
    if (postingSpanId != [v4 postingSpanId])
    {
      goto LABEL_23;
    }
  }

  v5 = [(PRSiriSchemaPRClientEventMetadata *)self pgId];
  v6 = [v4 pgId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_22;
  }

  v13 = [(PRSiriSchemaPRClientEventMetadata *)self pgId];
  if (v13)
  {
    v14 = v13;
    v15 = [(PRSiriSchemaPRClientEventMetadata *)self pgId];
    v16 = [v4 pgId];
    v17 = [v15 isEqual:v16];

    if (!v17)
    {
      goto LABEL_23;
    }
  }

  else
  {
  }

  v18 = (*&self->_has >> 1) & 1;
  if (v18 != ((v4[48] >> 1) & 1))
  {
    goto LABEL_23;
  }

  if (v18)
  {
    spanId = self->_spanId;
    if (spanId != [v4 spanId])
    {
      goto LABEL_23;
    }
  }

  v5 = [(PRSiriSchemaPRClientEventMetadata *)self prId];
  v6 = [v4 prId];
  if ((v5 != 0) != (v6 == 0))
  {
    v20 = [(PRSiriSchemaPRClientEventMetadata *)self prId];
    if (!v20)
    {

LABEL_26:
      v25 = 1;
      goto LABEL_24;
    }

    v21 = v20;
    v22 = [(PRSiriSchemaPRClientEventMetadata *)self prId];
    v23 = [v4 prId];
    v24 = [v22 isEqual:v23];

    if (v24)
    {
      goto LABEL_26;
    }
  }

  else
  {
LABEL_22:
  }

LABEL_23:
  v25 = 0;
LABEL_24:

  return v25;
}

- (void)writeTo:(id)a3
{
  v11 = a3;
  v4 = [(PRSiriSchemaPRClientEventMetadata *)self ifRequestId];

  if (v4)
  {
    v5 = [(PRSiriSchemaPRClientEventMetadata *)self ifRequestId];
    PBDataWriterWriteSubmessage();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteUint32Field();
  }

  v6 = [(PRSiriSchemaPRClientEventMetadata *)self pgId];

  if (v6)
  {
    v7 = [(PRSiriSchemaPRClientEventMetadata *)self pgId];
    PBDataWriterWriteSubmessage();
  }

  if ((*&self->_has & 2) != 0)
  {
    PBDataWriterWriteUint64Field();
  }

  v8 = [(PRSiriSchemaPRClientEventMetadata *)self prId];

  v9 = v11;
  if (v8)
  {
    v10 = [(PRSiriSchemaPRClientEventMetadata *)self prId];
    PBDataWriterWriteSubmessage();

    v9 = v11;
  }
}

- (void)setHasSpanId:(BOOL)a3
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
  v16.super_class = PRSiriSchemaPRClientEventMetadata;
  v5 = [(SISchemaInstrumentationMessage *)&v16 applySensitiveConditionsPolicy:v4];
  v6 = [(PRSiriSchemaPRClientEventMetadata *)self ifRequestId];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(PRSiriSchemaPRClientEventMetadata *)self deleteIfRequestId];
  }

  v9 = [(PRSiriSchemaPRClientEventMetadata *)self pgId];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(PRSiriSchemaPRClientEventMetadata *)self deletePgId];
  }

  v12 = [(PRSiriSchemaPRClientEventMetadata *)self prId];
  v13 = [v12 applySensitiveConditionsPolicy:v4];
  v14 = [v13 suppressMessage];

  if (v14)
  {
    [(PRSiriSchemaPRClientEventMetadata *)self deletePrId];
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