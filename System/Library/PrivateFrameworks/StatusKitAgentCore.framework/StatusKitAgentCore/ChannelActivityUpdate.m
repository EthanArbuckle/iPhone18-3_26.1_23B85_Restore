@interface ChannelActivityUpdate
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasPrevVersion:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation ChannelActivityUpdate

- (void)setHasPrevVersion:(BOOL)a3
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
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = ChannelActivityUpdate;
  v4 = [(ChannelActivityUpdate *)&v8 description];
  v5 = [(ChannelActivityUpdate *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if (has)
  {
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_currentVersion];
    [v3 setObject:v5 forKey:@"current_version"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_prevVersion];
    [v3 setObject:v6 forKey:@"prev_version"];
  }

  encryptedUpdatePayload = self->_encryptedUpdatePayload;
  if (encryptedUpdatePayload)
  {
    [v3 setObject:encryptedUpdatePayload forKey:@"encrypted_update_payload"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  v8 = v4;
  if (has)
  {
    currentVersion = self->_currentVersion;
    PBDataWriterWriteUint64Field();
    v4 = v8;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    prevVersion = self->_prevVersion;
    PBDataWriterWriteUint64Field();
    v4 = v8;
  }

  if (self->_encryptedUpdatePayload)
  {
    PBDataWriterWriteDataField();
    v4 = v8;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if (has)
  {
    v4[1] = self->_currentVersion;
    *(v4 + 32) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v4[2] = self->_prevVersion;
    *(v4 + 32) |= 2u;
  }

  if (self->_encryptedUpdatePayload)
  {
    v6 = v4;
    [v4 setEncryptedUpdatePayload:?];
    v4 = v6;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  has = self->_has;
  if (has)
  {
    *(v5 + 8) = self->_currentVersion;
    *(v5 + 32) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v5 + 16) = self->_prevVersion;
    *(v5 + 32) |= 2u;
  }

  v8 = [(NSData *)self->_encryptedUpdatePayload copyWithZone:a3];
  v9 = v6[3];
  v6[3] = v8;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_14;
  }

  v5 = *(v4 + 32);
  if (*&self->_has)
  {
    if ((*(v4 + 32) & 1) == 0 || self->_currentVersion != *(v4 + 1))
    {
      goto LABEL_14;
    }
  }

  else if (*(v4 + 32))
  {
LABEL_14:
    v7 = 0;
    goto LABEL_15;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 32) & 2) == 0 || self->_prevVersion != *(v4 + 2))
    {
      goto LABEL_14;
    }
  }

  else if ((*(v4 + 32) & 2) != 0)
  {
    goto LABEL_14;
  }

  encryptedUpdatePayload = self->_encryptedUpdatePayload;
  if (encryptedUpdatePayload | *(v4 + 3))
  {
    v7 = [(NSData *)encryptedUpdatePayload isEqual:?];
  }

  else
  {
    v7 = 1;
  }

LABEL_15:

  return v7;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v6 = 2654435761u * self->_currentVersion;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v7 = 0;
    return v7 ^ v6 ^ [(NSData *)self->_encryptedUpdatePayload hash:v3];
  }

  v6 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v7 = 2654435761u * self->_prevVersion;
  return v7 ^ v6 ^ [(NSData *)self->_encryptedUpdatePayload hash:v3];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 32);
  if (v5)
  {
    self->_currentVersion = *(v4 + 1);
    *&self->_has |= 1u;
    v5 = *(v4 + 32);
  }

  if ((v5 & 2) != 0)
  {
    self->_prevVersion = *(v4 + 2);
    *&self->_has |= 2u;
  }

  if (*(v4 + 3))
  {
    v6 = v4;
    [(ChannelActivityUpdate *)self setEncryptedUpdatePayload:?];
    v4 = v6;
  }
}

@end