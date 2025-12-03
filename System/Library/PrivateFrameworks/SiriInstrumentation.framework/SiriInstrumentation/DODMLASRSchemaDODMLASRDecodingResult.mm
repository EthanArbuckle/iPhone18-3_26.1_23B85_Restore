@interface DODMLASRSchemaDODMLASRDecodingResult
- (BOOL)isEqual:(id)equal;
- (DODMLASRSchemaDODMLASRDecodingResult)initWithDictionary:(id)dictionary;
- (DODMLASRSchemaDODMLASRDecodingResult)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addAlignments:(id)alignments;
- (void)addEntityScoreResults:(id)results;
- (void)addTokens:(id)tokens;
- (void)addUtterances:(id)utterances;
- (void)setHasOneBestTranscriptLinkIndex:(BOOL)index;
- (void)writeTo:(id)to;
@end

@implementation DODMLASRSchemaDODMLASRDecodingResult

- (DODMLASRSchemaDODMLASRDecodingResult)initWithDictionary:(id)dictionary
{
  v75 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v70.receiver = self;
  v70.super_class = DODMLASRSchemaDODMLASRDecodingResult;
  v5 = [(DODMLASRSchemaDODMLASRDecodingResult *)&v70 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"configName"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(DODMLASRSchemaDODMLASRDecodingResult *)v5 setConfigName:v7];
    }

    v53 = v6;
    v8 = [dictionaryCopy objectForKeyedSubscript:@"tokens"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v68 = 0u;
      v69 = 0u;
      v66 = 0u;
      v67 = 0u;
      v9 = v8;
      v10 = [v9 countByEnumeratingWithState:&v66 objects:v74 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v67;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v67 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v66 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v15 = [[ASRSchemaASRToken alloc] initWithDictionary:v14];
              [(DODMLASRSchemaDODMLASRDecodingResult *)v5 addTokens:v15];
            }
          }

          v11 = [v9 countByEnumeratingWithState:&v66 objects:v74 count:16];
        }

        while (v11);
      }
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:@"utterances"];
    objc_opt_class();
    v51 = v16;
    if (objc_opt_isKindOfClass())
    {
      v64 = 0u;
      v65 = 0u;
      v62 = 0u;
      v63 = 0u;
      v17 = v16;
      v18 = [v17 countByEnumeratingWithState:&v62 objects:v73 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v63;
        do
        {
          for (j = 0; j != v19; ++j)
          {
            if (*v63 != v20)
            {
              objc_enumerationMutation(v17);
            }

            v22 = *(*(&v62 + 1) + 8 * j);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v23 = [[DODMLASRSchemaDODMLASRUtteranceInfo alloc] initWithDictionary:v22];
              [(DODMLASRSchemaDODMLASRDecodingResult *)v5 addUtterances:v23];
            }
          }

          v19 = [v17 countByEnumeratingWithState:&v62 objects:v73 count:16];
        }

        while (v19);
      }

      v16 = v51;
    }

    v24 = [dictionaryCopy objectForKeyedSubscript:@"decodingMetrics"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v25 = [[DODMLASRSchemaDODMLASRDecodingMetrics alloc] initWithDictionary:v24];
      [(DODMLASRSchemaDODMLASRDecodingResult *)v5 setDecodingMetrics:v25];
    }

    v26 = [dictionaryCopy objectForKeyedSubscript:@"decodeDurationInNs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[DODMLASRSchemaDODMLASRDecodingResult setDecodeDurationInNs:](v5, "setDecodeDurationInNs:", [v26 unsignedLongLongValue]);
    }

    v52 = v8;
    v27 = [dictionaryCopy objectForKeyedSubscript:@"alignments"];
    objc_opt_class();
    v48 = v26;
    v46 = v27;
    if (objc_opt_isKindOfClass())
    {
      v60 = 0u;
      v61 = 0u;
      v58 = 0u;
      v59 = 0u;
      v28 = v27;
      v29 = [v28 countByEnumeratingWithState:&v58 objects:v72 count:16];
      if (v29)
      {
        v30 = v29;
        v31 = *v59;
        do
        {
          for (k = 0; k != v30; ++k)
          {
            if (*v59 != v31)
            {
              objc_enumerationMutation(v28);
            }

            v33 = *(*(&v58 + 1) + 8 * k);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v34 = [[DODMLASRSchemaDODMLASRAlignmentInfo alloc] initWithDictionary:v33];
              [(DODMLASRSchemaDODMLASRDecodingResult *)v5 addAlignments:v34];
            }
          }

          v30 = [v28 countByEnumeratingWithState:&v58 objects:v72 count:16];
        }

        while (v30);
      }

      v26 = v48;
      v27 = v46;
    }

    v35 = [dictionaryCopy objectForKeyedSubscript:{@"entityScoreResults", v46, v48, v24}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v56 = 0u;
      v57 = 0u;
      v54 = 0u;
      v55 = 0u;
      v36 = v35;
      v37 = [v36 countByEnumeratingWithState:&v54 objects:v71 count:16];
      if (v37)
      {
        v38 = v37;
        v39 = *v55;
        do
        {
          for (m = 0; m != v38; ++m)
          {
            if (*v55 != v39)
            {
              objc_enumerationMutation(v36);
            }

            v41 = *(*(&v54 + 1) + 8 * m);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v42 = [[DODMLASRSchemaDODMLASREntityScoringResult alloc] initWithDictionary:v41];
              [(DODMLASRSchemaDODMLASRDecodingResult *)v5 addEntityScoreResults:v42];
            }
          }

          v38 = [v36 countByEnumeratingWithState:&v54 objects:v71 count:16];
        }

        while (v38);
      }

      v24 = v50;
      v16 = v51;
      v27 = v47;
      v26 = v49;
    }

    v43 = [dictionaryCopy objectForKeyedSubscript:@"oneBestTranscriptLinkIndex"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[DODMLASRSchemaDODMLASRDecodingResult setOneBestTranscriptLinkIndex:](v5, "setOneBestTranscriptLinkIndex:", [v43 unsignedIntValue]);
    }

    v44 = v5;
  }

  return v5;
}

- (DODMLASRSchemaDODMLASRDecodingResult)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(DODMLASRSchemaDODMLASRDecodingResult *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(DODMLASRSchemaDODMLASRDecodingResult *)self dictionaryRepresentation];
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
  v65 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v44 = dictionary;
  if ([(NSArray *)self->_alignments count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    v5 = self->_alignments;
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v57 objects:v64 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v58;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v58 != v8)
          {
            objc_enumerationMutation(v5);
          }

          dictionaryRepresentation = [*(*(&v57 + 1) + 8 * i) dictionaryRepresentation];
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

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v57 objects:v64 count:16];
      }

      while (v7);
    }

    dictionary = v44;
    [v44 setObject:array forKeyedSubscript:@"alignments"];
  }

  if (self->_configName)
  {
    configName = [(DODMLASRSchemaDODMLASRDecodingResult *)self configName];
    v13 = [configName copy];
    [dictionary setObject:v13 forKeyedSubscript:@"configName"];
  }

  if (*&self->_has)
  {
    v14 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[DODMLASRSchemaDODMLASRDecodingResult decodeDurationInNs](self, "decodeDurationInNs")}];
    [dictionary setObject:v14 forKeyedSubscript:@"decodeDurationInNs"];
  }

  if (self->_decodingMetrics)
  {
    decodingMetrics = [(DODMLASRSchemaDODMLASRDecodingResult *)self decodingMetrics];
    dictionaryRepresentation2 = [decodingMetrics dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"decodingMetrics"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"decodingMetrics"];
    }
  }

  if ([(NSArray *)self->_entityScoreResults count])
  {
    array2 = [MEMORY[0x1E695DF70] array];
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v19 = self->_entityScoreResults;
    v20 = [(NSArray *)v19 countByEnumeratingWithState:&v53 objects:v63 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v54;
      do
      {
        for (j = 0; j != v21; ++j)
        {
          if (*v54 != v22)
          {
            objc_enumerationMutation(v19);
          }

          dictionaryRepresentation3 = [*(*(&v53 + 1) + 8 * j) dictionaryRepresentation];
          if (dictionaryRepresentation3)
          {
            [array2 addObject:dictionaryRepresentation3];
          }

          else
          {
            null3 = [MEMORY[0x1E695DFB0] null];
            [array2 addObject:null3];
          }
        }

        v21 = [(NSArray *)v19 countByEnumeratingWithState:&v53 objects:v63 count:16];
      }

      while (v21);
    }

    dictionary = v44;
    [v44 setObject:array2 forKeyedSubscript:@"entityScoreResults"];
  }

  if ((*&self->_has & 2) != 0)
  {
    v26 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[DODMLASRSchemaDODMLASRDecodingResult oneBestTranscriptLinkIndex](self, "oneBestTranscriptLinkIndex")}];
    [dictionary setObject:v26 forKeyedSubscript:@"oneBestTranscriptLinkIndex"];
  }

  if ([(NSArray *)self->_tokens count])
  {
    array3 = [MEMORY[0x1E695DF70] array];
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v28 = self->_tokens;
    v29 = [(NSArray *)v28 countByEnumeratingWithState:&v49 objects:v62 count:16];
    if (v29)
    {
      v30 = v29;
      v31 = *v50;
      do
      {
        for (k = 0; k != v30; ++k)
        {
          if (*v50 != v31)
          {
            objc_enumerationMutation(v28);
          }

          dictionaryRepresentation4 = [*(*(&v49 + 1) + 8 * k) dictionaryRepresentation];
          if (dictionaryRepresentation4)
          {
            [array3 addObject:dictionaryRepresentation4];
          }

          else
          {
            null4 = [MEMORY[0x1E695DFB0] null];
            [array3 addObject:null4];
          }
        }

        v30 = [(NSArray *)v28 countByEnumeratingWithState:&v49 objects:v62 count:16];
      }

      while (v30);
    }

    dictionary = v44;
    [v44 setObject:array3 forKeyedSubscript:@"tokens"];
  }

  if ([(NSArray *)self->_utterances count])
  {
    array4 = [MEMORY[0x1E695DF70] array];
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v36 = self->_utterances;
    v37 = [(NSArray *)v36 countByEnumeratingWithState:&v45 objects:v61 count:16];
    if (v37)
    {
      v38 = v37;
      v39 = *v46;
      do
      {
        for (m = 0; m != v38; ++m)
        {
          if (*v46 != v39)
          {
            objc_enumerationMutation(v36);
          }

          dictionaryRepresentation5 = [*(*(&v45 + 1) + 8 * m) dictionaryRepresentation];
          if (dictionaryRepresentation5)
          {
            [array4 addObject:dictionaryRepresentation5];
          }

          else
          {
            null5 = [MEMORY[0x1E695DFB0] null];
            [array4 addObject:null5];
          }
        }

        v38 = [(NSArray *)v36 countByEnumeratingWithState:&v45 objects:v61 count:16];
      }

      while (v38);
    }

    dictionary = v44;
    [v44 setObject:array4 forKeyedSubscript:@"utterances"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_configName hash];
  v4 = [(NSArray *)self->_tokens hash];
  v5 = [(NSArray *)self->_utterances hash];
  v6 = [(DODMLASRSchemaDODMLASRDecodingMetrics *)self->_decodingMetrics hash];
  if (*&self->_has)
  {
    v7 = 2654435761u * self->_decodeDurationInNs;
  }

  else
  {
    v7 = 0;
  }

  v8 = [(NSArray *)self->_alignments hash];
  v9 = [(NSArray *)self->_entityScoreResults hash];
  if ((*&self->_has & 2) != 0)
  {
    v10 = 2654435761 * self->_oneBestTranscriptLinkIndex;
  }

  else
  {
    v10 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_35;
  }

  configName = [(DODMLASRSchemaDODMLASRDecodingResult *)self configName];
  configName2 = [equalCopy configName];
  if ((configName != 0) == (configName2 == 0))
  {
    goto LABEL_34;
  }

  configName3 = [(DODMLASRSchemaDODMLASRDecodingResult *)self configName];
  if (configName3)
  {
    v8 = configName3;
    configName4 = [(DODMLASRSchemaDODMLASRDecodingResult *)self configName];
    configName5 = [equalCopy configName];
    v11 = [configName4 isEqual:configName5];

    if (!v11)
    {
      goto LABEL_35;
    }
  }

  else
  {
  }

  configName = [(DODMLASRSchemaDODMLASRDecodingResult *)self tokens];
  configName2 = [equalCopy tokens];
  if ((configName != 0) == (configName2 == 0))
  {
    goto LABEL_34;
  }

  tokens = [(DODMLASRSchemaDODMLASRDecodingResult *)self tokens];
  if (tokens)
  {
    v13 = tokens;
    tokens2 = [(DODMLASRSchemaDODMLASRDecodingResult *)self tokens];
    tokens3 = [equalCopy tokens];
    v16 = [tokens2 isEqual:tokens3];

    if (!v16)
    {
      goto LABEL_35;
    }
  }

  else
  {
  }

  configName = [(DODMLASRSchemaDODMLASRDecodingResult *)self utterances];
  configName2 = [equalCopy utterances];
  if ((configName != 0) == (configName2 == 0))
  {
    goto LABEL_34;
  }

  utterances = [(DODMLASRSchemaDODMLASRDecodingResult *)self utterances];
  if (utterances)
  {
    v18 = utterances;
    utterances2 = [(DODMLASRSchemaDODMLASRDecodingResult *)self utterances];
    utterances3 = [equalCopy utterances];
    v21 = [utterances2 isEqual:utterances3];

    if (!v21)
    {
      goto LABEL_35;
    }
  }

  else
  {
  }

  configName = [(DODMLASRSchemaDODMLASRDecodingResult *)self decodingMetrics];
  configName2 = [equalCopy decodingMetrics];
  if ((configName != 0) == (configName2 == 0))
  {
    goto LABEL_34;
  }

  decodingMetrics = [(DODMLASRSchemaDODMLASRDecodingResult *)self decodingMetrics];
  if (decodingMetrics)
  {
    v23 = decodingMetrics;
    decodingMetrics2 = [(DODMLASRSchemaDODMLASRDecodingResult *)self decodingMetrics];
    decodingMetrics3 = [equalCopy decodingMetrics];
    v26 = [decodingMetrics2 isEqual:decodingMetrics3];

    if (!v26)
    {
      goto LABEL_35;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) != (equalCopy[68] & 1))
  {
    goto LABEL_35;
  }

  if (*&self->_has)
  {
    decodeDurationInNs = self->_decodeDurationInNs;
    if (decodeDurationInNs != [equalCopy decodeDurationInNs])
    {
      goto LABEL_35;
    }
  }

  configName = [(DODMLASRSchemaDODMLASRDecodingResult *)self alignments];
  configName2 = [equalCopy alignments];
  if ((configName != 0) == (configName2 == 0))
  {
    goto LABEL_34;
  }

  alignments = [(DODMLASRSchemaDODMLASRDecodingResult *)self alignments];
  if (alignments)
  {
    v29 = alignments;
    alignments2 = [(DODMLASRSchemaDODMLASRDecodingResult *)self alignments];
    alignments3 = [equalCopy alignments];
    v32 = [alignments2 isEqual:alignments3];

    if (!v32)
    {
      goto LABEL_35;
    }
  }

  else
  {
  }

  configName = [(DODMLASRSchemaDODMLASRDecodingResult *)self entityScoreResults];
  configName2 = [equalCopy entityScoreResults];
  if ((configName != 0) == (configName2 == 0))
  {
LABEL_34:

    goto LABEL_35;
  }

  entityScoreResults = [(DODMLASRSchemaDODMLASRDecodingResult *)self entityScoreResults];
  if (entityScoreResults)
  {
    v34 = entityScoreResults;
    entityScoreResults2 = [(DODMLASRSchemaDODMLASRDecodingResult *)self entityScoreResults];
    entityScoreResults3 = [equalCopy entityScoreResults];
    v37 = [entityScoreResults2 isEqual:entityScoreResults3];

    if (!v37)
    {
      goto LABEL_35;
    }
  }

  else
  {
  }

  v40 = (*&self->_has >> 1) & 1;
  if (v40 == ((equalCopy[68] >> 1) & 1))
  {
    if (!v40 || (oneBestTranscriptLinkIndex = self->_oneBestTranscriptLinkIndex, oneBestTranscriptLinkIndex == [equalCopy oneBestTranscriptLinkIndex]))
    {
      v38 = 1;
      goto LABEL_36;
    }
  }

LABEL_35:
  v38 = 0;
LABEL_36:

  return v38;
}

- (void)writeTo:(id)to
{
  v48 = *MEMORY[0x1E69E9840];
  toCopy = to;
  configName = [(DODMLASRSchemaDODMLASRDecodingResult *)self configName];

  if (configName)
  {
    PBDataWriterWriteStringField();
  }

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v6 = self->_tokens;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v40 objects:v47 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v41;
    do
    {
      v10 = 0;
      do
      {
        if (*v41 != v9)
        {
          objc_enumerationMutation(v6);
        }

        PBDataWriterWriteSubmessage();
        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v40 objects:v47 count:16];
    }

    while (v8);
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v11 = self->_utterances;
  v12 = [(NSArray *)v11 countByEnumeratingWithState:&v36 objects:v46 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v37;
    do
    {
      v15 = 0;
      do
      {
        if (*v37 != v14)
        {
          objc_enumerationMutation(v11);
        }

        PBDataWriterWriteSubmessage();
        ++v15;
      }

      while (v13 != v15);
      v13 = [(NSArray *)v11 countByEnumeratingWithState:&v36 objects:v46 count:16];
    }

    while (v13);
  }

  decodingMetrics = [(DODMLASRSchemaDODMLASRDecodingResult *)self decodingMetrics];

  if (decodingMetrics)
  {
    decodingMetrics2 = [(DODMLASRSchemaDODMLASRDecodingResult *)self decodingMetrics];
    PBDataWriterWriteSubmessage();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteUint64Field();
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v18 = self->_alignments;
  v19 = [(NSArray *)v18 countByEnumeratingWithState:&v32 objects:v45 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v33;
    do
    {
      v22 = 0;
      do
      {
        if (*v33 != v21)
        {
          objc_enumerationMutation(v18);
        }

        PBDataWriterWriteSubmessage();
        ++v22;
      }

      while (v20 != v22);
      v20 = [(NSArray *)v18 countByEnumeratingWithState:&v32 objects:v45 count:16];
    }

    while (v20);
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v23 = self->_entityScoreResults;
  v24 = [(NSArray *)v23 countByEnumeratingWithState:&v28 objects:v44 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v29;
    do
    {
      v27 = 0;
      do
      {
        if (*v29 != v26)
        {
          objc_enumerationMutation(v23);
        }

        PBDataWriterWriteSubmessage();
        ++v27;
      }

      while (v25 != v27);
      v25 = [(NSArray *)v23 countByEnumeratingWithState:&v28 objects:v44 count:16];
    }

    while (v25);
  }

  if ((*&self->_has & 2) != 0)
  {
    PBDataWriterWriteUint32Field();
  }
}

- (void)setHasOneBestTranscriptLinkIndex:(BOOL)index
{
  if (index)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)addEntityScoreResults:(id)results
{
  resultsCopy = results;
  entityScoreResults = self->_entityScoreResults;
  v8 = resultsCopy;
  if (!entityScoreResults)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_entityScoreResults;
    self->_entityScoreResults = array;

    resultsCopy = v8;
    entityScoreResults = self->_entityScoreResults;
  }

  [(NSArray *)entityScoreResults addObject:resultsCopy];
}

- (void)addAlignments:(id)alignments
{
  alignmentsCopy = alignments;
  alignments = self->_alignments;
  v8 = alignmentsCopy;
  if (!alignments)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_alignments;
    self->_alignments = array;

    alignmentsCopy = v8;
    alignments = self->_alignments;
  }

  [(NSArray *)alignments addObject:alignmentsCopy];
}

- (void)addUtterances:(id)utterances
{
  utterancesCopy = utterances;
  utterances = self->_utterances;
  v8 = utterancesCopy;
  if (!utterances)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_utterances;
    self->_utterances = array;

    utterancesCopy = v8;
    utterances = self->_utterances;
  }

  [(NSArray *)utterances addObject:utterancesCopy];
}

- (void)addTokens:(id)tokens
{
  tokensCopy = tokens;
  tokens = self->_tokens;
  v8 = tokensCopy;
  if (!tokens)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_tokens;
    self->_tokens = array;

    tokensCopy = v8;
    tokens = self->_tokens;
  }

  [(NSArray *)tokens addObject:tokensCopy];
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v18.receiver = self;
  v18.super_class = DODMLASRSchemaDODMLASRDecodingResult;
  v5 = [(SISchemaInstrumentationMessage *)&v18 applySensitiveConditionsPolicy:policyCopy];
  tokens = [(DODMLASRSchemaDODMLASRDecodingResult *)self tokens];
  v7 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:tokens underConditions:policyCopy];
  [(DODMLASRSchemaDODMLASRDecodingResult *)self setTokens:v7];

  utterances = [(DODMLASRSchemaDODMLASRDecodingResult *)self utterances];
  v9 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:utterances underConditions:policyCopy];
  [(DODMLASRSchemaDODMLASRDecodingResult *)self setUtterances:v9];

  decodingMetrics = [(DODMLASRSchemaDODMLASRDecodingResult *)self decodingMetrics];
  v11 = [decodingMetrics applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v11 suppressMessage];

  if (suppressMessage)
  {
    [(DODMLASRSchemaDODMLASRDecodingResult *)self deleteDecodingMetrics];
  }

  alignments = [(DODMLASRSchemaDODMLASRDecodingResult *)self alignments];
  v14 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:alignments underConditions:policyCopy];
  [(DODMLASRSchemaDODMLASRDecodingResult *)self setAlignments:v14];

  entityScoreResults = [(DODMLASRSchemaDODMLASRDecodingResult *)self entityScoreResults];
  v16 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:entityScoreResults underConditions:policyCopy];
  [(DODMLASRSchemaDODMLASRDecodingResult *)self setEntityScoreResults:v16];

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end