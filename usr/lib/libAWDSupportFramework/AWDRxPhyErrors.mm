@interface AWDRxPhyErrors
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasBphyRxcrsglitch:(BOOL)rxcrsglitch;
- (void)setHasRfdisable:(BOOL)rfdisable;
- (void)writeTo:(id)to;
@end

@implementation AWDRxPhyErrors

- (void)setHasRfdisable:(BOOL)rfdisable
{
  if (rfdisable)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasBphyRxcrsglitch:(BOOL)rxcrsglitch
{
  if (rxcrsglitch)
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
  v3.super_class = AWDRxPhyErrors;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDRxPhyErrors description](&v3, sel_description), -[AWDRxPhyErrors dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  has = self->_has;
  if ((has & 4) == 0)
  {
    if ((*&self->_has & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_7:
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_bphyRxcrsglitch), @"bphy_rxcrsglitch"}];
    if ((*&self->_has & 1) == 0)
    {
      return dictionary;
    }

    goto LABEL_4;
  }

  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_rfdisable), @"rfdisable"}];
  has = self->_has;
  if ((has & 2) != 0)
  {
    goto LABEL_7;
  }

LABEL_3:
  if (has)
  {
LABEL_4:
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_bphyBadplcp), @"bphy_badplcp"}];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  has = self->_has;
  if ((has & 4) == 0)
  {
    if ((*&self->_has & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    bphyRxcrsglitch = self->_bphyRxcrsglitch;
    PBDataWriterWriteUint64Field();
    if ((*&self->_has & 1) == 0)
    {
      return;
    }

    goto LABEL_7;
  }

  rfdisable = self->_rfdisable;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 2) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((has & 1) == 0)
  {
    return;
  }

LABEL_7:
  bphyBadplcp = self->_bphyBadplcp;

  PBDataWriterWriteUint64Field();
}

- (void)copyTo:(id)to
{
  has = self->_has;
  if ((has & 4) != 0)
  {
    *(to + 3) = self->_rfdisable;
    *(to + 32) |= 4u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        return;
      }

LABEL_7:
      *(to + 1) = self->_bphyBadplcp;
      *(to + 32) |= 1u;
      return;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  *(to + 2) = self->_bphyRxcrsglitch;
  *(to + 32) |= 2u;
  if (*&self->_has)
  {
    goto LABEL_7;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  has = self->_has;
  if ((has & 4) != 0)
  {
    *(result + 3) = self->_rfdisable;
    *(result + 32) |= 4u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        return result;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  *(result + 2) = self->_bphyRxcrsglitch;
  *(result + 32) |= 2u;
  if ((*&self->_has & 1) == 0)
  {
    return result;
  }

LABEL_4:
  *(result + 1) = self->_bphyBadplcp;
  *(result + 32) |= 1u;
  return result;
}

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    if ((*&self->_has & 4) != 0)
    {
      if ((*(equal + 32) & 4) == 0 || self->_rfdisable != *(equal + 3))
      {
        goto LABEL_16;
      }
    }

    else if ((*(equal + 32) & 4) != 0)
    {
LABEL_16:
      LOBYTE(v5) = 0;
      return v5;
    }

    if ((*&self->_has & 2) != 0)
    {
      if ((*(equal + 32) & 2) == 0 || self->_bphyRxcrsglitch != *(equal + 2))
      {
        goto LABEL_16;
      }
    }

    else if ((*(equal + 32) & 2) != 0)
    {
      goto LABEL_16;
    }

    LOBYTE(v5) = (*(equal + 32) & 1) == 0;
    if (*&self->_has)
    {
      if ((*(equal + 32) & 1) == 0 || self->_bphyBadplcp != *(equal + 1))
      {
        goto LABEL_16;
      }

      LOBYTE(v5) = 1;
    }
  }

  return v5;
}

- (unint64_t)hash
{
  if ((*&self->_has & 4) == 0)
  {
    v2 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v3 = 0;
    if (*&self->_has)
    {
      goto LABEL_4;
    }

LABEL_7:
    v4 = 0;
    return v3 ^ v2 ^ v4;
  }

  v2 = 2654435761u * self->_rfdisable;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v3 = 2654435761u * self->_bphyRxcrsglitch;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  v4 = 2654435761u * self->_bphyBadplcp;
  return v3 ^ v2 ^ v4;
}

- (void)mergeFrom:(id)from
{
  v3 = *(from + 32);
  if ((v3 & 4) != 0)
  {
    self->_rfdisable = *(from + 3);
    *&self->_has |= 4u;
    v3 = *(from + 32);
    if ((v3 & 2) == 0)
    {
LABEL_3:
      if ((v3 & 1) == 0)
      {
        return;
      }

LABEL_7:
      self->_bphyBadplcp = *(from + 1);
      *&self->_has |= 1u;
      return;
    }
  }

  else if ((*(from + 32) & 2) == 0)
  {
    goto LABEL_3;
  }

  self->_bphyRxcrsglitch = *(from + 2);
  *&self->_has |= 2u;
  if (*(from + 32))
  {
    goto LABEL_7;
  }
}

@end