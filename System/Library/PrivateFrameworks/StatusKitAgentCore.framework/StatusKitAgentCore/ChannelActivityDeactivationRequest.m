@interface ChannelActivityDeactivationRequest
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation ChannelActivityDeactivationRequest

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = ChannelActivityDeactivationRequest;
  v4 = [(ChannelActivityDeactivationRequest *)&v8 description];
  v5 = [(ChannelActivityDeactivationRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  authCredential = self->_authCredential;
  if (authCredential)
  {
    v5 = [(AuthCredential *)authCredential dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"auth_credential"];
  }

  channelIdentity = self->_channelIdentity;
  if (channelIdentity)
  {
    v7 = [(ChannelIdentity *)channelIdentity dictionaryRepresentation];
    [v3 setObject:v7 forKey:@"channel_identity"];
  }

  uuid = self->_uuid;
  if (uuid)
  {
    [v3 setObject:uuid forKey:@"uuid"];
  }

  if (*&self->_has)
  {
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_clientTimestampSeconds];
    [v3 setObject:v9 forKey:@"client_timestamp_seconds"];
  }

  adopter = self->_adopter;
  if (adopter)
  {
    [v3 setObject:adopter forKey:@"adopter"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_authCredential)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }

  if (self->_channelIdentity)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }

  if (self->_uuid)
  {
    PBDataWriterWriteDataField();
    v4 = v6;
  }

  if (*&self->_has)
  {
    clientTimestampSeconds = self->_clientTimestampSeconds;
    PBDataWriterWriteUint64Field();
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
  if (self->_authCredential)
  {
    [v4 setAuthCredential:?];
    v4 = v5;
  }

  if (self->_channelIdentity)
  {
    [v5 setChannelIdentity:?];
    v4 = v5;
  }

  if (self->_uuid)
  {
    [v5 setUuid:?];
    v4 = v5;
  }

  if (*&self->_has)
  {
    *(v4 + 1) = self->_clientTimestampSeconds;
    *(v4 + 48) |= 1u;
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
  v6 = [(AuthCredential *)self->_authCredential copyWithZone:a3];
  v7 = *(v5 + 24);
  *(v5 + 24) = v6;

  v8 = [(ChannelIdentity *)self->_channelIdentity copyWithZone:a3];
  v9 = *(v5 + 32);
  *(v5 + 32) = v8;

  v10 = [(NSData *)self->_uuid copyWithZone:a3];
  v11 = *(v5 + 40);
  *(v5 + 40) = v10;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_clientTimestampSeconds;
    *(v5 + 48) |= 1u;
  }

  v12 = [(NSString *)self->_adopter copyWithZone:a3];
  v13 = *(v5 + 16);
  *(v5 + 16) = v12;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  authCredential = self->_authCredential;
  if (authCredential | *(v4 + 3))
  {
    if (![(AuthCredential *)authCredential isEqual:?])
    {
      goto LABEL_15;
    }
  }

  channelIdentity = self->_channelIdentity;
  if (channelIdentity | *(v4 + 4))
  {
    if (![(ChannelIdentity *)channelIdentity isEqual:?])
    {
      goto LABEL_15;
    }
  }

  uuid = self->_uuid;
  if (uuid | *(v4 + 5))
  {
    if (![(NSData *)uuid isEqual:?])
    {
      goto LABEL_15;
    }
  }

  v8 = *(v4 + 48);
  if (*&self->_has)
  {
    if ((*(v4 + 48) & 1) == 0 || self->_clientTimestampSeconds != *(v4 + 1))
    {
      goto LABEL_15;
    }
  }

  else if (*(v4 + 48))
  {
LABEL_15:
    v10 = 0;
    goto LABEL_16;
  }

  adopter = self->_adopter;
  if (adopter | *(v4 + 2))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  authCredential = self->_authCredential;
  v6 = v4[3];
  v9 = v4;
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

  v4 = v9;
LABEL_7:
  channelIdentity = self->_channelIdentity;
  v8 = v4[4];
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

  v4 = v9;
LABEL_13:
  if (v4[5])
  {
    [(ChannelActivityDeactivationRequest *)self setUuid:?];
    v4 = v9;
  }

  if (v4[6])
  {
    self->_clientTimestampSeconds = v4[1];
    *&self->_has |= 1u;
  }

  if (v4[2])
  {
    [(ChannelActivityDeactivationRequest *)self setAdopter:?];
  }

  MEMORY[0x2821F96F8]();
}

@end