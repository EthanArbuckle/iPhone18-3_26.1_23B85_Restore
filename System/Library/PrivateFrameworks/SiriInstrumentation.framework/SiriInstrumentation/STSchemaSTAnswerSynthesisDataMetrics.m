@interface STSchemaSTAnswerSynthesisDataMetrics
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (STSchemaSTAnswerSynthesisDataMetrics)initWithDictionary:(id)a3;
- (STSchemaSTAnswerSynthesisDataMetrics)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addAnswerSynthesisHydrationMetrics:(id)a3;
- (void)setHasNumAnswers:(BOOL)a3;
- (void)setHasNumQueriesTriggered:(BOOL)a3;
- (void)setHasPqaModelPromptLength:(BOOL)a3;
- (void)setHasPromptLength:(BOOL)a3;
- (void)setHasResponseLength:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation STSchemaSTAnswerSynthesisDataMetrics

- (STSchemaSTAnswerSynthesisDataMetrics)initWithDictionary:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v30.receiver = self;
  v30.super_class = STSchemaSTAnswerSynthesisDataMetrics;
  v5 = [(STSchemaSTAnswerSynthesisDataMetrics *)&v30 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"numLLMCalls"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[STSchemaSTAnswerSynthesisDataMetrics setNumLLMCalls:](v5, "setNumLLMCalls:", [v6 unsignedIntValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"promptLength"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[STSchemaSTAnswerSynthesisDataMetrics setPromptLength:](v5, "setPromptLength:", [v7 unsignedIntValue]);
    }

    v8 = [v4 objectForKeyedSubscript:@"responseLength"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[STSchemaSTAnswerSynthesisDataMetrics setResponseLength:](v5, "setResponseLength:", [v8 unsignedIntValue]);
    }

    v9 = [v4 objectForKeyedSubscript:@"numAnswers"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[STSchemaSTAnswerSynthesisDataMetrics setNumAnswers:](v5, "setNumAnswers:", [v9 unsignedIntValue]);
    }

    v10 = [v4 objectForKeyedSubscript:@"numQueriesTriggered"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[STSchemaSTAnswerSynthesisDataMetrics setNumQueriesTriggered:](v5, "setNumQueriesTriggered:", [v10 unsignedIntValue]);
    }

    v11 = [v4 objectForKeyedSubscript:@"pqaModelPromptLength"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[STSchemaSTAnswerSynthesisDataMetrics setPqaModelPromptLength:](v5, "setPqaModelPromptLength:", [v11 intValue]);
    }

    v12 = [v4 objectForKeyedSubscript:@"answerSynthesisHydrationMetrics"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v22 = v11;
      v23 = v10;
      v24 = v7;
      v25 = v6;
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v13 = v12;
      v14 = [v13 countByEnumeratingWithState:&v26 objects:v31 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v27;
        do
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v27 != v16)
            {
              objc_enumerationMutation(v13);
            }

            v18 = *(*(&v26 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v19 = [[STSchemaAnswerSythesisHydrationMetric alloc] initWithDictionary:v18];
              [(STSchemaSTAnswerSynthesisDataMetrics *)v5 addAnswerSynthesisHydrationMetrics:v19];
            }
          }

          v15 = [v13 countByEnumeratingWithState:&v26 objects:v31 count:16];
        }

        while (v15);
      }

      v7 = v24;
      v6 = v25;
      v11 = v22;
      v10 = v23;
    }

    v20 = v5;
  }

  return v5;
}

- (STSchemaSTAnswerSynthesisDataMetrics)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(STSchemaSTAnswerSynthesisDataMetrics *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(STSchemaSTAnswerSynthesisDataMetrics *)self dictionaryRepresentation];
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
  v25 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSArray *)self->_answerSynthesisHydrationMetrics count])
  {
    v4 = [MEMORY[0x1E695DF70] array];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v5 = self->_answerSynthesisHydrationMetrics;
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v21;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v21 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [*(*(&v20 + 1) + 8 * i) dictionaryRepresentation];
          if (v10)
          {
            [v4 addObject:v10];
          }

          else
          {
            v11 = [MEMORY[0x1E695DFB0] null];
            [v4 addObject:v11];
          }
        }

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v7);
    }

    [v3 setObject:v4 forKeyedSubscript:@"answerSynthesisHydrationMetrics"];
  }

  has = self->_has;
  if ((has & 8) != 0)
  {
    v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[STSchemaSTAnswerSynthesisDataMetrics numAnswers](self, "numAnswers")}];
    [v3 setObject:v15 forKeyedSubscript:@"numAnswers"];

    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_15:
      if ((has & 0x10) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_25;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_15;
  }

  v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[STSchemaSTAnswerSynthesisDataMetrics numLLMCalls](self, "numLLMCalls", v20)}];
  [v3 setObject:v16 forKeyedSubscript:@"numLLMCalls"];

  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_16:
    if ((has & 0x20) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

LABEL_25:
  v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[STSchemaSTAnswerSynthesisDataMetrics numQueriesTriggered](self, "numQueriesTriggered", v20)}];
  [v3 setObject:v17 forKeyedSubscript:@"numQueriesTriggered"];

  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_17:
    if ((has & 2) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_27;
  }

LABEL_26:
  v18 = [MEMORY[0x1E696AD98] numberWithInt:{-[STSchemaSTAnswerSynthesisDataMetrics pqaModelPromptLength](self, "pqaModelPromptLength", v20)}];
  [v3 setObject:v18 forKeyedSubscript:@"pqaModelPromptLength"];

  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_18:
    if ((has & 4) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

LABEL_27:
  v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[STSchemaSTAnswerSynthesisDataMetrics promptLength](self, "promptLength", v20)}];
  [v3 setObject:v19 forKeyedSubscript:@"promptLength"];

  if ((*&self->_has & 4) != 0)
  {
LABEL_19:
    v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[STSchemaSTAnswerSynthesisDataMetrics responseLength](self, "responseLength", v20)}];
    [v3 setObject:v13 forKeyedSubscript:@"responseLength"];
  }

LABEL_20:
  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3, v20];

  return v3;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v6 = 2654435761 * self->_numLLMCalls;
    if ((*&self->_has & 2) != 0)
    {
LABEL_3:
      v7 = 2654435761 * self->_promptLength;
      if ((*&self->_has & 4) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v6 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  v7 = 0;
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    v8 = 2654435761 * self->_responseLength;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  v8 = 0;
  if ((*&self->_has & 8) != 0)
  {
LABEL_5:
    v9 = 2654435761 * self->_numAnswers;
    if ((*&self->_has & 0x10) != 0)
    {
      goto LABEL_6;
    }

LABEL_12:
    v10 = 0;
    if ((*&self->_has & 0x20) != 0)
    {
      goto LABEL_7;
    }

LABEL_13:
    v11 = 0;
    return v7 ^ v6 ^ v8 ^ v9 ^ v10 ^ v11 ^ [(NSArray *)self->_answerSynthesisHydrationMetrics hash:v3];
  }

LABEL_11:
  v9 = 0;
  if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_12;
  }

LABEL_6:
  v10 = 2654435761 * self->_numQueriesTriggered;
  if ((*&self->_has & 0x20) == 0)
  {
    goto LABEL_13;
  }

LABEL_7:
  v11 = 2654435761 * self->_pqaModelPromptLength;
  return v7 ^ v6 ^ v8 ^ v9 ^ v10 ^ v11 ^ [(NSArray *)self->_answerSynthesisHydrationMetrics hash:v3];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_30;
  }

  has = self->_has;
  v6 = v4[40];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_30;
  }

  if (*&has)
  {
    numLLMCalls = self->_numLLMCalls;
    if (numLLMCalls != [v4 numLLMCalls])
    {
      goto LABEL_30;
    }

    has = self->_has;
    v6 = v4[40];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 == ((v6 >> 1) & 1))
  {
    if (v8)
    {
      promptLength = self->_promptLength;
      if (promptLength != [v4 promptLength])
      {
        goto LABEL_30;
      }

      has = self->_has;
      v6 = v4[40];
    }

    v10 = (*&has >> 2) & 1;
    if (v10 == ((v6 >> 2) & 1))
    {
      if (v10)
      {
        responseLength = self->_responseLength;
        if (responseLength != [v4 responseLength])
        {
          goto LABEL_30;
        }

        has = self->_has;
        v6 = v4[40];
      }

      v12 = (*&has >> 3) & 1;
      if (v12 == ((v6 >> 3) & 1))
      {
        if (v12)
        {
          numAnswers = self->_numAnswers;
          if (numAnswers != [v4 numAnswers])
          {
            goto LABEL_30;
          }

          has = self->_has;
          v6 = v4[40];
        }

        v14 = (*&has >> 4) & 1;
        if (v14 == ((v6 >> 4) & 1))
        {
          if (v14)
          {
            numQueriesTriggered = self->_numQueriesTriggered;
            if (numQueriesTriggered != [v4 numQueriesTriggered])
            {
              goto LABEL_30;
            }

            has = self->_has;
            v6 = v4[40];
          }

          v16 = (*&has >> 5) & 1;
          if (v16 == ((v6 >> 5) & 1))
          {
            if (!v16 || (pqaModelPromptLength = self->_pqaModelPromptLength, pqaModelPromptLength == [v4 pqaModelPromptLength]))
            {
              v18 = [(STSchemaSTAnswerSynthesisDataMetrics *)self answerSynthesisHydrationMetrics];
              v19 = [v4 answerSynthesisHydrationMetrics];
              v20 = v19;
              if ((v18 != 0) != (v19 == 0))
              {
                v21 = [(STSchemaSTAnswerSynthesisDataMetrics *)self answerSynthesisHydrationMetrics];
                if (!v21)
                {

LABEL_33:
                  v26 = 1;
                  goto LABEL_31;
                }

                v22 = v21;
                v23 = [(STSchemaSTAnswerSynthesisDataMetrics *)self answerSynthesisHydrationMetrics];
                v24 = [v4 answerSynthesisHydrationMetrics];
                v25 = [v23 isEqual:v24];

                if (v25)
                {
                  goto LABEL_33;
                }
              }

              else
              {
              }
            }
          }
        }
      }
    }
  }

LABEL_30:
  v26 = 0;
LABEL_31:

  return v26;
}

- (void)writeTo:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
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

      goto LABEL_18;
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

    goto LABEL_19;
  }

LABEL_18:
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_5:
    if ((has & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

LABEL_19:
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_6:
    if ((has & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_20:
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_7:
    PBDataWriterWriteInt32Field();
  }

LABEL_8:
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = self->_answerSynthesisHydrationMetrics;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        PBDataWriterWriteSubmessage();
      }

      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (void)addAnswerSynthesisHydrationMetrics:(id)a3
{
  v4 = a3;
  answerSynthesisHydrationMetrics = self->_answerSynthesisHydrationMetrics;
  v8 = v4;
  if (!answerSynthesisHydrationMetrics)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_answerSynthesisHydrationMetrics;
    self->_answerSynthesisHydrationMetrics = v6;

    v4 = v8;
    answerSynthesisHydrationMetrics = self->_answerSynthesisHydrationMetrics;
  }

  [(NSArray *)answerSynthesisHydrationMetrics addObject:v4];
}

- (void)setHasPqaModelPromptLength:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (void)setHasNumQueriesTriggered:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasNumAnswers:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasResponseLength:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasPromptLength:(BOOL)a3
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
  v9.receiver = self;
  v9.super_class = STSchemaSTAnswerSynthesisDataMetrics;
  v4 = a3;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:v4];
  v6 = [(STSchemaSTAnswerSynthesisDataMetrics *)self answerSynthesisHydrationMetrics:v9.receiver];
  v7 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:v6 underConditions:v4];

  [(STSchemaSTAnswerSynthesisDataMetrics *)self setAnswerSynthesisHydrationMetrics:v7];

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end