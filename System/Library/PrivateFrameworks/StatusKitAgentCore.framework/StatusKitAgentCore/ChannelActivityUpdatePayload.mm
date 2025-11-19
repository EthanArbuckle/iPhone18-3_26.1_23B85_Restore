@interface ChannelActivityUpdatePayload
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsUpdateType:(id)a3;
- (int)updateType;
- (unint64_t)hash;
- (void)addParticipantPayload:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation ChannelActivityUpdatePayload

- (int)updateType
{
  if (*&self->_has)
  {
    return self->_updateType;
  }

  else
  {
    return 0;
  }
}

- (int)StringAsUpdateType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"PARTICIPANT_ADDED"])
  {
    v4 = 0;
  }

  else
  {
    v4 = [v3 isEqualToString:@"PARTICIPANT_REMOVED"];
  }

  return v4;
}

- (void)addParticipantPayload:(id)a3
{
  v4 = a3;
  participantPayloads = self->_participantPayloads;
  v8 = v4;
  if (!participantPayloads)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_participantPayloads;
    self->_participantPayloads = v6;

    v4 = v8;
    participantPayloads = self->_participantPayloads;
  }

  [(NSMutableArray *)participantPayloads addObject:v4];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = ChannelActivityUpdatePayload;
  v4 = [(ChannelActivityUpdatePayload *)&v8 description];
  v5 = [(ChannelActivityUpdatePayload *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB38] dictionary];
  if (*&self->_has)
  {
    updateType = self->_updateType;
    if (updateType)
    {
      if (updateType == 1)
      {
        v5 = @"PARTICIPANT_REMOVED";
      }

      else
      {
        v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_updateType];
      }
    }

    else
    {
      v5 = @"PARTICIPANT_ADDED";
    }

    [v3 setObject:v5 forKey:@"update_type"];
  }

  if ([(NSMutableArray *)self->_participantPayloads count])
  {
    v6 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_participantPayloads, "count")}];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v7 = self->_participantPayloads;
    v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v17;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v17 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [*(*(&v16 + 1) + 8 * i) dictionaryRepresentation];
          [v6 addObject:v12];
        }

        v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v9);
    }

    [v3 setObject:v6 forKey:@"participant_payload"];
  }

  padding = self->_padding;
  if (padding)
  {
    [v3 setObject:padding forKey:@"padding"];
  }

  v14 = *MEMORY[0x277D85DE8];

  return v3;
}

- (void)writeTo:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (*&self->_has)
  {
    updateType = self->_updateType;
    PBDataWriterWriteInt32Field();
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = self->_participantPayloads;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v13 + 1) + 8 * v10);
        PBDataWriterWriteSubmessage();
        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  if (self->_padding)
  {
    PBDataWriterWriteDataField();
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (*&self->_has)
  {
    v4[6] = self->_updateType;
    *(v4 + 28) |= 1u;
  }

  v9 = v4;
  if ([(ChannelActivityUpdatePayload *)self participantPayloadsCount])
  {
    [v9 clearParticipantPayloads];
    v5 = [(ChannelActivityUpdatePayload *)self participantPayloadsCount];
    if (v5)
    {
      v6 = v5;
      for (i = 0; i != v6; ++i)
      {
        v8 = [(ChannelActivityUpdatePayload *)self participantPayloadAtIndex:i];
        [v9 addParticipantPayload:v8];
      }
    }
  }

  if (self->_padding)
  {
    [v9 setPadding:?];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 24) = self->_updateType;
    *(v5 + 28) |= 1u;
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = self->_participantPayloads;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    do
    {
      v11 = 0;
      do
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v17 + 1) + 8 * v11) copyWithZone:{a3, v17}];
        [v6 addParticipantPayload:v12];

        ++v11;
      }

      while (v9 != v11);
      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }

  v13 = [(NSData *)self->_padding copyWithZone:a3];
  v14 = v6[1];
  v6[1] = v13;

  v15 = *MEMORY[0x277D85DE8];
  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_11;
  }

  v5 = *(v4 + 28);
  if (*&self->_has)
  {
    if ((*(v4 + 28) & 1) == 0 || self->_updateType != *(v4 + 6))
    {
      goto LABEL_11;
    }
  }

  else if (*(v4 + 28))
  {
LABEL_11:
    v8 = 0;
    goto LABEL_12;
  }

  participantPayloads = self->_participantPayloads;
  if (participantPayloads | *(v4 + 2) && ![(NSMutableArray *)participantPayloads isEqual:?])
  {
    goto LABEL_11;
  }

  padding = self->_padding;
  if (padding | *(v4 + 1))
  {
    v8 = [(NSData *)padding isEqual:?];
  }

  else
  {
    v8 = 1;
  }

LABEL_12:

  return v8;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_updateType;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSMutableArray *)self->_participantPayloads hash]^ v3;
  return v4 ^ [(NSData *)self->_padding hash];
}

- (void)mergeFrom:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (*(v4 + 28))
  {
    self->_updateType = *(v4 + 6);
    *&self->_has |= 1u;
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = *(v4 + 2);
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(ChannelActivityUpdatePayload *)self addParticipantPayload:*(*(&v12 + 1) + 8 * i), v12];
      }

      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  if (v5[1])
  {
    [(ChannelActivityUpdatePayload *)self setPadding:?];
  }

  v11 = *MEMORY[0x277D85DE8];
}

@end