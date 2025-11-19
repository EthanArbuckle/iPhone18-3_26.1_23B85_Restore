@interface SharedChannelProvisionOffGridPayloadRequest
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation SharedChannelProvisionOffGridPayloadRequest

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = SharedChannelProvisionOffGridPayloadRequest;
  v4 = [(SharedChannelProvisionOffGridPayloadRequest *)&v8 description];
  v5 = [(SharedChannelProvisionOffGridPayloadRequest *)self dictionaryRepresentation];
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

  channelDeferredPublishInfo = self->_channelDeferredPublishInfo;
  if (channelDeferredPublishInfo)
  {
    v7 = [(ChannelDeferredPublishInfo *)channelDeferredPublishInfo dictionaryRepresentation];
    [v3 setObject:v7 forKey:@"channel_deferred_publish_info"];
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

  if (self->_channelDeferredPublishInfo)
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

  if (self->_channelDeferredPublishInfo)
  {
    [v5 setChannelDeferredPublishInfo:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(AuthCredential *)self->_authCredential copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(ChannelDeferredPublishInfo *)self->_channelDeferredPublishInfo copyWithZone:a3];
  v9 = v5[2];
  v5[2] = v8;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((authCredential = self->_authCredential, !(authCredential | v4[1])) || -[AuthCredential isEqual:](authCredential, "isEqual:")))
  {
    channelDeferredPublishInfo = self->_channelDeferredPublishInfo;
    if (channelDeferredPublishInfo | v4[2])
    {
      v7 = [(ChannelDeferredPublishInfo *)channelDeferredPublishInfo isEqual:?];
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

    [(SharedChannelProvisionOffGridPayloadRequest *)self setAuthCredential:?];
  }

  v4 = v9;
LABEL_7:
  channelDeferredPublishInfo = self->_channelDeferredPublishInfo;
  v8 = v4[2];
  if (channelDeferredPublishInfo)
  {
    if (v8)
    {
      [(ChannelDeferredPublishInfo *)channelDeferredPublishInfo mergeFrom:?];
    }
  }

  else if (v8)
  {
    [(SharedChannelProvisionOffGridPayloadRequest *)self setChannelDeferredPublishInfo:?];
  }

  MEMORY[0x2821F96F8]();
}

@end