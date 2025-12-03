@interface AWDLibnetcoreTCPKernelStats
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasNumTfoCookieInvalid:(BOOL)invalid;
- (void)setHasNumTfoCookieRcv:(BOOL)rcv;
- (void)setHasNumTfoCookieReq:(BOOL)req;
- (void)setHasNumTfoCookieReqRcv:(BOOL)rcv;
- (void)setHasNumTfoCookieSent:(BOOL)sent;
- (void)setHasNumTfoFallback:(BOOL)fallback;
- (void)setHasNumTfoSynDataAcked:(BOOL)acked;
- (void)setHasNumTfoSynDataRcv:(BOOL)rcv;
- (void)setHasNumTfoSynDataSent:(BOOL)sent;
- (void)setHasTimestamp:(BOOL)timestamp;
- (void)writeTo:(id)to;
@end

@implementation AWDLibnetcoreTCPKernelStats

- (void)setHasTimestamp:(BOOL)timestamp
{
  if (timestamp)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFBFF | v3;
}

- (void)setHasNumTfoCookieReq:(BOOL)req
{
  if (req)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFF7 | v3;
}

- (void)setHasNumTfoCookieRcv:(BOOL)rcv
{
  if (rcv)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFB | v3;
}

- (void)setHasNumTfoFallback:(BOOL)fallback
{
  if (fallback)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFBF | v3;
}

- (void)setHasNumTfoSynDataSent:(BOOL)sent
{
  if (sent)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFDFF | v3;
}

- (void)setHasNumTfoSynDataAcked:(BOOL)acked
{
  if (acked)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFF7F | v3;
}

- (void)setHasNumTfoSynDataRcv:(BOOL)rcv
{
  if (rcv)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFEFF | v3;
}

- (void)setHasNumTfoCookieReqRcv:(BOOL)rcv
{
  if (rcv)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFEF | v3;
}

- (void)setHasNumTfoCookieSent:(BOOL)sent
{
  if (sent)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFDF | v3;
}

- (void)setHasNumTfoCookieInvalid:(BOOL)invalid
{
  if (invalid)
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
  v3.super_class = AWDLibnetcoreTCPKernelStats;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDLibnetcoreTCPKernelStats description](&v3, sel_description), -[AWDLibnetcoreTCPKernelStats dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  has = self->_has;
  if ((has & 0x400) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((has & 8) == 0)
  {
    goto LABEL_3;
  }

  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_numTfoCookieReq), @"numTfoCookieReq"}];
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 0x40) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_numTfoCookieRcv), @"numTfoCookieRcv"}];
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_5:
    if ((has & 0x200) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_17:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_numTfoFallback), @"numTfoFallback"}];
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_6:
    if ((has & 0x80) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_numTfoSynDataSent), @"numTfoSynDataSent"}];
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_7:
    if ((has & 0x100) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

LABEL_19:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_numTfoSynDataAcked), @"numTfoSynDataAcked"}];
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_8:
    if ((has & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_20:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_numTfoSynDataRcv), @"numTfoSynDataRcv"}];
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_9:
    if ((has & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_22;
  }

LABEL_21:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_numTfoCookieReqRcv), @"numTfoCookieReqRcv"}];
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_10:
    if ((has & 2) == 0)
    {
      goto LABEL_11;
    }

LABEL_23:
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_numTfoCookieInvalid), @"numTfoCookieInvalid"}];
    if ((*&self->_has & 1) == 0)
    {
      return dictionary;
    }

    goto LABEL_12;
  }

LABEL_22:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_numTfoCookieSent), @"numTfoCookieSent"}];
  has = self->_has;
  if ((has & 2) != 0)
  {
    goto LABEL_23;
  }

LABEL_11:
  if (has)
  {
LABEL_12:
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_numTfoBlackholed), @"numTfoBlackholed"}];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  has = self->_has;
  if ((has & 0x400) != 0)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if ((has & 8) == 0)
  {
    goto LABEL_3;
  }

  numTfoCookieReq = self->_numTfoCookieReq;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 0x40) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_15:
  numTfoCookieRcv = self->_numTfoCookieRcv;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_5:
    if ((has & 0x200) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_16:
  numTfoFallback = self->_numTfoFallback;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_6:
    if ((has & 0x80) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  numTfoSynDataSent = self->_numTfoSynDataSent;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_7:
    if ((has & 0x100) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  numTfoSynDataAcked = self->_numTfoSynDataAcked;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_8:
    if ((has & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

LABEL_19:
  numTfoSynDataRcv = self->_numTfoSynDataRcv;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_9:
    if ((has & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

LABEL_20:
  numTfoCookieReqRcv = self->_numTfoCookieReqRcv;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_10:
    if ((has & 2) == 0)
    {
      goto LABEL_11;
    }

LABEL_22:
    numTfoCookieInvalid = self->_numTfoCookieInvalid;
    PBDataWriterWriteUint64Field();
    if ((*&self->_has & 1) == 0)
    {
      return;
    }

    goto LABEL_23;
  }

LABEL_21:
  numTfoCookieSent = self->_numTfoCookieSent;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 2) != 0)
  {
    goto LABEL_22;
  }

LABEL_11:
  if ((has & 1) == 0)
  {
    return;
  }

LABEL_23:
  numTfoBlackholed = self->_numTfoBlackholed;

  PBDataWriterWriteUint64Field();
}

- (void)copyTo:(id)to
{
  has = self->_has;
  if ((has & 0x400) != 0)
  {
    *(to + 11) = self->_timestamp;
    *(to + 48) |= 0x400u;
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if ((has & 8) == 0)
  {
    goto LABEL_3;
  }

  *(to + 4) = self->_numTfoCookieReq;
  *(to + 48) |= 8u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 0x40) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_15:
  *(to + 3) = self->_numTfoCookieRcv;
  *(to + 48) |= 4u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_5:
    if ((has & 0x200) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_16:
  *(to + 7) = self->_numTfoFallback;
  *(to + 48) |= 0x40u;
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_6:
    if ((has & 0x80) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  *(to + 10) = self->_numTfoSynDataSent;
  *(to + 48) |= 0x200u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_7:
    if ((has & 0x100) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  *(to + 8) = self->_numTfoSynDataAcked;
  *(to + 48) |= 0x80u;
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_8:
    if ((has & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

LABEL_19:
  *(to + 9) = self->_numTfoSynDataRcv;
  *(to + 48) |= 0x100u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_9:
    if ((has & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

LABEL_20:
  *(to + 5) = self->_numTfoCookieReqRcv;
  *(to + 48) |= 0x10u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_10:
    if ((has & 2) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_22;
  }

LABEL_21:
  *(to + 6) = self->_numTfoCookieSent;
  *(to + 48) |= 0x20u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_11:
    if ((has & 1) == 0)
    {
      return;
    }

LABEL_23:
    *(to + 1) = self->_numTfoBlackholed;
    *(to + 48) |= 1u;
    return;
  }

LABEL_22:
  *(to + 2) = self->_numTfoCookieInvalid;
  *(to + 48) |= 2u;
  if (*&self->_has)
  {
    goto LABEL_23;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  has = self->_has;
  if ((has & 0x400) != 0)
  {
    *(result + 11) = self->_timestamp;
    *(result + 48) |= 0x400u;
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((has & 8) == 0)
  {
    goto LABEL_3;
  }

  *(result + 4) = self->_numTfoCookieReq;
  *(result + 48) |= 8u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 0x40) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  *(result + 3) = self->_numTfoCookieRcv;
  *(result + 48) |= 4u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_5:
    if ((has & 0x200) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_17:
  *(result + 7) = self->_numTfoFallback;
  *(result + 48) |= 0x40u;
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_6:
    if ((has & 0x80) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  *(result + 10) = self->_numTfoSynDataSent;
  *(result + 48) |= 0x200u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_7:
    if ((has & 0x100) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

LABEL_19:
  *(result + 8) = self->_numTfoSynDataAcked;
  *(result + 48) |= 0x80u;
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_8:
    if ((has & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_20:
  *(result + 9) = self->_numTfoSynDataRcv;
  *(result + 48) |= 0x100u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_9:
    if ((has & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_22;
  }

LABEL_21:
  *(result + 5) = self->_numTfoCookieReqRcv;
  *(result + 48) |= 0x10u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_10:
    if ((has & 2) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_23;
  }

LABEL_22:
  *(result + 6) = self->_numTfoCookieSent;
  *(result + 48) |= 0x20u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_11:
    if ((has & 1) == 0)
    {
      return result;
    }

    goto LABEL_12;
  }

LABEL_23:
  *(result + 2) = self->_numTfoCookieInvalid;
  *(result + 48) |= 2u;
  if ((*&self->_has & 1) == 0)
  {
    return result;
  }

LABEL_12:
  *(result + 1) = self->_numTfoBlackholed;
  *(result + 48) |= 1u;
  return result;
}

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    has = self->_has;
    v7 = *(equal + 48);
    if ((has & 0x400) != 0)
    {
      if ((*(equal + 48) & 0x400) == 0 || self->_timestamp != *(equal + 11))
      {
        goto LABEL_56;
      }
    }

    else if ((*(equal + 48) & 0x400) != 0)
    {
LABEL_56:
      LOBYTE(v5) = 0;
      return v5;
    }

    if ((has & 8) != 0)
    {
      if ((v7 & 8) == 0 || self->_numTfoCookieReq != *(equal + 4))
      {
        goto LABEL_56;
      }
    }

    else if ((v7 & 8) != 0)
    {
      goto LABEL_56;
    }

    if ((has & 4) != 0)
    {
      if ((v7 & 4) == 0 || self->_numTfoCookieRcv != *(equal + 3))
      {
        goto LABEL_56;
      }
    }

    else if ((v7 & 4) != 0)
    {
      goto LABEL_56;
    }

    if ((has & 0x40) != 0)
    {
      if ((v7 & 0x40) == 0 || self->_numTfoFallback != *(equal + 7))
      {
        goto LABEL_56;
      }
    }

    else if ((v7 & 0x40) != 0)
    {
      goto LABEL_56;
    }

    if ((*&self->_has & 0x200) != 0)
    {
      if ((*(equal + 48) & 0x200) == 0 || self->_numTfoSynDataSent != *(equal + 10))
      {
        goto LABEL_56;
      }
    }

    else if ((*(equal + 48) & 0x200) != 0)
    {
      goto LABEL_56;
    }

    if ((has & 0x80) != 0)
    {
      if ((v7 & 0x80) == 0 || self->_numTfoSynDataAcked != *(equal + 8))
      {
        goto LABEL_56;
      }
    }

    else if ((v7 & 0x80) != 0)
    {
      goto LABEL_56;
    }

    if ((*&self->_has & 0x100) != 0)
    {
      if ((*(equal + 48) & 0x100) == 0 || self->_numTfoSynDataRcv != *(equal + 9))
      {
        goto LABEL_56;
      }
    }

    else if ((*(equal + 48) & 0x100) != 0)
    {
      goto LABEL_56;
    }

    if ((has & 0x10) != 0)
    {
      if ((v7 & 0x10) == 0 || self->_numTfoCookieReqRcv != *(equal + 5))
      {
        goto LABEL_56;
      }
    }

    else if ((v7 & 0x10) != 0)
    {
      goto LABEL_56;
    }

    if ((has & 0x20) != 0)
    {
      if ((v7 & 0x20) == 0 || self->_numTfoCookieSent != *(equal + 6))
      {
        goto LABEL_56;
      }
    }

    else if ((v7 & 0x20) != 0)
    {
      goto LABEL_56;
    }

    if ((has & 2) != 0)
    {
      if ((v7 & 2) == 0 || self->_numTfoCookieInvalid != *(equal + 2))
      {
        goto LABEL_56;
      }
    }

    else if ((v7 & 2) != 0)
    {
      goto LABEL_56;
    }

    LOBYTE(v5) = (v7 & 1) == 0;
    if (has)
    {
      if ((v7 & 1) == 0 || self->_numTfoBlackholed != *(equal + 1))
      {
        goto LABEL_56;
      }

      LOBYTE(v5) = 1;
    }
  }

  return v5;
}

- (unint64_t)hash
{
  has = self->_has;
  if ((has & 0x400) != 0)
  {
    v3 = 2654435761u * self->_timestamp;
    if ((has & 8) != 0)
    {
LABEL_3:
      v4 = 2654435761u * self->_numTfoCookieReq;
      if ((has & 4) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else
  {
    v3 = 0;
    if ((has & 8) != 0)
    {
      goto LABEL_3;
    }
  }

  v4 = 0;
  if ((has & 4) != 0)
  {
LABEL_4:
    v5 = 2654435761u * self->_numTfoCookieRcv;
    if ((has & 0x40) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_15:
  v5 = 0;
  if ((has & 0x40) != 0)
  {
LABEL_5:
    v6 = 2654435761u * self->_numTfoFallback;
    if ((*&self->_has & 0x200) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_16:
  v6 = 0;
  if ((*&self->_has & 0x200) != 0)
  {
LABEL_6:
    v7 = 2654435761u * self->_numTfoSynDataSent;
    if ((has & 0x80) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  v7 = 0;
  if ((has & 0x80) != 0)
  {
LABEL_7:
    v8 = 2654435761u * self->_numTfoSynDataAcked;
    if ((*&self->_has & 0x100) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  v8 = 0;
  if ((*&self->_has & 0x100) != 0)
  {
LABEL_8:
    v9 = 2654435761u * self->_numTfoSynDataRcv;
    if ((has & 0x10) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

LABEL_19:
  v9 = 0;
  if ((has & 0x10) != 0)
  {
LABEL_9:
    v10 = 2654435761u * self->_numTfoCookieReqRcv;
    if ((has & 0x20) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

LABEL_20:
  v10 = 0;
  if ((has & 0x20) != 0)
  {
LABEL_10:
    v11 = 2654435761u * self->_numTfoCookieSent;
    if ((has & 2) != 0)
    {
      goto LABEL_11;
    }

LABEL_22:
    v12 = 0;
    if (has)
    {
      goto LABEL_12;
    }

LABEL_23:
    v13 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13;
  }

LABEL_21:
  v11 = 0;
  if ((has & 2) == 0)
  {
    goto LABEL_22;
  }

LABEL_11:
  v12 = 2654435761u * self->_numTfoCookieInvalid;
  if ((has & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_12:
  v13 = 2654435761u * self->_numTfoBlackholed;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13;
}

- (void)mergeFrom:(id)from
{
  v3 = *(from + 48);
  if ((v3 & 0x400) != 0)
  {
    self->_timestamp = *(from + 11);
    *&self->_has |= 0x400u;
    v3 = *(from + 48);
    if ((v3 & 8) == 0)
    {
LABEL_3:
      if ((v3 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if ((v3 & 8) == 0)
  {
    goto LABEL_3;
  }

  self->_numTfoCookieReq = *(from + 4);
  *&self->_has |= 8u;
  v3 = *(from + 48);
  if ((v3 & 4) == 0)
  {
LABEL_4:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_15:
  self->_numTfoCookieRcv = *(from + 3);
  *&self->_has |= 4u;
  v3 = *(from + 48);
  if ((v3 & 0x40) == 0)
  {
LABEL_5:
    if ((v3 & 0x200) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_16:
  self->_numTfoFallback = *(from + 7);
  *&self->_has |= 0x40u;
  v3 = *(from + 48);
  if ((v3 & 0x200) == 0)
  {
LABEL_6:
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  self->_numTfoSynDataSent = *(from + 10);
  *&self->_has |= 0x200u;
  v3 = *(from + 48);
  if ((v3 & 0x80) == 0)
  {
LABEL_7:
    if ((v3 & 0x100) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  self->_numTfoSynDataAcked = *(from + 8);
  *&self->_has |= 0x80u;
  v3 = *(from + 48);
  if ((v3 & 0x100) == 0)
  {
LABEL_8:
    if ((v3 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

LABEL_19:
  self->_numTfoSynDataRcv = *(from + 9);
  *&self->_has |= 0x100u;
  v3 = *(from + 48);
  if ((v3 & 0x10) == 0)
  {
LABEL_9:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

LABEL_20:
  self->_numTfoCookieReqRcv = *(from + 5);
  *&self->_has |= 0x10u;
  v3 = *(from + 48);
  if ((v3 & 0x20) == 0)
  {
LABEL_10:
    if ((v3 & 2) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_22;
  }

LABEL_21:
  self->_numTfoCookieSent = *(from + 6);
  *&self->_has |= 0x20u;
  v3 = *(from + 48);
  if ((v3 & 2) == 0)
  {
LABEL_11:
    if ((v3 & 1) == 0)
    {
      return;
    }

LABEL_23:
    self->_numTfoBlackholed = *(from + 1);
    *&self->_has |= 1u;
    return;
  }

LABEL_22:
  self->_numTfoCookieInvalid = *(from + 2);
  *&self->_has |= 2u;
  if (*(from + 48))
  {
    goto LABEL_23;
  }
}

@end