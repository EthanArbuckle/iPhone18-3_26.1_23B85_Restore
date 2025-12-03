@interface STSchemaSTAnswerSynthesisResult
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (STSchemaSTAnswerSynthesisResult)initWithDictionary:(id)dictionary;
- (STSchemaSTAnswerSynthesisResult)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation STSchemaSTAnswerSynthesisResult

- (STSchemaSTAnswerSynthesisResult)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v15.receiver = self;
  v15.super_class = STSchemaSTAnswerSynthesisResult;
  v5 = [(STSchemaSTAnswerSynthesisResult *)&v15 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"modelNumber"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(STSchemaSTAnswerSynthesisResult *)v5 setModelNumber:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"perfMetrics"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[STSchemaSTAnswerSynthesisPerfMetrics alloc] initWithDictionary:v8];
      [(STSchemaSTAnswerSynthesisResult *)v5 setPerfMetrics:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"dataMetrics"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[STSchemaSTAnswerSynthesisDataMetrics alloc] initWithDictionary:v10];
      [(STSchemaSTAnswerSynthesisResult *)v5 setDataMetrics:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"isContentSearchFallback"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[STSchemaSTAnswerSynthesisResult setIsContentSearchFallback:](v5, "setIsContentSearchFallback:", [v12 BOOLValue]);
    }

    v13 = v5;
  }

  return v5;
}

- (STSchemaSTAnswerSynthesisResult)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(STSchemaSTAnswerSynthesisResult *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(STSchemaSTAnswerSynthesisResult *)self dictionaryRepresentation];
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
  if (self->_dataMetrics)
  {
    dataMetrics = [(STSchemaSTAnswerSynthesisResult *)self dataMetrics];
    dictionaryRepresentation = [dataMetrics dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"dataMetrics"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"dataMetrics"];
    }
  }

  if (*(&self->_isContentSearchFallback + 1))
  {
    v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[STSchemaSTAnswerSynthesisResult isContentSearchFallback](self, "isContentSearchFallback")}];
    [dictionary setObject:v7 forKeyedSubscript:@"isContentSearchFallback"];
  }

  if (self->_modelNumber)
  {
    modelNumber = [(STSchemaSTAnswerSynthesisResult *)self modelNumber];
    v9 = [modelNumber copy];
    [dictionary setObject:v9 forKeyedSubscript:@"modelNumber"];
  }

  if (self->_perfMetrics)
  {
    perfMetrics = [(STSchemaSTAnswerSynthesisResult *)self perfMetrics];
    dictionaryRepresentation2 = [perfMetrics dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"perfMetrics"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"perfMetrics"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_modelNumber hash];
  v4 = [(STSchemaSTAnswerSynthesisPerfMetrics *)self->_perfMetrics hash];
  v5 = [(STSchemaSTAnswerSynthesisDataMetrics *)self->_dataMetrics hash];
  if (*(&self->_isContentSearchFallback + 1))
  {
    v6 = 2654435761 * self->_isContentSearchFallback;
  }

  else
  {
    v6 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  modelNumber = [(STSchemaSTAnswerSynthesisResult *)self modelNumber];
  modelNumber2 = [equalCopy modelNumber];
  if ((modelNumber != 0) == (modelNumber2 == 0))
  {
    goto LABEL_16;
  }

  modelNumber3 = [(STSchemaSTAnswerSynthesisResult *)self modelNumber];
  if (modelNumber3)
  {
    v8 = modelNumber3;
    modelNumber4 = [(STSchemaSTAnswerSynthesisResult *)self modelNumber];
    modelNumber5 = [equalCopy modelNumber];
    v11 = [modelNumber4 isEqual:modelNumber5];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  modelNumber = [(STSchemaSTAnswerSynthesisResult *)self perfMetrics];
  modelNumber2 = [equalCopy perfMetrics];
  if ((modelNumber != 0) == (modelNumber2 == 0))
  {
    goto LABEL_16;
  }

  perfMetrics = [(STSchemaSTAnswerSynthesisResult *)self perfMetrics];
  if (perfMetrics)
  {
    v13 = perfMetrics;
    perfMetrics2 = [(STSchemaSTAnswerSynthesisResult *)self perfMetrics];
    perfMetrics3 = [equalCopy perfMetrics];
    v16 = [perfMetrics2 isEqual:perfMetrics3];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  modelNumber = [(STSchemaSTAnswerSynthesisResult *)self dataMetrics];
  modelNumber2 = [equalCopy dataMetrics];
  if ((modelNumber != 0) == (modelNumber2 == 0))
  {
LABEL_16:

    goto LABEL_17;
  }

  dataMetrics = [(STSchemaSTAnswerSynthesisResult *)self dataMetrics];
  if (dataMetrics)
  {
    v18 = dataMetrics;
    dataMetrics2 = [(STSchemaSTAnswerSynthesisResult *)self dataMetrics];
    dataMetrics3 = [equalCopy dataMetrics];
    v21 = [dataMetrics2 isEqual:dataMetrics3];

    if (!v21)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  if (*(&self->_isContentSearchFallback + 1) == (equalCopy[33] & 1))
  {
    if (!*(&self->_isContentSearchFallback + 1) || (isContentSearchFallback = self->_isContentSearchFallback, isContentSearchFallback == [equalCopy isContentSearchFallback]))
    {
      v22 = 1;
      goto LABEL_18;
    }
  }

LABEL_17:
  v22 = 0;
LABEL_18:

  return v22;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  modelNumber = [(STSchemaSTAnswerSynthesisResult *)self modelNumber];

  if (modelNumber)
  {
    PBDataWriterWriteStringField();
  }

  perfMetrics = [(STSchemaSTAnswerSynthesisResult *)self perfMetrics];

  if (perfMetrics)
  {
    perfMetrics2 = [(STSchemaSTAnswerSynthesisResult *)self perfMetrics];
    PBDataWriterWriteSubmessage();
  }

  dataMetrics = [(STSchemaSTAnswerSynthesisResult *)self dataMetrics];

  if (dataMetrics)
  {
    dataMetrics2 = [(STSchemaSTAnswerSynthesisResult *)self dataMetrics];
    PBDataWriterWriteSubmessage();
  }

  if (*(&self->_isContentSearchFallback + 1))
  {
    PBDataWriterWriteBOOLField();
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v13.receiver = self;
  v13.super_class = STSchemaSTAnswerSynthesisResult;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:policyCopy];
  perfMetrics = [(STSchemaSTAnswerSynthesisResult *)self perfMetrics];
  v7 = [perfMetrics applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(STSchemaSTAnswerSynthesisResult *)self deletePerfMetrics];
  }

  dataMetrics = [(STSchemaSTAnswerSynthesisResult *)self dataMetrics];
  v10 = [dataMetrics applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(STSchemaSTAnswerSynthesisResult *)self deleteDataMetrics];
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