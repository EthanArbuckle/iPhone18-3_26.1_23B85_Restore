@interface IFTSchemaIFTProgramStatement
- (BOOL)isEqual:(id)a3;
- (IFTSchemaIFTProgramStatement)initWithDictionary:(id)a3;
- (IFTSchemaIFTProgramStatement)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation IFTSchemaIFTProgramStatement

- (IFTSchemaIFTProgramStatement)initWithDictionary:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = IFTSchemaIFTProgramStatement;
  v5 = [(IFTSchemaIFTProgramStatement *)&v15 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"statementId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[IFTSchemaIFTStatementId alloc] initWithDictionary:v6];
      [(IFTSchemaIFTProgramStatement *)v5 setStatementId:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"expression"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[IFTSchemaIFTASTFlatExpr alloc] initWithDictionary:v8];
      [(IFTSchemaIFTProgramStatement *)v5 setExpression:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"expressionName"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[IFTSchemaIFTExpression alloc] initWithDictionary:v10];
      [(IFTSchemaIFTProgramStatement *)v5 setExpressionName:v11];
    }

    v12 = [v4 objectForKeyedSubscript:@"isRoot"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[IFTSchemaIFTProgramStatement setIsRoot:](v5, "setIsRoot:", [v12 BOOLValue]);
    }

    v13 = v5;
  }

  return v5;
}

- (IFTSchemaIFTProgramStatement)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(IFTSchemaIFTProgramStatement *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(IFTSchemaIFTProgramStatement *)self dictionaryRepresentation];
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
  if (self->_expression)
  {
    v4 = [(IFTSchemaIFTProgramStatement *)self expression];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"expression"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"expression"];
    }
  }

  if (self->_expressionName)
  {
    v7 = [(IFTSchemaIFTProgramStatement *)self expressionName];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"expressionName"];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v9 forKeyedSubscript:@"expressionName"];
    }
  }

  if (*(&self->_isRoot + 1))
  {
    v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[IFTSchemaIFTProgramStatement isRoot](self, "isRoot")}];
    [v3 setObject:v10 forKeyedSubscript:@"isRoot"];
  }

  if (self->_statementId)
  {
    v11 = [(IFTSchemaIFTProgramStatement *)self statementId];
    v12 = [v11 dictionaryRepresentation];
    if (v12)
    {
      [v3 setObject:v12 forKeyedSubscript:@"statementId"];
    }

    else
    {
      v13 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v13 forKeyedSubscript:@"statementId"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  v5 = [(IFTSchemaIFTProgramStatement *)self statementId];
  v6 = [v4 statementId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_16;
  }

  v7 = [(IFTSchemaIFTProgramStatement *)self statementId];
  if (v7)
  {
    v8 = v7;
    v9 = [(IFTSchemaIFTProgramStatement *)self statementId];
    v10 = [v4 statementId];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v5 = [(IFTSchemaIFTProgramStatement *)self expression];
  v6 = [v4 expression];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_16;
  }

  v12 = [(IFTSchemaIFTProgramStatement *)self expression];
  if (v12)
  {
    v13 = v12;
    v14 = [(IFTSchemaIFTProgramStatement *)self expression];
    v15 = [v4 expression];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v5 = [(IFTSchemaIFTProgramStatement *)self expressionName];
  v6 = [v4 expressionName];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_16:

    goto LABEL_17;
  }

  v17 = [(IFTSchemaIFTProgramStatement *)self expressionName];
  if (v17)
  {
    v18 = v17;
    v19 = [(IFTSchemaIFTProgramStatement *)self expressionName];
    v20 = [v4 expressionName];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  if (*(&self->_isRoot + 1) == (v4[33] & 1))
  {
    if (!*(&self->_isRoot + 1) || (isRoot = self->_isRoot, isRoot == [v4 isRoot]))
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

- (void)writeTo:(id)a3
{
  v10 = a3;
  v4 = [(IFTSchemaIFTProgramStatement *)self statementId];

  if (v4)
  {
    v5 = [(IFTSchemaIFTProgramStatement *)self statementId];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(IFTSchemaIFTProgramStatement *)self expression];

  if (v6)
  {
    v7 = [(IFTSchemaIFTProgramStatement *)self expression];
    PBDataWriterWriteSubmessage();
  }

  v8 = [(IFTSchemaIFTProgramStatement *)self expressionName];

  if (v8)
  {
    v9 = [(IFTSchemaIFTProgramStatement *)self expressionName];
    PBDataWriterWriteSubmessage();
  }

  if (*(&self->_isRoot + 1))
  {
    PBDataWriterWriteBOOLField();
  }
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = IFTSchemaIFTProgramStatement;
  v5 = [(SISchemaInstrumentationMessage *)&v16 applySensitiveConditionsPolicy:v4];
  v6 = [(IFTSchemaIFTProgramStatement *)self statementId];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(IFTSchemaIFTProgramStatement *)self deleteStatementId];
  }

  v9 = [(IFTSchemaIFTProgramStatement *)self expression];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(IFTSchemaIFTProgramStatement *)self deleteExpression];
  }

  v12 = [(IFTSchemaIFTProgramStatement *)self expressionName];
  v13 = [v12 applySensitiveConditionsPolicy:v4];
  v14 = [v13 suppressMessage];

  if (v14)
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