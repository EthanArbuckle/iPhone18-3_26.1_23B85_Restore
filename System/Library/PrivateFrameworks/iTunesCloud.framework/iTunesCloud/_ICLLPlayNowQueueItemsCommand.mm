@interface _ICLLPlayNowQueueItemsCommand
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (uint64_t)addItems:(uint64_t)items;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation _ICLLPlayNowQueueItemsCommand

- (unint64_t)hash
{
  if ((*&self->_has & 2) != 0)
  {
    v3 = 2654435761 * self->_revision;
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
  v4 = 2654435761 * self->_position;
LABEL_6:
  v5 = v4 ^ v3 ^ [(NSMutableArray *)self->_items hash];
  v6 = [(NSString *)self->_preferredPlayItemId hash];
  v7 = v5 ^ v6 ^ [(NSString *)self->_queueContext hash];
  return v7 ^ [(_ICLLRadioSource *)self->_radioSource hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_20;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 52) & 2) == 0 || self->_revision != *(equalCopy + 12))
    {
      goto LABEL_20;
    }
  }

  else if ((*(equalCopy + 52) & 2) != 0)
  {
LABEL_20:
    v9 = 0;
    goto LABEL_21;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 52) & 1) == 0 || self->_position != *(equalCopy + 4))
    {
      goto LABEL_20;
    }
  }

  else if (*(equalCopy + 52))
  {
    goto LABEL_20;
  }

  items = self->_items;
  if (items | *(equalCopy + 1) && ![(NSMutableArray *)items isEqual:?])
  {
    goto LABEL_20;
  }

  preferredPlayItemId = self->_preferredPlayItemId;
  if (preferredPlayItemId | *(equalCopy + 3))
  {
    if (![(NSString *)preferredPlayItemId isEqual:?])
    {
      goto LABEL_20;
    }
  }

  queueContext = self->_queueContext;
  if (queueContext | *(equalCopy + 4))
  {
    if (![(NSString *)queueContext isEqual:?])
    {
      goto LABEL_20;
    }
  }

  radioSource = self->_radioSource;
  if (radioSource | *(equalCopy + 5))
  {
    v9 = [(_ICLLRadioSource *)radioSource isEqual:?];
  }

  else
  {
    v9 = 1;
  }

LABEL_21:

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v5 + 48) = self->_revision;
    *(v5 + 52) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(v5 + 16) = self->_position;
    *(v5 + 52) |= 1u;
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = self->_items;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v22;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v22 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v21 + 1) + 8 * i) copyWithZone:{zone, v21}];
        [(_ICLLPlayNowQueueItemsCommand *)v6 addItems:v13];
      }

      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v10);
  }

  v14 = [(NSString *)self->_preferredPlayItemId copyWithZone:zone];
  v15 = v6[3];
  v6[3] = v14;

  v16 = [(NSString *)self->_queueContext copyWithZone:zone];
  v17 = v6[4];
  v6[4] = v16;

  v18 = [(_ICLLRadioSource *)self->_radioSource copyWithZone:zone];
  v19 = v6[5];
  v6[5] = v18;

  return v6;
}

- (uint64_t)addItems:(uint64_t)items
{
  v3 = a2;
  v4 = v3;
  if (items)
  {
    v5 = *(items + 8);
    v9 = v4;
    if (!v5)
    {
      v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v7 = *(items + 8);
      *(items + 8) = v6;

      v5 = *(items + 8);
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
  if ((has & 2) != 0)
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

  if (self->_preferredPlayItemId)
  {
    PBDataWriterWriteStringField();
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
  if ((has & 2) != 0)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithInt:self->_revision];
    [dictionary setObject:v5 forKey:@"revision"];

    has = self->_has;
  }

  if (has)
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

  preferredPlayItemId = self->_preferredPlayItemId;
  if (preferredPlayItemId)
  {
    [dictionary setObject:preferredPlayItemId forKey:@"preferredPlayItemId"];
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
  v8.super_class = _ICLLPlayNowQueueItemsCommand;
  v4 = [(_ICLLPlayNowQueueItemsCommand *)&v8 description];
  dictionaryRepresentation = [(_ICLLPlayNowQueueItemsCommand *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

@end