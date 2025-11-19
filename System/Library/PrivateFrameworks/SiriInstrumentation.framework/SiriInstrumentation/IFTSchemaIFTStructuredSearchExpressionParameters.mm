@interface IFTSchemaIFTStructuredSearchExpressionParameters
- (BOOL)isEqual:(id)a3;
- (IFTSchemaIFTStructuredSearchExpressionParameters)initWithDictionary:(id)a3;
- (IFTSchemaIFTStructuredSearchExpressionParameters)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)writeTo:(id)a3;
@end

@implementation IFTSchemaIFTStructuredSearchExpressionParameters

- (IFTSchemaIFTStructuredSearchExpressionParameters)initWithDictionary:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = IFTSchemaIFTStructuredSearchExpressionParameters;
  v5 = [(IFTSchemaIFTStructuredSearchExpressionParameters *)&v12 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"structuredSearchParameterName"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(IFTSchemaIFTStructuredSearchExpressionParameters *)v5 setStructuredSearchParameterName:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"statementId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[IFTSchemaIFTStatementId alloc] initWithDictionary:v8];
      [(IFTSchemaIFTStructuredSearchExpressionParameters *)v5 setStatementId:v9];
    }

    v10 = v5;
  }

  return v5;
}

- (IFTSchemaIFTStructuredSearchExpressionParameters)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(IFTSchemaIFTStructuredSearchExpressionParameters *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(IFTSchemaIFTStructuredSearchExpressionParameters *)self dictionaryRepresentation];
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
  if (self->_statementId)
  {
    v4 = [(IFTSchemaIFTStructuredSearchExpressionParameters *)self statementId];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"statementId"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"statementId"];
    }
  }

  if (self->_structuredSearchParameterName)
  {
    v7 = [(IFTSchemaIFTStructuredSearchExpressionParameters *)self structuredSearchParameterName];
    v8 = [v7 copy];
    [v3 setObject:v8 forKeyedSubscript:@"structuredSearchParameterName"];
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

  v5 = [(IFTSchemaIFTStructuredSearchExpressionParameters *)self structuredSearchParameterName];
  v6 = [v4 structuredSearchParameterName];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_11;
  }

  v7 = [(IFTSchemaIFTStructuredSearchExpressionParameters *)self structuredSearchParameterName];
  if (v7)
  {
    v8 = v7;
    v9 = [(IFTSchemaIFTStructuredSearchExpressionParameters *)self structuredSearchParameterName];
    v10 = [v4 structuredSearchParameterName];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  v5 = [(IFTSchemaIFTStructuredSearchExpressionParameters *)self statementId];
  v6 = [v4 statementId];
  if ((v5 != 0) != (v6 == 0))
  {
    v12 = [(IFTSchemaIFTStructuredSearchExpressionParameters *)self statementId];
    if (!v12)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = v12;
    v14 = [(IFTSchemaIFTStructuredSearchExpressionParameters *)self statementId];
    v15 = [v4 statementId];
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
  v7 = a3;
  v4 = [(IFTSchemaIFTStructuredSearchExpressionParameters *)self structuredSearchParameterName];

  if (v4)
  {
    PBDataWriterWriteStringField();
  }

  v5 = [(IFTSchemaIFTStructuredSearchExpressionParameters *)self statementId];

  if (v5)
  {
    v6 = [(IFTSchemaIFTStructuredSearchExpressionParameters *)self statementId];
    PBDataWriterWriteSubmessage();
  }
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v9.receiver = self;
  v9.super_class = IFTSchemaIFTStructuredSearchExpressionParameters;
  v4 = a3;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:v4];
  v6 = [(IFTSchemaIFTStructuredSearchExpressionParameters *)self statementId:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:v4];

  LODWORD(v4) = [v7 suppressMessage];
  if (v4)
  {
    [(IFTSchemaIFTStructuredSearchExpressionParameters *)self deleteStatementId];
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