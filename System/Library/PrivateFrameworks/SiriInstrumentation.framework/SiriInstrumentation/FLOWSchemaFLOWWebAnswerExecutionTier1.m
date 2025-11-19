@interface FLOWSchemaFLOWWebAnswerExecutionTier1
- (BOOL)isEqual:(id)a3;
- (FLOWSchemaFLOWWebAnswerExecutionTier1)initWithDictionary:(id)a3;
- (FLOWSchemaFLOWWebAnswerExecutionTier1)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)writeTo:(id)a3;
@end

@implementation FLOWSchemaFLOWWebAnswerExecutionTier1

- (FLOWSchemaFLOWWebAnswerExecutionTier1)initWithDictionary:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = FLOWSchemaFLOWWebAnswerExecutionTier1;
  v5 = [(FLOWSchemaFLOWWebAnswerExecutionTier1 *)&v10 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"answerId"];
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

- (FLOWSchemaFLOWWebAnswerExecutionTier1)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(FLOWSchemaFLOWWebAnswerExecutionTier1 *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(FLOWSchemaFLOWWebAnswerExecutionTier1 *)self dictionaryRepresentation];
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
    v4 = [(FLOWSchemaFLOWWebAnswerExecutionTier1 *)self answerId];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"answerId"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = [(FLOWSchemaFLOWWebAnswerExecutionTier1 *)self answerId];
    v6 = [v4 answerId];
    v7 = v6;
    if ((v5 != 0) != (v6 == 0))
    {
      v8 = [(FLOWSchemaFLOWWebAnswerExecutionTier1 *)self answerId];
      if (!v8)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = v8;
      v10 = [(FLOWSchemaFLOWWebAnswerExecutionTier1 *)self answerId];
      v11 = [v4 answerId];
      v12 = [v10 isEqual:v11];

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

- (void)writeTo:(id)a3
{
  v5 = a3;
  v4 = [(FLOWSchemaFLOWWebAnswerExecutionTier1 *)self answerId];

  if (v4)
  {
    PBDataWriterWriteStringField();
  }
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = FLOWSchemaFLOWWebAnswerExecutionTier1;
  v5 = [(SISchemaInstrumentationMessage *)&v7 applySensitiveConditionsPolicy:v4];
  if ([v4 isConditionSet:2])
  {
    [(FLOWSchemaFLOWWebAnswerExecutionTier1 *)self deleteAnswerId];
  }

  if ([v4 isConditionSet:4])
  {
    [(FLOWSchemaFLOWWebAnswerExecutionTier1 *)self deleteAnswerId];
  }

  if ([v4 isConditionSet:5])
  {
    [(FLOWSchemaFLOWWebAnswerExecutionTier1 *)self deleteAnswerId];
  }

  if ([v4 isConditionSet:6])
  {
    [(FLOWSchemaFLOWWebAnswerExecutionTier1 *)self deleteAnswerId];
  }

  if ([v4 isConditionSet:7])
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