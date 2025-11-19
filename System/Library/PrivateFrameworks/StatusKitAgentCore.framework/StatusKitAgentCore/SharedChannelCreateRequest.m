@interface SharedChannelCreateRequest
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

@implementation SharedChannelCreateRequest

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
  v8.super_class = SharedChannelCreateRequest;
  v4 = [(SharedChannelCreateRequest *)&v8 description];
  v5 = [(SharedChannelCreateRequest *)self dictionaryRepresentation];
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

  authCredential = self->_authCredential;
  if (authCredential)
  {
    v7 = [(AuthCredential *)authCredential dictionaryRepresentation];
    [v4 setObject:v7 forKey:@"auth_credential"];
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

  adopter = self->_adopter;
  if (adopter)
  {
    [v4 setObject:adopter forKey:@"adopter"];
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

  if (self->_authCredential)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }

  if (*&self->_has)
  {
    channelOwnershipType = self->_channelOwnershipType;
    PBDataWriterWriteInt32Field();
    v4 = v6;
  }

  if (self->_adopter)
  {
    PBDataWriterWriteStringField();
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

  if (self->_authCredential)
  {
    [v5 setAuthCredential:?];
    v4 = v5;
  }

  if (*&self->_has)
  {
    *(v4 + 6) = self->_channelOwnershipType;
    *(v4 + 40) |= 1u;
  }

  if (self->_adopter)
  {
    [v5 setAdopter:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_channelTopic copyWithZone:a3];
  v7 = *(v5 + 32);
  *(v5 + 32) = v6;

  v8 = [(AuthCredential *)self->_authCredential copyWithZone:a3];
  v9 = *(v5 + 16);
  *(v5 + 16) = v8;

  if (*&self->_has)
  {
    *(v5 + 24) = self->_channelOwnershipType;
    *(v5 + 40) |= 1u;
  }

  v10 = [(NSString *)self->_adopter copyWithZone:a3];
  v11 = *(v5 + 8);
  *(v5 + 8) = v10;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_13;
  }

  channelTopic = self->_channelTopic;
  if (channelTopic | *(v4 + 4))
  {
    if (![(NSString *)channelTopic isEqual:?])
    {
      goto LABEL_13;
    }
  }

  authCredential = self->_authCredential;
  if (authCredential | *(v4 + 2))
  {
    if (![(AuthCredential *)authCredential isEqual:?])
    {
      goto LABEL_13;
    }
  }

  v7 = *(v4 + 40);
  if (*&self->_has)
  {
    if ((*(v4 + 40) & 1) == 0 || self->_channelOwnershipType != *(v4 + 6))
    {
      goto LABEL_13;
    }
  }

  else if (*(v4 + 40))
  {
LABEL_13:
    v9 = 0;
    goto LABEL_14;
  }

  adopter = self->_adopter;
  if (adopter | *(v4 + 1))
  {
    v9 = [(NSString *)adopter isEqual:?];
  }

  else
  {
    v9 = 1;
  }

LABEL_14:

  return v9;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_channelTopic hash];
  v4 = [(AuthCredential *)self->_authCredential hash];
  if (*&self->_has)
  {
    v5 = 2654435761 * self->_channelOwnershipType;
  }

  else
  {
    v5 = 0;
  }

  return v4 ^ v3 ^ v5 ^ [(NSString *)self->_adopter hash];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (*(v4 + 4))
  {
    [(SharedChannelCreateRequest *)self setChannelTopic:?];
    v4 = v7;
  }

  authCredential = self->_authCredential;
  v6 = *(v4 + 2);
  if (authCredential)
  {
    if (!v6)
    {
      goto LABEL_9;
    }

    [(AuthCredential *)authCredential mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_9;
    }

    [(SharedChannelCreateRequest *)self setAuthCredential:?];
  }

  v4 = v7;
LABEL_9:
  if (v4[10])
  {
    self->_channelOwnershipType = v4[6];
    *&self->_has |= 1u;
  }

  if (*(v4 + 1))
  {
    [(SharedChannelCreateRequest *)self setAdopter:?];
  }

  MEMORY[0x2821F96F8]();
}

@end