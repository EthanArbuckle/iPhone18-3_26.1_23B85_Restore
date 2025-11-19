@interface DODMLASRSchemaDODMLASRDecodingResult
- (BOOL)isEqual:(id)a3;
- (DODMLASRSchemaDODMLASRDecodingResult)initWithDictionary:(id)a3;
- (DODMLASRSchemaDODMLASRDecodingResult)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addAlignments:(id)a3;
- (void)addEntityScoreResults:(id)a3;
- (void)addTokens:(id)a3;
- (void)addUtterances:(id)a3;
- (void)setHasOneBestTranscriptLinkIndex:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation DODMLASRSchemaDODMLASRDecodingResult

- (DODMLASRSchemaDODMLASRDecodingResult)initWithDictionary:(id)a3
{
  v75 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v70.receiver = self;
  v70.super_class = DODMLASRSchemaDODMLASRDecodingResult;
  v5 = [(DODMLASRSchemaDODMLASRDecodingResult *)&v70 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"configName"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(DODMLASRSchemaDODMLASRDecodingResult *)v5 setConfigName:v7];
    }

    v53 = v6;
    v8 = [v4 objectForKeyedSubscript:@"tokens"];
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

    v16 = [v4 objectForKeyedSubscript:@"utterances"];
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

    v24 = [v4 objectForKeyedSubscript:@"decodingMetrics"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v25 = [[DODMLASRSchemaDODMLASRDecodingMetrics alloc] initWithDictionary:v24];
      [(DODMLASRSchemaDODMLASRDecodingResult *)v5 setDecodingMetrics:v25];
    }

    v26 = [v4 objectForKeyedSubscript:@"decodeDurationInNs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[DODMLASRSchemaDODMLASRDecodingResult setDecodeDurationInNs:](v5, "setDecodeDurationInNs:", [v26 unsignedLongLongValue]);
    }

    v52 = v8;
    v27 = [v4 objectForKeyedSubscript:@"alignments"];
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

    v35 = [v4 objectForKeyedSubscript:{@"entityScoreResults", v46, v48, v24}];
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

    v43 = [v4 objectForKeyedSubscript:@"oneBestTranscriptLinkIndex"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[DODMLASRSchemaDODMLASRDecodingResult setOneBestTranscriptLinkIndex:](v5, "setOneBestTranscriptLinkIndex:", [v43 unsignedIntValue]);
    }

    v44 = v5;
  }

  return v5;
}

- (DODMLASRSchemaDODMLASRDecodingResult)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(DODMLASRSchemaDODMLASRDecodingResult *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(DODMLASRSchemaDODMLASRDecodingResult *)self dictionaryRepresentation];
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
  v65 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v44 = v3;
  if ([(NSArray *)self->_alignments count])
  {
    v4 = [MEMORY[0x1E695DF70] array];
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

          v10 = [*(*(&v57 + 1) + 8 * i) dictionaryRepresentation];
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

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v57 objects:v64 count:16];
      }

      while (v7);
    }

    v3 = v44;
    [v44 setObject:v4 forKeyedSubscript:@"alignments"];
  }

  if (self->_configName)
  {
    v12 = [(DODMLASRSchemaDODMLASRDecodingResult *)self configName];
    v13 = [v12 copy];
    [v3 setObject:v13 forKeyedSubscript:@"configName"];
  }

  if (*&self->_has)
  {
    v14 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[DODMLASRSchemaDODMLASRDecodingResult decodeDurationInNs](self, "decodeDurationInNs")}];
    [v3 setObject:v14 forKeyedSubscript:@"decodeDurationInNs"];
  }

  if (self->_decodingMetrics)
  {
    v15 = [(DODMLASRSchemaDODMLASRDecodingResult *)self decodingMetrics];
    v16 = [v15 dictionaryRepresentation];
    if (v16)
    {
      [v3 setObject:v16 forKeyedSubscript:@"decodingMetrics"];
    }

    else
    {
      v17 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v17 forKeyedSubscript:@"decodingMetrics"];
    }
  }

  if ([(NSArray *)self->_entityScoreResults count])
  {
    v18 = [MEMORY[0x1E695DF70] array];
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

          v24 = [*(*(&v53 + 1) + 8 * j) dictionaryRepresentation];
          if (v24)
          {
            [v18 addObject:v24];
          }

          else
          {
            v25 = [MEMORY[0x1E695DFB0] null];
            [v18 addObject:v25];
          }
        }

        v21 = [(NSArray *)v19 countByEnumeratingWithState:&v53 objects:v63 count:16];
      }

      while (v21);
    }

    v3 = v44;
    [v44 setObject:v18 forKeyedSubscript:@"entityScoreResults"];
  }

  if ((*&self->_has & 2) != 0)
  {
    v26 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[DODMLASRSchemaDODMLASRDecodingResult oneBestTranscriptLinkIndex](self, "oneBestTranscriptLinkIndex")}];
    [v3 setObject:v26 forKeyedSubscript:@"oneBestTranscriptLinkIndex"];
  }

  if ([(NSArray *)self->_tokens count])
  {
    v27 = [MEMORY[0x1E695DF70] array];
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

          v33 = [*(*(&v49 + 1) + 8 * k) dictionaryRepresentation];
          if (v33)
          {
            [v27 addObject:v33];
          }

          else
          {
            v34 = [MEMORY[0x1E695DFB0] null];
            [v27 addObject:v34];
          }
        }

        v30 = [(NSArray *)v28 countByEnumeratingWithState:&v49 objects:v62 count:16];
      }

      while (v30);
    }

    v3 = v44;
    [v44 setObject:v27 forKeyedSubscript:@"tokens"];
  }

  if ([(NSArray *)self->_utterances count])
  {
    v35 = [MEMORY[0x1E695DF70] array];
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

          v41 = [*(*(&v45 + 1) + 8 * m) dictionaryRepresentation];
          if (v41)
          {
            [v35 addObject:v41];
          }

          else
          {
            v42 = [MEMORY[0x1E695DFB0] null];
            [v35 addObject:v42];
          }
        }

        v38 = [(NSArray *)v36 countByEnumeratingWithState:&v45 objects:v61 count:16];
      }

      while (v38);
    }

    v3 = v44;
    [v44 setObject:v35 forKeyedSubscript:@"utterances"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_35;
  }

  v5 = [(DODMLASRSchemaDODMLASRDecodingResult *)self configName];
  v6 = [v4 configName];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_34;
  }

  v7 = [(DODMLASRSchemaDODMLASRDecodingResult *)self configName];
  if (v7)
  {
    v8 = v7;
    v9 = [(DODMLASRSchemaDODMLASRDecodingResult *)self configName];
    v10 = [v4 configName];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_35;
    }
  }

  else
  {
  }

  v5 = [(DODMLASRSchemaDODMLASRDecodingResult *)self tokens];
  v6 = [v4 tokens];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_34;
  }

  v12 = [(DODMLASRSchemaDODMLASRDecodingResult *)self tokens];
  if (v12)
  {
    v13 = v12;
    v14 = [(DODMLASRSchemaDODMLASRDecodingResult *)self tokens];
    v15 = [v4 tokens];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_35;
    }
  }

  else
  {
  }

  v5 = [(DODMLASRSchemaDODMLASRDecodingResult *)self utterances];
  v6 = [v4 utterances];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_34;
  }

  v17 = [(DODMLASRSchemaDODMLASRDecodingResult *)self utterances];
  if (v17)
  {
    v18 = v17;
    v19 = [(DODMLASRSchemaDODMLASRDecodingResult *)self utterances];
    v20 = [v4 utterances];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_35;
    }
  }

  else
  {
  }

  v5 = [(DODMLASRSchemaDODMLASRDecodingResult *)self decodingMetrics];
  v6 = [v4 decodingMetrics];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_34;
  }

  v22 = [(DODMLASRSchemaDODMLASRDecodingResult *)self decodingMetrics];
  if (v22)
  {
    v23 = v22;
    v24 = [(DODMLASRSchemaDODMLASRDecodingResult *)self decodingMetrics];
    v25 = [v4 decodingMetrics];
    v26 = [v24 isEqual:v25];

    if (!v26)
    {
      goto LABEL_35;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) != (v4[68] & 1))
  {
    goto LABEL_35;
  }

  if (*&self->_has)
  {
    decodeDurationInNs = self->_decodeDurationInNs;
    if (decodeDurationInNs != [v4 decodeDurationInNs])
    {
      goto LABEL_35;
    }
  }

  v5 = [(DODMLASRSchemaDODMLASRDecodingResult *)self alignments];
  v6 = [v4 alignments];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_34;
  }

  v28 = [(DODMLASRSchemaDODMLASRDecodingResult *)self alignments];
  if (v28)
  {
    v29 = v28;
    v30 = [(DODMLASRSchemaDODMLASRDecodingResult *)self alignments];
    v31 = [v4 alignments];
    v32 = [v30 isEqual:v31];

    if (!v32)
    {
      goto LABEL_35;
    }
  }

  else
  {
  }

  v5 = [(DODMLASRSchemaDODMLASRDecodingResult *)self entityScoreResults];
  v6 = [v4 entityScoreResults];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_34:

    goto LABEL_35;
  }

  v33 = [(DODMLASRSchemaDODMLASRDecodingResult *)self entityScoreResults];
  if (v33)
  {
    v34 = v33;
    v35 = [(DODMLASRSchemaDODMLASRDecodingResult *)self entityScoreResults];
    v36 = [v4 entityScoreResults];
    v37 = [v35 isEqual:v36];

    if (!v37)
    {
      goto LABEL_35;
    }
  }

  else
  {
  }

  v40 = (*&self->_has >> 1) & 1;
  if (v40 == ((v4[68] >> 1) & 1))
  {
    if (!v40 || (oneBestTranscriptLinkIndex = self->_oneBestTranscriptLinkIndex, oneBestTranscriptLinkIndex == [v4 oneBestTranscriptLinkIndex]))
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

- (void)writeTo:(id)a3
{
  v48 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(DODMLASRSchemaDODMLASRDecodingResult *)self configName];

  if (v5)
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

  v16 = [(DODMLASRSchemaDODMLASRDecodingResult *)self decodingMetrics];

  if (v16)
  {
    v17 = [(DODMLASRSchemaDODMLASRDecodingResult *)self decodingMetrics];
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

- (void)setHasOneBestTranscriptLinkIndex:(BOOL)a3
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

- (void)addEntityScoreResults:(id)a3
{
  v4 = a3;
  entityScoreResults = self->_entityScoreResults;
  v8 = v4;
  if (!entityScoreResults)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_entityScoreResults;
    self->_entityScoreResults = v6;

    v4 = v8;
    entityScoreResults = self->_entityScoreResults;
  }

  [(NSArray *)entityScoreResults addObject:v4];
}

- (void)addAlignments:(id)a3
{
  v4 = a3;
  alignments = self->_alignments;
  v8 = v4;
  if (!alignments)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_alignments;
    self->_alignments = v6;

    v4 = v8;
    alignments = self->_alignments;
  }

  [(NSArray *)alignments addObject:v4];
}

- (void)addUtterances:(id)a3
{
  v4 = a3;
  utterances = self->_utterances;
  v8 = v4;
  if (!utterances)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_utterances;
    self->_utterances = v6;

    v4 = v8;
    utterances = self->_utterances;
  }

  [(NSArray *)utterances addObject:v4];
}

- (void)addTokens:(id)a3
{
  v4 = a3;
  tokens = self->_tokens;
  v8 = v4;
  if (!tokens)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_tokens;
    self->_tokens = v6;

    v4 = v8;
    tokens = self->_tokens;
  }

  [(NSArray *)tokens addObject:v4];
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = DODMLASRSchemaDODMLASRDecodingResult;
  v5 = [(SISchemaInstrumentationMessage *)&v18 applySensitiveConditionsPolicy:v4];
  v6 = [(DODMLASRSchemaDODMLASRDecodingResult *)self tokens];
  v7 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:v6 underConditions:v4];
  [(DODMLASRSchemaDODMLASRDecodingResult *)self setTokens:v7];

  v8 = [(DODMLASRSchemaDODMLASRDecodingResult *)self utterances];
  v9 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:v8 underConditions:v4];
  [(DODMLASRSchemaDODMLASRDecodingResult *)self setUtterances:v9];

  v10 = [(DODMLASRSchemaDODMLASRDecodingResult *)self decodingMetrics];
  v11 = [v10 applySensitiveConditionsPolicy:v4];
  v12 = [v11 suppressMessage];

  if (v12)
  {
    [(DODMLASRSchemaDODMLASRDecodingResult *)self deleteDecodingMetrics];
  }

  v13 = [(DODMLASRSchemaDODMLASRDecodingResult *)self alignments];
  v14 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:v13 underConditions:v4];
  [(DODMLASRSchemaDODMLASRDecodingResult *)self setAlignments:v14];

  v15 = [(DODMLASRSchemaDODMLASRDecodingResult *)self entityScoreResults];
  v16 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:v15 underConditions:v4];
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