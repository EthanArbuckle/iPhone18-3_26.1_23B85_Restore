@interface AWDChipCountersRx
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasRxbadda:(BOOL)rxbadda;
- (void)setHasRxbadds:(BOOL)rxbadds;
- (void)setHasRxbadproto:(BOOL)rxbadproto;
- (void)setHasRxbadsrcmac:(BOOL)rxbadsrcmac;
- (void)setHasRxbyte:(BOOL)rxbyte;
- (void)setHasRxctl:(BOOL)rxctl;
- (void)setHasRxerror:(BOOL)rxerror;
- (void)setHasRxfilter:(BOOL)rxfilter;
- (void)setHasRxfragerr:(BOOL)rxfragerr;
- (void)setHasRxframe:(BOOL)rxframe;
- (void)setHasRxgiant:(BOOL)rxgiant;
- (void)setHasRxnobuf:(BOOL)rxnobuf;
- (void)setHasRxnondata:(BOOL)rxnondata;
- (void)setHasRxnoscb:(BOOL)rxnoscb;
- (void)setHasRxrtry:(BOOL)rxrtry;
- (void)setHasRxrunt:(BOOL)rxrunt;
- (void)writeTo:(id)to;
@end

@implementation AWDChipCountersRx

- (void)setHasRxframe:(BOOL)rxframe
{
  if (rxframe)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFBFF | v3);
}

- (void)setHasRxbyte:(BOOL)rxbyte
{
  if (rxbyte)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFDF | v3);
}

- (void)setHasRxerror:(BOOL)rxerror
{
  if (rxerror)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFF7F | v3);
}

- (void)setHasRxctl:(BOOL)rxctl
{
  if (rxctl)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFBF | v3);
}

- (void)setHasRxnobuf:(BOOL)rxnobuf
{
  if (rxnobuf)
  {
    v3 = 4096;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFEFFF | v3);
}

- (void)setHasRxrtry:(BOOL)rxrtry
{
  if (rxrtry)
  {
    v3 = 0x8000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFF7FFF | v3);
}

- (void)setHasRxnondata:(BOOL)rxnondata
{
  if (rxnondata)
  {
    v3 = 0x2000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFDFFF | v3);
}

- (void)setHasRxbadds:(BOOL)rxbadds
{
  if (rxbadds)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFB | v3);
}

- (void)setHasRxfragerr:(BOOL)rxfragerr
{
  if (rxfragerr)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFDFF | v3);
}

- (void)setHasRxrunt:(BOOL)rxrunt
{
  if (rxrunt)
  {
    v3 = 0x10000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFEFFFF | v3);
}

- (void)setHasRxgiant:(BOOL)rxgiant
{
  if (rxgiant)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFF7FF | v3);
}

- (void)setHasRxnoscb:(BOOL)rxnoscb
{
  if (rxnoscb)
  {
    v3 = 0x4000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFBFFF | v3);
}

- (void)setHasRxbadproto:(BOOL)rxbadproto
{
  if (rxbadproto)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFF7 | v3);
}

- (void)setHasRxbadsrcmac:(BOOL)rxbadsrcmac
{
  if (rxbadsrcmac)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFEF | v3);
}

- (void)setHasRxbadda:(BOOL)rxbadda
{
  if (rxbadda)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFD | v3);
}

- (void)setHasRxfilter:(BOOL)rxfilter
{
  if (rxfilter)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFEFF | v3);
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDChipCountersRx;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDChipCountersRx description](&v3, sel_description), -[AWDChipCountersRx dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  has = self->_has;
  if ((*&has & 0x400) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_rxframe), @"rxframe"}];
    has = self->_has;
    if ((*&has & 0x20) == 0)
    {
LABEL_3:
      if ((*&has & 0x80) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_22;
    }
  }

  else if ((*&has & 0x20) == 0)
  {
    goto LABEL_3;
  }

  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_rxbyte), @"rxbyte"}];
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_4:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_23;
  }

LABEL_22:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_rxerror), @"rxerror"}];
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_5:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_24;
  }

LABEL_23:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_rxctl), @"rxctl"}];
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_6:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_25;
  }

LABEL_24:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_rxnobuf), @"rxnobuf"}];
  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_7:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_26;
  }

LABEL_25:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_rxrtry), @"rxrtry"}];
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_8:
    if ((*&has & 4) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_27;
  }

LABEL_26:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_rxnondata), @"rxnondata"}];
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_9:
    if ((*&has & 1) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_28;
  }

LABEL_27:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_rxbadds), @"rxbadds"}];
  has = self->_has;
  if ((*&has & 1) == 0)
  {
LABEL_10:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_29;
  }

LABEL_28:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_rxbadcm), @"rxbadcm"}];
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_11:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_30;
  }

LABEL_29:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_rxfragerr), @"rxfragerr"}];
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_12:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_31;
  }

LABEL_30:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_rxrunt), @"rxrunt"}];
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_13:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_32;
  }

LABEL_31:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_rxgiant), @"rxgiant"}];
  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_14:
    if ((*&has & 8) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_33;
  }

LABEL_32:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_rxnoscb), @"rxnoscb"}];
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_15:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_34;
  }

LABEL_33:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_rxbadproto), @"rxbadproto"}];
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_16:
    if ((*&has & 2) == 0)
    {
      goto LABEL_17;
    }

LABEL_35:
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_rxbadda), @"rxbadda"}];
    if ((*&self->_has & 0x100) == 0)
    {
      return dictionary;
    }

    goto LABEL_18;
  }

LABEL_34:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_rxbadsrcmac), @"rxbadsrcmac"}];
  has = self->_has;
  if ((*&has & 2) != 0)
  {
    goto LABEL_35;
  }

LABEL_17:
  if ((*&has & 0x100) != 0)
  {
LABEL_18:
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_rxfilter), @"rxfilter"}];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  has = self->_has;
  if ((*&has & 0x400) != 0)
  {
    rxframe = self->_rxframe;
    PBDataWriterWriteUint64Field();
    has = self->_has;
    if ((*&has & 0x20) == 0)
    {
LABEL_3:
      if ((*&has & 0x80) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_21;
    }
  }

  else if ((*&has & 0x20) == 0)
  {
    goto LABEL_3;
  }

  rxbyte = self->_rxbyte;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_4:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_22;
  }

LABEL_21:
  rxerror = self->_rxerror;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_5:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_23;
  }

LABEL_22:
  rxctl = self->_rxctl;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_6:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_24;
  }

LABEL_23:
  rxnobuf = self->_rxnobuf;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_7:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_25;
  }

LABEL_24:
  rxrtry = self->_rxrtry;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_8:
    if ((*&has & 4) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_26;
  }

LABEL_25:
  rxnondata = self->_rxnondata;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_9:
    if ((*&has & 1) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_27;
  }

LABEL_26:
  rxbadds = self->_rxbadds;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 1) == 0)
  {
LABEL_10:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_28;
  }

LABEL_27:
  rxbadcm = self->_rxbadcm;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_11:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_29;
  }

LABEL_28:
  rxfragerr = self->_rxfragerr;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_12:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_30;
  }

LABEL_29:
  rxrunt = self->_rxrunt;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_13:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_31;
  }

LABEL_30:
  rxgiant = self->_rxgiant;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_14:
    if ((*&has & 8) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_32;
  }

LABEL_31:
  rxnoscb = self->_rxnoscb;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_15:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_33;
  }

LABEL_32:
  rxbadproto = self->_rxbadproto;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_16:
    if ((*&has & 2) == 0)
    {
      goto LABEL_17;
    }

LABEL_34:
    rxbadda = self->_rxbadda;
    PBDataWriterWriteUint64Field();
    if ((*&self->_has & 0x100) == 0)
    {
      return;
    }

    goto LABEL_35;
  }

LABEL_33:
  rxbadsrcmac = self->_rxbadsrcmac;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 2) != 0)
  {
    goto LABEL_34;
  }

LABEL_17:
  if ((*&has & 0x100) == 0)
  {
    return;
  }

LABEL_35:
  rxfilter = self->_rxfilter;

  PBDataWriterWriteUint64Field();
}

- (void)copyTo:(id)to
{
  has = self->_has;
  if ((*&has & 0x400) != 0)
  {
    *(to + 11) = self->_rxframe;
    *(to + 36) |= 0x400u;
    has = self->_has;
    if ((*&has & 0x20) == 0)
    {
LABEL_3:
      if ((*&has & 0x80) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_21;
    }
  }

  else if ((*&has & 0x20) == 0)
  {
    goto LABEL_3;
  }

  *(to + 6) = self->_rxbyte;
  *(to + 36) |= 0x20u;
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_4:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_22;
  }

LABEL_21:
  *(to + 8) = self->_rxerror;
  *(to + 36) |= 0x80u;
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_5:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_23;
  }

LABEL_22:
  *(to + 7) = self->_rxctl;
  *(to + 36) |= 0x40u;
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_6:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_24;
  }

LABEL_23:
  *(to + 13) = self->_rxnobuf;
  *(to + 36) |= 0x1000u;
  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_7:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_25;
  }

LABEL_24:
  *(to + 16) = self->_rxrtry;
  *(to + 36) |= 0x8000u;
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_8:
    if ((*&has & 4) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_26;
  }

LABEL_25:
  *(to + 14) = self->_rxnondata;
  *(to + 36) |= 0x2000u;
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_9:
    if ((*&has & 1) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_27;
  }

LABEL_26:
  *(to + 3) = self->_rxbadds;
  *(to + 36) |= 4u;
  has = self->_has;
  if ((*&has & 1) == 0)
  {
LABEL_10:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_28;
  }

LABEL_27:
  *(to + 1) = self->_rxbadcm;
  *(to + 36) |= 1u;
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_11:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_29;
  }

LABEL_28:
  *(to + 10) = self->_rxfragerr;
  *(to + 36) |= 0x200u;
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_12:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_30;
  }

LABEL_29:
  *(to + 17) = self->_rxrunt;
  *(to + 36) |= 0x10000u;
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_13:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_31;
  }

LABEL_30:
  *(to + 12) = self->_rxgiant;
  *(to + 36) |= 0x800u;
  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_14:
    if ((*&has & 8) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_32;
  }

LABEL_31:
  *(to + 15) = self->_rxnoscb;
  *(to + 36) |= 0x4000u;
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_15:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_33;
  }

LABEL_32:
  *(to + 4) = self->_rxbadproto;
  *(to + 36) |= 8u;
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_16:
    if ((*&has & 2) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_34;
  }

LABEL_33:
  *(to + 5) = self->_rxbadsrcmac;
  *(to + 36) |= 0x10u;
  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_17:
    if ((*&has & 0x100) == 0)
    {
      return;
    }

LABEL_35:
    *(to + 9) = self->_rxfilter;
    *(to + 36) |= 0x100u;
    return;
  }

LABEL_34:
  *(to + 2) = self->_rxbadda;
  *(to + 36) |= 2u;
  if ((*&self->_has & 0x100) != 0)
  {
    goto LABEL_35;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  has = self->_has;
  if ((*&has & 0x400) != 0)
  {
    *(result + 11) = self->_rxframe;
    *(result + 36) |= 0x400u;
    has = self->_has;
    if ((*&has & 0x20) == 0)
    {
LABEL_3:
      if ((*&has & 0x80) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_22;
    }
  }

  else if ((*&has & 0x20) == 0)
  {
    goto LABEL_3;
  }

  *(result + 6) = self->_rxbyte;
  *(result + 36) |= 0x20u;
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_4:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_23;
  }

LABEL_22:
  *(result + 8) = self->_rxerror;
  *(result + 36) |= 0x80u;
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_5:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_24;
  }

LABEL_23:
  *(result + 7) = self->_rxctl;
  *(result + 36) |= 0x40u;
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_6:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_25;
  }

LABEL_24:
  *(result + 13) = self->_rxnobuf;
  *(result + 36) |= 0x1000u;
  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_7:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_26;
  }

LABEL_25:
  *(result + 16) = self->_rxrtry;
  *(result + 36) |= 0x8000u;
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_8:
    if ((*&has & 4) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_27;
  }

LABEL_26:
  *(result + 14) = self->_rxnondata;
  *(result + 36) |= 0x2000u;
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_9:
    if ((*&has & 1) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_28;
  }

LABEL_27:
  *(result + 3) = self->_rxbadds;
  *(result + 36) |= 4u;
  has = self->_has;
  if ((*&has & 1) == 0)
  {
LABEL_10:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_29;
  }

LABEL_28:
  *(result + 1) = self->_rxbadcm;
  *(result + 36) |= 1u;
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_11:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_30;
  }

LABEL_29:
  *(result + 10) = self->_rxfragerr;
  *(result + 36) |= 0x200u;
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_12:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_31;
  }

LABEL_30:
  *(result + 17) = self->_rxrunt;
  *(result + 36) |= 0x10000u;
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_13:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_32;
  }

LABEL_31:
  *(result + 12) = self->_rxgiant;
  *(result + 36) |= 0x800u;
  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_14:
    if ((*&has & 8) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_33;
  }

LABEL_32:
  *(result + 15) = self->_rxnoscb;
  *(result + 36) |= 0x4000u;
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_15:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_34;
  }

LABEL_33:
  *(result + 4) = self->_rxbadproto;
  *(result + 36) |= 8u;
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_16:
    if ((*&has & 2) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_35;
  }

LABEL_34:
  *(result + 5) = self->_rxbadsrcmac;
  *(result + 36) |= 0x10u;
  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_17:
    if ((*&has & 0x100) == 0)
    {
      return result;
    }

    goto LABEL_18;
  }

LABEL_35:
  *(result + 2) = self->_rxbadda;
  *(result + 36) |= 2u;
  if ((*&self->_has & 0x100) == 0)
  {
    return result;
  }

LABEL_18:
  *(result + 9) = self->_rxfilter;
  *(result + 36) |= 0x100u;
  return result;
}

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    has = self->_has;
    v7 = *(equal + 36);
    if ((*&has & 0x400) != 0)
    {
      if ((v7 & 0x400) == 0 || self->_rxframe != *(equal + 11))
      {
        goto LABEL_86;
      }
    }

    else if ((v7 & 0x400) != 0)
    {
LABEL_86:
      LOBYTE(v5) = 0;
      return v5;
    }

    if ((*&has & 0x20) != 0)
    {
      if ((v7 & 0x20) == 0 || self->_rxbyte != *(equal + 6))
      {
        goto LABEL_86;
      }
    }

    else if ((v7 & 0x20) != 0)
    {
      goto LABEL_86;
    }

    if ((*&has & 0x80) != 0)
    {
      if ((v7 & 0x80) == 0 || self->_rxerror != *(equal + 8))
      {
        goto LABEL_86;
      }
    }

    else if ((v7 & 0x80) != 0)
    {
      goto LABEL_86;
    }

    if ((*&has & 0x40) != 0)
    {
      if ((v7 & 0x40) == 0 || self->_rxctl != *(equal + 7))
      {
        goto LABEL_86;
      }
    }

    else if ((v7 & 0x40) != 0)
    {
      goto LABEL_86;
    }

    if ((*&has & 0x1000) != 0)
    {
      if ((v7 & 0x1000) == 0 || self->_rxnobuf != *(equal + 13))
      {
        goto LABEL_86;
      }
    }

    else if ((v7 & 0x1000) != 0)
    {
      goto LABEL_86;
    }

    if ((*&has & 0x8000) != 0)
    {
      if ((v7 & 0x8000) == 0 || self->_rxrtry != *(equal + 16))
      {
        goto LABEL_86;
      }
    }

    else if ((v7 & 0x8000) != 0)
    {
      goto LABEL_86;
    }

    if ((*&has & 0x2000) != 0)
    {
      if ((v7 & 0x2000) == 0 || self->_rxnondata != *(equal + 14))
      {
        goto LABEL_86;
      }
    }

    else if ((v7 & 0x2000) != 0)
    {
      goto LABEL_86;
    }

    if ((*&has & 4) != 0)
    {
      if ((v7 & 4) == 0 || self->_rxbadds != *(equal + 3))
      {
        goto LABEL_86;
      }
    }

    else if ((v7 & 4) != 0)
    {
      goto LABEL_86;
    }

    if (*&has)
    {
      if ((v7 & 1) == 0 || self->_rxbadcm != *(equal + 1))
      {
        goto LABEL_86;
      }
    }

    else if (v7)
    {
      goto LABEL_86;
    }

    if ((*&has & 0x200) != 0)
    {
      if ((v7 & 0x200) == 0 || self->_rxfragerr != *(equal + 10))
      {
        goto LABEL_86;
      }
    }

    else if ((v7 & 0x200) != 0)
    {
      goto LABEL_86;
    }

    if ((*&has & 0x10000) != 0)
    {
      if ((v7 & 0x10000) == 0 || self->_rxrunt != *(equal + 17))
      {
        goto LABEL_86;
      }
    }

    else if ((v7 & 0x10000) != 0)
    {
      goto LABEL_86;
    }

    if ((*&has & 0x800) != 0)
    {
      if ((v7 & 0x800) == 0 || self->_rxgiant != *(equal + 12))
      {
        goto LABEL_86;
      }
    }

    else if ((v7 & 0x800) != 0)
    {
      goto LABEL_86;
    }

    if ((*&has & 0x4000) != 0)
    {
      if ((v7 & 0x4000) == 0 || self->_rxnoscb != *(equal + 15))
      {
        goto LABEL_86;
      }
    }

    else if ((v7 & 0x4000) != 0)
    {
      goto LABEL_86;
    }

    if ((*&has & 8) != 0)
    {
      if ((v7 & 8) == 0 || self->_rxbadproto != *(equal + 4))
      {
        goto LABEL_86;
      }
    }

    else if ((v7 & 8) != 0)
    {
      goto LABEL_86;
    }

    if ((*&has & 0x10) != 0)
    {
      if ((v7 & 0x10) == 0 || self->_rxbadsrcmac != *(equal + 5))
      {
        goto LABEL_86;
      }
    }

    else if ((v7 & 0x10) != 0)
    {
      goto LABEL_86;
    }

    if ((*&has & 2) != 0)
    {
      if ((v7 & 2) == 0 || self->_rxbadda != *(equal + 2))
      {
        goto LABEL_86;
      }
    }

    else if ((v7 & 2) != 0)
    {
      goto LABEL_86;
    }

    LOBYTE(v5) = (*(equal + 36) & 0x100) == 0;
    if ((*&has & 0x100) != 0)
    {
      if ((v7 & 0x100) == 0 || self->_rxfilter != *(equal + 9))
      {
        goto LABEL_86;
      }

      LOBYTE(v5) = 1;
    }
  }

  return v5;
}

- (unint64_t)hash
{
  has = self->_has;
  if ((*&has & 0x400) != 0)
  {
    v3 = 2654435761u * self->_rxframe;
    if ((*&has & 0x20) != 0)
    {
LABEL_3:
      v4 = 2654435761u * self->_rxbyte;
      if ((*&has & 0x80) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_19;
    }
  }

  else
  {
    v3 = 0;
    if ((*&has & 0x20) != 0)
    {
      goto LABEL_3;
    }
  }

  v4 = 0;
  if ((*&has & 0x80) != 0)
  {
LABEL_4:
    v5 = 2654435761u * self->_rxerror;
    if ((*&has & 0x40) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_20;
  }

LABEL_19:
  v5 = 0;
  if ((*&has & 0x40) != 0)
  {
LABEL_5:
    v6 = 2654435761u * self->_rxctl;
    if ((*&has & 0x1000) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_21;
  }

LABEL_20:
  v6 = 0;
  if ((*&has & 0x1000) != 0)
  {
LABEL_6:
    v7 = 2654435761u * self->_rxnobuf;
    if ((*&has & 0x8000) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_22;
  }

LABEL_21:
  v7 = 0;
  if ((*&has & 0x8000) != 0)
  {
LABEL_7:
    v8 = 2654435761u * self->_rxrtry;
    if ((*&has & 0x2000) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_23;
  }

LABEL_22:
  v8 = 0;
  if ((*&has & 0x2000) != 0)
  {
LABEL_8:
    v9 = 2654435761u * self->_rxnondata;
    if ((*&has & 4) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_24;
  }

LABEL_23:
  v9 = 0;
  if ((*&has & 4) != 0)
  {
LABEL_9:
    v10 = 2654435761u * self->_rxbadds;
    if (*&has)
    {
      goto LABEL_10;
    }

    goto LABEL_25;
  }

LABEL_24:
  v10 = 0;
  if (*&has)
  {
LABEL_10:
    v11 = 2654435761u * self->_rxbadcm;
    if ((*&has & 0x200) != 0)
    {
      goto LABEL_11;
    }

    goto LABEL_26;
  }

LABEL_25:
  v11 = 0;
  if ((*&has & 0x200) != 0)
  {
LABEL_11:
    v12 = 2654435761u * self->_rxfragerr;
    if ((*&has & 0x10000) != 0)
    {
      goto LABEL_12;
    }

    goto LABEL_27;
  }

LABEL_26:
  v12 = 0;
  if ((*&has & 0x10000) != 0)
  {
LABEL_12:
    v13 = 2654435761u * self->_rxrunt;
    if ((*&has & 0x800) != 0)
    {
      goto LABEL_13;
    }

    goto LABEL_28;
  }

LABEL_27:
  v13 = 0;
  if ((*&has & 0x800) != 0)
  {
LABEL_13:
    v14 = 2654435761u * self->_rxgiant;
    if ((*&has & 0x4000) != 0)
    {
      goto LABEL_14;
    }

    goto LABEL_29;
  }

LABEL_28:
  v14 = 0;
  if ((*&has & 0x4000) != 0)
  {
LABEL_14:
    v15 = 2654435761u * self->_rxnoscb;
    if ((*&has & 8) != 0)
    {
      goto LABEL_15;
    }

LABEL_30:
    v16 = 0;
    if ((*&has & 0x10) != 0)
    {
      goto LABEL_16;
    }

    goto LABEL_31;
  }

LABEL_29:
  v15 = 0;
  if ((*&has & 8) == 0)
  {
    goto LABEL_30;
  }

LABEL_15:
  v16 = 2654435761u * self->_rxbadproto;
  if ((*&has & 0x10) != 0)
  {
LABEL_16:
    v17 = 2654435761u * self->_rxbadsrcmac;
    goto LABEL_32;
  }

LABEL_31:
  v17 = 0;
LABEL_32:
  if ((*&has & 2) != 0)
  {
    v18 = 2654435761u * self->_rxbadda;
    if ((*&has & 0x100) != 0)
    {
      goto LABEL_34;
    }

LABEL_36:
    v19 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19;
  }

  v18 = 0;
  if ((*&has & 0x100) == 0)
  {
    goto LABEL_36;
  }

LABEL_34:
  v19 = 2654435761u * self->_rxfilter;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19;
}

- (void)mergeFrom:(id)from
{
  v3 = *(from + 36);
  if ((v3 & 0x400) != 0)
  {
    self->_rxframe = *(from + 11);
    *&self->_has |= 0x400u;
    v3 = *(from + 36);
    if ((v3 & 0x20) == 0)
    {
LABEL_3:
      if ((v3 & 0x80) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_21;
    }
  }

  else if ((v3 & 0x20) == 0)
  {
    goto LABEL_3;
  }

  self->_rxbyte = *(from + 6);
  *&self->_has |= 0x20u;
  v3 = *(from + 36);
  if ((v3 & 0x80) == 0)
  {
LABEL_4:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_22;
  }

LABEL_21:
  self->_rxerror = *(from + 8);
  *&self->_has |= 0x80u;
  v3 = *(from + 36);
  if ((v3 & 0x40) == 0)
  {
LABEL_5:
    if ((v3 & 0x1000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_23;
  }

LABEL_22:
  self->_rxctl = *(from + 7);
  *&self->_has |= 0x40u;
  v3 = *(from + 36);
  if ((v3 & 0x1000) == 0)
  {
LABEL_6:
    if ((v3 & 0x8000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_24;
  }

LABEL_23:
  self->_rxnobuf = *(from + 13);
  *&self->_has |= 0x1000u;
  v3 = *(from + 36);
  if ((v3 & 0x8000) == 0)
  {
LABEL_7:
    if ((v3 & 0x2000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_25;
  }

LABEL_24:
  self->_rxrtry = *(from + 16);
  *&self->_has |= 0x8000u;
  v3 = *(from + 36);
  if ((v3 & 0x2000) == 0)
  {
LABEL_8:
    if ((v3 & 4) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_26;
  }

LABEL_25:
  self->_rxnondata = *(from + 14);
  *&self->_has |= 0x2000u;
  v3 = *(from + 36);
  if ((v3 & 4) == 0)
  {
LABEL_9:
    if ((v3 & 1) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_27;
  }

LABEL_26:
  self->_rxbadds = *(from + 3);
  *&self->_has |= 4u;
  v3 = *(from + 36);
  if ((v3 & 1) == 0)
  {
LABEL_10:
    if ((v3 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_28;
  }

LABEL_27:
  self->_rxbadcm = *(from + 1);
  *&self->_has |= 1u;
  v3 = *(from + 36);
  if ((v3 & 0x200) == 0)
  {
LABEL_11:
    if ((v3 & 0x10000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_29;
  }

LABEL_28:
  self->_rxfragerr = *(from + 10);
  *&self->_has |= 0x200u;
  v3 = *(from + 36);
  if ((v3 & 0x10000) == 0)
  {
LABEL_12:
    if ((v3 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_30;
  }

LABEL_29:
  self->_rxrunt = *(from + 17);
  *&self->_has |= 0x10000u;
  v3 = *(from + 36);
  if ((v3 & 0x800) == 0)
  {
LABEL_13:
    if ((v3 & 0x4000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_31;
  }

LABEL_30:
  self->_rxgiant = *(from + 12);
  *&self->_has |= 0x800u;
  v3 = *(from + 36);
  if ((v3 & 0x4000) == 0)
  {
LABEL_14:
    if ((v3 & 8) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_32;
  }

LABEL_31:
  self->_rxnoscb = *(from + 15);
  *&self->_has |= 0x4000u;
  v3 = *(from + 36);
  if ((v3 & 8) == 0)
  {
LABEL_15:
    if ((v3 & 0x10) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_33;
  }

LABEL_32:
  self->_rxbadproto = *(from + 4);
  *&self->_has |= 8u;
  v3 = *(from + 36);
  if ((v3 & 0x10) == 0)
  {
LABEL_16:
    if ((v3 & 2) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_34;
  }

LABEL_33:
  self->_rxbadsrcmac = *(from + 5);
  *&self->_has |= 0x10u;
  v3 = *(from + 36);
  if ((v3 & 2) == 0)
  {
LABEL_17:
    if ((v3 & 0x100) == 0)
    {
      return;
    }

LABEL_35:
    self->_rxfilter = *(from + 9);
    *&self->_has |= 0x100u;
    return;
  }

LABEL_34:
  self->_rxbadda = *(from + 2);
  *&self->_has |= 2u;
  if ((*(from + 36) & 0x100) != 0)
  {
    goto LABEL_35;
  }
}

@end