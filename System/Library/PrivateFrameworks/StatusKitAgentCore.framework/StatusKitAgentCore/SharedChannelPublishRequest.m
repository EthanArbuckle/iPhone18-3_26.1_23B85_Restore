@interface SharedChannelPublishRequest
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation SharedChannelPublishRequest

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = SharedChannelPublishRequest;
  v4 = [(SharedChannelPublishRequest *)&v8 description];
  v5 = [(SharedChannelPublishRequest *)self dictionaryRepresentation];
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

  channelPublishPayload = self->_channelPublishPayload;
  if (channelPublishPayload)
  {
    v7 = [(ChannelPublishPayload *)channelPublishPayload dictionaryRepresentation];
    [v3 setObject:v7 forKey:@"channel_publish_payload"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_authCredential)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_channelPublishPayload)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
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

  if (self->_channelPublishPayload)
  {
    [v5 setChannelPublishPayload:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(AuthCredential *)self->_authCredential copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(ChannelPublishPayload *)self->_channelPublishPayload copyWithZone:a3];
  v9 = v5[2];
  v5[2] = v8;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((authCredential = self->_authCredential, !(authCredential | v4[1])) || -[AuthCredential isEqual:](authCredential, "isEqual:")))
  {
    channelPublishPayload = self->_channelPublishPayload;
    if (channelPublishPayload | v4[2])
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  authCredential = self->_authCredential;
  v6 = v4[1];
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

    [(SharedChannelPublishRequest *)self setAuthCredential:?];
  }

  v4 = v9;
LABEL_7:
  channelPublishPayload = self->_channelPublishPayload;
  v8 = v4[2];
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