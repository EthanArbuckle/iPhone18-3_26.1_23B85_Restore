@interface AWDMacCountersRx
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasRxcfrmmcast:(BOOL)rxcfrmmcast;
- (void)setHasRxcfrmocast:(BOOL)rxcfrmocast;
- (void)setHasRxcfrmucast:(BOOL)rxcfrmucast;
- (void)setHasRxctsocast:(BOOL)rxctsocast;
- (void)setHasRxctsucast:(BOOL)rxctsucast;
- (void)setHasRxdfrmmcast:(BOOL)rxdfrmmcast;
- (void)setHasRxdfrmocast:(BOOL)rxdfrmocast;
- (void)setHasRxdfrmucastmbss:(BOOL)rxdfrmucastmbss;
- (void)setHasRxmfrmmcast:(BOOL)rxmfrmmcast;
- (void)setHasRxmfrmocast:(BOOL)rxmfrmocast;
- (void)setHasRxmfrmucastmbss:(BOOL)rxmfrmucastmbss;
- (void)setHasRxrtsocast:(BOOL)rxrtsocast;
- (void)setHasRxrtsucast:(BOOL)rxrtsucast;
- (void)writeTo:(id)to;
@end

@implementation AWDMacCountersRx

- (void)setHasRxdfrmucastmbss:(BOOL)rxdfrmucastmbss
{
  if (rxdfrmucastmbss)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFEFF | v3;
}

- (void)setHasRxmfrmucastmbss:(BOOL)rxmfrmucastmbss
{
  if (rxmfrmucastmbss)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7FF | v3;
}

- (void)setHasRxcfrmucast:(BOOL)rxcfrmucast
{
  if (rxcfrmucast)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFF7 | v3;
}

- (void)setHasRxrtsucast:(BOOL)rxrtsucast
{
  if (rxrtsucast)
  {
    v3 = 0x2000;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDFFF | v3;
}

- (void)setHasRxctsucast:(BOOL)rxctsucast
{
  if (rxctsucast)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFDF | v3;
}

- (void)setHasRxdfrmocast:(BOOL)rxdfrmocast
{
  if (rxdfrmocast)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFF7F | v3;
}

- (void)setHasRxmfrmocast:(BOOL)rxmfrmocast
{
  if (rxmfrmocast)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFBFF | v3;
}

- (void)setHasRxcfrmocast:(BOOL)rxcfrmocast
{
  if (rxcfrmocast)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFB | v3;
}

- (void)setHasRxrtsocast:(BOOL)rxrtsocast
{
  if (rxrtsocast)
  {
    v3 = 4096;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEFFF | v3;
}

- (void)setHasRxctsocast:(BOOL)rxctsocast
{
  if (rxctsocast)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFEF | v3;
}

- (void)setHasRxdfrmmcast:(BOOL)rxdfrmmcast
{
  if (rxdfrmmcast)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFBF | v3;
}

- (void)setHasRxmfrmmcast:(BOOL)rxmfrmmcast
{
  if (rxmfrmmcast)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFDFF | v3;
}

- (void)setHasRxcfrmmcast:(BOOL)rxcfrmmcast
{
  if (rxcfrmmcast)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFD | v3;
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDMacCountersRx;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDMacCountersRx description](&v3, sel_description), -[AWDMacCountersRx dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  has = self->_has;
  if ((has & 0x100) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_rxdfrmucastmbss), @"rxdfrmucastmbss"}];
    has = self->_has;
    if ((has & 0x800) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_19;
    }
  }

  else if ((*&self->_has & 0x800) == 0)
  {
    goto LABEL_3;
  }

  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_rxmfrmucastmbss), @"rxmfrmucastmbss"}];
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 0x2000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_20;
  }

LABEL_19:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_rxcfrmucast), @"rxcfrmucast"}];
  has = self->_has;
  if ((has & 0x2000) == 0)
  {
LABEL_5:
    if ((has & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_21;
  }

LABEL_20:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_rxrtsucast), @"rxrtsucast"}];
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_6:
    if ((has & 1) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_22;
  }

LABEL_21:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_rxctsucast), @"rxctsucast"}];
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_7:
    if ((has & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_23;
  }

LABEL_22:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_rxackucast), @"rxackucast"}];
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_8:
    if ((has & 0x400) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_24;
  }

LABEL_23:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_rxdfrmocast), @"rxdfrmocast"}];
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_9:
    if ((has & 4) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_25;
  }

LABEL_24:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_rxmfrmocast), @"rxmfrmocast"}];
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_10:
    if ((has & 0x1000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_26;
  }

LABEL_25:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_rxcfrmocast), @"rxcfrmocast"}];
  has = self->_has;
  if ((has & 0x1000) == 0)
  {
LABEL_11:
    if ((has & 0x10) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_27;
  }

LABEL_26:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_rxrtsocast), @"rxrtsocast"}];
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_12:
    if ((has & 0x40) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_28;
  }

LABEL_27:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_rxctsocast), @"rxctsocast"}];
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_13:
    if ((has & 0x200) == 0)
    {
      goto LABEL_14;
    }

LABEL_29:
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_rxmfrmmcast), @"rxmfrmmcast"}];
    if ((*&self->_has & 2) == 0)
    {
      return dictionary;
    }

    goto LABEL_15;
  }

LABEL_28:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_rxdfrmmcast), @"rxdfrmmcast"}];
  has = self->_has;
  if ((has & 0x200) != 0)
  {
    goto LABEL_29;
  }

LABEL_14:
  if ((has & 2) != 0)
  {
LABEL_15:
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_rxcfrmmcast), @"rxcfrmmcast"}];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  has = self->_has;
  if ((has & 0x100) != 0)
  {
    rxdfrmucastmbss = self->_rxdfrmucastmbss;
    PBDataWriterWriteUint64Field();
    has = self->_has;
    if ((has & 0x800) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_18;
    }
  }

  else if ((*&self->_has & 0x800) == 0)
  {
    goto LABEL_3;
  }

  rxmfrmucastmbss = self->_rxmfrmucastmbss;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 0x2000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_18:
  rxcfrmucast = self->_rxcfrmucast;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 0x2000) == 0)
  {
LABEL_5:
    if ((has & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

LABEL_19:
  rxrtsucast = self->_rxrtsucast;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_6:
    if ((has & 1) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_21;
  }

LABEL_20:
  rxctsucast = self->_rxctsucast;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_7:
    if ((has & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

LABEL_21:
  rxackucast = self->_rxackucast;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_8:
    if ((has & 0x400) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_23;
  }

LABEL_22:
  rxdfrmocast = self->_rxdfrmocast;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_9:
    if ((has & 4) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_24;
  }

LABEL_23:
  rxmfrmocast = self->_rxmfrmocast;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_10:
    if ((has & 0x1000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_25;
  }

LABEL_24:
  rxcfrmocast = self->_rxcfrmocast;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 0x1000) == 0)
  {
LABEL_11:
    if ((has & 0x10) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_26;
  }

LABEL_25:
  rxrtsocast = self->_rxrtsocast;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_12:
    if ((has & 0x40) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_27;
  }

LABEL_26:
  rxctsocast = self->_rxctsocast;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_13:
    if ((has & 0x200) == 0)
    {
      goto LABEL_14;
    }

LABEL_28:
    rxmfrmmcast = self->_rxmfrmmcast;
    PBDataWriterWriteUint64Field();
    if ((*&self->_has & 2) == 0)
    {
      return;
    }

    goto LABEL_29;
  }

LABEL_27:
  rxdfrmmcast = self->_rxdfrmmcast;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 0x200) != 0)
  {
    goto LABEL_28;
  }

LABEL_14:
  if ((has & 2) == 0)
  {
    return;
  }

LABEL_29:
  rxcfrmmcast = self->_rxcfrmmcast;

  PBDataWriterWriteUint64Field();
}

- (void)copyTo:(id)to
{
  has = self->_has;
  if ((has & 0x100) != 0)
  {
    *(to + 9) = self->_rxdfrmucastmbss;
    *(to + 60) |= 0x100u;
    has = self->_has;
    if ((has & 0x800) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_18;
    }
  }

  else if ((*&self->_has & 0x800) == 0)
  {
    goto LABEL_3;
  }

  *(to + 12) = self->_rxmfrmucastmbss;
  *(to + 60) |= 0x800u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 0x2000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_18:
  *(to + 4) = self->_rxcfrmucast;
  *(to + 60) |= 8u;
  has = self->_has;
  if ((has & 0x2000) == 0)
  {
LABEL_5:
    if ((has & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

LABEL_19:
  *(to + 14) = self->_rxrtsucast;
  *(to + 60) |= 0x2000u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_6:
    if ((has & 1) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_21;
  }

LABEL_20:
  *(to + 6) = self->_rxctsucast;
  *(to + 60) |= 0x20u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_7:
    if ((has & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

LABEL_21:
  *(to + 1) = self->_rxackucast;
  *(to + 60) |= 1u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_8:
    if ((has & 0x400) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_23;
  }

LABEL_22:
  *(to + 8) = self->_rxdfrmocast;
  *(to + 60) |= 0x80u;
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_9:
    if ((has & 4) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_24;
  }

LABEL_23:
  *(to + 11) = self->_rxmfrmocast;
  *(to + 60) |= 0x400u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_10:
    if ((has & 0x1000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_25;
  }

LABEL_24:
  *(to + 3) = self->_rxcfrmocast;
  *(to + 60) |= 4u;
  has = self->_has;
  if ((has & 0x1000) == 0)
  {
LABEL_11:
    if ((has & 0x10) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_26;
  }

LABEL_25:
  *(to + 13) = self->_rxrtsocast;
  *(to + 60) |= 0x1000u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_12:
    if ((has & 0x40) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_27;
  }

LABEL_26:
  *(to + 5) = self->_rxctsocast;
  *(to + 60) |= 0x10u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_13:
    if ((has & 0x200) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_28;
  }

LABEL_27:
  *(to + 7) = self->_rxdfrmmcast;
  *(to + 60) |= 0x40u;
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_14:
    if ((has & 2) == 0)
    {
      return;
    }

LABEL_29:
    *(to + 2) = self->_rxcfrmmcast;
    *(to + 60) |= 2u;
    return;
  }

LABEL_28:
  *(to + 10) = self->_rxmfrmmcast;
  *(to + 60) |= 0x200u;
  if ((*&self->_has & 2) != 0)
  {
    goto LABEL_29;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  has = self->_has;
  if ((has & 0x100) != 0)
  {
    *(result + 9) = self->_rxdfrmucastmbss;
    *(result + 60) |= 0x100u;
    has = self->_has;
    if ((has & 0x800) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_19;
    }
  }

  else if ((*&self->_has & 0x800) == 0)
  {
    goto LABEL_3;
  }

  *(result + 12) = self->_rxmfrmucastmbss;
  *(result + 60) |= 0x800u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 0x2000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_20;
  }

LABEL_19:
  *(result + 4) = self->_rxcfrmucast;
  *(result + 60) |= 8u;
  has = self->_has;
  if ((has & 0x2000) == 0)
  {
LABEL_5:
    if ((has & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_21;
  }

LABEL_20:
  *(result + 14) = self->_rxrtsucast;
  *(result + 60) |= 0x2000u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_6:
    if ((has & 1) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_22;
  }

LABEL_21:
  *(result + 6) = self->_rxctsucast;
  *(result + 60) |= 0x20u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_7:
    if ((has & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_23;
  }

LABEL_22:
  *(result + 1) = self->_rxackucast;
  *(result + 60) |= 1u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_8:
    if ((has & 0x400) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_24;
  }

LABEL_23:
  *(result + 8) = self->_rxdfrmocast;
  *(result + 60) |= 0x80u;
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_9:
    if ((has & 4) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_25;
  }

LABEL_24:
  *(result + 11) = self->_rxmfrmocast;
  *(result + 60) |= 0x400u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_10:
    if ((has & 0x1000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_26;
  }

LABEL_25:
  *(result + 3) = self->_rxcfrmocast;
  *(result + 60) |= 4u;
  has = self->_has;
  if ((has & 0x1000) == 0)
  {
LABEL_11:
    if ((has & 0x10) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_27;
  }

LABEL_26:
  *(result + 13) = self->_rxrtsocast;
  *(result + 60) |= 0x1000u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_12:
    if ((has & 0x40) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_28;
  }

LABEL_27:
  *(result + 5) = self->_rxctsocast;
  *(result + 60) |= 0x10u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_13:
    if ((has & 0x200) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_29;
  }

LABEL_28:
  *(result + 7) = self->_rxdfrmmcast;
  *(result + 60) |= 0x40u;
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_14:
    if ((has & 2) == 0)
    {
      return result;
    }

    goto LABEL_15;
  }

LABEL_29:
  *(result + 10) = self->_rxmfrmmcast;
  *(result + 60) |= 0x200u;
  if ((*&self->_has & 2) == 0)
  {
    return result;
  }

LABEL_15:
  *(result + 2) = self->_rxcfrmmcast;
  *(result + 60) |= 2u;
  return result;
}

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    has = self->_has;
    v7 = *(equal + 60);
    if ((has & 0x100) != 0)
    {
      if ((*(equal + 60) & 0x100) == 0 || self->_rxdfrmucastmbss != *(equal + 9))
      {
        goto LABEL_71;
      }
    }

    else if ((*(equal + 60) & 0x100) != 0)
    {
LABEL_71:
      LOBYTE(v5) = 0;
      return v5;
    }

    if ((*&self->_has & 0x800) != 0)
    {
      if ((*(equal + 60) & 0x800) == 0 || self->_rxmfrmucastmbss != *(equal + 12))
      {
        goto LABEL_71;
      }
    }

    else if ((*(equal + 60) & 0x800) != 0)
    {
      goto LABEL_71;
    }

    if ((has & 8) != 0)
    {
      if ((v7 & 8) == 0 || self->_rxcfrmucast != *(equal + 4))
      {
        goto LABEL_71;
      }
    }

    else if ((v7 & 8) != 0)
    {
      goto LABEL_71;
    }

    if ((*&self->_has & 0x2000) != 0)
    {
      if ((*(equal + 60) & 0x2000) == 0 || self->_rxrtsucast != *(equal + 14))
      {
        goto LABEL_71;
      }
    }

    else if ((*(equal + 60) & 0x2000) != 0)
    {
      goto LABEL_71;
    }

    if ((has & 0x20) != 0)
    {
      if ((v7 & 0x20) == 0 || self->_rxctsucast != *(equal + 6))
      {
        goto LABEL_71;
      }
    }

    else if ((v7 & 0x20) != 0)
    {
      goto LABEL_71;
    }

    if (has)
    {
      if ((v7 & 1) == 0 || self->_rxackucast != *(equal + 1))
      {
        goto LABEL_71;
      }
    }

    else if (v7)
    {
      goto LABEL_71;
    }

    if ((has & 0x80) != 0)
    {
      if ((v7 & 0x80) == 0 || self->_rxdfrmocast != *(equal + 8))
      {
        goto LABEL_71;
      }
    }

    else if ((v7 & 0x80) != 0)
    {
      goto LABEL_71;
    }

    if ((*&self->_has & 0x400) != 0)
    {
      if ((*(equal + 60) & 0x400) == 0 || self->_rxmfrmocast != *(equal + 11))
      {
        goto LABEL_71;
      }
    }

    else if ((*(equal + 60) & 0x400) != 0)
    {
      goto LABEL_71;
    }

    if ((has & 4) != 0)
    {
      if ((v7 & 4) == 0 || self->_rxcfrmocast != *(equal + 3))
      {
        goto LABEL_71;
      }
    }

    else if ((v7 & 4) != 0)
    {
      goto LABEL_71;
    }

    if ((*&self->_has & 0x1000) != 0)
    {
      if ((*(equal + 60) & 0x1000) == 0 || self->_rxrtsocast != *(equal + 13))
      {
        goto LABEL_71;
      }
    }

    else if ((*(equal + 60) & 0x1000) != 0)
    {
      goto LABEL_71;
    }

    if ((has & 0x10) != 0)
    {
      if ((v7 & 0x10) == 0 || self->_rxctsocast != *(equal + 5))
      {
        goto LABEL_71;
      }
    }

    else if ((v7 & 0x10) != 0)
    {
      goto LABEL_71;
    }

    if ((has & 0x40) != 0)
    {
      if ((v7 & 0x40) == 0 || self->_rxdfrmmcast != *(equal + 7))
      {
        goto LABEL_71;
      }
    }

    else if ((v7 & 0x40) != 0)
    {
      goto LABEL_71;
    }

    if ((*&self->_has & 0x200) != 0)
    {
      if ((*(equal + 60) & 0x200) == 0 || self->_rxmfrmmcast != *(equal + 10))
      {
        goto LABEL_71;
      }
    }

    else if ((*(equal + 60) & 0x200) != 0)
    {
      goto LABEL_71;
    }

    LOBYTE(v5) = (v7 & 2) == 0;
    if ((has & 2) != 0)
    {
      if ((v7 & 2) == 0 || self->_rxcfrmmcast != *(equal + 2))
      {
        goto LABEL_71;
      }

      LOBYTE(v5) = 1;
    }
  }

  return v5;
}

- (unint64_t)hash
{
  has = self->_has;
  if ((has & 0x100) != 0)
  {
    v3 = 2654435761u * self->_rxdfrmucastmbss;
    if ((*&self->_has & 0x800) != 0)
    {
LABEL_3:
      v4 = 2654435761u * self->_rxmfrmucastmbss;
      if ((has & 8) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_18;
    }
  }

  else
  {
    v3 = 0;
    if ((*&self->_has & 0x800) != 0)
    {
      goto LABEL_3;
    }
  }

  v4 = 0;
  if ((has & 8) != 0)
  {
LABEL_4:
    v5 = 2654435761u * self->_rxcfrmucast;
    if ((*&self->_has & 0x2000) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_18:
  v5 = 0;
  if ((*&self->_has & 0x2000) != 0)
  {
LABEL_5:
    v6 = 2654435761u * self->_rxrtsucast;
    if ((has & 0x20) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

LABEL_19:
  v6 = 0;
  if ((has & 0x20) != 0)
  {
LABEL_6:
    v7 = 2654435761u * self->_rxctsucast;
    if (has)
    {
      goto LABEL_7;
    }

    goto LABEL_21;
  }

LABEL_20:
  v7 = 0;
  if (has)
  {
LABEL_7:
    v8 = 2654435761u * self->_rxackucast;
    if ((has & 0x80) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

LABEL_21:
  v8 = 0;
  if ((has & 0x80) != 0)
  {
LABEL_8:
    v9 = 2654435761u * self->_rxdfrmocast;
    if ((*&self->_has & 0x400) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_23;
  }

LABEL_22:
  v9 = 0;
  if ((*&self->_has & 0x400) != 0)
  {
LABEL_9:
    v10 = 2654435761u * self->_rxmfrmocast;
    if ((has & 4) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_24;
  }

LABEL_23:
  v10 = 0;
  if ((has & 4) != 0)
  {
LABEL_10:
    v11 = 2654435761u * self->_rxcfrmocast;
    if ((*&self->_has & 0x1000) != 0)
    {
      goto LABEL_11;
    }

    goto LABEL_25;
  }

LABEL_24:
  v11 = 0;
  if ((*&self->_has & 0x1000) != 0)
  {
LABEL_11:
    v12 = 2654435761u * self->_rxrtsocast;
    if ((has & 0x10) != 0)
    {
      goto LABEL_12;
    }

    goto LABEL_26;
  }

LABEL_25:
  v12 = 0;
  if ((has & 0x10) != 0)
  {
LABEL_12:
    v13 = 2654435761u * self->_rxctsocast;
    if ((has & 0x40) != 0)
    {
      goto LABEL_13;
    }

    goto LABEL_27;
  }

LABEL_26:
  v13 = 0;
  if ((has & 0x40) != 0)
  {
LABEL_13:
    v14 = 2654435761u * self->_rxdfrmmcast;
    if ((*&self->_has & 0x200) != 0)
    {
      goto LABEL_14;
    }

LABEL_28:
    v15 = 0;
    if ((has & 2) != 0)
    {
      goto LABEL_15;
    }

LABEL_29:
    v16 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16;
  }

LABEL_27:
  v14 = 0;
  if ((*&self->_has & 0x200) == 0)
  {
    goto LABEL_28;
  }

LABEL_14:
  v15 = 2654435761u * self->_rxmfrmmcast;
  if ((has & 2) == 0)
  {
    goto LABEL_29;
  }

LABEL_15:
  v16 = 2654435761u * self->_rxcfrmmcast;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16;
}

- (void)mergeFrom:(id)from
{
  v3 = *(from + 60);
  if ((v3 & 0x100) != 0)
  {
    self->_rxdfrmucastmbss = *(from + 9);
    *&self->_has |= 0x100u;
    v3 = *(from + 60);
    if ((v3 & 0x800) == 0)
    {
LABEL_3:
      if ((v3 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_18;
    }
  }

  else if ((*(from + 60) & 0x800) == 0)
  {
    goto LABEL_3;
  }

  self->_rxmfrmucastmbss = *(from + 12);
  *&self->_has |= 0x800u;
  v3 = *(from + 60);
  if ((v3 & 8) == 0)
  {
LABEL_4:
    if ((v3 & 0x2000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_18:
  self->_rxcfrmucast = *(from + 4);
  *&self->_has |= 8u;
  v3 = *(from + 60);
  if ((v3 & 0x2000) == 0)
  {
LABEL_5:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

LABEL_19:
  self->_rxrtsucast = *(from + 14);
  *&self->_has |= 0x2000u;
  v3 = *(from + 60);
  if ((v3 & 0x20) == 0)
  {
LABEL_6:
    if ((v3 & 1) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_21;
  }

LABEL_20:
  self->_rxctsucast = *(from + 6);
  *&self->_has |= 0x20u;
  v3 = *(from + 60);
  if ((v3 & 1) == 0)
  {
LABEL_7:
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

LABEL_21:
  self->_rxackucast = *(from + 1);
  *&self->_has |= 1u;
  v3 = *(from + 60);
  if ((v3 & 0x80) == 0)
  {
LABEL_8:
    if ((v3 & 0x400) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_23;
  }

LABEL_22:
  self->_rxdfrmocast = *(from + 8);
  *&self->_has |= 0x80u;
  v3 = *(from + 60);
  if ((v3 & 0x400) == 0)
  {
LABEL_9:
    if ((v3 & 4) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_24;
  }

LABEL_23:
  self->_rxmfrmocast = *(from + 11);
  *&self->_has |= 0x400u;
  v3 = *(from + 60);
  if ((v3 & 4) == 0)
  {
LABEL_10:
    if ((v3 & 0x1000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_25;
  }

LABEL_24:
  self->_rxcfrmocast = *(from + 3);
  *&self->_has |= 4u;
  v3 = *(from + 60);
  if ((v3 & 0x1000) == 0)
  {
LABEL_11:
    if ((v3 & 0x10) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_26;
  }

LABEL_25:
  self->_rxrtsocast = *(from + 13);
  *&self->_has |= 0x1000u;
  v3 = *(from + 60);
  if ((v3 & 0x10) == 0)
  {
LABEL_12:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_27;
  }

LABEL_26:
  self->_rxctsocast = *(from + 5);
  *&self->_has |= 0x10u;
  v3 = *(from + 60);
  if ((v3 & 0x40) == 0)
  {
LABEL_13:
    if ((v3 & 0x200) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_28;
  }

LABEL_27:
  self->_rxdfrmmcast = *(from + 7);
  *&self->_has |= 0x40u;
  v3 = *(from + 60);
  if ((v3 & 0x200) == 0)
  {
LABEL_14:
    if ((v3 & 2) == 0)
    {
      return;
    }

LABEL_29:
    self->_rxcfrmmcast = *(from + 2);
    *&self->_has |= 2u;
    return;
  }

LABEL_28:
  self->_rxmfrmmcast = *(from + 10);
  *&self->_has |= 0x200u;
  if ((*(from + 60) & 2) != 0)
  {
    goto LABEL_29;
  }
}

@end