@interface PEGASUSSchemaPEGASUSWebAnswerExecutionTier1
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (PEGASUSSchemaPEGASUSWebAnswerExecutionTier1)initWithDictionary:(id)a3;
- (PEGASUSSchemaPEGASUSWebAnswerExecutionTier1)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)writeTo:(id)a3;
@end

@implementation PEGASUSSchemaPEGASUSWebAnswerExecutionTier1

- (PEGASUSSchemaPEGASUSWebAnswerExecutionTier1)initWithDictionary:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = PEGASUSSchemaPEGASUSWebAnswerExecutionTier1;
  v5 = [(PEGASUSSchemaPEGASUSWebAnswerExecutionTier1 *)&v12 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"answerId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(PEGASUSSchemaPEGASUSWebAnswerExecutionTier1 *)v5 setAnswerId:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"entityUrl"];
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

- (PEGASUSSchemaPEGASUSWebAnswerExecutionTier1)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(PEGASUSSchemaPEGASUSWebAnswerExecutionTier1 *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(PEGASUSSchemaPEGASUSWebAnswerExecutionTier1 *)self dictionaryRepresentation];
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
  if (self->_answerId)
  {
    v4 = [(PEGASUSSchemaPEGASUSWebAnswerExecutionTier1 *)self answerId];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"answerId"];
  }

  if (self->_entityUrl)
  {
    v6 = [(PEGASUSSchemaPEGASUSWebAnswerExecutionTier1 *)self entityUrl];
    v7 = [v6 copy];
    [v3 setObject:v7 forKeyedSubscript:@"entityUrl"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  v5 = [(PEGASUSSchemaPEGASUSWebAnswerExecutionTier1 *)self answerId];
  v6 = [v4 answerId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_11;
  }

  v7 = [(PEGASUSSchemaPEGASUSWebAnswerExecutionTier1 *)self answerId];
  if (v7)
  {
    v8 = v7;
    v9 = [(PEGASUSSchemaPEGASUSWebAnswerExecutionTier1 *)self answerId];
    v10 = [v4 answerId];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  v5 = [(PEGASUSSchemaPEGASUSWebAnswerExecutionTier1 *)self entityUrl];
  v6 = [v4 entityUrl];
  if ((v5 != 0) != (v6 == 0))
  {
    v12 = [(PEGASUSSchemaPEGASUSWebAnswerExecutionTier1 *)self entityUrl];
    if (!v12)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = v12;
    v14 = [(PEGASUSSchemaPEGASUSWebAnswerExecutionTier1 *)self entityUrl];
    v15 = [v4 entityUrl];
    v16 = [v14 isEqual:v15];

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

- (void)writeTo:(id)a3
{
  v6 = a3;
  v4 = [(PEGASUSSchemaPEGASUSWebAnswerExecutionTier1 *)self answerId];

  if (v4)
  {
    PBDataWriterWriteStringField();
  }

  v5 = [(PEGASUSSchemaPEGASUSWebAnswerExecutionTier1 *)self entityUrl];

  if (v5)
  {
    PBDataWriterWriteStringField();
  }
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = PEGASUSSchemaPEGASUSWebAnswerExecutionTier1;
  v5 = [(SISchemaInstrumentationMessage *)&v7 applySensitiveConditionsPolicy:v4];
  if ([v4 isConditionSet:2])
  {
    [(PEGASUSSchemaPEGASUSWebAnswerExecutionTier1 *)self deleteAnswerId];
    [(PEGASUSSchemaPEGASUSWebAnswerExecutionTier1 *)self deleteEntityUrl];
  }

  if ([v4 isConditionSet:4])
  {
    [(PEGASUSSchemaPEGASUSWebAnswerExecutionTier1 *)self deleteAnswerId];
    [(PEGASUSSchemaPEGASUSWebAnswerExecutionTier1 *)self deleteEntityUrl];
  }

  if ([v4 isConditionSet:5])
  {
    [(PEGASUSSchemaPEGASUSWebAnswerExecutionTier1 *)self deleteAnswerId];
    [(PEGASUSSchemaPEGASUSWebAnswerExecutionTier1 *)self deleteEntityUrl];
  }

  if ([v4 isConditionSet:6])
  {
    [(PEGASUSSchemaPEGASUSWebAnswerExecutionTier1 *)self deleteAnswerId];
    [(PEGASUSSchemaPEGASUSWebAnswerExecutionTier1 *)self deleteEntityUrl];
  }

  if ([v4 isConditionSet:7])
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