@interface IFTSchemaIFTCallExpressionParameters
- (BOOL)isEqual:(id)equal;
- (IFTSchemaIFTCallExpressionParameters)initWithDictionary:(id)dictionary;
- (IFTSchemaIFTCallExpressionParameters)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)writeTo:(id)to;
@end

@implementation IFTSchemaIFTCallExpressionParameters

- (IFTSchemaIFTCallExpressionParameters)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = IFTSchemaIFTCallExpressionParameters;
  v5 = [(IFTSchemaIFTCallExpressionParameters *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"callParameterName"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(IFTSchemaIFTCallExpressionParameters *)v5 setCallParameterName:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"statementId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[IFTSchemaIFTStatementId alloc] initWithDictionary:v8];
      [(IFTSchemaIFTCallExpressionParameters *)v5 setStatementId:v9];
    }

    v10 = v5;
  }

  return v5;
}

- (IFTSchemaIFTCallExpressionParameters)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(IFTSchemaIFTCallExpressionParameters *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(IFTSchemaIFTCallExpressionParameters *)self dictionaryRepresentation];
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
  if (self->_callParameterName)
  {
    callParameterName = [(IFTSchemaIFTCallExpressionParameters *)self callParameterName];
    v5 = [callParameterName copy];
    [dictionary setObject:v5 forKeyedSubscript:@"callParameterName"];
  }

  if (self->_statementId)
  {
    statementId = [(IFTSchemaIFTCallExpressionParameters *)self statementId];
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

  callParameterName = [(IFTSchemaIFTCallExpressionParameters *)self callParameterName];
  callParameterName2 = [equalCopy callParameterName];
  if ((callParameterName != 0) == (callParameterName2 == 0))
  {
    goto LABEL_11;
  }

  callParameterName3 = [(IFTSchemaIFTCallExpressionParameters *)self callParameterName];
  if (callParameterName3)
  {
    v8 = callParameterName3;
    callParameterName4 = [(IFTSchemaIFTCallExpressionParameters *)self callParameterName];
    callParameterName5 = [equalCopy callParameterName];
    v11 = [callParameterName4 isEqual:callParameterName5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  callParameterName = [(IFTSchemaIFTCallExpressionParameters *)self statementId];
  callParameterName2 = [equalCopy statementId];
  if ((callParameterName != 0) != (callParameterName2 == 0))
  {
    statementId = [(IFTSchemaIFTCallExpressionParameters *)self statementId];
    if (!statementId)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = statementId;
    statementId2 = [(IFTSchemaIFTCallExpressionParameters *)self statementId];
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
  callParameterName = [(IFTSchemaIFTCallExpressionParameters *)self callParameterName];

  if (callParameterName)
  {
    PBDataWriterWriteStringField();
  }

  statementId = [(IFTSchemaIFTCallExpressionParameters *)self statementId];

  if (statementId)
  {
    statementId2 = [(IFTSchemaIFTCallExpressionParameters *)self statementId];
    PBDataWriterWriteSubmessage();
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = IFTSchemaIFTCallExpressionParameters;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(IFTSchemaIFTCallExpressionParameters *)self statementId:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(IFTSchemaIFTCallExpressionParameters *)self deleteStatementId];
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