@interface SharedChannelProvisionStoragePacketInfo
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation SharedChannelProvisionStoragePacketInfo

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = SharedChannelProvisionStoragePacketInfo;
  v4 = [(SharedChannelProvisionStoragePacketInfo *)&v8 description];
  v5 = [(SharedChannelProvisionStoragePacketInfo *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_packetId];
    [v3 setObject:v4 forKey:@"packet_id"];
  }

  encryptedPacket = self->_encryptedPacket;
  if (encryptedPacket)
  {
    [v3 setObject:encryptedPacket forKey:@"encrypted_packet"];
  }

  channelTopicCommitment = self->_channelTopicCommitment;
  if (channelTopicCommitment)
  {
    [v3 setObject:channelTopicCommitment forKey:@"channel_topic_commitment"];
  }

  initializationVector = self->_initializationVector;
  if (initializationVector)
  {
    [v3 setObject:initializationVector forKey:@"initialization_vector"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (*&self->_has)
  {
    packetId = self->_packetId;
    PBDataWriterWriteUint64Field();
    v4 = v6;
  }

  if (self->_encryptedPacket)
  {
    PBDataWriterWriteDataField();
    v4 = v6;
  }

  if (self->_channelTopicCommitment)
  {
    PBDataWriterWriteDataField();
    v4 = v6;
  }

  if (self->_initializationVector)
  {
    PBDataWriterWriteDataField();
    v4 = v6;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (*&self->_has)
  {
    v4[1] = self->_packetId;
    *(v4 + 40) |= 1u;
  }

  v5 = v4;
  if (self->_encryptedPacket)
  {
    [v4 setEncryptedPacket:?];
    v4 = v5;
  }

  if (self->_channelTopicCommitment)
  {
    [v5 setChannelTopicCommitment:?];
    v4 = v5;
  }

  if (self->_initializationVector)
  {
    [v5 setInitializationVector:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 8) = self->_packetId;
    *(v5 + 40) |= 1u;
  }

  v7 = [(NSData *)self->_encryptedPacket copyWithZone:a3];
  v8 = v6[3];
  v6[3] = v7;

  v9 = [(NSData *)self->_channelTopicCommitment copyWithZone:a3];
  v10 = v6[2];
  v6[2] = v9;

  v11 = [(NSData *)self->_initializationVector copyWithZone:a3];
  v12 = v6[4];
  v6[4] = v11;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_13;
  }

  v5 = *(v4 + 40);
  if (*&self->_has)
  {
    if ((*(v4 + 40) & 1) == 0 || self->_packetId != *(v4 + 1))
    {
      goto LABEL_13;
    }
  }

  else if (*(v4 + 40))
  {
LABEL_13:
    v9 = 0;
    goto LABEL_14;
  }

  encryptedPacket = self->_encryptedPacket;
  if (encryptedPacket | *(v4 + 3) && ![(NSData *)encryptedPacket isEqual:?])
  {
    goto LABEL_13;
  }

  channelTopicCommitment = self->_channelTopicCommitment;
  if (channelTopicCommitment | *(v4 + 2))
  {
    if (![(NSData *)channelTopicCommitment isEqual:?])
    {
      goto LABEL_13;
    }
  }

  initializationVector = self->_initializationVector;
  if (initializationVector | *(v4 + 4))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (v4[5])
  {
    self->_packetId = v4[1];
    *&self->_has |= 1u;
  }

  v5 = v4;
  if (v4[3])
  {
    [(SharedChannelProvisionStoragePacketInfo *)self setEncryptedPacket:?];
    v4 = v5;
  }

  if (v4[2])
  {
    [(SharedChannelProvisionStoragePacketInfo *)self setChannelTopicCommitment:?];
    v4 = v5;
  }

  if (v4[4])
  {
    [(SharedChannelProvisionStoragePacketInfo *)self setInitializationVector:?];
    v4 = v5;
  }
}

@end