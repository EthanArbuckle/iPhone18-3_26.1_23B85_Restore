@interface DODMLASRSchemaDODMLASRLanguageModelMetrics
- (BOOL)isEqual:(id)a3;
- (DODMLASRSchemaDODMLASRLanguageModelMetrics)initWithDictionary:(id)a3;
- (DODMLASRSchemaDODMLASRLanguageModelMetrics)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addNgramHits:(id)a3;
- (void)setHasNumInvalidTokens:(BOOL)a3;
- (void)setHasNumInvalidUtterances:(BOOL)a3;
- (void)setHasNumOutOfVocabularyWords:(BOOL)a3;
- (void)setHasNumUtterances:(BOOL)a3;
- (void)setHasNumWords:(BOOL)a3;
- (void)setHasPerplexity:(BOOL)a3;
- (void)setHasPerplexityOne:(BOOL)a3;
- (void)setHasTotalDurationInMs:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation DODMLASRSchemaDODMLASRLanguageModelMetrics

- (DODMLASRSchemaDODMLASRLanguageModelMetrics)initWithDictionary:(id)a3
{
  v40 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v38.receiver = self;
  v38.super_class = DODMLASRSchemaDODMLASRLanguageModelMetrics;
  v5 = [(DODMLASRSchemaDODMLASRLanguageModelMetrics *)&v38 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"linearInterpolationWeight"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v6 floatValue];
      [(DODMLASRSchemaDODMLASRLanguageModelMetrics *)v5 setLinearInterpolationWeight:?];
    }

    v7 = [v4 objectForKeyedSubscript:@"totalDurationInMs"];
    objc_opt_class();
    v33 = v7;
    if (objc_opt_isKindOfClass())
    {
      -[DODMLASRSchemaDODMLASRLanguageModelMetrics setTotalDurationInMs:](v5, "setTotalDurationInMs:", [v7 unsignedLongLongValue]);
    }

    v8 = [v4 objectForKeyedSubscript:@"numUtterances"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[DODMLASRSchemaDODMLASRLanguageModelMetrics setNumUtterances:](v5, "setNumUtterances:", [v8 unsignedIntValue]);
    }

    v9 = [v4 objectForKeyedSubscript:@"numWords"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[DODMLASRSchemaDODMLASRLanguageModelMetrics setNumWords:](v5, "setNumWords:", [v9 unsignedIntValue]);
    }

    v10 = [v4 objectForKeyedSubscript:@"numOutOfVocabularyWords"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[DODMLASRSchemaDODMLASRLanguageModelMetrics setNumOutOfVocabularyWords:](v5, "setNumOutOfVocabularyWords:", [v10 unsignedIntValue]);
    }

    v11 = [v4 objectForKeyedSubscript:@"numInvalidTokens"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[DODMLASRSchemaDODMLASRLanguageModelMetrics setNumInvalidTokens:](v5, "setNumInvalidTokens:", [v11 unsignedIntValue]);
    }

    v12 = v6;
    v13 = [v4 objectForKeyedSubscript:@"numInvalidUtterances"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[DODMLASRSchemaDODMLASRLanguageModelMetrics setNumInvalidUtterances:](v5, "setNumInvalidUtterances:", [v13 unsignedIntValue]);
    }

    v14 = [v4 objectForKeyedSubscript:@"perplexity"];
    objc_opt_class();
    v32 = v14;
    if (objc_opt_isKindOfClass())
    {
      [v14 floatValue];
      [(DODMLASRSchemaDODMLASRLanguageModelMetrics *)v5 setPerplexity:?];
    }

    v15 = [v4 objectForKeyedSubscript:@"perplexityOne"];
    objc_opt_class();
    v31 = v15;
    v16 = v33;
    if (objc_opt_isKindOfClass())
    {
      [v31 floatValue];
      [(DODMLASRSchemaDODMLASRLanguageModelMetrics *)v5 setPerplexityOne:?];
    }

    v17 = [v4 objectForKeyedSubscript:@"ngramHits"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v27 = v10;
      v28 = v9;
      v29 = v8;
      v30 = v12;
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v18 = v17;
      v19 = [v18 countByEnumeratingWithState:&v34 objects:v39 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v35;
        do
        {
          for (i = 0; i != v20; ++i)
          {
            if (*v35 != v21)
            {
              objc_enumerationMutation(v18);
            }

            v23 = *(*(&v34 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v24 = [[DODMLASRSchemaDODMLASRNgramHits alloc] initWithDictionary:v23];
              [(DODMLASRSchemaDODMLASRLanguageModelMetrics *)v5 addNgramHits:v24];
            }
          }

          v20 = [v18 countByEnumeratingWithState:&v34 objects:v39 count:16];
        }

        while (v20);
      }

      v8 = v29;
      v12 = v30;
      v16 = v33;
      v10 = v27;
      v9 = v28;
    }

    v25 = v5;
  }

  return v5;
}

- (DODMLASRSchemaDODMLASRLanguageModelMetrics)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(DODMLASRSchemaDODMLASRLanguageModelMetrics *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(DODMLASRSchemaDODMLASRLanguageModelMetrics *)self dictionaryRepresentation];
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
  v31 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (*&self->_has)
  {
    v4 = MEMORY[0x1E696AD98];
    [(DODMLASRSchemaDODMLASRLanguageModelMetrics *)self linearInterpolationWeight];
    v5 = [v4 numberWithFloat:?];
    [v3 setObject:v5 forKeyedSubscript:@"linearInterpolationWeight"];
  }

  if ([(NSArray *)self->_ngramHits count])
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v7 = self->_ngramHits;
    v8 = [(NSArray *)v7 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v27;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v27 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [*(*(&v26 + 1) + 8 * i) dictionaryRepresentation];
          if (v12)
          {
            [v6 addObject:v12];
          }

          else
          {
            v13 = [MEMORY[0x1E695DFB0] null];
            [v6 addObject:v13];
          }
        }

        v9 = [(NSArray *)v7 countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v9);
    }

    [v3 setObject:v6 forKeyedSubscript:@"ngramHits"];
  }

  has = self->_has;
  if ((has & 0x20) != 0)
  {
    v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[DODMLASRSchemaDODMLASRLanguageModelMetrics numInvalidTokens](self, "numInvalidTokens")}];
    [v3 setObject:v17 forKeyedSubscript:@"numInvalidTokens"];

    has = self->_has;
    if ((has & 0x40) == 0)
    {
LABEL_17:
      if ((has & 0x10) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_29;
    }
  }

  else if ((has & 0x40) == 0)
  {
    goto LABEL_17;
  }

  v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[DODMLASRSchemaDODMLASRLanguageModelMetrics numInvalidUtterances](self, "numInvalidUtterances")}];
  [v3 setObject:v18 forKeyedSubscript:@"numInvalidUtterances"];

  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_18:
    if ((has & 4) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_30;
  }

LABEL_29:
  v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[DODMLASRSchemaDODMLASRLanguageModelMetrics numOutOfVocabularyWords](self, "numOutOfVocabularyWords")}];
  [v3 setObject:v19 forKeyedSubscript:@"numOutOfVocabularyWords"];

  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_19:
    if ((has & 8) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_31;
  }

LABEL_30:
  v20 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[DODMLASRSchemaDODMLASRLanguageModelMetrics numUtterances](self, "numUtterances")}];
  [v3 setObject:v20 forKeyedSubscript:@"numUtterances"];

  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_20:
    if ((has & 0x80) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_32;
  }

LABEL_31:
  v21 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[DODMLASRSchemaDODMLASRLanguageModelMetrics numWords](self, "numWords")}];
  [v3 setObject:v21 forKeyedSubscript:@"numWords"];

  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_21:
    if ((has & 0x100) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_33;
  }

LABEL_32:
  v22 = MEMORY[0x1E696AD98];
  [(DODMLASRSchemaDODMLASRLanguageModelMetrics *)self perplexity];
  v23 = [v22 numberWithFloat:?];
  [v3 setObject:v23 forKeyedSubscript:@"perplexity"];

  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_22:
    if ((has & 2) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

LABEL_33:
  v24 = MEMORY[0x1E696AD98];
  [(DODMLASRSchemaDODMLASRLanguageModelMetrics *)self perplexityOne];
  v25 = [v24 numberWithFloat:?];
  [v3 setObject:v25 forKeyedSubscript:@"perplexityOne"];

  if ((*&self->_has & 2) != 0)
  {
LABEL_23:
    v15 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[DODMLASRSchemaDODMLASRLanguageModelMetrics totalDurationInMs](self, "totalDurationInMs")}];
    [v3 setObject:v15 forKeyedSubscript:@"totalDurationInMs"];
  }

LABEL_24:
  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  has = self->_has;
  if (has)
  {
    linearInterpolationWeight = self->_linearInterpolationWeight;
    if (linearInterpolationWeight >= 0.0)
    {
      v11 = linearInterpolationWeight;
    }

    else
    {
      v11 = -linearInterpolationWeight;
    }

    *v6.i64 = floor(v11 + 0.5);
    v12 = (v11 - *v6.i64) * 1.84467441e19;
    *v7.i64 = *v6.i64 - trunc(*v6.i64 * 5.42101086e-20) * 1.84467441e19;
    v13.f64[0] = NAN;
    v13.f64[1] = NAN;
    v6 = vbslq_s8(vnegq_f64(v13), v7, v6);
    v9 = 2654435761u * *v6.i64;
    if (v12 >= 0.0)
    {
      if (v12 > 0.0)
      {
        v9 += v12;
      }
    }

    else
    {
      v9 -= fabs(v12);
    }
  }

  else
  {
    v9 = 0;
  }

  if ((has & 2) != 0)
  {
    v14 = 2654435761u * self->_totalDurationInMs;
    if ((has & 4) != 0)
    {
LABEL_12:
      v15 = 2654435761 * self->_numUtterances;
      if ((has & 8) != 0)
      {
        goto LABEL_13;
      }

      goto LABEL_24;
    }
  }

  else
  {
    v14 = 0;
    if ((has & 4) != 0)
    {
      goto LABEL_12;
    }
  }

  v15 = 0;
  if ((has & 8) != 0)
  {
LABEL_13:
    v16 = 2654435761 * self->_numWords;
    if ((has & 0x10) != 0)
    {
      goto LABEL_14;
    }

    goto LABEL_25;
  }

LABEL_24:
  v16 = 0;
  if ((has & 0x10) != 0)
  {
LABEL_14:
    v17 = 2654435761 * self->_numOutOfVocabularyWords;
    if ((has & 0x20) != 0)
    {
      goto LABEL_15;
    }

    goto LABEL_26;
  }

LABEL_25:
  v17 = 0;
  if ((has & 0x20) != 0)
  {
LABEL_15:
    v18 = 2654435761 * self->_numInvalidTokens;
    if ((has & 0x40) != 0)
    {
      goto LABEL_16;
    }

    goto LABEL_27;
  }

LABEL_26:
  v18 = 0;
  if ((has & 0x40) != 0)
  {
LABEL_16:
    v19 = 2654435761 * self->_numInvalidUtterances;
    if ((has & 0x80) != 0)
    {
      goto LABEL_17;
    }

LABEL_28:
    v24 = 0;
    goto LABEL_29;
  }

LABEL_27:
  v19 = 0;
  if ((has & 0x80) == 0)
  {
    goto LABEL_28;
  }

LABEL_17:
  perplexity = self->_perplexity;
  if (perplexity >= 0.0)
  {
    v21 = perplexity;
  }

  else
  {
    v21 = -perplexity;
  }

  *v6.i64 = floor(v21 + 0.5);
  v22 = (v21 - *v6.i64) * 1.84467441e19;
  *v7.i64 = *v6.i64 - trunc(*v6.i64 * 5.42101086e-20) * 1.84467441e19;
  v23.f64[0] = NAN;
  v23.f64[1] = NAN;
  v6 = vbslq_s8(vnegq_f64(v23), v7, v6);
  v24 = 2654435761u * *v6.i64;
  if (v22 >= 0.0)
  {
    if (v22 > 0.0)
    {
      v24 += v22;
    }
  }

  else
  {
    v24 -= fabs(v22);
  }

LABEL_29:
  if ((*&self->_has & 0x100) != 0)
  {
    perplexityOne = self->_perplexityOne;
    if (perplexityOne >= 0.0)
    {
      v27 = perplexityOne;
    }

    else
    {
      v27 = -perplexityOne;
    }

    *v6.i64 = floor(v27 + 0.5);
    v28 = (v27 - *v6.i64) * 1.84467441e19;
    *v7.i64 = *v6.i64 - trunc(*v6.i64 * 5.42101086e-20) * 1.84467441e19;
    v29.f64[0] = NAN;
    v29.f64[1] = NAN;
    v25 = 2654435761u * *vbslq_s8(vnegq_f64(v29), v7, v6).i64;
    if (v28 >= 0.0)
    {
      if (v28 > 0.0)
      {
        v25 += v28;
      }
    }

    else
    {
      v25 -= fabs(v28);
    }
  }

  else
  {
    v25 = 0;
  }

  return v14 ^ v9 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19 ^ v24 ^ v25 ^ [(NSArray *)self->_ngramHits hash:v3];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_42;
  }

  has = self->_has;
  v6 = v4[32];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_42;
  }

  if (*&has)
  {
    linearInterpolationWeight = self->_linearInterpolationWeight;
    [v4 linearInterpolationWeight];
    if (linearInterpolationWeight != v8)
    {
      goto LABEL_42;
    }

    has = self->_has;
    v6 = v4[32];
  }

  v9 = (*&has >> 1) & 1;
  if (v9 == ((v6 >> 1) & 1))
  {
    if (v9)
    {
      totalDurationInMs = self->_totalDurationInMs;
      if (totalDurationInMs != [v4 totalDurationInMs])
      {
        goto LABEL_42;
      }

      has = self->_has;
      v6 = v4[32];
    }

    v11 = (*&has >> 2) & 1;
    if (v11 == ((v6 >> 2) & 1))
    {
      if (v11)
      {
        numUtterances = self->_numUtterances;
        if (numUtterances != [v4 numUtterances])
        {
          goto LABEL_42;
        }

        has = self->_has;
        v6 = v4[32];
      }

      v13 = (*&has >> 3) & 1;
      if (v13 == ((v6 >> 3) & 1))
      {
        if (v13)
        {
          numWords = self->_numWords;
          if (numWords != [v4 numWords])
          {
            goto LABEL_42;
          }

          has = self->_has;
          v6 = v4[32];
        }

        v15 = (*&has >> 4) & 1;
        if (v15 == ((v6 >> 4) & 1))
        {
          if (v15)
          {
            numOutOfVocabularyWords = self->_numOutOfVocabularyWords;
            if (numOutOfVocabularyWords != [v4 numOutOfVocabularyWords])
            {
              goto LABEL_42;
            }

            has = self->_has;
            v6 = v4[32];
          }

          v17 = (*&has >> 5) & 1;
          if (v17 == ((v6 >> 5) & 1))
          {
            if (v17)
            {
              numInvalidTokens = self->_numInvalidTokens;
              if (numInvalidTokens != [v4 numInvalidTokens])
              {
                goto LABEL_42;
              }

              has = self->_has;
              v6 = v4[32];
            }

            v19 = (*&has >> 6) & 1;
            if (v19 == ((v6 >> 6) & 1))
            {
              if (v19)
              {
                numInvalidUtterances = self->_numInvalidUtterances;
                if (numInvalidUtterances != [v4 numInvalidUtterances])
                {
                  goto LABEL_42;
                }

                has = self->_has;
                v6 = v4[32];
              }

              v21 = (*&has >> 7) & 1;
              if (v21 == ((v6 >> 7) & 1))
              {
                if (v21)
                {
                  perplexity = self->_perplexity;
                  [v4 perplexity];
                  if (perplexity != v23)
                  {
                    goto LABEL_42;
                  }

                  has = self->_has;
                  v6 = v4[32];
                }

                v24 = (*&has >> 8) & 1;
                if (v24 == ((v6 >> 8) & 1))
                {
                  if (!v24 || (perplexityOne = self->_perplexityOne, [v4 perplexityOne], perplexityOne == v26))
                  {
                    v27 = [(DODMLASRSchemaDODMLASRLanguageModelMetrics *)self ngramHits];
                    v28 = [v4 ngramHits];
                    v29 = v28;
                    if ((v27 != 0) != (v28 == 0))
                    {
                      v30 = [(DODMLASRSchemaDODMLASRLanguageModelMetrics *)self ngramHits];
                      if (!v30)
                      {

LABEL_45:
                        v35 = 1;
                        goto LABEL_43;
                      }

                      v31 = v30;
                      v32 = [(DODMLASRSchemaDODMLASRLanguageModelMetrics *)self ngramHits];
                      v33 = [v4 ngramHits];
                      v34 = [v32 isEqual:v33];

                      if (v34)
                      {
                        goto LABEL_45;
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
      }
    }
  }

LABEL_42:
  v35 = 0;
LABEL_43:

  return v35;
}

- (void)writeTo:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  has = self->_has;
  if (has)
  {
    PBDataWriterWriteFloatField();
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_21;
    }
  }

  else if ((has & 2) == 0)
  {
    goto LABEL_3;
  }

  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_22;
  }

LABEL_21:
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_5:
    if ((has & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_23;
  }

LABEL_22:
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_6:
    if ((has & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_24;
  }

LABEL_23:
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_7:
    if ((has & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_25;
  }

LABEL_24:
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_8:
    if ((has & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_26;
  }

LABEL_25:
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_9:
    if ((has & 0x100) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_26:
  PBDataWriterWriteFloatField();
  if ((*&self->_has & 0x100) != 0)
  {
LABEL_10:
    PBDataWriterWriteFloatField();
  }

LABEL_11:
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = self->_ngramHits;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        PBDataWriterWriteSubmessage();
        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (void)addNgramHits:(id)a3
{
  v4 = a3;
  ngramHits = self->_ngramHits;
  v8 = v4;
  if (!ngramHits)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_ngramHits;
    self->_ngramHits = v6;

    v4 = v8;
    ngramHits = self->_ngramHits;
  }

  [(NSArray *)ngramHits addObject:v4];
}

- (void)setHasPerplexityOne:(BOOL)a3
{
  if (a3)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFEFF | v3;
}

- (void)setHasPerplexity:(BOOL)a3
{
  if (a3)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFF7F | v3;
}

- (void)setHasNumInvalidUtterances:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFBF | v3;
}

- (void)setHasNumInvalidTokens:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFDF | v3;
}

- (void)setHasNumOutOfVocabularyWords:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFEF | v3;
}

- (void)setHasNumWords:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFF7 | v3;
}

- (void)setHasNumUtterances:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFB | v3;
}

- (void)setHasTotalDurationInMs:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFD | v3;
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v9.receiver = self;
  v9.super_class = DODMLASRSchemaDODMLASRLanguageModelMetrics;
  v4 = a3;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:v4];
  v6 = [(DODMLASRSchemaDODMLASRLanguageModelMetrics *)self ngramHits:v9.receiver];
  v7 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:v6 underConditions:v4];

  [(DODMLASRSchemaDODMLASRLanguageModelMetrics *)self setNgramHits:v7];

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end