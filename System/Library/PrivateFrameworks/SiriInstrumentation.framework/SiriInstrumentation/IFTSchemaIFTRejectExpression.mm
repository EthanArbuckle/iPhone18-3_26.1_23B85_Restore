@interface IFTSchemaIFTRejectExpression
- (BOOL)isEqual:(id)equal;
- (IFTSchemaIFTRejectExpression)initWithDictionary:(id)dictionary;
- (IFTSchemaIFTRejectExpression)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)writeTo:(id)to;
@end

@implementation IFTSchemaIFTRejectExpression

- (IFTSchemaIFTRejectExpression)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = IFTSchemaIFTRejectExpression;
  v5 = [(IFTSchemaIFTRejectExpression *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"statementId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[IFTSchemaIFTStatementId alloc] initWithDictionary:v6];
      [(IFTSchemaIFTRejectExpression *)v5 setStatementId:v7];
    }

    v8 = v5;
  }

  return v5;
}

- (IFTSchemaIFTRejectExpression)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(IFTSchemaIFTRejectExpression *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(IFTSchemaIFTRejectExpression *)self dictionaryRepresentation];
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
    statementId = [(IFTSchemaIFTRejectExpression *)self statementId];
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
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    statementId = [(IFTSchemaIFTRejectExpression *)self statementId];
    statementId2 = [equalCopy statementId];
    v7 = statementId2;
    if ((statementId != 0) != (statementId2 == 0))
    {
      statementId3 = [(IFTSchemaIFTRejectExpression *)self statementId];
      if (!statementId3)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = statementId3;
      statementId4 = [(IFTSchemaIFTRejectExpression *)self statementId];
      statementId5 = [equalCopy statementId];
      v12 = [statementId4 isEqual:statementId5];

      if (v12)
      {
        goto LABEL_10;
      }
    }

    else
    {
    }
  }

  v13 = 0;
LABEL_8:

  return v13;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  statementId = [(IFTSchemaIFTRejectExpression *)self statementId];

  if (statementId)
  {
    statementId2 = [(IFTSchemaIFTRejectExpression *)self statementId];
    PBDataWriterWriteSubmessage();
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = IFTSchemaIFTRejectExpression;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(IFTSchemaIFTRejectExpression *)self statementId:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(IFTSchemaIFTRejectExpression *)self deleteStatementId];
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