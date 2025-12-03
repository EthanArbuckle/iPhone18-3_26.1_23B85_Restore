@interface IFTSchemaIFTStructuredSearchExpressionParameters
- (BOOL)isEqual:(id)equal;
- (IFTSchemaIFTStructuredSearchExpressionParameters)initWithDictionary:(id)dictionary;
- (IFTSchemaIFTStructuredSearchExpressionParameters)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)writeTo:(id)to;
@end

@implementation IFTSchemaIFTStructuredSearchExpressionParameters

- (IFTSchemaIFTStructuredSearchExpressionParameters)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = IFTSchemaIFTStructuredSearchExpressionParameters;
  v5 = [(IFTSchemaIFTStructuredSearchExpressionParameters *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"structuredSearchParameterName"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(IFTSchemaIFTStructuredSearchExpressionParameters *)v5 setStructuredSearchParameterName:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"statementId"];
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

- (IFTSchemaIFTStructuredSearchExpressionParameters)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(IFTSchemaIFTStructuredSearchExpressionParameters *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(IFTSchemaIFTStructuredSearchExpressionParameters *)self dictionaryRepresentation];
  if ([MEMORY[0x1E696ACB0] isValidJSONObject:dictionaryRepresentation])
  {
    v3 = [MEMORY[0x1E696ACB0] dataWithJSONObject:dictionaryRepresentation options:0 error:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_statementId)
  {
    statementId = [(IFTSchemaIFTStructuredSearchExpressionParameters *)self statementId];
    dictionaryRepresentation = [statementId dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"statementId"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"statementId"];
    }
  }

  if (self->_structuredSearchParameterName)
  {
    structuredSearchParameterName = [(IFTSchemaIFTStructuredSearchExpressionParameters *)self structuredSearchParameterName];
    v8 = [structuredSearchParameterName copy];
    [dictionary setObject:v8 forKeyedSubscript:@"structuredSearchParameterName"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  structuredSearchParameterName = [(IFTSchemaIFTStructuredSearchExpressionParameters *)self structuredSearchParameterName];
  structuredSearchParameterName2 = [equalCopy structuredSearchParameterName];
  if ((structuredSearchParameterName != 0) == (structuredSearchParameterName2 == 0))
  {
    goto LABEL_11;
  }

  structuredSearchParameterName3 = [(IFTSchemaIFTStructuredSearchExpressionParameters *)self structuredSearchParameterName];
  if (structuredSearchParameterName3)
  {
    v8 = structuredSearchParameterName3;
    structuredSearchParameterName4 = [(IFTSchemaIFTStructuredSearchExpressionParameters *)self structuredSearchParameterName];
    structuredSearchParameterName5 = [equalCopy structuredSearchParameterName];
    v11 = [structuredSearchParameterName4 isEqual:structuredSearchParameterName5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  structuredSearchParameterName = [(IFTSchemaIFTStructuredSearchExpressionParameters *)self statementId];
  structuredSearchParameterName2 = [equalCopy statementId];
  if ((structuredSearchParameterName != 0) != (structuredSearchParameterName2 == 0))
  {
    statementId = [(IFTSchemaIFTStructuredSearchExpressionParameters *)self statementId];
    if (!statementId)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = statementId;
    statementId2 = [(IFTSchemaIFTStructuredSearchExpressionParameters *)self statementId];
    statementId3 = [equalCopy statementId];
    v16 = [statementId2 isEqual:statementId3];

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

- (void)writeTo:(id)to
{
  toCopy = to;
  structuredSearchParameterName = [(IFTSchemaIFTStructuredSearchExpressionParameters *)self structuredSearchParameterName];

  if (structuredSearchParameterName)
  {
    PBDataWriterWriteStringField();
  }

  statementId = [(IFTSchemaIFTStructuredSearchExpressionParameters *)self statementId];

  if (statementId)
  {
    statementId2 = [(IFTSchemaIFTStructuredSearchExpressionParameters *)self statementId];
    PBDataWriterWriteSubmessage();
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = IFTSchemaIFTStructuredSearchExpressionParameters;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(IFTSchemaIFTStructuredSearchExpressionParameters *)self statementId:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
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