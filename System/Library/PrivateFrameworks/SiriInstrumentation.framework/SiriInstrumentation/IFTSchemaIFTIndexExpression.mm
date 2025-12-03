@interface IFTSchemaIFTIndexExpression
- (BOOL)isEqual:(id)equal;
- (IFTSchemaIFTIndexExpression)initWithDictionary:(id)dictionary;
- (IFTSchemaIFTIndexExpression)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation IFTSchemaIFTIndexExpression

- (IFTSchemaIFTIndexExpression)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v13.receiver = self;
  v13.super_class = IFTSchemaIFTIndexExpression;
  v5 = [(IFTSchemaIFTIndexExpression *)&v13 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"exists"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[IFTSchemaIFTIndexExpression setExists:](v5, "setExists:", [v6 BOOLValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"previousStatementId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [[IFTSchemaIFTStatementId alloc] initWithDictionary:v7];
      [(IFTSchemaIFTIndexExpression *)v5 setPreviousStatementId:v8];
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"statementId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [[IFTSchemaIFTStatementId alloc] initWithDictionary:v9];
      [(IFTSchemaIFTIndexExpression *)v5 setStatementId:v10];
    }

    v11 = v5;
  }

  return v5;
}

- (IFTSchemaIFTIndexExpression)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(IFTSchemaIFTIndexExpression *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(IFTSchemaIFTIndexExpression *)self dictionaryRepresentation];
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
  if (*&self->_has)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[IFTSchemaIFTIndexExpression exists](self, "exists")}];
    [dictionary setObject:v4 forKeyedSubscript:@"exists"];
  }

  if (self->_previousStatementId)
  {
    previousStatementId = [(IFTSchemaIFTIndexExpression *)self previousStatementId];
    dictionaryRepresentation = [previousStatementId dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"previousStatementId"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"previousStatementId"];
    }
  }

  if (self->_statementId)
  {
    statementId = [(IFTSchemaIFTIndexExpression *)self statementId];
    dictionaryRepresentation2 = [statementId dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"statementId"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"statementId"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_exists;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(IFTSchemaIFTStatementId *)self->_previousStatementId hash]^ v3;
  return v4 ^ [(IFTSchemaIFTStatementId *)self->_statementId hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  if ((*&self->_has & 1) != (equalCopy[32] & 1))
  {
    goto LABEL_15;
  }

  if (*&self->_has)
  {
    exists = self->_exists;
    if (exists != [equalCopy exists])
    {
      goto LABEL_15;
    }
  }

  previousStatementId = [(IFTSchemaIFTIndexExpression *)self previousStatementId];
  previousStatementId2 = [equalCopy previousStatementId];
  if ((previousStatementId != 0) == (previousStatementId2 == 0))
  {
    goto LABEL_14;
  }

  previousStatementId3 = [(IFTSchemaIFTIndexExpression *)self previousStatementId];
  if (previousStatementId3)
  {
    v9 = previousStatementId3;
    previousStatementId4 = [(IFTSchemaIFTIndexExpression *)self previousStatementId];
    previousStatementId5 = [equalCopy previousStatementId];
    v12 = [previousStatementId4 isEqual:previousStatementId5];

    if (!v12)
    {
      goto LABEL_15;
    }
  }

  else
  {
  }

  previousStatementId = [(IFTSchemaIFTIndexExpression *)self statementId];
  previousStatementId2 = [equalCopy statementId];
  if ((previousStatementId != 0) != (previousStatementId2 == 0))
  {
    statementId = [(IFTSchemaIFTIndexExpression *)self statementId];
    if (!statementId)
    {

LABEL_18:
      v18 = 1;
      goto LABEL_16;
    }

    v14 = statementId;
    statementId2 = [(IFTSchemaIFTIndexExpression *)self statementId];
    statementId3 = [equalCopy statementId];
    v17 = [statementId2 isEqual:statementId3];

    if (v17)
    {
      goto LABEL_18;
    }
  }

  else
  {
LABEL_14:
  }

LABEL_15:
  v18 = 0;
LABEL_16:

  return v18;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    PBDataWriterWriteBOOLField();
  }

  previousStatementId = [(IFTSchemaIFTIndexExpression *)self previousStatementId];

  if (previousStatementId)
  {
    previousStatementId2 = [(IFTSchemaIFTIndexExpression *)self previousStatementId];
    PBDataWriterWriteSubmessage();
  }

  statementId = [(IFTSchemaIFTIndexExpression *)self statementId];

  v7 = toCopy;
  if (statementId)
  {
    statementId2 = [(IFTSchemaIFTIndexExpression *)self statementId];
    PBDataWriterWriteSubmessage();

    v7 = toCopy;
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v13.receiver = self;
  v13.super_class = IFTSchemaIFTIndexExpression;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:policyCopy];
  previousStatementId = [(IFTSchemaIFTIndexExpression *)self previousStatementId];
  v7 = [previousStatementId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(IFTSchemaIFTIndexExpression *)self deletePreviousStatementId];
  }

  statementId = [(IFTSchemaIFTIndexExpression *)self statementId];
  v10 = [statementId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(IFTSchemaIFTIndexExpression *)self deleteStatementId];
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