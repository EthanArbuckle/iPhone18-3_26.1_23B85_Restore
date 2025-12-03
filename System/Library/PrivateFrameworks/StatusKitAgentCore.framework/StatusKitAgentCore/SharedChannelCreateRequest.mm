@interface SharedChannelCreateRequest
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
  v8.super_class = SharedChannelCreateRequest;
  v4 = [(SharedChannelCreateRequest *)&v8 description];
  dictionaryRepresentation = [(SharedChannelCreateRequest *)self dictionaryRepresentation];
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

  authCredential = self->_authCredential;
  if (authCredential)
  {
    dictionaryRepresentation = [(AuthCredential *)authCredential dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation forKey:@"auth_credential"];
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

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_channelTopic)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_authCredential)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }

  if (*&self->_has)
  {
    channelOwnershipType = self->_channelOwnershipType;
    PBDataWriterWriteInt32Field();
    toCopy = v6;
  }

  if (self->_adopter)
  {
    PBDataWriterWriteStringField();
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

  if (self->_authCredential)
  {
    [v5 setAuthCredential:?];
    toCopy = v5;
  }

  if (*&self->_has)
  {
    *(toCopy + 6) = self->_channelOwnershipType;
    *(toCopy + 40) |= 1u;
  }

  if (self->_adopter)
  {
    [v5 setAdopter:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_channelTopic copyWithZone:zone];
  v7 = *(v5 + 32);
  *(v5 + 32) = v6;

  v8 = [(AuthCredential *)self->_authCredential copyWithZone:zone];
  v9 = *(v5 + 16);
  *(v5 + 16) = v8;

  if (*&self->_has)
  {
    *(v5 + 24) = self->_channelOwnershipType;
    *(v5 + 40) |= 1u;
  }

  v10 = [(NSString *)self->_adopter copyWithZone:zone];
  v11 = *(v5 + 8);
  *(v5 + 8) = v10;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_13;
  }

  channelTopic = self->_channelTopic;
  if (channelTopic | *(equalCopy + 4))
  {
    if (![(NSString *)channelTopic isEqual:?])
    {
      goto LABEL_13;
    }
  }

  authCredential = self->_authCredential;
  if (authCredential | *(equalCopy + 2))
  {
    if (![(AuthCredential *)authCredential isEqual:?])
    {
      goto LABEL_13;
    }
  }

  v7 = *(equalCopy + 40);
  if (*&self->_has)
  {
    if ((*(equalCopy + 40) & 1) == 0 || self->_channelOwnershipType != *(equalCopy + 6))
    {
      goto LABEL_13;
    }
  }

  else if (*(equalCopy + 40))
  {
LABEL_13:
    v9 = 0;
    goto LABEL_14;
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v7 = fromCopy;
  if (*(fromCopy + 4))
  {
    [(SharedChannelCreateRequest *)self setChannelTopic:?];
    fromCopy = v7;
  }

  authCredential = self->_authCredential;
  v6 = *(fromCopy + 2);
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

  fromCopy = v7;
LABEL_9:
  if (fromCopy[10])
  {
    self->_channelOwnershipType = fromCopy[6];
    *&self->_has |= 1u;
  }

  if (*(fromCopy + 1))
  {
    [(SharedChannelCreateRequest *)self setAdopter:?];
  }

  MEMORY[0x2821F96F8]();
}

@end