@interface NLXSchemaCDMNLContext
- (BOOL)isEqual:(id)equal;
- (NLXSchemaCDMNLContext)initWithDictionary:(id)dictionary;
- (NLXSchemaCDMNLContext)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addActiveTasks:(id)tasks;
- (void)addExecutedTasks:(id)tasks;
- (void)addSalientEntities:(id)entities;
- (void)addSystemDialogActs:(id)acts;
- (void)writeTo:(id)to;
@end

@implementation NLXSchemaCDMNLContext

- (NLXSchemaCDMNLContext)initWithDictionary:(id)dictionary
{
  v64 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v59.receiver = self;
  v59.super_class = NLXSchemaCDMNLContext;
  v5 = [(NLXSchemaCDMNLContext *)&v59 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"activeTasks"];
    objc_opt_class();
    v42 = v6;
    if (objc_opt_isKindOfClass())
    {
      v57 = 0u;
      v58 = 0u;
      v55 = 0u;
      v56 = 0u;
      v7 = v6;
      v8 = [v7 countByEnumeratingWithState:&v55 objects:v63 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v56;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v56 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v55 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v13 = [[NLXSchemaCDMTask alloc] initWithDictionary:v12];
              [(NLXSchemaCDMNLContext *)v5 addActiveTasks:v13];
            }
          }

          v9 = [v7 countByEnumeratingWithState:&v55 objects:v63 count:16];
        }

        while (v9);
      }
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"executedTasks"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v53 = 0u;
      v54 = 0u;
      v51 = 0u;
      v52 = 0u;
      v15 = v14;
      v16 = v14;
      v17 = [v16 countByEnumeratingWithState:&v51 objects:v62 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v52;
        do
        {
          for (j = 0; j != v18; ++j)
          {
            if (*v52 != v19)
            {
              objc_enumerationMutation(v16);
            }

            v21 = *(*(&v51 + 1) + 8 * j);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v22 = [[NLXSchemaCDMTask alloc] initWithDictionary:v21];
              [(NLXSchemaCDMNLContext *)v5 addExecutedTasks:v22];
            }
          }

          v18 = [v16 countByEnumeratingWithState:&v51 objects:v62 count:16];
        }

        while (v18);
      }

      v14 = v15;
    }

    v23 = [dictionaryCopy objectForKeyedSubscript:@"salientEntities"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
      v24 = v23;
      v25 = [v24 countByEnumeratingWithState:&v47 objects:v61 count:16];
      if (v25)
      {
        v26 = v25;
        v27 = *v48;
        do
        {
          for (k = 0; k != v26; ++k)
          {
            if (*v48 != v27)
            {
              objc_enumerationMutation(v24);
            }

            v29 = *(*(&v47 + 1) + 8 * k);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v30 = [[NLXSchemaCDMEntityCandidate alloc] initWithDictionary:v29];
              [(NLXSchemaCDMNLContext *)v5 addSalientEntities:v30];
            }
          }

          v26 = [v24 countByEnumeratingWithState:&v47 objects:v61 count:16];
        }

        while (v26);
      }
    }

    v31 = [dictionaryCopy objectForKeyedSubscript:@"systemDialogActs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v41 = v14;
      v45 = 0u;
      v46 = 0u;
      v43 = 0u;
      v44 = 0u;
      v32 = v31;
      v33 = [v32 countByEnumeratingWithState:&v43 objects:v60 count:16];
      if (v33)
      {
        v34 = v33;
        v35 = *v44;
        do
        {
          for (m = 0; m != v34; ++m)
          {
            if (*v44 != v35)
            {
              objc_enumerationMutation(v32);
            }

            v37 = *(*(&v43 + 1) + 8 * m);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v38 = [[NLXSchemaCDMSystemDialogAct alloc] initWithDictionary:v37];
              [(NLXSchemaCDMNLContext *)v5 addSystemDialogActs:v38];
            }
          }

          v34 = [v32 countByEnumeratingWithState:&v43 objects:v60 count:16];
        }

        while (v34);
      }

      v14 = v41;
    }

    v39 = v5;
  }

  return v5;
}

- (NLXSchemaCDMNLContext)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(NLXSchemaCDMNLContext *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(NLXSchemaCDMNLContext *)self dictionaryRepresentation];
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
  v57 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSArray *)self->_activeTasks count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v5 = self->_activeTasks;
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v49 objects:v56 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v50;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v50 != v8)
          {
            objc_enumerationMutation(v5);
          }

          dictionaryRepresentation = [*(*(&v49 + 1) + 8 * i) dictionaryRepresentation];
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

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v49 objects:v56 count:16];
      }

      while (v7);
    }

    [dictionary setObject:array forKeyedSubscript:@"activeTasks"];
  }

  if ([(NSArray *)self->_executedTasks count])
  {
    array2 = [MEMORY[0x1E695DF70] array];
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v13 = self->_executedTasks;
    v14 = [(NSArray *)v13 countByEnumeratingWithState:&v45 objects:v55 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v46;
      do
      {
        for (j = 0; j != v15; ++j)
        {
          if (*v46 != v16)
          {
            objc_enumerationMutation(v13);
          }

          dictionaryRepresentation2 = [*(*(&v45 + 1) + 8 * j) dictionaryRepresentation];
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

        v15 = [(NSArray *)v13 countByEnumeratingWithState:&v45 objects:v55 count:16];
      }

      while (v15);
    }

    [dictionary setObject:array2 forKeyedSubscript:@"executedTasks"];
  }

  if ([(NSArray *)self->_salientEntities count])
  {
    array3 = [MEMORY[0x1E695DF70] array];
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v21 = self->_salientEntities;
    v22 = [(NSArray *)v21 countByEnumeratingWithState:&v41 objects:v54 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v42;
      do
      {
        for (k = 0; k != v23; ++k)
        {
          if (*v42 != v24)
          {
            objc_enumerationMutation(v21);
          }

          dictionaryRepresentation3 = [*(*(&v41 + 1) + 8 * k) dictionaryRepresentation];
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

        v23 = [(NSArray *)v21 countByEnumeratingWithState:&v41 objects:v54 count:16];
      }

      while (v23);
    }

    [dictionary setObject:array3 forKeyedSubscript:@"salientEntities"];
  }

  if ([(NSArray *)self->_systemDialogActs count])
  {
    array4 = [MEMORY[0x1E695DF70] array];
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v29 = self->_systemDialogActs;
    v30 = [(NSArray *)v29 countByEnumeratingWithState:&v37 objects:v53 count:16];
    if (v30)
    {
      v31 = v30;
      v32 = *v38;
      do
      {
        for (m = 0; m != v31; ++m)
        {
          if (*v38 != v32)
          {
            objc_enumerationMutation(v29);
          }

          dictionaryRepresentation4 = [*(*(&v37 + 1) + 8 * m) dictionaryRepresentation];
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

        v31 = [(NSArray *)v29 countByEnumeratingWithState:&v37 objects:v53 count:16];
      }

      while (v31);
    }

    [dictionary setObject:array4 forKeyedSubscript:@"systemDialogActs"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary, v37];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSArray *)self->_activeTasks hash];
  v4 = [(NSArray *)self->_executedTasks hash]^ v3;
  v5 = [(NSArray *)self->_salientEntities hash];
  return v4 ^ v5 ^ [(NSArray *)self->_systemDialogActs hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_22;
  }

  activeTasks = [(NLXSchemaCDMNLContext *)self activeTasks];
  activeTasks2 = [equalCopy activeTasks];
  if ((activeTasks != 0) == (activeTasks2 == 0))
  {
    goto LABEL_21;
  }

  activeTasks3 = [(NLXSchemaCDMNLContext *)self activeTasks];
  if (activeTasks3)
  {
    v8 = activeTasks3;
    activeTasks4 = [(NLXSchemaCDMNLContext *)self activeTasks];
    activeTasks5 = [equalCopy activeTasks];
    v11 = [activeTasks4 isEqual:activeTasks5];

    if (!v11)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  activeTasks = [(NLXSchemaCDMNLContext *)self executedTasks];
  activeTasks2 = [equalCopy executedTasks];
  if ((activeTasks != 0) == (activeTasks2 == 0))
  {
    goto LABEL_21;
  }

  executedTasks = [(NLXSchemaCDMNLContext *)self executedTasks];
  if (executedTasks)
  {
    v13 = executedTasks;
    executedTasks2 = [(NLXSchemaCDMNLContext *)self executedTasks];
    executedTasks3 = [equalCopy executedTasks];
    v16 = [executedTasks2 isEqual:executedTasks3];

    if (!v16)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  activeTasks = [(NLXSchemaCDMNLContext *)self salientEntities];
  activeTasks2 = [equalCopy salientEntities];
  if ((activeTasks != 0) == (activeTasks2 == 0))
  {
    goto LABEL_21;
  }

  salientEntities = [(NLXSchemaCDMNLContext *)self salientEntities];
  if (salientEntities)
  {
    v18 = salientEntities;
    salientEntities2 = [(NLXSchemaCDMNLContext *)self salientEntities];
    salientEntities3 = [equalCopy salientEntities];
    v21 = [salientEntities2 isEqual:salientEntities3];

    if (!v21)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  activeTasks = [(NLXSchemaCDMNLContext *)self systemDialogActs];
  activeTasks2 = [equalCopy systemDialogActs];
  if ((activeTasks != 0) != (activeTasks2 == 0))
  {
    systemDialogActs = [(NLXSchemaCDMNLContext *)self systemDialogActs];
    if (!systemDialogActs)
    {

LABEL_25:
      v27 = 1;
      goto LABEL_23;
    }

    v23 = systemDialogActs;
    systemDialogActs2 = [(NLXSchemaCDMNLContext *)self systemDialogActs];
    systemDialogActs3 = [equalCopy systemDialogActs];
    v26 = [systemDialogActs2 isEqual:systemDialogActs3];

    if (v26)
    {
      goto LABEL_25;
    }
  }

  else
  {
LABEL_21:
  }

LABEL_22:
  v27 = 0;
LABEL_23:

  return v27;
}

- (void)writeTo:(id)to
{
  v45 = *MEMORY[0x1E69E9840];
  toCopy = to;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v5 = self->_activeTasks;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v37 objects:v44 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v38;
    do
    {
      v9 = 0;
      do
      {
        if (*v38 != v8)
        {
          objc_enumerationMutation(v5);
        }

        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v37 objects:v44 count:16];
    }

    while (v7);
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v10 = self->_executedTasks;
  v11 = [(NSArray *)v10 countByEnumeratingWithState:&v33 objects:v43 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v34;
    do
    {
      v14 = 0;
      do
      {
        if (*v34 != v13)
        {
          objc_enumerationMutation(v10);
        }

        PBDataWriterWriteSubmessage();
        ++v14;
      }

      while (v12 != v14);
      v12 = [(NSArray *)v10 countByEnumeratingWithState:&v33 objects:v43 count:16];
    }

    while (v12);
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v15 = self->_salientEntities;
  v16 = [(NSArray *)v15 countByEnumeratingWithState:&v29 objects:v42 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v30;
    do
    {
      v19 = 0;
      do
      {
        if (*v30 != v18)
        {
          objc_enumerationMutation(v15);
        }

        PBDataWriterWriteSubmessage();
        ++v19;
      }

      while (v17 != v19);
      v17 = [(NSArray *)v15 countByEnumeratingWithState:&v29 objects:v42 count:16];
    }

    while (v17);
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v20 = self->_systemDialogActs;
  v21 = [(NSArray *)v20 countByEnumeratingWithState:&v25 objects:v41 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v26;
    do
    {
      v24 = 0;
      do
      {
        if (*v26 != v23)
        {
          objc_enumerationMutation(v20);
        }

        PBDataWriterWriteSubmessage();
        ++v24;
      }

      while (v22 != v24);
      v22 = [(NSArray *)v20 countByEnumeratingWithState:&v25 objects:v41 count:16];
    }

    while (v22);
  }
}

- (void)addSystemDialogActs:(id)acts
{
  actsCopy = acts;
  systemDialogActs = self->_systemDialogActs;
  v8 = actsCopy;
  if (!systemDialogActs)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_systemDialogActs;
    self->_systemDialogActs = array;

    actsCopy = v8;
    systemDialogActs = self->_systemDialogActs;
  }

  [(NSArray *)systemDialogActs addObject:actsCopy];
}

- (void)addSalientEntities:(id)entities
{
  entitiesCopy = entities;
  salientEntities = self->_salientEntities;
  v8 = entitiesCopy;
  if (!salientEntities)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_salientEntities;
    self->_salientEntities = array;

    entitiesCopy = v8;
    salientEntities = self->_salientEntities;
  }

  [(NSArray *)salientEntities addObject:entitiesCopy];
}

- (void)addExecutedTasks:(id)tasks
{
  tasksCopy = tasks;
  executedTasks = self->_executedTasks;
  v8 = tasksCopy;
  if (!executedTasks)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_executedTasks;
    self->_executedTasks = array;

    tasksCopy = v8;
    executedTasks = self->_executedTasks;
  }

  [(NSArray *)executedTasks addObject:tasksCopy];
}

- (void)addActiveTasks:(id)tasks
{
  tasksCopy = tasks;
  activeTasks = self->_activeTasks;
  v8 = tasksCopy;
  if (!activeTasks)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_activeTasks;
    self->_activeTasks = array;

    tasksCopy = v8;
    activeTasks = self->_activeTasks;
  }

  [(NSArray *)activeTasks addObject:tasksCopy];
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v15.receiver = self;
  v15.super_class = NLXSchemaCDMNLContext;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v15 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(NLXSchemaCDMNLContext *)self activeTasks:v15.receiver];
  v7 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:v6 underConditions:policyCopy];
  [(NLXSchemaCDMNLContext *)self setActiveTasks:v7];

  executedTasks = [(NLXSchemaCDMNLContext *)self executedTasks];
  v9 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:executedTasks underConditions:policyCopy];
  [(NLXSchemaCDMNLContext *)self setExecutedTasks:v9];

  salientEntities = [(NLXSchemaCDMNLContext *)self salientEntities];
  v11 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:salientEntities underConditions:policyCopy];
  [(NLXSchemaCDMNLContext *)self setSalientEntities:v11];

  systemDialogActs = [(NLXSchemaCDMNLContext *)self systemDialogActs];
  v13 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:systemDialogActs underConditions:policyCopy];

  [(NLXSchemaCDMNLContext *)self setSystemDialogActs:v13];

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end