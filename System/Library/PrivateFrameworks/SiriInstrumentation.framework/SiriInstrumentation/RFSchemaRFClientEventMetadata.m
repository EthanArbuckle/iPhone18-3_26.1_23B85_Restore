@interface RFSchemaRFClientEventMetadata
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (RFSchemaRFClientEventMetadata)initWithDictionary:(id)a3;
- (RFSchemaRFClientEventMetadata)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation RFSchemaRFClientEventMetadata

- (RFSchemaRFClientEventMetadata)initWithDictionary:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = RFSchemaRFClientEventMetadata;
  v5 = [(RFSchemaRFClientEventMetadata *)&v16 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"turnId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(RFSchemaRFClientEventMetadata *)v5 setTurnId:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"requestId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[SISchemaUUID alloc] initWithDictionary:v8];
      [(RFSchemaRFClientEventMetadata *)v5 setRequestId:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"subRequestId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[SISchemaUUID alloc] initWithDictionary:v10];
      [(RFSchemaRFClientEventMetadata *)v5 setSubRequestId:v11];
    }

    v12 = [v4 objectForKeyedSubscript:@"aceViewId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[SISchemaUUID alloc] initWithDictionary:v12];
      [(RFSchemaRFClientEventMetadata *)v5 setAceViewId:v13];
    }

    v14 = v5;
  }

  return v5;
}

- (RFSchemaRFClientEventMetadata)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(RFSchemaRFClientEventMetadata *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(RFSchemaRFClientEventMetadata *)self dictionaryRepresentation];
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
  if (self->_aceViewId)
  {
    v4 = [(RFSchemaRFClientEventMetadata *)self aceViewId];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"aceViewId"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"aceViewId"];
    }
  }

  if (self->_requestId)
  {
    v7 = [(RFSchemaRFClientEventMetadata *)self requestId];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"requestId"];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v9 forKeyedSubscript:@"requestId"];
    }
  }

  if (self->_subRequestId)
  {
    v10 = [(RFSchemaRFClientEventMetadata *)self subRequestId];
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

  if (self->_turnId)
  {
    v13 = [(RFSchemaRFClientEventMetadata *)self turnId];
    v14 = [v13 dictionaryRepresentation];
    if (v14)
    {
      [v3 setObject:v14 forKeyedSubscript:@"turnId"];
    }

    else
    {
      v15 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v15 forKeyedSubscript:@"turnId"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(SISchemaUUID *)self->_turnId hash];
  v4 = [(SISchemaUUID *)self->_requestId hash]^ v3;
  v5 = [(SISchemaUUID *)self->_subRequestId hash];
  return v4 ^ v5 ^ [(SISchemaUUID *)self->_aceViewId hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_22;
  }

  v5 = [(RFSchemaRFClientEventMetadata *)self turnId];
  v6 = [v4 turnId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_21;
  }

  v7 = [(RFSchemaRFClientEventMetadata *)self turnId];
  if (v7)
  {
    v8 = v7;
    v9 = [(RFSchemaRFClientEventMetadata *)self turnId];
    v10 = [v4 turnId];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  v5 = [(RFSchemaRFClientEventMetadata *)self requestId];
  v6 = [v4 requestId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_21;
  }

  v12 = [(RFSchemaRFClientEventMetadata *)self requestId];
  if (v12)
  {
    v13 = v12;
    v14 = [(RFSchemaRFClientEventMetadata *)self requestId];
    v15 = [v4 requestId];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  v5 = [(RFSchemaRFClientEventMetadata *)self subRequestId];
  v6 = [v4 subRequestId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_21;
  }

  v17 = [(RFSchemaRFClientEventMetadata *)self subRequestId];
  if (v17)
  {
    v18 = v17;
    v19 = [(RFSchemaRFClientEventMetadata *)self subRequestId];
    v20 = [v4 subRequestId];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  v5 = [(RFSchemaRFClientEventMetadata *)self aceViewId];
  v6 = [v4 aceViewId];
  if ((v5 != 0) != (v6 == 0))
  {
    v22 = [(RFSchemaRFClientEventMetadata *)self aceViewId];
    if (!v22)
    {

LABEL_25:
      v27 = 1;
      goto LABEL_23;
    }

    v23 = v22;
    v24 = [(RFSchemaRFClientEventMetadata *)self aceViewId];
    v25 = [v4 aceViewId];
    v26 = [v24 isEqual:v25];

    if (v26)
    {
      goto LABEL_25;
    }
  }

  else
  {
LABEL_21:
  }

LABEL_22:
  v27 = 0;
LABEL_23:

  return v27;
}

- (void)writeTo:(id)a3
{
  v13 = a3;
  v4 = [(RFSchemaRFClientEventMetadata *)self turnId];

  if (v4)
  {
    v5 = [(RFSchemaRFClientEventMetadata *)self turnId];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(RFSchemaRFClientEventMetadata *)self requestId];

  if (v6)
  {
    v7 = [(RFSchemaRFClientEventMetadata *)self requestId];
    PBDataWriterWriteSubmessage();
  }

  v8 = [(RFSchemaRFClientEventMetadata *)self subRequestId];

  if (v8)
  {
    v9 = [(RFSchemaRFClientEventMetadata *)self subRequestId];
    PBDataWriterWriteSubmessage();
  }

  v10 = [(RFSchemaRFClientEventMetadata *)self aceViewId];

  v11 = v13;
  if (v10)
  {
    v12 = [(RFSchemaRFClientEventMetadata *)self aceViewId];
    PBDataWriterWriteSubmessage();

    v11 = v13;
  }
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = RFSchemaRFClientEventMetadata;
  v5 = [(SISchemaInstrumentationMessage *)&v19 applySensitiveConditionsPolicy:v4];
  v6 = [(RFSchemaRFClientEventMetadata *)self turnId];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(RFSchemaRFClientEventMetadata *)self deleteTurnId];
  }

  v9 = [(RFSchemaRFClientEventMetadata *)self requestId];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(RFSchemaRFClientEventMetadata *)self deleteRequestId];
  }

  v12 = [(RFSchemaRFClientEventMetadata *)self subRequestId];
  v13 = [v12 applySensitiveConditionsPolicy:v4];
  v14 = [v13 suppressMessage];

  if (v14)
  {
    [(RFSchemaRFClientEventMetadata *)self deleteSubRequestId];
  }

  v15 = [(RFSchemaRFClientEventMetadata *)self aceViewId];
  v16 = [v15 applySensitiveConditionsPolicy:v4];
  v17 = [v16 suppressMessage];

  if (v17)
  {
    [(RFSchemaRFClientEventMetadata *)self deleteAceViewId];
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