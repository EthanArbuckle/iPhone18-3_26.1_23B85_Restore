@interface ATXPBUIFeedbackPriorContext
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addBlendingModelCacheUpdates:(id)updates;
- (void)addCacheUpdateOrdering:(id)ordering;
- (void)addClientModelCacheUpdates:(id)updates;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation ATXPBUIFeedbackPriorContext

- (void)addCacheUpdateOrdering:(id)ordering
{
  orderingCopy = ordering;
  cacheUpdateOrderings = self->_cacheUpdateOrderings;
  v8 = orderingCopy;
  if (!cacheUpdateOrderings)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_cacheUpdateOrderings;
    self->_cacheUpdateOrderings = v6;

    orderingCopy = v8;
    cacheUpdateOrderings = self->_cacheUpdateOrderings;
  }

  [(NSMutableArray *)cacheUpdateOrderings addObject:orderingCopy];
}

- (void)addBlendingModelCacheUpdates:(id)updates
{
  updatesCopy = updates;
  blendingModelCacheUpdates = self->_blendingModelCacheUpdates;
  v8 = updatesCopy;
  if (!blendingModelCacheUpdates)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_blendingModelCacheUpdates;
    self->_blendingModelCacheUpdates = v6;

    updatesCopy = v8;
    blendingModelCacheUpdates = self->_blendingModelCacheUpdates;
  }

  [(NSMutableArray *)blendingModelCacheUpdates addObject:updatesCopy];
}

- (void)addClientModelCacheUpdates:(id)updates
{
  updatesCopy = updates;
  clientModelCacheUpdates = self->_clientModelCacheUpdates;
  v8 = updatesCopy;
  if (!clientModelCacheUpdates)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_clientModelCacheUpdates;
    self->_clientModelCacheUpdates = v6;

    updatesCopy = v8;
    clientModelCacheUpdates = self->_clientModelCacheUpdates;
  }

  [(NSMutableArray *)clientModelCacheUpdates addObject:updatesCopy];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = ATXPBUIFeedbackPriorContext;
  v4 = [(ATXPBUIFeedbackPriorContext *)&v8 description];
  dictionaryRepresentation = [(ATXPBUIFeedbackPriorContext *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  v35 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  cacheUpdateOrderings = self->_cacheUpdateOrderings;
  if (cacheUpdateOrderings)
  {
    [dictionary setObject:cacheUpdateOrderings forKey:@"cacheUpdateOrdering"];
  }

  if ([(NSMutableArray *)self->_blendingModelCacheUpdates count])
  {
    v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_blendingModelCacheUpdates, "count")}];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v7 = self->_blendingModelCacheUpdates;
    v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v29 objects:v34 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v30;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v30 != v10)
          {
            objc_enumerationMutation(v7);
          }

          dictionaryRepresentation = [*(*(&v29 + 1) + 8 * i) dictionaryRepresentation];
          [v6 addObject:dictionaryRepresentation];
        }

        v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v29 objects:v34 count:16];
      }

      while (v9);
    }

    [v4 setObject:v6 forKey:@"blendingModelCacheUpdates"];
  }

  if ([(NSMutableArray *)self->_clientModelCacheUpdates count])
  {
    v13 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_clientModelCacheUpdates, "count")}];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v14 = self->_clientModelCacheUpdates;
    v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v25 objects:v33 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v26;
      do
      {
        for (j = 0; j != v16; ++j)
        {
          if (*v26 != v17)
          {
            objc_enumerationMutation(v14);
          }

          dictionaryRepresentation2 = [*(*(&v25 + 1) + 8 * j) dictionaryRepresentation];
          [v13 addObject:dictionaryRepresentation2];
        }

        v16 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v25 objects:v33 count:16];
      }

      while (v16);
    }

    [v4 setObject:v13 forKey:@"clientModelCacheUpdates"];
  }

  context = self->_context;
  if (context)
  {
    [v4 setObject:context forKey:@"context"];
  }

  contextClassString = self->_contextClassString;
  if (contextClassString)
  {
    [v4 setObject:contextClassString forKey:@"contextClassString"];
  }

  pinnedBlendingModelUICacheUpdateUUID = self->_pinnedBlendingModelUICacheUpdateUUID;
  if (pinnedBlendingModelUICacheUpdateUUID)
  {
    [v4 setObject:pinnedBlendingModelUICacheUpdateUUID forKey:@"pinnedBlendingModelUICacheUpdateUUID"];
  }

  v23 = *MEMORY[0x1E69E9840];

  return v4;
}

- (void)writeTo:(id)to
{
  v39 = *MEMORY[0x1E69E9840];
  toCopy = to;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v5 = self->_cacheUpdateOrderings;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v32 objects:v38 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v33;
    do
    {
      v9 = 0;
      do
      {
        if (*v33 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v32 + 1) + 8 * v9);
        PBDataWriterWriteStringField();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v32 objects:v38 count:16];
    }

    while (v7);
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v11 = self->_blendingModelCacheUpdates;
  v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v28 objects:v37 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v29;
    do
    {
      v15 = 0;
      do
      {
        if (*v29 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v28 + 1) + 8 * v15);
        PBDataWriterWriteSubmessage();
        ++v15;
      }

      while (v13 != v15);
      v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v28 objects:v37 count:16];
    }

    while (v13);
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v17 = self->_clientModelCacheUpdates;
  v18 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v24 objects:v36 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v25;
    do
    {
      v21 = 0;
      do
      {
        if (*v25 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v24 + 1) + 8 * v21);
        PBDataWriterWriteSubmessage();
        ++v21;
      }

      while (v19 != v21);
      v19 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v24 objects:v36 count:16];
    }

    while (v19);
  }

  if (self->_context)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_contextClassString)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_pinnedBlendingModelUICacheUpdateUUID)
  {
    PBDataWriterWriteStringField();
  }

  v23 = *MEMORY[0x1E69E9840];
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if ([(ATXPBUIFeedbackPriorContext *)self cacheUpdateOrderingsCount])
  {
    [toCopy clearCacheUpdateOrderings];
    cacheUpdateOrderingsCount = [(ATXPBUIFeedbackPriorContext *)self cacheUpdateOrderingsCount];
    if (cacheUpdateOrderingsCount)
    {
      v5 = cacheUpdateOrderingsCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(ATXPBUIFeedbackPriorContext *)self cacheUpdateOrderingAtIndex:i];
        [toCopy addCacheUpdateOrdering:v7];
      }
    }
  }

  if ([(ATXPBUIFeedbackPriorContext *)self blendingModelCacheUpdatesCount])
  {
    [toCopy clearBlendingModelCacheUpdates];
    blendingModelCacheUpdatesCount = [(ATXPBUIFeedbackPriorContext *)self blendingModelCacheUpdatesCount];
    if (blendingModelCacheUpdatesCount)
    {
      v9 = blendingModelCacheUpdatesCount;
      for (j = 0; j != v9; ++j)
      {
        v11 = [(ATXPBUIFeedbackPriorContext *)self blendingModelCacheUpdatesAtIndex:j];
        [toCopy addBlendingModelCacheUpdates:v11];
      }
    }
  }

  if ([(ATXPBUIFeedbackPriorContext *)self clientModelCacheUpdatesCount])
  {
    [toCopy clearClientModelCacheUpdates];
    clientModelCacheUpdatesCount = [(ATXPBUIFeedbackPriorContext *)self clientModelCacheUpdatesCount];
    if (clientModelCacheUpdatesCount)
    {
      v13 = clientModelCacheUpdatesCount;
      for (k = 0; k != v13; ++k)
      {
        v15 = [(ATXPBUIFeedbackPriorContext *)self clientModelCacheUpdatesAtIndex:k];
        [toCopy addClientModelCacheUpdates:v15];
      }
    }
  }

  if (self->_context)
  {
    [toCopy setContext:?];
  }

  v16 = toCopy;
  if (self->_contextClassString)
  {
    [toCopy setContextClassString:?];
    v16 = toCopy;
  }

  if (self->_pinnedBlendingModelUICacheUpdateUUID)
  {
    [toCopy setPinnedBlendingModelUICacheUpdateUUID:?];
    v16 = toCopy;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v47 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v6 = self->_cacheUpdateOrderings;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v40 objects:v46 count:16];
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

        v11 = [*(*(&v40 + 1) + 8 * v10) copyWithZone:zone];
        [v5 addCacheUpdateOrdering:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v40 objects:v46 count:16];
    }

    while (v8);
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v12 = self->_blendingModelCacheUpdates;
  v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v36 objects:v45 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v37;
    do
    {
      v16 = 0;
      do
      {
        if (*v37 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = [*(*(&v36 + 1) + 8 * v16) copyWithZone:zone];
        [v5 addBlendingModelCacheUpdates:v17];

        ++v16;
      }

      while (v14 != v16);
      v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v36 objects:v45 count:16];
    }

    while (v14);
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v18 = self->_clientModelCacheUpdates;
  v19 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v32 objects:v44 count:16];
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

        v23 = [*(*(&v32 + 1) + 8 * v22) copyWithZone:{zone, v32}];
        [v5 addClientModelCacheUpdates:v23];

        ++v22;
      }

      while (v20 != v22);
      v20 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v32 objects:v44 count:16];
    }

    while (v20);
  }

  v24 = [(NSData *)self->_context copyWithZone:zone];
  v25 = v5[4];
  v5[4] = v24;

  v26 = [(NSString *)self->_contextClassString copyWithZone:zone];
  v27 = v5[5];
  v5[5] = v26;

  v28 = [(NSString *)self->_pinnedBlendingModelUICacheUpdateUUID copyWithZone:zone];
  v29 = v5[6];
  v5[6] = v28;

  v30 = *MEMORY[0x1E69E9840];
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((cacheUpdateOrderings = self->_cacheUpdateOrderings, !(cacheUpdateOrderings | equalCopy[2])) || -[NSMutableArray isEqual:](cacheUpdateOrderings, "isEqual:")) && ((blendingModelCacheUpdates = self->_blendingModelCacheUpdates, !(blendingModelCacheUpdates | equalCopy[1])) || -[NSMutableArray isEqual:](blendingModelCacheUpdates, "isEqual:")) && ((clientModelCacheUpdates = self->_clientModelCacheUpdates, !(clientModelCacheUpdates | equalCopy[3])) || -[NSMutableArray isEqual:](clientModelCacheUpdates, "isEqual:")) && ((context = self->_context, !(context | equalCopy[4])) || -[NSData isEqual:](context, "isEqual:")) && ((contextClassString = self->_contextClassString, !(contextClassString | equalCopy[5])) || -[NSString isEqual:](contextClassString, "isEqual:")))
  {
    pinnedBlendingModelUICacheUpdateUUID = self->_pinnedBlendingModelUICacheUpdateUUID;
    if (pinnedBlendingModelUICacheUpdateUUID | equalCopy[6])
    {
      v11 = [(NSString *)pinnedBlendingModelUICacheUpdateUUID isEqual:?];
    }

    else
    {
      v11 = 1;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (unint64_t)hash
{
  v3 = [(NSMutableArray *)self->_cacheUpdateOrderings hash];
  v4 = [(NSMutableArray *)self->_blendingModelCacheUpdates hash]^ v3;
  v5 = [(NSMutableArray *)self->_clientModelCacheUpdates hash];
  v6 = v4 ^ v5 ^ [(NSData *)self->_context hash];
  v7 = [(NSString *)self->_contextClassString hash];
  return v6 ^ v7 ^ [(NSString *)self->_pinnedBlendingModelUICacheUpdateUUID hash];
}

- (void)mergeFrom:(id)from
{
  v36 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v5 = fromCopy[2];
  v6 = [v5 countByEnumeratingWithState:&v29 objects:v35 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v30;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v30 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(ATXPBUIFeedbackPriorContext *)self addCacheUpdateOrdering:*(*(&v29 + 1) + 8 * i)];
      }

      v7 = [v5 countByEnumeratingWithState:&v29 objects:v35 count:16];
    }

    while (v7);
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v10 = fromCopy[1];
  v11 = [v10 countByEnumeratingWithState:&v25 objects:v34 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v26;
    do
    {
      for (j = 0; j != v12; ++j)
      {
        if (*v26 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [(ATXPBUIFeedbackPriorContext *)self addBlendingModelCacheUpdates:*(*(&v25 + 1) + 8 * j)];
      }

      v12 = [v10 countByEnumeratingWithState:&v25 objects:v34 count:16];
    }

    while (v12);
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v15 = fromCopy[3];
  v16 = [v15 countByEnumeratingWithState:&v21 objects:v33 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v22;
    do
    {
      for (k = 0; k != v17; ++k)
      {
        if (*v22 != v18)
        {
          objc_enumerationMutation(v15);
        }

        [(ATXPBUIFeedbackPriorContext *)self addClientModelCacheUpdates:*(*(&v21 + 1) + 8 * k), v21];
      }

      v17 = [v15 countByEnumeratingWithState:&v21 objects:v33 count:16];
    }

    while (v17);
  }

  if (fromCopy[4])
  {
    [(ATXPBUIFeedbackPriorContext *)self setContext:?];
  }

  if (fromCopy[5])
  {
    [(ATXPBUIFeedbackPriorContext *)self setContextClassString:?];
  }

  if (fromCopy[6])
  {
    [(ATXPBUIFeedbackPriorContext *)self setPinnedBlendingModelUICacheUpdateUUID:?];
  }

  v20 = *MEMORY[0x1E69E9840];
}

@end