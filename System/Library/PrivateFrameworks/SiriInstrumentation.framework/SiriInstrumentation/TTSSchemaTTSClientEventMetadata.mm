@interface TTSSchemaTTSClientEventMetadata
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (TTSSchemaTTSClientEventMetadata)initWithDictionary:(id)a3;
- (TTSSchemaTTSClientEventMetadata)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation TTSSchemaTTSClientEventMetadata

- (TTSSchemaTTSClientEventMetadata)initWithDictionary:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = TTSSchemaTTSClientEventMetadata;
  v5 = [(TTSSchemaTTSClientEventMetadata *)&v18 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"ttsId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(TTSSchemaTTSClientEventMetadata *)v5 setTtsId:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"requestId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[SISchemaUUID alloc] initWithDictionary:v8];
      [(TTSSchemaTTSClientEventMetadata *)v5 setRequestId:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"clientId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [v10 copy];
      [(TTSSchemaTTSClientEventMetadata *)v5 setClientId:v11];
    }

    v12 = [v4 objectForKeyedSubscript:@"subRequestId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[SISchemaUUID alloc] initWithDictionary:v12];
      [(TTSSchemaTTSClientEventMetadata *)v5 setSubRequestId:v13];
    }

    v14 = [v4 objectForKeyedSubscript:@"aceViewId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [[SISchemaUUID alloc] initWithDictionary:v14];
      [(TTSSchemaTTSClientEventMetadata *)v5 setAceViewId:v15];
    }

    v16 = v5;
  }

  return v5;
}

- (TTSSchemaTTSClientEventMetadata)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(TTSSchemaTTSClientEventMetadata *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(TTSSchemaTTSClientEventMetadata *)self dictionaryRepresentation];
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
    v4 = [(TTSSchemaTTSClientEventMetadata *)self aceViewId];
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

  if (self->_clientId)
  {
    v7 = [(TTSSchemaTTSClientEventMetadata *)self clientId];
    v8 = [v7 copy];
    [v3 setObject:v8 forKeyedSubscript:@"clientId"];
  }

  if (self->_requestId)
  {
    v9 = [(TTSSchemaTTSClientEventMetadata *)self requestId];
    v10 = [v9 dictionaryRepresentation];
    if (v10)
    {
      [v3 setObject:v10 forKeyedSubscript:@"requestId"];
    }

    else
    {
      v11 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v11 forKeyedSubscript:@"requestId"];
    }
  }

  if (self->_subRequestId)
  {
    v12 = [(TTSSchemaTTSClientEventMetadata *)self subRequestId];
    v13 = [v12 dictionaryRepresentation];
    if (v13)
    {
      [v3 setObject:v13 forKeyedSubscript:@"subRequestId"];
    }

    else
    {
      v14 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v14 forKeyedSubscript:@"subRequestId"];
    }
  }

  if (self->_ttsId)
  {
    v15 = [(TTSSchemaTTSClientEventMetadata *)self ttsId];
    v16 = [v15 dictionaryRepresentation];
    if (v16)
    {
      [v3 setObject:v16 forKeyedSubscript:@"ttsId"];
    }

    else
    {
      v17 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v17 forKeyedSubscript:@"ttsId"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(SISchemaUUID *)self->_ttsId hash];
  v4 = [(SISchemaUUID *)self->_requestId hash]^ v3;
  v5 = [(NSString *)self->_clientId hash];
  v6 = v4 ^ v5 ^ [(SISchemaUUID *)self->_subRequestId hash];
  return v6 ^ [(SISchemaUUID *)self->_aceViewId hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_27;
  }

  v5 = [(TTSSchemaTTSClientEventMetadata *)self ttsId];
  v6 = [v4 ttsId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_26;
  }

  v7 = [(TTSSchemaTTSClientEventMetadata *)self ttsId];
  if (v7)
  {
    v8 = v7;
    v9 = [(TTSSchemaTTSClientEventMetadata *)self ttsId];
    v10 = [v4 ttsId];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  v5 = [(TTSSchemaTTSClientEventMetadata *)self requestId];
  v6 = [v4 requestId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_26;
  }

  v12 = [(TTSSchemaTTSClientEventMetadata *)self requestId];
  if (v12)
  {
    v13 = v12;
    v14 = [(TTSSchemaTTSClientEventMetadata *)self requestId];
    v15 = [v4 requestId];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  v5 = [(TTSSchemaTTSClientEventMetadata *)self clientId];
  v6 = [v4 clientId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_26;
  }

  v17 = [(TTSSchemaTTSClientEventMetadata *)self clientId];
  if (v17)
  {
    v18 = v17;
    v19 = [(TTSSchemaTTSClientEventMetadata *)self clientId];
    v20 = [v4 clientId];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  v5 = [(TTSSchemaTTSClientEventMetadata *)self subRequestId];
  v6 = [v4 subRequestId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_26;
  }

  v22 = [(TTSSchemaTTSClientEventMetadata *)self subRequestId];
  if (v22)
  {
    v23 = v22;
    v24 = [(TTSSchemaTTSClientEventMetadata *)self subRequestId];
    v25 = [v4 subRequestId];
    v26 = [v24 isEqual:v25];

    if (!v26)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  v5 = [(TTSSchemaTTSClientEventMetadata *)self aceViewId];
  v6 = [v4 aceViewId];
  if ((v5 != 0) != (v6 == 0))
  {
    v27 = [(TTSSchemaTTSClientEventMetadata *)self aceViewId];
    if (!v27)
    {

LABEL_30:
      v32 = 1;
      goto LABEL_28;
    }

    v28 = v27;
    v29 = [(TTSSchemaTTSClientEventMetadata *)self aceViewId];
    v30 = [v4 aceViewId];
    v31 = [v29 isEqual:v30];

    if (v31)
    {
      goto LABEL_30;
    }
  }

  else
  {
LABEL_26:
  }

LABEL_27:
  v32 = 0;
LABEL_28:

  return v32;
}

- (void)writeTo:(id)a3
{
  v14 = a3;
  v4 = [(TTSSchemaTTSClientEventMetadata *)self ttsId];

  if (v4)
  {
    v5 = [(TTSSchemaTTSClientEventMetadata *)self ttsId];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(TTSSchemaTTSClientEventMetadata *)self requestId];

  if (v6)
  {
    v7 = [(TTSSchemaTTSClientEventMetadata *)self requestId];
    PBDataWriterWriteSubmessage();
  }

  v8 = [(TTSSchemaTTSClientEventMetadata *)self clientId];

  if (v8)
  {
    PBDataWriterWriteStringField();
  }

  v9 = [(TTSSchemaTTSClientEventMetadata *)self subRequestId];

  if (v9)
  {
    v10 = [(TTSSchemaTTSClientEventMetadata *)self subRequestId];
    PBDataWriterWriteSubmessage();
  }

  v11 = [(TTSSchemaTTSClientEventMetadata *)self aceViewId];

  v12 = v14;
  if (v11)
  {
    v13 = [(TTSSchemaTTSClientEventMetadata *)self aceViewId];
    PBDataWriterWriteSubmessage();

    v12 = v14;
  }
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = TTSSchemaTTSClientEventMetadata;
  v5 = [(SISchemaInstrumentationMessage *)&v19 applySensitiveConditionsPolicy:v4];
  v6 = [(TTSSchemaTTSClientEventMetadata *)self ttsId];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(TTSSchemaTTSClientEventMetadata *)self deleteTtsId];
  }

  v9 = [(TTSSchemaTTSClientEventMetadata *)self requestId];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(TTSSchemaTTSClientEventMetadata *)self deleteRequestId];
  }

  v12 = [(TTSSchemaTTSClientEventMetadata *)self subRequestId];
  v13 = [v12 applySensitiveConditionsPolicy:v4];
  v14 = [v13 suppressMessage];

  if (v14)
  {
    [(TTSSchemaTTSClientEventMetadata *)self deleteSubRequestId];
  }

  v15 = [(TTSSchemaTTSClientEventMetadata *)self aceViewId];
  v16 = [v15 applySensitiveConditionsPolicy:v4];
  v17 = [v16 suppressMessage];

  if (v17)
  {
    [(TTSSchemaTTSClientEventMetadata *)self deleteAceViewId];
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