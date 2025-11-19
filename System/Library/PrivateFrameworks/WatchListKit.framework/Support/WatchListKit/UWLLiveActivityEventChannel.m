@interface UWLLiveActivityEventChannel
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation UWLLiveActivityEventChannel

- (id)description
{
  v7.receiver = self;
  v7.super_class = UWLLiveActivityEventChannel;
  v3 = [(UWLLiveActivityEventChannel *)&v7 description];
  v4 = [(UWLLiveActivityEventChannel *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

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

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_channelCanonicalId)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_channelBrandId)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_channelExternalLiveServiceId)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_channelInternalLegId)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_channelCanonicalId)
  {
    [v4 setChannelCanonicalId:?];
    v4 = v5;
  }

  if (self->_channelBrandId)
  {
    [v5 setChannelBrandId:?];
    v4 = v5;
  }

  if (self->_channelExternalLiveServiceId)
  {
    [v5 setChannelExternalLiveServiceId:?];
    v4 = v5;
  }

  if (self->_channelInternalLegId)
  {
    [v5 setChannelInternalLegId:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_channelCanonicalId copyWithZone:a3];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSString *)self->_channelBrandId copyWithZone:a3];
  v9 = v5[1];
  v5[1] = v8;

  v10 = [(NSString *)self->_channelExternalLiveServiceId copyWithZone:a3];
  v11 = v5[3];
  v5[3] = v10;

  v12 = [(NSString *)self->_channelInternalLegId copyWithZone:a3];
  v13 = v5[4];
  v5[4] = v12;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((channelCanonicalId = self->_channelCanonicalId, !(channelCanonicalId | v4[2])) || -[NSString isEqual:](channelCanonicalId, "isEqual:")) && ((channelBrandId = self->_channelBrandId, !(channelBrandId | v4[1])) || -[NSString isEqual:](channelBrandId, "isEqual:")) && ((channelExternalLiveServiceId = self->_channelExternalLiveServiceId, !(channelExternalLiveServiceId | v4[3])) || -[NSString isEqual:](channelExternalLiveServiceId, "isEqual:")))
  {
    channelInternalLegId = self->_channelInternalLegId;
    if (channelInternalLegId | v4[4])
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (v4[2])
  {
    [(UWLLiveActivityEventChannel *)self setChannelCanonicalId:?];
  }

  if (v4[1])
  {
    [(UWLLiveActivityEventChannel *)self setChannelBrandId:?];
  }

  if (v4[3])
  {
    [(UWLLiveActivityEventChannel *)self setChannelExternalLiveServiceId:?];
  }

  if (v4[4])
  {
    [(UWLLiveActivityEventChannel *)self setChannelInternalLegId:?];
  }
}

@end