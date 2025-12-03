@interface IFTSchemaIFTQueryStepResults
- (BOOL)isEqual:(id)equal;
- (IFTSchemaIFTQueryStepResults)initWithDictionary:(id)dictionary;
- (IFTSchemaIFTQueryStepResults)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation IFTSchemaIFTQueryStepResults

- (IFTSchemaIFTQueryStepResults)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v13.receiver = self;
  v13.super_class = IFTSchemaIFTQueryStepResults;
  v5 = [(IFTSchemaIFTQueryStepResults *)&v13 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"exists"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[IFTSchemaIFTQueryStepResults setExists:](v5, "setExists:", [v6 BOOLValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"originProgramStatementId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [[IFTSchemaIFTStatementId alloc] initWithDictionary:v7];
      [(IFTSchemaIFTQueryStepResults *)v5 setOriginProgramStatementId:v8];
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"queryResults"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [[IFTSchemaIFTQueryResults alloc] initWithDictionary:v9];
      [(IFTSchemaIFTQueryStepResults *)v5 setQueryResults:v10];
    }

    v11 = v5;
  }

  return v5;
}

- (IFTSchemaIFTQueryStepResults)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(IFTSchemaIFTQueryStepResults *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(IFTSchemaIFTQueryStepResults *)self dictionaryRepresentation];
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
    v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[IFTSchemaIFTQueryStepResults exists](self, "exists")}];
    [dictionary setObject:v4 forKeyedSubscript:@"exists"];
  }

  if (self->_originProgramStatementId)
  {
    originProgramStatementId = [(IFTSchemaIFTQueryStepResults *)self originProgramStatementId];
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

  if (self->_queryResults)
  {
    queryResults = [(IFTSchemaIFTQueryStepResults *)self queryResults];
    dictionaryRepresentation2 = [queryResults dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"queryResults"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"queryResults"];
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

  v4 = [(IFTSchemaIFTStatementId *)self->_originProgramStatementId hash]^ v3;
  return v4 ^ [(IFTSchemaIFTQueryResults *)self->_queryResults hash];
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

  originProgramStatementId = [(IFTSchemaIFTQueryStepResults *)self originProgramStatementId];
  originProgramStatementId2 = [equalCopy originProgramStatementId];
  if ((originProgramStatementId != 0) == (originProgramStatementId2 == 0))
  {
    goto LABEL_14;
  }

  originProgramStatementId3 = [(IFTSchemaIFTQueryStepResults *)self originProgramStatementId];
  if (originProgramStatementId3)
  {
    v9 = originProgramStatementId3;
    originProgramStatementId4 = [(IFTSchemaIFTQueryStepResults *)self originProgramStatementId];
    originProgramStatementId5 = [equalCopy originProgramStatementId];
    v12 = [originProgramStatementId4 isEqual:originProgramStatementId5];

    if (!v12)
    {
      goto LABEL_15;
    }
  }

  else
  {
  }

  originProgramStatementId = [(IFTSchemaIFTQueryStepResults *)self queryResults];
  originProgramStatementId2 = [equalCopy queryResults];
  if ((originProgramStatementId != 0) != (originProgramStatementId2 == 0))
  {
    queryResults = [(IFTSchemaIFTQueryStepResults *)self queryResults];
    if (!queryResults)
    {

LABEL_18:
      v18 = 1;
      goto LABEL_16;
    }

    v14 = queryResults;
    queryResults2 = [(IFTSchemaIFTQueryStepResults *)self queryResults];
    queryResults3 = [equalCopy queryResults];
    v17 = [queryResults2 isEqual:queryResults3];

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

  originProgramStatementId = [(IFTSchemaIFTQueryStepResults *)self originProgramStatementId];

  if (originProgramStatementId)
  {
    originProgramStatementId2 = [(IFTSchemaIFTQueryStepResults *)self originProgramStatementId];
    PBDataWriterWriteSubmessage();
  }

  queryResults = [(IFTSchemaIFTQueryStepResults *)self queryResults];

  v7 = toCopy;
  if (queryResults)
  {
    queryResults2 = [(IFTSchemaIFTQueryStepResults *)self queryResults];
    PBDataWriterWriteSubmessage();

    v7 = toCopy;
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v13.receiver = self;
  v13.super_class = IFTSchemaIFTQueryStepResults;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:policyCopy];
  originProgramStatementId = [(IFTSchemaIFTQueryStepResults *)self originProgramStatementId];
  v7 = [originProgramStatementId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(IFTSchemaIFTQueryStepResults *)self deleteOriginProgramStatementId];
  }

  queryResults = [(IFTSchemaIFTQueryStepResults *)self queryResults];
  v10 = [queryResults applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(IFTSchemaIFTQueryStepResults *)self deleteQueryResults];
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