@interface AWDLibnetcoreMbufStatsReport
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasMbuf256BTotal:(BOOL)total;
- (void)setHasMbuf2KBTotal:(BOOL)total;
- (void)setHasMbuf4KBTotal:(BOOL)total;
- (void)setHasMbufDrainCount:(BOOL)count;
- (void)setHasMbufMemReleased:(BOOL)released;
- (void)setHasSockAtMBLimit:(BOOL)limit;
- (void)setHasSockMBcnt:(BOOL)bcnt;
- (void)writeTo:(id)to;
@end

@implementation AWDLibnetcoreMbufStatsReport

- (void)setHasMbuf256BTotal:(BOOL)total
{
  if (total)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasMbuf2KBTotal:(BOOL)total
{
  if (total)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasMbuf4KBTotal:(BOOL)total
{
  if (total)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasSockMBcnt:(BOOL)bcnt
{
  if (bcnt)
  {
    v3 = 0x80;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = v3 & 0x80 | *&self->_has & 0x7F;
}

- (void)setHasSockAtMBLimit:(BOOL)limit
{
  if (limit)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xBF | v3;
}

- (void)setHasMbufMemReleased:(BOOL)released
{
  if (released)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (void)setHasMbufDrainCount:(BOOL)count
{
  if (count)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDLibnetcoreMbufStatsReport;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDLibnetcoreMbufStatsReport description](&v3, sel_description), -[AWDLibnetcoreMbufStatsReport dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  has = self->_has;
  if ((has & 2) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_mbuf256BTotal), @"mbuf256BTotal"}];
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_mbuf2KBTotal), @"mbuf2KBTotal"}];
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_mbuf4KBTotal), @"mbuf4KBTotal"}];
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_5:
    if ((has & 0x80) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_mbuf16KBTotal), @"mbuf16KBTotal"}];
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_6:
    if ((has & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_16;
  }

LABEL_15:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_sockMBcnt), @"sockMBcnt"}];
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_7:
    if ((has & 0x20) == 0)
    {
      goto LABEL_8;
    }

LABEL_17:
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_mbufMemReleased), @"mbufMemReleased"}];
    if ((*&self->_has & 0x10) == 0)
    {
      return dictionary;
    }

    goto LABEL_9;
  }

LABEL_16:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_sockAtMBLimit), @"sockAtMBLimit"}];
  has = self->_has;
  if ((has & 0x20) != 0)
  {
    goto LABEL_17;
  }

LABEL_8:
  if ((has & 0x10) != 0)
  {
LABEL_9:
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_mbufDrainCount), @"mbufDrainCount"}];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  has = self->_has;
  if ((has & 2) != 0)
  {
    mbuf256BTotal = self->_mbuf256BTotal;
    PBDataWriterWriteUint64Field();
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  mbuf2KBTotal = self->_mbuf2KBTotal;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  mbuf4KBTotal = self->_mbuf4KBTotal;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_5:
    if ((has & 0x80) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  mbuf16KBTotal = self->_mbuf16KBTotal;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_6:
    if ((has & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  sockMBcnt = self->_sockMBcnt;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_7:
    if ((has & 0x20) == 0)
    {
      goto LABEL_8;
    }

LABEL_16:
    mbufMemReleased = self->_mbufMemReleased;
    PBDataWriterWriteUint64Field();
    if ((*&self->_has & 0x10) == 0)
    {
      return;
    }

    goto LABEL_17;
  }

LABEL_15:
  sockAtMBLimit = self->_sockAtMBLimit;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 0x20) != 0)
  {
    goto LABEL_16;
  }

LABEL_8:
  if ((has & 0x10) == 0)
  {
    return;
  }

LABEL_17:
  mbufDrainCount = self->_mbufDrainCount;

  PBDataWriterWriteUint64Field();
}

- (void)copyTo:(id)to
{
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(to + 2) = self->_mbuf256BTotal;
    *(to + 72) |= 2u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  *(to + 3) = self->_mbuf2KBTotal;
  *(to + 72) |= 4u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  *(to + 4) = self->_mbuf4KBTotal;
  *(to + 72) |= 8u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_5:
    if ((has & 0x80) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  *(to + 1) = self->_mbuf16KBTotal;
  *(to + 72) |= 1u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_6:
    if ((has & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  *(to + 8) = self->_sockMBcnt;
  *(to + 72) |= 0x80u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_7:
    if ((has & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_16;
  }

LABEL_15:
  *(to + 7) = self->_sockAtMBLimit;
  *(to + 72) |= 0x40u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_8:
    if ((has & 0x10) == 0)
    {
      return;
    }

LABEL_17:
    *(to + 5) = self->_mbufDrainCount;
    *(to + 72) |= 0x10u;
    return;
  }

LABEL_16:
  *(to + 6) = self->_mbufMemReleased;
  *(to + 72) |= 0x20u;
  if ((*&self->_has & 0x10) != 0)
  {
    goto LABEL_17;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(result + 2) = self->_mbuf256BTotal;
    *(result + 72) |= 2u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  *(result + 3) = self->_mbuf2KBTotal;
  *(result + 72) |= 4u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  *(result + 4) = self->_mbuf4KBTotal;
  *(result + 72) |= 8u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_5:
    if ((has & 0x80) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  *(result + 1) = self->_mbuf16KBTotal;
  *(result + 72) |= 1u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_6:
    if ((has & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_16;
  }

LABEL_15:
  *(result + 8) = self->_sockMBcnt;
  *(result + 72) |= 0x80u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_7:
    if ((has & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

LABEL_16:
  *(result + 7) = self->_sockAtMBLimit;
  *(result + 72) |= 0x40u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_8:
    if ((has & 0x10) == 0)
    {
      return result;
    }

    goto LABEL_9;
  }

LABEL_17:
  *(result + 6) = self->_mbufMemReleased;
  *(result + 72) |= 0x20u;
  if ((*&self->_has & 0x10) == 0)
  {
    return result;
  }

LABEL_9:
  *(result + 5) = self->_mbufDrainCount;
  *(result + 72) |= 0x10u;
  return result;
}

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    if ((*&self->_has & 2) != 0)
    {
      if ((*(equal + 72) & 2) == 0 || self->_mbuf256BTotal != *(equal + 2))
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
      if ((*(equal + 72) & 4) == 0 || self->_mbuf2KBTotal != *(equal + 3))
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
      if ((*(equal + 72) & 8) == 0 || self->_mbuf4KBTotal != *(equal + 4))
      {
        goto LABEL_41;
      }
    }

    else if ((*(equal + 72) & 8) != 0)
    {
      goto LABEL_41;
    }

    if (*&self->_has)
    {
      if ((*(equal + 72) & 1) == 0 || self->_mbuf16KBTotal != *(equal + 1))
      {
        goto LABEL_41;
      }
    }

    else if (*(equal + 72))
    {
      goto LABEL_41;
    }

    if ((*&self->_has & 0x80) != 0)
    {
      if ((*(equal + 72) & 0x80) == 0 || self->_sockMBcnt != *(equal + 8))
      {
        goto LABEL_41;
      }
    }

    else if ((*(equal + 72) & 0x80) != 0)
    {
LABEL_41:
      LOBYTE(v5) = 0;
      return v5;
    }

    if ((*&self->_has & 0x40) != 0)
    {
      if ((*(equal + 72) & 0x40) == 0 || self->_sockAtMBLimit != *(equal + 7))
      {
        goto LABEL_41;
      }
    }

    else if ((*(equal + 72) & 0x40) != 0)
    {
      goto LABEL_41;
    }

    if ((*&self->_has & 0x20) != 0)
    {
      if ((*(equal + 72) & 0x20) == 0 || self->_mbufMemReleased != *(equal + 6))
      {
        goto LABEL_41;
      }
    }

    else if ((*(equal + 72) & 0x20) != 0)
    {
      goto LABEL_41;
    }

    LOBYTE(v5) = (*(equal + 72) & 0x10) == 0;
    if ((*&self->_has & 0x10) != 0)
    {
      if ((*(equal + 72) & 0x10) == 0 || self->_mbufDrainCount != *(equal + 5))
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
  if ((*&self->_has & 2) != 0)
  {
    v2 = 2654435761u * self->_mbuf256BTotal;
    if ((*&self->_has & 4) != 0)
    {
LABEL_3:
      v3 = 2654435761u * self->_mbuf2KBTotal;
      if ((*&self->_has & 8) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v2 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_3;
    }
  }

  v3 = 0;
  if ((*&self->_has & 8) != 0)
  {
LABEL_4:
    v4 = 2654435761u * self->_mbuf4KBTotal;
    if (*&self->_has)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  v4 = 0;
  if (*&self->_has)
  {
LABEL_5:
    v5 = 2654435761u * self->_mbuf16KBTotal;
    if ((*&self->_has & 0x80) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  v5 = 0;
  if ((*&self->_has & 0x80) != 0)
  {
LABEL_6:
    v6 = 2654435761u * self->_sockMBcnt;
    if ((*&self->_has & 0x40) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  v6 = 0;
  if ((*&self->_has & 0x40) != 0)
  {
LABEL_7:
    v7 = 2654435761u * self->_sockAtMBLimit;
    if ((*&self->_has & 0x20) != 0)
    {
      goto LABEL_8;
    }

LABEL_16:
    v8 = 0;
    if ((*&self->_has & 0x10) != 0)
    {
      goto LABEL_9;
    }

LABEL_17:
    v9 = 0;
    return v3 ^ v2 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9;
  }

LABEL_15:
  v7 = 0;
  if ((*&self->_has & 0x20) == 0)
  {
    goto LABEL_16;
  }

LABEL_8:
  v8 = 2654435761u * self->_mbufMemReleased;
  if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_17;
  }

LABEL_9:
  v9 = 2654435761u * self->_mbufDrainCount;
  return v3 ^ v2 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9;
}

- (void)mergeFrom:(id)from
{
  v3 = *(from + 72);
  if ((v3 & 2) != 0)
  {
    self->_mbuf256BTotal = *(from + 2);
    *&self->_has |= 2u;
    v3 = *(from + 72);
    if ((v3 & 4) == 0)
    {
LABEL_3:
      if ((v3 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((*(from + 72) & 4) == 0)
  {
    goto LABEL_3;
  }

  self->_mbuf2KBTotal = *(from + 3);
  *&self->_has |= 4u;
  v3 = *(from + 72);
  if ((v3 & 8) == 0)
  {
LABEL_4:
    if ((v3 & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  self->_mbuf4KBTotal = *(from + 4);
  *&self->_has |= 8u;
  v3 = *(from + 72);
  if ((v3 & 1) == 0)
  {
LABEL_5:
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  self->_mbuf16KBTotal = *(from + 1);
  *&self->_has |= 1u;
  v3 = *(from + 72);
  if ((v3 & 0x80) == 0)
  {
LABEL_6:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  self->_sockMBcnt = *(from + 8);
  *&self->_has |= 0x80u;
  v3 = *(from + 72);
  if ((v3 & 0x40) == 0)
  {
LABEL_7:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_16;
  }

LABEL_15:
  self->_sockAtMBLimit = *(from + 7);
  *&self->_has |= 0x40u;
  v3 = *(from + 72);
  if ((v3 & 0x20) == 0)
  {
LABEL_8:
    if ((v3 & 0x10) == 0)
    {
      return;
    }

LABEL_17:
    self->_mbufDrainCount = *(from + 5);
    *&self->_has |= 0x10u;
    return;
  }

LABEL_16:
  self->_mbufMemReleased = *(from + 6);
  *&self->_has |= 0x20u;
  if ((*(from + 72) & 0x10) != 0)
  {
    goto LABEL_17;
  }
}

@end