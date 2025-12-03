@interface FLOWSchemaFLOWWebAnswerExecutionTier1
- (BOOL)isEqual:(id)equal;
- (FLOWSchemaFLOWWebAnswerExecutionTier1)initWithDictionary:(id)dictionary;
- (FLOWSchemaFLOWWebAnswerExecutionTier1)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)writeTo:(id)to;
@end

@implementation FLOWSchemaFLOWWebAnswerExecutionTier1

- (FLOWSchemaFLOWWebAnswerExecutionTier1)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = FLOWSchemaFLOWWebAnswerExecutionTier1;
  v5 = [(FLOWSchemaFLOWWebAnswerExecutionTier1 *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"answerId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(FLOWSchemaFLOWWebAnswerExecutionTier1 *)v5 setAnswerId:v7];
    }

    v8 = v5;
  }

  return v5;
}

- (FLOWSchemaFLOWWebAnswerExecutionTier1)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(FLOWSchemaFLOWWebAnswerExecutionTier1 *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(FLOWSchemaFLOWWebAnswerExecutionTier1 *)self dictionaryRepresentation];
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
    answerId = [(FLOWSchemaFLOWWebAnswerExecutionTier1 *)self answerId];
    v5 = [answerId copy];
    [dictionary setObject:v5 forKeyedSubscript:@"answerId"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    answerId = [(FLOWSchemaFLOWWebAnswerExecutionTier1 *)self answerId];
    answerId2 = [equalCopy answerId];
    v7 = answerId2;
    if ((answerId != 0) != (answerId2 == 0))
    {
      answerId3 = [(FLOWSchemaFLOWWebAnswerExecutionTier1 *)self answerId];
      if (!answerId3)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = answerId3;
      answerId4 = [(FLOWSchemaFLOWWebAnswerExecutionTier1 *)self answerId];
      answerId5 = [equalCopy answerId];
      v12 = [answerId4 isEqual:answerId5];

      if (v12)
      {
        goto LABEL_10;
      }
    }

    else
    {
    }
  }

  v13 = 0;
LABEL_8:

  return v13;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  answerId = [(FLOWSchemaFLOWWebAnswerExecutionTier1 *)self answerId];

  if (answerId)
  {
    PBDataWriterWriteStringField();
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v7.receiver = self;
  v7.super_class = FLOWSchemaFLOWWebAnswerExecutionTier1;
  v5 = [(SISchemaInstrumentationMessage *)&v7 applySensitiveConditionsPolicy:policyCopy];
  if ([policyCopy isConditionSet:2])
  {
    [(FLOWSchemaFLOWWebAnswerExecutionTier1 *)self deleteAnswerId];
  }

  if ([policyCopy isConditionSet:4])
  {
    [(FLOWSchemaFLOWWebAnswerExecutionTier1 *)self deleteAnswerId];
  }

  if ([policyCopy isConditionSet:5])
  {
    [(FLOWSchemaFLOWWebAnswerExecutionTier1 *)self deleteAnswerId];
  }

  if ([policyCopy isConditionSet:6])
  {
    [(FLOWSchemaFLOWWebAnswerExecutionTier1 *)self deleteAnswerId];
  }

  if ([policyCopy isConditionSet:7])
  {
    [(FLOWSchemaFLOWWebAnswerExecutionTier1 *)self deleteAnswerId];
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