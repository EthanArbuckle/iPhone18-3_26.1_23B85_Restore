@interface SRSchemaSRClientEventMetadata
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (SRSchemaSRClientEventMetadata)initWithDictionary:(id)a3;
- (SRSchemaSRClientEventMetadata)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation SRSchemaSRClientEventMetadata

- (SRSchemaSRClientEventMetadata)initWithDictionary:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = SRSchemaSRClientEventMetadata;
  v5 = [(SRSchemaSRClientEventMetadata *)&v14 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"srId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(SRSchemaSRClientEventMetadata *)v5 setSrId:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"requestId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[SISchemaUUID alloc] initWithDictionary:v8];
      [(SRSchemaSRClientEventMetadata *)v5 setRequestId:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"subRequestId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[SISchemaUUID alloc] initWithDictionary:v10];
      [(SRSchemaSRClientEventMetadata *)v5 setSubRequestId:v11];
    }

    v12 = v5;
  }

  return v5;
}

- (SRSchemaSRClientEventMetadata)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(SRSchemaSRClientEventMetadata *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(SRSchemaSRClientEventMetadata *)self dictionaryRepresentation];
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
  if (self->_requestId)
  {
    v4 = [(SRSchemaSRClientEventMetadata *)self requestId];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"requestId"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"requestId"];
    }
  }

  if (self->_srId)
  {
    v7 = [(SRSchemaSRClientEventMetadata *)self srId];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"srId"];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v9 forKeyedSubscript:@"srId"];
    }
  }

  if (self->_subRequestId)
  {
    v10 = [(SRSchemaSRClientEventMetadata *)self subRequestId];
    v11 = [v10 dictionaryRepresentation];
    if (v11)
    {
      [v3 setObject:v11 forKeyedSubscript:@"subRequestId"];
    }

    else
    {
      v12 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v12 forKeyedSubscript:@"subRequestId"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(SISchemaUUID *)self->_srId hash];
  v4 = [(SISchemaUUID *)self->_requestId hash]^ v3;
  return v4 ^ [(SISchemaUUID *)self->_subRequestId hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  v5 = [(SRSchemaSRClientEventMetadata *)self srId];
  v6 = [v4 srId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_16;
  }

  v7 = [(SRSchemaSRClientEventMetadata *)self srId];
  if (v7)
  {
    v8 = v7;
    v9 = [(SRSchemaSRClientEventMetadata *)self srId];
    v10 = [v4 srId];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v5 = [(SRSchemaSRClientEventMetadata *)self requestId];
  v6 = [v4 requestId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_16;
  }

  v12 = [(SRSchemaSRClientEventMetadata *)self requestId];
  if (v12)
  {
    v13 = v12;
    v14 = [(SRSchemaSRClientEventMetadata *)self requestId];
    v15 = [v4 requestId];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v5 = [(SRSchemaSRClientEventMetadata *)self subRequestId];
  v6 = [v4 subRequestId];
  if ((v5 != 0) != (v6 == 0))
  {
    v17 = [(SRSchemaSRClientEventMetadata *)self subRequestId];
    if (!v17)
    {

LABEL_20:
      v22 = 1;
      goto LABEL_18;
    }

    v18 = v17;
    v19 = [(SRSchemaSRClientEventMetadata *)self subRequestId];
    v20 = [v4 subRequestId];
    v21 = [v19 isEqual:v20];

    if (v21)
    {
      goto LABEL_20;
    }
  }

  else
  {
LABEL_16:
  }

LABEL_17:
  v22 = 0;
LABEL_18:

  return v22;
}

- (void)writeTo:(id)a3
{
  v11 = a3;
  v4 = [(SRSchemaSRClientEventMetadata *)self srId];

  if (v4)
  {
    v5 = [(SRSchemaSRClientEventMetadata *)self srId];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(SRSchemaSRClientEventMetadata *)self requestId];

  if (v6)
  {
    v7 = [(SRSchemaSRClientEventMetadata *)self requestId];
    PBDataWriterWriteSubmessage();
  }

  v8 = [(SRSchemaSRClientEventMetadata *)self subRequestId];

  v9 = v11;
  if (v8)
  {
    v10 = [(SRSchemaSRClientEventMetadata *)self subRequestId];
    PBDataWriterWriteSubmessage();

    v9 = v11;
  }
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = SRSchemaSRClientEventMetadata;
  v5 = [(SISchemaInstrumentationMessage *)&v16 applySensitiveConditionsPolicy:v4];
  v6 = [(SRSchemaSRClientEventMetadata *)self srId];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(SRSchemaSRClientEventMetadata *)self deleteSrId];
  }

  v9 = [(SRSchemaSRClientEventMetadata *)self requestId];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(SRSchemaSRClientEventMetadata *)self deleteRequestId];
  }

  v12 = [(SRSchemaSRClientEventMetadata *)self subRequestId];
  v13 = [v12 applySensitiveConditionsPolicy:v4];
  v14 = [v13 suppressMessage];

  if (v14)
  {
    [(SRSchemaSRClientEventMetadata *)self deleteSubRequestId];
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