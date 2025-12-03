@interface STSchemaLLMQUPerfMetrics
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (STSchemaLLMQUPerfMetrics)initWithDictionary:(id)dictionary;
- (STSchemaLLMQUPerfMetrics)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasLlmquInferenceDurationInMs:(BOOL)ms;
- (void)setHasLlmquPostProcessFilterDurationInMs:(BOOL)ms;
- (void)setHasLlmquPreWarmModelDurationInMs:(BOOL)ms;
- (void)setHasLlmquPromptGenerationDurationInMs:(BOOL)ms;
- (void)writeTo:(id)to;
@end

@implementation STSchemaLLMQUPerfMetrics

- (STSchemaLLMQUPerfMetrics)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v13.receiver = self;
  v13.super_class = STSchemaLLMQUPerfMetrics;
  v5 = [(STSchemaLLMQUPerfMetrics *)&v13 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"llmquOverallDurationInMs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[STSchemaLLMQUPerfMetrics setLlmquOverallDurationInMs:](v5, "setLlmquOverallDurationInMs:", [v6 unsignedIntValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"llmquPromptGenerationDurationInMs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[STSchemaLLMQUPerfMetrics setLlmquPromptGenerationDurationInMs:](v5, "setLlmquPromptGenerationDurationInMs:", [v7 unsignedIntValue]);
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"llmquPreWarmModelDurationInMs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[STSchemaLLMQUPerfMetrics setLlmquPreWarmModelDurationInMs:](v5, "setLlmquPreWarmModelDurationInMs:", [v8 unsignedIntValue]);
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"llmquInferenceDurationInMs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[STSchemaLLMQUPerfMetrics setLlmquInferenceDurationInMs:](v5, "setLlmquInferenceDurationInMs:", [v9 unsignedIntValue]);
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"llmquPostProcessFilterDurationInMs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[STSchemaLLMQUPerfMetrics setLlmquPostProcessFilterDurationInMs:](v5, "setLlmquPostProcessFilterDurationInMs:", [v10 unsignedIntValue]);
    }

    v11 = v5;
  }

  return v5;
}

- (STSchemaLLMQUPerfMetrics)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(STSchemaLLMQUPerfMetrics *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(STSchemaLLMQUPerfMetrics *)self dictionaryRepresentation];
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
  has = self->_has;
  if ((has & 8) != 0)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[STSchemaLLMQUPerfMetrics llmquInferenceDurationInMs](self, "llmquInferenceDurationInMs")}];
    [dictionary setObject:v7 forKeyedSubscript:@"llmquInferenceDurationInMs"];

    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[STSchemaLLMQUPerfMetrics llmquOverallDurationInMs](self, "llmquOverallDurationInMs")}];
  [dictionary setObject:v8 forKeyedSubscript:@"llmquOverallDurationInMs"];

  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_4:
    if ((has & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[STSchemaLLMQUPerfMetrics llmquPostProcessFilterDurationInMs](self, "llmquPostProcessFilterDurationInMs")}];
  [dictionary setObject:v9 forKeyedSubscript:@"llmquPostProcessFilterDurationInMs"];

  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_5:
    if ((has & 2) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_13:
  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[STSchemaLLMQUPerfMetrics llmquPreWarmModelDurationInMs](self, "llmquPreWarmModelDurationInMs")}];
  [dictionary setObject:v10 forKeyedSubscript:@"llmquPreWarmModelDurationInMs"];

  if ((*&self->_has & 2) != 0)
  {
LABEL_6:
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[STSchemaLLMQUPerfMetrics llmquPromptGenerationDurationInMs](self, "llmquPromptGenerationDurationInMs")}];
    [dictionary setObject:v5 forKeyedSubscript:@"llmquPromptGenerationDurationInMs"];
  }

LABEL_7:
  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761 * self->_llmquOverallDurationInMs;
    if ((*&self->_has & 2) != 0)
    {
LABEL_3:
      v3 = 2654435761 * self->_llmquPromptGenerationDurationInMs;
      if ((*&self->_has & 4) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v2 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  v3 = 0;
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    v4 = 2654435761 * self->_llmquPreWarmModelDurationInMs;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    v5 = 0;
    if ((*&self->_has & 0x10) != 0)
    {
      goto LABEL_6;
    }

LABEL_11:
    v6 = 0;
    return v3 ^ v2 ^ v4 ^ v5 ^ v6;
  }

LABEL_9:
  v4 = 0;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  v5 = 2654435761 * self->_llmquInferenceDurationInMs;
  if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_11;
  }

LABEL_6:
  v6 = 2654435761 * self->_llmquPostProcessFilterDurationInMs;
  return v3 ^ v2 ^ v4 ^ v5 ^ v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_22;
  }

  has = self->_has;
  v6 = equalCopy[28];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_22;
  }

  if (*&has)
  {
    llmquOverallDurationInMs = self->_llmquOverallDurationInMs;
    if (llmquOverallDurationInMs != [equalCopy llmquOverallDurationInMs])
    {
      goto LABEL_22;
    }

    has = self->_has;
    v6 = equalCopy[28];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 != ((v6 >> 1) & 1))
  {
    goto LABEL_22;
  }

  if (v8)
  {
    llmquPromptGenerationDurationInMs = self->_llmquPromptGenerationDurationInMs;
    if (llmquPromptGenerationDurationInMs != [equalCopy llmquPromptGenerationDurationInMs])
    {
      goto LABEL_22;
    }

    has = self->_has;
    v6 = equalCopy[28];
  }

  v10 = (*&has >> 2) & 1;
  if (v10 != ((v6 >> 2) & 1))
  {
    goto LABEL_22;
  }

  if (v10)
  {
    llmquPreWarmModelDurationInMs = self->_llmquPreWarmModelDurationInMs;
    if (llmquPreWarmModelDurationInMs != [equalCopy llmquPreWarmModelDurationInMs])
    {
      goto LABEL_22;
    }

    has = self->_has;
    v6 = equalCopy[28];
  }

  v12 = (*&has >> 3) & 1;
  if (v12 != ((v6 >> 3) & 1))
  {
    goto LABEL_22;
  }

  if (v12)
  {
    llmquInferenceDurationInMs = self->_llmquInferenceDurationInMs;
    if (llmquInferenceDurationInMs == [equalCopy llmquInferenceDurationInMs])
    {
      has = self->_has;
      v6 = equalCopy[28];
      goto LABEL_18;
    }

LABEL_22:
    v16 = 0;
    goto LABEL_23;
  }

LABEL_18:
  v14 = (*&has >> 4) & 1;
  if (v14 != ((v6 >> 4) & 1))
  {
    goto LABEL_22;
  }

  if (v14)
  {
    llmquPostProcessFilterDurationInMs = self->_llmquPostProcessFilterDurationInMs;
    if (llmquPostProcessFilterDurationInMs != [equalCopy llmquPostProcessFilterDurationInMs])
    {
      goto LABEL_22;
    }
  }

  v16 = 1;
LABEL_23:

  return v16;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if (has)
  {
    PBDataWriterWriteUint32Field();
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_5:
    if ((has & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_13:
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_6:
    PBDataWriterWriteUint32Field();
  }

LABEL_7:
}

- (void)setHasLlmquPostProcessFilterDurationInMs:(BOOL)ms
{
  if (ms)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasLlmquInferenceDurationInMs:(BOOL)ms
{
  if (ms)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasLlmquPreWarmModelDurationInMs:(BOOL)ms
{
  if (ms)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasLlmquPromptGenerationDurationInMs:(BOOL)ms
{
  if (ms)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end