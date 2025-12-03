@interface ChannelActivityUpdatePayload
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsUpdateType:(id)type;
- (int)updateType;
- (unint64_t)hash;
- (void)addParticipantPayload:(id)payload;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
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

- (int)StringAsUpdateType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"PARTICIPANT_ADDED"])
  {
    v4 = 0;
  }

  else
  {
    v4 = [typeCopy isEqualToString:@"PARTICIPANT_REMOVED"];
  }

  return v4;
}

- (void)addParticipantPayload:(id)payload
{
  payloadCopy = payload;
  participantPayloads = self->_participantPayloads;
  v8 = payloadCopy;
  if (!participantPayloads)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_participantPayloads;
    self->_participantPayloads = v6;

    payloadCopy = v8;
    participantPayloads = self->_participantPayloads;
  }

  [(NSMutableArray *)participantPayloads addObject:payloadCopy];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = ChannelActivityUpdatePayload;
  v4 = [(ChannelActivityUpdatePayload *)&v8 description];
  dictionaryRepresentation = [(ChannelActivityUpdatePayload *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  v21 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
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

    [dictionary setObject:v5 forKey:@"update_type"];
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

          dictionaryRepresentation = [*(*(&v16 + 1) + 8 * i) dictionaryRepresentation];
          [v6 addObject:dictionaryRepresentation];
        }

        v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v9);
    }

    [dictionary setObject:v6 forKey:@"participant_payload"];
  }

  padding = self->_padding;
  if (padding)
  {
    [dictionary setObject:padding forKey:@"padding"];
  }

  v14 = *MEMORY[0x277D85DE8];

  return dictionary;
}

- (void)writeTo:(id)to
{
  v18 = *MEMORY[0x277D85DE8];
  toCopy = to;
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

- (void)copyTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    toCopy[6] = self->_updateType;
    *(toCopy + 28) |= 1u;
  }

  v9 = toCopy;
  if ([(ChannelActivityUpdatePayload *)self participantPayloadsCount])
  {
    [v9 clearParticipantPayloads];
    participantPayloadsCount = [(ChannelActivityUpdatePayload *)self participantPayloadsCount];
    if (participantPayloadsCount)
    {
      v6 = participantPayloadsCount;
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

- (id)copyWithZone:(_NSZone *)zone
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
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

        v12 = [*(*(&v17 + 1) + 8 * v11) copyWithZone:{zone, v17}];
        [v6 addParticipantPayload:v12];

        ++v11;
      }

      while (v9 != v11);
      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }

  v13 = [(NSData *)self->_padding copyWithZone:zone];
  v14 = v6[1];
  v6[1] = v13;

  v15 = *MEMORY[0x277D85DE8];
  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_11;
  }

  v5 = *(equalCopy + 28);
  if (*&self->_has)
  {
    if ((*(equalCopy + 28) & 1) == 0 || self->_updateType != *(equalCopy + 6))
    {
      goto LABEL_11;
    }
  }

  else if (*(equalCopy + 28))
  {
LABEL_11:
    v8 = 0;
    goto LABEL_12;
  }

  participantPayloads = self->_participantPayloads;
  if (participantPayloads | *(equalCopy + 2) && ![(NSMutableArray *)participantPayloads isEqual:?])
  {
    goto LABEL_11;
  }

  padding = self->_padding;
  if (padding | *(equalCopy + 1))
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

- (void)mergeFrom:(id)from
{
  v17 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  v5 = fromCopy;
  if (*(fromCopy + 28))
  {
    self->_updateType = *(fromCopy + 6);
    *&self->_has |= 1u;
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = *(fromCopy + 2);
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