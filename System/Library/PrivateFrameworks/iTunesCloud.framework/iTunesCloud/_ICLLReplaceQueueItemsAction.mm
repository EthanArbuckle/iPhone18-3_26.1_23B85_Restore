@interface _ICLLReplaceQueueItemsAction
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (uint64_t)addItems:(uint64_t)a1;
- (unint64_t)hash;
- (void)clearOneofValuesForTrackGenerationSource;
- (void)writeTo:(id)a3;
@end

@implementation _ICLLReplaceQueueItemsAction

- (unint64_t)hash
{
  if ((*&self->_has & 2) != 0)
  {
    v3 = 2654435761 * self->_trackGenerationSource;
    if (*&self->_has)
    {
      goto LABEL_3;
    }

LABEL_5:
    v4 = 0;
    goto LABEL_6;
  }

  v3 = 0;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v4 = 2654435761 * self->_revision;
LABEL_6:
  v5 = v4 ^ v3 ^ [(NSMutableArray *)self->_items hash];
  v6 = [(NSString *)self->_preferredPlayItemId hash];
  v7 = v5 ^ v6 ^ [(_ICLLQueueQuery *)self->_queueQuery hash];
  v8 = [(_ICLLAutoPlaySource *)self->_autoPlay hash];
  return v7 ^ v8 ^ [(_ICLLRadioSource *)self->_radio hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_22;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 56) & 2) == 0 || self->_trackGenerationSource != *(v4 + 13))
    {
      goto LABEL_22;
    }
  }

  else if ((*(v4 + 56) & 2) != 0)
  {
LABEL_22:
    v10 = 0;
    goto LABEL_23;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 56) & 1) == 0 || self->_revision != *(v4 + 12))
    {
      goto LABEL_22;
    }
  }

  else if (*(v4 + 56))
  {
    goto LABEL_22;
  }

  items = self->_items;
  if (items | *(v4 + 2) && ![(NSMutableArray *)items isEqual:?])
  {
    goto LABEL_22;
  }

  preferredPlayItemId = self->_preferredPlayItemId;
  if (preferredPlayItemId | *(v4 + 3))
  {
    if (![(NSString *)preferredPlayItemId isEqual:?])
    {
      goto LABEL_22;
    }
  }

  queueQuery = self->_queueQuery;
  if (queueQuery | *(v4 + 4))
  {
    if (![(_ICLLQueueQuery *)queueQuery isEqual:?])
    {
      goto LABEL_22;
    }
  }

  autoPlay = self->_autoPlay;
  if (autoPlay | *(v4 + 1))
  {
    if (![(_ICLLAutoPlaySource *)autoPlay isEqual:?])
    {
      goto LABEL_22;
    }
  }

  radio = self->_radio;
  if (radio | *(v4 + 5))
  {
    v10 = [(_ICLLRadioSource *)radio isEqual:?];
  }

  else
  {
    v10 = 1;
  }

LABEL_23:

  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v5 + 52) = self->_trackGenerationSource;
    *(v5 + 56) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(v5 + 48) = self->_revision;
    *(v5 + 56) |= 1u;
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v8 = self->_items;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v24;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v24 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v23 + 1) + 8 * i) copyWithZone:{a3, v23}];
        [(_ICLLReplaceQueueItemsAction *)v6 addItems:v13];
      }

      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v10);
  }

  v14 = [(NSString *)self->_preferredPlayItemId copyWithZone:a3];
  v15 = v6[3];
  v6[3] = v14;

  v16 = [(_ICLLQueueQuery *)self->_queueQuery copyWithZone:a3];
  v17 = v6[4];
  v6[4] = v16;

  v18 = [(_ICLLAutoPlaySource *)self->_autoPlay copyWithZone:a3];
  v19 = v6[1];
  v6[1] = v18;

  v20 = [(_ICLLRadioSource *)self->_radio copyWithZone:a3];
  v21 = v6[5];
  v6[5] = v20;

  return v6;
}

- (uint64_t)addItems:(uint64_t)a1
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
  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = self->_items;
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

        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }

  if (self->_preferredPlayItemId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_queueQuery)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_autoPlay)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_radio)
  {
    PBDataWriterWriteSubmessage();
  }
}

- (void)clearOneofValuesForTrackGenerationSource
{
  if (a1)
  {
    *(a1 + 56) &= ~2u;
    *(a1 + 52) = 0;
    v2 = *(a1 + 8);
    *(a1 + 8) = 0;

    v3 = *(a1 + 40);
    *(a1 + 40) = 0;
  }
}

- (id)dictionaryRepresentation
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithInt:self->_revision];
    [v3 setObject:v4 forKey:@"revision"];
  }

  if ([(NSMutableArray *)self->_items count])
  {
    v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_items, "count")}];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v6 = self->_items;
    v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v22;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v22 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [*(*(&v21 + 1) + 8 * i) dictionaryRepresentation];
          [v5 addObject:v11];
        }

        v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v8);
    }

    [v3 setObject:v5 forKey:@"items"];
  }

  preferredPlayItemId = self->_preferredPlayItemId;
  if (preferredPlayItemId)
  {
    [v3 setObject:preferredPlayItemId forKey:@"preferredPlayItemId"];
  }

  queueQuery = self->_queueQuery;
  if (queueQuery)
  {
    v14 = [(_ICLLQueueQuery *)queueQuery dictionaryRepresentation];
    [v3 setObject:v14 forKey:@"queueQuery"];
  }

  autoPlay = self->_autoPlay;
  if (autoPlay)
  {
    v16 = [(_ICLLAutoPlaySource *)autoPlay dictionaryRepresentation];
    [v3 setObject:v16 forKey:@"autoPlay"];
  }

  radio = self->_radio;
  if (radio)
  {
    v18 = [(_ICLLRadioSource *)radio dictionaryRepresentation];
    [v3 setObject:v18 forKey:@"radio"];
  }

  if ((*&self->_has & 2) != 0)
  {
    v19 = [MEMORY[0x1E696AD98] numberWithInt:self->_trackGenerationSource];
    [v3 setObject:v19 forKey:@"trackGenerationSource"];
  }

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _ICLLReplaceQueueItemsAction;
  v4 = [(_ICLLReplaceQueueItemsAction *)&v8 description];
  v5 = [(_ICLLReplaceQueueItemsAction *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

@end