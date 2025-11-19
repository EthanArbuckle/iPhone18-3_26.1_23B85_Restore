@interface RMSUpdatePairedNetworNamesMessage
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addPairedNetworkNames:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation RMSUpdatePairedNetworNamesMessage

- (void)addPairedNetworkNames:(id)a3
{
  v4 = a3;
  pairedNetworkNames = self->_pairedNetworkNames;
  v8 = v4;
  if (!pairedNetworkNames)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_pairedNetworkNames;
    self->_pairedNetworkNames = v6;

    v4 = v8;
    pairedNetworkNames = self->_pairedNetworkNames;
  }

  [(NSMutableArray *)pairedNetworkNames addObject:v4];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = RMSUpdatePairedNetworNamesMessage;
  v4 = [(RMSUpdatePairedNetworNamesMessage *)&v8 description];
  v5 = [(RMSUpdatePairedNetworNamesMessage *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithInt:self->_sessionIdentifier];
    [v3 setObject:v4 forKey:@"sessionIdentifier"];
  }

  pairedNetworkNames = self->_pairedNetworkNames;
  if (pairedNetworkNames)
  {
    [v3 setObject:pairedNetworkNames forKey:@"pairedNetworkNames"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
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
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (*&self->_has)
  {
    v4[4] = self->_sessionIdentifier;
    *(v4 + 20) |= 1u;
  }

  v9 = v4;
  if ([(RMSUpdatePairedNetworNamesMessage *)self pairedNetworkNamesCount])
  {
    [v9 clearPairedNetworkNames];
    v5 = [(RMSUpdatePairedNetworNamesMessage *)self pairedNetworkNamesCount];
    if (v5)
    {
      v6 = v5;
      for (i = 0; i != v6; ++i)
      {
        v8 = [(RMSUpdatePairedNetworNamesMessage *)self pairedNetworkNamesAtIndex:i];
        [v9 addPairedNetworkNames:v8];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 16) = self->_sessionIdentifier;
    *(v5 + 20) |= 1u;
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

        v12 = [*(*(&v14 + 1) + 8 * v11) copyWithZone:{a3, v14}];
        [v6 addPairedNetworkNames:v12];

        ++v11;
      }

      while (v9 != v11);
      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_9;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 20) & 1) == 0 || self->_sessionIdentifier != *(v4 + 4))
    {
      goto LABEL_9;
    }
  }

  else if (*(v4 + 20))
  {
LABEL_9:
    v6 = 0;
    goto LABEL_10;
  }

  pairedNetworkNames = self->_pairedNetworkNames;
  if (pairedNetworkNames | *(v4 + 1))
  {
    v6 = [(NSMutableArray *)pairedNetworkNames isEqual:?];
  }

  else
  {
    v6 = 1;
  }

LABEL_10:

  return v6;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761 * self->_sessionIdentifier;
  }

  else
  {
    v2 = 0;
  }

  return [(NSMutableArray *)self->_pairedNetworkNames hash]^ v2;
}

- (void)mergeFrom:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (*(v4 + 20))
  {
    self->_sessionIdentifier = *(v4 + 4);
    *&self->_has |= 1u;
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = *(v4 + 1);
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

        [(RMSUpdatePairedNetworNamesMessage *)self addPairedNetworkNames:*(*(&v11 + 1) + 8 * v10++), v11];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

@end