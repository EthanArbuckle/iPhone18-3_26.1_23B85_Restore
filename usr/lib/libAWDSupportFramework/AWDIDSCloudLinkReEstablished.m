@interface AWDIDSCloudLinkReEstablished
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasLinkType:(BOOL)a3;
- (void)setHasPriorLinkType:(BOOL)a3;
- (void)setHasTimestamp:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDIDSCloudLinkReEstablished

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

- (void)setHasLinkType:(BOOL)a3
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

- (void)setHasPriorLinkType:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDIDSCloudLinkReEstablished;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDIDSCloudLinkReEstablished description](&v3, sel_description), -[AWDIDSCloudLinkReEstablished dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x29EDB8E00] dictionary];
  has = self->_has;
  if ((has & 2) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

LABEL_9:
      [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_priorLinkType), @"priorLinkType"}];
      if ((*&self->_has & 1) == 0)
      {
        return v3;
      }

      goto LABEL_5;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_linkType), @"linkType"}];
  has = self->_has;
  if ((has & 8) != 0)
  {
    goto LABEL_9;
  }

LABEL_4:
  if (has)
  {
LABEL_5:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_linkTimeDelta), @"linkTimeDelta"}];
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
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      priorLinkType = self->_priorLinkType;
      PBDataWriterWriteUint32Field();
      if ((*&self->_has & 1) == 0)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  linkType = self->_linkType;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 8) != 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  if ((has & 1) == 0)
  {
    return;
  }

LABEL_9:
  linkTimeDelta = self->_linkTimeDelta;

  PBDataWriterWriteUint64Field();
}

- (void)copyTo:(id)a3
{
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(a3 + 2) = self->_timestamp;
    *(a3 + 32) |= 2u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  *(a3 + 6) = self->_linkType;
  *(a3 + 32) |= 4u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 1) == 0)
    {
      return;
    }

LABEL_9:
    *(a3 + 1) = self->_linkTimeDelta;
    *(a3 + 32) |= 1u;
    return;
  }

LABEL_8:
  *(a3 + 7) = self->_priorLinkType;
  *(a3 + 32) |= 8u;
  if (*&self->_has)
  {
    goto LABEL_9;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(result + 2) = self->_timestamp;
    *(result + 32) |= 2u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  *(result + 6) = self->_linkType;
  *(result + 32) |= 4u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 1) == 0)
    {
      return result;
    }

    goto LABEL_5;
  }

LABEL_9:
  *(result + 7) = self->_priorLinkType;
  *(result + 32) |= 8u;
  if ((*&self->_has & 1) == 0)
  {
    return result;
  }

LABEL_5:
  *(result + 1) = self->_linkTimeDelta;
  *(result + 32) |= 1u;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    if ((*&self->_has & 2) != 0)
    {
      if ((*(a3 + 32) & 2) == 0 || self->_timestamp != *(a3 + 2))
      {
        goto LABEL_21;
      }
    }

    else if ((*(a3 + 32) & 2) != 0)
    {
LABEL_21:
      LOBYTE(v5) = 0;
      return v5;
    }

    if ((*&self->_has & 4) != 0)
    {
      if ((*(a3 + 32) & 4) == 0 || self->_linkType != *(a3 + 6))
      {
        goto LABEL_21;
      }
    }

    else if ((*(a3 + 32) & 4) != 0)
    {
      goto LABEL_21;
    }

    if ((*&self->_has & 8) != 0)
    {
      if ((*(a3 + 32) & 8) == 0 || self->_priorLinkType != *(a3 + 7))
      {
        goto LABEL_21;
      }
    }

    else if ((*(a3 + 32) & 8) != 0)
    {
      goto LABEL_21;
    }

    LOBYTE(v5) = (*(a3 + 32) & 1) == 0;
    if (*&self->_has)
    {
      if ((*(a3 + 32) & 1) == 0 || self->_linkTimeDelta != *(a3 + 1))
      {
        goto LABEL_21;
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
    if ((*&self->_has & 4) != 0)
    {
LABEL_3:
      v3 = 2654435761 * self->_linkType;
      if ((*&self->_has & 8) != 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      v4 = 0;
      if (*&self->_has)
      {
        goto LABEL_5;
      }

LABEL_9:
      v5 = 0;
      return v3 ^ v2 ^ v4 ^ v5;
    }
  }

  else
  {
    v2 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_3;
    }
  }

  v3 = 0;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  v4 = 2654435761 * self->_priorLinkType;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_5:
  v5 = 2654435761u * self->_linkTimeDelta;
  return v3 ^ v2 ^ v4 ^ v5;
}

- (void)mergeFrom:(id)a3
{
  v3 = *(a3 + 32);
  if ((v3 & 2) != 0)
  {
    self->_timestamp = *(a3 + 2);
    *&self->_has |= 2u;
    v3 = *(a3 + 32);
    if ((v3 & 4) == 0)
    {
LABEL_3:
      if ((v3 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((*(a3 + 32) & 4) == 0)
  {
    goto LABEL_3;
  }

  self->_linkType = *(a3 + 6);
  *&self->_has |= 4u;
  v3 = *(a3 + 32);
  if ((v3 & 8) == 0)
  {
LABEL_4:
    if ((v3 & 1) == 0)
    {
      return;
    }

LABEL_9:
    self->_linkTimeDelta = *(a3 + 1);
    *&self->_has |= 1u;
    return;
  }

LABEL_8:
  self->_priorLinkType = *(a3 + 7);
  *&self->_has |= 8u;
  if (*(a3 + 32))
  {
    goto LABEL_9;
  }
}

@end