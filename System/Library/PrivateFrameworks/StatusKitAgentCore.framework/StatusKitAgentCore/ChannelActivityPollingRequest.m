@interface ChannelActivityPollingRequest
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsRequestFlag:(id)a3;
- (int)requestFlag;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation ChannelActivityPollingRequest

- (int)requestFlag
{
  if (*&self->_has)
  {
    return self->_requestFlag;
  }

  else
  {
    return 0;
  }
}

- (int)StringAsRequestFlag:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"NEW_REQUEST"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"REFRESH_REQUEST"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"UPDATE_MISSED"])
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
  v8.super_class = ChannelActivityPollingRequest;
  v4 = [(ChannelActivityPollingRequest *)&v8 description];
  v5 = [(ChannelActivityPollingRequest *)self dictionaryRepresentation];
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

  if (*&self->_has)
  {
    requestFlag = self->_requestFlag;
    if (requestFlag >= 3)
    {
      v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_requestFlag];
    }

    else
    {
      v9 = off_27843DFE8[requestFlag];
    }

    [v3 setObject:v9 forKey:@"request_flag"];
  }

  uuid = self->_uuid;
  if (uuid)
  {
    [v3 setObject:uuid forKey:@"uuid"];
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

  if (*&self->_has)
  {
    requestFlag = self->_requestFlag;
    PBDataWriterWriteInt32Field();
    v4 = v6;
  }

  if (self->_uuid)
  {
    PBDataWriterWriteDataField();
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

  if (*&self->_has)
  {
    *(v4 + 8) = self->_requestFlag;
    *(v4 + 48) |= 1u;
  }

  if (self->_uuid)
  {
    [v5 setUuid:?];
    v4 = v5;
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
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  v8 = [(ChannelIdentity *)self->_channelIdentity copyWithZone:a3];
  v9 = *(v5 + 24);
  *(v5 + 24) = v8;

  if (*&self->_has)
  {
    *(v5 + 32) = self->_requestFlag;
    *(v5 + 48) |= 1u;
  }

  v10 = [(NSData *)self->_uuid copyWithZone:a3];
  v11 = *(v5 + 40);
  *(v5 + 40) = v10;

  v12 = [(NSString *)self->_adopter copyWithZone:a3];
  v13 = *(v5 + 8);
  *(v5 + 8) = v12;

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
  if (authCredential | *(v4 + 2))
  {
    if (![(AuthCredential *)authCredential isEqual:?])
    {
      goto LABEL_15;
    }
  }

  channelIdentity = self->_channelIdentity;
  if (channelIdentity | *(v4 + 3))
  {
    if (![(ChannelIdentity *)channelIdentity isEqual:?])
    {
      goto LABEL_15;
    }
  }

  v7 = *(v4 + 48);
  if (*&self->_has)
  {
    if ((*(v4 + 48) & 1) == 0 || self->_requestFlag != *(v4 + 8))
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

  uuid = self->_uuid;
  if (uuid | *(v4 + 5) && ![(NSData *)uuid isEqual:?])
  {
    goto LABEL_15;
  }

  adopter = self->_adopter;
  if (adopter | *(v4 + 1))
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
  if (*&self->_has)
  {
    v5 = 2654435761 * self->_requestFlag;
  }

  else
  {
    v5 = 0;
  }

  v6 = v4 ^ v3 ^ v5 ^ [(NSData *)self->_uuid hash];
  return v6 ^ [(NSString *)self->_adopter hash];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  authCredential = self->_authCredential;
  v6 = *(v4 + 2);
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

    [(ChannelActivityPollingRequest *)self setAuthCredential:?];
  }

  v4 = v9;
LABEL_7:
  channelIdentity = self->_channelIdentity;
  v8 = *(v4 + 3);
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

    [(ChannelActivityPollingRequest *)self setChannelIdentity:?];
  }

  v4 = v9;
LABEL_13:
  if (*(v4 + 48))
  {
    self->_requestFlag = *(v4 + 8);
    *&self->_has |= 1u;
  }

  if (*(v4 + 5))
  {
    [(ChannelActivityPollingRequest *)self setUuid:?];
    v4 = v9;
  }

  if (*(v4 + 1))
  {
    [(ChannelActivityPollingRequest *)self setAdopter:?];
  }

  MEMORY[0x2821F96F8]();
}

@end