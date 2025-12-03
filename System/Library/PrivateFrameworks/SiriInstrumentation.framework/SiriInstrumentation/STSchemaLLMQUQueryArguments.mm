@interface STSchemaLLMQUQueryArguments
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (STSchemaLLMQUQueryArguments)initWithDictionary:(id)dictionary;
- (STSchemaLLMQUQueryArguments)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasSortOrder:(BOOL)order;
- (void)writeTo:(id)to;
@end

@implementation STSchemaLLMQUQueryArguments

- (STSchemaLLMQUQueryArguments)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = STSchemaLLMQUQueryArguments;
  v5 = [(STSchemaLLMQUQueryArguments *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"linkId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(STSchemaLLMQUQueryArguments *)v5 setLinkId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"isQuestionNeedingAnswer"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[STSchemaLLMQUQueryArguments setIsQuestionNeedingAnswer:](v5, "setIsQuestionNeedingAnswer:", [v8 BOOLValue]);
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"sortOrder"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[STSchemaLLMQUQueryArguments setSortOrder:](v5, "setSortOrder:", [v9 intValue]);
    }

    v10 = v5;
  }

  return v5;
}

- (STSchemaLLMQUQueryArguments)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(STSchemaLLMQUQueryArguments *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(STSchemaLLMQUQueryArguments *)self dictionaryRepresentation];
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
    v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[STSchemaLLMQUQueryArguments isQuestionNeedingAnswer](self, "isQuestionNeedingAnswer")}];
    [dictionary setObject:v4 forKeyedSubscript:@"isQuestionNeedingAnswer"];
  }

  if (self->_linkId)
  {
    linkId = [(STSchemaLLMQUQueryArguments *)self linkId];
    dictionaryRepresentation = [linkId dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"linkId"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"linkId"];
    }
  }

  if ((*&self->_has & 2) != 0)
  {
    v8 = [(STSchemaLLMQUQueryArguments *)self sortOrder]- 1;
    if (v8 > 2)
    {
      v9 = @"STLLMQUMODELSORTORDER_UNKNOWN";
    }

    else
    {
      v9 = off_1E78E7788[v8];
    }

    [dictionary setObject:v9 forKeyedSubscript:@"sortOrder"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(SISchemaUUID *)self->_linkId hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_isQuestionNeedingAnswer;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v5 = 0;
    return v4 ^ v3 ^ v5;
  }

  v4 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v5 = 2654435761 * self->_sortOrder;
  return v4 ^ v3 ^ v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_16;
  }

  linkId = [(STSchemaLLMQUQueryArguments *)self linkId];
  linkId2 = [equalCopy linkId];
  v7 = linkId2;
  if ((linkId != 0) == (linkId2 == 0))
  {

    goto LABEL_16;
  }

  linkId3 = [(STSchemaLLMQUQueryArguments *)self linkId];
  if (linkId3)
  {
    v9 = linkId3;
    linkId4 = [(STSchemaLLMQUQueryArguments *)self linkId];
    linkId5 = [equalCopy linkId];
    v12 = [linkId4 isEqual:linkId5];

    if (!v12)
    {
      goto LABEL_16;
    }
  }

  else
  {
  }

  has = self->_has;
  v14 = equalCopy[24];
  if ((*&has & 1) != (v14 & 1))
  {
LABEL_16:
    v18 = 0;
    goto LABEL_17;
  }

  if (*&has)
  {
    isQuestionNeedingAnswer = self->_isQuestionNeedingAnswer;
    if (isQuestionNeedingAnswer == [equalCopy isQuestionNeedingAnswer])
    {
      has = self->_has;
      v14 = equalCopy[24];
      goto LABEL_12;
    }

    goto LABEL_16;
  }

LABEL_12:
  v16 = (*&has >> 1) & 1;
  if (v16 != ((v14 >> 1) & 1))
  {
    goto LABEL_16;
  }

  if (v16)
  {
    sortOrder = self->_sortOrder;
    if (sortOrder != [equalCopy sortOrder])
    {
      goto LABEL_16;
    }
  }

  v18 = 1;
LABEL_17:

  return v18;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  linkId = [(STSchemaLLMQUQueryArguments *)self linkId];

  if (linkId)
  {
    linkId2 = [(STSchemaLLMQUQueryArguments *)self linkId];
    PBDataWriterWriteSubmessage();
  }

  has = self->_has;
  if (has)
  {
    PBDataWriterWriteBOOLField();
    has = self->_has;
  }

  v7 = toCopy;
  if ((has & 2) != 0)
  {
    PBDataWriterWriteInt32Field();
    v7 = toCopy;
  }
}

- (void)setHasSortOrder:(BOOL)order
{
  if (order)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = STSchemaLLMQUQueryArguments;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(STSchemaLLMQUQueryArguments *)self linkId:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(STSchemaLLMQUQueryArguments *)self deleteLinkId];
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