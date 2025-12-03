@interface _ICLLQueue
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (uint64_t)addItems:(uint64_t)items;
- (unint64_t)hash;
- (void)dealloc;
- (void)writeTo:(id)to;
@end

@implementation _ICLLQueue

- (unint64_t)hash
{
  v3 = [(NSString *)self->_queueId hash];
  if ((*&self->_has & 4) != 0)
  {
    v4 = 2654435761 * self->_revision;
  }

  else
  {
    v4 = 0;
  }

  v5 = [(NSMutableArray *)self->_items hash];
  if ((*&self->_has & 2) != 0)
  {
    v6 = 2654435761 * self->_explicitSetting;
  }

  else
  {
    v6 = 0;
  }

  v7 = PBRepeatedInt32Hash();
  v8 = [(NSString *)self->_currentRadioStationId hash];
  if (*&self->_has)
  {
    v9 = 2654435761 * self->_demarkationPos;
  }

  else
  {
    v9 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_24;
  }

  queueId = self->_queueId;
  if (queueId | *(equalCopy + 7))
  {
    if (![(NSString *)queueId isEqual:?])
    {
      goto LABEL_24;
    }
  }

  has = self->_has;
  v7 = *(equalCopy + 68);
  if ((has & 4) != 0)
  {
    if ((*(equalCopy + 68) & 4) == 0 || self->_revision != *(equalCopy + 16))
    {
      goto LABEL_24;
    }
  }

  else if ((*(equalCopy + 68) & 4) != 0)
  {
    goto LABEL_24;
  }

  items = self->_items;
  if (items | *(equalCopy + 6))
  {
    if (![(NSMutableArray *)items isEqual:?])
    {
LABEL_24:
      v10 = 0;
      goto LABEL_25;
    }

    has = self->_has;
    v7 = *(equalCopy + 68);
  }

  if ((has & 2) != 0)
  {
    if ((v7 & 2) == 0 || self->_explicitSetting != *(equalCopy + 11))
    {
      goto LABEL_24;
    }
  }

  else if ((v7 & 2) != 0)
  {
    goto LABEL_24;
  }

  if (!PBRepeatedInt32IsEqual())
  {
    goto LABEL_24;
  }

  currentRadioStationId = self->_currentRadioStationId;
  if (currentRadioStationId | *(equalCopy + 4))
  {
    if (![(NSString *)currentRadioStationId isEqual:?])
    {
      goto LABEL_24;
    }
  }

  v10 = (*(equalCopy + 68) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 68) & 1) == 0 || self->_demarkationPos != *(equalCopy + 10))
    {
      goto LABEL_24;
    }

    v10 = 1;
  }

LABEL_25:

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_queueId copyWithZone:zone];
  v7 = *(v5 + 56);
  *(v5 + 56) = v6;

  if ((*&self->_has & 4) != 0)
  {
    *(v5 + 64) = self->_revision;
    *(v5 + 68) |= 4u;
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = self->_items;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      v12 = 0;
      do
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v17 + 1) + 8 * v12) copyWithZone:{zone, v17}];
        [(_ICLLQueue *)v5 addItems:v13];

        ++v12;
      }

      while (v10 != v12);
      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }

  if ((*&self->_has & 2) != 0)
  {
    *(v5 + 44) = self->_explicitSetting;
    *(v5 + 68) |= 2u;
  }

  PBRepeatedInt32Copy();
  v14 = [(NSString *)self->_currentRadioStationId copyWithZone:zone];
  v15 = *(v5 + 32);
  *(v5 + 32) = v14;

  if (*&self->_has)
  {
    *(v5 + 40) = self->_demarkationPos;
    *(v5 + 68) |= 1u;
  }

  return v5;
}

- (uint64_t)addItems:(uint64_t)items
{
  v3 = a2;
  v4 = v3;
  if (items)
  {
    v5 = *(items + 48);
    v9 = v4;
    if (!v5)
    {
      v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v7 = *(items + 48);
      *(items + 48) = v6;

      v5 = *(items + 48);
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
  if (self->_queueId)
  {
    PBDataWriterWriteStringField();
  }

  if ((*&self->_has & 4) != 0)
  {
    PBDataWriterWriteInt32Field();
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = self->_items;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  if ((*&self->_has & 2) != 0)
  {
    PBDataWriterWriteInt32Field();
  }

  if (self->_storefronts.count)
  {
    v10 = 0;
    do
    {
      PBDataWriterWriteInt32Field();
      ++v10;
    }

    while (v10 < self->_storefronts.count);
  }

  if (self->_currentRadioStationId)
  {
    PBDataWriterWriteStringField();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }
}

- (id)dictionaryRepresentation
{
  v24 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  queueId = self->_queueId;
  if (queueId)
  {
    [dictionary setObject:queueId forKey:@"queueId"];
  }

  if ((*&self->_has & 4) != 0)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithInt:self->_revision];
    [v4 setObject:v6 forKey:@"revision"];
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

    [v4 setObject:v7 forKey:@"items"];
  }

  if ((*&self->_has & 2) != 0)
  {
    v14 = [MEMORY[0x1E696AD98] numberWithInt:self->_explicitSetting];
    [v4 setObject:v14 forKey:@"explicitSetting"];
  }

  v15 = PBRepeatedInt32NSArray();
  [v4 setObject:v15 forKey:@"storefronts"];

  currentRadioStationId = self->_currentRadioStationId;
  if (currentRadioStationId)
  {
    [v4 setObject:currentRadioStationId forKey:@"currentRadioStationId"];
  }

  if (*&self->_has)
  {
    v17 = [MEMORY[0x1E696AD98] numberWithInt:self->_demarkationPos];
    [v4 setObject:v17 forKey:@"demarkationPos"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _ICLLQueue;
  v4 = [(_ICLLQueue *)&v8 description];
  dictionaryRepresentation = [(_ICLLQueue *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (void)dealloc
{
  PBRepeatedInt32Clear();
  v3.receiver = self;
  v3.super_class = _ICLLQueue;
  [(_ICLLQueue *)&v3 dealloc];
}

@end