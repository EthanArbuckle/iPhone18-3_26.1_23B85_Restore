@interface SIRINLUEXTERNALNLContext
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

@implementation SIRINLUEXTERNALNLContext

- (void)mergeFrom:(id)a3
{
  v48 = *MEMORY[0x1E69E9840];
  v4 = a3;
  systemDialogActGroup = self->_systemDialogActGroup;
  v6 = *(v4 + 4);
  if (systemDialogActGroup)
  {
    if (v6)
    {
      [(SIRINLUEXTERNALSystemDialogActGroup *)systemDialogActGroup mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(SIRINLUEXTERNALNLContext *)self setSystemDialogActGroup:?];
  }

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v7 = *(v4 + 1);
  v8 = [v7 countByEnumeratingWithState:&v40 objects:v47 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v41;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v41 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [(SIRINLUEXTERNALNLContext *)self addActiveTasks:*(*(&v40 + 1) + 8 * i)];
      }

      v9 = [v7 countByEnumeratingWithState:&v40 objects:v47 count:16];
    }

    while (v9);
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v12 = *(v4 + 2);
  v13 = [v12 countByEnumeratingWithState:&v36 objects:v46 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v37;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v37 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [(SIRINLUEXTERNALNLContext *)self addExecutedTasks:*(*(&v36 + 1) + 8 * j)];
      }

      v14 = [v12 countByEnumeratingWithState:&v36 objects:v46 count:16];
    }

    while (v14);
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v17 = *(v4 + 3);
  v18 = [v17 countByEnumeratingWithState:&v32 objects:v45 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v33;
    do
    {
      for (k = 0; k != v19; ++k)
      {
        if (*v33 != v20)
        {
          objc_enumerationMutation(v17);
        }

        [(SIRINLUEXTERNALNLContext *)self addSalientEntities:*(*(&v32 + 1) + 8 * k)];
      }

      v19 = [v17 countByEnumeratingWithState:&v32 objects:v45 count:16];
    }

    while (v19);
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v22 = *(v4 + 5);
  v23 = [v22 countByEnumeratingWithState:&v28 objects:v44 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v29;
    do
    {
      for (m = 0; m != v24; ++m)
      {
        if (*v29 != v25)
        {
          objc_enumerationMutation(v22);
        }

        [(SIRINLUEXTERNALNLContext *)self addSystemDialogActs:*(*(&v28 + 1) + 8 * m), v28];
      }

      v24 = [v22 countByEnumeratingWithState:&v28 objects:v44 count:16];
    }

    while (v24);
  }

  v27 = *MEMORY[0x1E69E9840];
}

- (unint64_t)hash
{
  v3 = [(SIRINLUEXTERNALSystemDialogActGroup *)self->_systemDialogActGroup hash];
  v4 = [(NSMutableArray *)self->_activeTasks hash]^ v3;
  v5 = [(NSMutableArray *)self->_executedTasks hash];
  v6 = v4 ^ v5 ^ [(NSMutableArray *)self->_salientEntities hash];
  return v6 ^ [(NSMutableArray *)self->_systemDialogActs hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((systemDialogActGroup = self->_systemDialogActGroup, !(systemDialogActGroup | v4[4])) || -[SIRINLUEXTERNALSystemDialogActGroup isEqual:](systemDialogActGroup, "isEqual:")) && ((activeTasks = self->_activeTasks, !(activeTasks | v4[1])) || -[NSMutableArray isEqual:](activeTasks, "isEqual:")) && ((executedTasks = self->_executedTasks, !(executedTasks | v4[2])) || -[NSMutableArray isEqual:](executedTasks, "isEqual:")) && ((salientEntities = self->_salientEntities, !(salientEntities | v4[3])) || -[NSMutableArray isEqual:](salientEntities, "isEqual:")))
  {
    systemDialogActs = self->_systemDialogActs;
    if (systemDialogActs | v4[5])
    {
      v10 = [(NSMutableArray *)systemDialogActs isEqual:?];
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v54 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(SIRINLUEXTERNALSystemDialogActGroup *)self->_systemDialogActGroup copyWithZone:a3];
  v7 = v5[4];
  v5[4] = v6;

  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v8 = self->_activeTasks;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v46 objects:v53 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v47;
    do
    {
      v12 = 0;
      do
      {
        if (*v47 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v46 + 1) + 8 * v12) copyWithZone:a3];
        [v5 addActiveTasks:v13];

        ++v12;
      }

      while (v10 != v12);
      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v46 objects:v53 count:16];
    }

    while (v10);
  }

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v14 = self->_executedTasks;
  v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v42 objects:v52 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v43;
    do
    {
      v18 = 0;
      do
      {
        if (*v43 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = [*(*(&v42 + 1) + 8 * v18) copyWithZone:a3];
        [v5 addExecutedTasks:v19];

        ++v18;
      }

      while (v16 != v18);
      v16 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v42 objects:v52 count:16];
    }

    while (v16);
  }

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v20 = self->_salientEntities;
  v21 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v38 objects:v51 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v39;
    do
    {
      v24 = 0;
      do
      {
        if (*v39 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = [*(*(&v38 + 1) + 8 * v24) copyWithZone:a3];
        [v5 addSalientEntities:v25];

        ++v24;
      }

      while (v22 != v24);
      v22 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v38 objects:v51 count:16];
    }

    while (v22);
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v26 = self->_systemDialogActs;
  v27 = [(NSMutableArray *)v26 countByEnumeratingWithState:&v34 objects:v50 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v35;
    do
    {
      v30 = 0;
      do
      {
        if (*v35 != v29)
        {
          objc_enumerationMutation(v26);
        }

        v31 = [*(*(&v34 + 1) + 8 * v30) copyWithZone:{a3, v34}];
        [v5 addSystemDialogActs:v31];

        ++v30;
      }

      while (v28 != v30);
      v28 = [(NSMutableArray *)v26 countByEnumeratingWithState:&v34 objects:v50 count:16];
    }

    while (v28);
  }

  v32 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)copyTo:(id)a3
{
  v20 = a3;
  if (self->_systemDialogActGroup)
  {
    [v20 setSystemDialogActGroup:?];
  }

  if ([(SIRINLUEXTERNALNLContext *)self activeTasksCount])
  {
    [v20 clearActiveTasks];
    v4 = [(SIRINLUEXTERNALNLContext *)self activeTasksCount];
    if (v4)
    {
      v5 = v4;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(SIRINLUEXTERNALNLContext *)self activeTasksAtIndex:i];
        [v20 addActiveTasks:v7];
      }
    }
  }

  if ([(SIRINLUEXTERNALNLContext *)self executedTasksCount])
  {
    [v20 clearExecutedTasks];
    v8 = [(SIRINLUEXTERNALNLContext *)self executedTasksCount];
    if (v8)
    {
      v9 = v8;
      for (j = 0; j != v9; ++j)
      {
        v11 = [(SIRINLUEXTERNALNLContext *)self executedTasksAtIndex:j];
        [v20 addExecutedTasks:v11];
      }
    }
  }

  if ([(SIRINLUEXTERNALNLContext *)self salientEntitiesCount])
  {
    [v20 clearSalientEntities];
    v12 = [(SIRINLUEXTERNALNLContext *)self salientEntitiesCount];
    if (v12)
    {
      v13 = v12;
      for (k = 0; k != v13; ++k)
      {
        v15 = [(SIRINLUEXTERNALNLContext *)self salientEntitiesAtIndex:k];
        [v20 addSalientEntities:v15];
      }
    }
  }

  if ([(SIRINLUEXTERNALNLContext *)self systemDialogActsCount])
  {
    [v20 clearSystemDialogActs];
    v16 = [(SIRINLUEXTERNALNLContext *)self systemDialogActsCount];
    if (v16)
    {
      v17 = v16;
      for (m = 0; m != v17; ++m)
      {
        v19 = [(SIRINLUEXTERNALNLContext *)self systemDialogActsAtIndex:m];
        [v20 addSystemDialogActs:v19];
      }
    }
  }
}

- (void)writeTo:(id)a3
{
  v50 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self->_systemDialogActGroup)
  {
    PBDataWriterWriteSubmessage();
  }

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
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
  v17 = self->_salientEntities;
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
  v23 = self->_systemDialogActs;
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
  v56 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  systemDialogActGroup = self->_systemDialogActGroup;
  if (systemDialogActGroup)
  {
    v5 = [(SIRINLUEXTERNALSystemDialogActGroup *)systemDialogActGroup dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"system_dialog_act_group"];
  }

  if ([(NSMutableArray *)self->_activeTasks count])
  {
    v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_activeTasks, "count")}];
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v7 = self->_activeTasks;
    v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v48 objects:v55 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v49;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v49 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [*(*(&v48 + 1) + 8 * i) dictionaryRepresentation];
          [v6 addObject:v12];
        }

        v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v48 objects:v55 count:16];
      }

      while (v9);
    }

    [v3 setObject:v6 forKey:@"active_tasks"];
  }

  if ([(NSMutableArray *)self->_executedTasks count])
  {
    v13 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_executedTasks, "count")}];
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v14 = self->_executedTasks;
    v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v44 objects:v54 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v45;
      do
      {
        for (j = 0; j != v16; ++j)
        {
          if (*v45 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = [*(*(&v44 + 1) + 8 * j) dictionaryRepresentation];
          [v13 addObject:v19];
        }

        v16 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v44 objects:v54 count:16];
      }

      while (v16);
    }

    [v3 setObject:v13 forKey:@"executed_tasks"];
  }

  if ([(NSMutableArray *)self->_salientEntities count])
  {
    v20 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_salientEntities, "count")}];
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v21 = self->_salientEntities;
    v22 = [(NSMutableArray *)v21 countByEnumeratingWithState:&v40 objects:v53 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v41;
      do
      {
        for (k = 0; k != v23; ++k)
        {
          if (*v41 != v24)
          {
            objc_enumerationMutation(v21);
          }

          v26 = [*(*(&v40 + 1) + 8 * k) dictionaryRepresentation];
          [v20 addObject:v26];
        }

        v23 = [(NSMutableArray *)v21 countByEnumeratingWithState:&v40 objects:v53 count:16];
      }

      while (v23);
    }

    [v3 setObject:v20 forKey:@"salient_entities"];
  }

  if ([(NSMutableArray *)self->_systemDialogActs count])
  {
    v27 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_systemDialogActs, "count")}];
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v28 = self->_systemDialogActs;
    v29 = [(NSMutableArray *)v28 countByEnumeratingWithState:&v36 objects:v52 count:16];
    if (v29)
    {
      v30 = v29;
      v31 = *v37;
      do
      {
        for (m = 0; m != v30; ++m)
        {
          if (*v37 != v31)
          {
            objc_enumerationMutation(v28);
          }

          v33 = [*(*(&v36 + 1) + 8 * m) dictionaryRepresentation];
          [v27 addObject:v33];
        }

        v30 = [(NSMutableArray *)v28 countByEnumeratingWithState:&v36 objects:v52 count:16];
      }

      while (v30);
    }

    [v3 setObject:v27 forKey:@"system_dialog_acts"];
  }

  v34 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SIRINLUEXTERNALNLContext;
  v4 = [(SIRINLUEXTERNALNLContext *)&v8 description];
  v5 = [(SIRINLUEXTERNALNLContext *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
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