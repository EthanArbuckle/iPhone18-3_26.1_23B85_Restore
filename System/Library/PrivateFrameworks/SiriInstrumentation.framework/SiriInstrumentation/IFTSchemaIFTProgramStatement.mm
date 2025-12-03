@interface IFTSchemaIFTProgramStatement
- (BOOL)isEqual:(id)equal;
- (IFTSchemaIFTProgramStatement)initWithDictionary:(id)dictionary;
- (IFTSchemaIFTProgramStatement)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation IFTSchemaIFTProgramStatement

- (IFTSchemaIFTProgramStatement)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v15.receiver = self;
  v15.super_class = IFTSchemaIFTProgramStatement;
  v5 = [(IFTSchemaIFTProgramStatement *)&v15 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"statementId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[IFTSchemaIFTStatementId alloc] initWithDictionary:v6];
      [(IFTSchemaIFTProgramStatement *)v5 setStatementId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"expression"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[IFTSchemaIFTASTFlatExpr alloc] initWithDictionary:v8];
      [(IFTSchemaIFTProgramStatement *)v5 setExpression:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"expressionName"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[IFTSchemaIFTExpression alloc] initWithDictionary:v10];
      [(IFTSchemaIFTProgramStatement *)v5 setExpressionName:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"isRoot"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[IFTSchemaIFTProgramStatement setIsRoot:](v5, "setIsRoot:", [v12 BOOLValue]);
    }

    v13 = v5;
  }

  return v5;
}

- (IFTSchemaIFTProgramStatement)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(IFTSchemaIFTProgramStatement *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(IFTSchemaIFTProgramStatement *)self dictionaryRepresentation];
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
  if (self->_expression)
  {
    expression = [(IFTSchemaIFTProgramStatement *)self expression];
    dictionaryRepresentation = [expression dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"expression"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"expression"];
    }
  }

  if (self->_expressionName)
  {
    expressionName = [(IFTSchemaIFTProgramStatement *)self expressionName];
    dictionaryRepresentation2 = [expressionName dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"expressionName"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"expressionName"];
    }
  }

  if (*(&self->_isRoot + 1))
  {
    v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[IFTSchemaIFTProgramStatement isRoot](self, "isRoot")}];
    [dictionary setObject:v10 forKeyedSubscript:@"isRoot"];
  }

  if (self->_statementId)
  {
    statementId = [(IFTSchemaIFTProgramStatement *)self statementId];
    dictionaryRepresentation3 = [statementId dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"statementId"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"statementId"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(IFTSchemaIFTStatementId *)self->_statementId hash];
  v4 = [(IFTSchemaIFTASTFlatExpr *)self->_expression hash];
  v5 = [(IFTSchemaIFTExpression *)self->_expressionName hash];
  if (*(&self->_isRoot + 1))
  {
    v6 = 2654435761 * self->_isRoot;
  }

  else
  {
    v6 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  statementId = [(IFTSchemaIFTProgramStatement *)self statementId];
  statementId2 = [equalCopy statementId];
  if ((statementId != 0) == (statementId2 == 0))
  {
    goto LABEL_16;
  }

  statementId3 = [(IFTSchemaIFTProgramStatement *)self statementId];
  if (statementId3)
  {
    v8 = statementId3;
    statementId4 = [(IFTSchemaIFTProgramStatement *)self statementId];
    statementId5 = [equalCopy statementId];
    v11 = [statementId4 isEqual:statementId5];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  statementId = [(IFTSchemaIFTProgramStatement *)self expression];
  statementId2 = [equalCopy expression];
  if ((statementId != 0) == (statementId2 == 0))
  {
    goto LABEL_16;
  }

  expression = [(IFTSchemaIFTProgramStatement *)self expression];
  if (expression)
  {
    v13 = expression;
    expression2 = [(IFTSchemaIFTProgramStatement *)self expression];
    expression3 = [equalCopy expression];
    v16 = [expression2 isEqual:expression3];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  statementId = [(IFTSchemaIFTProgramStatement *)self expressionName];
  statementId2 = [equalCopy expressionName];
  if ((statementId != 0) == (statementId2 == 0))
  {
LABEL_16:

    goto LABEL_17;
  }

  expressionName = [(IFTSchemaIFTProgramStatement *)self expressionName];
  if (expressionName)
  {
    v18 = expressionName;
    expressionName2 = [(IFTSchemaIFTProgramStatement *)self expressionName];
    expressionName3 = [equalCopy expressionName];
    v21 = [expressionName2 isEqual:expressionName3];

    if (!v21)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  if (*(&self->_isRoot + 1) == (equalCopy[33] & 1))
  {
    if (!*(&self->_isRoot + 1) || (isRoot = self->_isRoot, isRoot == [equalCopy isRoot]))
    {
      v22 = 1;
      goto LABEL_18;
    }
  }

LABEL_17:
  v22 = 0;
LABEL_18:

  return v22;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  statementId = [(IFTSchemaIFTProgramStatement *)self statementId];

  if (statementId)
  {
    statementId2 = [(IFTSchemaIFTProgramStatement *)self statementId];
    PBDataWriterWriteSubmessage();
  }

  expression = [(IFTSchemaIFTProgramStatement *)self expression];

  if (expression)
  {
    expression2 = [(IFTSchemaIFTProgramStatement *)self expression];
    PBDataWriterWriteSubmessage();
  }

  expressionName = [(IFTSchemaIFTProgramStatement *)self expressionName];

  if (expressionName)
  {
    expressionName2 = [(IFTSchemaIFTProgramStatement *)self expressionName];
    PBDataWriterWriteSubmessage();
  }

  if (*(&self->_isRoot + 1))
  {
    PBDataWriterWriteBOOLField();
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v16.receiver = self;
  v16.super_class = IFTSchemaIFTProgramStatement;
  v5 = [(SISchemaInstrumentationMessage *)&v16 applySensitiveConditionsPolicy:policyCopy];
  statementId = [(IFTSchemaIFTProgramStatement *)self statementId];
  v7 = [statementId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(IFTSchemaIFTProgramStatement *)self deleteStatementId];
  }

  expression = [(IFTSchemaIFTProgramStatement *)self expression];
  v10 = [expression applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(IFTSchemaIFTProgramStatement *)self deleteExpression];
  }

  expressionName = [(IFTSchemaIFTProgramStatement *)self expressionName];
  v13 = [expressionName applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
  {
    [(IFTSchemaIFTProgramStatement *)self deleteExpressionName];
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