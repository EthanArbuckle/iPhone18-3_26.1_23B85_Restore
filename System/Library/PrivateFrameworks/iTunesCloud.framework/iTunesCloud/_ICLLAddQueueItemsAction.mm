@interface _ICLLAddQueueItemsAction
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (uint64_t)addItems:(uint64_t)a1;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation _ICLLAddQueueItemsAction

- (unint64_t)hash
{
  if ((*&self->_has & 4) != 0)
  {
    v3 = 2654435761 * self->_revision;
    if (*&self->_has)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = 0;
    if (*&self->_has)
    {
LABEL_3:
      v4 = 2654435761 * self->_position;
      goto LABEL_6;
    }
  }

  v4 = 0;
LABEL_6:
  v5 = [(NSMutableArray *)self->_items hash];
  if ((*&self->_has & 2) != 0)
  {
    v6 = 2654435761 * self->_positionType;
  }

  else
  {
    v6 = 0;
  }

  v7 = v4 ^ v3 ^ v6 ^ v5;
  v8 = [(_ICLLQueueQuery *)self->_queueQuery hash];
  return v7 ^ v8 ^ [(_ICLLRadioSource *)self->_radioSource hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_24;
  }

  has = self->_has;
  v6 = *(v4 + 44);
  if ((has & 4) != 0)
  {
    if ((*(v4 + 44) & 4) == 0 || self->_revision != *(v4 + 10))
    {
      goto LABEL_24;
    }
  }

  else if ((*(v4 + 44) & 4) != 0)
  {
    goto LABEL_24;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 44) & 1) == 0 || self->_position != *(v4 + 4))
    {
      goto LABEL_24;
    }
  }

  else if (*(v4 + 44))
  {
    goto LABEL_24;
  }

  items = self->_items;
  if (items | *(v4 + 1))
  {
    if (![(NSMutableArray *)items isEqual:?])
    {
LABEL_24:
      v10 = 0;
      goto LABEL_25;
    }

    has = self->_has;
    v6 = *(v4 + 44);
  }

  if ((has & 2) != 0)
  {
    if ((v6 & 2) == 0 || self->_positionType != *(v4 + 5))
    {
      goto LABEL_24;
    }
  }

  else if ((v6 & 2) != 0)
  {
    goto LABEL_24;
  }

  queueQuery = self->_queueQuery;
  if (queueQuery | *(v4 + 3) && ![(_ICLLQueueQuery *)queueQuery isEqual:?])
  {
    goto LABEL_24;
  }

  radioSource = self->_radioSource;
  if (radioSource | *(v4 + 4))
  {
    v10 = [(_ICLLRadioSource *)radioSource isEqual:?];
  }

  else
  {
    v10 = 1;
  }

LABEL_25:

  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  has = self->_has;
  if ((has & 4) != 0)
  {
    *(v5 + 40) = self->_revision;
    *(v5 + 44) |= 4u;
    has = self->_has;
  }

  if (has)
  {
    *(v5 + 16) = self->_position;
    *(v5 + 44) |= 1u;
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = self->_items;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v20;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v19 + 1) + 8 * i) copyWithZone:{a3, v19}];
        [(_ICLLAddQueueItemsAction *)v6 addItems:v13];
      }

      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v10);
  }

  if ((*&self->_has & 2) != 0)
  {
    *(v6 + 20) = self->_positionType;
    *(v6 + 44) |= 2u;
  }

  v14 = [(_ICLLQueueQuery *)self->_queueQuery copyWithZone:a3, v19];
  v15 = *(v6 + 24);
  *(v6 + 24) = v14;

  v16 = [(_ICLLRadioSource *)self->_radioSource copyWithZone:a3];
  v17 = *(v6 + 32);
  *(v6 + 32) = v16;

  return v6;
}

- (uint64_t)addItems:(uint64_t)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = *(a1 + 8);
    v9 = v4;
    if (!v5)
    {
      v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v7 = *(a1 + 8);
      *(a1 + 8) = v6;

      v5 = *(a1 + 8);
    }

    v3 = [v5 addObject:v9];
    v4 = v9;
  }

  return MEMORY[0x1EEE66BB8](v3, v4);
}

- (void)writeTo:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  has = self->_has;
  if ((has & 4) != 0)
  {
    PBDataWriterWriteInt32Field();
    has = self->_has;
  }

  if (has)
  {
    PBDataWriterWriteInt32Field();
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = self->_items;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        PBDataWriterWriteSubmessage();
      }

      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }

  if ((*&self->_has & 2) != 0)
  {
    PBDataWriterWriteInt32Field();
  }

  if (self->_queueQuery)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_radioSource)
  {
    PBDataWriterWriteSubmessage();
  }
}

- (id)dictionaryRepresentation
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  has = self->_has;
  if ((has & 4) != 0)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithInt:self->_revision];
    [v3 setObject:v5 forKey:@"revision"];

    has = self->_has;
  }

  if (has)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithInt:self->_position];
    [v3 setObject:v6 forKey:@"position"];
  }

  if ([(NSMutableArray *)self->_items count])
  {
    v7 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_items, "count")}];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v8 = self->_items;
    v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v21;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v21 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [*(*(&v20 + 1) + 8 * i) dictionaryRepresentation];
          [v7 addObject:v13];
        }

        v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v10);
    }

    [v3 setObject:v7 forKey:@"items"];
  }

  if ((*&self->_has & 2) != 0)
  {
    v14 = [MEMORY[0x1E696AD98] numberWithInt:self->_positionType];
    [v3 setObject:v14 forKey:@"positionType"];
  }

  queueQuery = self->_queueQuery;
  if (queueQuery)
  {
    v16 = [(_ICLLQueueQuery *)queueQuery dictionaryRepresentation];
    [v3 setObject:v16 forKey:@"queueQuery"];
  }

  radioSource = self->_radioSource;
  if (radioSource)
  {
    v18 = [(_ICLLRadioSource *)radioSource dictionaryRepresentation];
    [v3 setObject:v18 forKey:@"radioSource"];
  }

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _ICLLAddQueueItemsAction;
  v4 = [(_ICLLAddQueueItemsAction *)&v8 description];
  v5 = [(_ICLLAddQueueItemsAction *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

@end