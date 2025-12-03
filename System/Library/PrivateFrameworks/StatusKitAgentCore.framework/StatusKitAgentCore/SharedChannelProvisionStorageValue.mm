@interface SharedChannelProvisionStorageValue
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsPushPriority:(id)priority;
- (int)pushPriority;
- (unint64_t)hash;
- (void)addChannelPublishProvisionPacketInfo:(id)info;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation SharedChannelProvisionStorageValue

- (void)addChannelPublishProvisionPacketInfo:(id)info
{
  infoCopy = info;
  channelPublishProvisionPacketInfos = self->_channelPublishProvisionPacketInfos;
  v8 = infoCopy;
  if (!channelPublishProvisionPacketInfos)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_channelPublishProvisionPacketInfos;
    self->_channelPublishProvisionPacketInfos = v6;

    infoCopy = v8;
    channelPublishProvisionPacketInfos = self->_channelPublishProvisionPacketInfos;
  }

  [(NSMutableArray *)channelPublishProvisionPacketInfos addObject:infoCopy];
}

- (int)pushPriority
{
  if (*&self->_has)
  {
    return self->_pushPriority;
  }

  else
  {
    return 0;
  }
}

- (int)StringAsPushPriority:(id)priority
{
  priorityCopy = priority;
  if ([priorityCopy isEqualToString:@"LOW"])
  {
    v4 = 0;
  }

  else if ([priorityCopy isEqualToString:@"NORMAL"])
  {
    v4 = 1;
  }

  else if ([priorityCopy isEqualToString:@"HIGH"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = SharedChannelProvisionStorageValue;
  v4 = [(SharedChannelProvisionStorageValue *)&v8 description];
  dictionaryRepresentation = [(SharedChannelProvisionStorageValue *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  v20 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if ([(NSMutableArray *)self->_channelPublishProvisionPacketInfos count])
  {
    v4 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_channelPublishProvisionPacketInfos, "count")}];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v5 = self->_channelPublishProvisionPacketInfos;
    v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v16;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v16 != v8)
          {
            objc_enumerationMutation(v5);
          }

          dictionaryRepresentation = [*(*(&v15 + 1) + 8 * i) dictionaryRepresentation];
          [v4 addObject:dictionaryRepresentation];
        }

        v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v7);
    }

    [dictionary setObject:v4 forKey:@"channel_publish_provision_packet_info"];
  }

  if (*&self->_has)
  {
    pushPriority = self->_pushPriority;
    if (pushPriority >= 3)
    {
      v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_pushPriority];
    }

    else
    {
      v12 = off_27843E148[pushPriority];
    }

    [dictionary setObject:v12 forKey:@"push_priority"];
  }

  v13 = *MEMORY[0x277D85DE8];

  return dictionary;
}

- (void)writeTo:(id)to
{
  v18 = *MEMORY[0x277D85DE8];
  toCopy = to;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = self->_channelPublishProvisionPacketInfos;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * v9);
        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  if (*&self->_has)
  {
    pushPriority = self->_pushPriority;
    PBDataWriterWriteInt32Field();
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if ([(SharedChannelProvisionStorageValue *)self channelPublishProvisionPacketInfosCount])
  {
    [toCopy clearChannelPublishProvisionPacketInfos];
    channelPublishProvisionPacketInfosCount = [(SharedChannelProvisionStorageValue *)self channelPublishProvisionPacketInfosCount];
    if (channelPublishProvisionPacketInfosCount)
    {
      v5 = channelPublishProvisionPacketInfosCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(SharedChannelProvisionStorageValue *)self channelPublishProvisionPacketInfoAtIndex:i];
        [toCopy addChannelPublishProvisionPacketInfo:v7];
      }
    }
  }

  if (*&self->_has)
  {
    *(toCopy + 4) = self->_pushPriority;
    *(toCopy + 20) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = self->_channelPublishProvisionPacketInfos;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v14 + 1) + 8 * v10) copyWithZone:{zone, v14}];
        [v5 addChannelPublishProvisionPacketInfo:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  if (*&self->_has)
  {
    *(v5 + 16) = self->_pushPriority;
    *(v5 + 20) |= 1u;
  }

  v12 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_8;
  }

  channelPublishProvisionPacketInfos = self->_channelPublishProvisionPacketInfos;
  if (channelPublishProvisionPacketInfos | *(equalCopy + 1))
  {
    if (![(NSMutableArray *)channelPublishProvisionPacketInfos isEqual:?])
    {
      goto LABEL_8;
    }
  }

  v6 = (*(equalCopy + 20) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 20) & 1) != 0 && self->_pushPriority == *(equalCopy + 4))
    {
      v6 = 1;
      goto LABEL_9;
    }

LABEL_8:
    v6 = 0;
  }

LABEL_9:

  return v6;
}

- (unint64_t)hash
{
  v3 = [(NSMutableArray *)self->_channelPublishProvisionPacketInfos hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_pushPriority;
  }

  else
  {
    v4 = 0;
  }

  return v4 ^ v3;
}

- (void)mergeFrom:(id)from
{
  v16 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = *(fromCopy + 1);
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
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

        [(SharedChannelProvisionStorageValue *)self addChannelPublishProvisionPacketInfo:*(*(&v11 + 1) + 8 * v9++), v11];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  if (*(fromCopy + 20))
  {
    self->_pushPriority = *(fromCopy + 4);
    *&self->_has |= 1u;
  }

  v10 = *MEMORY[0x277D85DE8];
}

@end