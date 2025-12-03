@interface AWDMacCountersRxErrors
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasRxbadplcp:(BOOL)rxbadplcp;
- (void)setHasRxcrsglitch:(BOOL)rxcrsglitch;
- (void)setHasRxfrmtoolong:(BOOL)rxfrmtoolong;
- (void)setHasRxfrmtooshrt:(BOOL)rxfrmtooshrt;
- (void)setHasRxinvmachdr:(BOOL)rxinvmachdr;
- (void)setHasRxstrt:(BOOL)rxstrt;
- (void)writeTo:(id)to;
@end

@implementation AWDMacCountersRxErrors

- (void)setHasRxfrmtoolong:(BOOL)rxfrmtoolong
{
  if (rxfrmtoolong)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasRxfrmtooshrt:(BOOL)rxfrmtooshrt
{
  if (rxfrmtooshrt)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasRxinvmachdr:(BOOL)rxinvmachdr
{
  if (rxinvmachdr)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (void)setHasRxbadplcp:(BOOL)rxbadplcp
{
  if (rxbadplcp)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasRxcrsglitch:(BOOL)rxcrsglitch
{
  if (rxcrsglitch)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasRxstrt:(BOOL)rxstrt
{
  if (rxstrt)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xBF | v3;
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDMacCountersRxErrors;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDMacCountersRxErrors description](&v3, sel_description), -[AWDMacCountersRxErrors dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  has = self->_has;
  if ((has & 8) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_rxfrmtoolong), @"rxfrmtoolong"}];
    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_3:
      if ((has & 0x20) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_3;
  }

  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_rxfrmtooshrt), @"rxfrmtooshrt"}];
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_4:
    if ((has & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_rxinvmachdr), @"rxinvmachdr"}];
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_5:
    if ((has & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_rxbadfcs), @"rxbadfcs"}];
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_6:
    if ((has & 4) == 0)
    {
      goto LABEL_7;
    }

LABEL_15:
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_rxcrsglitch), @"rxcrsglitch"}];
    if ((*&self->_has & 0x40) == 0)
    {
      return dictionary;
    }

    goto LABEL_8;
  }

LABEL_14:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_rxbadplcp), @"rxbadplcp"}];
  has = self->_has;
  if ((has & 4) != 0)
  {
    goto LABEL_15;
  }

LABEL_7:
  if ((has & 0x40) != 0)
  {
LABEL_8:
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_rxstrt), @"rxstrt"}];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  has = self->_has;
  if ((has & 8) != 0)
  {
    rxfrmtoolong = self->_rxfrmtoolong;
    PBDataWriterWriteUint64Field();
    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_3:
      if ((has & 0x20) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_3;
  }

  rxfrmtooshrt = self->_rxfrmtooshrt;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_4:
    if ((has & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  rxinvmachdr = self->_rxinvmachdr;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_5:
    if ((has & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  rxbadfcs = self->_rxbadfcs;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_6:
    if ((has & 4) == 0)
    {
      goto LABEL_7;
    }

LABEL_14:
    rxcrsglitch = self->_rxcrsglitch;
    PBDataWriterWriteUint64Field();
    if ((*&self->_has & 0x40) == 0)
    {
      return;
    }

    goto LABEL_15;
  }

LABEL_13:
  rxbadplcp = self->_rxbadplcp;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 4) != 0)
  {
    goto LABEL_14;
  }

LABEL_7:
  if ((has & 0x40) == 0)
  {
    return;
  }

LABEL_15:
  rxstrt = self->_rxstrt;

  PBDataWriterWriteUint64Field();
}

- (void)copyTo:(id)to
{
  has = self->_has;
  if ((has & 8) != 0)
  {
    *(to + 4) = self->_rxfrmtoolong;
    *(to + 64) |= 8u;
    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_3:
      if ((has & 0x20) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_3;
  }

  *(to + 5) = self->_rxfrmtooshrt;
  *(to + 64) |= 0x10u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_4:
    if ((has & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  *(to + 6) = self->_rxinvmachdr;
  *(to + 64) |= 0x20u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_5:
    if ((has & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  *(to + 1) = self->_rxbadfcs;
  *(to + 64) |= 1u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_6:
    if ((has & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_14;
  }

LABEL_13:
  *(to + 2) = self->_rxbadplcp;
  *(to + 64) |= 2u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_7:
    if ((has & 0x40) == 0)
    {
      return;
    }

LABEL_15:
    *(to + 7) = self->_rxstrt;
    *(to + 64) |= 0x40u;
    return;
  }

LABEL_14:
  *(to + 3) = self->_rxcrsglitch;
  *(to + 64) |= 4u;
  if ((*&self->_has & 0x40) != 0)
  {
    goto LABEL_15;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  has = self->_has;
  if ((has & 8) != 0)
  {
    *(result + 4) = self->_rxfrmtoolong;
    *(result + 64) |= 8u;
    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_3:
      if ((has & 0x20) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_3;
  }

  *(result + 5) = self->_rxfrmtooshrt;
  *(result + 64) |= 0x10u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_4:
    if ((has & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  *(result + 6) = self->_rxinvmachdr;
  *(result + 64) |= 0x20u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_5:
    if ((has & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  *(result + 1) = self->_rxbadfcs;
  *(result + 64) |= 1u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_6:
    if ((has & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  *(result + 2) = self->_rxbadplcp;
  *(result + 64) |= 2u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_7:
    if ((has & 0x40) == 0)
    {
      return result;
    }

    goto LABEL_8;
  }

LABEL_15:
  *(result + 3) = self->_rxcrsglitch;
  *(result + 64) |= 4u;
  if ((*&self->_has & 0x40) == 0)
  {
    return result;
  }

LABEL_8:
  *(result + 7) = self->_rxstrt;
  *(result + 64) |= 0x40u;
  return result;
}

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    if ((*&self->_has & 8) != 0)
    {
      if ((*(equal + 64) & 8) == 0 || self->_rxfrmtoolong != *(equal + 4))
      {
        goto LABEL_36;
      }
    }

    else if ((*(equal + 64) & 8) != 0)
    {
LABEL_36:
      LOBYTE(v5) = 0;
      return v5;
    }

    if ((*&self->_has & 0x10) != 0)
    {
      if ((*(equal + 64) & 0x10) == 0 || self->_rxfrmtooshrt != *(equal + 5))
      {
        goto LABEL_36;
      }
    }

    else if ((*(equal + 64) & 0x10) != 0)
    {
      goto LABEL_36;
    }

    if ((*&self->_has & 0x20) != 0)
    {
      if ((*(equal + 64) & 0x20) == 0 || self->_rxinvmachdr != *(equal + 6))
      {
        goto LABEL_36;
      }
    }

    else if ((*(equal + 64) & 0x20) != 0)
    {
      goto LABEL_36;
    }

    if (*&self->_has)
    {
      if ((*(equal + 64) & 1) == 0 || self->_rxbadfcs != *(equal + 1))
      {
        goto LABEL_36;
      }
    }

    else if (*(equal + 64))
    {
      goto LABEL_36;
    }

    if ((*&self->_has & 2) != 0)
    {
      if ((*(equal + 64) & 2) == 0 || self->_rxbadplcp != *(equal + 2))
      {
        goto LABEL_36;
      }
    }

    else if ((*(equal + 64) & 2) != 0)
    {
      goto LABEL_36;
    }

    if ((*&self->_has & 4) != 0)
    {
      if ((*(equal + 64) & 4) == 0 || self->_rxcrsglitch != *(equal + 3))
      {
        goto LABEL_36;
      }
    }

    else if ((*(equal + 64) & 4) != 0)
    {
      goto LABEL_36;
    }

    LOBYTE(v5) = (*(equal + 64) & 0x40) == 0;
    if ((*&self->_has & 0x40) != 0)
    {
      if ((*(equal + 64) & 0x40) == 0 || self->_rxstrt != *(equal + 7))
      {
        goto LABEL_36;
      }

      LOBYTE(v5) = 1;
    }
  }

  return v5;
}

- (unint64_t)hash
{
  if ((*&self->_has & 8) != 0)
  {
    v2 = 2654435761u * self->_rxfrmtoolong;
    if ((*&self->_has & 0x10) != 0)
    {
LABEL_3:
      v3 = 2654435761u * self->_rxfrmtooshrt;
      if ((*&self->_has & 0x20) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v2 = 0;
    if ((*&self->_has & 0x10) != 0)
    {
      goto LABEL_3;
    }
  }

  v3 = 0;
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_4:
    v4 = 2654435761u * self->_rxinvmachdr;
    if (*&self->_has)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  v4 = 0;
  if (*&self->_has)
  {
LABEL_5:
    v5 = 2654435761u * self->_rxbadfcs;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  v5 = 0;
  if ((*&self->_has & 2) != 0)
  {
LABEL_6:
    v6 = 2654435761u * self->_rxbadplcp;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_7;
    }

LABEL_14:
    v7 = 0;
    if ((*&self->_has & 0x40) != 0)
    {
      goto LABEL_8;
    }

LABEL_15:
    v8 = 0;
    return v3 ^ v2 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8;
  }

LABEL_13:
  v6 = 0;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_14;
  }

LABEL_7:
  v7 = 2654435761u * self->_rxcrsglitch;
  if ((*&self->_has & 0x40) == 0)
  {
    goto LABEL_15;
  }

LABEL_8:
  v8 = 2654435761u * self->_rxstrt;
  return v3 ^ v2 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8;
}

- (void)mergeFrom:(id)from
{
  v3 = *(from + 64);
  if ((v3 & 8) != 0)
  {
    self->_rxfrmtoolong = *(from + 4);
    *&self->_has |= 8u;
    v3 = *(from + 64);
    if ((v3 & 0x10) == 0)
    {
LABEL_3:
      if ((v3 & 0x20) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*(from + 64) & 0x10) == 0)
  {
    goto LABEL_3;
  }

  self->_rxfrmtooshrt = *(from + 5);
  *&self->_has |= 0x10u;
  v3 = *(from + 64);
  if ((v3 & 0x20) == 0)
  {
LABEL_4:
    if ((v3 & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  self->_rxinvmachdr = *(from + 6);
  *&self->_has |= 0x20u;
  v3 = *(from + 64);
  if ((v3 & 1) == 0)
  {
LABEL_5:
    if ((v3 & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  self->_rxbadfcs = *(from + 1);
  *&self->_has |= 1u;
  v3 = *(from + 64);
  if ((v3 & 2) == 0)
  {
LABEL_6:
    if ((v3 & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_14;
  }

LABEL_13:
  self->_rxbadplcp = *(from + 2);
  *&self->_has |= 2u;
  v3 = *(from + 64);
  if ((v3 & 4) == 0)
  {
LABEL_7:
    if ((v3 & 0x40) == 0)
    {
      return;
    }

LABEL_15:
    self->_rxstrt = *(from + 7);
    *&self->_has |= 0x40u;
    return;
  }

LABEL_14:
  self->_rxcrsglitch = *(from + 3);
  *&self->_has |= 4u;
  if ((*(from + 64) & 0x40) != 0)
  {
    goto LABEL_15;
  }
}

@end