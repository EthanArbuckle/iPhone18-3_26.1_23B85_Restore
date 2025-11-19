@interface AWDIDSWiProxDidSendData
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasTimestamp:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDIDSWiProxDidSendData

- (void)setHasTimestamp:(BOOL)a3
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
  v3.super_class = AWDIDSWiProxDidSendData;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDIDSWiProxDidSendData description](&v3, sel_description), -[AWDIDSWiProxDidSendData dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x29EDB8E00] dictionary];
  has = self->_has;
  if ((has & 2) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
    has = self->_has;
  }

  if (has)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_resultCode), @"resultCode"}];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  has = self->_has;
  if ((has & 2) != 0)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    has = self->_has;
  }

  if (has)
  {
    resultCode = self->_resultCode;

    PBDataWriterWriteUint64Field();
  }
}

- (void)copyTo:(id)a3
{
  if ((*&self->_has & 2) == 0)
  {
    if ((*&self->_has & 1) == 0)
    {
      return;
    }

LABEL_5:
    *(a3 + 1) = self->_resultCode;
    *(a3 + 24) |= 1u;
    return;
  }

  *(a3 + 2) = self->_timestamp;
  *(a3 + 24) |= 2u;
  if (*&self->_has)
  {
    goto LABEL_5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(result + 2) = self->_timestamp;
    *(result + 24) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(result + 1) = self->_resultCode;
    *(result + 24) |= 1u;
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    if ((*&self->_has & 2) != 0)
    {
      if ((*(a3 + 24) & 2) == 0 || self->_timestamp != *(a3 + 2))
      {
        goto LABEL_11;
      }
    }

    else if ((*(a3 + 24) & 2) != 0)
    {
LABEL_11:
      LOBYTE(v5) = 0;
      return v5;
    }

    LOBYTE(v5) = (*(a3 + 24) & 1) == 0;
    if (*&self->_has)
    {
      if ((*(a3 + 24) & 1) == 0 || self->_resultCode != *(a3 + 1))
      {
        goto LABEL_11;
      }

      LOBYTE(v5) = 1;
    }
  }

  return v5;
}

- (unint64_t)hash
{
  if ((*&self->_has & 2) != 0)
  {
    v2 = 2654435761u * self->_timestamp;
    if (*&self->_has)
    {
      goto LABEL_3;
    }

LABEL_5:
    v3 = 0;
    return v3 ^ v2;
  }

  v2 = 0;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v3 = 2654435761u * self->_resultCode;
  return v3 ^ v2;
}

- (void)mergeFrom:(id)a3
{
  if ((*(a3 + 24) & 2) == 0)
  {
    if ((*(a3 + 24) & 1) == 0)
    {
      return;
    }

LABEL_5:
    self->_resultCode = *(a3 + 1);
    *&self->_has |= 1u;
    return;
  }

  self->_timestamp = *(a3 + 2);
  *&self->_has |= 2u;
  if (*(a3 + 24))
  {
    goto LABEL_5;
  }
}

@end