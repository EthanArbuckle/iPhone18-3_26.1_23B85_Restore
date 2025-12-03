@interface SharedChannelProvisionOffGridPacketInfo
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation SharedChannelProvisionOffGridPacketInfo

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = SharedChannelProvisionOffGridPacketInfo;
  v4 = [(SharedChannelProvisionOffGridPacketInfo *)&v8 description];
  dictionaryRepresentation = [(SharedChannelProvisionOffGridPacketInfo *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  packetId = self->_packetId;
  if (packetId)
  {
    [dictionary setObject:packetId forKey:@"packet_id"];
  }

  encryptedPacket = self->_encryptedPacket;
  if (encryptedPacket)
  {
    [v4 setObject:encryptedPacket forKey:@"encrypted_packet"];
  }

  if (*&self->_has)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_packetExpirationTimestampMillis];
    [v4 setObject:v7 forKey:@"packet_expiration_timestamp_millis"];
  }

  commitmentSalt = self->_commitmentSalt;
  if (commitmentSalt)
  {
    [v4 setObject:commitmentSalt forKey:@"commitment_salt"];
  }

  initializationVector = self->_initializationVector;
  if (initializationVector)
  {
    [v4 setObject:initializationVector forKey:@"initialization_vector"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_packetId)
  {
    PBDataWriterWriteDataField();
    toCopy = v6;
  }

  if (self->_encryptedPacket)
  {
    PBDataWriterWriteDataField();
    toCopy = v6;
  }

  if (*&self->_has)
  {
    packetExpirationTimestampMillis = self->_packetExpirationTimestampMillis;
    PBDataWriterWriteUint64Field();
    toCopy = v6;
  }

  if (self->_commitmentSalt)
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
  v5 = toCopy;
  if (self->_packetId)
  {
    [toCopy setPacketId:?];
    toCopy = v5;
  }

  if (self->_encryptedPacket)
  {
    [v5 setEncryptedPacket:?];
    toCopy = v5;
  }

  if (*&self->_has)
  {
    *(toCopy + 1) = self->_packetExpirationTimestampMillis;
    *(toCopy + 48) |= 1u;
  }

  if (self->_commitmentSalt)
  {
    [v5 setCommitmentSalt:?];
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
  v6 = [(NSData *)self->_packetId copyWithZone:zone];
  v7 = *(v5 + 40);
  *(v5 + 40) = v6;

  v8 = [(NSData *)self->_encryptedPacket copyWithZone:zone];
  v9 = *(v5 + 24);
  *(v5 + 24) = v8;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_packetExpirationTimestampMillis;
    *(v5 + 48) |= 1u;
  }

  v10 = [(NSData *)self->_commitmentSalt copyWithZone:zone];
  v11 = *(v5 + 16);
  *(v5 + 16) = v10;

  v12 = [(NSData *)self->_initializationVector copyWithZone:zone];
  v13 = *(v5 + 32);
  *(v5 + 32) = v12;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  packetId = self->_packetId;
  if (packetId | *(equalCopy + 5))
  {
    if (![(NSData *)packetId isEqual:?])
    {
      goto LABEL_15;
    }
  }

  encryptedPacket = self->_encryptedPacket;
  if (encryptedPacket | *(equalCopy + 3))
  {
    if (![(NSData *)encryptedPacket isEqual:?])
    {
      goto LABEL_15;
    }
  }

  v7 = *(equalCopy + 48);
  if (*&self->_has)
  {
    if ((*(equalCopy + 48) & 1) == 0 || self->_packetExpirationTimestampMillis != *(equalCopy + 1))
    {
      goto LABEL_15;
    }
  }

  else if (*(equalCopy + 48))
  {
LABEL_15:
    v10 = 0;
    goto LABEL_16;
  }

  commitmentSalt = self->_commitmentSalt;
  if (commitmentSalt | *(equalCopy + 2) && ![(NSData *)commitmentSalt isEqual:?])
  {
    goto LABEL_15;
  }

  initializationVector = self->_initializationVector;
  if (initializationVector | *(equalCopy + 4))
  {
    v10 = [(NSData *)initializationVector isEqual:?];
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
  v3 = [(NSData *)self->_packetId hash];
  v4 = [(NSData *)self->_encryptedPacket hash];
  if (*&self->_has)
  {
    v5 = 2654435761u * self->_packetExpirationTimestampMillis;
  }

  else
  {
    v5 = 0;
  }

  v6 = v4 ^ v3 ^ v5 ^ [(NSData *)self->_commitmentSalt hash];
  return v6 ^ [(NSData *)self->_initializationVector hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (fromCopy[5])
  {
    [(SharedChannelProvisionOffGridPacketInfo *)self setPacketId:?];
    fromCopy = v5;
  }

  if (fromCopy[3])
  {
    [(SharedChannelProvisionOffGridPacketInfo *)self setEncryptedPacket:?];
    fromCopy = v5;
  }

  if (fromCopy[6])
  {
    self->_packetExpirationTimestampMillis = fromCopy[1];
    *&self->_has |= 1u;
  }

  if (fromCopy[2])
  {
    [(SharedChannelProvisionOffGridPacketInfo *)self setCommitmentSalt:?];
    fromCopy = v5;
  }

  if (fromCopy[4])
  {
    [(SharedChannelProvisionOffGridPacketInfo *)self setInitializationVector:?];
    fromCopy = v5;
  }
}

@end