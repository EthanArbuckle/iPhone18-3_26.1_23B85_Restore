@interface QDSchemaQDEntitiesCollected
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (QDSchemaQDEntitiesCollected)initWithDictionary:(id)a3;
- (QDSchemaQDEntitiesCollected)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addContext:(id)a3;
- (void)addRequiredContext:(id)a3;
- (void)addRetrievedTools:(id)a3;
- (void)addSpanMatchedEntities:(id)a3;
- (void)addUtteranceContext:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation QDSchemaQDEntitiesCollected

- (QDSchemaQDEntitiesCollected)initWithDictionary:(id)a3
{
  v78 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v72.receiver = self;
  v72.super_class = QDSchemaQDEntitiesCollected;
  v5 = [(QDSchemaQDEntitiesCollected *)&v72 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"retrievedTools"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v70 = 0u;
      v71 = 0u;
      v68 = 0u;
      v69 = 0u;
      v7 = v6;
      v8 = [v7 countByEnumeratingWithState:&v68 objects:v77 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v69;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v69 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v68 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v13 = [[SISchemaUUID alloc] initWithDictionary:v12];
              [(QDSchemaQDEntitiesCollected *)v5 addRetrievedTools:v13];
            }
          }

          v9 = [v7 countByEnumeratingWithState:&v68 objects:v77 count:16];
        }

        while (v9);
      }
    }

    v14 = [v4 objectForKeyedSubscript:@"spanMatchedEntities"];
    objc_opt_class();
    v51 = v14;
    if (objc_opt_isKindOfClass())
    {
      v66 = 0u;
      v67 = 0u;
      v64 = 0u;
      v65 = 0u;
      v15 = v14;
      v16 = [v15 countByEnumeratingWithState:&v64 objects:v76 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v65;
        do
        {
          for (j = 0; j != v17; ++j)
          {
            if (*v65 != v18)
            {
              objc_enumerationMutation(v15);
            }

            v20 = *(*(&v64 + 1) + 8 * j);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v21 = [[SISchemaUUID alloc] initWithDictionary:v20];
              [(QDSchemaQDEntitiesCollected *)v5 addSpanMatchedEntities:v21];
            }
          }

          v17 = [v15 countByEnumeratingWithState:&v64 objects:v76 count:16];
        }

        while (v17);
      }
    }

    v22 = [v4 objectForKeyedSubscript:@"utteranceContext"];
    objc_opt_class();
    v50 = v22;
    if (objc_opt_isKindOfClass())
    {
      v62 = 0u;
      v63 = 0u;
      v60 = 0u;
      v61 = 0u;
      v23 = v22;
      v24 = [v23 countByEnumeratingWithState:&v60 objects:v75 count:16];
      if (v24)
      {
        v25 = v24;
        v26 = *v61;
        do
        {
          for (k = 0; k != v25; ++k)
          {
            if (*v61 != v26)
            {
              objc_enumerationMutation(v23);
            }

            v28 = *(*(&v60 + 1) + 8 * k);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v29 = [[SISchemaUUID alloc] initWithDictionary:v28];
              [(QDSchemaQDEntitiesCollected *)v5 addUtteranceContext:v29];
            }
          }

          v25 = [v23 countByEnumeratingWithState:&v60 objects:v75 count:16];
        }

        while (v25);
      }
    }

    v30 = [v4 objectForKeyedSubscript:@"requiredContext"];
    objc_opt_class();
    v49 = v6;
    if (objc_opt_isKindOfClass())
    {
      v58 = 0u;
      v59 = 0u;
      v56 = 0u;
      v57 = 0u;
      v31 = v30;
      v32 = [v31 countByEnumeratingWithState:&v56 objects:v74 count:16];
      if (v32)
      {
        v33 = v32;
        v34 = *v57;
        do
        {
          for (m = 0; m != v33; ++m)
          {
            if (*v57 != v34)
            {
              objc_enumerationMutation(v31);
            }

            v36 = *(*(&v56 + 1) + 8 * m);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v37 = [[QDSchemaQDRetrievedContextStatement alloc] initWithDictionary:v36];
              [(QDSchemaQDEntitiesCollected *)v5 addRequiredContext:v37];
            }
          }

          v33 = [v31 countByEnumeratingWithState:&v56 objects:v74 count:16];
        }

        while (v33);
      }
    }

    v38 = [v4 objectForKeyedSubscript:@"context"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v48 = v4;
      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v53 = 0u;
      v39 = v38;
      v40 = [v39 countByEnumeratingWithState:&v52 objects:v73 count:16];
      if (v40)
      {
        v41 = v40;
        v42 = *v53;
        do
        {
          for (n = 0; n != v41; ++n)
          {
            if (*v53 != v42)
            {
              objc_enumerationMutation(v39);
            }

            v44 = *(*(&v52 + 1) + 8 * n);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v45 = [[QDSchemaQDRetrievedContextStatement alloc] initWithDictionary:v44];
              [(QDSchemaQDEntitiesCollected *)v5 addContext:v45];
            }
          }

          v41 = [v39 countByEnumeratingWithState:&v52 objects:v73 count:16];
        }

        while (v41);
      }

      v4 = v48;
      v6 = v49;
    }

    v46 = v5;
  }

  return v5;
}

- (QDSchemaQDEntitiesCollected)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(QDSchemaQDEntitiesCollected *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(QDSchemaQDEntitiesCollected *)self dictionaryRepresentation];
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
  v70 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSArray *)self->_contexts count])
  {
    v4 = [MEMORY[0x1E695DF70] array];
    v61 = 0u;
    v62 = 0u;
    v63 = 0u;
    v64 = 0u;
    v5 = self->_contexts;
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v61 objects:v69 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v62;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v62 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [*(*(&v61 + 1) + 8 * i) dictionaryRepresentation];
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

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v61 objects:v69 count:16];
      }

      while (v7);
    }

    [v3 setObject:v4 forKeyedSubscript:@"context"];
  }

  if ([(NSArray *)self->_requiredContexts count])
  {
    v12 = [MEMORY[0x1E695DF70] array];
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    v13 = self->_requiredContexts;
    v14 = [(NSArray *)v13 countByEnumeratingWithState:&v57 objects:v68 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v58;
      do
      {
        for (j = 0; j != v15; ++j)
        {
          if (*v58 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = [*(*(&v57 + 1) + 8 * j) dictionaryRepresentation];
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

        v15 = [(NSArray *)v13 countByEnumeratingWithState:&v57 objects:v68 count:16];
      }

      while (v15);
    }

    [v3 setObject:v12 forKeyedSubscript:@"requiredContext"];
  }

  if ([(NSArray *)self->_retrievedTools count])
  {
    v20 = [MEMORY[0x1E695DF70] array];
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v21 = self->_retrievedTools;
    v22 = [(NSArray *)v21 countByEnumeratingWithState:&v53 objects:v67 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v54;
      do
      {
        for (k = 0; k != v23; ++k)
        {
          if (*v54 != v24)
          {
            objc_enumerationMutation(v21);
          }

          v26 = [*(*(&v53 + 1) + 8 * k) dictionaryRepresentation];
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

        v23 = [(NSArray *)v21 countByEnumeratingWithState:&v53 objects:v67 count:16];
      }

      while (v23);
    }

    [v3 setObject:v20 forKeyedSubscript:@"retrievedTools"];
  }

  if ([(NSArray *)self->_spanMatchedEntities count])
  {
    v28 = [MEMORY[0x1E695DF70] array];
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v29 = self->_spanMatchedEntities;
    v30 = [(NSArray *)v29 countByEnumeratingWithState:&v49 objects:v66 count:16];
    if (v30)
    {
      v31 = v30;
      v32 = *v50;
      do
      {
        for (m = 0; m != v31; ++m)
        {
          if (*v50 != v32)
          {
            objc_enumerationMutation(v29);
          }

          v34 = [*(*(&v49 + 1) + 8 * m) dictionaryRepresentation];
          if (v34)
          {
            [v28 addObject:v34];
          }

          else
          {
            v35 = [MEMORY[0x1E695DFB0] null];
            [v28 addObject:v35];
          }
        }

        v31 = [(NSArray *)v29 countByEnumeratingWithState:&v49 objects:v66 count:16];
      }

      while (v31);
    }

    [v3 setObject:v28 forKeyedSubscript:@"spanMatchedEntities"];
  }

  if ([(NSArray *)self->_utteranceContexts count])
  {
    v36 = [MEMORY[0x1E695DF70] array];
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v37 = self->_utteranceContexts;
    v38 = [(NSArray *)v37 countByEnumeratingWithState:&v45 objects:v65 count:16];
    if (v38)
    {
      v39 = v38;
      v40 = *v46;
      do
      {
        for (n = 0; n != v39; ++n)
        {
          if (*v46 != v40)
          {
            objc_enumerationMutation(v37);
          }

          v42 = [*(*(&v45 + 1) + 8 * n) dictionaryRepresentation];
          if (v42)
          {
            [v36 addObject:v42];
          }

          else
          {
            v43 = [MEMORY[0x1E695DFB0] null];
            [v36 addObject:v43];
          }
        }

        v39 = [(NSArray *)v37 countByEnumeratingWithState:&v45 objects:v65 count:16];
      }

      while (v39);
    }

    [v3 setObject:v36 forKeyedSubscript:@"utteranceContext"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3, v45];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(NSArray *)self->_retrievedTools hash];
  v4 = [(NSArray *)self->_spanMatchedEntities hash]^ v3;
  v5 = [(NSArray *)self->_utteranceContexts hash];
  v6 = v4 ^ v5 ^ [(NSArray *)self->_requiredContexts hash];
  return v6 ^ [(NSArray *)self->_contexts hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_27;
  }

  v5 = [(QDSchemaQDEntitiesCollected *)self retrievedTools];
  v6 = [v4 retrievedTools];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_26;
  }

  v7 = [(QDSchemaQDEntitiesCollected *)self retrievedTools];
  if (v7)
  {
    v8 = v7;
    v9 = [(QDSchemaQDEntitiesCollected *)self retrievedTools];
    v10 = [v4 retrievedTools];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  v5 = [(QDSchemaQDEntitiesCollected *)self spanMatchedEntities];
  v6 = [v4 spanMatchedEntities];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_26;
  }

  v12 = [(QDSchemaQDEntitiesCollected *)self spanMatchedEntities];
  if (v12)
  {
    v13 = v12;
    v14 = [(QDSchemaQDEntitiesCollected *)self spanMatchedEntities];
    v15 = [v4 spanMatchedEntities];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  v5 = [(QDSchemaQDEntitiesCollected *)self utteranceContexts];
  v6 = [v4 utteranceContexts];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_26;
  }

  v17 = [(QDSchemaQDEntitiesCollected *)self utteranceContexts];
  if (v17)
  {
    v18 = v17;
    v19 = [(QDSchemaQDEntitiesCollected *)self utteranceContexts];
    v20 = [v4 utteranceContexts];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  v5 = [(QDSchemaQDEntitiesCollected *)self requiredContexts];
  v6 = [v4 requiredContexts];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_26;
  }

  v22 = [(QDSchemaQDEntitiesCollected *)self requiredContexts];
  if (v22)
  {
    v23 = v22;
    v24 = [(QDSchemaQDEntitiesCollected *)self requiredContexts];
    v25 = [v4 requiredContexts];
    v26 = [v24 isEqual:v25];

    if (!v26)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  v5 = [(QDSchemaQDEntitiesCollected *)self contexts];
  v6 = [v4 contexts];
  if ((v5 != 0) != (v6 == 0))
  {
    v27 = [(QDSchemaQDEntitiesCollected *)self contexts];
    if (!v27)
    {

LABEL_30:
      v32 = 1;
      goto LABEL_28;
    }

    v28 = v27;
    v29 = [(QDSchemaQDEntitiesCollected *)self contexts];
    v30 = [v4 contexts];
    v31 = [v29 isEqual:v30];

    if (v31)
    {
      goto LABEL_30;
    }
  }

  else
  {
LABEL_26:
  }

LABEL_27:
  v32 = 0;
LABEL_28:

  return v32;
}

- (void)writeTo:(id)a3
{
  v55 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v5 = self->_retrievedTools;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v46 objects:v54 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v47;
    do
    {
      v9 = 0;
      do
      {
        if (*v47 != v8)
        {
          objc_enumerationMutation(v5);
        }

        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v46 objects:v54 count:16];
    }

    while (v7);
  }

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v10 = self->_spanMatchedEntities;
  v11 = [(NSArray *)v10 countByEnumeratingWithState:&v42 objects:v53 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v43;
    do
    {
      v14 = 0;
      do
      {
        if (*v43 != v13)
        {
          objc_enumerationMutation(v10);
        }

        PBDataWriterWriteSubmessage();
        ++v14;
      }

      while (v12 != v14);
      v12 = [(NSArray *)v10 countByEnumeratingWithState:&v42 objects:v53 count:16];
    }

    while (v12);
  }

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v15 = self->_utteranceContexts;
  v16 = [(NSArray *)v15 countByEnumeratingWithState:&v38 objects:v52 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v39;
    do
    {
      v19 = 0;
      do
      {
        if (*v39 != v18)
        {
          objc_enumerationMutation(v15);
        }

        PBDataWriterWriteSubmessage();
        ++v19;
      }

      while (v17 != v19);
      v17 = [(NSArray *)v15 countByEnumeratingWithState:&v38 objects:v52 count:16];
    }

    while (v17);
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v20 = self->_requiredContexts;
  v21 = [(NSArray *)v20 countByEnumeratingWithState:&v34 objects:v51 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v35;
    do
    {
      v24 = 0;
      do
      {
        if (*v35 != v23)
        {
          objc_enumerationMutation(v20);
        }

        PBDataWriterWriteSubmessage();
        ++v24;
      }

      while (v22 != v24);
      v22 = [(NSArray *)v20 countByEnumeratingWithState:&v34 objects:v51 count:16];
    }

    while (v22);
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v25 = self->_contexts;
  v26 = [(NSArray *)v25 countByEnumeratingWithState:&v30 objects:v50 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v31;
    do
    {
      v29 = 0;
      do
      {
        if (*v31 != v28)
        {
          objc_enumerationMutation(v25);
        }

        PBDataWriterWriteSubmessage();
        ++v29;
      }

      while (v27 != v29);
      v27 = [(NSArray *)v25 countByEnumeratingWithState:&v30 objects:v50 count:16];
    }

    while (v27);
  }
}

- (void)addContext:(id)a3
{
  v4 = a3;
  contexts = self->_contexts;
  v8 = v4;
  if (!contexts)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_contexts;
    self->_contexts = v6;

    v4 = v8;
    contexts = self->_contexts;
  }

  [(NSArray *)contexts addObject:v4];
}

- (void)addRequiredContext:(id)a3
{
  v4 = a3;
  requiredContexts = self->_requiredContexts;
  v8 = v4;
  if (!requiredContexts)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_requiredContexts;
    self->_requiredContexts = v6;

    v4 = v8;
    requiredContexts = self->_requiredContexts;
  }

  [(NSArray *)requiredContexts addObject:v4];
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
  v17.receiver = self;
  v17.super_class = QDSchemaQDEntitiesCollected;
  v4 = a3;
  v5 = [(SISchemaInstrumentationMessage *)&v17 applySensitiveConditionsPolicy:v4];
  v6 = [(QDSchemaQDEntitiesCollected *)self retrievedTools:v17.receiver];
  v7 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:v6 underConditions:v4];
  [(QDSchemaQDEntitiesCollected *)self setRetrievedTools:v7];

  v8 = [(QDSchemaQDEntitiesCollected *)self spanMatchedEntities];
  v9 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:v8 underConditions:v4];
  [(QDSchemaQDEntitiesCollected *)self setSpanMatchedEntities:v9];

  v10 = [(QDSchemaQDEntitiesCollected *)self utteranceContexts];
  v11 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:v10 underConditions:v4];
  [(QDSchemaQDEntitiesCollected *)self setUtteranceContexts:v11];

  v12 = [(QDSchemaQDEntitiesCollected *)self requiredContexts];
  v13 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:v12 underConditions:v4];
  [(QDSchemaQDEntitiesCollected *)self setRequiredContexts:v13];

  v14 = [(QDSchemaQDEntitiesCollected *)self contexts];
  v15 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:v14 underConditions:v4];

  [(QDSchemaQDEntitiesCollected *)self setContexts:v15];

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end