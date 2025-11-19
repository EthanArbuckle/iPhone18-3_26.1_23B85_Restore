@interface INFERENCESchemaINFERENCEEuclidDebugMetrics
- (BOOL)isEqual:(id)a3;
- (INFERENCESchemaINFERENCEEuclidDebugMetrics)initWithDictionary:(id)a3;
- (INFERENCESchemaINFERENCEEuclidDebugMetrics)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (int)euclidEntityTypeMatchedAtIndex:(unint64_t)a3;
- (int)tokenWiseAsrConfidenceAtIndex:(unint64_t)a3;
- (unint64_t)hash;
- (void)addEuclidEntityTypeMatched:(int)a3;
- (void)addMatchedTemplateIds:(id)a3;
- (void)addTokenWiseAsrConfidence:(int)a3;
- (void)setHasNumRowsVectorDb:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation INFERENCESchemaINFERENCEEuclidDebugMetrics

- (INFERENCESchemaINFERENCEEuclidDebugMetrics)initWithDictionary:(id)a3
{
  v61 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v57.receiver = self;
  v57.super_class = INFERENCESchemaINFERENCEEuclidDebugMetrics;
  v5 = [(INFERENCESchemaINFERENCEEuclidDebugMetrics *)&v57 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"templateId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(INFERENCESchemaINFERENCEEuclidDebugMetrics *)v5 setTemplateId:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"euclidScoreStatistics"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[INFERENCESchemaINFERENCEEuclidScoreStatistics alloc] initWithDictionary:v8];
      [(INFERENCESchemaINFERENCEEuclidDebugMetrics *)v5 setEuclidScoreStatistics:v9];
    }

    v42 = v8;
    v10 = [v4 objectForKeyedSubscript:@"euclidTrialParameters"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[INFERENCESchemaINFERENCEEuclidTrialParameters alloc] initWithDictionary:v10];
      [(INFERENCESchemaINFERENCEEuclidDebugMetrics *)v5 setEuclidTrialParameters:v11];
    }

    v41 = v10;
    v12 = [v4 objectForKeyedSubscript:@"euclidEntityTypeMatched"];
    objc_opt_class();
    v44 = v12;
    if (objc_opt_isKindOfClass())
    {
      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      v13 = v12;
      v14 = [v13 countByEnumeratingWithState:&v53 objects:v60 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v54;
        do
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v54 != v16)
            {
              objc_enumerationMutation(v13);
            }

            v18 = *(*(&v53 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              -[INFERENCESchemaINFERENCEEuclidDebugMetrics addEuclidEntityTypeMatched:](v5, "addEuclidEntityTypeMatched:", [v18 intValue]);
            }
          }

          v15 = [v13 countByEnumeratingWithState:&v53 objects:v60 count:16];
        }

        while (v15);
      }
    }

    v19 = [v4 objectForKeyedSubscript:@"isLmePresent"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEEuclidDebugMetrics setIsLmePresent:](v5, "setIsLmePresent:", [v19 BOOLValue]);
    }

    v20 = [v4 objectForKeyedSubscript:@"tokenWiseAsrConfidence"];
    objc_opt_class();
    v43 = v6;
    v40 = v19;
    if (objc_opt_isKindOfClass())
    {
      v51 = 0u;
      v52 = 0u;
      v49 = 0u;
      v50 = 0u;
      v21 = v20;
      v22 = v20;
      v23 = [v22 countByEnumeratingWithState:&v49 objects:v59 count:16];
      if (v23)
      {
        v24 = v23;
        v25 = *v50;
        do
        {
          for (j = 0; j != v24; ++j)
          {
            if (*v50 != v25)
            {
              objc_enumerationMutation(v22);
            }

            v27 = *(*(&v49 + 1) + 8 * j);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              -[INFERENCESchemaINFERENCEEuclidDebugMetrics addTokenWiseAsrConfidence:](v5, "addTokenWiseAsrConfidence:", [v27 intValue]);
            }
          }

          v24 = [v22 countByEnumeratingWithState:&v49 objects:v59 count:16];
        }

        while (v24);
      }

      v19 = v40;
      v20 = v21;
    }

    v28 = [v4 objectForKeyedSubscript:@"numRowsVectorDb"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEEuclidDebugMetrics setNumRowsVectorDb:](v5, "setNumRowsVectorDb:", [v28 unsignedIntValue]);
    }

    v29 = [v4 objectForKeyedSubscript:@"matchedTemplateIds"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v39 = v20;
      v47 = 0u;
      v48 = 0u;
      v45 = 0u;
      v46 = 0u;
      v30 = v29;
      v31 = [v30 countByEnumeratingWithState:&v45 objects:v58 count:16];
      if (v31)
      {
        v32 = v31;
        v33 = *v46;
        do
        {
          for (k = 0; k != v32; ++k)
          {
            if (*v46 != v33)
            {
              objc_enumerationMutation(v30);
            }

            v35 = *(*(&v45 + 1) + 8 * k);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v36 = [[SISchemaUUID alloc] initWithDictionary:v35];
              [(INFERENCESchemaINFERENCEEuclidDebugMetrics *)v5 addMatchedTemplateIds:v36];
            }
          }

          v32 = [v30 countByEnumeratingWithState:&v45 objects:v58 count:16];
        }

        while (v32);
      }

      v19 = v40;
      v20 = v39;
    }

    v37 = v5;
  }

  return v5;
}

- (INFERENCESchemaINFERENCEEuclidDebugMetrics)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(INFERENCESchemaINFERENCEEuclidDebugMetrics *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(INFERENCESchemaINFERENCEEuclidDebugMetrics *)self dictionaryRepresentation];
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
  v33 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSArray *)self->_euclidEntityTypeMatcheds count])
  {
    v4 = [(INFERENCESchemaINFERENCEEuclidDebugMetrics *)self euclidEntityTypeMatcheds];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"euclidEntityTypeMatched"];
  }

  if (self->_euclidScoreStatistics)
  {
    v6 = [(INFERENCESchemaINFERENCEEuclidDebugMetrics *)self euclidScoreStatistics];
    v7 = [v6 dictionaryRepresentation];
    if (v7)
    {
      [v3 setObject:v7 forKeyedSubscript:@"euclidScoreStatistics"];
    }

    else
    {
      v8 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v8 forKeyedSubscript:@"euclidScoreStatistics"];
    }
  }

  if (self->_euclidTrialParameters)
  {
    v9 = [(INFERENCESchemaINFERENCEEuclidDebugMetrics *)self euclidTrialParameters];
    v10 = [v9 dictionaryRepresentation];
    if (v10)
    {
      [v3 setObject:v10 forKeyedSubscript:@"euclidTrialParameters"];
    }

    else
    {
      v11 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v11 forKeyedSubscript:@"euclidTrialParameters"];
    }
  }

  if (*&self->_has)
  {
    v12 = [MEMORY[0x1E696AD98] numberWithBool:{-[INFERENCESchemaINFERENCEEuclidDebugMetrics isLmePresent](self, "isLmePresent")}];
    [v3 setObject:v12 forKeyedSubscript:@"isLmePresent"];
  }

  if ([(NSArray *)self->_matchedTemplateIds count])
  {
    v13 = [MEMORY[0x1E695DF70] array];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v14 = self->_matchedTemplateIds;
    v15 = [(NSArray *)v14 countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v29;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v29 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = [*(*(&v28 + 1) + 8 * i) dictionaryRepresentation];
          if (v19)
          {
            [v13 addObject:v19];
          }

          else
          {
            v20 = [MEMORY[0x1E695DFB0] null];
            [v13 addObject:v20];
          }
        }

        v16 = [(NSArray *)v14 countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v16);
    }

    [v3 setObject:v13 forKeyedSubscript:@"matchedTemplateIds"];
  }

  if ((*&self->_has & 2) != 0)
  {
    v21 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[INFERENCESchemaINFERENCEEuclidDebugMetrics numRowsVectorDb](self, "numRowsVectorDb")}];
    [v3 setObject:v21 forKeyedSubscript:@"numRowsVectorDb"];
  }

  if (self->_templateId)
  {
    v22 = [(INFERENCESchemaINFERENCEEuclidDebugMetrics *)self templateId];
    v23 = [v22 dictionaryRepresentation];
    if (v23)
    {
      [v3 setObject:v23 forKeyedSubscript:@"templateId"];
    }

    else
    {
      v24 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v24 forKeyedSubscript:@"templateId"];
    }
  }

  if ([(NSArray *)self->_tokenWiseAsrConfidences count])
  {
    v25 = [(INFERENCESchemaINFERENCEEuclidDebugMetrics *)self tokenWiseAsrConfidences];
    v26 = [v25 copy];
    [v3 setObject:v26 forKeyedSubscript:@"tokenWiseAsrConfidence"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(SISchemaUUID *)self->_templateId hash];
  v4 = [(INFERENCESchemaINFERENCEEuclidScoreStatistics *)self->_euclidScoreStatistics hash];
  v5 = [(INFERENCESchemaINFERENCEEuclidTrialParameters *)self->_euclidTrialParameters hash];
  v6 = [(NSArray *)self->_euclidEntityTypeMatcheds hash];
  if (*&self->_has)
  {
    v7 = 2654435761 * self->_isLmePresent;
  }

  else
  {
    v7 = 0;
  }

  v8 = [(NSArray *)self->_tokenWiseAsrConfidences hash];
  if ((*&self->_has & 2) != 0)
  {
    v9 = 2654435761 * self->_numRowsVectorDb;
  }

  else
  {
    v9 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ [(NSArray *)self->_matchedTemplateIds hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_38;
  }

  v5 = [(INFERENCESchemaINFERENCEEuclidDebugMetrics *)self templateId];
  v6 = [v4 templateId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_37;
  }

  v7 = [(INFERENCESchemaINFERENCEEuclidDebugMetrics *)self templateId];
  if (v7)
  {
    v8 = v7;
    v9 = [(INFERENCESchemaINFERENCEEuclidDebugMetrics *)self templateId];
    v10 = [v4 templateId];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_38;
    }
  }

  else
  {
  }

  v5 = [(INFERENCESchemaINFERENCEEuclidDebugMetrics *)self euclidScoreStatistics];
  v6 = [v4 euclidScoreStatistics];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_37;
  }

  v12 = [(INFERENCESchemaINFERENCEEuclidDebugMetrics *)self euclidScoreStatistics];
  if (v12)
  {
    v13 = v12;
    v14 = [(INFERENCESchemaINFERENCEEuclidDebugMetrics *)self euclidScoreStatistics];
    v15 = [v4 euclidScoreStatistics];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_38;
    }
  }

  else
  {
  }

  v5 = [(INFERENCESchemaINFERENCEEuclidDebugMetrics *)self euclidTrialParameters];
  v6 = [v4 euclidTrialParameters];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_37;
  }

  v17 = [(INFERENCESchemaINFERENCEEuclidDebugMetrics *)self euclidTrialParameters];
  if (v17)
  {
    v18 = v17;
    v19 = [(INFERENCESchemaINFERENCEEuclidDebugMetrics *)self euclidTrialParameters];
    v20 = [v4 euclidTrialParameters];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_38;
    }
  }

  else
  {
  }

  v5 = [(INFERENCESchemaINFERENCEEuclidDebugMetrics *)self euclidEntityTypeMatcheds];
  v6 = [v4 euclidEntityTypeMatcheds];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_37;
  }

  v22 = [(INFERENCESchemaINFERENCEEuclidDebugMetrics *)self euclidEntityTypeMatcheds];
  if (v22)
  {
    v23 = v22;
    v24 = [(INFERENCESchemaINFERENCEEuclidDebugMetrics *)self euclidEntityTypeMatcheds];
    v25 = [v4 euclidEntityTypeMatcheds];
    v26 = [v24 isEqual:v25];

    if (!v26)
    {
      goto LABEL_38;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) != (v4[72] & 1))
  {
    goto LABEL_38;
  }

  if (*&self->_has)
  {
    isLmePresent = self->_isLmePresent;
    if (isLmePresent != [v4 isLmePresent])
    {
      goto LABEL_38;
    }
  }

  v5 = [(INFERENCESchemaINFERENCEEuclidDebugMetrics *)self tokenWiseAsrConfidences];
  v6 = [v4 tokenWiseAsrConfidences];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_37;
  }

  v28 = [(INFERENCESchemaINFERENCEEuclidDebugMetrics *)self tokenWiseAsrConfidences];
  if (v28)
  {
    v29 = v28;
    v30 = [(INFERENCESchemaINFERENCEEuclidDebugMetrics *)self tokenWiseAsrConfidences];
    v31 = [v4 tokenWiseAsrConfidences];
    v32 = [v30 isEqual:v31];

    if (!v32)
    {
      goto LABEL_38;
    }
  }

  else
  {
  }

  v33 = (*&self->_has >> 1) & 1;
  if (v33 != ((v4[72] >> 1) & 1))
  {
    goto LABEL_38;
  }

  if (v33)
  {
    numRowsVectorDb = self->_numRowsVectorDb;
    if (numRowsVectorDb != [v4 numRowsVectorDb])
    {
      goto LABEL_38;
    }
  }

  v5 = [(INFERENCESchemaINFERENCEEuclidDebugMetrics *)self matchedTemplateIds];
  v6 = [v4 matchedTemplateIds];
  if ((v5 != 0) != (v6 == 0))
  {
    v35 = [(INFERENCESchemaINFERENCEEuclidDebugMetrics *)self matchedTemplateIds];
    if (!v35)
    {

LABEL_41:
      v40 = 1;
      goto LABEL_39;
    }

    v36 = v35;
    v37 = [(INFERENCESchemaINFERENCEEuclidDebugMetrics *)self matchedTemplateIds];
    v38 = [v4 matchedTemplateIds];
    v39 = [v37 isEqual:v38];

    if (v39)
    {
      goto LABEL_41;
    }
  }

  else
  {
LABEL_37:
  }

LABEL_38:
  v40 = 0;
LABEL_39:

  return v40;
}

- (void)writeTo:(id)a3
{
  v41 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(INFERENCESchemaINFERENCEEuclidDebugMetrics *)self templateId];

  if (v5)
  {
    v6 = [(INFERENCESchemaINFERENCEEuclidDebugMetrics *)self templateId];
    PBDataWriterWriteSubmessage();
  }

  v7 = [(INFERENCESchemaINFERENCEEuclidDebugMetrics *)self euclidScoreStatistics];

  if (v7)
  {
    v8 = [(INFERENCESchemaINFERENCEEuclidDebugMetrics *)self euclidScoreStatistics];
    PBDataWriterWriteSubmessage();
  }

  v9 = [(INFERENCESchemaINFERENCEEuclidDebugMetrics *)self euclidTrialParameters];

  if (v9)
  {
    v10 = [(INFERENCESchemaINFERENCEEuclidDebugMetrics *)self euclidTrialParameters];
    PBDataWriterWriteSubmessage();
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v11 = self->_euclidEntityTypeMatcheds;
  v12 = [(NSArray *)v11 countByEnumeratingWithState:&v34 objects:v40 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v35;
    do
    {
      v15 = 0;
      do
      {
        if (*v35 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [*(*(&v34 + 1) + 8 * v15) intValue];
        PBDataWriterWriteInt32Field();
        ++v15;
      }

      while (v13 != v15);
      v13 = [(NSArray *)v11 countByEnumeratingWithState:&v34 objects:v40 count:16];
    }

    while (v13);
  }

  if (*&self->_has)
  {
    PBDataWriterWriteBOOLField();
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v16 = self->_tokenWiseAsrConfidences;
  v17 = [(NSArray *)v16 countByEnumeratingWithState:&v30 objects:v39 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v31;
    do
    {
      v20 = 0;
      do
      {
        if (*v31 != v19)
        {
          objc_enumerationMutation(v16);
        }

        [*(*(&v30 + 1) + 8 * v20) intValue];
        PBDataWriterWriteInt32Field();
        ++v20;
      }

      while (v18 != v20);
      v18 = [(NSArray *)v16 countByEnumeratingWithState:&v30 objects:v39 count:16];
    }

    while (v18);
  }

  if ((*&self->_has & 2) != 0)
  {
    PBDataWriterWriteUint32Field();
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v21 = self->_matchedTemplateIds;
  v22 = [(NSArray *)v21 countByEnumeratingWithState:&v26 objects:v38 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v27;
    do
    {
      v25 = 0;
      do
      {
        if (*v27 != v24)
        {
          objc_enumerationMutation(v21);
        }

        PBDataWriterWriteSubmessage();
        ++v25;
      }

      while (v23 != v25);
      v23 = [(NSArray *)v21 countByEnumeratingWithState:&v26 objects:v38 count:16];
    }

    while (v23);
  }
}

- (void)addMatchedTemplateIds:(id)a3
{
  v4 = a3;
  matchedTemplateIds = self->_matchedTemplateIds;
  v8 = v4;
  if (!matchedTemplateIds)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_matchedTemplateIds;
    self->_matchedTemplateIds = v6;

    v4 = v8;
    matchedTemplateIds = self->_matchedTemplateIds;
  }

  [(NSArray *)matchedTemplateIds addObject:v4];
}

- (void)setHasNumRowsVectorDb:(BOOL)a3
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

- (int)tokenWiseAsrConfidenceAtIndex:(unint64_t)a3
{
  v3 = [(NSArray *)self->_tokenWiseAsrConfidences objectAtIndexedSubscript:a3];
  v4 = [v3 intValue];

  return v4;
}

- (void)addTokenWiseAsrConfidence:(int)a3
{
  v3 = *&a3;
  tokenWiseAsrConfidences = self->_tokenWiseAsrConfidences;
  if (!tokenWiseAsrConfidences)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_tokenWiseAsrConfidences;
    self->_tokenWiseAsrConfidences = v6;

    tokenWiseAsrConfidences = self->_tokenWiseAsrConfidences;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithInt:v3];
  [(NSArray *)tokenWiseAsrConfidences addObject:v8];
}

- (int)euclidEntityTypeMatchedAtIndex:(unint64_t)a3
{
  v3 = [(NSArray *)self->_euclidEntityTypeMatcheds objectAtIndexedSubscript:a3];
  v4 = [v3 intValue];

  return v4;
}

- (void)addEuclidEntityTypeMatched:(int)a3
{
  v3 = *&a3;
  euclidEntityTypeMatcheds = self->_euclidEntityTypeMatcheds;
  if (!euclidEntityTypeMatcheds)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_euclidEntityTypeMatcheds;
    self->_euclidEntityTypeMatcheds = v6;

    euclidEntityTypeMatcheds = self->_euclidEntityTypeMatcheds;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithInt:v3];
  [(NSArray *)euclidEntityTypeMatcheds addObject:v8];
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = INFERENCESchemaINFERENCEEuclidDebugMetrics;
  v5 = [(SISchemaInstrumentationMessage *)&v18 applySensitiveConditionsPolicy:v4];
  v6 = [(INFERENCESchemaINFERENCEEuclidDebugMetrics *)self templateId];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(INFERENCESchemaINFERENCEEuclidDebugMetrics *)self deleteTemplateId];
  }

  v9 = [(INFERENCESchemaINFERENCEEuclidDebugMetrics *)self euclidScoreStatistics];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(INFERENCESchemaINFERENCEEuclidDebugMetrics *)self deleteEuclidScoreStatistics];
  }

  v12 = [(INFERENCESchemaINFERENCEEuclidDebugMetrics *)self euclidTrialParameters];
  v13 = [v12 applySensitiveConditionsPolicy:v4];
  v14 = [v13 suppressMessage];

  if (v14)
  {
    [(INFERENCESchemaINFERENCEEuclidDebugMetrics *)self deleteEuclidTrialParameters];
  }

  v15 = [(INFERENCESchemaINFERENCEEuclidDebugMetrics *)self matchedTemplateIds];
  v16 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:v15 underConditions:v4];
  [(INFERENCESchemaINFERENCEEuclidDebugMetrics *)self setMatchedTemplateIds:v16];

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end