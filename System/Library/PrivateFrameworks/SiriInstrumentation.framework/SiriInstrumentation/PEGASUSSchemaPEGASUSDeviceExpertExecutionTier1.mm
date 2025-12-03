@interface PEGASUSSchemaPEGASUSDeviceExpertExecutionTier1
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (PEGASUSSchemaPEGASUSDeviceExpertExecutionTier1)initWithDictionary:(id)dictionary;
- (PEGASUSSchemaPEGASUSDeviceExpertExecutionTier1)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation PEGASUSSchemaPEGASUSDeviceExpertExecutionTier1

- (PEGASUSSchemaPEGASUSDeviceExpertExecutionTier1)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v11.receiver = self;
  v11.super_class = PEGASUSSchemaPEGASUSDeviceExpertExecutionTier1;
  v5 = [(PEGASUSSchemaPEGASUSDeviceExpertExecutionTier1 *)&v11 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"qnaId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(PEGASUSSchemaPEGASUSDeviceExpertExecutionTier1 *)v5 setQnaId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"isLlmGeneratedAnswer"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PEGASUSSchemaPEGASUSDeviceExpertExecutionTier1 setIsLlmGeneratedAnswer:](v5, "setIsLlmGeneratedAnswer:", [v8 BOOLValue]);
    }

    v9 = v5;
  }

  return v5;
}

- (PEGASUSSchemaPEGASUSDeviceExpertExecutionTier1)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(PEGASUSSchemaPEGASUSDeviceExpertExecutionTier1 *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(PEGASUSSchemaPEGASUSDeviceExpertExecutionTier1 *)self dictionaryRepresentation];
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
  if (*(&self->_isLlmGeneratedAnswer + 1))
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[PEGASUSSchemaPEGASUSDeviceExpertExecutionTier1 isLlmGeneratedAnswer](self, "isLlmGeneratedAnswer")}];
    [dictionary setObject:v4 forKeyedSubscript:@"isLlmGeneratedAnswer"];
  }

  if (self->_qnaId)
  {
    qnaId = [(PEGASUSSchemaPEGASUSDeviceExpertExecutionTier1 *)self qnaId];
    v6 = [qnaId copy];
    [dictionary setObject:v6 forKeyedSubscript:@"qnaId"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_qnaId hash];
  if (*(&self->_isLlmGeneratedAnswer + 1))
  {
    v4 = 2654435761 * self->_isLlmGeneratedAnswer;
  }

  else
  {
    v4 = 0;
  }

  return v4 ^ v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  qnaId = [(PEGASUSSchemaPEGASUSDeviceExpertExecutionTier1 *)self qnaId];
  qnaId2 = [equalCopy qnaId];
  v7 = qnaId2;
  if ((qnaId != 0) == (qnaId2 == 0))
  {

LABEL_12:
    v14 = 0;
    goto LABEL_13;
  }

  qnaId3 = [(PEGASUSSchemaPEGASUSDeviceExpertExecutionTier1 *)self qnaId];
  if (qnaId3)
  {
    v9 = qnaId3;
    qnaId4 = [(PEGASUSSchemaPEGASUSDeviceExpertExecutionTier1 *)self qnaId];
    qnaId5 = [equalCopy qnaId];
    v12 = [qnaId4 isEqual:qnaId5];

    if (!v12)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  if (*(&self->_isLlmGeneratedAnswer + 1) != (equalCopy[17] & 1))
  {
    goto LABEL_12;
  }

  if (*(&self->_isLlmGeneratedAnswer + 1))
  {
    isLlmGeneratedAnswer = self->_isLlmGeneratedAnswer;
    if (isLlmGeneratedAnswer != [equalCopy isLlmGeneratedAnswer])
    {
      goto LABEL_12;
    }
  }

  v14 = 1;
LABEL_13:

  return v14;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  qnaId = [(PEGASUSSchemaPEGASUSDeviceExpertExecutionTier1 *)self qnaId];

  if (qnaId)
  {
    PBDataWriterWriteStringField();
  }

  if (*(&self->_isLlmGeneratedAnswer + 1))
  {
    PBDataWriterWriteBOOLField();
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v7.receiver = self;
  v7.super_class = PEGASUSSchemaPEGASUSDeviceExpertExecutionTier1;
  v5 = [(SISchemaInstrumentationMessage *)&v7 applySensitiveConditionsPolicy:policyCopy];
  if ([policyCopy isConditionSet:2])
  {
    [(PEGASUSSchemaPEGASUSDeviceExpertExecutionTier1 *)self deleteQnaId];
    [(PEGASUSSchemaPEGASUSDeviceExpertExecutionTier1 *)self deleteIsLlmGeneratedAnswer];
  }

  if ([policyCopy isConditionSet:4])
  {
    [(PEGASUSSchemaPEGASUSDeviceExpertExecutionTier1 *)self deleteQnaId];
    [(PEGASUSSchemaPEGASUSDeviceExpertExecutionTier1 *)self deleteIsLlmGeneratedAnswer];
  }

  if ([policyCopy isConditionSet:5])
  {
    [(PEGASUSSchemaPEGASUSDeviceExpertExecutionTier1 *)self deleteQnaId];
    [(PEGASUSSchemaPEGASUSDeviceExpertExecutionTier1 *)self deleteIsLlmGeneratedAnswer];
  }

  if ([policyCopy isConditionSet:6])
  {
    [(PEGASUSSchemaPEGASUSDeviceExpertExecutionTier1 *)self deleteQnaId];
    [(PEGASUSSchemaPEGASUSDeviceExpertExecutionTier1 *)self deleteIsLlmGeneratedAnswer];
  }

  if ([policyCopy isConditionSet:7])
  {
    [(PEGASUSSchemaPEGASUSDeviceExpertExecutionTier1 *)self deleteQnaId];
    [(PEGASUSSchemaPEGASUSDeviceExpertExecutionTier1 *)self deleteIsLlmGeneratedAnswer];
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