@interface ChannelIdentity
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsChannelOwnershipType:(id)type;
- (int)channelOwnershipType;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation ChannelIdentity

- (int)channelOwnershipType
{
  if (*&self->_has)
  {
    return self->_channelOwnershipType;
  }

  else
  {
    return 0;
  }
}

- (int)StringAsChannelOwnershipType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"SELF_USER_OWNERSHIP"])
  {
    v4 = 0;
  }

  else
  {
    v4 = [typeCopy isEqualToString:@"SHARED_OWNERSHIP"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = ChannelIdentity;
  v4 = [(ChannelIdentity *)&v8 description];
  dictionaryRepresentation = [(ChannelIdentity *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  channelTopic = self->_channelTopic;
  if (channelTopic)
  {
    [dictionary setObject:channelTopic forKey:@"channel_topic"];
  }

  channelId = self->_channelId;
  if (channelId)
  {
    [v4 setObject:channelId forKey:@"channel_id"];
  }

  channelToken = self->_channelToken;
  if (channelToken)
  {
    [v4 setObject:channelToken forKey:@"channel_token"];
  }

  if (*&self->_has)
  {
    channelOwnershipType = self->_channelOwnershipType;
    if (channelOwnershipType)
    {
      if (channelOwnershipType == 1)
      {
        v9 = @"SHARED_OWNERSHIP";
      }

      else
      {
        v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_channelOwnershipType];
      }
    }

    else
    {
      v9 = @"SELF_USER_OWNERSHIP";
    }

    [v4 setObject:v9 forKey:@"channel_ownership_type"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_channelTopic)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_channelId)
  {
    PBDataWriterWriteDataField();
    toCopy = v6;
  }

  if (self->_channelToken)
  {
    PBDataWriterWriteDataField();
    toCopy = v6;
  }

  if (*&self->_has)
  {
    channelOwnershipType = self->_channelOwnershipType;
    PBDataWriterWriteInt32Field();
    toCopy = v6;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_channelTopic)
  {
    [toCopy setChannelTopic:?];
    toCopy = v5;
  }

  if (self->_channelId)
  {
    [v5 setChannelId:?];
    toCopy = v5;
  }

  if (self->_channelToken)
  {
    [v5 setChannelToken:?];
    toCopy = v5;
  }

  if (*&self->_has)
  {
    *(toCopy + 4) = self->_channelOwnershipType;
    *(toCopy + 40) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_channelTopic copyWithZone:zone];
  v7 = *(v5 + 32);
  *(v5 + 32) = v6;

  v8 = [(NSData *)self->_channelId copyWithZone:zone];
  v9 = *(v5 + 8);
  *(v5 + 8) = v8;

  v10 = [(NSData *)self->_channelToken copyWithZone:zone];
  v11 = *(v5 + 24);
  *(v5 + 24) = v10;

  if (*&self->_has)
  {
    *(v5 + 16) = self->_channelOwnershipType;
    *(v5 + 40) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  channelTopic = self->_channelTopic;
  if (channelTopic | *(equalCopy + 4))
  {
    if (![(NSString *)channelTopic isEqual:?])
    {
      goto LABEL_12;
    }
  }

  channelId = self->_channelId;
  if (channelId | *(equalCopy + 1))
  {
    if (![(NSData *)channelId isEqual:?])
    {
      goto LABEL_12;
    }
  }

  channelToken = self->_channelToken;
  if (channelToken | *(equalCopy + 3))
  {
    if (![(NSData *)channelToken isEqual:?])
    {
      goto LABEL_12;
    }
  }

  v8 = (*(equalCopy + 40) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 40) & 1) != 0 && self->_channelOwnershipType == *(equalCopy + 4))
    {
      v8 = 1;
      goto LABEL_13;
    }

LABEL_12:
    v8 = 0;
  }

LABEL_13:

  return v8;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_channelTopic hash];
  v4 = [(NSData *)self->_channelId hash];
  v5 = [(NSData *)self->_channelToken hash];
  if (*&self->_has)
  {
    v6 = 2654435761 * self->_channelOwnershipType;
  }

  else
  {
    v6 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (*(fromCopy + 4))
  {
    [(ChannelIdentity *)self setChannelTopic:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 1))
  {
    [(ChannelIdentity *)self setChannelId:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 3))
  {
    [(ChannelIdentity *)self setChannelToken:?];
    fromCopy = v5;
  }

  if (fromCopy[10])
  {
    self->_channelOwnershipType = fromCopy[4];
    *&self->_has |= 1u;
  }
}

@end