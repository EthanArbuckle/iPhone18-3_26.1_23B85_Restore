@interface IFTSchemaIFTClientAction
- (BOOL)isEqual:(id)equal;
- (IFTSchemaIFTClientAction)initWithDictionary:(id)dictionary;
- (IFTSchemaIFTClientAction)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation IFTSchemaIFTClientAction

- (IFTSchemaIFTClientAction)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v13.receiver = self;
  v13.super_class = IFTSchemaIFTClientAction;
  v5 = [(IFTSchemaIFTClientAction *)&v13 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"exists"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[IFTSchemaIFTClientAction setExists:](v5, "setExists:", [v6 BOOLValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"statementId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [[IFTSchemaIFTStatementId alloc] initWithDictionary:v7];
      [(IFTSchemaIFTClientAction *)v5 setStatementId:v8];
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"toolId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [v9 copy];
      [(IFTSchemaIFTClientAction *)v5 setToolId:v10];
    }

    v11 = v5;
  }

  return v5;
}

- (IFTSchemaIFTClientAction)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(IFTSchemaIFTClientAction *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(IFTSchemaIFTClientAction *)self dictionaryRepresentation];
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
    v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[IFTSchemaIFTClientAction exists](self, "exists")}];
    [dictionary setObject:v4 forKeyedSubscript:@"exists"];
  }

  if (self->_statementId)
  {
    statementId = [(IFTSchemaIFTClientAction *)self statementId];
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

  if (self->_toolId)
  {
    toolId = [(IFTSchemaIFTClientAction *)self toolId];
    v9 = [toolId copy];
    [dictionary setObject:v9 forKeyedSubscript:@"toolId"];
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

  v4 = [(IFTSchemaIFTStatementId *)self->_statementId hash]^ v3;
  return v4 ^ [(NSString *)self->_toolId hash];
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

  statementId = [(IFTSchemaIFTClientAction *)self statementId];
  statementId2 = [equalCopy statementId];
  if ((statementId != 0) == (statementId2 == 0))
  {
    goto LABEL_14;
  }

  statementId3 = [(IFTSchemaIFTClientAction *)self statementId];
  if (statementId3)
  {
    v9 = statementId3;
    statementId4 = [(IFTSchemaIFTClientAction *)self statementId];
    statementId5 = [equalCopy statementId];
    v12 = [statementId4 isEqual:statementId5];

    if (!v12)
    {
      goto LABEL_15;
    }
  }

  else
  {
  }

  statementId = [(IFTSchemaIFTClientAction *)self toolId];
  statementId2 = [equalCopy toolId];
  if ((statementId != 0) != (statementId2 == 0))
  {
    toolId = [(IFTSchemaIFTClientAction *)self toolId];
    if (!toolId)
    {

LABEL_18:
      v18 = 1;
      goto LABEL_16;
    }

    v14 = toolId;
    toolId2 = [(IFTSchemaIFTClientAction *)self toolId];
    toolId3 = [equalCopy toolId];
    v17 = [toolId2 isEqual:toolId3];

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

  statementId = [(IFTSchemaIFTClientAction *)self statementId];

  if (statementId)
  {
    statementId2 = [(IFTSchemaIFTClientAction *)self statementId];
    PBDataWriterWriteSubmessage();
  }

  toolId = [(IFTSchemaIFTClientAction *)self toolId];

  v7 = toCopy;
  if (toolId)
  {
    PBDataWriterWriteStringField();
    v7 = toCopy;
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v10.receiver = self;
  v10.super_class = IFTSchemaIFTClientAction;
  v5 = [(SISchemaInstrumentationMessage *)&v10 applySensitiveConditionsPolicy:policyCopy];
  if ([policyCopy isConditionSet:4])
  {
    [(IFTSchemaIFTClientAction *)self deleteToolId];
  }

  statementId = [(IFTSchemaIFTClientAction *)self statementId];
  v7 = [statementId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(IFTSchemaIFTClientAction *)self deleteStatementId];
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