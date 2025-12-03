@interface SIRINLUEXTERNALSystemDialogActGroup
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)addChildActs:(id)acts;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation SIRINLUEXTERNALSystemDialogActGroup

- (void)mergeFrom:(id)from
{
  v18 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  systemDialogAct = self->_systemDialogAct;
  v6 = *(fromCopy + 2);
  if (systemDialogAct)
  {
    if (v6)
    {
      [(SIRINLUEXTERNALSystemDialogAct *)systemDialogAct mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(SIRINLUEXTERNALSystemDialogActGroup *)self setSystemDialogAct:?];
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = *(fromCopy + 1);
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [(SIRINLUEXTERNALSystemDialogActGroup *)self addChildActs:*(*(&v13 + 1) + 8 * i), v13];
      }

      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((systemDialogAct = self->_systemDialogAct, !(systemDialogAct | equalCopy[2])) || -[SIRINLUEXTERNALSystemDialogAct isEqual:](systemDialogAct, "isEqual:")))
  {
    childActs = self->_childActs;
    if (childActs | equalCopy[1])
    {
      v7 = [(NSMutableArray *)childActs isEqual:?];
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(SIRINLUEXTERNALSystemDialogAct *)self->_systemDialogAct copyWithZone:zone];
  v7 = v5[2];
  v5[2] = v6;

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = self->_childActs;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      v12 = 0;
      do
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v16 + 1) + 8 * v12) copyWithZone:{zone, v16}];
        [v5 addChildActs:v13];

        ++v12;
      }

      while (v10 != v12);
      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  v14 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (self->_systemDialogAct)
  {
    [toCopy setSystemDialogAct:?];
  }

  if ([(SIRINLUEXTERNALSystemDialogActGroup *)self childActsCount])
  {
    [toCopy clearChildActs];
    childActsCount = [(SIRINLUEXTERNALSystemDialogActGroup *)self childActsCount];
    if (childActsCount)
    {
      v5 = childActsCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(SIRINLUEXTERNALSystemDialogActGroup *)self childActsAtIndex:i];
        [toCopy addChildActs:v7];
      }
    }
  }
}

- (void)writeTo:(id)to
{
  v17 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (self->_systemDialogAct)
  {
    PBDataWriterWriteSubmessage();
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_childActs;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (id)dictionaryRepresentation
{
  v20 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  systemDialogAct = self->_systemDialogAct;
  if (systemDialogAct)
  {
    dictionaryRepresentation = [(SIRINLUEXTERNALSystemDialogAct *)systemDialogAct dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"system_dialog_act"];
  }

  if ([(NSMutableArray *)self->_childActs count])
  {
    v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_childActs, "count")}];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v7 = self->_childActs;
    v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v16;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v7);
          }

          dictionaryRepresentation2 = [*(*(&v15 + 1) + 8 * i) dictionaryRepresentation];
          [v6 addObject:dictionaryRepresentation2];
        }

        v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v9);
    }

    [dictionary setObject:v6 forKey:@"child_acts"];
  }

  v13 = *MEMORY[0x1E69E9840];

  return dictionary;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SIRINLUEXTERNALSystemDialogActGroup;
  v4 = [(SIRINLUEXTERNALSystemDialogActGroup *)&v8 description];
  dictionaryRepresentation = [(SIRINLUEXTERNALSystemDialogActGroup *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (void)addChildActs:(id)acts
{
  actsCopy = acts;
  childActs = self->_childActs;
  v8 = actsCopy;
  if (!childActs)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_childActs;
    self->_childActs = v6;

    actsCopy = v8;
    childActs = self->_childActs;
  }

  [(NSMutableArray *)childActs addObject:actsCopy];
}

@end