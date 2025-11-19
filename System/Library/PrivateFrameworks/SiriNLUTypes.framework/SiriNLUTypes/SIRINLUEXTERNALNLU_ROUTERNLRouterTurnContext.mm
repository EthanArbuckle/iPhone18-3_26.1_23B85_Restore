@interface SIRINLUEXTERNALNLU_ROUTERNLRouterTurnContext
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addActiveTasks:(id)a3;
- (void)addExecutedTasks:(id)a3;
- (void)addSalientEntities:(id)a3;
- (void)addSystemDialogActs:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation SIRINLUEXTERNALNLU_ROUTERNLRouterTurnContext

- (void)mergeFrom:(id)a3
{
  v46 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v5 = v4[1];
  v6 = [v5 countByEnumeratingWithState:&v38 objects:v45 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v39;
    do
    {
      v9 = 0;
      do
      {
        if (*v39 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(SIRINLUEXTERNALNLU_ROUTERNLRouterTurnContext *)self addActiveTasks:*(*(&v38 + 1) + 8 * v9++)];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v38 objects:v45 count:16];
    }

    while (v7);
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v10 = v4[2];
  v11 = [v10 countByEnumeratingWithState:&v34 objects:v44 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v35;
    do
    {
      v14 = 0;
      do
      {
        if (*v35 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [(SIRINLUEXTERNALNLU_ROUTERNLRouterTurnContext *)self addExecutedTasks:*(*(&v34 + 1) + 8 * v14++)];
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v34 objects:v44 count:16];
    }

    while (v12);
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v15 = v4[4];
  v16 = [v15 countByEnumeratingWithState:&v30 objects:v43 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v31;
    do
    {
      v19 = 0;
      do
      {
        if (*v31 != v18)
        {
          objc_enumerationMutation(v15);
        }

        [(SIRINLUEXTERNALNLU_ROUTERNLRouterTurnContext *)self addSystemDialogActs:*(*(&v30 + 1) + 8 * v19++)];
      }

      while (v17 != v19);
      v17 = [v15 countByEnumeratingWithState:&v30 objects:v43 count:16];
    }

    while (v17);
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v20 = v4[3];
  v21 = [v20 countByEnumeratingWithState:&v26 objects:v42 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v27;
    do
    {
      v24 = 0;
      do
      {
        if (*v27 != v23)
        {
          objc_enumerationMutation(v20);
        }

        [(SIRINLUEXTERNALNLU_ROUTERNLRouterTurnContext *)self addSalientEntities:*(*(&v26 + 1) + 8 * v24++), v26];
      }

      while (v22 != v24);
      v22 = [v20 countByEnumeratingWithState:&v26 objects:v42 count:16];
    }

    while (v22);
  }

  v25 = *MEMORY[0x1E69E9840];
}

- (unint64_t)hash
{
  v3 = [(NSMutableArray *)self->_activeTasks hash];
  v4 = [(NSMutableArray *)self->_executedTasks hash]^ v3;
  v5 = [(NSMutableArray *)self->_systemDialogActs hash];
  return v4 ^ v5 ^ [(NSMutableArray *)self->_salientEntities hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((activeTasks = self->_activeTasks, !(activeTasks | v4[1])) || -[NSMutableArray isEqual:](activeTasks, "isEqual:")) && ((executedTasks = self->_executedTasks, !(executedTasks | v4[2])) || -[NSMutableArray isEqual:](executedTasks, "isEqual:")) && ((systemDialogActs = self->_systemDialogActs, !(systemDialogActs | v4[4])) || -[NSMutableArray isEqual:](systemDialogActs, "isEqual:")))
  {
    salientEntities = self->_salientEntities;
    if (salientEntities | v4[3])
    {
      v9 = [(NSMutableArray *)salientEntities isEqual:?];
    }

    else
    {
      v9 = 1;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v52 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v6 = self->_activeTasks;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v44 objects:v51 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v45;
    do
    {
      v10 = 0;
      do
      {
        if (*v45 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v44 + 1) + 8 * v10) copyWithZone:a3];
        [v5 addActiveTasks:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v44 objects:v51 count:16];
    }

    while (v8);
  }

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v12 = self->_executedTasks;
  v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v40 objects:v50 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v41;
    do
    {
      v16 = 0;
      do
      {
        if (*v41 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = [*(*(&v40 + 1) + 8 * v16) copyWithZone:a3];
        [v5 addExecutedTasks:v17];

        ++v16;
      }

      while (v14 != v16);
      v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v40 objects:v50 count:16];
    }

    while (v14);
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v18 = self->_systemDialogActs;
  v19 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v36 objects:v49 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v37;
    do
    {
      v22 = 0;
      do
      {
        if (*v37 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = [*(*(&v36 + 1) + 8 * v22) copyWithZone:a3];
        [v5 addSystemDialogActs:v23];

        ++v22;
      }

      while (v20 != v22);
      v20 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v36 objects:v49 count:16];
    }

    while (v20);
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v24 = self->_salientEntities;
  v25 = [(NSMutableArray *)v24 countByEnumeratingWithState:&v32 objects:v48 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v33;
    do
    {
      v28 = 0;
      do
      {
        if (*v33 != v27)
        {
          objc_enumerationMutation(v24);
        }

        v29 = [*(*(&v32 + 1) + 8 * v28) copyWithZone:{a3, v32}];
        [v5 addSalientEntities:v29];

        ++v28;
      }

      while (v26 != v28);
      v26 = [(NSMutableArray *)v24 countByEnumeratingWithState:&v32 objects:v48 count:16];
    }

    while (v26);
  }

  v30 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)copyTo:(id)a3
{
  v20 = a3;
  if ([(SIRINLUEXTERNALNLU_ROUTERNLRouterTurnContext *)self activeTasksCount])
  {
    [v20 clearActiveTasks];
    v4 = [(SIRINLUEXTERNALNLU_ROUTERNLRouterTurnContext *)self activeTasksCount];
    if (v4)
    {
      v5 = v4;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(SIRINLUEXTERNALNLU_ROUTERNLRouterTurnContext *)self activeTasksAtIndex:i];
        [v20 addActiveTasks:v7];
      }
    }
  }

  if ([(SIRINLUEXTERNALNLU_ROUTERNLRouterTurnContext *)self executedTasksCount])
  {
    [v20 clearExecutedTasks];
    v8 = [(SIRINLUEXTERNALNLU_ROUTERNLRouterTurnContext *)self executedTasksCount];
    if (v8)
    {
      v9 = v8;
      for (j = 0; j != v9; ++j)
      {
        v11 = [(SIRINLUEXTERNALNLU_ROUTERNLRouterTurnContext *)self executedTasksAtIndex:j];
        [v20 addExecutedTasks:v11];
      }
    }
  }

  if ([(SIRINLUEXTERNALNLU_ROUTERNLRouterTurnContext *)self systemDialogActsCount])
  {
    [v20 clearSystemDialogActs];
    v12 = [(SIRINLUEXTERNALNLU_ROUTERNLRouterTurnContext *)self systemDialogActsCount];
    if (v12)
    {
      v13 = v12;
      for (k = 0; k != v13; ++k)
      {
        v15 = [(SIRINLUEXTERNALNLU_ROUTERNLRouterTurnContext *)self systemDialogActsAtIndex:k];
        [v20 addSystemDialogActs:v15];
      }
    }
  }

  if ([(SIRINLUEXTERNALNLU_ROUTERNLRouterTurnContext *)self salientEntitiesCount])
  {
    [v20 clearSalientEntities];
    v16 = [(SIRINLUEXTERNALNLU_ROUTERNLRouterTurnContext *)self salientEntitiesCount];
    if (v16)
    {
      v17 = v16;
      for (m = 0; m != v17; ++m)
      {
        v19 = [(SIRINLUEXTERNALNLU_ROUTERNLRouterTurnContext *)self salientEntitiesAtIndex:m];
        [v20 addSalientEntities:v19];
      }
    }
  }
}

- (void)writeTo:(id)a3
{
  v50 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v5 = self->_activeTasks;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v42 objects:v49 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v43;
    do
    {
      v9 = 0;
      do
      {
        if (*v43 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v42 + 1) + 8 * v9);
        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v42 objects:v49 count:16];
    }

    while (v7);
  }

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v11 = self->_executedTasks;
  v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v38 objects:v48 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v39;
    do
    {
      v15 = 0;
      do
      {
        if (*v39 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v38 + 1) + 8 * v15);
        PBDataWriterWriteSubmessage();
        ++v15;
      }

      while (v13 != v15);
      v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v38 objects:v48 count:16];
    }

    while (v13);
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v17 = self->_systemDialogActs;
  v18 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v34 objects:v47 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v35;
    do
    {
      v21 = 0;
      do
      {
        if (*v35 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v34 + 1) + 8 * v21);
        PBDataWriterWriteSubmessage();
        ++v21;
      }

      while (v19 != v21);
      v19 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v34 objects:v47 count:16];
    }

    while (v19);
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v23 = self->_salientEntities;
  v24 = [(NSMutableArray *)v23 countByEnumeratingWithState:&v30 objects:v46 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v31;
    do
    {
      v27 = 0;
      do
      {
        if (*v31 != v26)
        {
          objc_enumerationMutation(v23);
        }

        v28 = *(*(&v30 + 1) + 8 * v27);
        PBDataWriterWriteSubmessage();
        ++v27;
      }

      while (v25 != v27);
      v25 = [(NSMutableArray *)v23 countByEnumeratingWithState:&v30 objects:v46 count:16];
    }

    while (v25);
  }

  v29 = *MEMORY[0x1E69E9840];
}

- (id)dictionaryRepresentation
{
  v54 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSMutableArray *)self->_activeTasks count])
  {
    v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_activeTasks, "count")}];
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v5 = self->_activeTasks;
    v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v46 objects:v53 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v47;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v47 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [*(*(&v46 + 1) + 8 * i) dictionaryRepresentation];
          [v4 addObject:v10];
        }

        v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v46 objects:v53 count:16];
      }

      while (v7);
    }

    [v3 setObject:v4 forKey:@"active_tasks"];
  }

  if ([(NSMutableArray *)self->_executedTasks count])
  {
    v11 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_executedTasks, "count")}];
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v12 = self->_executedTasks;
    v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v42 objects:v52 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v43;
      do
      {
        for (j = 0; j != v14; ++j)
        {
          if (*v43 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = [*(*(&v42 + 1) + 8 * j) dictionaryRepresentation];
          [v11 addObject:v17];
        }

        v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v42 objects:v52 count:16];
      }

      while (v14);
    }

    [v3 setObject:v11 forKey:@"executed_tasks"];
  }

  if ([(NSMutableArray *)self->_systemDialogActs count])
  {
    v18 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_systemDialogActs, "count")}];
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v19 = self->_systemDialogActs;
    v20 = [(NSMutableArray *)v19 countByEnumeratingWithState:&v38 objects:v51 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v39;
      do
      {
        for (k = 0; k != v21; ++k)
        {
          if (*v39 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = [*(*(&v38 + 1) + 8 * k) dictionaryRepresentation];
          [v18 addObject:v24];
        }

        v21 = [(NSMutableArray *)v19 countByEnumeratingWithState:&v38 objects:v51 count:16];
      }

      while (v21);
    }

    [v3 setObject:v18 forKey:@"system_dialog_acts"];
  }

  if ([(NSMutableArray *)self->_salientEntities count])
  {
    v25 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_salientEntities, "count")}];
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v26 = self->_salientEntities;
    v27 = [(NSMutableArray *)v26 countByEnumeratingWithState:&v34 objects:v50 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v35;
      do
      {
        for (m = 0; m != v28; ++m)
        {
          if (*v35 != v29)
          {
            objc_enumerationMutation(v26);
          }

          v31 = [*(*(&v34 + 1) + 8 * m) dictionaryRepresentation];
          [v25 addObject:v31];
        }

        v28 = [(NSMutableArray *)v26 countByEnumeratingWithState:&v34 objects:v50 count:16];
      }

      while (v28);
    }

    [v3 setObject:v25 forKey:@"salient_entities"];
  }

  v32 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SIRINLUEXTERNALNLU_ROUTERNLRouterTurnContext;
  v4 = [(SIRINLUEXTERNALNLU_ROUTERNLRouterTurnContext *)&v8 description];
  v5 = [(SIRINLUEXTERNALNLU_ROUTERNLRouterTurnContext *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (void)addSalientEntities:(id)a3
{
  v4 = a3;
  salientEntities = self->_salientEntities;
  v8 = v4;
  if (!salientEntities)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_salientEntities;
    self->_salientEntities = v6;

    v4 = v8;
    salientEntities = self->_salientEntities;
  }

  [(NSMutableArray *)salientEntities addObject:v4];
}

- (void)addSystemDialogActs:(id)a3
{
  v4 = a3;
  systemDialogActs = self->_systemDialogActs;
  v8 = v4;
  if (!systemDialogActs)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_systemDialogActs;
    self->_systemDialogActs = v6;

    v4 = v8;
    systemDialogActs = self->_systemDialogActs;
  }

  [(NSMutableArray *)systemDialogActs addObject:v4];
}

- (void)addExecutedTasks:(id)a3
{
  v4 = a3;
  executedTasks = self->_executedTasks;
  v8 = v4;
  if (!executedTasks)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_executedTasks;
    self->_executedTasks = v6;

    v4 = v8;
    executedTasks = self->_executedTasks;
  }

  [(NSMutableArray *)executedTasks addObject:v4];
}

- (void)addActiveTasks:(id)a3
{
  v4 = a3;
  activeTasks = self->_activeTasks;
  v8 = v4;
  if (!activeTasks)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_activeTasks;
    self->_activeTasks = v6;

    v4 = v8;
    activeTasks = self->_activeTasks;
  }

  [(NSMutableArray *)activeTasks addObject:v4];
}

@end