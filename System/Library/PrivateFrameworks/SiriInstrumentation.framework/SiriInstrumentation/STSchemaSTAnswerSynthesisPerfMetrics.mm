@interface STSchemaSTAnswerSynthesisPerfMetrics
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (STSchemaSTAnswerSynthesisPerfMetrics)initWithDictionary:(id)dictionary;
- (STSchemaSTAnswerSynthesisPerfMetrics)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasAnswerSynthesisModelInferenceTimeInMs:(BOOL)ms;
- (void)setHasAnswerSynthesisModelPromptGenerationTimeInMs:(BOOL)ms;
- (void)setHasAnswerSynthesisPCCPromptGenerationTimeInMs:(BOOL)ms;
- (void)setHasAnswerSynthesisPostProcessingTimeInMs:(BOOL)ms;
- (void)setHasAnswerSynthesisTotalHydrationTimeInMs:(BOOL)ms;
- (void)setHasCollateAnswerSynthesisResultDurationInMs:(BOOL)ms;
- (void)setHasDataFilteringDurationInMs:(BOOL)ms;
- (void)setHasLlmInferenceDurationInMs:(BOOL)ms;
- (void)setHasLlmPreWarmModelDurationInMs:(BOOL)ms;
- (void)setHasPostProcessFilterDurationInMs:(BOOL)ms;
- (void)setHasPqaModelInferenceTimeInMs:(BOOL)ms;
- (void)setHasPqaModelPromptGenerationTimeInMs:(BOOL)ms;
- (void)setHasPromptGenerationDurationInMs:(BOOL)ms;
- (void)setHasSearchEntityPreProcessDurationInMs:(BOOL)ms;
- (void)writeTo:(id)to;
@end

@implementation STSchemaSTAnswerSynthesisPerfMetrics

- (STSchemaSTAnswerSynthesisPerfMetrics)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v32.receiver = self;
  v32.super_class = STSchemaSTAnswerSynthesisPerfMetrics;
  v5 = [(STSchemaSTAnswerSynthesisPerfMetrics *)&v32 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"answerSynthesisOverallDurationInMs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[STSchemaSTAnswerSynthesisPerfMetrics setAnswerSynthesisOverallDurationInMs:](v5, "setAnswerSynthesisOverallDurationInMs:", [v6 unsignedIntValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"promptGenerationDurationInMs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[STSchemaSTAnswerSynthesisPerfMetrics setPromptGenerationDurationInMs:](v5, "setPromptGenerationDurationInMs:", [v7 unsignedIntValue]);
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"dataFilteringDurationInMs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[STSchemaSTAnswerSynthesisPerfMetrics setDataFilteringDurationInMs:](v5, "setDataFilteringDurationInMs:", [v8 unsignedIntValue]);
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"searchEntityPreProcessDurationInMs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[STSchemaSTAnswerSynthesisPerfMetrics setSearchEntityPreProcessDurationInMs:](v5, "setSearchEntityPreProcessDurationInMs:", [v9 unsignedIntValue]);
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"llmPreWarmModelDurationInMs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[STSchemaSTAnswerSynthesisPerfMetrics setLlmPreWarmModelDurationInMs:](v5, "setLlmPreWarmModelDurationInMs:", [v10 unsignedIntValue]);
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"llmInferenceDurationInMs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[STSchemaSTAnswerSynthesisPerfMetrics setLlmInferenceDurationInMs:](v5, "setLlmInferenceDurationInMs:", [v11 unsignedIntValue]);
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"postProcessFilterDurationInMs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[STSchemaSTAnswerSynthesisPerfMetrics setPostProcessFilterDurationInMs:](v5, "setPostProcessFilterDurationInMs:", [v12 unsignedIntValue]);
    }

    v31 = v6;
    v13 = [dictionaryCopy objectForKeyedSubscript:@"collateAnswerSynthesisResultDurationInMs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[STSchemaSTAnswerSynthesisPerfMetrics setCollateAnswerSynthesisResultDurationInMs:](v5, "setCollateAnswerSynthesisResultDurationInMs:", [v13 unsignedIntValue]);
    }

    v30 = v7;
    v14 = [dictionaryCopy objectForKeyedSubscript:@"answerSynthesisTotalHydrationTimeInMs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[STSchemaSTAnswerSynthesisPerfMetrics setAnswerSynthesisTotalHydrationTimeInMs:](v5, "setAnswerSynthesisTotalHydrationTimeInMs:", [v14 intValue]);
    }

    v29 = v8;
    v15 = [dictionaryCopy objectForKeyedSubscript:{@"answerSynthesisModelPromptGenerationTimeInMs", v14}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[STSchemaSTAnswerSynthesisPerfMetrics setAnswerSynthesisModelPromptGenerationTimeInMs:](v5, "setAnswerSynthesisModelPromptGenerationTimeInMs:", [v15 intValue]);
    }

    v28 = v9;
    v16 = [dictionaryCopy objectForKeyedSubscript:@"answerSynthesisModelInferenceTimeInMs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[STSchemaSTAnswerSynthesisPerfMetrics setAnswerSynthesisModelInferenceTimeInMs:](v5, "setAnswerSynthesisModelInferenceTimeInMs:", [v16 intValue]);
    }

    v27 = v10;
    v17 = [dictionaryCopy objectForKeyedSubscript:@"pqaModelPromptGenerationTimeInMs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[STSchemaSTAnswerSynthesisPerfMetrics setPqaModelPromptGenerationTimeInMs:](v5, "setPqaModelPromptGenerationTimeInMs:", [v17 intValue]);
    }

    v25 = v13;
    v26 = v11;
    v18 = [dictionaryCopy objectForKeyedSubscript:@"pqaModelInferenceTimeInMs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[STSchemaSTAnswerSynthesisPerfMetrics setPqaModelInferenceTimeInMs:](v5, "setPqaModelInferenceTimeInMs:", [v18 intValue]);
    }

    v19 = v12;
    v20 = [dictionaryCopy objectForKeyedSubscript:@"answerSynthesisPostProcessingTimeInMs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[STSchemaSTAnswerSynthesisPerfMetrics setAnswerSynthesisPostProcessingTimeInMs:](v5, "setAnswerSynthesisPostProcessingTimeInMs:", [v20 intValue]);
    }

    v21 = [dictionaryCopy objectForKeyedSubscript:@"answerSynthesisPCCPromptGenerationTimeInMs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[STSchemaSTAnswerSynthesisPerfMetrics setAnswerSynthesisPCCPromptGenerationTimeInMs:](v5, "setAnswerSynthesisPCCPromptGenerationTimeInMs:", [v21 intValue]);
    }

    v22 = v5;
  }

  return v5;
}

- (STSchemaSTAnswerSynthesisPerfMetrics)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(STSchemaSTAnswerSynthesisPerfMetrics *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(STSchemaSTAnswerSynthesisPerfMetrics *)self dictionaryRepresentation];
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
  if ((has & 0x400) != 0)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithInt:{-[STSchemaSTAnswerSynthesisPerfMetrics answerSynthesisModelInferenceTimeInMs](self, "answerSynthesisModelInferenceTimeInMs")}];
    [dictionary setObject:v7 forKeyedSubscript:@"answerSynthesisModelInferenceTimeInMs"];

    has = self->_has;
    if ((has & 0x200) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_22;
    }
  }

  else if ((*&self->_has & 0x200) == 0)
  {
    goto LABEL_3;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithInt:{-[STSchemaSTAnswerSynthesisPerfMetrics answerSynthesisModelPromptGenerationTimeInMs](self, "answerSynthesisModelPromptGenerationTimeInMs")}];
  [dictionary setObject:v8 forKeyedSubscript:@"answerSynthesisModelPromptGenerationTimeInMs"];

  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_4:
    if ((has & 0x4000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_23;
  }

LABEL_22:
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[STSchemaSTAnswerSynthesisPerfMetrics answerSynthesisOverallDurationInMs](self, "answerSynthesisOverallDurationInMs")}];
  [dictionary setObject:v9 forKeyedSubscript:@"answerSynthesisOverallDurationInMs"];

  has = self->_has;
  if ((has & 0x4000) == 0)
  {
LABEL_5:
    if ((has & 0x2000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_24;
  }

LABEL_23:
  v10 = [MEMORY[0x1E696AD98] numberWithInt:{-[STSchemaSTAnswerSynthesisPerfMetrics answerSynthesisPCCPromptGenerationTimeInMs](self, "answerSynthesisPCCPromptGenerationTimeInMs")}];
  [dictionary setObject:v10 forKeyedSubscript:@"answerSynthesisPCCPromptGenerationTimeInMs"];

  has = self->_has;
  if ((has & 0x2000) == 0)
  {
LABEL_6:
    if ((has & 0x100) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_25;
  }

LABEL_24:
  v11 = [MEMORY[0x1E696AD98] numberWithInt:{-[STSchemaSTAnswerSynthesisPerfMetrics answerSynthesisPostProcessingTimeInMs](self, "answerSynthesisPostProcessingTimeInMs")}];
  [dictionary setObject:v11 forKeyedSubscript:@"answerSynthesisPostProcessingTimeInMs"];

  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_7:
    if ((has & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_26;
  }

LABEL_25:
  v12 = [MEMORY[0x1E696AD98] numberWithInt:{-[STSchemaSTAnswerSynthesisPerfMetrics answerSynthesisTotalHydrationTimeInMs](self, "answerSynthesisTotalHydrationTimeInMs")}];
  [dictionary setObject:v12 forKeyedSubscript:@"answerSynthesisTotalHydrationTimeInMs"];

  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_8:
    if ((has & 4) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_27;
  }

LABEL_26:
  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[STSchemaSTAnswerSynthesisPerfMetrics collateAnswerSynthesisResultDurationInMs](self, "collateAnswerSynthesisResultDurationInMs")}];
  [dictionary setObject:v13 forKeyedSubscript:@"collateAnswerSynthesisResultDurationInMs"];

  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_9:
    if ((has & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_28;
  }

LABEL_27:
  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[STSchemaSTAnswerSynthesisPerfMetrics dataFilteringDurationInMs](self, "dataFilteringDurationInMs")}];
  [dictionary setObject:v14 forKeyedSubscript:@"dataFilteringDurationInMs"];

  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_10:
    if ((has & 0x10) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_29;
  }

LABEL_28:
  v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[STSchemaSTAnswerSynthesisPerfMetrics llmInferenceDurationInMs](self, "llmInferenceDurationInMs")}];
  [dictionary setObject:v15 forKeyedSubscript:@"llmInferenceDurationInMs"];

  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_11:
    if ((has & 0x40) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_30;
  }

LABEL_29:
  v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[STSchemaSTAnswerSynthesisPerfMetrics llmPreWarmModelDurationInMs](self, "llmPreWarmModelDurationInMs")}];
  [dictionary setObject:v16 forKeyedSubscript:@"llmPreWarmModelDurationInMs"];

  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_12:
    if ((has & 0x1000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_31;
  }

LABEL_30:
  v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[STSchemaSTAnswerSynthesisPerfMetrics postProcessFilterDurationInMs](self, "postProcessFilterDurationInMs")}];
  [dictionary setObject:v17 forKeyedSubscript:@"postProcessFilterDurationInMs"];

  has = self->_has;
  if ((has & 0x1000) == 0)
  {
LABEL_13:
    if ((has & 0x800) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_32;
  }

LABEL_31:
  v18 = [MEMORY[0x1E696AD98] numberWithInt:{-[STSchemaSTAnswerSynthesisPerfMetrics pqaModelInferenceTimeInMs](self, "pqaModelInferenceTimeInMs")}];
  [dictionary setObject:v18 forKeyedSubscript:@"pqaModelInferenceTimeInMs"];

  has = self->_has;
  if ((has & 0x800) == 0)
  {
LABEL_14:
    if ((has & 2) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_33;
  }

LABEL_32:
  v19 = [MEMORY[0x1E696AD98] numberWithInt:{-[STSchemaSTAnswerSynthesisPerfMetrics pqaModelPromptGenerationTimeInMs](self, "pqaModelPromptGenerationTimeInMs")}];
  [dictionary setObject:v19 forKeyedSubscript:@"pqaModelPromptGenerationTimeInMs"];

  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_15:
    if ((has & 8) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_33:
  v20 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[STSchemaSTAnswerSynthesisPerfMetrics promptGenerationDurationInMs](self, "promptGenerationDurationInMs")}];
  [dictionary setObject:v20 forKeyedSubscript:@"promptGenerationDurationInMs"];

  if ((*&self->_has & 8) != 0)
  {
LABEL_16:
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[STSchemaSTAnswerSynthesisPerfMetrics searchEntityPreProcessDurationInMs](self, "searchEntityPreProcessDurationInMs")}];
    [dictionary setObject:v5 forKeyedSubscript:@"searchEntityPreProcessDurationInMs"];
  }

LABEL_17:
  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  has = self->_has;
  if (has)
  {
    v3 = 2654435761 * self->_answerSynthesisOverallDurationInMs;
    if ((has & 2) != 0)
    {
LABEL_3:
      v4 = 2654435761 * self->_promptGenerationDurationInMs;
      if ((has & 4) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_19;
    }
  }

  else
  {
    v3 = 0;
    if ((has & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  v4 = 0;
  if ((has & 4) != 0)
  {
LABEL_4:
    v5 = 2654435761 * self->_dataFilteringDurationInMs;
    if ((has & 8) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_20;
  }

LABEL_19:
  v5 = 0;
  if ((has & 8) != 0)
  {
LABEL_5:
    v6 = 2654435761 * self->_searchEntityPreProcessDurationInMs;
    if ((has & 0x10) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_21;
  }

LABEL_20:
  v6 = 0;
  if ((has & 0x10) != 0)
  {
LABEL_6:
    v7 = 2654435761 * self->_llmPreWarmModelDurationInMs;
    if ((has & 0x20) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_22;
  }

LABEL_21:
  v7 = 0;
  if ((has & 0x20) != 0)
  {
LABEL_7:
    v8 = 2654435761 * self->_llmInferenceDurationInMs;
    if ((has & 0x40) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_23;
  }

LABEL_22:
  v8 = 0;
  if ((has & 0x40) != 0)
  {
LABEL_8:
    v9 = 2654435761 * self->_postProcessFilterDurationInMs;
    if ((has & 0x80) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_24;
  }

LABEL_23:
  v9 = 0;
  if ((has & 0x80) != 0)
  {
LABEL_9:
    v10 = 2654435761 * self->_collateAnswerSynthesisResultDurationInMs;
    if ((*&self->_has & 0x100) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_25;
  }

LABEL_24:
  v10 = 0;
  if ((*&self->_has & 0x100) != 0)
  {
LABEL_10:
    v11 = 2654435761 * self->_answerSynthesisTotalHydrationTimeInMs;
    if ((*&self->_has & 0x200) != 0)
    {
      goto LABEL_11;
    }

    goto LABEL_26;
  }

LABEL_25:
  v11 = 0;
  if ((*&self->_has & 0x200) != 0)
  {
LABEL_11:
    v12 = 2654435761 * self->_answerSynthesisModelPromptGenerationTimeInMs;
    if ((*&self->_has & 0x400) != 0)
    {
      goto LABEL_12;
    }

    goto LABEL_27;
  }

LABEL_26:
  v12 = 0;
  if ((*&self->_has & 0x400) != 0)
  {
LABEL_12:
    v13 = 2654435761 * self->_answerSynthesisModelInferenceTimeInMs;
    if ((*&self->_has & 0x800) != 0)
    {
      goto LABEL_13;
    }

    goto LABEL_28;
  }

LABEL_27:
  v13 = 0;
  if ((*&self->_has & 0x800) != 0)
  {
LABEL_13:
    v14 = 2654435761 * self->_pqaModelPromptGenerationTimeInMs;
    if ((*&self->_has & 0x1000) != 0)
    {
      goto LABEL_14;
    }

    goto LABEL_29;
  }

LABEL_28:
  v14 = 0;
  if ((*&self->_has & 0x1000) != 0)
  {
LABEL_14:
    v15 = 2654435761 * self->_pqaModelInferenceTimeInMs;
    if ((*&self->_has & 0x2000) != 0)
    {
      goto LABEL_15;
    }

LABEL_30:
    v16 = 0;
    if ((*&self->_has & 0x4000) != 0)
    {
      goto LABEL_16;
    }

LABEL_31:
    v17 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17;
  }

LABEL_29:
  v15 = 0;
  if ((*&self->_has & 0x2000) == 0)
  {
    goto LABEL_30;
  }

LABEL_15:
  v16 = 2654435761 * self->_answerSynthesisPostProcessingTimeInMs;
  if ((*&self->_has & 0x4000) == 0)
  {
    goto LABEL_31;
  }

LABEL_16:
  v17 = 2654435761 * self->_answerSynthesisPCCPromptGenerationTimeInMs;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_62;
  }

  has = self->_has;
  v6 = equalCopy[34];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_62;
  }

  if (*&has)
  {
    answerSynthesisOverallDurationInMs = self->_answerSynthesisOverallDurationInMs;
    if (answerSynthesisOverallDurationInMs != [equalCopy answerSynthesisOverallDurationInMs])
    {
      goto LABEL_62;
    }

    has = self->_has;
    v6 = equalCopy[34];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 != ((v6 >> 1) & 1))
  {
    goto LABEL_62;
  }

  if (v8)
  {
    promptGenerationDurationInMs = self->_promptGenerationDurationInMs;
    if (promptGenerationDurationInMs != [equalCopy promptGenerationDurationInMs])
    {
      goto LABEL_62;
    }

    has = self->_has;
    v6 = equalCopy[34];
  }

  v10 = (*&has >> 2) & 1;
  if (v10 != ((v6 >> 2) & 1))
  {
    goto LABEL_62;
  }

  if (v10)
  {
    dataFilteringDurationInMs = self->_dataFilteringDurationInMs;
    if (dataFilteringDurationInMs != [equalCopy dataFilteringDurationInMs])
    {
      goto LABEL_62;
    }

    has = self->_has;
    v6 = equalCopy[34];
  }

  v12 = (*&has >> 3) & 1;
  if (v12 != ((v6 >> 3) & 1))
  {
    goto LABEL_62;
  }

  if (v12)
  {
    searchEntityPreProcessDurationInMs = self->_searchEntityPreProcessDurationInMs;
    if (searchEntityPreProcessDurationInMs != [equalCopy searchEntityPreProcessDurationInMs])
    {
      goto LABEL_62;
    }

    has = self->_has;
    v6 = equalCopy[34];
  }

  v14 = (*&has >> 4) & 1;
  if (v14 != ((v6 >> 4) & 1))
  {
    goto LABEL_62;
  }

  if (v14)
  {
    llmPreWarmModelDurationInMs = self->_llmPreWarmModelDurationInMs;
    if (llmPreWarmModelDurationInMs != [equalCopy llmPreWarmModelDurationInMs])
    {
      goto LABEL_62;
    }

    has = self->_has;
    v6 = equalCopy[34];
  }

  v16 = (*&has >> 5) & 1;
  if (v16 != ((v6 >> 5) & 1))
  {
    goto LABEL_62;
  }

  if (v16)
  {
    llmInferenceDurationInMs = self->_llmInferenceDurationInMs;
    if (llmInferenceDurationInMs != [equalCopy llmInferenceDurationInMs])
    {
      goto LABEL_62;
    }

    has = self->_has;
    v6 = equalCopy[34];
  }

  v18 = (*&has >> 6) & 1;
  if (v18 != ((v6 >> 6) & 1))
  {
    goto LABEL_62;
  }

  if (v18)
  {
    postProcessFilterDurationInMs = self->_postProcessFilterDurationInMs;
    if (postProcessFilterDurationInMs != [equalCopy postProcessFilterDurationInMs])
    {
      goto LABEL_62;
    }

    has = self->_has;
    v6 = equalCopy[34];
  }

  v20 = (*&has >> 7) & 1;
  if (v20 != ((v6 >> 7) & 1))
  {
    goto LABEL_62;
  }

  if (v20)
  {
    collateAnswerSynthesisResultDurationInMs = self->_collateAnswerSynthesisResultDurationInMs;
    if (collateAnswerSynthesisResultDurationInMs != [equalCopy collateAnswerSynthesisResultDurationInMs])
    {
      goto LABEL_62;
    }

    has = self->_has;
    v6 = equalCopy[34];
  }

  v22 = (*&has >> 8) & 1;
  if (v22 != ((v6 >> 8) & 1))
  {
    goto LABEL_62;
  }

  if (v22)
  {
    answerSynthesisTotalHydrationTimeInMs = self->_answerSynthesisTotalHydrationTimeInMs;
    if (answerSynthesisTotalHydrationTimeInMs != [equalCopy answerSynthesisTotalHydrationTimeInMs])
    {
      goto LABEL_62;
    }

    has = self->_has;
    v6 = equalCopy[34];
  }

  v24 = (*&has >> 9) & 1;
  if (v24 != ((v6 >> 9) & 1))
  {
    goto LABEL_62;
  }

  if (v24)
  {
    answerSynthesisModelPromptGenerationTimeInMs = self->_answerSynthesisModelPromptGenerationTimeInMs;
    if (answerSynthesisModelPromptGenerationTimeInMs != [equalCopy answerSynthesisModelPromptGenerationTimeInMs])
    {
      goto LABEL_62;
    }

    has = self->_has;
    v6 = equalCopy[34];
  }

  v26 = (*&has >> 10) & 1;
  if (v26 != ((v6 >> 10) & 1))
  {
    goto LABEL_62;
  }

  if (v26)
  {
    answerSynthesisModelInferenceTimeInMs = self->_answerSynthesisModelInferenceTimeInMs;
    if (answerSynthesisModelInferenceTimeInMs != [equalCopy answerSynthesisModelInferenceTimeInMs])
    {
      goto LABEL_62;
    }

    has = self->_has;
    v6 = equalCopy[34];
  }

  v28 = (*&has >> 11) & 1;
  if (v28 != ((v6 >> 11) & 1))
  {
    goto LABEL_62;
  }

  if (v28)
  {
    pqaModelPromptGenerationTimeInMs = self->_pqaModelPromptGenerationTimeInMs;
    if (pqaModelPromptGenerationTimeInMs != [equalCopy pqaModelPromptGenerationTimeInMs])
    {
      goto LABEL_62;
    }

    has = self->_has;
    v6 = equalCopy[34];
  }

  v30 = (*&has >> 12) & 1;
  if (v30 != ((v6 >> 12) & 1))
  {
    goto LABEL_62;
  }

  if (v30)
  {
    pqaModelInferenceTimeInMs = self->_pqaModelInferenceTimeInMs;
    if (pqaModelInferenceTimeInMs != [equalCopy pqaModelInferenceTimeInMs])
    {
      goto LABEL_62;
    }

    has = self->_has;
    v6 = equalCopy[34];
  }

  v32 = (*&has >> 13) & 1;
  if (v32 != ((v6 >> 13) & 1))
  {
    goto LABEL_62;
  }

  if (v32)
  {
    answerSynthesisPostProcessingTimeInMs = self->_answerSynthesisPostProcessingTimeInMs;
    if (answerSynthesisPostProcessingTimeInMs == [equalCopy answerSynthesisPostProcessingTimeInMs])
    {
      has = self->_has;
      v6 = equalCopy[34];
      goto LABEL_58;
    }

LABEL_62:
    v36 = 0;
    goto LABEL_63;
  }

LABEL_58:
  v34 = (*&has >> 14) & 1;
  if (v34 != ((v6 >> 14) & 1))
  {
    goto LABEL_62;
  }

  if (v34)
  {
    answerSynthesisPCCPromptGenerationTimeInMs = self->_answerSynthesisPCCPromptGenerationTimeInMs;
    if (answerSynthesisPCCPromptGenerationTimeInMs != [equalCopy answerSynthesisPCCPromptGenerationTimeInMs])
    {
      goto LABEL_62;
    }
  }

  v36 = 1;
LABEL_63:

  return v36;
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

      goto LABEL_22;
    }
  }

  else if ((has & 2) == 0)
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

    goto LABEL_23;
  }

LABEL_22:
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_5:
    if ((has & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_24;
  }

LABEL_23:
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_6:
    if ((has & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_25;
  }

LABEL_24:
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_7:
    if ((has & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_26;
  }

LABEL_25:
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_8:
    if ((has & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_27;
  }

LABEL_26:
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_9:
    if ((has & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_28;
  }

LABEL_27:
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_10:
    if ((has & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_29;
  }

LABEL_28:
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_11:
    if ((has & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_30;
  }

LABEL_29:
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_12:
    if ((has & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_31;
  }

LABEL_30:
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 0x800) == 0)
  {
LABEL_13:
    if ((has & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_32;
  }

LABEL_31:
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 0x1000) == 0)
  {
LABEL_14:
    if ((has & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_33;
  }

LABEL_32:
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 0x2000) == 0)
  {
LABEL_15:
    if ((has & 0x4000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_33:
  PBDataWriterWriteInt32Field();
  if ((*&self->_has & 0x4000) != 0)
  {
LABEL_16:
    PBDataWriterWriteInt32Field();
  }

LABEL_17:
}

- (void)setHasAnswerSynthesisPCCPromptGenerationTimeInMs:(BOOL)ms
{
  if (ms)
  {
    v3 = 0x4000;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xBFFF | v3;
}

- (void)setHasAnswerSynthesisPostProcessingTimeInMs:(BOOL)ms
{
  if (ms)
  {
    v3 = 0x2000;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDFFF | v3;
}

- (void)setHasPqaModelInferenceTimeInMs:(BOOL)ms
{
  if (ms)
  {
    v3 = 4096;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEFFF | v3;
}

- (void)setHasPqaModelPromptGenerationTimeInMs:(BOOL)ms
{
  if (ms)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7FF | v3;
}

- (void)setHasAnswerSynthesisModelInferenceTimeInMs:(BOOL)ms
{
  if (ms)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFBFF | v3;
}

- (void)setHasAnswerSynthesisModelPromptGenerationTimeInMs:(BOOL)ms
{
  if (ms)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFDFF | v3;
}

- (void)setHasAnswerSynthesisTotalHydrationTimeInMs:(BOOL)ms
{
  if (ms)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFEFF | v3;
}

- (void)setHasCollateAnswerSynthesisResultDurationInMs:(BOOL)ms
{
  if (ms)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFF7F | v3;
}

- (void)setHasPostProcessFilterDurationInMs:(BOOL)ms
{
  if (ms)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFBF | v3;
}

- (void)setHasLlmInferenceDurationInMs:(BOOL)ms
{
  if (ms)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFDF | v3;
}

- (void)setHasLlmPreWarmModelDurationInMs:(BOOL)ms
{
  if (ms)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFEF | v3;
}

- (void)setHasSearchEntityPreProcessDurationInMs:(BOOL)ms
{
  if (ms)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFF7 | v3;
}

- (void)setHasDataFilteringDurationInMs:(BOOL)ms
{
  if (ms)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFB | v3;
}

- (void)setHasPromptGenerationDurationInMs:(BOOL)ms
{
  if (ms)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFD | v3;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end