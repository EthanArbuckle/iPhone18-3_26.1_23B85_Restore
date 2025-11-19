@interface STSchemaSTAnswerSynthesisResult
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (STSchemaSTAnswerSynthesisResult)initWithDictionary:(id)a3;
- (STSchemaSTAnswerSynthesisResult)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation STSchemaSTAnswerSynthesisResult

- (STSchemaSTAnswerSynthesisResult)initWithDictionary:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = STSchemaSTAnswerSynthesisResult;
  v5 = [(STSchemaSTAnswerSynthesisResult *)&v15 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"modelNumber"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(STSchemaSTAnswerSynthesisResult *)v5 setModelNumber:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"perfMetrics"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[STSchemaSTAnswerSynthesisPerfMetrics alloc] initWithDictionary:v8];
      [(STSchemaSTAnswerSynthesisResult *)v5 setPerfMetrics:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"dataMetrics"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[STSchemaSTAnswerSynthesisDataMetrics alloc] initWithDictionary:v10];
      [(STSchemaSTAnswerSynthesisResult *)v5 setDataMetrics:v11];
    }

    v12 = [v4 objectForKeyedSubscript:@"isContentSearchFallback"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[STSchemaSTAnswerSynthesisResult setIsContentSearchFallback:](v5, "setIsContentSearchFallback:", [v12 BOOLValue]);
    }

    v13 = v5;
  }

  return v5;
}

- (STSchemaSTAnswerSynthesisResult)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(STSchemaSTAnswerSynthesisResult *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(STSchemaSTAnswerSynthesisResult *)self dictionaryRepresentation];
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
  if (self->_dataMetrics)
  {
    v4 = [(STSchemaSTAnswerSynthesisResult *)self dataMetrics];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"dataMetrics"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"dataMetrics"];
    }
  }

  if (*(&self->_isContentSearchFallback + 1))
  {
    v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[STSchemaSTAnswerSynthesisResult isContentSearchFallback](self, "isContentSearchFallback")}];
    [v3 setObject:v7 forKeyedSubscript:@"isContentSearchFallback"];
  }

  if (self->_modelNumber)
  {
    v8 = [(STSchemaSTAnswerSynthesisResult *)self modelNumber];
    v9 = [v8 copy];
    [v3 setObject:v9 forKeyedSubscript:@"modelNumber"];
  }

  if (self->_perfMetrics)
  {
    v10 = [(STSchemaSTAnswerSynthesisResult *)self perfMetrics];
    v11 = [v10 dictionaryRepresentation];
    if (v11)
    {
      [v3 setObject:v11 forKeyedSubscript:@"perfMetrics"];
    }

    else
    {
      v12 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v12 forKeyedSubscript:@"perfMetrics"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  v5 = [(STSchemaSTAnswerSynthesisResult *)self modelNumber];
  v6 = [v4 modelNumber];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_16;
  }

  v7 = [(STSchemaSTAnswerSynthesisResult *)self modelNumber];
  if (v7)
  {
    v8 = v7;
    v9 = [(STSchemaSTAnswerSynthesisResult *)self modelNumber];
    v10 = [v4 modelNumber];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v5 = [(STSchemaSTAnswerSynthesisResult *)self perfMetrics];
  v6 = [v4 perfMetrics];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_16;
  }

  v12 = [(STSchemaSTAnswerSynthesisResult *)self perfMetrics];
  if (v12)
  {
    v13 = v12;
    v14 = [(STSchemaSTAnswerSynthesisResult *)self perfMetrics];
    v15 = [v4 perfMetrics];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v5 = [(STSchemaSTAnswerSynthesisResult *)self dataMetrics];
  v6 = [v4 dataMetrics];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_16:

    goto LABEL_17;
  }

  v17 = [(STSchemaSTAnswerSynthesisResult *)self dataMetrics];
  if (v17)
  {
    v18 = v17;
    v19 = [(STSchemaSTAnswerSynthesisResult *)self dataMetrics];
    v20 = [v4 dataMetrics];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  if (*(&self->_isContentSearchFallback + 1) == (v4[33] & 1))
  {
    if (!*(&self->_isContentSearchFallback + 1) || (isContentSearchFallback = self->_isContentSearchFallback, isContentSearchFallback == [v4 isContentSearchFallback]))
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

- (void)writeTo:(id)a3
{
  v9 = a3;
  v4 = [(STSchemaSTAnswerSynthesisResult *)self modelNumber];

  if (v4)
  {
    PBDataWriterWriteStringField();
  }

  v5 = [(STSchemaSTAnswerSynthesisResult *)self perfMetrics];

  if (v5)
  {
    v6 = [(STSchemaSTAnswerSynthesisResult *)self perfMetrics];
    PBDataWriterWriteSubmessage();
  }

  v7 = [(STSchemaSTAnswerSynthesisResult *)self dataMetrics];

  if (v7)
  {
    v8 = [(STSchemaSTAnswerSynthesisResult *)self dataMetrics];
    PBDataWriterWriteSubmessage();
  }

  if (*(&self->_isContentSearchFallback + 1))
  {
    PBDataWriterWriteBOOLField();
  }
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = STSchemaSTAnswerSynthesisResult;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:v4];
  v6 = [(STSchemaSTAnswerSynthesisResult *)self perfMetrics];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(STSchemaSTAnswerSynthesisResult *)self deletePerfMetrics];
  }

  v9 = [(STSchemaSTAnswerSynthesisResult *)self dataMetrics];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
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