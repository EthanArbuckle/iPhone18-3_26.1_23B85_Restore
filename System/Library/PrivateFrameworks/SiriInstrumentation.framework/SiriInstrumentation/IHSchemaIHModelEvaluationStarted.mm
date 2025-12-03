@interface IHSchemaIHModelEvaluationStarted
- (BOOL)isEqual:(id)equal;
- (IHSchemaIHModelEvaluationStarted)initWithDictionary:(id)dictionary;
- (IHSchemaIHModelEvaluationStarted)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)writeTo:(id)to;
@end

@implementation IHSchemaIHModelEvaluationStarted

- (IHSchemaIHModelEvaluationStarted)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = IHSchemaIHModelEvaluationStarted;
  v5 = [(IHSchemaIHModelEvaluationStarted *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"modelId"];
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

- (IHSchemaIHModelEvaluationStarted)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(IHSchemaIHModelEvaluationStarted *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(IHSchemaIHModelEvaluationStarted *)self dictionaryRepresentation];
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
  if (self->_modelId)
  {
    modelId = [(IHSchemaIHModelEvaluationStarted *)self modelId];
    v5 = [modelId copy];
    [dictionary setObject:v5 forKeyedSubscript:@"modelId"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    modelId = [(IHSchemaIHModelEvaluationStarted *)self modelId];
    modelId2 = [equalCopy modelId];
    v7 = modelId2;
    if ((modelId != 0) != (modelId2 == 0))
    {
      modelId3 = [(IHSchemaIHModelEvaluationStarted *)self modelId];
      if (!modelId3)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = modelId3;
      modelId4 = [(IHSchemaIHModelEvaluationStarted *)self modelId];
      modelId5 = [equalCopy modelId];
      v12 = [modelId4 isEqual:modelId5];

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
  modelId = [(IHSchemaIHModelEvaluationStarted *)self modelId];

  if (modelId)
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