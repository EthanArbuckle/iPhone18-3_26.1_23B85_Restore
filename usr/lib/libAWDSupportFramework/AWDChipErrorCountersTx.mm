@interface AWDChipErrorCountersTx
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasTxexptime:(BOOL)txexptime;
- (void)setHasTxphycrs:(BOOL)txphycrs;
- (void)setHasTxphyerr:(BOOL)txphyerr;
- (void)setHasTxuflo:(BOOL)txuflo;
- (void)writeTo:(id)to;
@end

@implementation AWDChipErrorCountersTx

- (void)setHasTxuflo:(BOOL)txuflo
{
  if (txuflo)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasTxphyerr:(BOOL)txphyerr
{
  if (txphyerr)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasTxphycrs:(BOOL)txphycrs
{
  if (txphycrs)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasTxexptime:(BOOL)txexptime
{
  if (txexptime)
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
  v3.super_class = AWDChipErrorCountersTx;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDChipErrorCountersTx description](&v3, sel_description), -[AWDChipErrorCountersTx dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  has = self->_has;
  if ((has & 0x10) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_txuflo), @"txuflo"}];
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_3;
  }

  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_txphyerr), @"txphyerr"}];
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 1) == 0)
    {
      goto LABEL_5;
    }

LABEL_11:
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_txchanrej), @"txchanrej"}];
    if ((*&self->_has & 2) == 0)
    {
      return dictionary;
    }

    goto LABEL_6;
  }

LABEL_10:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_txphycrs), @"txphycrs"}];
  has = self->_has;
  if (has)
  {
    goto LABEL_11;
  }

LABEL_5:
  if ((has & 2) != 0)
  {
LABEL_6:
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_txexptime), @"txexptime"}];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  has = self->_has;
  if ((has & 0x10) != 0)
  {
    txuflo = self->_txuflo;
    PBDataWriterWriteUint64Field();
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_3;
  }

  txphyerr = self->_txphyerr;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 1) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    txchanrej = self->_txchanrej;
    PBDataWriterWriteUint64Field();
    if ((*&self->_has & 2) == 0)
    {
      return;
    }

    goto LABEL_11;
  }

LABEL_9:
  txphycrs = self->_txphycrs;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if (has)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((has & 2) == 0)
  {
    return;
  }

LABEL_11:
  txexptime = self->_txexptime;

  PBDataWriterWriteUint64Field();
}

- (void)copyTo:(id)to
{
  has = self->_has;
  if ((has & 0x10) != 0)
  {
    *(to + 5) = self->_txuflo;
    *(to + 48) |= 0x10u;
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_3;
  }

  *(to + 4) = self->_txphyerr;
  *(to + 48) |= 8u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

LABEL_9:
  *(to + 3) = self->_txphycrs;
  *(to + 48) |= 4u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_5:
    if ((has & 2) == 0)
    {
      return;
    }

LABEL_11:
    *(to + 2) = self->_txexptime;
    *(to + 48) |= 2u;
    return;
  }

LABEL_10:
  *(to + 1) = self->_txchanrej;
  *(to + 48) |= 1u;
  if ((*&self->_has & 2) != 0)
  {
    goto LABEL_11;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  has = self->_has;
  if ((has & 0x10) != 0)
  {
    *(result + 5) = self->_txuflo;
    *(result + 48) |= 0x10u;
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_3;
  }

  *(result + 4) = self->_txphyerr;
  *(result + 48) |= 8u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  *(result + 3) = self->_txphycrs;
  *(result + 48) |= 4u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_5:
    if ((has & 2) == 0)
    {
      return result;
    }

    goto LABEL_6;
  }

LABEL_11:
  *(result + 1) = self->_txchanrej;
  *(result + 48) |= 1u;
  if ((*&self->_has & 2) == 0)
  {
    return result;
  }

LABEL_6:
  *(result + 2) = self->_txexptime;
  *(result + 48) |= 2u;
  return result;
}

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    if ((*&self->_has & 0x10) != 0)
    {
      if ((*(equal + 48) & 0x10) == 0 || self->_txuflo != *(equal + 5))
      {
        goto LABEL_26;
      }
    }

    else if ((*(equal + 48) & 0x10) != 0)
    {
LABEL_26:
      LOBYTE(v5) = 0;
      return v5;
    }

    if ((*&self->_has & 8) != 0)
    {
      if ((*(equal + 48) & 8) == 0 || self->_txphyerr != *(equal + 4))
      {
        goto LABEL_26;
      }
    }

    else if ((*(equal + 48) & 8) != 0)
    {
      goto LABEL_26;
    }

    if ((*&self->_has & 4) != 0)
    {
      if ((*(equal + 48) & 4) == 0 || self->_txphycrs != *(equal + 3))
      {
        goto LABEL_26;
      }
    }

    else if ((*(equal + 48) & 4) != 0)
    {
      goto LABEL_26;
    }

    if (*&self->_has)
    {
      if ((*(equal + 48) & 1) == 0 || self->_txchanrej != *(equal + 1))
      {
        goto LABEL_26;
      }
    }

    else if (*(equal + 48))
    {
      goto LABEL_26;
    }

    LOBYTE(v5) = (*(equal + 48) & 2) == 0;
    if ((*&self->_has & 2) != 0)
    {
      if ((*(equal + 48) & 2) == 0 || self->_txexptime != *(equal + 2))
      {
        goto LABEL_26;
      }

      LOBYTE(v5) = 1;
    }
  }

  return v5;
}

- (unint64_t)hash
{
  if ((*&self->_has & 0x10) != 0)
  {
    v2 = 2654435761u * self->_txuflo;
    if ((*&self->_has & 8) != 0)
    {
LABEL_3:
      v3 = 2654435761u * self->_txphyerr;
      if ((*&self->_has & 4) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v2 = 0;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_3;
    }
  }

  v3 = 0;
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    v4 = 2654435761u * self->_txphycrs;
    if (*&self->_has)
    {
      goto LABEL_5;
    }

LABEL_10:
    v5 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_6;
    }

LABEL_11:
    v6 = 0;
    return v3 ^ v2 ^ v4 ^ v5 ^ v6;
  }

LABEL_9:
  v4 = 0;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  v5 = 2654435761u * self->_txchanrej;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_11;
  }

LABEL_6:
  v6 = 2654435761u * self->_txexptime;
  return v3 ^ v2 ^ v4 ^ v5 ^ v6;
}

- (void)mergeFrom:(id)from
{
  v3 = *(from + 48);
  if ((v3 & 0x10) != 0)
  {
    self->_txuflo = *(from + 5);
    *&self->_has |= 0x10u;
    v3 = *(from + 48);
    if ((v3 & 8) == 0)
    {
LABEL_3:
      if ((v3 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((*(from + 48) & 8) == 0)
  {
    goto LABEL_3;
  }

  self->_txphyerr = *(from + 4);
  *&self->_has |= 8u;
  v3 = *(from + 48);
  if ((v3 & 4) == 0)
  {
LABEL_4:
    if ((v3 & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

LABEL_9:
  self->_txphycrs = *(from + 3);
  *&self->_has |= 4u;
  v3 = *(from + 48);
  if ((v3 & 1) == 0)
  {
LABEL_5:
    if ((v3 & 2) == 0)
    {
      return;
    }

LABEL_11:
    self->_txexptime = *(from + 2);
    *&self->_has |= 2u;
    return;
  }

LABEL_10:
  self->_txchanrej = *(from + 1);
  *&self->_has |= 1u;
  if ((*(from + 48) & 2) != 0)
  {
    goto LABEL_11;
  }
}

@end