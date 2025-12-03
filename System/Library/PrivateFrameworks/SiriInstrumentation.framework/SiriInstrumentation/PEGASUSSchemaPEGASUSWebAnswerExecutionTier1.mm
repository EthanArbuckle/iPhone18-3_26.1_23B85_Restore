@interface PEGASUSSchemaPEGASUSWebAnswerExecutionTier1
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (PEGASUSSchemaPEGASUSWebAnswerExecutionTier1)initWithDictionary:(id)dictionary;
- (PEGASUSSchemaPEGASUSWebAnswerExecutionTier1)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)writeTo:(id)to;
@end

@implementation PEGASUSSchemaPEGASUSWebAnswerExecutionTier1

- (PEGASUSSchemaPEGASUSWebAnswerExecutionTier1)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = PEGASUSSchemaPEGASUSWebAnswerExecutionTier1;
  v5 = [(PEGASUSSchemaPEGASUSWebAnswerExecutionTier1 *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"answerId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(PEGASUSSchemaPEGASUSWebAnswerExecutionTier1 *)v5 setAnswerId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"entityUrl"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(PEGASUSSchemaPEGASUSWebAnswerExecutionTier1 *)v5 setEntityUrl:v9];
    }

    v10 = v5;
  }

  return v5;
}

- (PEGASUSSchemaPEGASUSWebAnswerExecutionTier1)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(PEGASUSSchemaPEGASUSWebAnswerExecutionTier1 *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(PEGASUSSchemaPEGASUSWebAnswerExecutionTier1 *)self dictionaryRepresentation];
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
  if (self->_answerId)
  {
    answerId = [(PEGASUSSchemaPEGASUSWebAnswerExecutionTier1 *)self answerId];
    v5 = [answerId copy];
    [dictionary setObject:v5 forKeyedSubscript:@"answerId"];
  }

  if (self->_entityUrl)
  {
    entityUrl = [(PEGASUSSchemaPEGASUSWebAnswerExecutionTier1 *)self entityUrl];
    v7 = [entityUrl copy];
    [dictionary setObject:v7 forKeyedSubscript:@"entityUrl"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  answerId = [(PEGASUSSchemaPEGASUSWebAnswerExecutionTier1 *)self answerId];
  answerId2 = [equalCopy answerId];
  if ((answerId != 0) == (answerId2 == 0))
  {
    goto LABEL_11;
  }

  answerId3 = [(PEGASUSSchemaPEGASUSWebAnswerExecutionTier1 *)self answerId];
  if (answerId3)
  {
    v8 = answerId3;
    answerId4 = [(PEGASUSSchemaPEGASUSWebAnswerExecutionTier1 *)self answerId];
    answerId5 = [equalCopy answerId];
    v11 = [answerId4 isEqual:answerId5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  answerId = [(PEGASUSSchemaPEGASUSWebAnswerExecutionTier1 *)self entityUrl];
  answerId2 = [equalCopy entityUrl];
  if ((answerId != 0) != (answerId2 == 0))
  {
    entityUrl = [(PEGASUSSchemaPEGASUSWebAnswerExecutionTier1 *)self entityUrl];
    if (!entityUrl)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = entityUrl;
    entityUrl2 = [(PEGASUSSchemaPEGASUSWebAnswerExecutionTier1 *)self entityUrl];
    entityUrl3 = [equalCopy entityUrl];
    v16 = [entityUrl2 isEqual:entityUrl3];

    if (v16)
    {
      goto LABEL_15;
    }
  }

  else
  {
LABEL_11:
  }

LABEL_12:
  v17 = 0;
LABEL_13:

  return v17;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  answerId = [(PEGASUSSchemaPEGASUSWebAnswerExecutionTier1 *)self answerId];

  if (answerId)
  {
    PBDataWriterWriteStringField();
  }

  entityUrl = [(PEGASUSSchemaPEGASUSWebAnswerExecutionTier1 *)self entityUrl];

  if (entityUrl)
  {
    PBDataWriterWriteStringField();
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v7.receiver = self;
  v7.super_class = PEGASUSSchemaPEGASUSWebAnswerExecutionTier1;
  v5 = [(SISchemaInstrumentationMessage *)&v7 applySensitiveConditionsPolicy:policyCopy];
  if ([policyCopy isConditionSet:2])
  {
    [(PEGASUSSchemaPEGASUSWebAnswerExecutionTier1 *)self deleteAnswerId];
    [(PEGASUSSchemaPEGASUSWebAnswerExecutionTier1 *)self deleteEntityUrl];
  }

  if ([policyCopy isConditionSet:4])
  {
    [(PEGASUSSchemaPEGASUSWebAnswerExecutionTier1 *)self deleteAnswerId];
    [(PEGASUSSchemaPEGASUSWebAnswerExecutionTier1 *)self deleteEntityUrl];
  }

  if ([policyCopy isConditionSet:5])
  {
    [(PEGASUSSchemaPEGASUSWebAnswerExecutionTier1 *)self deleteAnswerId];
    [(PEGASUSSchemaPEGASUSWebAnswerExecutionTier1 *)self deleteEntityUrl];
  }

  if ([policyCopy isConditionSet:6])
  {
    [(PEGASUSSchemaPEGASUSWebAnswerExecutionTier1 *)self deleteAnswerId];
    [(PEGASUSSchemaPEGASUSWebAnswerExecutionTier1 *)self deleteEntityUrl];
  }

  if ([policyCopy isConditionSet:7])
  {
    [(PEGASUSSchemaPEGASUSWebAnswerExecutionTier1 *)self deleteAnswerId];
    [(PEGASUSSchemaPEGASUSWebAnswerExecutionTier1 *)self deleteEntityUrl];
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