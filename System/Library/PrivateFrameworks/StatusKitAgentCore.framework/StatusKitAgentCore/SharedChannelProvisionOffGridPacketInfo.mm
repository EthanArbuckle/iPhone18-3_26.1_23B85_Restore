@interface SharedChannelProvisionOffGridPacketInfo
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation SharedChannelProvisionOffGridPacketInfo

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = SharedChannelProvisionOffGridPacketInfo;
  v4 = [(SharedChannelProvisionOffGridPacketInfo *)&v8 description];
  v5 = [(SharedChannelProvisionOffGridPacketInfo *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  packetId = self->_packetId;
  if (packetId)
  {
    [v3 setObject:packetId forKey:@"packet_id"];
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

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_packetId)
  {
    PBDataWriterWriteDataField();
    v4 = v6;
  }

  if (self->_encryptedPacket)
  {
    PBDataWriterWriteDataField();
    v4 = v6;
  }

  if (*&self->_has)
  {
    packetExpirationTimestampMillis = self->_packetExpirationTimestampMillis;
    PBDataWriterWriteUint64Field();
    v4 = v6;
  }

  if (self->_commitmentSalt)
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
  v5 = v4;
  if (self->_packetId)
  {
    [v4 setPacketId:?];
    v4 = v5;
  }

  if (self->_encryptedPacket)
  {
    [v5 setEncryptedPacket:?];
    v4 = v5;
  }

  if (*&self->_has)
  {
    *(v4 + 1) = self->_packetExpirationTimestampMillis;
    *(v4 + 48) |= 1u;
  }

  if (self->_commitmentSalt)
  {
    [v5 setCommitmentSalt:?];
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
  v6 = [(NSData *)self->_packetId copyWithZone:a3];
  v7 = *(v5 + 40);
  *(v5 + 40) = v6;

  v8 = [(NSData *)self->_encryptedPacket copyWithZone:a3];
  v9 = *(v5 + 24);
  *(v5 + 24) = v8;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_packetExpirationTimestampMillis;
    *(v5 + 48) |= 1u;
  }

  v10 = [(NSData *)self->_commitmentSalt copyWithZone:a3];
  v11 = *(v5 + 16);
  *(v5 + 16) = v10;

  v12 = [(NSData *)self->_initializationVector copyWithZone:a3];
  v13 = *(v5 + 32);
  *(v5 + 32) = v12;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  packetId = self->_packetId;
  if (packetId | *(v4 + 5))
  {
    if (![(NSData *)packetId isEqual:?])
    {
      goto LABEL_15;
    }
  }

  encryptedPacket = self->_encryptedPacket;
  if (encryptedPacket | *(v4 + 3))
  {
    if (![(NSData *)encryptedPacket isEqual:?])
    {
      goto LABEL_15;
    }
  }

  v7 = *(v4 + 48);
  if (*&self->_has)
  {
    if ((*(v4 + 48) & 1) == 0 || self->_packetExpirationTimestampMillis != *(v4 + 1))
    {
      goto LABEL_15;
    }
  }

  else if (*(v4 + 48))
  {
LABEL_15:
    v10 = 0;
    goto LABEL_16;
  }

  commitmentSalt = self->_commitmentSalt;
  if (commitmentSalt | *(v4 + 2) && ![(NSData *)commitmentSalt isEqual:?])
  {
    goto LABEL_15;
  }

  initializationVector = self->_initializationVector;
  if (initializationVector | *(v4 + 4))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4[5])
  {
    [(SharedChannelProvisionOffGridPacketInfo *)self setPacketId:?];
    v4 = v5;
  }

  if (v4[3])
  {
    [(SharedChannelProvisionOffGridPacketInfo *)self setEncryptedPacket:?];
    v4 = v5;
  }

  if (v4[6])
  {
    self->_packetExpirationTimestampMillis = v4[1];
    *&self->_has |= 1u;
  }

  if (v4[2])
  {
    [(SharedChannelProvisionOffGridPacketInfo *)self setCommitmentSalt:?];
    v4 = v5;
  }

  if (v4[4])
  {
    [(SharedChannelProvisionOffGridPacketInfo *)self setInitializationVector:?];
    v4 = v5;
  }
}

@end