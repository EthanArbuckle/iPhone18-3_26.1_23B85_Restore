@interface IFTSchemaIFTStructuredSearchProperty
- (BOOL)isEqual:(id)equal;
- (IFTSchemaIFTStructuredSearchProperty)initWithDictionary:(id)dictionary;
- (IFTSchemaIFTStructuredSearchProperty)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation IFTSchemaIFTStructuredSearchProperty

- (IFTSchemaIFTStructuredSearchProperty)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v11.receiver = self;
  v11.super_class = IFTSchemaIFTStructuredSearchProperty;
  v5 = [(IFTSchemaIFTStructuredSearchProperty *)&v11 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"exists"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[IFTSchemaIFTStructuredSearchProperty setExists:](v5, "setExists:", [v6 BOOLValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"previousAnswerReferenceStatementId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [[IFTSchemaIFTStatementId alloc] initWithDictionary:v7];
      [(IFTSchemaIFTStructuredSearchProperty *)v5 setPreviousAnswerReferenceStatementId:v8];
    }

    v9 = v5;
  }

  return v5;
}

- (IFTSchemaIFTStructuredSearchProperty)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(IFTSchemaIFTStructuredSearchProperty *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(IFTSchemaIFTStructuredSearchProperty *)self dictionaryRepresentation];
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
    v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[IFTSchemaIFTStructuredSearchProperty exists](self, "exists")}];
    [dictionary setObject:v4 forKeyedSubscript:@"exists"];
  }

  if (self->_previousAnswerReferenceStatementId)
  {
    previousAnswerReferenceStatementId = [(IFTSchemaIFTStructuredSearchProperty *)self previousAnswerReferenceStatementId];
    dictionaryRepresentation = [previousAnswerReferenceStatementId dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"previousAnswerReferenceStatementId"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"previousAnswerReferenceStatementId"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761 * self->_exists;
  }

  else
  {
    v2 = 0;
  }

  return [(IFTSchemaIFTStatementId *)self->_previousAnswerReferenceStatementId hash]^ v2;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    if ((*&self->_has & 1) == (equalCopy[24] & 1))
    {
      if ((*&self->_has & 1) == 0 || (exists = self->_exists, exists == [equalCopy exists]))
      {
        previousAnswerReferenceStatementId = [(IFTSchemaIFTStructuredSearchProperty *)self previousAnswerReferenceStatementId];
        previousAnswerReferenceStatementId2 = [equalCopy previousAnswerReferenceStatementId];
        v8 = previousAnswerReferenceStatementId2;
        if ((previousAnswerReferenceStatementId != 0) != (previousAnswerReferenceStatementId2 == 0))
        {
          previousAnswerReferenceStatementId3 = [(IFTSchemaIFTStructuredSearchProperty *)self previousAnswerReferenceStatementId];
          if (!previousAnswerReferenceStatementId3)
          {

LABEL_13:
            v14 = 1;
            goto LABEL_11;
          }

          v10 = previousAnswerReferenceStatementId3;
          previousAnswerReferenceStatementId4 = [(IFTSchemaIFTStructuredSearchProperty *)self previousAnswerReferenceStatementId];
          previousAnswerReferenceStatementId5 = [equalCopy previousAnswerReferenceStatementId];
          v13 = [previousAnswerReferenceStatementId4 isEqual:previousAnswerReferenceStatementId5];

          if (v13)
          {
            goto LABEL_13;
          }
        }

        else
        {
        }
      }
    }
  }

  v14 = 0;
LABEL_11:

  return v14;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    PBDataWriterWriteBOOLField();
  }

  previousAnswerReferenceStatementId = [(IFTSchemaIFTStructuredSearchProperty *)self previousAnswerReferenceStatementId];

  v5 = toCopy;
  if (previousAnswerReferenceStatementId)
  {
    previousAnswerReferenceStatementId2 = [(IFTSchemaIFTStructuredSearchProperty *)self previousAnswerReferenceStatementId];
    PBDataWriterWriteSubmessage();

    v5 = toCopy;
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = IFTSchemaIFTStructuredSearchProperty;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(IFTSchemaIFTStructuredSearchProperty *)self previousAnswerReferenceStatementId:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(IFTSchemaIFTStructuredSearchProperty *)self deletePreviousAnswerReferenceStatementId];
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