@interface SharedChannelPublishOffGridPayloadRequest
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation SharedChannelPublishOffGridPayloadRequest

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = SharedChannelPublishOffGridPayloadRequest;
  v4 = [(SharedChannelPublishOffGridPayloadRequest *)&v8 description];
  v5 = [(SharedChannelPublishOffGridPayloadRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  encryptionKey = self->_encryptionKey;
  if (encryptionKey)
  {
    [v3 setObject:encryptionKey forKey:@"encryption_key"];
  }

  if (*&self->_has)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_notificationDisplayEpochSeconds];
    [v4 setObject:v6 forKey:@"notification_display_epoch_seconds"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_encryptionKey)
  {
    PBDataWriterWriteDataField();
    v4 = v6;
  }

  if (*&self->_has)
  {
    notificationDisplayEpochSeconds = self->_notificationDisplayEpochSeconds;
    PBDataWriterWriteUint64Field();
    v4 = v6;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (self->_encryptionKey)
  {
    v5 = v4;
    [v4 setEncryptionKey:?];
    v4 = v5;
  }

  if (*&self->_has)
  {
    *(v4 + 1) = self->_notificationDisplayEpochSeconds;
    *(v4 + 24) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSData *)self->_encryptionKey copyWithZone:a3];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_notificationDisplayEpochSeconds;
    *(v5 + 24) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_8;
  }

  encryptionKey = self->_encryptionKey;
  if (encryptionKey | *(v4 + 2))
  {
    if (![(NSData *)encryptionKey isEqual:?])
    {
      goto LABEL_8;
    }
  }

  v6 = (*(v4 + 24) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 24) & 1) != 0 && self->_notificationDisplayEpochSeconds == *(v4 + 1))
    {
      v6 = 1;
      goto LABEL_9;
    }

LABEL_8:
    v6 = 0;
  }

LABEL_9:

  return v6;
}

- (unint64_t)hash
{
  v3 = [(NSData *)self->_encryptionKey hash];
  if (*&self->_has)
  {
    v4 = 2654435761u * self->_notificationDisplayEpochSeconds;
  }

  else
  {
    v4 = 0;
  }

  return v4 ^ v3;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (v4[2])
  {
    v5 = v4;
    [(SharedChannelPublishOffGridPayloadRequest *)self setEncryptionKey:?];
    v4 = v5;
  }

  if (v4[3])
  {
    self->_notificationDisplayEpochSeconds = v4[1];
    *&self->_has |= 1u;
  }
}

@end