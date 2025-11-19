@interface IHSchemaIHModelEvaluationStarted
- (BOOL)isEqual:(id)a3;
- (IHSchemaIHModelEvaluationStarted)initWithDictionary:(id)a3;
- (IHSchemaIHModelEvaluationStarted)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)writeTo:(id)a3;
@end

@implementation IHSchemaIHModelEvaluationStarted

- (IHSchemaIHModelEvaluationStarted)initWithDictionary:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = IHSchemaIHModelEvaluationStarted;
  v5 = [(IHSchemaIHModelEvaluationStarted *)&v10 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"modelId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(IHSchemaIHModelEvaluationStarted *)v5 setModelId:v7];
    }

    v8 = v5;
  }

  return v5;
}

- (IHSchemaIHModelEvaluationStarted)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(IHSchemaIHModelEvaluationStarted *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(IHSchemaIHModelEvaluationStarted *)self dictionaryRepresentation];
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
  if (self->_modelId)
  {
    v4 = [(IHSchemaIHModelEvaluationStarted *)self modelId];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"modelId"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = [(IHSchemaIHModelEvaluationStarted *)self modelId];
    v6 = [v4 modelId];
    v7 = v6;
    if ((v5 != 0) != (v6 == 0))
    {
      v8 = [(IHSchemaIHModelEvaluationStarted *)self modelId];
      if (!v8)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = v8;
      v10 = [(IHSchemaIHModelEvaluationStarted *)self modelId];
      v11 = [v4 modelId];
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
  v4 = [(IHSchemaIHModelEvaluationStarted *)self modelId];

  if (v4)
  {
    PBDataWriterWriteStringField();
  }
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end