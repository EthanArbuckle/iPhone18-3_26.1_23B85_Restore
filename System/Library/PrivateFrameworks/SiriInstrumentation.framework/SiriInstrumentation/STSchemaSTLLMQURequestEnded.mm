@interface STSchemaSTLLMQURequestEnded
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (STSchemaSTLLMQURequestEnded)initWithDictionary:(id)dictionary;
- (STSchemaSTLLMQURequestEnded)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasResponseLength:(BOOL)length;
- (void)writeTo:(id)to;
@end

@implementation STSchemaSTLLMQURequestEnded

- (STSchemaSTLLMQURequestEnded)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v16.receiver = self;
  v16.super_class = STSchemaSTLLMQURequestEnded;
  v5 = [(STSchemaSTLLMQURequestEnded *)&v16 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"modelNumber"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(STSchemaSTLLMQURequestEnded *)v5 setModelNumber:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"requestLength"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[STSchemaSTLLMQURequestEnded setRequestLength:](v5, "setRequestLength:", [v8 unsignedIntValue]);
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"responseLength"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[STSchemaSTLLMQURequestEnded setResponseLength:](v5, "setResponseLength:", [v9 unsignedIntValue]);
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"queryArguments"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[STSchemaLLMQUQueryArguments alloc] initWithDictionary:v10];
      [(STSchemaSTLLMQURequestEnded *)v5 setQueryArguments:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"llmquPerfMetrics"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[STSchemaLLMQUPerfMetrics alloc] initWithDictionary:v12];
      [(STSchemaSTLLMQURequestEnded *)v5 setLlmquPerfMetrics:v13];
    }

    v14 = v5;
  }

  return v5;
}

- (STSchemaSTLLMQURequestEnded)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(STSchemaSTLLMQURequestEnded *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(STSchemaSTLLMQURequestEnded *)self dictionaryRepresentation];
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
  if (self->_llmquPerfMetrics)
  {
    llmquPerfMetrics = [(STSchemaSTLLMQURequestEnded *)self llmquPerfMetrics];
    dictionaryRepresentation = [llmquPerfMetrics dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"llmquPerfMetrics"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"llmquPerfMetrics"];
    }
  }

  if (self->_modelNumber)
  {
    modelNumber = [(STSchemaSTLLMQURequestEnded *)self modelNumber];
    v8 = [modelNumber copy];
    [dictionary setObject:v8 forKeyedSubscript:@"modelNumber"];
  }

  if (self->_queryArguments)
  {
    queryArguments = [(STSchemaSTLLMQURequestEnded *)self queryArguments];
    dictionaryRepresentation2 = [queryArguments dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"queryArguments"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"queryArguments"];
    }
  }

  has = self->_has;
  if (has)
  {
    v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[STSchemaSTLLMQURequestEnded requestLength](self, "requestLength")}];
    [dictionary setObject:v13 forKeyedSubscript:@"requestLength"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[STSchemaSTLLMQURequestEnded responseLength](self, "responseLength")}];
    [dictionary setObject:v14 forKeyedSubscript:@"responseLength"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_modelNumber hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_requestLength;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v5 = 0;
    goto LABEL_6;
  }

  v4 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v5 = 2654435761 * self->_responseLength;
LABEL_6:
  v6 = v4 ^ v3 ^ v5 ^ [(STSchemaLLMQUQueryArguments *)self->_queryArguments hash];
  return v6 ^ [(STSchemaLLMQUPerfMetrics *)self->_llmquPerfMetrics hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_24;
  }

  modelNumber = [(STSchemaSTLLMQURequestEnded *)self modelNumber];
  modelNumber2 = [equalCopy modelNumber];
  if ((modelNumber != 0) == (modelNumber2 == 0))
  {
    goto LABEL_23;
  }

  modelNumber3 = [(STSchemaSTLLMQURequestEnded *)self modelNumber];
  if (modelNumber3)
  {
    v8 = modelNumber3;
    modelNumber4 = [(STSchemaSTLLMQURequestEnded *)self modelNumber];
    modelNumber5 = [equalCopy modelNumber];
    v11 = [modelNumber4 isEqual:modelNumber5];

    if (!v11)
    {
      goto LABEL_24;
    }
  }

  else
  {
  }

  has = self->_has;
  v13 = equalCopy[40];
  if ((*&has & 1) != (v13 & 1))
  {
    goto LABEL_24;
  }

  if (*&has)
  {
    requestLength = self->_requestLength;
    if (requestLength != [equalCopy requestLength])
    {
      goto LABEL_24;
    }

    has = self->_has;
    v13 = equalCopy[40];
  }

  v15 = (*&has >> 1) & 1;
  if (v15 != ((v13 >> 1) & 1))
  {
    goto LABEL_24;
  }

  if (v15)
  {
    responseLength = self->_responseLength;
    if (responseLength != [equalCopy responseLength])
    {
      goto LABEL_24;
    }
  }

  modelNumber = [(STSchemaSTLLMQURequestEnded *)self queryArguments];
  modelNumber2 = [equalCopy queryArguments];
  if ((modelNumber != 0) == (modelNumber2 == 0))
  {
    goto LABEL_23;
  }

  queryArguments = [(STSchemaSTLLMQURequestEnded *)self queryArguments];
  if (queryArguments)
  {
    v18 = queryArguments;
    queryArguments2 = [(STSchemaSTLLMQURequestEnded *)self queryArguments];
    queryArguments3 = [equalCopy queryArguments];
    v21 = [queryArguments2 isEqual:queryArguments3];

    if (!v21)
    {
      goto LABEL_24;
    }
  }

  else
  {
  }

  modelNumber = [(STSchemaSTLLMQURequestEnded *)self llmquPerfMetrics];
  modelNumber2 = [equalCopy llmquPerfMetrics];
  if ((modelNumber != 0) == (modelNumber2 == 0))
  {
LABEL_23:

    goto LABEL_24;
  }

  llmquPerfMetrics = [(STSchemaSTLLMQURequestEnded *)self llmquPerfMetrics];
  if (!llmquPerfMetrics)
  {

LABEL_27:
    v27 = 1;
    goto LABEL_25;
  }

  v23 = llmquPerfMetrics;
  llmquPerfMetrics2 = [(STSchemaSTLLMQURequestEnded *)self llmquPerfMetrics];
  llmquPerfMetrics3 = [equalCopy llmquPerfMetrics];
  v26 = [llmquPerfMetrics2 isEqual:llmquPerfMetrics3];

  if (v26)
  {
    goto LABEL_27;
  }

LABEL_24:
  v27 = 0;
LABEL_25:

  return v27;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  modelNumber = [(STSchemaSTLLMQURequestEnded *)self modelNumber];

  if (modelNumber)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if (has)
  {
    PBDataWriterWriteUint32Field();
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    PBDataWriterWriteUint32Field();
  }

  queryArguments = [(STSchemaSTLLMQURequestEnded *)self queryArguments];

  if (queryArguments)
  {
    queryArguments2 = [(STSchemaSTLLMQURequestEnded *)self queryArguments];
    PBDataWriterWriteSubmessage();
  }

  llmquPerfMetrics = [(STSchemaSTLLMQURequestEnded *)self llmquPerfMetrics];

  v9 = toCopy;
  if (llmquPerfMetrics)
  {
    llmquPerfMetrics2 = [(STSchemaSTLLMQURequestEnded *)self llmquPerfMetrics];
    PBDataWriterWriteSubmessage();

    v9 = toCopy;
  }
}

- (void)setHasResponseLength:(BOOL)length
{
  if (length)
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
  policyCopy = policy;
  v13.receiver = self;
  v13.super_class = STSchemaSTLLMQURequestEnded;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:policyCopy];
  queryArguments = [(STSchemaSTLLMQURequestEnded *)self queryArguments];
  v7 = [queryArguments applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(STSchemaSTLLMQURequestEnded *)self deleteQueryArguments];
  }

  llmquPerfMetrics = [(STSchemaSTLLMQURequestEnded *)self llmquPerfMetrics];
  v10 = [llmquPerfMetrics applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(STSchemaSTLLMQURequestEnded *)self deleteLlmquPerfMetrics];
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