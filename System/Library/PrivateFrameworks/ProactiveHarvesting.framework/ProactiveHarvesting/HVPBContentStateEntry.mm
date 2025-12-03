@interface HVPBContentStateEntry
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)addUniqueIds:(id)ids;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation HVPBContentStateEntry

- (void)mergeFrom:(id)from
{
  v18 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  state = self->_state;
  v6 = *(fromCopy + 1);
  if (state)
  {
    if (v6)
    {
      [(HVPBContentState *)state mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(HVPBContentStateEntry *)self setState:?];
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = *(fromCopy + 2);
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

        [(HVPBContentStateEntry *)self addUniqueIds:*(*(&v13 + 1) + 8 * i), v13];
      }

      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((state = self->_state, !(state | equalCopy[1])) || -[HVPBContentState isEqual:](state, "isEqual:")))
  {
    uniqueIds = self->_uniqueIds;
    if (uniqueIds | equalCopy[2])
    {
      v7 = [(NSMutableArray *)uniqueIds isEqual:?];
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
  v21 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(HVPBContentState *)self->_state copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = self->_uniqueIds;
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
        [v5 addUniqueIds:v13];

        ++v12;
      }

      while (v10 != v12);
      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  v14 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (self->_state)
  {
    [toCopy setState:?];
  }

  if ([(HVPBContentStateEntry *)self uniqueIdsCount])
  {
    [toCopy clearUniqueIds];
    uniqueIdsCount = [(HVPBContentStateEntry *)self uniqueIdsCount];
    if (uniqueIdsCount)
    {
      v5 = uniqueIdsCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(HVPBContentStateEntry *)self uniqueIdsAtIndex:i];
        [toCopy addUniqueIds:v7];
      }
    }
  }
}

- (void)writeTo:(id)to
{
  v17 = *MEMORY[0x277D85DE8];
  toCopy = to;
  if (self->_state)
  {
    PBDataWriterWriteSubmessage();
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_uniqueIds;
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
        PBDataWriterWriteStringField();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  state = self->_state;
  if (state)
  {
    dictionaryRepresentation = [(HVPBContentState *)state dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"state"];
  }

  uniqueIds = self->_uniqueIds;
  if (uniqueIds)
  {
    [dictionary setObject:uniqueIds forKey:@"uniqueIds"];
  }

  return dictionary;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = HVPBContentStateEntry;
  v4 = [(HVPBContentStateEntry *)&v8 description];
  dictionaryRepresentation = [(HVPBContentStateEntry *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (void)addUniqueIds:(id)ids
{
  idsCopy = ids;
  uniqueIds = self->_uniqueIds;
  v8 = idsCopy;
  if (!uniqueIds)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_uniqueIds;
    self->_uniqueIds = v6;

    idsCopy = v8;
    uniqueIds = self->_uniqueIds;
  }

  [(NSMutableArray *)uniqueIds addObject:idsCopy];
}

@end