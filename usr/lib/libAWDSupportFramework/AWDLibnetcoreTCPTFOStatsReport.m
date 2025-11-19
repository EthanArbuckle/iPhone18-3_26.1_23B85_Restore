@interface AWDLibnetcoreTCPTFOStatsReport
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasNumTfoCookieInvalid:(BOOL)a3;
- (void)setHasNumTfoCookieRcv:(BOOL)a3;
- (void)setHasNumTfoCookieReq:(BOOL)a3;
- (void)setHasNumTfoCookieReqRcv:(BOOL)a3;
- (void)setHasNumTfoCookieSent:(BOOL)a3;
- (void)setHasNumTfoFallback:(BOOL)a3;
- (void)setHasNumTfoSynDataAcked:(BOOL)a3;
- (void)setHasNumTfoSynDataRcv:(BOOL)a3;
- (void)setHasNumTfoSynDataSent:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDLibnetcoreTCPTFOStatsReport

- (void)setHasNumTfoCookieReq:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFF7 | v3;
}

- (void)setHasNumTfoCookieRcv:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFB | v3;
}

- (void)setHasNumTfoFallback:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFBF | v3;
}

- (void)setHasNumTfoSynDataSent:(BOOL)a3
{
  if (a3)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFDFF | v3;
}

- (void)setHasNumTfoSynDataAcked:(BOOL)a3
{
  if (a3)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFF7F | v3;
}

- (void)setHasNumTfoSynDataRcv:(BOOL)a3
{
  if (a3)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFEFF | v3;
}

- (void)setHasNumTfoCookieReqRcv:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFEF | v3;
}

- (void)setHasNumTfoCookieSent:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFDF | v3;
}

- (void)setHasNumTfoCookieInvalid:(BOOL)a3
{
  if (a3)
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
  v3.super_class = AWDLibnetcoreTCPTFOStatsReport;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDLibnetcoreTCPTFOStatsReport description](&v3, sel_description), -[AWDLibnetcoreTCPTFOStatsReport dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x29EDB8E00] dictionary];
  has = self->_has;
  if ((has & 8) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_numTfoCookieReq), @"numTfoCookieReq"}];
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 0x40) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if ((has & 4) == 0)
  {
    goto LABEL_3;
  }

  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_numTfoCookieRcv), @"numTfoCookieRcv"}];
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_4:
    if ((has & 0x200) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_15:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_numTfoFallback), @"numTfoFallback"}];
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_5:
    if ((has & 0x80) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_16:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_numTfoSynDataSent), @"numTfoSynDataSent"}];
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_6:
    if ((has & 0x100) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_numTfoSynDataAcked), @"numTfoSynDataAcked"}];
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_7:
    if ((has & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_numTfoSynDataRcv), @"numTfoSynDataRcv"}];
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_8:
    if ((has & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

LABEL_19:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_numTfoCookieReqRcv), @"numTfoCookieReqRcv"}];
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_9:
    if ((has & 2) == 0)
    {
      goto LABEL_10;
    }

LABEL_21:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_numTfoCookieInvalid), @"numTfoCookieInvalid"}];
    if ((*&self->_has & 1) == 0)
    {
      return v3;
    }

    goto LABEL_11;
  }

LABEL_20:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_numTfoCookieSent), @"numTfoCookieSent"}];
  has = self->_has;
  if ((has & 2) != 0)
  {
    goto LABEL_21;
  }

LABEL_10:
  if (has)
  {
LABEL_11:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_numTfoBlackholed), @"numTfoBlackholed"}];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  has = self->_has;
  if ((has & 8) != 0)
  {
    numTfoCookieReq = self->_numTfoCookieReq;
    PBDataWriterWriteUint64Field();
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 0x40) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((has & 4) == 0)
  {
    goto LABEL_3;
  }

  numTfoCookieRcv = self->_numTfoCookieRcv;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_4:
    if ((has & 0x200) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  numTfoFallback = self->_numTfoFallback;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_5:
    if ((has & 0x80) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  numTfoSynDataSent = self->_numTfoSynDataSent;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_6:
    if ((has & 0x100) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  numTfoSynDataAcked = self->_numTfoSynDataAcked;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_7:
    if ((has & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

LABEL_17:
  numTfoSynDataRcv = self->_numTfoSynDataRcv;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_8:
    if ((has & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_18:
  numTfoCookieReqRcv = self->_numTfoCookieReqRcv;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_9:
    if ((has & 2) == 0)
    {
      goto LABEL_10;
    }

LABEL_20:
    numTfoCookieInvalid = self->_numTfoCookieInvalid;
    PBDataWriterWriteUint64Field();
    if ((*&self->_has & 1) == 0)
    {
      return;
    }

    goto LABEL_21;
  }

LABEL_19:
  numTfoCookieSent = self->_numTfoCookieSent;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 2) != 0)
  {
    goto LABEL_20;
  }

LABEL_10:
  if ((has & 1) == 0)
  {
    return;
  }

LABEL_21:
  numTfoBlackholed = self->_numTfoBlackholed;

  PBDataWriterWriteUint64Field();
}

- (void)copyTo:(id)a3
{
  has = self->_has;
  if ((has & 8) != 0)
  {
    *(a3 + 4) = self->_numTfoCookieReq;
    *(a3 + 44) |= 8u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 0x40) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((has & 4) == 0)
  {
    goto LABEL_3;
  }

  *(a3 + 3) = self->_numTfoCookieRcv;
  *(a3 + 44) |= 4u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_4:
    if ((has & 0x200) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  *(a3 + 7) = self->_numTfoFallback;
  *(a3 + 44) |= 0x40u;
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_5:
    if ((has & 0x80) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  *(a3 + 10) = self->_numTfoSynDataSent;
  *(a3 + 44) |= 0x200u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_6:
    if ((has & 0x100) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  *(a3 + 8) = self->_numTfoSynDataAcked;
  *(a3 + 44) |= 0x80u;
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_7:
    if ((has & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

LABEL_17:
  *(a3 + 9) = self->_numTfoSynDataRcv;
  *(a3 + 44) |= 0x100u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_8:
    if ((has & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_18:
  *(a3 + 5) = self->_numTfoCookieReqRcv;
  *(a3 + 44) |= 0x10u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_9:
    if ((has & 2) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_20;
  }

LABEL_19:
  *(a3 + 6) = self->_numTfoCookieSent;
  *(a3 + 44) |= 0x20u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_10:
    if ((has & 1) == 0)
    {
      return;
    }

LABEL_21:
    *(a3 + 1) = self->_numTfoBlackholed;
    *(a3 + 44) |= 1u;
    return;
  }

LABEL_20:
  *(a3 + 2) = self->_numTfoCookieInvalid;
  *(a3 + 44) |= 2u;
  if (*&self->_has)
  {
    goto LABEL_21;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  has = self->_has;
  if ((has & 8) != 0)
  {
    *(result + 4) = self->_numTfoCookieReq;
    *(result + 44) |= 8u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 0x40) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if ((has & 4) == 0)
  {
    goto LABEL_3;
  }

  *(result + 3) = self->_numTfoCookieRcv;
  *(result + 44) |= 4u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_4:
    if ((has & 0x200) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_15:
  *(result + 7) = self->_numTfoFallback;
  *(result + 44) |= 0x40u;
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_5:
    if ((has & 0x80) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_16:
  *(result + 10) = self->_numTfoSynDataSent;
  *(result + 44) |= 0x200u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_6:
    if ((has & 0x100) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  *(result + 8) = self->_numTfoSynDataAcked;
  *(result + 44) |= 0x80u;
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_7:
    if ((has & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  *(result + 9) = self->_numTfoSynDataRcv;
  *(result + 44) |= 0x100u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_8:
    if ((has & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

LABEL_19:
  *(result + 5) = self->_numTfoCookieReqRcv;
  *(result + 44) |= 0x10u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_9:
    if ((has & 2) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

LABEL_20:
  *(result + 6) = self->_numTfoCookieSent;
  *(result + 44) |= 0x20u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_10:
    if ((has & 1) == 0)
    {
      return result;
    }

    goto LABEL_11;
  }

LABEL_21:
  *(result + 2) = self->_numTfoCookieInvalid;
  *(result + 44) |= 2u;
  if ((*&self->_has & 1) == 0)
  {
    return result;
  }

LABEL_11:
  *(result + 1) = self->_numTfoBlackholed;
  *(result + 44) |= 1u;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    has = self->_has;
    v7 = *(a3 + 44);
    if ((has & 8) != 0)
    {
      if ((v7 & 8) == 0 || self->_numTfoCookieReq != *(a3 + 4))
      {
        goto LABEL_51;
      }
    }

    else if ((v7 & 8) != 0)
    {
LABEL_51:
      LOBYTE(v5) = 0;
      return v5;
    }

    if ((has & 4) != 0)
    {
      if ((v7 & 4) == 0 || self->_numTfoCookieRcv != *(a3 + 3))
      {
        goto LABEL_51;
      }
    }

    else if ((v7 & 4) != 0)
    {
      goto LABEL_51;
    }

    if ((has & 0x40) != 0)
    {
      if ((v7 & 0x40) == 0 || self->_numTfoFallback != *(a3 + 7))
      {
        goto LABEL_51;
      }
    }

    else if ((v7 & 0x40) != 0)
    {
      goto LABEL_51;
    }

    if ((*&self->_has & 0x200) != 0)
    {
      if ((*(a3 + 44) & 0x200) == 0 || self->_numTfoSynDataSent != *(a3 + 10))
      {
        goto LABEL_51;
      }
    }

    else if ((*(a3 + 44) & 0x200) != 0)
    {
      goto LABEL_51;
    }

    if ((has & 0x80) != 0)
    {
      if ((v7 & 0x80) == 0 || self->_numTfoSynDataAcked != *(a3 + 8))
      {
        goto LABEL_51;
      }
    }

    else if ((v7 & 0x80) != 0)
    {
      goto LABEL_51;
    }

    if ((*&self->_has & 0x100) != 0)
    {
      if ((*(a3 + 44) & 0x100) == 0 || self->_numTfoSynDataRcv != *(a3 + 9))
      {
        goto LABEL_51;
      }
    }

    else if ((*(a3 + 44) & 0x100) != 0)
    {
      goto LABEL_51;
    }

    if ((has & 0x10) != 0)
    {
      if ((v7 & 0x10) == 0 || self->_numTfoCookieReqRcv != *(a3 + 5))
      {
        goto LABEL_51;
      }
    }

    else if ((v7 & 0x10) != 0)
    {
      goto LABEL_51;
    }

    if ((has & 0x20) != 0)
    {
      if ((v7 & 0x20) == 0 || self->_numTfoCookieSent != *(a3 + 6))
      {
        goto LABEL_51;
      }
    }

    else if ((v7 & 0x20) != 0)
    {
      goto LABEL_51;
    }

    if ((has & 2) != 0)
    {
      if ((v7 & 2) == 0 || self->_numTfoCookieInvalid != *(a3 + 2))
      {
        goto LABEL_51;
      }
    }

    else if ((v7 & 2) != 0)
    {
      goto LABEL_51;
    }

    LOBYTE(v5) = (v7 & 1) == 0;
    if (has)
    {
      if ((v7 & 1) == 0 || self->_numTfoBlackholed != *(a3 + 1))
      {
        goto LABEL_51;
      }

      LOBYTE(v5) = 1;
    }
  }

  return v5;
}

- (unint64_t)hash
{
  has = self->_has;
  if ((has & 8) != 0)
  {
    v3 = 2654435761u * self->_numTfoCookieReq;
    if ((has & 4) != 0)
    {
LABEL_3:
      v4 = 2654435761u * self->_numTfoCookieRcv;
      if ((has & 0x40) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else
  {
    v3 = 0;
    if ((has & 4) != 0)
    {
      goto LABEL_3;
    }
  }

  v4 = 0;
  if ((has & 0x40) != 0)
  {
LABEL_4:
    v5 = 2654435761u * self->_numTfoFallback;
    if ((*&self->_has & 0x200) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  v5 = 0;
  if ((*&self->_has & 0x200) != 0)
  {
LABEL_5:
    v6 = 2654435761u * self->_numTfoSynDataSent;
    if ((has & 0x80) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  v6 = 0;
  if ((has & 0x80) != 0)
  {
LABEL_6:
    v7 = 2654435761u * self->_numTfoSynDataAcked;
    if ((*&self->_has & 0x100) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  v7 = 0;
  if ((*&self->_has & 0x100) != 0)
  {
LABEL_7:
    v8 = 2654435761u * self->_numTfoSynDataRcv;
    if ((has & 0x10) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

LABEL_17:
  v8 = 0;
  if ((has & 0x10) != 0)
  {
LABEL_8:
    v9 = 2654435761u * self->_numTfoCookieReqRcv;
    if ((has & 0x20) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_18:
  v9 = 0;
  if ((has & 0x20) != 0)
  {
LABEL_9:
    v10 = 2654435761u * self->_numTfoCookieSent;
    if ((has & 2) != 0)
    {
      goto LABEL_10;
    }

LABEL_20:
    v11 = 0;
    if (has)
    {
      goto LABEL_11;
    }

LABEL_21:
    v12 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12;
  }

LABEL_19:
  v10 = 0;
  if ((has & 2) == 0)
  {
    goto LABEL_20;
  }

LABEL_10:
  v11 = 2654435761u * self->_numTfoCookieInvalid;
  if ((has & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_11:
  v12 = 2654435761u * self->_numTfoBlackholed;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12;
}

- (void)mergeFrom:(id)a3
{
  v3 = *(a3 + 44);
  if ((v3 & 8) != 0)
  {
    self->_numTfoCookieReq = *(a3 + 4);
    *&self->_has |= 8u;
    v3 = *(a3 + 44);
    if ((v3 & 4) == 0)
    {
LABEL_3:
      if ((v3 & 0x40) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((v3 & 4) == 0)
  {
    goto LABEL_3;
  }

  self->_numTfoCookieRcv = *(a3 + 3);
  *&self->_has |= 4u;
  v3 = *(a3 + 44);
  if ((v3 & 0x40) == 0)
  {
LABEL_4:
    if ((v3 & 0x200) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  self->_numTfoFallback = *(a3 + 7);
  *&self->_has |= 0x40u;
  v3 = *(a3 + 44);
  if ((v3 & 0x200) == 0)
  {
LABEL_5:
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  self->_numTfoSynDataSent = *(a3 + 10);
  *&self->_has |= 0x200u;
  v3 = *(a3 + 44);
  if ((v3 & 0x80) == 0)
  {
LABEL_6:
    if ((v3 & 0x100) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  self->_numTfoSynDataAcked = *(a3 + 8);
  *&self->_has |= 0x80u;
  v3 = *(a3 + 44);
  if ((v3 & 0x100) == 0)
  {
LABEL_7:
    if ((v3 & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

LABEL_17:
  self->_numTfoSynDataRcv = *(a3 + 9);
  *&self->_has |= 0x100u;
  v3 = *(a3 + 44);
  if ((v3 & 0x10) == 0)
  {
LABEL_8:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_18:
  self->_numTfoCookieReqRcv = *(a3 + 5);
  *&self->_has |= 0x10u;
  v3 = *(a3 + 44);
  if ((v3 & 0x20) == 0)
  {
LABEL_9:
    if ((v3 & 2) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_20;
  }

LABEL_19:
  self->_numTfoCookieSent = *(a3 + 6);
  *&self->_has |= 0x20u;
  v3 = *(a3 + 44);
  if ((v3 & 2) == 0)
  {
LABEL_10:
    if ((v3 & 1) == 0)
    {
      return;
    }

LABEL_21:
    self->_numTfoBlackholed = *(a3 + 1);
    *&self->_has |= 1u;
    return;
  }

LABEL_20:
  self->_numTfoCookieInvalid = *(a3 + 2);
  *&self->_has |= 2u;
  if (*(a3 + 44))
  {
    goto LABEL_21;
  }
}

@end