@interface TPPBPeerPermanentInfo
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasEpoch:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation TPPBPeerPermanentInfo

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if ((v4[7] & 2) != 0)
  {
    self->_epoch = v4[2];
    *&self->_has |= 2u;
  }

  v5 = v4;
  if (v4[6])
  {
    [(TPPBPeerPermanentInfo *)self setSigningPubKey:?];
    v4 = v5;
  }

  if (v4[3])
  {
    [(TPPBPeerPermanentInfo *)self setEncryptionPubKey:?];
    v4 = v5;
  }

  if (v4[4])
  {
    [(TPPBPeerPermanentInfo *)self setMachineId:?];
    v4 = v5;
  }

  if (v4[5])
  {
    [(TPPBPeerPermanentInfo *)self setModelId:?];
    v4 = v5;
  }

  if (v4[7])
  {
    self->_creationTime = v4[1];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_19;
  }

  v5 = *(v4 + 56);
  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 56) & 2) == 0 || self->_epoch != *(v4 + 2))
    {
      goto LABEL_19;
    }
  }

  else if ((*(v4 + 56) & 2) != 0)
  {
LABEL_19:
    v10 = 0;
    goto LABEL_20;
  }

  signingPubKey = self->_signingPubKey;
  if (signingPubKey | *(v4 + 6) && ![(NSData *)signingPubKey isEqual:?])
  {
    goto LABEL_19;
  }

  encryptionPubKey = self->_encryptionPubKey;
  if (encryptionPubKey | *(v4 + 3))
  {
    if (![(NSData *)encryptionPubKey isEqual:?])
    {
      goto LABEL_19;
    }
  }

  machineId = self->_machineId;
  if (machineId | *(v4 + 4))
  {
    if (![(NSString *)machineId isEqual:?])
    {
      goto LABEL_19;
    }
  }

  modelId = self->_modelId;
  if (modelId | *(v4 + 5))
  {
    if (![(NSString *)modelId isEqual:?])
    {
      goto LABEL_19;
    }
  }

  v10 = (*(v4 + 56) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 56) & 1) == 0 || self->_creationTime != *(v4 + 1))
    {
      goto LABEL_19;
    }

    v10 = 1;
  }

LABEL_20:

  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if ((*&self->_has & 2) != 0)
  {
    *(v5 + 16) = self->_epoch;
    *(v5 + 56) |= 2u;
  }

  v7 = [(NSData *)self->_signingPubKey copyWithZone:a3];
  v8 = *(v6 + 48);
  *(v6 + 48) = v7;

  v9 = [(NSData *)self->_encryptionPubKey copyWithZone:a3];
  v10 = *(v6 + 24);
  *(v6 + 24) = v9;

  v11 = [(NSString *)self->_machineId copyWithZone:a3];
  v12 = *(v6 + 32);
  *(v6 + 32) = v11;

  v13 = [(NSString *)self->_modelId copyWithZone:a3];
  v14 = *(v6 + 40);
  *(v6 + 40) = v13;

  if (*&self->_has)
  {
    *(v6 + 8) = self->_creationTime;
    *(v6 + 56) |= 1u;
  }

  return v6;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if ((*&self->_has & 2) != 0)
  {
    v4[2] = self->_epoch;
    *(v4 + 56) |= 2u;
  }

  v5 = v4;
  if (self->_signingPubKey)
  {
    [v4 setSigningPubKey:?];
    v4 = v5;
  }

  if (self->_encryptionPubKey)
  {
    [v5 setEncryptionPubKey:?];
    v4 = v5;
  }

  if (self->_machineId)
  {
    [v5 setMachineId:?];
    v4 = v5;
  }

  if (self->_modelId)
  {
    [v5 setModelId:?];
    v4 = v5;
  }

  if (*&self->_has)
  {
    v4[1] = self->_creationTime;
    *(v4 + 56) |= 1u;
  }
}

- (void)writeTo:(id)a3
{
  v6 = a3;
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
  v3 = [MEMORY[0x277CBEB38] dictionary];
  if ((*&self->_has & 2) != 0)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_epoch];
    [v3 setObject:v4 forKey:@"epoch"];
  }

  signingPubKey = self->_signingPubKey;
  if (signingPubKey)
  {
    [v3 setObject:signingPubKey forKey:@"signing_pub_key"];
  }

  encryptionPubKey = self->_encryptionPubKey;
  if (encryptionPubKey)
  {
    [v3 setObject:encryptionPubKey forKey:@"encryption_pub_key"];
  }

  machineId = self->_machineId;
  if (machineId)
  {
    [v3 setObject:machineId forKey:@"machine_id"];
  }

  modelId = self->_modelId;
  if (modelId)
  {
    [v3 setObject:modelId forKey:@"model_id"];
  }

  if (*&self->_has)
  {
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_creationTime];
    [v3 setObject:v9 forKey:@"creation_time"];
  }

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = TPPBPeerPermanentInfo;
  v4 = [(TPPBPeerPermanentInfo *)&v8 description];
  v5 = [(TPPBPeerPermanentInfo *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (void)setHasEpoch:(BOOL)a3
{
  if (a3)
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