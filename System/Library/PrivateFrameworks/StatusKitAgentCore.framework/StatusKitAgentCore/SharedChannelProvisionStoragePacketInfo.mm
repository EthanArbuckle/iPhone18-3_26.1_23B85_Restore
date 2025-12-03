@interface SharedChannelProvisionStoragePacketInfo
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation SharedChannelProvisionStoragePacketInfo

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = SharedChannelProvisionStoragePacketInfo;
  v4 = [(SharedChannelProvisionStoragePacketInfo *)&v8 description];
  dictionaryRepresentation = [(SharedChannelProvisionStoragePacketInfo *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_packetId];
    [dictionary setObject:v4 forKey:@"packet_id"];
  }

  encryptedPacket = self->_encryptedPacket;
  if (encryptedPacket)
  {
    [dictionary setObject:encryptedPacket forKey:@"encrypted_packet"];
  }

  channelTopicCommitment = self->_channelTopicCommitment;
  if (channelTopicCommitment)
  {
    [dictionary setObject:channelTopicCommitment forKey:@"channel_topic_commitment"];
  }

  initializationVector = self->_initializationVector;
  if (initializationVector)
  {
    [dictionary setObject:initializationVector forKey:@"initialization_vector"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (*&self->_has)
  {
    packetId = self->_packetId;
    PBDataWriterWriteUint64Field();
    toCopy = v6;
  }

  if (self->_encryptedPacket)
  {
    PBDataWriterWriteDataField();
    toCopy = v6;
  }

  if (self->_channelTopicCommitment)
  {
    PBDataWriterWriteDataField();
    toCopy = v6;
  }

  if (self->_initializationVector)
  {
    PBDataWriterWriteDataField();
    toCopy = v6;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    toCopy[1] = self->_packetId;
    *(toCopy + 40) |= 1u;
  }

  v5 = toCopy;
  if (self->_encryptedPacket)
  {
    [toCopy setEncryptedPacket:?];
    toCopy = v5;
  }

  if (self->_channelTopicCommitment)
  {
    [v5 setChannelTopicCommitment:?];
    toCopy = v5;
  }

  if (self->_initializationVector)
  {
    [v5 setInitializationVector:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 8) = self->_packetId;
    *(v5 + 40) |= 1u;
  }

  v7 = [(NSData *)self->_encryptedPacket copyWithZone:zone];
  v8 = v6[3];
  v6[3] = v7;

  v9 = [(NSData *)self->_channelTopicCommitment copyWithZone:zone];
  v10 = v6[2];
  v6[2] = v9;

  v11 = [(NSData *)self->_initializationVector copyWithZone:zone];
  v12 = v6[4];
  v6[4] = v11;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_13;
  }

  v5 = *(equalCopy + 40);
  if (*&self->_has)
  {
    if ((*(equalCopy + 40) & 1) == 0 || self->_packetId != *(equalCopy + 1))
    {
      goto LABEL_13;
    }
  }

  else if (*(equalCopy + 40))
  {
LABEL_13:
    v9 = 0;
    goto LABEL_14;
  }

  encryptedPacket = self->_encryptedPacket;
  if (encryptedPacket | *(equalCopy + 3) && ![(NSData *)encryptedPacket isEqual:?])
  {
    goto LABEL_13;
  }

  channelTopicCommitment = self->_channelTopicCommitment;
  if (channelTopicCommitment | *(equalCopy + 2))
  {
    if (![(NSData *)channelTopicCommitment isEqual:?])
    {
      goto LABEL_13;
    }
  }

  initializationVector = self->_initializationVector;
  if (initializationVector | *(equalCopy + 4))
  {
    v9 = [(NSData *)initializationVector isEqual:?];
  }

  else
  {
    v9 = 1;
  }

LABEL_14:

  return v9;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761u * self->_packetId;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSData *)self->_encryptedPacket hash]^ v3;
  v5 = [(NSData *)self->_channelTopicCommitment hash];
  return v4 ^ v5 ^ [(NSData *)self->_initializationVector hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (fromCopy[5])
  {
    self->_packetId = fromCopy[1];
    *&self->_has |= 1u;
  }

  v5 = fromCopy;
  if (fromCopy[3])
  {
    [(SharedChannelProvisionStoragePacketInfo *)self setEncryptedPacket:?];
    fromCopy = v5;
  }

  if (fromCopy[2])
  {
    [(SharedChannelProvisionStoragePacketInfo *)self setChannelTopicCommitment:?];
    fromCopy = v5;
  }

  if (fromCopy[4])
  {
    [(SharedChannelProvisionStoragePacketInfo *)self setInitializationVector:?];
    fromCopy = v5;
  }
}

@end