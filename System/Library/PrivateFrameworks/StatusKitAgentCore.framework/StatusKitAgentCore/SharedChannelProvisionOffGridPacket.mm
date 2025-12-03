@interface SharedChannelProvisionOffGridPacket
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation SharedChannelProvisionOffGridPacket

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = SharedChannelProvisionOffGridPacket;
  v4 = [(SharedChannelProvisionOffGridPacket *)&v8 description];
  dictionaryRepresentation = [(SharedChannelProvisionOffGridPacket *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  publishPayload = self->_publishPayload;
  if (publishPayload)
  {
    [dictionary setObject:publishPayload forKey:@"publish_payload"];
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

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_publishPayload)
  {
    PBDataWriterWriteDataField();
    toCopy = v5;
  }

  if (self->_channelTopic)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_channelId)
  {
    PBDataWriterWriteDataField();
    toCopy = v5;
  }

  if (self->_commitmentSalt)
  {
    PBDataWriterWriteDataField();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_publishPayload)
  {
    [toCopy setPublishPayload:?];
    toCopy = v5;
  }

  if (self->_channelTopic)
  {
    [v5 setChannelTopic:?];
    toCopy = v5;
  }

  if (self->_channelId)
  {
    [v5 setChannelId:?];
    toCopy = v5;
  }

  if (self->_commitmentSalt)
  {
    [v5 setCommitmentSalt:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSData *)self->_publishPayload copyWithZone:zone];
  v7 = v5[4];
  v5[4] = v6;

  v8 = [(NSString *)self->_channelTopic copyWithZone:zone];
  v9 = v5[2];
  v5[2] = v8;

  v10 = [(NSData *)self->_channelId copyWithZone:zone];
  v11 = v5[1];
  v5[1] = v10;

  v12 = [(NSData *)self->_commitmentSalt copyWithZone:zone];
  v13 = v5[3];
  v5[3] = v12;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((publishPayload = self->_publishPayload, !(publishPayload | equalCopy[4])) || -[NSData isEqual:](publishPayload, "isEqual:")) && ((channelTopic = self->_channelTopic, !(channelTopic | equalCopy[2])) || -[NSString isEqual:](channelTopic, "isEqual:")) && ((channelId = self->_channelId, !(channelId | equalCopy[1])) || -[NSData isEqual:](channelId, "isEqual:")))
  {
    commitmentSalt = self->_commitmentSalt;
    if (commitmentSalt | equalCopy[3])
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (fromCopy[4])
  {
    [(SharedChannelProvisionOffGridPacket *)self setPublishPayload:?];
  }

  if (fromCopy[2])
  {
    [(SharedChannelProvisionOffGridPacket *)self setChannelTopic:?];
  }

  if (fromCopy[1])
  {
    [(SharedChannelProvisionOffGridPacket *)self setChannelId:?];
  }

  if (fromCopy[3])
  {
    [(SharedChannelProvisionOffGridPacket *)self setCommitmentSalt:?];
  }
}

@end