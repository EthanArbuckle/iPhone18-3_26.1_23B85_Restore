@interface IFTSchemaIFTStatementResultPayload
- (BOOL)isEqual:(id)a3;
- (IFTSchemaIFTStatementResultPayload)initWithDictionary:(id)a3;
- (IFTSchemaIFTStatementResultPayload)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)writeTo:(id)a3;
@end

@implementation IFTSchemaIFTStatementResultPayload

- (IFTSchemaIFTStatementResultPayload)initWithDictionary:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = IFTSchemaIFTStatementResultPayload;
  v5 = [(IFTSchemaIFTStatementResultPayload *)&v12 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"outcome"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[IFTSchemaIFTStatementOutcome alloc] initWithDictionary:v6];
      [(IFTSchemaIFTStatementResultPayload *)v5 setOutcome:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"response"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[IFTSchemaIFTResponseManifest alloc] initWithDictionary:v8];
      [(IFTSchemaIFTStatementResultPayload *)v5 setResponse:v9];
    }

    v10 = v5;
  }

  return v5;
}

- (IFTSchemaIFTStatementResultPayload)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(IFTSchemaIFTStatementResultPayload *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(IFTSchemaIFTStatementResultPayload *)self dictionaryRepresentation];
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
  if (self->_outcome)
  {
    v4 = [(IFTSchemaIFTStatementResultPayload *)self outcome];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"outcome"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"outcome"];
    }
  }

  if (self->_response)
  {
    v7 = [(IFTSchemaIFTStatementResultPayload *)self response];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"response"];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v9 forKeyedSubscript:@"response"];
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
    goto LABEL_12;
  }

  v5 = [(IFTSchemaIFTStatementResultPayload *)self outcome];
  v6 = [v4 outcome];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_11;
  }

  v7 = [(IFTSchemaIFTStatementResultPayload *)self outcome];
  if (v7)
  {
    v8 = v7;
    v9 = [(IFTSchemaIFTStatementResultPayload *)self outcome];
    v10 = [v4 outcome];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  v5 = [(IFTSchemaIFTStatementResultPayload *)self response];
  v6 = [v4 response];
  if ((v5 != 0) != (v6 == 0))
  {
    v12 = [(IFTSchemaIFTStatementResultPayload *)self response];
    if (!v12)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = v12;
    v14 = [(IFTSchemaIFTStatementResultPayload *)self response];
    v15 = [v4 response];
    v16 = [v14 isEqual:v15];

    if (v16)
    {
      goto LABEL_15;
    }
  }

  else
  {
LABEL_11:
  }

LABEL_12:
  v17 = 0;
LABEL_13:

  return v17;
}

- (void)writeTo:(id)a3
{
  v8 = a3;
  v4 = [(IFTSchemaIFTStatementResultPayload *)self outcome];

  if (v4)
  {
    v5 = [(IFTSchemaIFTStatementResultPayload *)self outcome];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(IFTSchemaIFTStatementResultPayload *)self response];

  if (v6)
  {
    v7 = [(IFTSchemaIFTStatementResultPayload *)self response];
    PBDataWriterWriteSubmessage();
  }
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = IFTSchemaIFTStatementResultPayload;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:v4];
  v6 = [(IFTSchemaIFTStatementResultPayload *)self outcome];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(IFTSchemaIFTStatementResultPayload *)self deleteOutcome];
  }

  v9 = [(IFTSchemaIFTStatementResultPayload *)self response];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(IFTSchemaIFTStatementResultPayload *)self deleteResponse];
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