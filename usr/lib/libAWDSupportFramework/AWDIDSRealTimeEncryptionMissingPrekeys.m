@interface AWDIDSRealTimeEncryptionMissingPrekeys
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)setHasMissingPrekeys:(BOOL)a3;
- (void)setHasTimestamp:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDIDSRealTimeEncryptionMissingPrekeys

- (void)dealloc
{
  [(AWDIDSRealTimeEncryptionMissingPrekeys *)self setServiceName:0];
  v3.receiver = self;
  v3.super_class = AWDIDSRealTimeEncryptionMissingPrekeys;
  [(AWDIDSRealTimeEncryptionMissingPrekeys *)&v3 dealloc];
}

- (void)setHasTimestamp:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasMissingPrekeys:(BOOL)a3
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

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDIDSRealTimeEncryptionMissingPrekeys;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDIDSRealTimeEncryptionMissingPrekeys description](&v3, sel_description), -[AWDIDSRealTimeEncryptionMissingPrekeys dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x29EDB8E00] dictionary];
  if ((*&self->_has & 4) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
  }

  serviceName = self->_serviceName;
  if (serviceName)
  {
    [v3 setObject:serviceName forKey:@"serviceName"];
  }

  has = self->_has;
  if (has)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_activeParticipants), @"activeParticipants"}];
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_missingPrekeys), @"missingPrekeys"}];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  if ((*&self->_has & 4) != 0)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
  }

  if (self->_serviceName)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if (has)
  {
    activeParticipants = self->_activeParticipants;
    PBDataWriterWriteUint64Field();
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    missingPrekeys = self->_missingPrekeys;

    PBDataWriterWriteUint64Field();
  }
}

- (void)copyTo:(id)a3
{
  if ((*&self->_has & 4) != 0)
  {
    *(a3 + 3) = self->_timestamp;
    *(a3 + 40) |= 4u;
  }

  if (self->_serviceName)
  {
    [a3 setServiceName:?];
  }

  has = self->_has;
  if (has)
  {
    *(a3 + 1) = self->_activeParticipants;
    *(a3 + 40) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(a3 + 2) = self->_missingPrekeys;
    *(a3 + 40) |= 2u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if ((*&self->_has & 4) != 0)
  {
    *(v5 + 24) = self->_timestamp;
    *(v5 + 40) |= 4u;
  }

  *(v6 + 32) = [(NSString *)self->_serviceName copyWithZone:a3];
  has = self->_has;
  if (has)
  {
    *(v6 + 8) = self->_activeParticipants;
    *(v6 + 40) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v6 + 16) = self->_missingPrekeys;
    *(v6 + 40) |= 2u;
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    has = self->_has;
    v7 = *(a3 + 40);
    if ((has & 4) != 0)
    {
      if ((*(a3 + 40) & 4) == 0 || self->_timestamp != *(a3 + 3))
      {
        goto LABEL_19;
      }
    }

    else if ((*(a3 + 40) & 4) != 0)
    {
LABEL_19:
      LOBYTE(v5) = 0;
      return v5;
    }

    serviceName = self->_serviceName;
    if (serviceName | *(a3 + 4))
    {
      v5 = [(NSString *)serviceName isEqual:?];
      if (!v5)
      {
        return v5;
      }

      has = self->_has;
    }

    if (has)
    {
      if ((*(a3 + 40) & 1) == 0 || self->_activeParticipants != *(a3 + 1))
      {
        goto LABEL_19;
      }
    }

    else if (*(a3 + 40))
    {
      goto LABEL_19;
    }

    LOBYTE(v5) = (*(a3 + 40) & 2) == 0;
    if ((has & 2) != 0)
    {
      if ((*(a3 + 40) & 2) == 0 || self->_missingPrekeys != *(a3 + 2))
      {
        goto LABEL_19;
      }

      LOBYTE(v5) = 1;
    }
  }

  return v5;
}

- (unint64_t)hash
{
  if ((*&self->_has & 4) != 0)
  {
    v3 = 2654435761u * self->_timestamp;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSString *)self->_serviceName hash];
  if (*&self->_has)
  {
    v5 = 2654435761u * self->_activeParticipants;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_6;
    }

LABEL_8:
    v6 = 0;
    return v4 ^ v3 ^ v5 ^ v6;
  }

  v5 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_8;
  }

LABEL_6:
  v6 = 2654435761u * self->_missingPrekeys;
  return v4 ^ v3 ^ v5 ^ v6;
}

- (void)mergeFrom:(id)a3
{
  if ((*(a3 + 40) & 4) != 0)
  {
    self->_timestamp = *(a3 + 3);
    *&self->_has |= 4u;
  }

  if (*(a3 + 4))
  {
    [(AWDIDSRealTimeEncryptionMissingPrekeys *)self setServiceName:?];
  }

  v5 = *(a3 + 40);
  if (v5)
  {
    self->_activeParticipants = *(a3 + 1);
    *&self->_has |= 1u;
    v5 = *(a3 + 40);
  }

  if ((v5 & 2) != 0)
  {
    self->_missingPrekeys = *(a3 + 2);
    *&self->_has |= 2u;
  }
}

@end