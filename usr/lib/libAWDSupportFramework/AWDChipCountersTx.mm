@interface AWDChipCountersTx
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasTxchit:(BOOL)txchit;
- (void)setHasTxcmiss:(BOOL)txcmiss;
- (void)setHasTxctl:(BOOL)txctl;
- (void)setHasTxerror:(BOOL)txerror;
- (void)setHasTxframe:(BOOL)txframe;
- (void)setHasTxnoassoc:(BOOL)txnoassoc;
- (void)setHasTxnobuf:(BOOL)txnobuf;
- (void)setHasTxprshort:(BOOL)txprshort;
- (void)setHasTxretrans:(BOOL)txretrans;
- (void)setHasTxrunt:(BOOL)txrunt;
- (void)setHasTxserr:(BOOL)txserr;
- (void)writeTo:(id)to;
@end

@implementation AWDChipCountersTx

- (void)setHasTxframe:(BOOL)txframe
{
  if (txframe)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFDF | v3;
}

- (void)setHasTxretrans:(BOOL)txretrans
{
  if (txretrans)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFDFF | v3;
}

- (void)setHasTxerror:(BOOL)txerror
{
  if (txerror)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFEF | v3;
}

- (void)setHasTxctl:(BOOL)txctl
{
  if (txctl)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFF7 | v3;
}

- (void)setHasTxprshort:(BOOL)txprshort
{
  if (txprshort)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFEFF | v3;
}

- (void)setHasTxserr:(BOOL)txserr
{
  if (txserr)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7FF | v3;
}

- (void)setHasTxnobuf:(BOOL)txnobuf
{
  if (txnobuf)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFF7F | v3;
}

- (void)setHasTxnoassoc:(BOOL)txnoassoc
{
  if (txnoassoc)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFBF | v3;
}

- (void)setHasTxrunt:(BOOL)txrunt
{
  if (txrunt)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFBFF | v3;
}

- (void)setHasTxchit:(BOOL)txchit
{
  if (txchit)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFD | v3;
}

- (void)setHasTxcmiss:(BOOL)txcmiss
{
  if (txcmiss)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFB | v3;
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDChipCountersTx;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDChipCountersTx description](&v3, sel_description), -[AWDChipCountersTx dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  has = self->_has;
  if ((has & 0x20) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_txframe), @"txframe"}];
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 0x200) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

  else if ((has & 1) == 0)
  {
    goto LABEL_3;
  }

  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_txbyte), @"txbyte"}];
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_4:
    if ((has & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_18;
  }

LABEL_17:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_txretrans), @"txretrans"}];
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_5:
    if ((has & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_19;
  }

LABEL_18:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_txerror), @"txerror"}];
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_6:
    if ((has & 0x100) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_20;
  }

LABEL_19:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_txctl), @"txctl"}];
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_7:
    if ((has & 0x800) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_21;
  }

LABEL_20:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_txprshort), @"txprshort"}];
  has = self->_has;
  if ((has & 0x800) == 0)
  {
LABEL_8:
    if ((has & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_22;
  }

LABEL_21:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_txserr), @"txserr"}];
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_9:
    if ((has & 0x40) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_23;
  }

LABEL_22:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_txnobuf), @"txnobuf"}];
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_10:
    if ((has & 0x400) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_24;
  }

LABEL_23:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_txnoassoc), @"txnoassoc"}];
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_11:
    if ((has & 2) == 0)
    {
      goto LABEL_12;
    }

LABEL_25:
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_txchit), @"txchit"}];
    if ((*&self->_has & 4) == 0)
    {
      return dictionary;
    }

    goto LABEL_13;
  }

LABEL_24:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_txrunt), @"txrunt"}];
  has = self->_has;
  if ((has & 2) != 0)
  {
    goto LABEL_25;
  }

LABEL_12:
  if ((has & 4) != 0)
  {
LABEL_13:
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_txcmiss), @"txcmiss"}];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  has = self->_has;
  if ((has & 0x20) != 0)
  {
    txframe = self->_txframe;
    PBDataWriterWriteUint64Field();
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 0x200) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((has & 1) == 0)
  {
    goto LABEL_3;
  }

  txbyte = self->_txbyte;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_4:
    if ((has & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  txretrans = self->_txretrans;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_5:
    if ((has & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_17:
  txerror = self->_txerror;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_6:
    if ((has & 0x100) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  txctl = self->_txctl;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_7:
    if ((has & 0x800) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

LABEL_19:
  txprshort = self->_txprshort;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 0x800) == 0)
  {
LABEL_8:
    if ((has & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_20:
  txserr = self->_txserr;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_9:
    if ((has & 0x40) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_22;
  }

LABEL_21:
  txnobuf = self->_txnobuf;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_10:
    if ((has & 0x400) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_23;
  }

LABEL_22:
  txnoassoc = self->_txnoassoc;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_11:
    if ((has & 2) == 0)
    {
      goto LABEL_12;
    }

LABEL_24:
    txchit = self->_txchit;
    PBDataWriterWriteUint64Field();
    if ((*&self->_has & 4) == 0)
    {
      return;
    }

    goto LABEL_25;
  }

LABEL_23:
  txrunt = self->_txrunt;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 2) != 0)
  {
    goto LABEL_24;
  }

LABEL_12:
  if ((has & 4) == 0)
  {
    return;
  }

LABEL_25:
  txcmiss = self->_txcmiss;

  PBDataWriterWriteUint64Field();
}

- (void)copyTo:(id)to
{
  has = self->_has;
  if ((has & 0x20) != 0)
  {
    *(to + 6) = self->_txframe;
    *(to + 52) |= 0x20u;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 0x200) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((has & 1) == 0)
  {
    goto LABEL_3;
  }

  *(to + 1) = self->_txbyte;
  *(to + 52) |= 1u;
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_4:
    if ((has & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  *(to + 10) = self->_txretrans;
  *(to + 52) |= 0x200u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_5:
    if ((has & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_17:
  *(to + 5) = self->_txerror;
  *(to + 52) |= 0x10u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_6:
    if ((has & 0x100) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  *(to + 4) = self->_txctl;
  *(to + 52) |= 8u;
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_7:
    if ((has & 0x800) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

LABEL_19:
  *(to + 9) = self->_txprshort;
  *(to + 52) |= 0x100u;
  has = self->_has;
  if ((has & 0x800) == 0)
  {
LABEL_8:
    if ((has & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_20:
  *(to + 12) = self->_txserr;
  *(to + 52) |= 0x800u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_9:
    if ((has & 0x40) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_22;
  }

LABEL_21:
  *(to + 8) = self->_txnobuf;
  *(to + 52) |= 0x80u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_10:
    if ((has & 0x400) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_23;
  }

LABEL_22:
  *(to + 7) = self->_txnoassoc;
  *(to + 52) |= 0x40u;
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_11:
    if ((has & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_24;
  }

LABEL_23:
  *(to + 11) = self->_txrunt;
  *(to + 52) |= 0x400u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_12:
    if ((has & 4) == 0)
    {
      return;
    }

LABEL_25:
    *(to + 3) = self->_txcmiss;
    *(to + 52) |= 4u;
    return;
  }

LABEL_24:
  *(to + 2) = self->_txchit;
  *(to + 52) |= 2u;
  if ((*&self->_has & 4) != 0)
  {
    goto LABEL_25;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  has = self->_has;
  if ((has & 0x20) != 0)
  {
    *(result + 6) = self->_txframe;
    *(result + 52) |= 0x20u;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 0x200) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

  else if ((has & 1) == 0)
  {
    goto LABEL_3;
  }

  *(result + 1) = self->_txbyte;
  *(result + 52) |= 1u;
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_4:
    if ((has & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_18;
  }

LABEL_17:
  *(result + 10) = self->_txretrans;
  *(result + 52) |= 0x200u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_5:
    if ((has & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_19;
  }

LABEL_18:
  *(result + 5) = self->_txerror;
  *(result + 52) |= 0x10u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_6:
    if ((has & 0x100) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_20;
  }

LABEL_19:
  *(result + 4) = self->_txctl;
  *(result + 52) |= 8u;
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_7:
    if ((has & 0x800) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_21;
  }

LABEL_20:
  *(result + 9) = self->_txprshort;
  *(result + 52) |= 0x100u;
  has = self->_has;
  if ((has & 0x800) == 0)
  {
LABEL_8:
    if ((has & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_22;
  }

LABEL_21:
  *(result + 12) = self->_txserr;
  *(result + 52) |= 0x800u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_9:
    if ((has & 0x40) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_23;
  }

LABEL_22:
  *(result + 8) = self->_txnobuf;
  *(result + 52) |= 0x80u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_10:
    if ((has & 0x400) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_24;
  }

LABEL_23:
  *(result + 7) = self->_txnoassoc;
  *(result + 52) |= 0x40u;
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_11:
    if ((has & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_25;
  }

LABEL_24:
  *(result + 11) = self->_txrunt;
  *(result + 52) |= 0x400u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_12:
    if ((has & 4) == 0)
    {
      return result;
    }

    goto LABEL_13;
  }

LABEL_25:
  *(result + 2) = self->_txchit;
  *(result + 52) |= 2u;
  if ((*&self->_has & 4) == 0)
  {
    return result;
  }

LABEL_13:
  *(result + 3) = self->_txcmiss;
  *(result + 52) |= 4u;
  return result;
}

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    has = self->_has;
    v7 = *(equal + 52);
    if ((has & 0x20) != 0)
    {
      if ((v7 & 0x20) == 0 || self->_txframe != *(equal + 6))
      {
        goto LABEL_61;
      }
    }

    else if ((v7 & 0x20) != 0)
    {
LABEL_61:
      LOBYTE(v5) = 0;
      return v5;
    }

    if (has)
    {
      if ((v7 & 1) == 0 || self->_txbyte != *(equal + 1))
      {
        goto LABEL_61;
      }
    }

    else if (v7)
    {
      goto LABEL_61;
    }

    if ((*&self->_has & 0x200) != 0)
    {
      if ((*(equal + 52) & 0x200) == 0 || self->_txretrans != *(equal + 10))
      {
        goto LABEL_61;
      }
    }

    else if ((*(equal + 52) & 0x200) != 0)
    {
      goto LABEL_61;
    }

    if ((has & 0x10) != 0)
    {
      if ((v7 & 0x10) == 0 || self->_txerror != *(equal + 5))
      {
        goto LABEL_61;
      }
    }

    else if ((v7 & 0x10) != 0)
    {
      goto LABEL_61;
    }

    if ((has & 8) != 0)
    {
      if ((v7 & 8) == 0 || self->_txctl != *(equal + 4))
      {
        goto LABEL_61;
      }
    }

    else if ((v7 & 8) != 0)
    {
      goto LABEL_61;
    }

    if ((*&self->_has & 0x100) != 0)
    {
      if ((*(equal + 52) & 0x100) == 0 || self->_txprshort != *(equal + 9))
      {
        goto LABEL_61;
      }
    }

    else if ((*(equal + 52) & 0x100) != 0)
    {
      goto LABEL_61;
    }

    if ((*&self->_has & 0x800) != 0)
    {
      if ((*(equal + 52) & 0x800) == 0 || self->_txserr != *(equal + 12))
      {
        goto LABEL_61;
      }
    }

    else if ((*(equal + 52) & 0x800) != 0)
    {
      goto LABEL_61;
    }

    if ((has & 0x80) != 0)
    {
      if ((v7 & 0x80) == 0 || self->_txnobuf != *(equal + 8))
      {
        goto LABEL_61;
      }
    }

    else if ((v7 & 0x80) != 0)
    {
      goto LABEL_61;
    }

    if ((has & 0x40) != 0)
    {
      if ((v7 & 0x40) == 0 || self->_txnoassoc != *(equal + 7))
      {
        goto LABEL_61;
      }
    }

    else if ((v7 & 0x40) != 0)
    {
      goto LABEL_61;
    }

    if ((*&self->_has & 0x400) != 0)
    {
      if ((*(equal + 52) & 0x400) == 0 || self->_txrunt != *(equal + 11))
      {
        goto LABEL_61;
      }
    }

    else if ((*(equal + 52) & 0x400) != 0)
    {
      goto LABEL_61;
    }

    if ((has & 2) != 0)
    {
      if ((v7 & 2) == 0 || self->_txchit != *(equal + 2))
      {
        goto LABEL_61;
      }
    }

    else if ((v7 & 2) != 0)
    {
      goto LABEL_61;
    }

    LOBYTE(v5) = (v7 & 4) == 0;
    if ((has & 4) != 0)
    {
      if ((v7 & 4) == 0 || self->_txcmiss != *(equal + 3))
      {
        goto LABEL_61;
      }

      LOBYTE(v5) = 1;
    }
  }

  return v5;
}

- (unint64_t)hash
{
  has = self->_has;
  if ((has & 0x20) != 0)
  {
    v3 = 2654435761u * self->_txframe;
    if (has)
    {
LABEL_3:
      v4 = 2654435761u * self->_txbyte;
      if ((*&self->_has & 0x200) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else
  {
    v3 = 0;
    if (has)
    {
      goto LABEL_3;
    }
  }

  v4 = 0;
  if ((*&self->_has & 0x200) != 0)
  {
LABEL_4:
    v5 = 2654435761u * self->_txretrans;
    if ((has & 0x10) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  v5 = 0;
  if ((has & 0x10) != 0)
  {
LABEL_5:
    v6 = 2654435761u * self->_txerror;
    if ((has & 8) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_17:
  v6 = 0;
  if ((has & 8) != 0)
  {
LABEL_6:
    v7 = 2654435761u * self->_txctl;
    if ((*&self->_has & 0x100) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  v7 = 0;
  if ((*&self->_has & 0x100) != 0)
  {
LABEL_7:
    v8 = 2654435761u * self->_txprshort;
    if ((*&self->_has & 0x800) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

LABEL_19:
  v8 = 0;
  if ((*&self->_has & 0x800) != 0)
  {
LABEL_8:
    v9 = 2654435761u * self->_txserr;
    if ((has & 0x80) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_20:
  v9 = 0;
  if ((has & 0x80) != 0)
  {
LABEL_9:
    v10 = 2654435761u * self->_txnobuf;
    if ((has & 0x40) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_22;
  }

LABEL_21:
  v10 = 0;
  if ((has & 0x40) != 0)
  {
LABEL_10:
    v11 = 2654435761u * self->_txnoassoc;
    if ((*&self->_has & 0x400) != 0)
    {
      goto LABEL_11;
    }

    goto LABEL_23;
  }

LABEL_22:
  v11 = 0;
  if ((*&self->_has & 0x400) != 0)
  {
LABEL_11:
    v12 = 2654435761u * self->_txrunt;
    if ((has & 2) != 0)
    {
      goto LABEL_12;
    }

LABEL_24:
    v13 = 0;
    if ((has & 4) != 0)
    {
      goto LABEL_13;
    }

LABEL_25:
    v14 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14;
  }

LABEL_23:
  v12 = 0;
  if ((has & 2) == 0)
  {
    goto LABEL_24;
  }

LABEL_12:
  v13 = 2654435761u * self->_txchit;
  if ((has & 4) == 0)
  {
    goto LABEL_25;
  }

LABEL_13:
  v14 = 2654435761u * self->_txcmiss;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14;
}

- (void)mergeFrom:(id)from
{
  v3 = *(from + 52);
  if ((v3 & 0x20) != 0)
  {
    self->_txframe = *(from + 6);
    *&self->_has |= 0x20u;
    v3 = *(from + 52);
    if ((v3 & 1) == 0)
    {
LABEL_3:
      if ((v3 & 0x200) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((v3 & 1) == 0)
  {
    goto LABEL_3;
  }

  self->_txbyte = *(from + 1);
  *&self->_has |= 1u;
  v3 = *(from + 52);
  if ((v3 & 0x200) == 0)
  {
LABEL_4:
    if ((v3 & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  self->_txretrans = *(from + 10);
  *&self->_has |= 0x200u;
  v3 = *(from + 52);
  if ((v3 & 0x10) == 0)
  {
LABEL_5:
    if ((v3 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_17:
  self->_txerror = *(from + 5);
  *&self->_has |= 0x10u;
  v3 = *(from + 52);
  if ((v3 & 8) == 0)
  {
LABEL_6:
    if ((v3 & 0x100) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  self->_txctl = *(from + 4);
  *&self->_has |= 8u;
  v3 = *(from + 52);
  if ((v3 & 0x100) == 0)
  {
LABEL_7:
    if ((v3 & 0x800) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

LABEL_19:
  self->_txprshort = *(from + 9);
  *&self->_has |= 0x100u;
  v3 = *(from + 52);
  if ((v3 & 0x800) == 0)
  {
LABEL_8:
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_20:
  self->_txserr = *(from + 12);
  *&self->_has |= 0x800u;
  v3 = *(from + 52);
  if ((v3 & 0x80) == 0)
  {
LABEL_9:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_22;
  }

LABEL_21:
  self->_txnobuf = *(from + 8);
  *&self->_has |= 0x80u;
  v3 = *(from + 52);
  if ((v3 & 0x40) == 0)
  {
LABEL_10:
    if ((v3 & 0x400) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_23;
  }

LABEL_22:
  self->_txnoassoc = *(from + 7);
  *&self->_has |= 0x40u;
  v3 = *(from + 52);
  if ((v3 & 0x400) == 0)
  {
LABEL_11:
    if ((v3 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_24;
  }

LABEL_23:
  self->_txrunt = *(from + 11);
  *&self->_has |= 0x400u;
  v3 = *(from + 52);
  if ((v3 & 2) == 0)
  {
LABEL_12:
    if ((v3 & 4) == 0)
    {
      return;
    }

LABEL_25:
    self->_txcmiss = *(from + 3);
    *&self->_has |= 4u;
    return;
  }

LABEL_24:
  self->_txchit = *(from + 2);
  *&self->_has |= 2u;
  if ((*(from + 52) & 4) != 0)
  {
    goto LABEL_25;
  }
}

@end