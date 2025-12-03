@interface TPPBPeerPermanentInfo
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasEpoch:(BOOL)epoch;
- (void)writeTo:(id)to;
@end

@implementation TPPBPeerPermanentInfo

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if ((fromCopy[7] & 2) != 0)
  {
    self->_epoch = fromCopy[2];
    *&self->_has |= 2u;
  }

  v5 = fromCopy;
  if (fromCopy[6])
  {
    [(TPPBPeerPermanentInfo *)self setSigningPubKey:?];
    fromCopy = v5;
  }

  if (fromCopy[3])
  {
    [(TPPBPeerPermanentInfo *)self setEncryptionPubKey:?];
    fromCopy = v5;
  }

  if (fromCopy[4])
  {
    [(TPPBPeerPermanentInfo *)self setMachineId:?];
    fromCopy = v5;
  }

  if (fromCopy[5])
  {
    [(TPPBPeerPermanentInfo *)self setModelId:?];
    fromCopy = v5;
  }

  if (fromCopy[7])
  {
    self->_creationTime = fromCopy[1];
    *&self->_has |= 1u;
  }
}

- (unint64_t)hash
{
  if ((*&self->_has & 2) != 0)
  {
    v3 = 2654435761u * self->_epoch;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSData *)self->_signingPubKey hash];
  v5 = [(NSData *)self->_encryptionPubKey hash];
  v6 = [(NSString *)self->_machineId hash];
  v7 = [(NSString *)self->_modelId hash];
  if (*&self->_has)
  {
    v8 = 2654435761u * self->_creationTime;
  }

  else
  {
    v8 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_19;
  }

  v5 = *(equalCopy + 56);
  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 56) & 2) == 0 || self->_epoch != *(equalCopy + 2))
    {
      goto LABEL_19;
    }
  }

  else if ((*(equalCopy + 56) & 2) != 0)
  {
LABEL_19:
    v10 = 0;
    goto LABEL_20;
  }

  signingPubKey = self->_signingPubKey;
  if (signingPubKey | *(equalCopy + 6) && ![(NSData *)signingPubKey isEqual:?])
  {
    goto LABEL_19;
  }

  encryptionPubKey = self->_encryptionPubKey;
  if (encryptionPubKey | *(equalCopy + 3))
  {
    if (![(NSData *)encryptionPubKey isEqual:?])
    {
      goto LABEL_19;
    }
  }

  machineId = self->_machineId;
  if (machineId | *(equalCopy + 4))
  {
    if (![(NSString *)machineId isEqual:?])
    {
      goto LABEL_19;
    }
  }

  modelId = self->_modelId;
  if (modelId | *(equalCopy + 5))
  {
    if (![(NSString *)modelId isEqual:?])
    {
      goto LABEL_19;
    }
  }

  v10 = (*(equalCopy + 56) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 56) & 1) == 0 || self->_creationTime != *(equalCopy + 1))
    {
      goto LABEL_19;
    }

    v10 = 1;
  }

LABEL_20:

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if ((*&self->_has & 2) != 0)
  {
    *(v5 + 16) = self->_epoch;
    *(v5 + 56) |= 2u;
  }

  v7 = [(NSData *)self->_signingPubKey copyWithZone:zone];
  v8 = *(v6 + 48);
  *(v6 + 48) = v7;

  v9 = [(NSData *)self->_encryptionPubKey copyWithZone:zone];
  v10 = *(v6 + 24);
  *(v6 + 24) = v9;

  v11 = [(NSString *)self->_machineId copyWithZone:zone];
  v12 = *(v6 + 32);
  *(v6 + 32) = v11;

  v13 = [(NSString *)self->_modelId copyWithZone:zone];
  v14 = *(v6 + 40);
  *(v6 + 40) = v13;

  if (*&self->_has)
  {
    *(v6 + 8) = self->_creationTime;
    *(v6 + 56) |= 1u;
  }

  return v6;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if ((*&self->_has & 2) != 0)
  {
    toCopy[2] = self->_epoch;
    *(toCopy + 56) |= 2u;
  }

  v5 = toCopy;
  if (self->_signingPubKey)
  {
    [toCopy setSigningPubKey:?];
    toCopy = v5;
  }

  if (self->_encryptionPubKey)
  {
    [v5 setEncryptionPubKey:?];
    toCopy = v5;
  }

  if (self->_machineId)
  {
    [v5 setMachineId:?];
    toCopy = v5;
  }

  if (self->_modelId)
  {
    [v5 setModelId:?];
    toCopy = v5;
  }

  if (*&self->_has)
  {
    toCopy[1] = self->_creationTime;
    *(toCopy + 56) |= 1u;
  }
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if ((*&self->_has & 2) != 0)
  {
    epoch = self->_epoch;
    PBDataWriterWriteUint64Field();
  }

  if (self->_signingPubKey)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_encryptionPubKey)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_machineId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_modelId)
  {
    PBDataWriterWriteStringField();
  }

  if (*&self->_has)
  {
    creationTime = self->_creationTime;
    PBDataWriterWriteUint64Field();
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if ((*&self->_has & 2) != 0)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_epoch];
    [dictionary setObject:v4 forKey:@"epoch"];
  }

  signingPubKey = self->_signingPubKey;
  if (signingPubKey)
  {
    [dictionary setObject:signingPubKey forKey:@"signing_pub_key"];
  }

  encryptionPubKey = self->_encryptionPubKey;
  if (encryptionPubKey)
  {
    [dictionary setObject:encryptionPubKey forKey:@"encryption_pub_key"];
  }

  machineId = self->_machineId;
  if (machineId)
  {
    [dictionary setObject:machineId forKey:@"machine_id"];
  }

  modelId = self->_modelId;
  if (modelId)
  {
    [dictionary setObject:modelId forKey:@"model_id"];
  }

  if (*&self->_has)
  {
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_creationTime];
    [dictionary setObject:v9 forKey:@"creation_time"];
  }

  return dictionary;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = TPPBPeerPermanentInfo;
  v4 = [(TPPBPeerPermanentInfo *)&v8 description];
  dictionaryRepresentation = [(TPPBPeerPermanentInfo *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (void)setHasEpoch:(BOOL)epoch
{
  if (epoch)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

@end