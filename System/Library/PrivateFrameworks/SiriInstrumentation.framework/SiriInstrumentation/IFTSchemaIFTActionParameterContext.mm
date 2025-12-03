@interface IFTSchemaIFTActionParameterContext
- (BOOL)isEqual:(id)equal;
- (IFTSchemaIFTActionParameterContext)initWithDictionary:(id)dictionary;
- (IFTSchemaIFTActionParameterContext)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation IFTSchemaIFTActionParameterContext

- (IFTSchemaIFTActionParameterContext)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v13.receiver = self;
  v13.super_class = IFTSchemaIFTActionParameterContext;
  v5 = [(IFTSchemaIFTActionParameterContext *)&v13 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"statementId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[IFTSchemaIFTStatementId alloc] initWithDictionary:v6];
      [(IFTSchemaIFTActionParameterContext *)v5 setStatementId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"toolId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(IFTSchemaIFTActionParameterContext *)v5 setToolId:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"actionClass"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[IFTSchemaIFTActionParameterContext setActionClass:](v5, "setActionClass:", [v10 intValue]);
    }

    v11 = v5;
  }

  return v5;
}

- (IFTSchemaIFTActionParameterContext)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(IFTSchemaIFTActionParameterContext *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(IFTSchemaIFTActionParameterContext *)self dictionaryRepresentation];
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
    v4 = [(IFTSchemaIFTActionParameterContext *)self actionClass]- 1;
    if (v4 > 2)
    {
      v5 = @"IFTACTIONCLASS_UNKNOWN";
    }

    else
    {
      v5 = off_1E78D81C0[v4];
    }

    [dictionary setObject:v5 forKeyedSubscript:@"actionClass"];
  }

  if (self->_statementId)
  {
    statementId = [(IFTSchemaIFTActionParameterContext *)self statementId];
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
    toolId = [(IFTSchemaIFTActionParameterContext *)self toolId];
    v10 = [toolId copy];
    [dictionary setObject:v10 forKeyedSubscript:@"toolId"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(IFTSchemaIFTStatementId *)self->_statementId hash];
  v4 = [(NSString *)self->_toolId hash];
  if (*&self->_has)
  {
    v5 = 2654435761 * self->_actionClass;
  }

  else
  {
    v5 = 0;
  }

  return v4 ^ v3 ^ v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  statementId = [(IFTSchemaIFTActionParameterContext *)self statementId];
  statementId2 = [equalCopy statementId];
  if ((statementId != 0) == (statementId2 == 0))
  {
    goto LABEL_11;
  }

  statementId3 = [(IFTSchemaIFTActionParameterContext *)self statementId];
  if (statementId3)
  {
    v8 = statementId3;
    statementId4 = [(IFTSchemaIFTActionParameterContext *)self statementId];
    statementId5 = [equalCopy statementId];
    v11 = [statementId4 isEqual:statementId5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  statementId = [(IFTSchemaIFTActionParameterContext *)self toolId];
  statementId2 = [equalCopy toolId];
  if ((statementId != 0) == (statementId2 == 0))
  {
LABEL_11:

    goto LABEL_12;
  }

  toolId = [(IFTSchemaIFTActionParameterContext *)self toolId];
  if (toolId)
  {
    v13 = toolId;
    toolId2 = [(IFTSchemaIFTActionParameterContext *)self toolId];
    toolId3 = [equalCopy toolId];
    v16 = [toolId2 isEqual:toolId3];

    if (!v16)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) == (equalCopy[28] & 1))
  {
    if ((*&self->_has & 1) == 0 || (actionClass = self->_actionClass, actionClass == [equalCopy actionClass]))
    {
      v17 = 1;
      goto LABEL_13;
    }
  }

LABEL_12:
  v17 = 0;
LABEL_13:

  return v17;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  statementId = [(IFTSchemaIFTActionParameterContext *)self statementId];

  if (statementId)
  {
    statementId2 = [(IFTSchemaIFTActionParameterContext *)self statementId];
    PBDataWriterWriteSubmessage();
  }

  toolId = [(IFTSchemaIFTActionParameterContext *)self toolId];

  if (toolId)
  {
    PBDataWriterWriteStringField();
  }

  v7 = toCopy;
  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
    v7 = toCopy;
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v10.receiver = self;
  v10.super_class = IFTSchemaIFTActionParameterContext;
  v5 = [(SISchemaInstrumentationMessage *)&v10 applySensitiveConditionsPolicy:policyCopy];
  if ([policyCopy isConditionSet:4])
  {
    [(IFTSchemaIFTActionParameterContext *)self deleteToolId];
  }

  statementId = [(IFTSchemaIFTActionParameterContext *)self statementId];
  v7 = [statementId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(IFTSchemaIFTActionParameterContext *)self deleteStatementId];
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