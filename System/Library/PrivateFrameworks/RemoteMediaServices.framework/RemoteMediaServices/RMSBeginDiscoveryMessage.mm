@interface RMSBeginDiscoveryMessage
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addPairedNetworkNames:(id)names;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasHasPairedNetworkNames:(BOOL)names;
- (void)writeTo:(id)to;
@end

@implementation RMSBeginDiscoveryMessage

- (void)addPairedNetworkNames:(id)names
{
  namesCopy = names;
  pairedNetworkNames = self->_pairedNetworkNames;
  v8 = namesCopy;
  if (!pairedNetworkNames)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_pairedNetworkNames;
    self->_pairedNetworkNames = v6;

    namesCopy = v8;
    pairedNetworkNames = self->_pairedNetworkNames;
  }

  [(NSMutableArray *)pairedNetworkNames addObject:namesCopy];
}

- (void)setHasHasPairedNetworkNames:(BOOL)names
{
  if (names)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = RMSBeginDiscoveryMessage;
  v4 = [(RMSBeginDiscoveryMessage *)&v8 description];
  dictionaryRepresentation = [(RMSBeginDiscoveryMessage *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithInt:self->_discoveryTypes];
    [dictionary setObject:v4 forKey:@"discoveryTypes"];
  }

  pairedNetworkNames = self->_pairedNetworkNames;
  if (pairedNetworkNames)
  {
    [dictionary setObject:pairedNetworkNames forKey:@"pairedNetworkNames"];
  }

  if ((*&self->_has & 2) != 0)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithBool:self->_hasPairedNetworkNames];
    [dictionary setObject:v6 forKey:@"hasPairedNetworkNames"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  v15 = *MEMORY[0x277D85DE8];
  toCopy = to;
  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = self->_pairedNetworkNames;
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

  if ((*&self->_has & 2) != 0)
  {
    PBDataWriterWriteBOOLField();
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    toCopy[2] = self->_discoveryTypes;
    *(toCopy + 28) |= 1u;
  }

  v9 = toCopy;
  if ([(RMSBeginDiscoveryMessage *)self pairedNetworkNamesCount])
  {
    [v9 clearPairedNetworkNames];
    pairedNetworkNamesCount = [(RMSBeginDiscoveryMessage *)self pairedNetworkNamesCount];
    if (pairedNetworkNamesCount)
    {
      v6 = pairedNetworkNamesCount;
      for (i = 0; i != v6; ++i)
      {
        v8 = [(RMSBeginDiscoveryMessage *)self pairedNetworkNamesAtIndex:i];
        [v9 addPairedNetworkNames:v8];
      }
    }
  }

  if ((*&self->_has & 2) != 0)
  {
    v9[24] = self->_hasPairedNetworkNames;
    v9[28] |= 2u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 8) = self->_discoveryTypes;
    *(v5 + 28) |= 1u;
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = self->_pairedNetworkNames;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      v11 = 0;
      do
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v14 + 1) + 8 * v11) copyWithZone:{zone, v14}];
        [v6 addPairedNetworkNames:v12];

        ++v11;
      }

      while (v9 != v11);
      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  if ((*&self->_has & 2) != 0)
  {
    v6[24] = self->_hasPairedNetworkNames;
    v6[28] |= 2u;
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  has = self->_has;
  if (has)
  {
    if ((*(equalCopy + 28) & 1) == 0 || self->_discoveryTypes != *(equalCopy + 2))
    {
      goto LABEL_12;
    }
  }

  else if (*(equalCopy + 28))
  {
    goto LABEL_12;
  }

  pairedNetworkNames = self->_pairedNetworkNames;
  if (pairedNetworkNames | *(equalCopy + 2))
  {
    if (![(NSMutableArray *)pairedNetworkNames isEqual:?])
    {
      goto LABEL_12;
    }

    has = self->_has;
  }

  v7 = (*(equalCopy + 28) & 2) == 0;
  if ((has & 2) != 0)
  {
    if ((*(equalCopy + 28) & 2) != 0)
    {
      if (self->_hasPairedNetworkNames)
      {
        if ((*(equalCopy + 24) & 1) == 0)
        {
          goto LABEL_12;
        }
      }

      else if (*(equalCopy + 24))
      {
        goto LABEL_12;
      }

      v7 = 1;
      goto LABEL_13;
    }

LABEL_12:
    v7 = 0;
  }

LABEL_13:

  return v7;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_discoveryTypes;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSMutableArray *)self->_pairedNetworkNames hash];
  if ((*&self->_has & 2) != 0)
  {
    v5 = 2654435761 * self->_hasPairedNetworkNames;
  }

  else
  {
    v5 = 0;
  }

  return v4 ^ v3 ^ v5;
}

- (void)mergeFrom:(id)from
{
  v16 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  v5 = fromCopy;
  if (*(fromCopy + 28))
  {
    self->_discoveryTypes = *(fromCopy + 2);
    *&self->_has |= 1u;
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = *(fromCopy + 2);
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(RMSBeginDiscoveryMessage *)self addPairedNetworkNames:*(*(&v11 + 1) + 8 * v10++), v11];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }

  if ((v5[28] & 2) != 0)
  {
    self->_hasPairedNetworkNames = v5[24];
    *&self->_has |= 2u;
  }
}

@end