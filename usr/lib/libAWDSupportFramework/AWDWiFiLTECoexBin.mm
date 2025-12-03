@interface AWDWiFiLTECoexBin
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasRxframe:(BOOL)rxframe;
- (void)setHasRxrtry:(BOOL)rxrtry;
- (void)setHasTxassocreq:(BOOL)txassocreq;
- (void)setHasTxassocrsp:(BOOL)txassocrsp;
- (void)setHasTxdeauth:(BOOL)txdeauth;
- (void)setHasTxframe:(BOOL)txframe;
- (void)setHasTxnocts:(BOOL)txnocts;
- (void)setHasTxreassocreq:(BOOL)txreassocreq;
- (void)setHasTxreassocrsp:(BOOL)txreassocrsp;
- (void)setHasTxretrans:(BOOL)txretrans;
- (void)setHasTxrts:(BOOL)txrts;
- (void)writeTo:(id)to;
@end

@implementation AWDWiFiLTECoexBin

- (void)setHasRxframe:(BOOL)rxframe
{
  if (rxframe)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFD | v3;
}

- (void)setHasTxframe:(BOOL)txframe
{
  if (txframe)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFBF | v3;
}

- (void)setHasRxrtry:(BOOL)rxrtry
{
  if (rxrtry)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFB | v3;
}

- (void)setHasTxretrans:(BOOL)txretrans
{
  if (txretrans)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFBFF | v3;
}

- (void)setHasTxnocts:(BOOL)txnocts
{
  if (txnocts)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFF7F | v3;
}

- (void)setHasTxrts:(BOOL)txrts
{
  if (txrts)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7FF | v3;
}

- (void)setHasTxdeauth:(BOOL)txdeauth
{
  if (txdeauth)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFDF | v3;
}

- (void)setHasTxassocreq:(BOOL)txassocreq
{
  if (txassocreq)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFF7 | v3;
}

- (void)setHasTxassocrsp:(BOOL)txassocrsp
{
  if (txassocrsp)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFEF | v3;
}

- (void)setHasTxreassocreq:(BOOL)txreassocreq
{
  if (txreassocreq)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFEFF | v3;
}

- (void)setHasTxreassocrsp:(BOOL)txreassocrsp
{
  if (txreassocrsp)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFDFF | v3;
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDWiFiLTECoexBin;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDWiFiLTECoexBin description](&v3, sel_description), -[AWDWiFiLTECoexBin dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  has = self->_has;
  if ((has & 2) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_rxframe), @"rxframe"}];
    has = self->_has;
    if ((has & 0x40) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

  else if ((has & 0x40) == 0)
  {
    goto LABEL_3;
  }

  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_txframe), @"txframe"}];
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 0x400) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_18;
  }

LABEL_17:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_rxrtry), @"rxrtry"}];
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_5:
    if ((has & 0x80) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_19;
  }

LABEL_18:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_txretrans), @"txretrans"}];
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_6:
    if ((has & 0x800) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_20;
  }

LABEL_19:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_txnocts), @"txnocts"}];
  has = self->_has;
  if ((has & 0x800) == 0)
  {
LABEL_7:
    if ((has & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_21;
  }

LABEL_20:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_txrts), @"txrts"}];
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_8:
    if ((has & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_22;
  }

LABEL_21:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_txdeauth), @"txdeauth"}];
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_9:
    if ((has & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_23;
  }

LABEL_22:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_txassocreq), @"txassocreq"}];
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_10:
    if ((has & 0x100) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_24;
  }

LABEL_23:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_txassocrsp), @"txassocrsp"}];
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_11:
    if ((has & 0x200) == 0)
    {
      goto LABEL_12;
    }

LABEL_25:
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_txreassocrsp), @"txreassocrsp"}];
    if ((*&self->_has & 1) == 0)
    {
      return dictionary;
    }

    goto LABEL_13;
  }

LABEL_24:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_txreassocreq), @"txreassocreq"}];
  has = self->_has;
  if ((has & 0x200) != 0)
  {
    goto LABEL_25;
  }

LABEL_12:
  if (has)
  {
LABEL_13:
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_ctsnotrxafterrts), @"ctsnotrxafterrts"}];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  has = self->_has;
  if ((has & 2) != 0)
  {
    rxframe = self->_rxframe;
    PBDataWriterWriteUint64Field();
    has = self->_has;
    if ((has & 0x40) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((has & 0x40) == 0)
  {
    goto LABEL_3;
  }

  txframe = self->_txframe;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 0x400) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  rxrtry = self->_rxrtry;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_5:
    if ((has & 0x80) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_17:
  txretrans = self->_txretrans;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_6:
    if ((has & 0x800) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  txnocts = self->_txnocts;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 0x800) == 0)
  {
LABEL_7:
    if ((has & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

LABEL_19:
  txrts = self->_txrts;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_8:
    if ((has & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_20:
  txdeauth = self->_txdeauth;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_9:
    if ((has & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_22;
  }

LABEL_21:
  txassocreq = self->_txassocreq;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_10:
    if ((has & 0x100) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_23;
  }

LABEL_22:
  txassocrsp = self->_txassocrsp;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_11:
    if ((has & 0x200) == 0)
    {
      goto LABEL_12;
    }

LABEL_24:
    txreassocrsp = self->_txreassocrsp;
    PBDataWriterWriteUint64Field();
    if ((*&self->_has & 1) == 0)
    {
      return;
    }

    goto LABEL_25;
  }

LABEL_23:
  txreassocreq = self->_txreassocreq;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 0x200) != 0)
  {
    goto LABEL_24;
  }

LABEL_12:
  if ((has & 1) == 0)
  {
    return;
  }

LABEL_25:
  ctsnotrxafterrts = self->_ctsnotrxafterrts;

  PBDataWriterWriteUint64Field();
}

- (void)copyTo:(id)to
{
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(to + 2) = self->_rxframe;
    *(to + 52) |= 2u;
    has = self->_has;
    if ((has & 0x40) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((has & 0x40) == 0)
  {
    goto LABEL_3;
  }

  *(to + 7) = self->_txframe;
  *(to + 52) |= 0x40u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 0x400) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  *(to + 3) = self->_rxrtry;
  *(to + 52) |= 4u;
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_5:
    if ((has & 0x80) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_17:
  *(to + 11) = self->_txretrans;
  *(to + 52) |= 0x400u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_6:
    if ((has & 0x800) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  *(to + 8) = self->_txnocts;
  *(to + 52) |= 0x80u;
  has = self->_has;
  if ((has & 0x800) == 0)
  {
LABEL_7:
    if ((has & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

LABEL_19:
  *(to + 12) = self->_txrts;
  *(to + 52) |= 0x800u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_8:
    if ((has & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_20:
  *(to + 6) = self->_txdeauth;
  *(to + 52) |= 0x20u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_9:
    if ((has & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_22;
  }

LABEL_21:
  *(to + 4) = self->_txassocreq;
  *(to + 52) |= 8u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_10:
    if ((has & 0x100) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_23;
  }

LABEL_22:
  *(to + 5) = self->_txassocrsp;
  *(to + 52) |= 0x10u;
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_11:
    if ((has & 0x200) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_24;
  }

LABEL_23:
  *(to + 9) = self->_txreassocreq;
  *(to + 52) |= 0x100u;
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_12:
    if ((has & 1) == 0)
    {
      return;
    }

LABEL_25:
    *(to + 1) = self->_ctsnotrxafterrts;
    *(to + 52) |= 1u;
    return;
  }

LABEL_24:
  *(to + 10) = self->_txreassocrsp;
  *(to + 52) |= 0x200u;
  if (*&self->_has)
  {
    goto LABEL_25;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(result + 2) = self->_rxframe;
    *(result + 52) |= 2u;
    has = self->_has;
    if ((has & 0x40) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

  else if ((has & 0x40) == 0)
  {
    goto LABEL_3;
  }

  *(result + 7) = self->_txframe;
  *(result + 52) |= 0x40u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 0x400) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_18;
  }

LABEL_17:
  *(result + 3) = self->_rxrtry;
  *(result + 52) |= 4u;
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_5:
    if ((has & 0x80) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_19;
  }

LABEL_18:
  *(result + 11) = self->_txretrans;
  *(result + 52) |= 0x400u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_6:
    if ((has & 0x800) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_20;
  }

LABEL_19:
  *(result + 8) = self->_txnocts;
  *(result + 52) |= 0x80u;
  has = self->_has;
  if ((has & 0x800) == 0)
  {
LABEL_7:
    if ((has & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_21;
  }

LABEL_20:
  *(result + 12) = self->_txrts;
  *(result + 52) |= 0x800u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_8:
    if ((has & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_22;
  }

LABEL_21:
  *(result + 6) = self->_txdeauth;
  *(result + 52) |= 0x20u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_9:
    if ((has & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_23;
  }

LABEL_22:
  *(result + 4) = self->_txassocreq;
  *(result + 52) |= 8u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_10:
    if ((has & 0x100) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_24;
  }

LABEL_23:
  *(result + 5) = self->_txassocrsp;
  *(result + 52) |= 0x10u;
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_11:
    if ((has & 0x200) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_25;
  }

LABEL_24:
  *(result + 9) = self->_txreassocreq;
  *(result + 52) |= 0x100u;
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_12:
    if ((has & 1) == 0)
    {
      return result;
    }

    goto LABEL_13;
  }

LABEL_25:
  *(result + 10) = self->_txreassocrsp;
  *(result + 52) |= 0x200u;
  if ((*&self->_has & 1) == 0)
  {
    return result;
  }

LABEL_13:
  *(result + 1) = self->_ctsnotrxafterrts;
  *(result + 52) |= 1u;
  return result;
}

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    has = self->_has;
    v7 = *(equal + 52);
    if ((has & 2) != 0)
    {
      if ((v7 & 2) == 0 || self->_rxframe != *(equal + 2))
      {
        goto LABEL_61;
      }
    }

    else if ((v7 & 2) != 0)
    {
LABEL_61:
      LOBYTE(v5) = 0;
      return v5;
    }

    if ((has & 0x40) != 0)
    {
      if ((v7 & 0x40) == 0 || self->_txframe != *(equal + 7))
      {
        goto LABEL_61;
      }
    }

    else if ((v7 & 0x40) != 0)
    {
      goto LABEL_61;
    }

    if ((has & 4) != 0)
    {
      if ((v7 & 4) == 0 || self->_rxrtry != *(equal + 3))
      {
        goto LABEL_61;
      }
    }

    else if ((v7 & 4) != 0)
    {
      goto LABEL_61;
    }

    if ((*&self->_has & 0x400) != 0)
    {
      if ((*(equal + 52) & 0x400) == 0 || self->_txretrans != *(equal + 11))
      {
        goto LABEL_61;
      }
    }

    else if ((*(equal + 52) & 0x400) != 0)
    {
      goto LABEL_61;
    }

    if ((has & 0x80) != 0)
    {
      if ((v7 & 0x80) == 0 || self->_txnocts != *(equal + 8))
      {
        goto LABEL_61;
      }
    }

    else if ((v7 & 0x80) != 0)
    {
      goto LABEL_61;
    }

    if ((*&self->_has & 0x800) != 0)
    {
      if ((*(equal + 52) & 0x800) == 0 || self->_txrts != *(equal + 12))
      {
        goto LABEL_61;
      }
    }

    else if ((*(equal + 52) & 0x800) != 0)
    {
      goto LABEL_61;
    }

    if ((has & 0x20) != 0)
    {
      if ((v7 & 0x20) == 0 || self->_txdeauth != *(equal + 6))
      {
        goto LABEL_61;
      }
    }

    else if ((v7 & 0x20) != 0)
    {
      goto LABEL_61;
    }

    if ((has & 8) != 0)
    {
      if ((v7 & 8) == 0 || self->_txassocreq != *(equal + 4))
      {
        goto LABEL_61;
      }
    }

    else if ((v7 & 8) != 0)
    {
      goto LABEL_61;
    }

    if ((has & 0x10) != 0)
    {
      if ((v7 & 0x10) == 0 || self->_txassocrsp != *(equal + 5))
      {
        goto LABEL_61;
      }
    }

    else if ((v7 & 0x10) != 0)
    {
      goto LABEL_61;
    }

    if ((*&self->_has & 0x100) != 0)
    {
      if ((*(equal + 52) & 0x100) == 0 || self->_txreassocreq != *(equal + 9))
      {
        goto LABEL_61;
      }
    }

    else if ((*(equal + 52) & 0x100) != 0)
    {
      goto LABEL_61;
    }

    if ((*&self->_has & 0x200) != 0)
    {
      if ((*(equal + 52) & 0x200) == 0 || self->_txreassocrsp != *(equal + 10))
      {
        goto LABEL_61;
      }
    }

    else if ((*(equal + 52) & 0x200) != 0)
    {
      goto LABEL_61;
    }

    LOBYTE(v5) = (v7 & 1) == 0;
    if (has)
    {
      if ((v7 & 1) == 0 || self->_ctsnotrxafterrts != *(equal + 1))
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
  if ((has & 2) != 0)
  {
    v3 = 2654435761u * self->_rxframe;
    if ((has & 0x40) != 0)
    {
LABEL_3:
      v4 = 2654435761u * self->_txframe;
      if ((has & 4) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else
  {
    v3 = 0;
    if ((has & 0x40) != 0)
    {
      goto LABEL_3;
    }
  }

  v4 = 0;
  if ((has & 4) != 0)
  {
LABEL_4:
    v5 = 2654435761u * self->_rxrtry;
    if ((*&self->_has & 0x400) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  v5 = 0;
  if ((*&self->_has & 0x400) != 0)
  {
LABEL_5:
    v6 = 2654435761u * self->_txretrans;
    if ((has & 0x80) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_17:
  v6 = 0;
  if ((has & 0x80) != 0)
  {
LABEL_6:
    v7 = 2654435761u * self->_txnocts;
    if ((*&self->_has & 0x800) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  v7 = 0;
  if ((*&self->_has & 0x800) != 0)
  {
LABEL_7:
    v8 = 2654435761u * self->_txrts;
    if ((has & 0x20) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

LABEL_19:
  v8 = 0;
  if ((has & 0x20) != 0)
  {
LABEL_8:
    v9 = 2654435761u * self->_txdeauth;
    if ((has & 8) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_20:
  v9 = 0;
  if ((has & 8) != 0)
  {
LABEL_9:
    v10 = 2654435761u * self->_txassocreq;
    if ((has & 0x10) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_22;
  }

LABEL_21:
  v10 = 0;
  if ((has & 0x10) != 0)
  {
LABEL_10:
    v11 = 2654435761u * self->_txassocrsp;
    if ((*&self->_has & 0x100) != 0)
    {
      goto LABEL_11;
    }

    goto LABEL_23;
  }

LABEL_22:
  v11 = 0;
  if ((*&self->_has & 0x100) != 0)
  {
LABEL_11:
    v12 = 2654435761u * self->_txreassocreq;
    if ((*&self->_has & 0x200) != 0)
    {
      goto LABEL_12;
    }

LABEL_24:
    v13 = 0;
    if (has)
    {
      goto LABEL_13;
    }

LABEL_25:
    v14 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14;
  }

LABEL_23:
  v12 = 0;
  if ((*&self->_has & 0x200) == 0)
  {
    goto LABEL_24;
  }

LABEL_12:
  v13 = 2654435761u * self->_txreassocrsp;
  if ((has & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_13:
  v14 = 2654435761u * self->_ctsnotrxafterrts;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14;
}

- (void)mergeFrom:(id)from
{
  v3 = *(from + 52);
  if ((v3 & 2) != 0)
  {
    self->_rxframe = *(from + 2);
    *&self->_has |= 2u;
    v3 = *(from + 52);
    if ((v3 & 0x40) == 0)
    {
LABEL_3:
      if ((v3 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((v3 & 0x40) == 0)
  {
    goto LABEL_3;
  }

  self->_txframe = *(from + 7);
  *&self->_has |= 0x40u;
  v3 = *(from + 52);
  if ((v3 & 4) == 0)
  {
LABEL_4:
    if ((v3 & 0x400) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  self->_rxrtry = *(from + 3);
  *&self->_has |= 4u;
  v3 = *(from + 52);
  if ((v3 & 0x400) == 0)
  {
LABEL_5:
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_17:
  self->_txretrans = *(from + 11);
  *&self->_has |= 0x400u;
  v3 = *(from + 52);
  if ((v3 & 0x80) == 0)
  {
LABEL_6:
    if ((v3 & 0x800) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  self->_txnocts = *(from + 8);
  *&self->_has |= 0x80u;
  v3 = *(from + 52);
  if ((v3 & 0x800) == 0)
  {
LABEL_7:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

LABEL_19:
  self->_txrts = *(from + 12);
  *&self->_has |= 0x800u;
  v3 = *(from + 52);
  if ((v3 & 0x20) == 0)
  {
LABEL_8:
    if ((v3 & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_20:
  self->_txdeauth = *(from + 6);
  *&self->_has |= 0x20u;
  v3 = *(from + 52);
  if ((v3 & 8) == 0)
  {
LABEL_9:
    if ((v3 & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_22;
  }

LABEL_21:
  self->_txassocreq = *(from + 4);
  *&self->_has |= 8u;
  v3 = *(from + 52);
  if ((v3 & 0x10) == 0)
  {
LABEL_10:
    if ((v3 & 0x100) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_23;
  }

LABEL_22:
  self->_txassocrsp = *(from + 5);
  *&self->_has |= 0x10u;
  v3 = *(from + 52);
  if ((v3 & 0x100) == 0)
  {
LABEL_11:
    if ((v3 & 0x200) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_24;
  }

LABEL_23:
  self->_txreassocreq = *(from + 9);
  *&self->_has |= 0x100u;
  v3 = *(from + 52);
  if ((v3 & 0x200) == 0)
  {
LABEL_12:
    if ((v3 & 1) == 0)
    {
      return;
    }

LABEL_25:
    self->_ctsnotrxafterrts = *(from + 1);
    *&self->_has |= 1u;
    return;
  }

LABEL_24:
  self->_txreassocrsp = *(from + 10);
  *&self->_has |= 0x200u;
  if (*(from + 52))
  {
    goto LABEL_25;
  }
}

@end