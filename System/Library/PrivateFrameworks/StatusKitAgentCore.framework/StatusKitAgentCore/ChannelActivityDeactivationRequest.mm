@interface ChannelActivityDeactivationRequest
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation ChannelActivityDeactivationRequest

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = ChannelActivityDeactivationRequest;
  v4 = [(ChannelActivityDeactivationRequest *)&v8 description];
  dictionaryRepresentation = [(ChannelActivityDeactivationRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  authCredential = self->_authCredential;
  if (authCredential)
  {
    dictionaryRepresentation = [(AuthCredential *)authCredential dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"auth_credential"];
  }

  channelIdentity = self->_channelIdentity;
  if (channelIdentity)
  {
    dictionaryRepresentation2 = [(ChannelIdentity *)channelIdentity dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation2 forKey:@"channel_identity"];
  }

  uuid = self->_uuid;
  if (uuid)
  {
    [dictionary setObject:uuid forKey:@"uuid"];
  }

  if (*&self->_has)
  {
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_clientTimestampSeconds];
    [dictionary setObject:v9 forKey:@"client_timestamp_seconds"];
  }

  adopter = self->_adopter;
  if (adopter)
  {
    [dictionary setObject:adopter forKey:@"adopter"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_authCredential)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }

  if (self->_channelIdentity)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }

  if (self->_uuid)
  {
    PBDataWriterWriteDataField();
    toCopy = v6;
  }

  if (*&self->_has)
  {
    clientTimestampSeconds = self->_clientTimestampSeconds;
    PBDataWriterWriteUint64Field();
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
  if (self->_authCredential)
  {
    [toCopy setAuthCredential:?];
    toCopy = v5;
  }

  if (self->_channelIdentity)
  {
    [v5 setChannelIdentity:?];
    toCopy = v5;
  }

  if (self->_uuid)
  {
    [v5 setUuid:?];
    toCopy = v5;
  }

  if (*&self->_has)
  {
    *(toCopy + 1) = self->_clientTimestampSeconds;
    *(toCopy + 48) |= 1u;
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
  v6 = [(AuthCredential *)self->_authCredential copyWithZone:zone];
  v7 = *(v5 + 24);
  *(v5 + 24) = v6;

  v8 = [(ChannelIdentity *)self->_channelIdentity copyWithZone:zone];
  v9 = *(v5 + 32);
  *(v5 + 32) = v8;

  v10 = [(NSData *)self->_uuid copyWithZone:zone];
  v11 = *(v5 + 40);
  *(v5 + 40) = v10;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_clientTimestampSeconds;
    *(v5 + 48) |= 1u;
  }

  v12 = [(NSString *)self->_adopter copyWithZone:zone];
  v13 = *(v5 + 16);
  *(v5 + 16) = v12;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  authCredential = self->_authCredential;
  if (authCredential | *(equalCopy + 3))
  {
    if (![(AuthCredential *)authCredential isEqual:?])
    {
      goto LABEL_15;
    }
  }

  channelIdentity = self->_channelIdentity;
  if (channelIdentity | *(equalCopy + 4))
  {
    if (![(ChannelIdentity *)channelIdentity isEqual:?])
    {
      goto LABEL_15;
    }
  }

  uuid = self->_uuid;
  if (uuid | *(equalCopy + 5))
  {
    if (![(NSData *)uuid isEqual:?])
    {
      goto LABEL_15;
    }
  }

  v8 = *(equalCopy + 48);
  if (*&self->_has)
  {
    if ((*(equalCopy + 48) & 1) == 0 || self->_clientTimestampSeconds != *(equalCopy + 1))
    {
      goto LABEL_15;
    }
  }

  else if (*(equalCopy + 48))
  {
LABEL_15:
    v10 = 0;
    goto LABEL_16;
  }

  adopter = self->_adopter;
  if (adopter | *(equalCopy + 2))
  {
    v10 = [(NSString *)adopter isEqual:?];
  }

  else
  {
    v10 = 1;
  }

LABEL_16:

  return v10;
}

- (unint64_t)hash
{
  v3 = [(AuthCredential *)self->_authCredential hash];
  v4 = [(ChannelIdentity *)self->_channelIdentity hash];
  v5 = [(NSData *)self->_uuid hash];
  if (*&self->_has)
  {
    v6 = 2654435761u * self->_clientTimestampSeconds;
  }

  else
  {
    v6 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ [(NSString *)self->_adopter hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  authCredential = self->_authCredential;
  v6 = fromCopy[3];
  v9 = fromCopy;
  if (authCredential)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(AuthCredential *)authCredential mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(ChannelActivityDeactivationRequest *)self setAuthCredential:?];
  }

  fromCopy = v9;
LABEL_7:
  channelIdentity = self->_channelIdentity;
  v8 = fromCopy[4];
  if (channelIdentity)
  {
    if (!v8)
    {
      goto LABEL_13;
    }

    [(ChannelIdentity *)channelIdentity mergeFrom:?];
  }

  else
  {
    if (!v8)
    {
      goto LABEL_13;
    }

    [(ChannelActivityDeactivationRequest *)self setChannelIdentity:?];
  }

  fromCopy = v9;
LABEL_13:
  if (fromCopy[5])
  {
    [(ChannelActivityDeactivationRequest *)self setUuid:?];
    fromCopy = v9;
  }

  if (fromCopy[6])
  {
    self->_clientTimestampSeconds = fromCopy[1];
    *&self->_has |= 1u;
  }

  if (fromCopy[2])
  {
    [(ChannelActivityDeactivationRequest *)self setAdopter:?];
  }

  MEMORY[0x2821F96F8]();
}

@end