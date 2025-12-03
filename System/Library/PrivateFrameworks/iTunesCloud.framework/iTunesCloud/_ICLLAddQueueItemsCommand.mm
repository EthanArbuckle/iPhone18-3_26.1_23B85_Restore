@interface _ICLLAddQueueItemsCommand
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (uint64_t)addItems:(uint64_t)items;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation _ICLLAddQueueItemsCommand

- (unint64_t)hash
{
  if ((*&self->_has & 4) != 0)
  {
    v3 = 2654435761 * self->_revision;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = 0;
    if ((*&self->_has & 2) != 0)
    {
LABEL_3:
      v4 = 2654435761 * self->_position;
      goto LABEL_6;
    }
  }

  v4 = 0;
LABEL_6:
  v5 = [(NSMutableArray *)self->_items hash];
  if (*&self->_has)
  {
    v6 = 2654435761 * self->_insertPositionType;
  }

  else
  {
    v6 = 0;
  }

  v7 = v4 ^ v3 ^ v6 ^ v5;
  v8 = [(NSString *)self->_queueContext hash];
  return v7 ^ v8 ^ [(_ICLLRadioSource *)self->_radioSource hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_24;
  }

  has = self->_has;
  v6 = *(equalCopy + 52);
  if ((has & 4) != 0)
  {
    if ((*(equalCopy + 52) & 4) == 0 || self->_revision != *(equalCopy + 12))
    {
      goto LABEL_24;
    }
  }

  else if ((*(equalCopy + 52) & 4) != 0)
  {
    goto LABEL_24;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 52) & 2) == 0 || self->_position != *(equalCopy + 6))
    {
      goto LABEL_24;
    }
  }

  else if ((*(equalCopy + 52) & 2) != 0)
  {
    goto LABEL_24;
  }

  items = self->_items;
  if (items | *(equalCopy + 2))
  {
    if (![(NSMutableArray *)items isEqual:?])
    {
LABEL_24:
      v10 = 0;
      goto LABEL_25;
    }

    has = self->_has;
    v6 = *(equalCopy + 52);
  }

  if (has)
  {
    if ((v6 & 1) == 0 || self->_insertPositionType != *(equalCopy + 2))
    {
      goto LABEL_24;
    }
  }

  else if (v6)
  {
    goto LABEL_24;
  }

  queueContext = self->_queueContext;
  if (queueContext | *(equalCopy + 4) && ![(NSString *)queueContext isEqual:?])
  {
    goto LABEL_24;
  }

  radioSource = self->_radioSource;
  if (radioSource | *(equalCopy + 5))
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

- (id)copyWithZone:(_NSZone *)zone
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  has = self->_has;
  if ((has & 4) != 0)
  {
    *(v5 + 48) = self->_revision;
    *(v5 + 52) |= 4u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v5 + 24) = self->_position;
    *(v5 + 52) |= 2u;
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

        v13 = [*(*(&v19 + 1) + 8 * i) copyWithZone:{zone, v19}];
        [(_ICLLAddQueueItemsCommand *)v6 addItems:v13];
      }

      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v10);
  }

  if (*&self->_has)
  {
    *(v6 + 8) = self->_insertPositionType;
    *(v6 + 52) |= 1u;
  }

  v14 = [(NSString *)self->_queueContext copyWithZone:zone, v19];
  v15 = *(v6 + 32);
  *(v6 + 32) = v14;

  v16 = [(_ICLLRadioSource *)self->_radioSource copyWithZone:zone];
  v17 = *(v6 + 40);
  *(v6 + 40) = v16;

  return v6;
}

- (uint64_t)addItems:(uint64_t)items
{
  v3 = a2;
  v4 = v3;
  if (items)
  {
    v5 = *(items + 16);
    v9 = v4;
    if (!v5)
    {
      v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v7 = *(items + 16);
      *(items + 16) = v6;

      v5 = *(items + 16);
    }

    v3 = [v5 addObject:v9];
    v4 = v9;
  }

  return MEMORY[0x1EEE66BB8](v3, v4);
}

- (void)writeTo:(id)to
{
  v16 = *MEMORY[0x1E69E9840];
  toCopy = to;
  has = self->_has;
  if ((has & 4) != 0)
  {
    PBDataWriterWriteInt32Field();
    has = self->_has;
  }

  if ((has & 2) != 0)
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

  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }

  if (self->_queueContext)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_radioSource)
  {
    PBDataWriterWriteSubmessage();
  }
}

- (id)dictionaryRepresentation
{
  v24 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  has = self->_has;
  if ((has & 4) != 0)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithInt:self->_revision];
    [dictionary setObject:v5 forKey:@"revision"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithInt:self->_position];
    [dictionary setObject:v6 forKey:@"position"];
  }

  if ([(NSMutableArray *)self->_items count])
  {
    v7 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_items, "count")}];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
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

          dictionaryRepresentation = [*(*(&v19 + 1) + 8 * i) dictionaryRepresentation];
          [v7 addObject:dictionaryRepresentation];
        }

        v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v10);
    }

    [dictionary setObject:v7 forKey:@"items"];
  }

  if (*&self->_has)
  {
    v14 = [MEMORY[0x1E696AD98] numberWithInt:self->_insertPositionType];
    [dictionary setObject:v14 forKey:@"insertPositionType"];
  }

  queueContext = self->_queueContext;
  if (queueContext)
  {
    [dictionary setObject:queueContext forKey:@"queueContext"];
  }

  radioSource = self->_radioSource;
  if (radioSource)
  {
    dictionaryRepresentation2 = [(_ICLLRadioSource *)radioSource dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation2 forKey:@"radioSource"];
  }

  return dictionary;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _ICLLAddQueueItemsCommand;
  v4 = [(_ICLLAddQueueItemsCommand *)&v8 description];
  dictionaryRepresentation = [(_ICLLAddQueueItemsCommand *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

@end