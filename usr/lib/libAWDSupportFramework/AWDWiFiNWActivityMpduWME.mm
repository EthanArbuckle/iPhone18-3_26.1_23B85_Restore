@interface AWDWiFiNWActivityMpduWME
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasTid1:(BOOL)tid1;
- (void)setHasTid2:(BOOL)tid2;
- (void)setHasTid3:(BOOL)tid3;
- (void)setHasTid4:(BOOL)tid4;
- (void)setHasTid5:(BOOL)tid5;
- (void)setHasTid6:(BOOL)tid6;
- (void)setHasTid7:(BOOL)tid7;
- (void)writeTo:(id)to;
@end

@implementation AWDWiFiNWActivityMpduWME

- (void)setHasTid1:(BOOL)tid1
{
  if (tid1)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasTid2:(BOOL)tid2
{
  if (tid2)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasTid3:(BOOL)tid3
{
  if (tid3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasTid4:(BOOL)tid4
{
  if (tid4)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasTid5:(BOOL)tid5
{
  if (tid5)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (void)setHasTid6:(BOOL)tid6
{
  if (tid6)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xBF | v3;
}

- (void)setHasTid7:(BOOL)tid7
{
  if (tid7)
  {
    v3 = 0x80;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = v3 & 0x80 | *&self->_has & 0x7F;
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDWiFiNWActivityMpduWME;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDWiFiNWActivityMpduWME description](&v3, sel_description), -[AWDWiFiNWActivityMpduWME dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  has = self->_has;
  if (has)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_tid0), @"tid0"}];
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_tid1), @"tid1"}];
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_tid2), @"tid2"}];
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_5:
    if ((has & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_tid3), @"tid3"}];
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_6:
    if ((has & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_tid4), @"tid4"}];
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_7:
    if ((has & 0x40) == 0)
    {
      goto LABEL_8;
    }

LABEL_16:
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_tid6), @"tid6"}];
    if ((*&self->_has & 0x80) == 0)
    {
      return dictionary;
    }

LABEL_17:
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_tid7), @"tid7"}];
    return dictionary;
  }

LABEL_15:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_tid5), @"tid5"}];
  has = self->_has;
  if ((has & 0x40) != 0)
  {
    goto LABEL_16;
  }

LABEL_8:
  if (has < 0)
  {
    goto LABEL_17;
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  has = self->_has;
  if (has)
  {
    tid0 = self->_tid0;
    PBDataWriterWriteUint64Field();
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  tid1 = self->_tid1;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  tid2 = self->_tid2;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_5:
    if ((has & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  tid3 = self->_tid3;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_6:
    if ((has & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  tid4 = self->_tid4;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_7:
    if ((has & 0x40) == 0)
    {
      goto LABEL_8;
    }

LABEL_16:
    tid6 = self->_tid6;
    PBDataWriterWriteUint64Field();
    if ((*&self->_has & 0x80) == 0)
    {
      return;
    }

    goto LABEL_17;
  }

LABEL_15:
  tid5 = self->_tid5;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 0x40) != 0)
  {
    goto LABEL_16;
  }

LABEL_8:
  if ((has & 0x80) == 0)
  {
    return;
  }

LABEL_17:
  tid7 = self->_tid7;

  PBDataWriterWriteUint64Field();
}

- (void)copyTo:(id)to
{
  has = self->_has;
  if (has)
  {
    *(to + 1) = self->_tid0;
    *(to + 72) |= 1u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  *(to + 2) = self->_tid1;
  *(to + 72) |= 2u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  *(to + 3) = self->_tid2;
  *(to + 72) |= 4u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_5:
    if ((has & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  *(to + 4) = self->_tid3;
  *(to + 72) |= 8u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_6:
    if ((has & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  *(to + 5) = self->_tid4;
  *(to + 72) |= 0x10u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_7:
    if ((has & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_16;
  }

LABEL_15:
  *(to + 6) = self->_tid5;
  *(to + 72) |= 0x20u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_8:
    if ((has & 0x80) == 0)
    {
      return;
    }

LABEL_17:
    *(to + 8) = self->_tid7;
    *(to + 72) |= 0x80u;
    return;
  }

LABEL_16:
  *(to + 7) = self->_tid6;
  *(to + 72) |= 0x40u;
  if ((*&self->_has & 0x80) != 0)
  {
    goto LABEL_17;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  has = self->_has;
  if (has)
  {
    *(result + 1) = self->_tid0;
    *(result + 72) |= 1u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  *(result + 2) = self->_tid1;
  *(result + 72) |= 2u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  *(result + 3) = self->_tid2;
  *(result + 72) |= 4u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_5:
    if ((has & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  *(result + 4) = self->_tid3;
  *(result + 72) |= 8u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_6:
    if ((has & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  *(result + 5) = self->_tid4;
  *(result + 72) |= 0x10u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_7:
    if ((has & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_16;
  }

LABEL_15:
  *(result + 6) = self->_tid5;
  *(result + 72) |= 0x20u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_8:
    if ((has & 0x80) == 0)
    {
      return result;
    }

LABEL_17:
    *(result + 8) = self->_tid7;
    *(result + 72) |= 0x80u;
    return result;
  }

LABEL_16:
  *(result + 7) = self->_tid6;
  *(result + 72) |= 0x40u;
  if ((*&self->_has & 0x80) != 0)
  {
    goto LABEL_17;
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    if (*&self->_has)
    {
      if ((*(equal + 72) & 1) == 0 || self->_tid0 != *(equal + 1))
      {
        goto LABEL_41;
      }
    }

    else if (*(equal + 72))
    {
LABEL_41:
      LOBYTE(v5) = 0;
      return v5;
    }

    if ((*&self->_has & 2) != 0)
    {
      if ((*(equal + 72) & 2) == 0 || self->_tid1 != *(equal + 2))
      {
        goto LABEL_41;
      }
    }

    else if ((*(equal + 72) & 2) != 0)
    {
      goto LABEL_41;
    }

    if ((*&self->_has & 4) != 0)
    {
      if ((*(equal + 72) & 4) == 0 || self->_tid2 != *(equal + 3))
      {
        goto LABEL_41;
      }
    }

    else if ((*(equal + 72) & 4) != 0)
    {
      goto LABEL_41;
    }

    if ((*&self->_has & 8) != 0)
    {
      if ((*(equal + 72) & 8) == 0 || self->_tid3 != *(equal + 4))
      {
        goto LABEL_41;
      }
    }

    else if ((*(equal + 72) & 8) != 0)
    {
      goto LABEL_41;
    }

    if ((*&self->_has & 0x10) != 0)
    {
      if ((*(equal + 72) & 0x10) == 0 || self->_tid4 != *(equal + 5))
      {
        goto LABEL_41;
      }
    }

    else if ((*(equal + 72) & 0x10) != 0)
    {
      goto LABEL_41;
    }

    if ((*&self->_has & 0x20) != 0)
    {
      if ((*(equal + 72) & 0x20) == 0 || self->_tid5 != *(equal + 6))
      {
        goto LABEL_41;
      }
    }

    else if ((*(equal + 72) & 0x20) != 0)
    {
      goto LABEL_41;
    }

    if ((*&self->_has & 0x40) != 0)
    {
      if ((*(equal + 72) & 0x40) == 0 || self->_tid6 != *(equal + 7))
      {
        goto LABEL_41;
      }
    }

    else if ((*(equal + 72) & 0x40) != 0)
    {
      goto LABEL_41;
    }

    LOBYTE(v5) = *(equal + 72) >= 0;
    if ((*&self->_has & 0x80) != 0)
    {
      if ((*(equal + 72) & 0x80) == 0 || self->_tid7 != *(equal + 8))
      {
        goto LABEL_41;
      }

      LOBYTE(v5) = 1;
    }
  }

  return v5;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761u * self->_tid0;
    if ((*&self->_has & 2) != 0)
    {
LABEL_3:
      v3 = 2654435761u * self->_tid1;
      if ((*&self->_has & 4) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v2 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  v3 = 0;
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    v4 = 2654435761u * self->_tid2;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  v4 = 0;
  if ((*&self->_has & 8) != 0)
  {
LABEL_5:
    v5 = 2654435761u * self->_tid3;
    if ((*&self->_has & 0x10) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  v5 = 0;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_6:
    v6 = 2654435761u * self->_tid4;
    if ((*&self->_has & 0x20) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  v6 = 0;
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_7:
    v7 = 2654435761u * self->_tid5;
    if ((*&self->_has & 0x40) != 0)
    {
      goto LABEL_8;
    }

LABEL_16:
    v8 = 0;
    if ((*&self->_has & 0x80) != 0)
    {
      goto LABEL_9;
    }

LABEL_17:
    v9 = 0;
    return v3 ^ v2 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9;
  }

LABEL_15:
  v7 = 0;
  if ((*&self->_has & 0x40) == 0)
  {
    goto LABEL_16;
  }

LABEL_8:
  v8 = 2654435761u * self->_tid6;
  if ((*&self->_has & 0x80) == 0)
  {
    goto LABEL_17;
  }

LABEL_9:
  v9 = 2654435761u * self->_tid7;
  return v3 ^ v2 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9;
}

- (void)mergeFrom:(id)from
{
  v3 = *(from + 72);
  if (v3)
  {
    self->_tid0 = *(from + 1);
    *&self->_has |= 1u;
    v3 = *(from + 72);
    if ((v3 & 2) == 0)
    {
LABEL_3:
      if ((v3 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((*(from + 72) & 2) == 0)
  {
    goto LABEL_3;
  }

  self->_tid1 = *(from + 2);
  *&self->_has |= 2u;
  v3 = *(from + 72);
  if ((v3 & 4) == 0)
  {
LABEL_4:
    if ((v3 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  self->_tid2 = *(from + 3);
  *&self->_has |= 4u;
  v3 = *(from + 72);
  if ((v3 & 8) == 0)
  {
LABEL_5:
    if ((v3 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  self->_tid3 = *(from + 4);
  *&self->_has |= 8u;
  v3 = *(from + 72);
  if ((v3 & 0x10) == 0)
  {
LABEL_6:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  self->_tid4 = *(from + 5);
  *&self->_has |= 0x10u;
  v3 = *(from + 72);
  if ((v3 & 0x20) == 0)
  {
LABEL_7:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_16;
  }

LABEL_15:
  self->_tid5 = *(from + 6);
  *&self->_has |= 0x20u;
  v3 = *(from + 72);
  if ((v3 & 0x40) == 0)
  {
LABEL_8:
    if ((v3 & 0x80) == 0)
    {
      return;
    }

LABEL_17:
    self->_tid7 = *(from + 8);
    *&self->_has |= 0x80u;
    return;
  }

LABEL_16:
  self->_tid6 = *(from + 7);
  *&self->_has |= 0x40u;
  if ((*(from + 72) & 0x80) != 0)
  {
    goto LABEL_17;
  }
}

@end