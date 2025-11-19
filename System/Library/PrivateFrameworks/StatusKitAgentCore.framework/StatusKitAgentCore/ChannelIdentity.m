@interface ChannelIdentity
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsChannelOwnershipType:(id)a3;
- (int)channelOwnershipType;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
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

- (int)StringAsChannelOwnershipType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"SELF_USER_OWNERSHIP"])
  {
    v4 = 0;
  }

  else
  {
    v4 = [v3 isEqualToString:@"SHARED_OWNERSHIP"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = ChannelIdentity;
  v4 = [(ChannelIdentity *)&v8 description];
  v5 = [(ChannelIdentity *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  channelTopic = self->_channelTopic;
  if (channelTopic)
  {
    [v3 setObject:channelTopic forKey:@"channel_topic"];
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

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_channelTopic)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_channelId)
  {
    PBDataWriterWriteDataField();
    v4 = v6;
  }

  if (self->_channelToken)
  {
    PBDataWriterWriteDataField();
    v4 = v6;
  }

  if (*&self->_has)
  {
    channelOwnershipType = self->_channelOwnershipType;
    PBDataWriterWriteInt32Field();
    v4 = v6;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_channelTopic)
  {
    [v4 setChannelTopic:?];
    v4 = v5;
  }

  if (self->_channelId)
  {
    [v5 setChannelId:?];
    v4 = v5;
  }

  if (self->_channelToken)
  {
    [v5 setChannelToken:?];
    v4 = v5;
  }

  if (*&self->_has)
  {
    *(v4 + 4) = self->_channelOwnershipType;
    *(v4 + 40) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_channelTopic copyWithZone:a3];
  v7 = *(v5 + 32);
  *(v5 + 32) = v6;

  v8 = [(NSData *)self->_channelId copyWithZone:a3];
  v9 = *(v5 + 8);
  *(v5 + 8) = v8;

  v10 = [(NSData *)self->_channelToken copyWithZone:a3];
  v11 = *(v5 + 24);
  *(v5 + 24) = v10;

  if (*&self->_has)
  {
    *(v5 + 16) = self->_channelOwnershipType;
    *(v5 + 40) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  channelTopic = self->_channelTopic;
  if (channelTopic | *(v4 + 4))
  {
    if (![(NSString *)channelTopic isEqual:?])
    {
      goto LABEL_12;
    }
  }

  channelId = self->_channelId;
  if (channelId | *(v4 + 1))
  {
    if (![(NSData *)channelId isEqual:?])
    {
      goto LABEL_12;
    }
  }

  channelToken = self->_channelToken;
  if (channelToken | *(v4 + 3))
  {
    if (![(NSData *)channelToken isEqual:?])
    {
      goto LABEL_12;
    }
  }

  v8 = (*(v4 + 40) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 40) & 1) != 0 && self->_channelOwnershipType == *(v4 + 4))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (*(v4 + 4))
  {
    [(ChannelIdentity *)self setChannelTopic:?];
    v4 = v5;
  }

  if (*(v4 + 1))
  {
    [(ChannelIdentity *)self setChannelId:?];
    v4 = v5;
  }

  if (*(v4 + 3))
  {
    [(ChannelIdentity *)self setChannelToken:?];
    v4 = v5;
  }

  if (v4[10])
  {
    self->_channelOwnershipType = v4[4];
    *&self->_has |= 1u;
  }
}

@end