@interface IFTSchemaASTFlatExprRejectVariant
- (BOOL)isEqual:(id)equal;
- (IFTSchemaASTFlatExprRejectVariant)initWithDictionary:(id)dictionary;
- (IFTSchemaASTFlatExprRejectVariant)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation IFTSchemaASTFlatExprRejectVariant

- (IFTSchemaASTFlatExprRejectVariant)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v11.receiver = self;
  v11.super_class = IFTSchemaASTFlatExprRejectVariant;
  v5 = [(IFTSchemaASTFlatExprRejectVariant *)&v11 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"exists"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[IFTSchemaASTFlatExprRejectVariant setExists:](v5, "setExists:", [v6 BOOLValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"rawEventId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [[SISchemaUUID alloc] initWithDictionary:v7];
      [(IFTSchemaASTFlatExprRejectVariant *)v5 setRawEventId:v8];
    }

    v9 = v5;
  }

  return v5;
}

- (IFTSchemaASTFlatExprRejectVariant)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(IFTSchemaASTFlatExprRejectVariant *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(IFTSchemaASTFlatExprRejectVariant *)self dictionaryRepresentation];
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
    v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[IFTSchemaASTFlatExprRejectVariant exists](self, "exists")}];
    [dictionary setObject:v4 forKeyedSubscript:@"exists"];
  }

  if (self->_rawEventId)
  {
    rawEventId = [(IFTSchemaASTFlatExprRejectVariant *)self rawEventId];
    dictionaryRepresentation = [rawEventId dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"rawEventId"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"rawEventId"];
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

  return [(SISchemaUUID *)self->_rawEventId hash]^ v2;
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
        rawEventId = [(IFTSchemaASTFlatExprRejectVariant *)self rawEventId];
        rawEventId2 = [equalCopy rawEventId];
        v8 = rawEventId2;
        if ((rawEventId != 0) != (rawEventId2 == 0))
        {
          rawEventId3 = [(IFTSchemaASTFlatExprRejectVariant *)self rawEventId];
          if (!rawEventId3)
          {

LABEL_13:
            v14 = 1;
            goto LABEL_11;
          }

          v10 = rawEventId3;
          rawEventId4 = [(IFTSchemaASTFlatExprRejectVariant *)self rawEventId];
          rawEventId5 = [equalCopy rawEventId];
          v13 = [rawEventId4 isEqual:rawEventId5];

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

  rawEventId = [(IFTSchemaASTFlatExprRejectVariant *)self rawEventId];

  v5 = toCopy;
  if (rawEventId)
  {
    rawEventId2 = [(IFTSchemaASTFlatExprRejectVariant *)self rawEventId];
    PBDataWriterWriteSubmessage();

    v5 = toCopy;
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = IFTSchemaASTFlatExprRejectVariant;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(IFTSchemaASTFlatExprRejectVariant *)self rawEventId:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(IFTSchemaASTFlatExprRejectVariant *)self deleteRawEventId];
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