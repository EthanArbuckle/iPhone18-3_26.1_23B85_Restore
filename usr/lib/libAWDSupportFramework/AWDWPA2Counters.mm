@interface AWDWPA2Counters
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasCcmpreplay:(BOOL)ccmpreplay;
- (void)setHasCcmpundec:(BOOL)ccmpundec;
- (void)setHasDecsuccess:(BOOL)decsuccess;
- (void)setHasFourwayfail:(BOOL)fourwayfail;
- (void)setHasTkipcntrmsr:(BOOL)tkipcntrmsr;
- (void)setHasTkipicverr:(BOOL)tkipicverr;
- (void)setHasTkipmicfaill:(BOOL)tkipmicfaill;
- (void)setHasTkipreplay:(BOOL)tkipreplay;
- (void)setHasWepexcluded:(BOOL)wepexcluded;
- (void)setHasWepicverr:(BOOL)wepicverr;
- (void)setHasWepundec:(BOOL)wepundec;
- (void)writeTo:(id)to;
@end

@implementation AWDWPA2Counters

- (void)setHasTkipmicfaill:(BOOL)tkipmicfaill
{
  if (tkipmicfaill)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFF7F | v3;
}

- (void)setHasTkipcntrmsr:(BOOL)tkipcntrmsr
{
  if (tkipcntrmsr)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFDF | v3;
}

- (void)setHasTkipreplay:(BOOL)tkipreplay
{
  if (tkipreplay)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFEFF | v3;
}

- (void)setHasCcmpreplay:(BOOL)ccmpreplay
{
  if (ccmpreplay)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFD | v3;
}

- (void)setHasCcmpundec:(BOOL)ccmpundec
{
  if (ccmpundec)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFB | v3;
}

- (void)setHasFourwayfail:(BOOL)fourwayfail
{
  if (fourwayfail)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFEF | v3;
}

- (void)setHasWepundec:(BOOL)wepundec
{
  if (wepundec)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7FF | v3;
}

- (void)setHasWepicverr:(BOOL)wepicverr
{
  if (wepicverr)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFBFF | v3;
}

- (void)setHasDecsuccess:(BOOL)decsuccess
{
  if (decsuccess)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFF7 | v3;
}

- (void)setHasTkipicverr:(BOOL)tkipicverr
{
  if (tkipicverr)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFBF | v3;
}

- (void)setHasWepexcluded:(BOOL)wepexcluded
{
  if (wepexcluded)
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
  v3.super_class = AWDWPA2Counters;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDWPA2Counters description](&v3, sel_description), -[AWDWPA2Counters dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  has = self->_has;
  if ((has & 0x80) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_tkipmicfaill), @"tkipmicfaill"}];
    has = self->_has;
    if ((has & 0x20) == 0)
    {
LABEL_3:
      if ((has & 0x100) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

  else if ((has & 0x20) == 0)
  {
    goto LABEL_3;
  }

  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_tkipcntrmsr), @"tkipcntrmsr"}];
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_4:
    if ((has & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_18;
  }

LABEL_17:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_tkipreplay), @"tkipreplay"}];
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_5:
    if ((has & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_19;
  }

LABEL_18:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_ccmpfmterr), @"ccmpfmterr"}];
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_6:
    if ((has & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_20;
  }

LABEL_19:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_ccmpreplay), @"ccmpreplay"}];
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_7:
    if ((has & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_21;
  }

LABEL_20:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_ccmpundec), @"ccmpundec"}];
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_8:
    if ((has & 0x800) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_22;
  }

LABEL_21:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_fourwayfail), @"fourwayfail"}];
  has = self->_has;
  if ((has & 0x800) == 0)
  {
LABEL_9:
    if ((has & 0x400) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_23;
  }

LABEL_22:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_wepundec), @"wepundec"}];
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_10:
    if ((has & 8) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_24;
  }

LABEL_23:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_wepicverr), @"wepicverr"}];
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_11:
    if ((has & 0x40) == 0)
    {
      goto LABEL_12;
    }

LABEL_25:
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_tkipicverr), @"tkipicverr"}];
    if ((*&self->_has & 0x200) == 0)
    {
      return dictionary;
    }

    goto LABEL_13;
  }

LABEL_24:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_decsuccess), @"decsuccess"}];
  has = self->_has;
  if ((has & 0x40) != 0)
  {
    goto LABEL_25;
  }

LABEL_12:
  if ((has & 0x200) != 0)
  {
LABEL_13:
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_wepexcluded), @"wepexcluded"}];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  has = self->_has;
  if ((has & 0x80) != 0)
  {
    tkipmicfaill = self->_tkipmicfaill;
    PBDataWriterWriteUint64Field();
    has = self->_has;
    if ((has & 0x20) == 0)
    {
LABEL_3:
      if ((has & 0x100) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((has & 0x20) == 0)
  {
    goto LABEL_3;
  }

  tkipcntrmsr = self->_tkipcntrmsr;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_4:
    if ((has & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  tkipreplay = self->_tkipreplay;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_5:
    if ((has & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_17:
  ccmpfmterr = self->_ccmpfmterr;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_6:
    if ((has & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  ccmpreplay = self->_ccmpreplay;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_7:
    if ((has & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

LABEL_19:
  ccmpundec = self->_ccmpundec;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_8:
    if ((has & 0x800) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_20:
  fourwayfail = self->_fourwayfail;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 0x800) == 0)
  {
LABEL_9:
    if ((has & 0x400) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_22;
  }

LABEL_21:
  wepundec = self->_wepundec;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_10:
    if ((has & 8) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_23;
  }

LABEL_22:
  wepicverr = self->_wepicverr;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_11:
    if ((has & 0x40) == 0)
    {
      goto LABEL_12;
    }

LABEL_24:
    tkipicverr = self->_tkipicverr;
    PBDataWriterWriteUint64Field();
    if ((*&self->_has & 0x200) == 0)
    {
      return;
    }

    goto LABEL_25;
  }

LABEL_23:
  decsuccess = self->_decsuccess;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 0x40) != 0)
  {
    goto LABEL_24;
  }

LABEL_12:
  if ((has & 0x200) == 0)
  {
    return;
  }

LABEL_25:
  wepexcluded = self->_wepexcluded;

  PBDataWriterWriteUint64Field();
}

- (void)copyTo:(id)to
{
  has = self->_has;
  if ((has & 0x80) != 0)
  {
    *(to + 8) = self->_tkipmicfaill;
    *(to + 52) |= 0x80u;
    has = self->_has;
    if ((has & 0x20) == 0)
    {
LABEL_3:
      if ((has & 0x100) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((has & 0x20) == 0)
  {
    goto LABEL_3;
  }

  *(to + 6) = self->_tkipcntrmsr;
  *(to + 52) |= 0x20u;
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_4:
    if ((has & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  *(to + 9) = self->_tkipreplay;
  *(to + 52) |= 0x100u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_5:
    if ((has & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_17:
  *(to + 1) = self->_ccmpfmterr;
  *(to + 52) |= 1u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_6:
    if ((has & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  *(to + 2) = self->_ccmpreplay;
  *(to + 52) |= 2u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_7:
    if ((has & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

LABEL_19:
  *(to + 3) = self->_ccmpundec;
  *(to + 52) |= 4u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_8:
    if ((has & 0x800) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_20:
  *(to + 5) = self->_fourwayfail;
  *(to + 52) |= 0x10u;
  has = self->_has;
  if ((has & 0x800) == 0)
  {
LABEL_9:
    if ((has & 0x400) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_22;
  }

LABEL_21:
  *(to + 12) = self->_wepundec;
  *(to + 52) |= 0x800u;
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_10:
    if ((has & 8) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_23;
  }

LABEL_22:
  *(to + 11) = self->_wepicverr;
  *(to + 52) |= 0x400u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_11:
    if ((has & 0x40) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_24;
  }

LABEL_23:
  *(to + 4) = self->_decsuccess;
  *(to + 52) |= 8u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_12:
    if ((has & 0x200) == 0)
    {
      return;
    }

LABEL_25:
    *(to + 10) = self->_wepexcluded;
    *(to + 52) |= 0x200u;
    return;
  }

LABEL_24:
  *(to + 7) = self->_tkipicverr;
  *(to + 52) |= 0x40u;
  if ((*&self->_has & 0x200) != 0)
  {
    goto LABEL_25;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  has = self->_has;
  if ((has & 0x80) != 0)
  {
    *(result + 8) = self->_tkipmicfaill;
    *(result + 52) |= 0x80u;
    has = self->_has;
    if ((has & 0x20) == 0)
    {
LABEL_3:
      if ((has & 0x100) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

  else if ((has & 0x20) == 0)
  {
    goto LABEL_3;
  }

  *(result + 6) = self->_tkipcntrmsr;
  *(result + 52) |= 0x20u;
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_4:
    if ((has & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_18;
  }

LABEL_17:
  *(result + 9) = self->_tkipreplay;
  *(result + 52) |= 0x100u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_5:
    if ((has & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_19;
  }

LABEL_18:
  *(result + 1) = self->_ccmpfmterr;
  *(result + 52) |= 1u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_6:
    if ((has & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_20;
  }

LABEL_19:
  *(result + 2) = self->_ccmpreplay;
  *(result + 52) |= 2u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_7:
    if ((has & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_21;
  }

LABEL_20:
  *(result + 3) = self->_ccmpundec;
  *(result + 52) |= 4u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_8:
    if ((has & 0x800) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_22;
  }

LABEL_21:
  *(result + 5) = self->_fourwayfail;
  *(result + 52) |= 0x10u;
  has = self->_has;
  if ((has & 0x800) == 0)
  {
LABEL_9:
    if ((has & 0x400) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_23;
  }

LABEL_22:
  *(result + 12) = self->_wepundec;
  *(result + 52) |= 0x800u;
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_10:
    if ((has & 8) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_24;
  }

LABEL_23:
  *(result + 11) = self->_wepicverr;
  *(result + 52) |= 0x400u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_11:
    if ((has & 0x40) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_25;
  }

LABEL_24:
  *(result + 4) = self->_decsuccess;
  *(result + 52) |= 8u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_12:
    if ((has & 0x200) == 0)
    {
      return result;
    }

    goto LABEL_13;
  }

LABEL_25:
  *(result + 7) = self->_tkipicverr;
  *(result + 52) |= 0x40u;
  if ((*&self->_has & 0x200) == 0)
  {
    return result;
  }

LABEL_13:
  *(result + 10) = self->_wepexcluded;
  *(result + 52) |= 0x200u;
  return result;
}

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    has = self->_has;
    v7 = *(equal + 52);
    if ((has & 0x80) != 0)
    {
      if ((v7 & 0x80) == 0 || self->_tkipmicfaill != *(equal + 8))
      {
        goto LABEL_61;
      }
    }

    else if ((v7 & 0x80) != 0)
    {
LABEL_61:
      LOBYTE(v5) = 0;
      return v5;
    }

    if ((has & 0x20) != 0)
    {
      if ((v7 & 0x20) == 0 || self->_tkipcntrmsr != *(equal + 6))
      {
        goto LABEL_61;
      }
    }

    else if ((v7 & 0x20) != 0)
    {
      goto LABEL_61;
    }

    if ((*&self->_has & 0x100) != 0)
    {
      if ((*(equal + 52) & 0x100) == 0 || self->_tkipreplay != *(equal + 9))
      {
        goto LABEL_61;
      }
    }

    else if ((*(equal + 52) & 0x100) != 0)
    {
      goto LABEL_61;
    }

    if (has)
    {
      if ((v7 & 1) == 0 || self->_ccmpfmterr != *(equal + 1))
      {
        goto LABEL_61;
      }
    }

    else if (v7)
    {
      goto LABEL_61;
    }

    if ((has & 2) != 0)
    {
      if ((v7 & 2) == 0 || self->_ccmpreplay != *(equal + 2))
      {
        goto LABEL_61;
      }
    }

    else if ((v7 & 2) != 0)
    {
      goto LABEL_61;
    }

    if ((has & 4) != 0)
    {
      if ((v7 & 4) == 0 || self->_ccmpundec != *(equal + 3))
      {
        goto LABEL_61;
      }
    }

    else if ((v7 & 4) != 0)
    {
      goto LABEL_61;
    }

    if ((has & 0x10) != 0)
    {
      if ((v7 & 0x10) == 0 || self->_fourwayfail != *(equal + 5))
      {
        goto LABEL_61;
      }
    }

    else if ((v7 & 0x10) != 0)
    {
      goto LABEL_61;
    }

    if ((*&self->_has & 0x800) != 0)
    {
      if ((*(equal + 52) & 0x800) == 0 || self->_wepundec != *(equal + 12))
      {
        goto LABEL_61;
      }
    }

    else if ((*(equal + 52) & 0x800) != 0)
    {
      goto LABEL_61;
    }

    if ((*&self->_has & 0x400) != 0)
    {
      if ((*(equal + 52) & 0x400) == 0 || self->_wepicverr != *(equal + 11))
      {
        goto LABEL_61;
      }
    }

    else if ((*(equal + 52) & 0x400) != 0)
    {
      goto LABEL_61;
    }

    if ((has & 8) != 0)
    {
      if ((v7 & 8) == 0 || self->_decsuccess != *(equal + 4))
      {
        goto LABEL_61;
      }
    }

    else if ((v7 & 8) != 0)
    {
      goto LABEL_61;
    }

    if ((has & 0x40) != 0)
    {
      if ((v7 & 0x40) == 0 || self->_tkipicverr != *(equal + 7))
      {
        goto LABEL_61;
      }
    }

    else if ((v7 & 0x40) != 0)
    {
      goto LABEL_61;
    }

    LOBYTE(v5) = (v7 & 0x200) == 0;
    if ((*&self->_has & 0x200) != 0)
    {
      if ((*(equal + 52) & 0x200) == 0 || self->_wepexcluded != *(equal + 10))
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
  if ((has & 0x80) != 0)
  {
    v3 = 2654435761u * self->_tkipmicfaill;
    if ((has & 0x20) != 0)
    {
LABEL_3:
      v4 = 2654435761u * self->_tkipcntrmsr;
      if ((*&self->_has & 0x100) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else
  {
    v3 = 0;
    if ((has & 0x20) != 0)
    {
      goto LABEL_3;
    }
  }

  v4 = 0;
  if ((*&self->_has & 0x100) != 0)
  {
LABEL_4:
    v5 = 2654435761u * self->_tkipreplay;
    if (has)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  v5 = 0;
  if (has)
  {
LABEL_5:
    v6 = 2654435761u * self->_ccmpfmterr;
    if ((has & 2) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_17:
  v6 = 0;
  if ((has & 2) != 0)
  {
LABEL_6:
    v7 = 2654435761u * self->_ccmpreplay;
    if ((has & 4) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  v7 = 0;
  if ((has & 4) != 0)
  {
LABEL_7:
    v8 = 2654435761u * self->_ccmpundec;
    if ((has & 0x10) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

LABEL_19:
  v8 = 0;
  if ((has & 0x10) != 0)
  {
LABEL_8:
    v9 = 2654435761u * self->_fourwayfail;
    if ((*&self->_has & 0x800) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_20:
  v9 = 0;
  if ((*&self->_has & 0x800) != 0)
  {
LABEL_9:
    v10 = 2654435761u * self->_wepundec;
    if ((*&self->_has & 0x400) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_22;
  }

LABEL_21:
  v10 = 0;
  if ((*&self->_has & 0x400) != 0)
  {
LABEL_10:
    v11 = 2654435761u * self->_wepicverr;
    if ((has & 8) != 0)
    {
      goto LABEL_11;
    }

    goto LABEL_23;
  }

LABEL_22:
  v11 = 0;
  if ((has & 8) != 0)
  {
LABEL_11:
    v12 = 2654435761u * self->_decsuccess;
    if ((has & 0x40) != 0)
    {
      goto LABEL_12;
    }

LABEL_24:
    v13 = 0;
    if ((*&self->_has & 0x200) != 0)
    {
      goto LABEL_13;
    }

LABEL_25:
    v14 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14;
  }

LABEL_23:
  v12 = 0;
  if ((has & 0x40) == 0)
  {
    goto LABEL_24;
  }

LABEL_12:
  v13 = 2654435761u * self->_tkipicverr;
  if ((*&self->_has & 0x200) == 0)
  {
    goto LABEL_25;
  }

LABEL_13:
  v14 = 2654435761u * self->_wepexcluded;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14;
}

- (void)mergeFrom:(id)from
{
  v3 = *(from + 52);
  if ((v3 & 0x80) != 0)
  {
    self->_tkipmicfaill = *(from + 8);
    *&self->_has |= 0x80u;
    v3 = *(from + 52);
    if ((v3 & 0x20) == 0)
    {
LABEL_3:
      if ((v3 & 0x100) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((v3 & 0x20) == 0)
  {
    goto LABEL_3;
  }

  self->_tkipcntrmsr = *(from + 6);
  *&self->_has |= 0x20u;
  v3 = *(from + 52);
  if ((v3 & 0x100) == 0)
  {
LABEL_4:
    if ((v3 & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  self->_tkipreplay = *(from + 9);
  *&self->_has |= 0x100u;
  v3 = *(from + 52);
  if ((v3 & 1) == 0)
  {
LABEL_5:
    if ((v3 & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_17:
  self->_ccmpfmterr = *(from + 1);
  *&self->_has |= 1u;
  v3 = *(from + 52);
  if ((v3 & 2) == 0)
  {
LABEL_6:
    if ((v3 & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  self->_ccmpreplay = *(from + 2);
  *&self->_has |= 2u;
  v3 = *(from + 52);
  if ((v3 & 4) == 0)
  {
LABEL_7:
    if ((v3 & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

LABEL_19:
  self->_ccmpundec = *(from + 3);
  *&self->_has |= 4u;
  v3 = *(from + 52);
  if ((v3 & 0x10) == 0)
  {
LABEL_8:
    if ((v3 & 0x800) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_20:
  self->_fourwayfail = *(from + 5);
  *&self->_has |= 0x10u;
  v3 = *(from + 52);
  if ((v3 & 0x800) == 0)
  {
LABEL_9:
    if ((v3 & 0x400) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_22;
  }

LABEL_21:
  self->_wepundec = *(from + 12);
  *&self->_has |= 0x800u;
  v3 = *(from + 52);
  if ((v3 & 0x400) == 0)
  {
LABEL_10:
    if ((v3 & 8) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_23;
  }

LABEL_22:
  self->_wepicverr = *(from + 11);
  *&self->_has |= 0x400u;
  v3 = *(from + 52);
  if ((v3 & 8) == 0)
  {
LABEL_11:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_24;
  }

LABEL_23:
  self->_decsuccess = *(from + 4);
  *&self->_has |= 8u;
  v3 = *(from + 52);
  if ((v3 & 0x40) == 0)
  {
LABEL_12:
    if ((v3 & 0x200) == 0)
    {
      return;
    }

LABEL_25:
    self->_wepexcluded = *(from + 10);
    *&self->_has |= 0x200u;
    return;
  }

LABEL_24:
  self->_tkipicverr = *(from + 7);
  *&self->_has |= 0x40u;
  if ((*(from + 52) & 0x200) != 0)
  {
    goto LABEL_25;
  }
}

@end