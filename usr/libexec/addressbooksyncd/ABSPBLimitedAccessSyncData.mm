@interface ABSPBLimitedAccessSyncData
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addSyncEvents:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasFullSyncRequired:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation ABSPBLimitedAccessSyncData

- (void)setHasFullSyncRequired:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)addSyncEvents:(id)a3
{
  v4 = a3;
  syncEvents = self->_syncEvents;
  v8 = v4;
  if (!syncEvents)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_syncEvents;
    self->_syncEvents = v6;

    v4 = v8;
    syncEvents = self->_syncEvents;
  }

  [(NSMutableArray *)syncEvents addObject:v4];
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = ABSPBLimitedAccessSyncData;
  v3 = [(ABSPBLimitedAccessSyncData *)&v7 description];
  v4 = [(ABSPBLimitedAccessSyncData *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  has = self->_has;
  if (has)
  {
    v5 = [NSNumber numberWithUnsignedLongLong:self->_currentSequenceNumber];
    [v3 setObject:v5 forKey:@"currentSequenceNumber"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v6 = [NSNumber numberWithBool:self->_fullSyncRequired];
    [v3 setObject:v6 forKey:@"fullSyncRequired"];
  }

  if ([(NSMutableArray *)self->_syncEvents count])
  {
    v7 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_syncEvents, "count")}];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v8 = self->_syncEvents;
    v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v16;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v16 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [*(*(&v15 + 1) + 8 * i) dictionaryRepresentation];
          [v7 addObject:v13];
        }

        v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v10);
    }

    [v3 setObject:v7 forKey:@"syncEvents"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if (has)
  {
    currentSequenceNumber = self->_currentSequenceNumber;
    PBDataWriterWriteUint64Field();
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    fullSyncRequired = self->_fullSyncRequired;
    PBDataWriterWriteBOOLField();
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = self->_syncEvents;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v14 + 1) + 8 * i);
        PBDataWriterWriteSubmessage();
      }

      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if (has)
  {
    v4[1] = self->_currentSequenceNumber;
    *(v4 + 28) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v4 + 24) = self->_fullSyncRequired;
    *(v4 + 28) |= 2u;
  }

  v10 = v4;
  if ([(ABSPBLimitedAccessSyncData *)self syncEventsCount])
  {
    [v10 clearSyncEvents];
    v6 = [(ABSPBLimitedAccessSyncData *)self syncEventsCount];
    if (v6)
    {
      v7 = v6;
      for (i = 0; i != v7; ++i)
      {
        v9 = [(ABSPBLimitedAccessSyncData *)self syncEventsAtIndex:i];
        [v10 addSyncEvents:v9];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  has = self->_has;
  if (has)
  {
    *(v5 + 1) = self->_currentSequenceNumber;
    *(v5 + 28) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v5 + 24) = self->_fullSyncRequired;
    *(v5 + 28) |= 2u;
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = self->_syncEvents;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v15 + 1) + 8 * i) copyWithZone:{a3, v15}];
        [v6 addSyncEvents:v13];
      }

      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  v5 = *(v4 + 28);
  if (*&self->_has)
  {
    if ((*(v4 + 28) & 1) == 0 || self->_currentSequenceNumber != *(v4 + 1))
    {
      goto LABEL_12;
    }
  }

  else if (*(v4 + 28))
  {
    goto LABEL_12;
  }

  if ((*&self->_has & 2) == 0)
  {
    if ((*(v4 + 28) & 2) == 0)
    {
      goto LABEL_9;
    }

LABEL_12:
    v7 = 0;
    goto LABEL_13;
  }

  if ((*(v4 + 28) & 2) == 0)
  {
    goto LABEL_12;
  }

  v9 = *(v4 + 24);
  if (self->_fullSyncRequired)
  {
    if ((*(v4 + 24) & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  else if (*(v4 + 24))
  {
    goto LABEL_12;
  }

LABEL_9:
  syncEvents = self->_syncEvents;
  if (syncEvents | *(v4 + 2))
  {
    v7 = [(NSMutableArray *)syncEvents isEqual:?];
  }

  else
  {
    v7 = 1;
  }

LABEL_13:

  return v7;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v6 = 2654435761u * self->_currentSequenceNumber;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v7 = 0;
    return v7 ^ v6 ^ [(NSMutableArray *)self->_syncEvents hash:v3];
  }

  v6 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v7 = 2654435761 * self->_fullSyncRequired;
  return v7 ^ v6 ^ [(NSMutableArray *)self->_syncEvents hash:v3];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  v6 = *(v4 + 28);
  if (v6)
  {
    self->_currentSequenceNumber = *(v4 + 1);
    *&self->_has |= 1u;
    v6 = *(v4 + 28);
  }

  if ((v6 & 2) != 0)
  {
    self->_fullSyncRequired = *(v4 + 24);
    *&self->_has |= 2u;
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = *(v4 + 2);
  v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [(ABSPBLimitedAccessSyncData *)self addSyncEvents:*(*(&v12 + 1) + 8 * i), v12];
      }

      v9 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

@end