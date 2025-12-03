@interface ChannelActivityUpdate
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasPrevVersion:(BOOL)version;
- (void)writeTo:(id)to;
@end

@implementation ChannelActivityUpdate

- (void)setHasPrevVersion:(BOOL)version
{
  if (version)
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
  dictionaryRepresentation = [(ChannelActivityUpdate *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if (has)
  {
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_currentVersion];
    [dictionary setObject:v5 forKey:@"current_version"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_prevVersion];
    [dictionary setObject:v6 forKey:@"prev_version"];
  }

  encryptedUpdatePayload = self->_encryptedUpdatePayload;
  if (encryptedUpdatePayload)
  {
    [dictionary setObject:encryptedUpdatePayload forKey:@"encrypted_update_payload"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  v8 = toCopy;
  if (has)
  {
    currentVersion = self->_currentVersion;
    PBDataWriterWriteUint64Field();
    toCopy = v8;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    prevVersion = self->_prevVersion;
    PBDataWriterWriteUint64Field();
    toCopy = v8;
  }

  if (self->_encryptedUpdatePayload)
  {
    PBDataWriterWriteDataField();
    toCopy = v8;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if (has)
  {
    toCopy[1] = self->_currentVersion;
    *(toCopy + 32) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    toCopy[2] = self->_prevVersion;
    *(toCopy + 32) |= 2u;
  }

  if (self->_encryptedUpdatePayload)
  {
    v6 = toCopy;
    [toCopy setEncryptedUpdatePayload:?];
    toCopy = v6;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
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

  v8 = [(NSData *)self->_encryptedUpdatePayload copyWithZone:zone];
  v9 = v6[3];
  v6[3] = v8;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_14;
  }

  v5 = *(equalCopy + 32);
  if (*&self->_has)
  {
    if ((*(equalCopy + 32) & 1) == 0 || self->_currentVersion != *(equalCopy + 1))
    {
      goto LABEL_14;
    }
  }

  else if (*(equalCopy + 32))
  {
LABEL_14:
    v7 = 0;
    goto LABEL_15;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 32) & 2) == 0 || self->_prevVersion != *(equalCopy + 2))
    {
      goto LABEL_14;
    }
  }

  else if ((*(equalCopy + 32) & 2) != 0)
  {
    goto LABEL_14;
  }

  encryptedUpdatePayload = self->_encryptedUpdatePayload;
  if (encryptedUpdatePayload | *(equalCopy + 3))
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = *(fromCopy + 32);
  if (v5)
  {
    self->_currentVersion = *(fromCopy + 1);
    *&self->_has |= 1u;
    v5 = *(fromCopy + 32);
  }

  if ((v5 & 2) != 0)
  {
    self->_prevVersion = *(fromCopy + 2);
    *&self->_has |= 2u;
  }

  if (*(fromCopy + 3))
  {
    v6 = fromCopy;
    [(ChannelActivityUpdate *)self setEncryptedUpdatePayload:?];
    fromCopy = v6;
  }
}

@end