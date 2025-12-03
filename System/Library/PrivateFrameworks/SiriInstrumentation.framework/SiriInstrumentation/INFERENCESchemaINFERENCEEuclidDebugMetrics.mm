@interface INFERENCESchemaINFERENCEEuclidDebugMetrics
- (BOOL)isEqual:(id)equal;
- (INFERENCESchemaINFERENCEEuclidDebugMetrics)initWithDictionary:(id)dictionary;
- (INFERENCESchemaINFERENCEEuclidDebugMetrics)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (int)euclidEntityTypeMatchedAtIndex:(unint64_t)index;
- (int)tokenWiseAsrConfidenceAtIndex:(unint64_t)index;
- (unint64_t)hash;
- (void)addEuclidEntityTypeMatched:(int)matched;
- (void)addMatchedTemplateIds:(id)ids;
- (void)addTokenWiseAsrConfidence:(int)confidence;
- (void)setHasNumRowsVectorDb:(BOOL)db;
- (void)writeTo:(id)to;
@end

@implementation INFERENCESchemaINFERENCEEuclidDebugMetrics

- (INFERENCESchemaINFERENCEEuclidDebugMetrics)initWithDictionary:(id)dictionary
{
  v61 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v57.receiver = self;
  v57.super_class = INFERENCESchemaINFERENCEEuclidDebugMetrics;
  v5 = [(INFERENCESchemaINFERENCEEuclidDebugMetrics *)&v57 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"templateId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(INFERENCESchemaINFERENCEEuclidDebugMetrics *)v5 setTemplateId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"euclidScoreStatistics"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[INFERENCESchemaINFERENCEEuclidScoreStatistics alloc] initWithDictionary:v8];
      [(INFERENCESchemaINFERENCEEuclidDebugMetrics *)v5 setEuclidScoreStatistics:v9];
    }

    v42 = v8;
    v10 = [dictionaryCopy objectForKeyedSubscript:@"euclidTrialParameters"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[INFERENCESchemaINFERENCEEuclidTrialParameters alloc] initWithDictionary:v10];
      [(INFERENCESchemaINFERENCEEuclidDebugMetrics *)v5 setEuclidTrialParameters:v11];
    }

    v41 = v10;
    v12 = [dictionaryCopy objectForKeyedSubscript:@"euclidEntityTypeMatched"];
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

    v19 = [dictionaryCopy objectForKeyedSubscript:@"isLmePresent"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEEuclidDebugMetrics setIsLmePresent:](v5, "setIsLmePresent:", [v19 BOOLValue]);
    }

    v20 = [dictionaryCopy objectForKeyedSubscript:@"tokenWiseAsrConfidence"];
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

    v28 = [dictionaryCopy objectForKeyedSubscript:@"numRowsVectorDb"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEEuclidDebugMetrics setNumRowsVectorDb:](v5, "setNumRowsVectorDb:", [v28 unsignedIntValue]);
    }

    v29 = [dictionaryCopy objectForKeyedSubscript:@"matchedTemplateIds"];
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

- (INFERENCESchemaINFERENCEEuclidDebugMetrics)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(INFERENCESchemaINFERENCEEuclidDebugMetrics *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(INFERENCESchemaINFERENCEEuclidDebugMetrics *)self dictionaryRepresentation];
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
  v33 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSArray *)self->_euclidEntityTypeMatcheds count])
  {
    euclidEntityTypeMatcheds = [(INFERENCESchemaINFERENCEEuclidDebugMetrics *)self euclidEntityTypeMatcheds];
    v5 = [euclidEntityTypeMatcheds copy];
    [dictionary setObject:v5 forKeyedSubscript:@"euclidEntityTypeMatched"];
  }

  if (self->_euclidScoreStatistics)
  {
    euclidScoreStatistics = [(INFERENCESchemaINFERENCEEuclidDebugMetrics *)self euclidScoreStatistics];
    dictionaryRepresentation = [euclidScoreStatistics dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"euclidScoreStatistics"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"euclidScoreStatistics"];
    }
  }

  if (self->_euclidTrialParameters)
  {
    euclidTrialParameters = [(INFERENCESchemaINFERENCEEuclidDebugMetrics *)self euclidTrialParameters];
    dictionaryRepresentation2 = [euclidTrialParameters dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"euclidTrialParameters"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"euclidTrialParameters"];
    }
  }

  if (*&self->_has)
  {
    v12 = [MEMORY[0x1E696AD98] numberWithBool:{-[INFERENCESchemaINFERENCEEuclidDebugMetrics isLmePresent](self, "isLmePresent")}];
    [dictionary setObject:v12 forKeyedSubscript:@"isLmePresent"];
  }

  if ([(NSArray *)self->_matchedTemplateIds count])
  {
    array = [MEMORY[0x1E695DF70] array];
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

          dictionaryRepresentation3 = [*(*(&v28 + 1) + 8 * i) dictionaryRepresentation];
          if (dictionaryRepresentation3)
          {
            [array addObject:dictionaryRepresentation3];
          }

          else
          {
            null3 = [MEMORY[0x1E695DFB0] null];
            [array addObject:null3];
          }
        }

        v16 = [(NSArray *)v14 countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v16);
    }

    [dictionary setObject:array forKeyedSubscript:@"matchedTemplateIds"];
  }

  if ((*&self->_has & 2) != 0)
  {
    v21 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[INFERENCESchemaINFERENCEEuclidDebugMetrics numRowsVectorDb](self, "numRowsVectorDb")}];
    [dictionary setObject:v21 forKeyedSubscript:@"numRowsVectorDb"];
  }

  if (self->_templateId)
  {
    templateId = [(INFERENCESchemaINFERENCEEuclidDebugMetrics *)self templateId];
    dictionaryRepresentation4 = [templateId dictionaryRepresentation];
    if (dictionaryRepresentation4)
    {
      [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"templateId"];
    }

    else
    {
      null4 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null4 forKeyedSubscript:@"templateId"];
    }
  }

  if ([(NSArray *)self->_tokenWiseAsrConfidences count])
  {
    tokenWiseAsrConfidences = [(INFERENCESchemaINFERENCEEuclidDebugMetrics *)self tokenWiseAsrConfidences];
    v26 = [tokenWiseAsrConfidences copy];
    [dictionary setObject:v26 forKeyedSubscript:@"tokenWiseAsrConfidence"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_38;
  }

  templateId = [(INFERENCESchemaINFERENCEEuclidDebugMetrics *)self templateId];
  templateId2 = [equalCopy templateId];
  if ((templateId != 0) == (templateId2 == 0))
  {
    goto LABEL_37;
  }

  templateId3 = [(INFERENCESchemaINFERENCEEuclidDebugMetrics *)self templateId];
  if (templateId3)
  {
    v8 = templateId3;
    templateId4 = [(INFERENCESchemaINFERENCEEuclidDebugMetrics *)self templateId];
    templateId5 = [equalCopy templateId];
    v11 = [templateId4 isEqual:templateId5];

    if (!v11)
    {
      goto LABEL_38;
    }
  }

  else
  {
  }

  templateId = [(INFERENCESchemaINFERENCEEuclidDebugMetrics *)self euclidScoreStatistics];
  templateId2 = [equalCopy euclidScoreStatistics];
  if ((templateId != 0) == (templateId2 == 0))
  {
    goto LABEL_37;
  }

  euclidScoreStatistics = [(INFERENCESchemaINFERENCEEuclidDebugMetrics *)self euclidScoreStatistics];
  if (euclidScoreStatistics)
  {
    v13 = euclidScoreStatistics;
    euclidScoreStatistics2 = [(INFERENCESchemaINFERENCEEuclidDebugMetrics *)self euclidScoreStatistics];
    euclidScoreStatistics3 = [equalCopy euclidScoreStatistics];
    v16 = [euclidScoreStatistics2 isEqual:euclidScoreStatistics3];

    if (!v16)
    {
      goto LABEL_38;
    }
  }

  else
  {
  }

  templateId = [(INFERENCESchemaINFERENCEEuclidDebugMetrics *)self euclidTrialParameters];
  templateId2 = [equalCopy euclidTrialParameters];
  if ((templateId != 0) == (templateId2 == 0))
  {
    goto LABEL_37;
  }

  euclidTrialParameters = [(INFERENCESchemaINFERENCEEuclidDebugMetrics *)self euclidTrialParameters];
  if (euclidTrialParameters)
  {
    v18 = euclidTrialParameters;
    euclidTrialParameters2 = [(INFERENCESchemaINFERENCEEuclidDebugMetrics *)self euclidTrialParameters];
    euclidTrialParameters3 = [equalCopy euclidTrialParameters];
    v21 = [euclidTrialParameters2 isEqual:euclidTrialParameters3];

    if (!v21)
    {
      goto LABEL_38;
    }
  }

  else
  {
  }

  templateId = [(INFERENCESchemaINFERENCEEuclidDebugMetrics *)self euclidEntityTypeMatcheds];
  templateId2 = [equalCopy euclidEntityTypeMatcheds];
  if ((templateId != 0) == (templateId2 == 0))
  {
    goto LABEL_37;
  }

  euclidEntityTypeMatcheds = [(INFERENCESchemaINFERENCEEuclidDebugMetrics *)self euclidEntityTypeMatcheds];
  if (euclidEntityTypeMatcheds)
  {
    v23 = euclidEntityTypeMatcheds;
    euclidEntityTypeMatcheds2 = [(INFERENCESchemaINFERENCEEuclidDebugMetrics *)self euclidEntityTypeMatcheds];
    euclidEntityTypeMatcheds3 = [equalCopy euclidEntityTypeMatcheds];
    v26 = [euclidEntityTypeMatcheds2 isEqual:euclidEntityTypeMatcheds3];

    if (!v26)
    {
      goto LABEL_38;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) != (equalCopy[72] & 1))
  {
    goto LABEL_38;
  }

  if (*&self->_has)
  {
    isLmePresent = self->_isLmePresent;
    if (isLmePresent != [equalCopy isLmePresent])
    {
      goto LABEL_38;
    }
  }

  templateId = [(INFERENCESchemaINFERENCEEuclidDebugMetrics *)self tokenWiseAsrConfidences];
  templateId2 = [equalCopy tokenWiseAsrConfidences];
  if ((templateId != 0) == (templateId2 == 0))
  {
    goto LABEL_37;
  }

  tokenWiseAsrConfidences = [(INFERENCESchemaINFERENCEEuclidDebugMetrics *)self tokenWiseAsrConfidences];
  if (tokenWiseAsrConfidences)
  {
    v29 = tokenWiseAsrConfidences;
    tokenWiseAsrConfidences2 = [(INFERENCESchemaINFERENCEEuclidDebugMetrics *)self tokenWiseAsrConfidences];
    tokenWiseAsrConfidences3 = [equalCopy tokenWiseAsrConfidences];
    v32 = [tokenWiseAsrConfidences2 isEqual:tokenWiseAsrConfidences3];

    if (!v32)
    {
      goto LABEL_38;
    }
  }

  else
  {
  }

  v33 = (*&self->_has >> 1) & 1;
  if (v33 != ((equalCopy[72] >> 1) & 1))
  {
    goto LABEL_38;
  }

  if (v33)
  {
    numRowsVectorDb = self->_numRowsVectorDb;
    if (numRowsVectorDb != [equalCopy numRowsVectorDb])
    {
      goto LABEL_38;
    }
  }

  templateId = [(INFERENCESchemaINFERENCEEuclidDebugMetrics *)self matchedTemplateIds];
  templateId2 = [equalCopy matchedTemplateIds];
  if ((templateId != 0) != (templateId2 == 0))
  {
    matchedTemplateIds = [(INFERENCESchemaINFERENCEEuclidDebugMetrics *)self matchedTemplateIds];
    if (!matchedTemplateIds)
    {

LABEL_41:
      v40 = 1;
      goto LABEL_39;
    }

    v36 = matchedTemplateIds;
    matchedTemplateIds2 = [(INFERENCESchemaINFERENCEEuclidDebugMetrics *)self matchedTemplateIds];
    matchedTemplateIds3 = [equalCopy matchedTemplateIds];
    v39 = [matchedTemplateIds2 isEqual:matchedTemplateIds3];

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

- (void)writeTo:(id)to
{
  v41 = *MEMORY[0x1E69E9840];
  toCopy = to;
  templateId = [(INFERENCESchemaINFERENCEEuclidDebugMetrics *)self templateId];

  if (templateId)
  {
    templateId2 = [(INFERENCESchemaINFERENCEEuclidDebugMetrics *)self templateId];
    PBDataWriterWriteSubmessage();
  }

  euclidScoreStatistics = [(INFERENCESchemaINFERENCEEuclidDebugMetrics *)self euclidScoreStatistics];

  if (euclidScoreStatistics)
  {
    euclidScoreStatistics2 = [(INFERENCESchemaINFERENCEEuclidDebugMetrics *)self euclidScoreStatistics];
    PBDataWriterWriteSubmessage();
  }

  euclidTrialParameters = [(INFERENCESchemaINFERENCEEuclidDebugMetrics *)self euclidTrialParameters];

  if (euclidTrialParameters)
  {
    euclidTrialParameters2 = [(INFERENCESchemaINFERENCEEuclidDebugMetrics *)self euclidTrialParameters];
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

- (void)addMatchedTemplateIds:(id)ids
{
  idsCopy = ids;
  matchedTemplateIds = self->_matchedTemplateIds;
  v8 = idsCopy;
  if (!matchedTemplateIds)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_matchedTemplateIds;
    self->_matchedTemplateIds = array;

    idsCopy = v8;
    matchedTemplateIds = self->_matchedTemplateIds;
  }

  [(NSArray *)matchedTemplateIds addObject:idsCopy];
}

- (void)setHasNumRowsVectorDb:(BOOL)db
{
  if (db)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (int)tokenWiseAsrConfidenceAtIndex:(unint64_t)index
{
  v3 = [(NSArray *)self->_tokenWiseAsrConfidences objectAtIndexedSubscript:index];
  intValue = [v3 intValue];

  return intValue;
}

- (void)addTokenWiseAsrConfidence:(int)confidence
{
  v3 = *&confidence;
  tokenWiseAsrConfidences = self->_tokenWiseAsrConfidences;
  if (!tokenWiseAsrConfidences)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_tokenWiseAsrConfidences;
    self->_tokenWiseAsrConfidences = array;

    tokenWiseAsrConfidences = self->_tokenWiseAsrConfidences;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithInt:v3];
  [(NSArray *)tokenWiseAsrConfidences addObject:v8];
}

- (int)euclidEntityTypeMatchedAtIndex:(unint64_t)index
{
  v3 = [(NSArray *)self->_euclidEntityTypeMatcheds objectAtIndexedSubscript:index];
  intValue = [v3 intValue];

  return intValue;
}

- (void)addEuclidEntityTypeMatched:(int)matched
{
  v3 = *&matched;
  euclidEntityTypeMatcheds = self->_euclidEntityTypeMatcheds;
  if (!euclidEntityTypeMatcheds)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_euclidEntityTypeMatcheds;
    self->_euclidEntityTypeMatcheds = array;

    euclidEntityTypeMatcheds = self->_euclidEntityTypeMatcheds;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithInt:v3];
  [(NSArray *)euclidEntityTypeMatcheds addObject:v8];
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v18.receiver = self;
  v18.super_class = INFERENCESchemaINFERENCEEuclidDebugMetrics;
  v5 = [(SISchemaInstrumentationMessage *)&v18 applySensitiveConditionsPolicy:policyCopy];
  templateId = [(INFERENCESchemaINFERENCEEuclidDebugMetrics *)self templateId];
  v7 = [templateId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(INFERENCESchemaINFERENCEEuclidDebugMetrics *)self deleteTemplateId];
  }

  euclidScoreStatistics = [(INFERENCESchemaINFERENCEEuclidDebugMetrics *)self euclidScoreStatistics];
  v10 = [euclidScoreStatistics applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(INFERENCESchemaINFERENCEEuclidDebugMetrics *)self deleteEuclidScoreStatistics];
  }

  euclidTrialParameters = [(INFERENCESchemaINFERENCEEuclidDebugMetrics *)self euclidTrialParameters];
  v13 = [euclidTrialParameters applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
  {
    [(INFERENCESchemaINFERENCEEuclidDebugMetrics *)self deleteEuclidTrialParameters];
  }

  matchedTemplateIds = [(INFERENCESchemaINFERENCEEuclidDebugMetrics *)self matchedTemplateIds];
  v16 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:matchedTemplateIds underConditions:policyCopy];
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