@interface QDSchemaQDEntitiesCollected
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (QDSchemaQDEntitiesCollected)initWithDictionary:(id)dictionary;
- (QDSchemaQDEntitiesCollected)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addContext:(id)context;
- (void)addRequiredContext:(id)context;
- (void)addRetrievedTools:(id)tools;
- (void)addSpanMatchedEntities:(id)entities;
- (void)addUtteranceContext:(id)context;
- (void)writeTo:(id)to;
@end

@implementation QDSchemaQDEntitiesCollected

- (QDSchemaQDEntitiesCollected)initWithDictionary:(id)dictionary
{
  v78 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v72.receiver = self;
  v72.super_class = QDSchemaQDEntitiesCollected;
  v5 = [(QDSchemaQDEntitiesCollected *)&v72 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"retrievedTools"];
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

    v14 = [dictionaryCopy objectForKeyedSubscript:@"spanMatchedEntities"];
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

    v22 = [dictionaryCopy objectForKeyedSubscript:@"utteranceContext"];
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

    v30 = [dictionaryCopy objectForKeyedSubscript:@"requiredContext"];
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

    v38 = [dictionaryCopy objectForKeyedSubscript:@"context"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v48 = dictionaryCopy;
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

      dictionaryCopy = v48;
      v6 = v49;
    }

    v46 = v5;
  }

  return v5;
}

- (QDSchemaQDEntitiesCollected)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(QDSchemaQDEntitiesCollected *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(QDSchemaQDEntitiesCollected *)self dictionaryRepresentation];
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
  v70 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSArray *)self->_contexts count])
  {
    array = [MEMORY[0x1E695DF70] array];
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

          dictionaryRepresentation = [*(*(&v61 + 1) + 8 * i) dictionaryRepresentation];
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

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v61 objects:v69 count:16];
      }

      while (v7);
    }

    [dictionary setObject:array forKeyedSubscript:@"context"];
  }

  if ([(NSArray *)self->_requiredContexts count])
  {
    array2 = [MEMORY[0x1E695DF70] array];
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

          dictionaryRepresentation2 = [*(*(&v57 + 1) + 8 * j) dictionaryRepresentation];
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

        v15 = [(NSArray *)v13 countByEnumeratingWithState:&v57 objects:v68 count:16];
      }

      while (v15);
    }

    [dictionary setObject:array2 forKeyedSubscript:@"requiredContext"];
  }

  if ([(NSArray *)self->_retrievedTools count])
  {
    array3 = [MEMORY[0x1E695DF70] array];
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

          dictionaryRepresentation3 = [*(*(&v53 + 1) + 8 * k) dictionaryRepresentation];
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

        v23 = [(NSArray *)v21 countByEnumeratingWithState:&v53 objects:v67 count:16];
      }

      while (v23);
    }

    [dictionary setObject:array3 forKeyedSubscript:@"retrievedTools"];
  }

  if ([(NSArray *)self->_spanMatchedEntities count])
  {
    array4 = [MEMORY[0x1E695DF70] array];
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

          dictionaryRepresentation4 = [*(*(&v49 + 1) + 8 * m) dictionaryRepresentation];
          if (dictionaryRepresentation4)
          {
            [array4 addObject:dictionaryRepresentation4];
          }

          else
          {
            null4 = [MEMORY[0x1E695DFB0] null];
            [array4 addObject:null4];
          }
        }

        v31 = [(NSArray *)v29 countByEnumeratingWithState:&v49 objects:v66 count:16];
      }

      while (v31);
    }

    [dictionary setObject:array4 forKeyedSubscript:@"spanMatchedEntities"];
  }

  if ([(NSArray *)self->_utteranceContexts count])
  {
    array5 = [MEMORY[0x1E695DF70] array];
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

          dictionaryRepresentation5 = [*(*(&v45 + 1) + 8 * n) dictionaryRepresentation];
          if (dictionaryRepresentation5)
          {
            [array5 addObject:dictionaryRepresentation5];
          }

          else
          {
            null5 = [MEMORY[0x1E695DFB0] null];
            [array5 addObject:null5];
          }
        }

        v39 = [(NSArray *)v37 countByEnumeratingWithState:&v45 objects:v65 count:16];
      }

      while (v39);
    }

    [dictionary setObject:array5 forKeyedSubscript:@"utteranceContext"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary, v45];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSArray *)self->_retrievedTools hash];
  v4 = [(NSArray *)self->_spanMatchedEntities hash]^ v3;
  v5 = [(NSArray *)self->_utteranceContexts hash];
  v6 = v4 ^ v5 ^ [(NSArray *)self->_requiredContexts hash];
  return v6 ^ [(NSArray *)self->_contexts hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_27;
  }

  retrievedTools = [(QDSchemaQDEntitiesCollected *)self retrievedTools];
  retrievedTools2 = [equalCopy retrievedTools];
  if ((retrievedTools != 0) == (retrievedTools2 == 0))
  {
    goto LABEL_26;
  }

  retrievedTools3 = [(QDSchemaQDEntitiesCollected *)self retrievedTools];
  if (retrievedTools3)
  {
    v8 = retrievedTools3;
    retrievedTools4 = [(QDSchemaQDEntitiesCollected *)self retrievedTools];
    retrievedTools5 = [equalCopy retrievedTools];
    v11 = [retrievedTools4 isEqual:retrievedTools5];

    if (!v11)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  retrievedTools = [(QDSchemaQDEntitiesCollected *)self spanMatchedEntities];
  retrievedTools2 = [equalCopy spanMatchedEntities];
  if ((retrievedTools != 0) == (retrievedTools2 == 0))
  {
    goto LABEL_26;
  }

  spanMatchedEntities = [(QDSchemaQDEntitiesCollected *)self spanMatchedEntities];
  if (spanMatchedEntities)
  {
    v13 = spanMatchedEntities;
    spanMatchedEntities2 = [(QDSchemaQDEntitiesCollected *)self spanMatchedEntities];
    spanMatchedEntities3 = [equalCopy spanMatchedEntities];
    v16 = [spanMatchedEntities2 isEqual:spanMatchedEntities3];

    if (!v16)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  retrievedTools = [(QDSchemaQDEntitiesCollected *)self utteranceContexts];
  retrievedTools2 = [equalCopy utteranceContexts];
  if ((retrievedTools != 0) == (retrievedTools2 == 0))
  {
    goto LABEL_26;
  }

  utteranceContexts = [(QDSchemaQDEntitiesCollected *)self utteranceContexts];
  if (utteranceContexts)
  {
    v18 = utteranceContexts;
    utteranceContexts2 = [(QDSchemaQDEntitiesCollected *)self utteranceContexts];
    utteranceContexts3 = [equalCopy utteranceContexts];
    v21 = [utteranceContexts2 isEqual:utteranceContexts3];

    if (!v21)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  retrievedTools = [(QDSchemaQDEntitiesCollected *)self requiredContexts];
  retrievedTools2 = [equalCopy requiredContexts];
  if ((retrievedTools != 0) == (retrievedTools2 == 0))
  {
    goto LABEL_26;
  }

  requiredContexts = [(QDSchemaQDEntitiesCollected *)self requiredContexts];
  if (requiredContexts)
  {
    v23 = requiredContexts;
    requiredContexts2 = [(QDSchemaQDEntitiesCollected *)self requiredContexts];
    requiredContexts3 = [equalCopy requiredContexts];
    v26 = [requiredContexts2 isEqual:requiredContexts3];

    if (!v26)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  retrievedTools = [(QDSchemaQDEntitiesCollected *)self contexts];
  retrievedTools2 = [equalCopy contexts];
  if ((retrievedTools != 0) != (retrievedTools2 == 0))
  {
    contexts = [(QDSchemaQDEntitiesCollected *)self contexts];
    if (!contexts)
    {

LABEL_30:
      v32 = 1;
      goto LABEL_28;
    }

    v28 = contexts;
    contexts2 = [(QDSchemaQDEntitiesCollected *)self contexts];
    contexts3 = [equalCopy contexts];
    v31 = [contexts2 isEqual:contexts3];

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

- (void)writeTo:(id)to
{
  v55 = *MEMORY[0x1E69E9840];
  toCopy = to;
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

- (void)addContext:(id)context
{
  contextCopy = context;
  contexts = self->_contexts;
  v8 = contextCopy;
  if (!contexts)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_contexts;
    self->_contexts = array;

    contextCopy = v8;
    contexts = self->_contexts;
  }

  [(NSArray *)contexts addObject:contextCopy];
}

- (void)addRequiredContext:(id)context
{
  contextCopy = context;
  requiredContexts = self->_requiredContexts;
  v8 = contextCopy;
  if (!requiredContexts)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_requiredContexts;
    self->_requiredContexts = array;

    contextCopy = v8;
    requiredContexts = self->_requiredContexts;
  }

  [(NSArray *)requiredContexts addObject:contextCopy];
}

- (void)addUtteranceContext:(id)context
{
  contextCopy = context;
  utteranceContexts = self->_utteranceContexts;
  v8 = contextCopy;
  if (!utteranceContexts)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_utteranceContexts;
    self->_utteranceContexts = array;

    contextCopy = v8;
    utteranceContexts = self->_utteranceContexts;
  }

  [(NSArray *)utteranceContexts addObject:contextCopy];
}

- (void)addSpanMatchedEntities:(id)entities
{
  entitiesCopy = entities;
  spanMatchedEntities = self->_spanMatchedEntities;
  v8 = entitiesCopy;
  if (!spanMatchedEntities)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_spanMatchedEntities;
    self->_spanMatchedEntities = array;

    entitiesCopy = v8;
    spanMatchedEntities = self->_spanMatchedEntities;
  }

  [(NSArray *)spanMatchedEntities addObject:entitiesCopy];
}

- (void)addRetrievedTools:(id)tools
{
  toolsCopy = tools;
  retrievedTools = self->_retrievedTools;
  v8 = toolsCopy;
  if (!retrievedTools)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_retrievedTools;
    self->_retrievedTools = array;

    toolsCopy = v8;
    retrievedTools = self->_retrievedTools;
  }

  [(NSArray *)retrievedTools addObject:toolsCopy];
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v17.receiver = self;
  v17.super_class = QDSchemaQDEntitiesCollected;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v17 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(QDSchemaQDEntitiesCollected *)self retrievedTools:v17.receiver];
  v7 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:v6 underConditions:policyCopy];
  [(QDSchemaQDEntitiesCollected *)self setRetrievedTools:v7];

  spanMatchedEntities = [(QDSchemaQDEntitiesCollected *)self spanMatchedEntities];
  v9 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:spanMatchedEntities underConditions:policyCopy];
  [(QDSchemaQDEntitiesCollected *)self setSpanMatchedEntities:v9];

  utteranceContexts = [(QDSchemaQDEntitiesCollected *)self utteranceContexts];
  v11 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:utteranceContexts underConditions:policyCopy];
  [(QDSchemaQDEntitiesCollected *)self setUtteranceContexts:v11];

  requiredContexts = [(QDSchemaQDEntitiesCollected *)self requiredContexts];
  v13 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:requiredContexts underConditions:policyCopy];
  [(QDSchemaQDEntitiesCollected *)self setRequiredContexts:v13];

  contexts = [(QDSchemaQDEntitiesCollected *)self contexts];
  v15 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:contexts underConditions:policyCopy];

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