@interface SharedChannelPublishRequest
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation SharedChannelPublishRequest

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = SharedChannelPublishRequest;
  v4 = [(SharedChannelPublishRequest *)&v8 description];
  dictionaryRepresentation = [(SharedChannelPublishRequest *)self dictionaryRepresentation];
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

  channelPublishPayload = self->_channelPublishPayload;
  if (channelPublishPayload)
  {
    dictionaryRepresentation2 = [(ChannelPublishPayload *)channelPublishPayload dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation2 forKey:@"channel_publish_payload"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_authCredential)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_channelPublishPayload)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
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

  if (self->_channelPublishPayload)
  {
    [v5 setChannelPublishPayload:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(AuthCredential *)self->_authCredential copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(ChannelPublishPayload *)self->_channelPublishPayload copyWithZone:zone];
  v9 = v5[2];
  v5[2] = v8;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((authCredential = self->_authCredential, !(authCredential | equalCopy[1])) || -[AuthCredential isEqual:](authCredential, "isEqual:")))
  {
    channelPublishPayload = self->_channelPublishPayload;
    if (channelPublishPayload | equalCopy[2])
    {
      v7 = [(ChannelPublishPayload *)channelPublishPayload isEqual:?];
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  authCredential = self->_authCredential;
  v6 = fromCopy[1];
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

    [(SharedChannelPublishRequest *)self setAuthCredential:?];
  }

  fromCopy = v9;
LABEL_7:
  channelPublishPayload = self->_channelPublishPayload;
  v8 = fromCopy[2];
  if (channelPublishPayload)
  {
    if (v8)
    {
      [(ChannelPublishPayload *)channelPublishPayload mergeFrom:?];
    }
  }

  else if (v8)
  {
    [(SharedChannelPublishRequest *)self setChannelPublishPayload:?];
  }

  MEMORY[0x2821F96F8]();
}

@end