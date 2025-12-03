@interface ChannelDeferredPublishInfo
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsPushPriority:(id)priority;
- (int)pushPriority;
- (unint64_t)hash;
- (void)addChannelProvisionOffGridPacketInfo:(id)info;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasRetryCount:(BOOL)count;
- (void)writeTo:(id)to;
@end

@implementation ChannelDeferredPublishInfo

- (void)addChannelProvisionOffGridPacketInfo:(id)info
{
  infoCopy = info;
  channelProvisionOffGridPacketInfos = self->_channelProvisionOffGridPacketInfos;
  v8 = infoCopy;
  if (!channelProvisionOffGridPacketInfos)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_channelProvisionOffGridPacketInfos;
    self->_channelProvisionOffGridPacketInfos = v6;

    infoCopy = v8;
    channelProvisionOffGridPacketInfos = self->_channelProvisionOffGridPacketInfos;
  }

  [(NSMutableArray *)channelProvisionOffGridPacketInfos addObject:infoCopy];
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

- (void)setHasRetryCount:(BOOL)count
{
  if (count)
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
  v8.super_class = ChannelDeferredPublishInfo;
  v4 = [(ChannelDeferredPublishInfo *)&v8 description];
  dictionaryRepresentation = [(ChannelDeferredPublishInfo *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  v25 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  channelIdentity = self->_channelIdentity;
  if (channelIdentity)
  {
    dictionaryRepresentation = [(ChannelIdentity *)channelIdentity dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"channel_identity"];
  }

  if ([(NSMutableArray *)self->_channelProvisionOffGridPacketInfos count])
  {
    v6 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_channelProvisionOffGridPacketInfos, "count")}];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v7 = self->_channelProvisionOffGridPacketInfos;
    v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v21;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v21 != v10)
          {
            objc_enumerationMutation(v7);
          }

          dictionaryRepresentation2 = [*(*(&v20 + 1) + 8 * i) dictionaryRepresentation];
          [v6 addObject:dictionaryRepresentation2];
        }

        v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v9);
    }

    [dictionary setObject:v6 forKey:@"channel_provision_off_grid_packet_info"];
  }

  has = self->_has;
  if (has)
  {
    pushPriority = self->_pushPriority;
    if (pushPriority >= 3)
    {
      v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_pushPriority];
    }

    else
    {
      v15 = off_27843E048[pushPriority];
    }

    [dictionary setObject:v15 forKey:@"push_priority"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_retryCount];
    [dictionary setObject:v16 forKey:@"retry_count"];
  }

  adopter = self->_adopter;
  if (adopter)
  {
    [dictionary setObject:adopter forKey:@"adopter"];
  }

  v18 = *MEMORY[0x277D85DE8];

  return dictionary;
}

- (void)writeTo:(id)to
{
  v20 = *MEMORY[0x277D85DE8];
  toCopy = to;
  if (self->_channelIdentity)
  {
    PBDataWriterWriteSubmessage();
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = self->_channelProvisionOffGridPacketInfos;
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

        v10 = *(*(&v15 + 1) + 8 * i);
        PBDataWriterWriteSubmessage();
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  has = self->_has;
  if (has)
  {
    pushPriority = self->_pushPriority;
    PBDataWriterWriteInt32Field();
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    retryCount = self->_retryCount;
    PBDataWriterWriteUint32Field();
  }

  if (self->_adopter)
  {
    PBDataWriterWriteStringField();
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (self->_channelIdentity)
  {
    [toCopy setChannelIdentity:?];
  }

  if ([(ChannelDeferredPublishInfo *)self channelProvisionOffGridPacketInfosCount])
  {
    [toCopy clearChannelProvisionOffGridPacketInfos];
    channelProvisionOffGridPacketInfosCount = [(ChannelDeferredPublishInfo *)self channelProvisionOffGridPacketInfosCount];
    if (channelProvisionOffGridPacketInfosCount)
    {
      v5 = channelProvisionOffGridPacketInfosCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(ChannelDeferredPublishInfo *)self channelProvisionOffGridPacketInfoAtIndex:i];
        [toCopy addChannelProvisionOffGridPacketInfo:v7];
      }
    }
  }

  has = self->_has;
  v9 = toCopy;
  if (has)
  {
    *(toCopy + 8) = self->_pushPriority;
    *(toCopy + 40) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(toCopy + 9) = self->_retryCount;
    *(toCopy + 40) |= 2u;
  }

  if (self->_adopter)
  {
    [toCopy setAdopter:?];
    v9 = toCopy;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(ChannelIdentity *)self->_channelIdentity copyWithZone:zone];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = self->_channelProvisionOffGridPacketInfos;
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
        [v5 addChannelProvisionOffGridPacketInfo:v13];
      }

      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v10);
  }

  has = self->_has;
  if (has)
  {
    *(v5 + 32) = self->_pushPriority;
    *(v5 + 40) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v5 + 36) = self->_retryCount;
    *(v5 + 40) |= 2u;
  }

  v15 = [(NSString *)self->_adopter copyWithZone:zone, v19];
  v16 = *(v5 + 8);
  *(v5 + 8) = v15;

  v17 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_18;
  }

  channelIdentity = self->_channelIdentity;
  if (channelIdentity | *(equalCopy + 2))
  {
    if (![(ChannelIdentity *)channelIdentity isEqual:?])
    {
      goto LABEL_18;
    }
  }

  channelProvisionOffGridPacketInfos = self->_channelProvisionOffGridPacketInfos;
  if (channelProvisionOffGridPacketInfos | *(equalCopy + 3))
  {
    if (![(NSMutableArray *)channelProvisionOffGridPacketInfos isEqual:?])
    {
      goto LABEL_18;
    }
  }

  v7 = *(equalCopy + 40);
  if (*&self->_has)
  {
    if ((*(equalCopy + 40) & 1) == 0 || self->_pushPriority != *(equalCopy + 8))
    {
      goto LABEL_18;
    }
  }

  else if (*(equalCopy + 40))
  {
LABEL_18:
    v9 = 0;
    goto LABEL_19;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 40) & 2) == 0 || self->_retryCount != *(equalCopy + 9))
    {
      goto LABEL_18;
    }
  }

  else if ((*(equalCopy + 40) & 2) != 0)
  {
    goto LABEL_18;
  }

  adopter = self->_adopter;
  if (adopter | *(equalCopy + 1))
  {
    v9 = [(NSString *)adopter isEqual:?];
  }

  else
  {
    v9 = 1;
  }

LABEL_19:

  return v9;
}

- (unint64_t)hash
{
  v3 = [(ChannelIdentity *)self->_channelIdentity hash];
  v4 = [(NSMutableArray *)self->_channelProvisionOffGridPacketInfos hash];
  if (*&self->_has)
  {
    v5 = 2654435761 * self->_pushPriority;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v6 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ [(NSString *)self->_adopter hash];
  }

  v5 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v6 = 2654435761 * self->_retryCount;
  return v4 ^ v3 ^ v5 ^ v6 ^ [(NSString *)self->_adopter hash];
}

- (void)mergeFrom:(id)from
{
  v19 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  channelIdentity = self->_channelIdentity;
  v6 = *(fromCopy + 2);
  if (channelIdentity)
  {
    if (v6)
    {
      [(ChannelIdentity *)channelIdentity mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(ChannelDeferredPublishInfo *)self setChannelIdentity:?];
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = *(fromCopy + 3);
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [(ChannelDeferredPublishInfo *)self addChannelProvisionOffGridPacketInfo:*(*(&v14 + 1) + 8 * i), v14];
      }

      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  v12 = *(fromCopy + 40);
  if (v12)
  {
    self->_pushPriority = *(fromCopy + 8);
    *&self->_has |= 1u;
    v12 = *(fromCopy + 40);
  }

  if ((v12 & 2) != 0)
  {
    self->_retryCount = *(fromCopy + 9);
    *&self->_has |= 2u;
  }

  if (*(fromCopy + 1))
  {
    [(ChannelDeferredPublishInfo *)self setAdopter:?];
  }

  v13 = *MEMORY[0x277D85DE8];
}

@end