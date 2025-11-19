@interface SUTSchemaTestAssociatedSchemaIdentifier
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (SUTSchemaTestAssociatedSchemaIdentifier)initWithDictionary:(id)a3;
- (SUTSchemaTestAssociatedSchemaIdentifier)initWithJSON:(id)a3;
- (SUTSchemaTestGeneratedRequestId)requestId;
- (SUTSchemaTestGeneratedTurnID)turnID;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)deleteRequestId;
- (void)deleteTurnID;
- (void)setRequestId:(id)a3;
- (void)setTurnID:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation SUTSchemaTestAssociatedSchemaIdentifier

- (SUTSchemaTestAssociatedSchemaIdentifier)initWithDictionary:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = SUTSchemaTestAssociatedSchemaIdentifier;
  v5 = [(SUTSchemaTestAssociatedSchemaIdentifier *)&v12 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"turnID"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SUTSchemaTestGeneratedTurnID alloc] initWithDictionary:v6];
      [(SUTSchemaTestAssociatedSchemaIdentifier *)v5 setTurnID:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"requestId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[SUTSchemaTestGeneratedRequestId alloc] initWithDictionary:v8];
      [(SUTSchemaTestAssociatedSchemaIdentifier *)v5 setRequestId:v9];
    }

    v10 = v5;
  }

  return v5;
}

- (SUTSchemaTestAssociatedSchemaIdentifier)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(SUTSchemaTestAssociatedSchemaIdentifier *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(SUTSchemaTestAssociatedSchemaIdentifier *)self dictionaryRepresentation];
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
    v4 = [(SUTSchemaTestAssociatedSchemaIdentifier *)self requestId];
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

  if (self->_turnID)
  {
    v7 = [(SUTSchemaTestAssociatedSchemaIdentifier *)self turnID];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"turnID"];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v9 forKeyedSubscript:@"turnID"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_13;
  }

  whichIdentifier_Type = self->_whichIdentifier_Type;
  if (whichIdentifier_Type != [v4 whichIdentifier_Type])
  {
    goto LABEL_13;
  }

  v6 = [(SUTSchemaTestAssociatedSchemaIdentifier *)self turnID];
  v7 = [v4 turnID];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_12;
  }

  v8 = [(SUTSchemaTestAssociatedSchemaIdentifier *)self turnID];
  if (v8)
  {
    v9 = v8;
    v10 = [(SUTSchemaTestAssociatedSchemaIdentifier *)self turnID];
    v11 = [v4 turnID];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_13;
    }
  }

  else
  {
  }

  v6 = [(SUTSchemaTestAssociatedSchemaIdentifier *)self requestId];
  v7 = [v4 requestId];
  if ((v6 != 0) != (v7 == 0))
  {
    v13 = [(SUTSchemaTestAssociatedSchemaIdentifier *)self requestId];
    if (!v13)
    {

LABEL_16:
      v18 = 1;
      goto LABEL_14;
    }

    v14 = v13;
    v15 = [(SUTSchemaTestAssociatedSchemaIdentifier *)self requestId];
    v16 = [v4 requestId];
    v17 = [v15 isEqual:v16];

    if (v17)
    {
      goto LABEL_16;
    }
  }

  else
  {
LABEL_12:
  }

LABEL_13:
  v18 = 0;
LABEL_14:

  return v18;
}

- (void)writeTo:(id)a3
{
  v8 = a3;
  v4 = [(SUTSchemaTestAssociatedSchemaIdentifier *)self turnID];

  if (v4)
  {
    v5 = [(SUTSchemaTestAssociatedSchemaIdentifier *)self turnID];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(SUTSchemaTestAssociatedSchemaIdentifier *)self requestId];

  if (v6)
  {
    v7 = [(SUTSchemaTestAssociatedSchemaIdentifier *)self requestId];
    PBDataWriterWriteSubmessage();
  }
}

- (void)deleteRequestId
{
  if (self->_whichIdentifier_Type == 102)
  {
    self->_whichIdentifier_Type = 0;
    self->_requestId = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (SUTSchemaTestGeneratedRequestId)requestId
{
  if (self->_whichIdentifier_Type == 102)
  {
    v3 = self->_requestId;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setRequestId:(id)a3
{
  v4 = a3;
  turnID = self->_turnID;
  self->_turnID = 0;

  v6 = 102;
  if (!v4)
  {
    v6 = 0;
  }

  self->_whichIdentifier_Type = v6;
  requestId = self->_requestId;
  self->_requestId = v4;
}

- (void)deleteTurnID
{
  if (self->_whichIdentifier_Type == 101)
  {
    self->_whichIdentifier_Type = 0;
    self->_turnID = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (SUTSchemaTestGeneratedTurnID)turnID
{
  if (self->_whichIdentifier_Type == 101)
  {
    v3 = self->_turnID;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setTurnID:(id)a3
{
  v4 = a3;
  requestId = self->_requestId;
  self->_requestId = 0;

  v6 = 101;
  if (!v4)
  {
    v6 = 0;
  }

  self->_whichIdentifier_Type = v6;
  turnID = self->_turnID;
  self->_turnID = v4;
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = SUTSchemaTestAssociatedSchemaIdentifier;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:v4];
  v6 = [(SUTSchemaTestAssociatedSchemaIdentifier *)self turnID];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(SUTSchemaTestAssociatedSchemaIdentifier *)self deleteTurnID];
  }

  v9 = [(SUTSchemaTestAssociatedSchemaIdentifier *)self requestId];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(SUTSchemaTestAssociatedSchemaIdentifier *)self deleteRequestId];
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