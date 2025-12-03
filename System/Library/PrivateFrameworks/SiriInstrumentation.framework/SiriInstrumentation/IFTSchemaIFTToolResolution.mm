@interface IFTSchemaIFTToolResolution
- (BOOL)isEqual:(id)equal;
- (IFTSchemaIFTToolResolution)initWithDictionary:(id)dictionary;
- (IFTSchemaIFTToolResolution)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation IFTSchemaIFTToolResolution

- (IFTSchemaIFTToolResolution)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v15.receiver = self;
  v15.super_class = IFTSchemaIFTToolResolution;
  v5 = [(IFTSchemaIFTToolResolution *)&v15 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"exists"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[IFTSchemaIFTToolResolution setExists:](v5, "setExists:", [v6 BOOLValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"toolId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [v7 copy];
      [(IFTSchemaIFTToolResolution *)v5 setToolId:v8];
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"statementId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [[IFTSchemaIFTStatementId alloc] initWithDictionary:v9];
      [(IFTSchemaIFTToolResolution *)v5 setStatementId:v10];
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"originProgramStatementId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [[IFTSchemaIFTStatementId alloc] initWithDictionary:v11];
      [(IFTSchemaIFTToolResolution *)v5 setOriginProgramStatementId:v12];
    }

    v13 = v5;
  }

  return v5;
}

- (IFTSchemaIFTToolResolution)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(IFTSchemaIFTToolResolution *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(IFTSchemaIFTToolResolution *)self dictionaryRepresentation];
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
    v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[IFTSchemaIFTToolResolution exists](self, "exists")}];
    [dictionary setObject:v4 forKeyedSubscript:@"exists"];
  }

  if (self->_originProgramStatementId)
  {
    originProgramStatementId = [(IFTSchemaIFTToolResolution *)self originProgramStatementId];
    dictionaryRepresentation = [originProgramStatementId dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"originProgramStatementId"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"originProgramStatementId"];
    }
  }

  if (self->_statementId)
  {
    statementId = [(IFTSchemaIFTToolResolution *)self statementId];
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

  if (self->_toolId)
  {
    toolId = [(IFTSchemaIFTToolResolution *)self toolId];
    v12 = [toolId copy];
    [dictionary setObject:v12 forKeyedSubscript:@"toolId"];
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

  v4 = [(NSString *)self->_toolId hash]^ v3;
  v5 = [(IFTSchemaIFTStatementId *)self->_statementId hash];
  return v4 ^ v5 ^ [(IFTSchemaIFTStatementId *)self->_originProgramStatementId hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_20;
  }

  if ((*&self->_has & 1) != (equalCopy[40] & 1))
  {
    goto LABEL_20;
  }

  if (*&self->_has)
  {
    exists = self->_exists;
    if (exists != [equalCopy exists])
    {
      goto LABEL_20;
    }
  }

  toolId = [(IFTSchemaIFTToolResolution *)self toolId];
  toolId2 = [equalCopy toolId];
  if ((toolId != 0) == (toolId2 == 0))
  {
    goto LABEL_19;
  }

  toolId3 = [(IFTSchemaIFTToolResolution *)self toolId];
  if (toolId3)
  {
    v9 = toolId3;
    toolId4 = [(IFTSchemaIFTToolResolution *)self toolId];
    toolId5 = [equalCopy toolId];
    v12 = [toolId4 isEqual:toolId5];

    if (!v12)
    {
      goto LABEL_20;
    }
  }

  else
  {
  }

  toolId = [(IFTSchemaIFTToolResolution *)self statementId];
  toolId2 = [equalCopy statementId];
  if ((toolId != 0) == (toolId2 == 0))
  {
    goto LABEL_19;
  }

  statementId = [(IFTSchemaIFTToolResolution *)self statementId];
  if (statementId)
  {
    v14 = statementId;
    statementId2 = [(IFTSchemaIFTToolResolution *)self statementId];
    statementId3 = [equalCopy statementId];
    v17 = [statementId2 isEqual:statementId3];

    if (!v17)
    {
      goto LABEL_20;
    }
  }

  else
  {
  }

  toolId = [(IFTSchemaIFTToolResolution *)self originProgramStatementId];
  toolId2 = [equalCopy originProgramStatementId];
  if ((toolId != 0) != (toolId2 == 0))
  {
    originProgramStatementId = [(IFTSchemaIFTToolResolution *)self originProgramStatementId];
    if (!originProgramStatementId)
    {

LABEL_23:
      v23 = 1;
      goto LABEL_21;
    }

    v19 = originProgramStatementId;
    originProgramStatementId2 = [(IFTSchemaIFTToolResolution *)self originProgramStatementId];
    originProgramStatementId3 = [equalCopy originProgramStatementId];
    v22 = [originProgramStatementId2 isEqual:originProgramStatementId3];

    if (v22)
    {
      goto LABEL_23;
    }
  }

  else
  {
LABEL_19:
  }

LABEL_20:
  v23 = 0;
LABEL_21:

  return v23;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    PBDataWriterWriteBOOLField();
  }

  toolId = [(IFTSchemaIFTToolResolution *)self toolId];

  if (toolId)
  {
    PBDataWriterWriteStringField();
  }

  statementId = [(IFTSchemaIFTToolResolution *)self statementId];

  if (statementId)
  {
    statementId2 = [(IFTSchemaIFTToolResolution *)self statementId];
    PBDataWriterWriteSubmessage();
  }

  originProgramStatementId = [(IFTSchemaIFTToolResolution *)self originProgramStatementId];

  v8 = toCopy;
  if (originProgramStatementId)
  {
    originProgramStatementId2 = [(IFTSchemaIFTToolResolution *)self originProgramStatementId];
    PBDataWriterWriteSubmessage();

    v8 = toCopy;
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v13.receiver = self;
  v13.super_class = IFTSchemaIFTToolResolution;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:policyCopy];
  if ([policyCopy isConditionSet:4])
  {
    [(IFTSchemaIFTToolResolution *)self deleteToolId];
  }

  statementId = [(IFTSchemaIFTToolResolution *)self statementId];
  v7 = [statementId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(IFTSchemaIFTToolResolution *)self deleteStatementId];
  }

  originProgramStatementId = [(IFTSchemaIFTToolResolution *)self originProgramStatementId];
  v10 = [originProgramStatementId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(IFTSchemaIFTToolResolution *)self deleteOriginProgramStatementId];
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