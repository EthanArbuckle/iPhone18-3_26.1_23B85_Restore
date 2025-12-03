@interface DODMLASRSchemaDODMLASRDecodingMetrics
- (BOOL)isEqual:(id)equal;
- (DODMLASRSchemaDODMLASRDecodingMetrics)initWithDictionary:(id)dictionary;
- (DODMLASRSchemaDODMLASRDecodingMetrics)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addLanguageModelInterpolationWeights:(id)weights;
- (void)addPostprocessingEntityCategoryCounts:(id)counts;
- (void)addPreprocessingEntityCategoryCounts:(id)counts;
- (void)setHasAverageActiveTokensPerFrame:(BOOL)frame;
- (void)setHasJitLanguageModelEnrollmentDurationInMs:(BOOL)ms;
- (void)setHasJitQueryDurationInMs:(BOOL)ms;
- (void)writeTo:(id)to;
@end

@implementation DODMLASRSchemaDODMLASRDecodingMetrics

- (DODMLASRSchemaDODMLASRDecodingMetrics)initWithDictionary:(id)dictionary
{
  v57 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v53.receiver = self;
  v53.super_class = DODMLASRSchemaDODMLASRDecodingMetrics;
  v5 = [(DODMLASRSchemaDODMLASRDecodingMetrics *)&v53 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"wallRealTimeFactor"];
    objc_opt_class();
    v40 = v6;
    if (objc_opt_isKindOfClass())
    {
      [v6 floatValue];
      [(DODMLASRSchemaDODMLASRDecodingMetrics *)v5 setWallRealTimeFactor:?];
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"languageModelInterpolationWeights"];
    objc_opt_class();
    v39 = v7;
    if (objc_opt_isKindOfClass())
    {
      v51 = 0u;
      v52 = 0u;
      v49 = 0u;
      v50 = 0u;
      v8 = v7;
      v9 = [v8 countByEnumeratingWithState:&v49 objects:v56 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v50;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v50 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = *(*(&v49 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v14 = [[ASRSchemaASRInterpolationWeightBundle alloc] initWithDictionary:v13];
              [(DODMLASRSchemaDODMLASRDecodingMetrics *)v5 addLanguageModelInterpolationWeights:v14];
            }
          }

          v10 = [v8 countByEnumeratingWithState:&v49 objects:v56 count:16];
        }

        while (v10);
      }
    }

    v15 = [dictionaryCopy objectForKeyedSubscript:@"averageActiveTokensPerFrame"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v15 floatValue];
      [(DODMLASRSchemaDODMLASRDecodingMetrics *)v5 setAverageActiveTokensPerFrame:?];
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:@"jitQueryDurationInMs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[DODMLASRSchemaDODMLASRDecodingMetrics setJitQueryDurationInMs:](v5, "setJitQueryDurationInMs:", [v16 unsignedLongLongValue]);
    }

    v17 = [dictionaryCopy objectForKeyedSubscript:@"jitLanguageModelEnrollmentDurationInMs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[DODMLASRSchemaDODMLASRDecodingMetrics setJitLanguageModelEnrollmentDurationInMs:](v5, "setJitLanguageModelEnrollmentDurationInMs:", [v17 unsignedLongLongValue]);
    }

    v18 = [dictionaryCopy objectForKeyedSubscript:@"preprocessingEntityCategoryCounts"];
    objc_opt_class();
    v37 = v16;
    v38 = v15;
    if (objc_opt_isKindOfClass())
    {
      v47 = 0u;
      v48 = 0u;
      v45 = 0u;
      v46 = 0u;
      v19 = v18;
      v20 = v18;
      v21 = [v20 countByEnumeratingWithState:&v45 objects:v55 count:16];
      if (v21)
      {
        v22 = v21;
        v23 = *v46;
        do
        {
          for (j = 0; j != v22; ++j)
          {
            if (*v46 != v23)
            {
              objc_enumerationMutation(v20);
            }

            v25 = *(*(&v45 + 1) + 8 * j);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v26 = [[DODMLASRSchemaDODMLASREntityCategoryCount alloc] initWithDictionary:v25];
              [(DODMLASRSchemaDODMLASRDecodingMetrics *)v5 addPreprocessingEntityCategoryCounts:v26];
            }
          }

          v22 = [v20 countByEnumeratingWithState:&v45 objects:v55 count:16];
        }

        while (v22);
      }

      v15 = v38;
      v18 = v19;
    }

    v27 = [dictionaryCopy objectForKeyedSubscript:@"postprocessingEntityCategoryCounts"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      v28 = v27;
      v29 = [v28 countByEnumeratingWithState:&v41 objects:v54 count:16];
      if (v29)
      {
        v30 = v29;
        v31 = *v42;
        do
        {
          for (k = 0; k != v30; ++k)
          {
            if (*v42 != v31)
            {
              objc_enumerationMutation(v28);
            }

            v33 = *(*(&v41 + 1) + 8 * k);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v34 = [[DODMLASRSchemaDODMLASREntityCategoryCount alloc] initWithDictionary:v33];
              [(DODMLASRSchemaDODMLASRDecodingMetrics *)v5 addPostprocessingEntityCategoryCounts:v34];
            }
          }

          v30 = [v28 countByEnumeratingWithState:&v41 objects:v54 count:16];
        }

        while (v30);
      }

      v16 = v37;
      v15 = v38;
    }

    v35 = v5;
  }

  return v5;
}

- (DODMLASRSchemaDODMLASRDecodingMetrics)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(DODMLASRSchemaDODMLASRDecodingMetrics *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(DODMLASRSchemaDODMLASRDecodingMetrics *)self dictionaryRepresentation];
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
  v51 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  has = self->_has;
  if ((has & 2) != 0)
  {
    v5 = MEMORY[0x1E696AD98];
    [(DODMLASRSchemaDODMLASRDecodingMetrics *)self averageActiveTokensPerFrame];
    v6 = [v5 numberWithFloat:?];
    [dictionary setObject:v6 forKeyedSubscript:@"averageActiveTokensPerFrame"];

    has = self->_has;
  }

  if ((has & 8) != 0)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[DODMLASRSchemaDODMLASRDecodingMetrics jitLanguageModelEnrollmentDurationInMs](self, "jitLanguageModelEnrollmentDurationInMs")}];
    [dictionary setObject:v7 forKeyedSubscript:@"jitLanguageModelEnrollmentDurationInMs"];

    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[DODMLASRSchemaDODMLASRDecodingMetrics jitQueryDurationInMs](self, "jitQueryDurationInMs")}];
    [dictionary setObject:v8 forKeyedSubscript:@"jitQueryDurationInMs"];
  }

  if ([(NSArray *)self->_languageModelInterpolationWeights count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v10 = self->_languageModelInterpolationWeights;
    v11 = [(NSArray *)v10 countByEnumeratingWithState:&v44 objects:v50 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v45;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v45 != v13)
          {
            objc_enumerationMutation(v10);
          }

          dictionaryRepresentation = [*(*(&v44 + 1) + 8 * i) dictionaryRepresentation];
          if (dictionaryRepresentation)
          {
            [array addObject:dictionaryRepresentation];
          }

          else
          {
            null = [MEMORY[0x1E695DFB0] null];
            [array addObject:null];
          }
        }

        v12 = [(NSArray *)v10 countByEnumeratingWithState:&v44 objects:v50 count:16];
      }

      while (v12);
    }

    [dictionary setObject:array forKeyedSubscript:@"languageModelInterpolationWeights"];
  }

  if ([(NSArray *)self->_postprocessingEntityCategoryCounts count])
  {
    array2 = [MEMORY[0x1E695DF70] array];
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v18 = self->_postprocessingEntityCategoryCounts;
    v19 = [(NSArray *)v18 countByEnumeratingWithState:&v40 objects:v49 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v41;
      do
      {
        for (j = 0; j != v20; ++j)
        {
          if (*v41 != v21)
          {
            objc_enumerationMutation(v18);
          }

          dictionaryRepresentation2 = [*(*(&v40 + 1) + 8 * j) dictionaryRepresentation];
          if (dictionaryRepresentation2)
          {
            [array2 addObject:dictionaryRepresentation2];
          }

          else
          {
            null2 = [MEMORY[0x1E695DFB0] null];
            [array2 addObject:null2];
          }
        }

        v20 = [(NSArray *)v18 countByEnumeratingWithState:&v40 objects:v49 count:16];
      }

      while (v20);
    }

    [dictionary setObject:array2 forKeyedSubscript:@"postprocessingEntityCategoryCounts"];
  }

  if ([(NSArray *)self->_preprocessingEntityCategoryCounts count])
  {
    array3 = [MEMORY[0x1E695DF70] array];
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v26 = self->_preprocessingEntityCategoryCounts;
    v27 = [(NSArray *)v26 countByEnumeratingWithState:&v36 objects:v48 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v37;
      do
      {
        for (k = 0; k != v28; ++k)
        {
          if (*v37 != v29)
          {
            objc_enumerationMutation(v26);
          }

          dictionaryRepresentation3 = [*(*(&v36 + 1) + 8 * k) dictionaryRepresentation];
          if (dictionaryRepresentation3)
          {
            [array3 addObject:dictionaryRepresentation3];
          }

          else
          {
            null3 = [MEMORY[0x1E695DFB0] null];
            [array3 addObject:null3];
          }
        }

        v28 = [(NSArray *)v26 countByEnumeratingWithState:&v36 objects:v48 count:16];
      }

      while (v28);
    }

    [dictionary setObject:array3 forKeyedSubscript:@"preprocessingEntityCategoryCounts"];
  }

  if (*&self->_has)
  {
    v33 = MEMORY[0x1E696AD98];
    [(DODMLASRSchemaDODMLASRDecodingMetrics *)self wallRealTimeFactor];
    v34 = [v33 numberWithFloat:?];
    [dictionary setObject:v34 forKeyedSubscript:@"wallRealTimeFactor"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    wallRealTimeFactor = self->_wallRealTimeFactor;
    if (wallRealTimeFactor >= 0.0)
    {
      v7 = wallRealTimeFactor;
    }

    else
    {
      v7 = -wallRealTimeFactor;
    }

    *v2.i64 = floor(v7 + 0.5);
    v8 = (v7 - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v9.f64[0] = NAN;
    v9.f64[1] = NAN;
    v5 = 2654435761u * *vbslq_s8(vnegq_f64(v9), v3, v2).i64;
    if (v8 >= 0.0)
    {
      if (v8 > 0.0)
      {
        v5 += v8;
      }
    }

    else
    {
      v5 -= fabs(v8);
    }
  }

  else
  {
    v5 = 0;
  }

  v10 = [(NSArray *)self->_languageModelInterpolationWeights hash];
  if ((*&self->_has & 2) != 0)
  {
    averageActiveTokensPerFrame = self->_averageActiveTokensPerFrame;
    if (averageActiveTokensPerFrame >= 0.0)
    {
      v15 = averageActiveTokensPerFrame;
    }

    else
    {
      v15 = -averageActiveTokensPerFrame;
    }

    *v11.i64 = floor(v15 + 0.5);
    v16 = (v15 - *v11.i64) * 1.84467441e19;
    *v12.i64 = *v11.i64 - trunc(*v11.i64 * 5.42101086e-20) * 1.84467441e19;
    v17.f64[0] = NAN;
    v17.f64[1] = NAN;
    v13 = 2654435761u * *vbslq_s8(vnegq_f64(v17), v12, v11).i64;
    if (v16 >= 0.0)
    {
      if (v16 > 0.0)
      {
        v13 += v16;
      }
    }

    else
    {
      v13 -= fabs(v16);
    }
  }

  else
  {
    v13 = 0;
  }

  if ((*&self->_has & 4) != 0)
  {
    v18 = 2654435761u * self->_jitQueryDurationInMs;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_21;
    }

LABEL_23:
    v19 = 0;
    goto LABEL_24;
  }

  v18 = 0;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_23;
  }

LABEL_21:
  v19 = 2654435761u * self->_jitLanguageModelEnrollmentDurationInMs;
LABEL_24:
  v20 = v10 ^ v5 ^ v13 ^ v18 ^ v19 ^ [(NSArray *)self->_preprocessingEntityCategoryCounts hash];
  return v20 ^ [(NSArray *)self->_postprocessingEntityCategoryCounts hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_31;
  }

  if ((*&self->_has & 1) != (equalCopy[64] & 1))
  {
    goto LABEL_31;
  }

  if (*&self->_has)
  {
    wallRealTimeFactor = self->_wallRealTimeFactor;
    [equalCopy wallRealTimeFactor];
    if (wallRealTimeFactor != v6)
    {
      goto LABEL_31;
    }
  }

  languageModelInterpolationWeights = [(DODMLASRSchemaDODMLASRDecodingMetrics *)self languageModelInterpolationWeights];
  languageModelInterpolationWeights2 = [equalCopy languageModelInterpolationWeights];
  if ((languageModelInterpolationWeights != 0) == (languageModelInterpolationWeights2 == 0))
  {
    goto LABEL_30;
  }

  languageModelInterpolationWeights3 = [(DODMLASRSchemaDODMLASRDecodingMetrics *)self languageModelInterpolationWeights];
  if (languageModelInterpolationWeights3)
  {
    v10 = languageModelInterpolationWeights3;
    languageModelInterpolationWeights4 = [(DODMLASRSchemaDODMLASRDecodingMetrics *)self languageModelInterpolationWeights];
    languageModelInterpolationWeights5 = [equalCopy languageModelInterpolationWeights];
    v13 = [languageModelInterpolationWeights4 isEqual:languageModelInterpolationWeights5];

    if (!v13)
    {
      goto LABEL_31;
    }
  }

  else
  {
  }

  has = self->_has;
  v15 = (*&has >> 1) & 1;
  v16 = equalCopy[64];
  if (v15 != ((v16 >> 1) & 1))
  {
    goto LABEL_31;
  }

  if (v15)
  {
    averageActiveTokensPerFrame = self->_averageActiveTokensPerFrame;
    [equalCopy averageActiveTokensPerFrame];
    if (averageActiveTokensPerFrame != v18)
    {
      goto LABEL_31;
    }

    has = self->_has;
    v16 = equalCopy[64];
  }

  v19 = (*&has >> 2) & 1;
  if (v19 != ((v16 >> 2) & 1))
  {
    goto LABEL_31;
  }

  if (v19)
  {
    jitQueryDurationInMs = self->_jitQueryDurationInMs;
    if (jitQueryDurationInMs != [equalCopy jitQueryDurationInMs])
    {
      goto LABEL_31;
    }

    has = self->_has;
    v16 = equalCopy[64];
  }

  v21 = (*&has >> 3) & 1;
  if (v21 != ((v16 >> 3) & 1))
  {
    goto LABEL_31;
  }

  if (v21)
  {
    jitLanguageModelEnrollmentDurationInMs = self->_jitLanguageModelEnrollmentDurationInMs;
    if (jitLanguageModelEnrollmentDurationInMs != [equalCopy jitLanguageModelEnrollmentDurationInMs])
    {
      goto LABEL_31;
    }
  }

  languageModelInterpolationWeights = [(DODMLASRSchemaDODMLASRDecodingMetrics *)self preprocessingEntityCategoryCounts];
  languageModelInterpolationWeights2 = [equalCopy preprocessingEntityCategoryCounts];
  if ((languageModelInterpolationWeights != 0) == (languageModelInterpolationWeights2 == 0))
  {
    goto LABEL_30;
  }

  preprocessingEntityCategoryCounts = [(DODMLASRSchemaDODMLASRDecodingMetrics *)self preprocessingEntityCategoryCounts];
  if (preprocessingEntityCategoryCounts)
  {
    v24 = preprocessingEntityCategoryCounts;
    preprocessingEntityCategoryCounts2 = [(DODMLASRSchemaDODMLASRDecodingMetrics *)self preprocessingEntityCategoryCounts];
    preprocessingEntityCategoryCounts3 = [equalCopy preprocessingEntityCategoryCounts];
    v27 = [preprocessingEntityCategoryCounts2 isEqual:preprocessingEntityCategoryCounts3];

    if (!v27)
    {
      goto LABEL_31;
    }
  }

  else
  {
  }

  languageModelInterpolationWeights = [(DODMLASRSchemaDODMLASRDecodingMetrics *)self postprocessingEntityCategoryCounts];
  languageModelInterpolationWeights2 = [equalCopy postprocessingEntityCategoryCounts];
  if ((languageModelInterpolationWeights != 0) == (languageModelInterpolationWeights2 == 0))
  {
LABEL_30:

    goto LABEL_31;
  }

  postprocessingEntityCategoryCounts = [(DODMLASRSchemaDODMLASRDecodingMetrics *)self postprocessingEntityCategoryCounts];
  if (!postprocessingEntityCategoryCounts)
  {

LABEL_34:
    v33 = 1;
    goto LABEL_32;
  }

  v29 = postprocessingEntityCategoryCounts;
  postprocessingEntityCategoryCounts2 = [(DODMLASRSchemaDODMLASRDecodingMetrics *)self postprocessingEntityCategoryCounts];
  postprocessingEntityCategoryCounts3 = [equalCopy postprocessingEntityCategoryCounts];
  v32 = [postprocessingEntityCategoryCounts2 isEqual:postprocessingEntityCategoryCounts3];

  if (v32)
  {
    goto LABEL_34;
  }

LABEL_31:
  v33 = 0;
LABEL_32:

  return v33;
}

- (void)writeTo:(id)to
{
  v36 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (*&self->_has)
  {
    PBDataWriterWriteFloatField();
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v5 = self->_languageModelInterpolationWeights;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v29 objects:v35 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v30;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v30 != v8)
        {
          objc_enumerationMutation(v5);
        }

        PBDataWriterWriteSubmessage();
      }

      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v29 objects:v35 count:16];
    }

    while (v7);
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    PBDataWriterWriteFloatField();
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_12:
      if ((has & 8) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_12;
  }

  PBDataWriterWriteUint64Field();
  if ((*&self->_has & 8) != 0)
  {
LABEL_13:
    PBDataWriterWriteUint64Field();
  }

LABEL_14:
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v11 = self->_preprocessingEntityCategoryCounts;
  v12 = [(NSArray *)v11 countByEnumeratingWithState:&v25 objects:v34 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v26;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v26 != v14)
        {
          objc_enumerationMutation(v11);
        }

        PBDataWriterWriteSubmessage();
      }

      v13 = [(NSArray *)v11 countByEnumeratingWithState:&v25 objects:v34 count:16];
    }

    while (v13);
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v16 = self->_postprocessingEntityCategoryCounts;
  v17 = [(NSArray *)v16 countByEnumeratingWithState:&v21 objects:v33 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v22;
    do
    {
      for (k = 0; k != v18; ++k)
      {
        if (*v22 != v19)
        {
          objc_enumerationMutation(v16);
        }

        PBDataWriterWriteSubmessage();
      }

      v18 = [(NSArray *)v16 countByEnumeratingWithState:&v21 objects:v33 count:16];
    }

    while (v18);
  }
}

- (void)addPostprocessingEntityCategoryCounts:(id)counts
{
  countsCopy = counts;
  postprocessingEntityCategoryCounts = self->_postprocessingEntityCategoryCounts;
  v8 = countsCopy;
  if (!postprocessingEntityCategoryCounts)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_postprocessingEntityCategoryCounts;
    self->_postprocessingEntityCategoryCounts = array;

    countsCopy = v8;
    postprocessingEntityCategoryCounts = self->_postprocessingEntityCategoryCounts;
  }

  [(NSArray *)postprocessingEntityCategoryCounts addObject:countsCopy];
}

- (void)addPreprocessingEntityCategoryCounts:(id)counts
{
  countsCopy = counts;
  preprocessingEntityCategoryCounts = self->_preprocessingEntityCategoryCounts;
  v8 = countsCopy;
  if (!preprocessingEntityCategoryCounts)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_preprocessingEntityCategoryCounts;
    self->_preprocessingEntityCategoryCounts = array;

    countsCopy = v8;
    preprocessingEntityCategoryCounts = self->_preprocessingEntityCategoryCounts;
  }

  [(NSArray *)preprocessingEntityCategoryCounts addObject:countsCopy];
}

- (void)setHasJitLanguageModelEnrollmentDurationInMs:(BOOL)ms
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

- (void)setHasJitQueryDurationInMs:(BOOL)ms
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

- (void)setHasAverageActiveTokensPerFrame:(BOOL)frame
{
  if (frame)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)addLanguageModelInterpolationWeights:(id)weights
{
  weightsCopy = weights;
  languageModelInterpolationWeights = self->_languageModelInterpolationWeights;
  v8 = weightsCopy;
  if (!languageModelInterpolationWeights)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_languageModelInterpolationWeights;
    self->_languageModelInterpolationWeights = array;

    weightsCopy = v8;
    languageModelInterpolationWeights = self->_languageModelInterpolationWeights;
  }

  [(NSArray *)languageModelInterpolationWeights addObject:weightsCopy];
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v13.receiver = self;
  v13.super_class = DODMLASRSchemaDODMLASRDecodingMetrics;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(DODMLASRSchemaDODMLASRDecodingMetrics *)self languageModelInterpolationWeights:v13.receiver];
  v7 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:v6 underConditions:policyCopy];
  [(DODMLASRSchemaDODMLASRDecodingMetrics *)self setLanguageModelInterpolationWeights:v7];

  preprocessingEntityCategoryCounts = [(DODMLASRSchemaDODMLASRDecodingMetrics *)self preprocessingEntityCategoryCounts];
  v9 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:preprocessingEntityCategoryCounts underConditions:policyCopy];
  [(DODMLASRSchemaDODMLASRDecodingMetrics *)self setPreprocessingEntityCategoryCounts:v9];

  postprocessingEntityCategoryCounts = [(DODMLASRSchemaDODMLASRDecodingMetrics *)self postprocessingEntityCategoryCounts];
  v11 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:postprocessingEntityCategoryCounts underConditions:policyCopy];

  [(DODMLASRSchemaDODMLASRDecodingMetrics *)self setPostprocessingEntityCategoryCounts:v11];

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end