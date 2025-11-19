@interface _ICLLRemoveQueueItemCommand
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (uint64_t)addItemIdsToRemove:(uint64_t)a1;
- (unint64_t)hash;
- (void)setItemId:(uint64_t)a1;
- (void)setQueueContext:(uint64_t)a1;
- (void)writeTo:(id)a3;
@end

@implementation _ICLLRemoveQueueItemCommand

- (unint64_t)hash
{
  if ((*&self->_has & 2) != 0)
  {
    v3 = 2654435761 * self->_revision;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSString *)self->_itemId hash];
  if (*&self->_has)
  {
    v5 = 2654435761 * self->_removeType;
  }

  else
  {
    v5 = 0;
  }

  v6 = v4 ^ v3 ^ v5 ^ [(NSMutableArray *)self->_itemIdsToRemoves hash];
  return v6 ^ [(NSString *)self->_queueContext hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_19;
  }

  has = self->_has;
  v6 = *(v4 + 40);
  if ((has & 2) != 0)
  {
    if ((*(v4 + 40) & 2) == 0 || self->_revision != *(v4 + 9))
    {
      goto LABEL_19;
    }
  }

  else if ((*(v4 + 40) & 2) != 0)
  {
    goto LABEL_19;
  }

  itemId = self->_itemId;
  if (itemId | *(v4 + 1))
  {
    if (![(NSString *)itemId isEqual:?])
    {
LABEL_19:
      v10 = 0;
      goto LABEL_20;
    }

    has = self->_has;
    v6 = *(v4 + 40);
  }

  if (has)
  {
    if ((v6 & 1) == 0 || self->_removeType != *(v4 + 8))
    {
      goto LABEL_19;
    }
  }

  else if (v6)
  {
    goto LABEL_19;
  }

  itemIdsToRemoves = self->_itemIdsToRemoves;
  if (itemIdsToRemoves | *(v4 + 2) && ![(NSMutableArray *)itemIdsToRemoves isEqual:?])
  {
    goto LABEL_19;
  }

  queueContext = self->_queueContext;
  if (queueContext | *(v4 + 3))
  {
    v10 = [(NSString *)queueContext isEqual:?];
  }

  else
  {
    v10 = 1;
  }

LABEL_20:

  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if ((*&self->_has & 2) != 0)
  {
    *(v5 + 36) = self->_revision;
    *(v5 + 40) |= 2u;
  }

  v7 = [(NSString *)self->_itemId copyWithZone:a3];
  v8 = *(v6 + 8);
  *(v6 + 8) = v7;

  if (*&self->_has)
  {
    *(v6 + 32) = self->_removeType;
    *(v6 + 40) |= 1u;
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = self->_itemIdsToRemoves;
  v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v19;
    do
    {
      v13 = 0;
      do
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [*(*(&v18 + 1) + 8 * v13) copyWithZone:{a3, v18}];
        [(_ICLLRemoveQueueItemCommand *)v6 addItemIdsToRemove:v14];

        ++v13;
      }

      while (v11 != v13);
      v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v11);
  }

  v15 = [(NSString *)self->_queueContext copyWithZone:a3];
  v16 = *(v6 + 24);
  *(v6 + 24) = v15;

  return v6;
}

- (uint64_t)addItemIdsToRemove:(uint64_t)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = *(a1 + 16);
    v9 = v4;
    if (!v5)
    {
      v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v7 = *(a1 + 16);
      *(a1 + 16) = v6;

      v5 = *(a1 + 16);
    }

    v3 = [v5 addObject:v9];
    v4 = v9;
  }

  return MEMORY[0x1EEE66BB8](v3, v4);
}

- (void)writeTo:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ((*&self->_has & 2) != 0)
  {
    PBDataWriterWriteInt32Field();
  }

  if (self->_itemId)
  {
    PBDataWriterWriteStringField();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = self->_itemIdsToRemoves;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        PBDataWriterWriteStringField();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }

  if (self->_queueContext)
  {
    PBDataWriterWriteStringField();
  }
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ((*&self->_has & 2) != 0)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithInt:self->_revision];
    [v3 setObject:v4 forKey:@"revision"];
  }

  itemId = self->_itemId;
  if (itemId)
  {
    [v3 setObject:itemId forKey:@"itemId"];
  }

  if (*&self->_has)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithInt:self->_removeType];
    [v3 setObject:v6 forKey:@"removeType"];
  }

  itemIdsToRemoves = self->_itemIdsToRemoves;
  if (itemIdsToRemoves)
  {
    [v3 setObject:itemIdsToRemoves forKey:@"itemIdsToRemove"];
  }

  queueContext = self->_queueContext;
  if (queueContext)
  {
    [v3 setObject:queueContext forKey:@"queueContext"];
  }

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _ICLLRemoveQueueItemCommand;
  v4 = [(_ICLLRemoveQueueItemCommand *)&v8 description];
  v5 = [(_ICLLRemoveQueueItemCommand *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (void)setItemId:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 8), a2);
  }
}

- (void)setQueueContext:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 24), a2);
  }
}

@end