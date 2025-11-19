@interface QDSchemaQDEntitiesRanked
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (QDSchemaQDEntitiesRanked)initWithDictionary:(id)a3;
- (QDSchemaQDEntitiesRanked)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addRetrievedTools:(id)a3;
- (void)addSpanMatchedEntities:(id)a3;
- (void)addUtteranceContext:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation QDSchemaQDEntitiesRanked

- (QDSchemaQDEntitiesRanked)initWithDictionary:(id)a3
{
  v51 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v47.receiver = self;
  v47.super_class = QDSchemaQDEntitiesRanked;
  v5 = [(QDSchemaQDEntitiesRanked *)&v47 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"retrievedTools"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v45 = 0u;
      v46 = 0u;
      v43 = 0u;
      v44 = 0u;
      v7 = v6;
      v8 = v6;
      v9 = [v8 countByEnumeratingWithState:&v43 objects:v50 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v44;
        do
        {
          v12 = 0;
          do
          {
            if (*v44 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = *(*(&v43 + 1) + 8 * v12);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v14 = [[QDSchemaQDRetrievedTool alloc] initWithDictionary:v13];
              [(QDSchemaQDEntitiesRanked *)v5 addRetrievedTools:v14];
            }

            ++v12;
          }

          while (v10 != v12);
          v10 = [v8 countByEnumeratingWithState:&v43 objects:v50 count:16];
        }

        while (v10);
      }

      v6 = v7;
    }

    v15 = [v4 objectForKeyedSubscript:@"spanMatchedEntities"];
    objc_opt_class();
    v34 = v15;
    if (objc_opt_isKindOfClass())
    {
      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      v16 = v15;
      v17 = [v16 countByEnumeratingWithState:&v39 objects:v49 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v40;
        do
        {
          v20 = 0;
          do
          {
            if (*v40 != v19)
            {
              objc_enumerationMutation(v16);
            }

            v21 = *(*(&v39 + 1) + 8 * v20);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v22 = [[QDSchemaQDSpanMatchedEntity alloc] initWithDictionary:v21];
              [(QDSchemaQDEntitiesRanked *)v5 addSpanMatchedEntities:v22];
            }

            ++v20;
          }

          while (v18 != v20);
          v18 = [v16 countByEnumeratingWithState:&v39 objects:v49 count:16];
        }

        while (v18);
      }

      v15 = v34;
    }

    v23 = [v4 objectForKeyedSubscript:@"utteranceContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v33 = v6;
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      v24 = v23;
      v25 = [v24 countByEnumeratingWithState:&v35 objects:v48 count:16];
      if (v25)
      {
        v26 = v25;
        v27 = *v36;
        do
        {
          v28 = 0;
          do
          {
            if (*v36 != v27)
            {
              objc_enumerationMutation(v24);
            }

            v29 = *(*(&v35 + 1) + 8 * v28);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v30 = [[QDSchemaQDRetrievedContextStatement alloc] initWithDictionary:v29];
              [(QDSchemaQDEntitiesRanked *)v5 addUtteranceContext:v30];
            }

            ++v28;
          }

          while (v26 != v28);
          v26 = [v24 countByEnumeratingWithState:&v35 objects:v48 count:16];
        }

        while (v26);
      }

      v6 = v33;
      v15 = v34;
    }

    v31 = v5;
  }

  return v5;
}

- (QDSchemaQDEntitiesRanked)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(QDSchemaQDEntitiesRanked *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(QDSchemaQDEntitiesRanked *)self dictionaryRepresentation];
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
  v44 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSArray *)self->_retrievedTools count])
  {
    v4 = [MEMORY[0x1E695DF70] array];
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v5 = self->_retrievedTools;
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v37 objects:v43 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v38;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v38 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [*(*(&v37 + 1) + 8 * i) dictionaryRepresentation];
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

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v37 objects:v43 count:16];
      }

      while (v7);
    }

    [v3 setObject:v4 forKeyedSubscript:@"retrievedTools"];
  }

  if ([(NSArray *)self->_spanMatchedEntities count])
  {
    v12 = [MEMORY[0x1E695DF70] array];
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v13 = self->_spanMatchedEntities;
    v14 = [(NSArray *)v13 countByEnumeratingWithState:&v33 objects:v42 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v34;
      do
      {
        for (j = 0; j != v15; ++j)
        {
          if (*v34 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = [*(*(&v33 + 1) + 8 * j) dictionaryRepresentation];
          if (v18)
          {
            [v12 addObject:v18];
          }

          else
          {
            v19 = [MEMORY[0x1E695DFB0] null];
            [v12 addObject:v19];
          }
        }

        v15 = [(NSArray *)v13 countByEnumeratingWithState:&v33 objects:v42 count:16];
      }

      while (v15);
    }

    [v3 setObject:v12 forKeyedSubscript:@"spanMatchedEntities"];
  }

  if ([(NSArray *)self->_utteranceContexts count])
  {
    v20 = [MEMORY[0x1E695DF70] array];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v21 = self->_utteranceContexts;
    v22 = [(NSArray *)v21 countByEnumeratingWithState:&v29 objects:v41 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v30;
      do
      {
        for (k = 0; k != v23; ++k)
        {
          if (*v30 != v24)
          {
            objc_enumerationMutation(v21);
          }

          v26 = [*(*(&v29 + 1) + 8 * k) dictionaryRepresentation];
          if (v26)
          {
            [v20 addObject:v26];
          }

          else
          {
            v27 = [MEMORY[0x1E695DFB0] null];
            [v20 addObject:v27];
          }
        }

        v23 = [(NSArray *)v21 countByEnumeratingWithState:&v29 objects:v41 count:16];
      }

      while (v23);
    }

    [v3 setObject:v20 forKeyedSubscript:@"utteranceContext"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3, v29];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(NSArray *)self->_retrievedTools hash];
  v4 = [(NSArray *)self->_spanMatchedEntities hash]^ v3;
  return v4 ^ [(NSArray *)self->_utteranceContexts hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  v5 = [(QDSchemaQDEntitiesRanked *)self retrievedTools];
  v6 = [v4 retrievedTools];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_16;
  }

  v7 = [(QDSchemaQDEntitiesRanked *)self retrievedTools];
  if (v7)
  {
    v8 = v7;
    v9 = [(QDSchemaQDEntitiesRanked *)self retrievedTools];
    v10 = [v4 retrievedTools];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v5 = [(QDSchemaQDEntitiesRanked *)self spanMatchedEntities];
  v6 = [v4 spanMatchedEntities];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_16;
  }

  v12 = [(QDSchemaQDEntitiesRanked *)self spanMatchedEntities];
  if (v12)
  {
    v13 = v12;
    v14 = [(QDSchemaQDEntitiesRanked *)self spanMatchedEntities];
    v15 = [v4 spanMatchedEntities];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v5 = [(QDSchemaQDEntitiesRanked *)self utteranceContexts];
  v6 = [v4 utteranceContexts];
  if ((v5 != 0) != (v6 == 0))
  {
    v17 = [(QDSchemaQDEntitiesRanked *)self utteranceContexts];
    if (!v17)
    {

LABEL_20:
      v22 = 1;
      goto LABEL_18;
    }

    v18 = v17;
    v19 = [(QDSchemaQDEntitiesRanked *)self utteranceContexts];
    v20 = [v4 utteranceContexts];
    v21 = [v19 isEqual:v20];

    if (v21)
    {
      goto LABEL_20;
    }
  }

  else
  {
LABEL_16:
  }

LABEL_17:
  v22 = 0;
LABEL_18:

  return v22;
}

- (void)writeTo:(id)a3
{
  v35 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v5 = self->_retrievedTools;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v28 objects:v34 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v29;
    do
    {
      v9 = 0;
      do
      {
        if (*v29 != v8)
        {
          objc_enumerationMutation(v5);
        }

        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v28 objects:v34 count:16];
    }

    while (v7);
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v10 = self->_spanMatchedEntities;
  v11 = [(NSArray *)v10 countByEnumeratingWithState:&v24 objects:v33 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v25;
    do
    {
      v14 = 0;
      do
      {
        if (*v25 != v13)
        {
          objc_enumerationMutation(v10);
        }

        PBDataWriterWriteSubmessage();
        ++v14;
      }

      while (v12 != v14);
      v12 = [(NSArray *)v10 countByEnumeratingWithState:&v24 objects:v33 count:16];
    }

    while (v12);
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v15 = self->_utteranceContexts;
  v16 = [(NSArray *)v15 countByEnumeratingWithState:&v20 objects:v32 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v21;
    do
    {
      v19 = 0;
      do
      {
        if (*v21 != v18)
        {
          objc_enumerationMutation(v15);
        }

        PBDataWriterWriteSubmessage();
        ++v19;
      }

      while (v17 != v19);
      v17 = [(NSArray *)v15 countByEnumeratingWithState:&v20 objects:v32 count:16];
    }

    while (v17);
  }
}

- (void)addUtteranceContext:(id)a3
{
  v4 = a3;
  utteranceContexts = self->_utteranceContexts;
  v8 = v4;
  if (!utteranceContexts)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_utteranceContexts;
    self->_utteranceContexts = v6;

    v4 = v8;
    utteranceContexts = self->_utteranceContexts;
  }

  [(NSArray *)utteranceContexts addObject:v4];
}

- (void)addSpanMatchedEntities:(id)a3
{
  v4 = a3;
  spanMatchedEntities = self->_spanMatchedEntities;
  v8 = v4;
  if (!spanMatchedEntities)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_spanMatchedEntities;
    self->_spanMatchedEntities = v6;

    v4 = v8;
    spanMatchedEntities = self->_spanMatchedEntities;
  }

  [(NSArray *)spanMatchedEntities addObject:v4];
}

- (void)addRetrievedTools:(id)a3
{
  v4 = a3;
  retrievedTools = self->_retrievedTools;
  v8 = v4;
  if (!retrievedTools)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_retrievedTools;
    self->_retrievedTools = v6;

    v4 = v8;
    retrievedTools = self->_retrievedTools;
  }

  [(NSArray *)retrievedTools addObject:v4];
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v13.receiver = self;
  v13.super_class = QDSchemaQDEntitiesRanked;
  v4 = a3;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:v4];
  v6 = [(QDSchemaQDEntitiesRanked *)self retrievedTools:v13.receiver];
  v7 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:v6 underConditions:v4];
  [(QDSchemaQDEntitiesRanked *)self setRetrievedTools:v7];

  v8 = [(QDSchemaQDEntitiesRanked *)self spanMatchedEntities];
  v9 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:v8 underConditions:v4];
  [(QDSchemaQDEntitiesRanked *)self setSpanMatchedEntities:v9];

  v10 = [(QDSchemaQDEntitiesRanked *)self utteranceContexts];
  v11 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:v10 underConditions:v4];

  [(QDSchemaQDEntitiesRanked *)self setUtteranceContexts:v11];

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end