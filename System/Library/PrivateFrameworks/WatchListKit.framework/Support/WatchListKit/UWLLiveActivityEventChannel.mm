@interface UWLLiveActivityEventChannel
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation UWLLiveActivityEventChannel

- (id)description
{
  v7.receiver = self;
  v7.super_class = UWLLiveActivityEventChannel;
  v3 = [(UWLLiveActivityEventChannel *)&v7 description];
  dictionaryRepresentation = [(UWLLiveActivityEventChannel *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  channelCanonicalId = self->_channelCanonicalId;
  if (channelCanonicalId)
  {
    [v3 setObject:channelCanonicalId forKey:@"channel_canonical_id"];
  }

  channelBrandId = self->_channelBrandId;
  if (channelBrandId)
  {
    [v4 setObject:channelBrandId forKey:@"channel_brand_id"];
  }

  channelExternalLiveServiceId = self->_channelExternalLiveServiceId;
  if (channelExternalLiveServiceId)
  {
    [v4 setObject:channelExternalLiveServiceId forKey:@"channel_external_live_service_id"];
  }

  channelInternalLegId = self->_channelInternalLegId;
  if (channelInternalLegId)
  {
    [v4 setObject:channelInternalLegId forKey:@"channel_internal_leg_id"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_channelCanonicalId)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_channelBrandId)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_channelExternalLiveServiceId)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_channelInternalLegId)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_channelCanonicalId)
  {
    [toCopy setChannelCanonicalId:?];
    toCopy = v5;
  }

  if (self->_channelBrandId)
  {
    [v5 setChannelBrandId:?];
    toCopy = v5;
  }

  if (self->_channelExternalLiveServiceId)
  {
    [v5 setChannelExternalLiveServiceId:?];
    toCopy = v5;
  }

  if (self->_channelInternalLegId)
  {
    [v5 setChannelInternalLegId:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_channelCanonicalId copyWithZone:zone];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSString *)self->_channelBrandId copyWithZone:zone];
  v9 = v5[1];
  v5[1] = v8;

  v10 = [(NSString *)self->_channelExternalLiveServiceId copyWithZone:zone];
  v11 = v5[3];
  v5[3] = v10;

  v12 = [(NSString *)self->_channelInternalLegId copyWithZone:zone];
  v13 = v5[4];
  v5[4] = v12;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((channelCanonicalId = self->_channelCanonicalId, !(channelCanonicalId | equalCopy[2])) || -[NSString isEqual:](channelCanonicalId, "isEqual:")) && ((channelBrandId = self->_channelBrandId, !(channelBrandId | equalCopy[1])) || -[NSString isEqual:](channelBrandId, "isEqual:")) && ((channelExternalLiveServiceId = self->_channelExternalLiveServiceId, !(channelExternalLiveServiceId | equalCopy[3])) || -[NSString isEqual:](channelExternalLiveServiceId, "isEqual:")))
  {
    channelInternalLegId = self->_channelInternalLegId;
    if (channelInternalLegId | equalCopy[4])
    {
      v9 = [(NSString *)channelInternalLegId isEqual:?];
    }

    else
    {
      v9 = 1;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_channelCanonicalId hash];
  v4 = [(NSString *)self->_channelBrandId hash]^ v3;
  v5 = [(NSString *)self->_channelExternalLiveServiceId hash];
  return v4 ^ v5 ^ [(NSString *)self->_channelInternalLegId hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (fromCopy[2])
  {
    [(UWLLiveActivityEventChannel *)self setChannelCanonicalId:?];
  }

  if (fromCopy[1])
  {
    [(UWLLiveActivityEventChannel *)self setChannelBrandId:?];
  }

  if (fromCopy[3])
  {
    [(UWLLiveActivityEventChannel *)self setChannelExternalLiveServiceId:?];
  }

  if (fromCopy[4])
  {
    [(UWLLiveActivityEventChannel *)self setChannelInternalLegId:?];
  }
}

@end