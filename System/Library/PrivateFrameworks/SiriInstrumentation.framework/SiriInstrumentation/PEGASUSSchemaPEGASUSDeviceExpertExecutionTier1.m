@interface PEGASUSSchemaPEGASUSDeviceExpertExecutionTier1
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (PEGASUSSchemaPEGASUSDeviceExpertExecutionTier1)initWithDictionary:(id)a3;
- (PEGASUSSchemaPEGASUSDeviceExpertExecutionTier1)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation PEGASUSSchemaPEGASUSDeviceExpertExecutionTier1

- (PEGASUSSchemaPEGASUSDeviceExpertExecutionTier1)initWithDictionary:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = PEGASUSSchemaPEGASUSDeviceExpertExecutionTier1;
  v5 = [(PEGASUSSchemaPEGASUSDeviceExpertExecutionTier1 *)&v11 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"qnaId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(PEGASUSSchemaPEGASUSDeviceExpertExecutionTier1 *)v5 setQnaId:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"isLlmGeneratedAnswer"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PEGASUSSchemaPEGASUSDeviceExpertExecutionTier1 setIsLlmGeneratedAnswer:](v5, "setIsLlmGeneratedAnswer:", [v8 BOOLValue]);
    }

    v9 = v5;
  }

  return v5;
}

- (PEGASUSSchemaPEGASUSDeviceExpertExecutionTier1)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(PEGASUSSchemaPEGASUSDeviceExpertExecutionTier1 *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(PEGASUSSchemaPEGASUSDeviceExpertExecutionTier1 *)self dictionaryRepresentation];
  if ([MEMORY[0x1E696ACB0] isValidJSONObject:v2])
  {
    v3 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v2 options:0 error:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (*(&self->_isLlmGeneratedAnswer + 1))
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[PEGASUSSchemaPEGASUSDeviceExpertExecutionTier1 isLlmGeneratedAnswer](self, "isLlmGeneratedAnswer")}];
    [v3 setObject:v4 forKeyedSubscript:@"isLlmGeneratedAnswer"];
  }

  if (self->_qnaId)
  {
    v5 = [(PEGASUSSchemaPEGASUSDeviceExpertExecutionTier1 *)self qnaId];
    v6 = [v5 copy];
    [v3 setObject:v6 forKeyedSubscript:@"qnaId"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  v5 = [(PEGASUSSchemaPEGASUSDeviceExpertExecutionTier1 *)self qnaId];
  v6 = [v4 qnaId];
  v7 = v6;
  if ((v5 != 0) == (v6 == 0))
  {

LABEL_12:
    v14 = 0;
    goto LABEL_13;
  }

  v8 = [(PEGASUSSchemaPEGASUSDeviceExpertExecutionTier1 *)self qnaId];
  if (v8)
  {
    v9 = v8;
    v10 = [(PEGASUSSchemaPEGASUSDeviceExpertExecutionTier1 *)self qnaId];
    v11 = [v4 qnaId];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  if (*(&self->_isLlmGeneratedAnswer + 1) != (v4[17] & 1))
  {
    goto LABEL_12;
  }

  if (*(&self->_isLlmGeneratedAnswer + 1))
  {
    isLlmGeneratedAnswer = self->_isLlmGeneratedAnswer;
    if (isLlmGeneratedAnswer != [v4 isLlmGeneratedAnswer])
    {
      goto LABEL_12;
    }
  }

  v14 = 1;
LABEL_13:

  return v14;
}

- (void)writeTo:(id)a3
{
  v5 = a3;
  v4 = [(PEGASUSSchemaPEGASUSDeviceExpertExecutionTier1 *)self qnaId];

  if (v4)
  {
    PBDataWriterWriteStringField();
  }

  if (*(&self->_isLlmGeneratedAnswer + 1))
  {
    PBDataWriterWriteBOOLField();
  }
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = PEGASUSSchemaPEGASUSDeviceExpertExecutionTier1;
  v5 = [(SISchemaInstrumentationMessage *)&v7 applySensitiveConditionsPolicy:v4];
  if ([v4 isConditionSet:2])
  {
    [(PEGASUSSchemaPEGASUSDeviceExpertExecutionTier1 *)self deleteQnaId];
    [(PEGASUSSchemaPEGASUSDeviceExpertExecutionTier1 *)self deleteIsLlmGeneratedAnswer];
  }

  if ([v4 isConditionSet:4])
  {
    [(PEGASUSSchemaPEGASUSDeviceExpertExecutionTier1 *)self deleteQnaId];
    [(PEGASUSSchemaPEGASUSDeviceExpertExecutionTier1 *)self deleteIsLlmGeneratedAnswer];
  }

  if ([v4 isConditionSet:5])
  {
    [(PEGASUSSchemaPEGASUSDeviceExpertExecutionTier1 *)self deleteQnaId];
    [(PEGASUSSchemaPEGASUSDeviceExpertExecutionTier1 *)self deleteIsLlmGeneratedAnswer];
  }

  if ([v4 isConditionSet:6])
  {
    [(PEGASUSSchemaPEGASUSDeviceExpertExecutionTier1 *)self deleteQnaId];
    [(PEGASUSSchemaPEGASUSDeviceExpertExecutionTier1 *)self deleteIsLlmGeneratedAnswer];
  }

  if ([v4 isConditionSet:7])
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