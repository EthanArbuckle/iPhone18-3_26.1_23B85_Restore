@interface STSchemaSTLLMQURequestEnded
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (STSchemaSTLLMQURequestEnded)initWithDictionary:(id)a3;
- (STSchemaSTLLMQURequestEnded)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasResponseLength:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation STSchemaSTLLMQURequestEnded

- (STSchemaSTLLMQURequestEnded)initWithDictionary:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = STSchemaSTLLMQURequestEnded;
  v5 = [(STSchemaSTLLMQURequestEnded *)&v16 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"modelNumber"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(STSchemaSTLLMQURequestEnded *)v5 setModelNumber:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"requestLength"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[STSchemaSTLLMQURequestEnded setRequestLength:](v5, "setRequestLength:", [v8 unsignedIntValue]);
    }

    v9 = [v4 objectForKeyedSubscript:@"responseLength"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[STSchemaSTLLMQURequestEnded setResponseLength:](v5, "setResponseLength:", [v9 unsignedIntValue]);
    }

    v10 = [v4 objectForKeyedSubscript:@"queryArguments"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[STSchemaLLMQUQueryArguments alloc] initWithDictionary:v10];
      [(STSchemaSTLLMQURequestEnded *)v5 setQueryArguments:v11];
    }

    v12 = [v4 objectForKeyedSubscript:@"llmquPerfMetrics"];
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

- (STSchemaSTLLMQURequestEnded)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(STSchemaSTLLMQURequestEnded *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(STSchemaSTLLMQURequestEnded *)self dictionaryRepresentation];
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
  if (self->_llmquPerfMetrics)
  {
    v4 = [(STSchemaSTLLMQURequestEnded *)self llmquPerfMetrics];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"llmquPerfMetrics"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"llmquPerfMetrics"];
    }
  }

  if (self->_modelNumber)
  {
    v7 = [(STSchemaSTLLMQURequestEnded *)self modelNumber];
    v8 = [v7 copy];
    [v3 setObject:v8 forKeyedSubscript:@"modelNumber"];
  }

  if (self->_queryArguments)
  {
    v9 = [(STSchemaSTLLMQURequestEnded *)self queryArguments];
    v10 = [v9 dictionaryRepresentation];
    if (v10)
    {
      [v3 setObject:v10 forKeyedSubscript:@"queryArguments"];
    }

    else
    {
      v11 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v11 forKeyedSubscript:@"queryArguments"];
    }
  }

  has = self->_has;
  if (has)
  {
    v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[STSchemaSTLLMQURequestEnded requestLength](self, "requestLength")}];
    [v3 setObject:v13 forKeyedSubscript:@"requestLength"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[STSchemaSTLLMQURequestEnded responseLength](self, "responseLength")}];
    [v3 setObject:v14 forKeyedSubscript:@"responseLength"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_24;
  }

  v5 = [(STSchemaSTLLMQURequestEnded *)self modelNumber];
  v6 = [v4 modelNumber];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_23;
  }

  v7 = [(STSchemaSTLLMQURequestEnded *)self modelNumber];
  if (v7)
  {
    v8 = v7;
    v9 = [(STSchemaSTLLMQURequestEnded *)self modelNumber];
    v10 = [v4 modelNumber];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_24;
    }
  }

  else
  {
  }

  has = self->_has;
  v13 = v4[40];
  if ((*&has & 1) != (v13 & 1))
  {
    goto LABEL_24;
  }

  if (*&has)
  {
    requestLength = self->_requestLength;
    if (requestLength != [v4 requestLength])
    {
      goto LABEL_24;
    }

    has = self->_has;
    v13 = v4[40];
  }

  v15 = (*&has >> 1) & 1;
  if (v15 != ((v13 >> 1) & 1))
  {
    goto LABEL_24;
  }

  if (v15)
  {
    responseLength = self->_responseLength;
    if (responseLength != [v4 responseLength])
    {
      goto LABEL_24;
    }
  }

  v5 = [(STSchemaSTLLMQURequestEnded *)self queryArguments];
  v6 = [v4 queryArguments];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_23;
  }

  v17 = [(STSchemaSTLLMQURequestEnded *)self queryArguments];
  if (v17)
  {
    v18 = v17;
    v19 = [(STSchemaSTLLMQURequestEnded *)self queryArguments];
    v20 = [v4 queryArguments];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_24;
    }
  }

  else
  {
  }

  v5 = [(STSchemaSTLLMQURequestEnded *)self llmquPerfMetrics];
  v6 = [v4 llmquPerfMetrics];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_23:

    goto LABEL_24;
  }

  v22 = [(STSchemaSTLLMQURequestEnded *)self llmquPerfMetrics];
  if (!v22)
  {

LABEL_27:
    v27 = 1;
    goto LABEL_25;
  }

  v23 = v22;
  v24 = [(STSchemaSTLLMQURequestEnded *)self llmquPerfMetrics];
  v25 = [v4 llmquPerfMetrics];
  v26 = [v24 isEqual:v25];

  if (v26)
  {
    goto LABEL_27;
  }

LABEL_24:
  v27 = 0;
LABEL_25:

  return v27;
}

- (void)writeTo:(id)a3
{
  v11 = a3;
  v4 = [(STSchemaSTLLMQURequestEnded *)self modelNumber];

  if (v4)
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

  v6 = [(STSchemaSTLLMQURequestEnded *)self queryArguments];

  if (v6)
  {
    v7 = [(STSchemaSTLLMQURequestEnded *)self queryArguments];
    PBDataWriterWriteSubmessage();
  }

  v8 = [(STSchemaSTLLMQURequestEnded *)self llmquPerfMetrics];

  v9 = v11;
  if (v8)
  {
    v10 = [(STSchemaSTLLMQURequestEnded *)self llmquPerfMetrics];
    PBDataWriterWriteSubmessage();

    v9 = v11;
  }
}

- (void)setHasResponseLength:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = STSchemaSTLLMQURequestEnded;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:v4];
  v6 = [(STSchemaSTLLMQURequestEnded *)self queryArguments];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(STSchemaSTLLMQURequestEnded *)self deleteQueryArguments];
  }

  v9 = [(STSchemaSTLLMQURequestEnded *)self llmquPerfMetrics];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
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