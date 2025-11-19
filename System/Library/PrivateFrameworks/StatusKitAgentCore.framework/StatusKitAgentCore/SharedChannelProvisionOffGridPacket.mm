@interface SharedChannelProvisionOffGridPacket
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation SharedChannelProvisionOffGridPacket

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = SharedChannelProvisionOffGridPacket;
  v4 = [(SharedChannelProvisionOffGridPacket *)&v8 description];
  v5 = [(SharedChannelProvisionOffGridPacket *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  publishPayload = self->_publishPayload;
  if (publishPayload)
  {
    [v3 setObject:publishPayload forKey:@"publish_payload"];
  }

  channelTopic = self->_channelTopic;
  if (channelTopic)
  {
    [v4 setObject:channelTopic forKey:@"channel_topic"];
  }

  channelId = self->_channelId;
  if (channelId)
  {
    [v4 setObject:channelId forKey:@"channel_id"];
  }

  commitmentSalt = self->_commitmentSalt;
  if (commitmentSalt)
  {
    [v4 setObject:commitmentSalt forKey:@"commitment_salt"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_publishPayload)
  {
    PBDataWriterWriteDataField();
    v4 = v5;
  }

  if (self->_channelTopic)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_channelId)
  {
    PBDataWriterWriteDataField();
    v4 = v5;
  }

  if (self->_commitmentSalt)
  {
    PBDataWriterWriteDataField();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_publishPayload)
  {
    [v4 setPublishPayload:?];
    v4 = v5;
  }

  if (self->_channelTopic)
  {
    [v5 setChannelTopic:?];
    v4 = v5;
  }

  if (self->_channelId)
  {
    [v5 setChannelId:?];
    v4 = v5;
  }

  if (self->_commitmentSalt)
  {
    [v5 setCommitmentSalt:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSData *)self->_publishPayload copyWithZone:a3];
  v7 = v5[4];
  v5[4] = v6;

  v8 = [(NSString *)self->_channelTopic copyWithZone:a3];
  v9 = v5[2];
  v5[2] = v8;

  v10 = [(NSData *)self->_channelId copyWithZone:a3];
  v11 = v5[1];
  v5[1] = v10;

  v12 = [(NSData *)self->_commitmentSalt copyWithZone:a3];
  v13 = v5[3];
  v5[3] = v12;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((publishPayload = self->_publishPayload, !(publishPayload | v4[4])) || -[NSData isEqual:](publishPayload, "isEqual:")) && ((channelTopic = self->_channelTopic, !(channelTopic | v4[2])) || -[NSString isEqual:](channelTopic, "isEqual:")) && ((channelId = self->_channelId, !(channelId | v4[1])) || -[NSData isEqual:](channelId, "isEqual:")))
  {
    commitmentSalt = self->_commitmentSalt;
    if (commitmentSalt | v4[3])
    {
      v9 = [(NSData *)commitmentSalt isEqual:?];
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
  v3 = [(NSData *)self->_publishPayload hash];
  v4 = [(NSString *)self->_channelTopic hash]^ v3;
  v5 = [(NSData *)self->_channelId hash];
  return v4 ^ v5 ^ [(NSData *)self->_commitmentSalt hash];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (v4[4])
  {
    [(SharedChannelProvisionOffGridPacket *)self setPublishPayload:?];
  }

  if (v4[2])
  {
    [(SharedChannelProvisionOffGridPacket *)self setChannelTopic:?];
  }

  if (v4[1])
  {
    [(SharedChannelProvisionOffGridPacket *)self setChannelId:?];
  }

  if (v4[3])
  {
    [(SharedChannelProvisionOffGridPacket *)self setCommitmentSalt:?];
  }
}

@end