@interface AWDLibnetcoreConnectionDataUsageSnapshot
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasBytesOut:(BOOL)out;
- (void)setHasMultipathBytesInCell:(BOOL)cell;
- (void)setHasMultipathBytesInInitial:(BOOL)initial;
- (void)setHasMultipathBytesInWiFi:(BOOL)fi;
- (void)setHasMultipathBytesOutCell:(BOOL)cell;
- (void)setHasMultipathBytesOutInitial:(BOOL)initial;
- (void)setHasMultipathBytesOutWiFi:(BOOL)fi;
- (void)writeTo:(id)to;
@end

@implementation AWDLibnetcoreConnectionDataUsageSnapshot

- (void)setHasBytesOut:(BOOL)out
{
  if (out)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasMultipathBytesInCell:(BOOL)cell
{
  if (cell)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasMultipathBytesOutCell:(BOOL)cell
{
  if (cell)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (void)setHasMultipathBytesInWiFi:(BOOL)fi
{
  if (fi)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasMultipathBytesOutWiFi:(BOOL)fi
{
  if (fi)
  {
    v3 = 0x80;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = v3 & 0x80 | *&self->_has & 0x7F;
}

- (void)setHasMultipathBytesInInitial:(BOOL)initial
{
  if (initial)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasMultipathBytesOutInitial:(BOOL)initial
{
  if (initial)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xBF | v3;
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDLibnetcoreConnectionDataUsageSnapshot;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDLibnetcoreConnectionDataUsageSnapshot description](&v3, sel_description), -[AWDLibnetcoreConnectionDataUsageSnapshot dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  has = self->_has;
  if (has)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_bytesIn), @"bytesIn"}];
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_bytesOut), @"bytesOut"}];
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_multipathBytesInCell), @"multipathBytesInCell"}];
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_5:
    if ((has & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_multipathBytesOutCell), @"multipathBytesOutCell"}];
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_6:
    if ((has & 0x80) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_16;
  }

LABEL_15:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_multipathBytesInWiFi), @"multipathBytesInWiFi"}];
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_7:
    if ((has & 8) == 0)
    {
      goto LABEL_8;
    }

LABEL_17:
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_multipathBytesInInitial), @"multipathBytesInInitial"}];
    if ((*&self->_has & 0x40) == 0)
    {
      return dictionary;
    }

    goto LABEL_9;
  }

LABEL_16:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_multipathBytesOutWiFi), @"multipathBytesOutWiFi"}];
  has = self->_has;
  if ((has & 8) != 0)
  {
    goto LABEL_17;
  }

LABEL_8:
  if ((has & 0x40) != 0)
  {
LABEL_9:
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_multipathBytesOutInitial), @"multipathBytesOutInitial"}];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  has = self->_has;
  if (has)
  {
    bytesIn = self->_bytesIn;
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

  bytesOut = self->_bytesOut;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  multipathBytesInCell = self->_multipathBytesInCell;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_5:
    if ((has & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  multipathBytesOutCell = self->_multipathBytesOutCell;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_6:
    if ((has & 0x80) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  multipathBytesInWiFi = self->_multipathBytesInWiFi;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_7:
    if ((has & 8) == 0)
    {
      goto LABEL_8;
    }

LABEL_16:
    multipathBytesInInitial = self->_multipathBytesInInitial;
    PBDataWriterWriteUint64Field();
    if ((*&self->_has & 0x40) == 0)
    {
      return;
    }

    goto LABEL_17;
  }

LABEL_15:
  multipathBytesOutWiFi = self->_multipathBytesOutWiFi;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 8) != 0)
  {
    goto LABEL_16;
  }

LABEL_8:
  if ((has & 0x40) == 0)
  {
    return;
  }

LABEL_17:
  multipathBytesOutInitial = self->_multipathBytesOutInitial;

  PBDataWriterWriteUint64Field();
}

- (void)copyTo:(id)to
{
  has = self->_has;
  if (has)
  {
    *(to + 1) = self->_bytesIn;
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

  *(to + 2) = self->_bytesOut;
  *(to + 72) |= 2u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  *(to + 3) = self->_multipathBytesInCell;
  *(to + 72) |= 4u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_5:
    if ((has & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  *(to + 6) = self->_multipathBytesOutCell;
  *(to + 72) |= 0x20u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_6:
    if ((has & 0x80) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  *(to + 5) = self->_multipathBytesInWiFi;
  *(to + 72) |= 0x10u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_7:
    if ((has & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_16;
  }

LABEL_15:
  *(to + 8) = self->_multipathBytesOutWiFi;
  *(to + 72) |= 0x80u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_8:
    if ((has & 0x40) == 0)
    {
      return;
    }

LABEL_17:
    *(to + 7) = self->_multipathBytesOutInitial;
    *(to + 72) |= 0x40u;
    return;
  }

LABEL_16:
  *(to + 4) = self->_multipathBytesInInitial;
  *(to + 72) |= 8u;
  if ((*&self->_has & 0x40) != 0)
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
    *(result + 1) = self->_bytesIn;
    *(result + 72) |= 1u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  *(result + 2) = self->_bytesOut;
  *(result + 72) |= 2u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  *(result + 3) = self->_multipathBytesInCell;
  *(result + 72) |= 4u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_5:
    if ((has & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  *(result + 6) = self->_multipathBytesOutCell;
  *(result + 72) |= 0x20u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_6:
    if ((has & 0x80) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_16;
  }

LABEL_15:
  *(result + 5) = self->_multipathBytesInWiFi;
  *(result + 72) |= 0x10u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_7:
    if ((has & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

LABEL_16:
  *(result + 8) = self->_multipathBytesOutWiFi;
  *(result + 72) |= 0x80u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_8:
    if ((has & 0x40) == 0)
    {
      return result;
    }

    goto LABEL_9;
  }

LABEL_17:
  *(result + 4) = self->_multipathBytesInInitial;
  *(result + 72) |= 8u;
  if ((*&self->_has & 0x40) == 0)
  {
    return result;
  }

LABEL_9:
  *(result + 7) = self->_multipathBytesOutInitial;
  *(result + 72) |= 0x40u;
  return result;
}

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    if (*&self->_has)
    {
      if ((*(equal + 72) & 1) == 0 || self->_bytesIn != *(equal + 1))
      {
        goto LABEL_41;
      }
    }

    else if (*(equal + 72))
    {
      goto LABEL_41;
    }

    if ((*&self->_has & 2) != 0)
    {
      if ((*(equal + 72) & 2) == 0 || self->_bytesOut != *(equal + 2))
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
      if ((*(equal + 72) & 4) == 0 || self->_multipathBytesInCell != *(equal + 3))
      {
        goto LABEL_41;
      }
    }

    else if ((*(equal + 72) & 4) != 0)
    {
      goto LABEL_41;
    }

    if ((*&self->_has & 0x20) != 0)
    {
      if ((*(equal + 72) & 0x20) == 0 || self->_multipathBytesOutCell != *(equal + 6))
      {
        goto LABEL_41;
      }
    }

    else if ((*(equal + 72) & 0x20) != 0)
    {
      goto LABEL_41;
    }

    if ((*&self->_has & 0x10) != 0)
    {
      if ((*(equal + 72) & 0x10) == 0 || self->_multipathBytesInWiFi != *(equal + 5))
      {
        goto LABEL_41;
      }
    }

    else if ((*(equal + 72) & 0x10) != 0)
    {
      goto LABEL_41;
    }

    if ((*&self->_has & 0x80) != 0)
    {
      if ((*(equal + 72) & 0x80) == 0 || self->_multipathBytesOutWiFi != *(equal + 8))
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

    if ((*&self->_has & 8) != 0)
    {
      if ((*(equal + 72) & 8) == 0 || self->_multipathBytesInInitial != *(equal + 4))
      {
        goto LABEL_41;
      }
    }

    else if ((*(equal + 72) & 8) != 0)
    {
      goto LABEL_41;
    }

    LOBYTE(v5) = (*(equal + 72) & 0x40) == 0;
    if ((*&self->_has & 0x40) != 0)
    {
      if ((*(equal + 72) & 0x40) == 0 || self->_multipathBytesOutInitial != *(equal + 7))
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
    v2 = 2654435761u * self->_bytesIn;
    if ((*&self->_has & 2) != 0)
    {
LABEL_3:
      v3 = 2654435761u * self->_bytesOut;
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
    v4 = 2654435761u * self->_multipathBytesInCell;
    if ((*&self->_has & 0x20) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  v4 = 0;
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_5:
    v5 = 2654435761u * self->_multipathBytesOutCell;
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
    v6 = 2654435761u * self->_multipathBytesInWiFi;
    if ((*&self->_has & 0x80) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  v6 = 0;
  if ((*&self->_has & 0x80) != 0)
  {
LABEL_7:
    v7 = 2654435761u * self->_multipathBytesOutWiFi;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_8;
    }

LABEL_16:
    v8 = 0;
    if ((*&self->_has & 0x40) != 0)
    {
      goto LABEL_9;
    }

LABEL_17:
    v9 = 0;
    return v3 ^ v2 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9;
  }

LABEL_15:
  v7 = 0;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_16;
  }

LABEL_8:
  v8 = 2654435761u * self->_multipathBytesInInitial;
  if ((*&self->_has & 0x40) == 0)
  {
    goto LABEL_17;
  }

LABEL_9:
  v9 = 2654435761u * self->_multipathBytesOutInitial;
  return v3 ^ v2 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9;
}

- (void)mergeFrom:(id)from
{
  v3 = *(from + 72);
  if (v3)
  {
    self->_bytesIn = *(from + 1);
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

  self->_bytesOut = *(from + 2);
  *&self->_has |= 2u;
  v3 = *(from + 72);
  if ((v3 & 4) == 0)
  {
LABEL_4:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  self->_multipathBytesInCell = *(from + 3);
  *&self->_has |= 4u;
  v3 = *(from + 72);
  if ((v3 & 0x20) == 0)
  {
LABEL_5:
    if ((v3 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  self->_multipathBytesOutCell = *(from + 6);
  *&self->_has |= 0x20u;
  v3 = *(from + 72);
  if ((v3 & 0x10) == 0)
  {
LABEL_6:
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  self->_multipathBytesInWiFi = *(from + 5);
  *&self->_has |= 0x10u;
  v3 = *(from + 72);
  if ((v3 & 0x80) == 0)
  {
LABEL_7:
    if ((v3 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_16;
  }

LABEL_15:
  self->_multipathBytesOutWiFi = *(from + 8);
  *&self->_has |= 0x80u;
  v3 = *(from + 72);
  if ((v3 & 8) == 0)
  {
LABEL_8:
    if ((v3 & 0x40) == 0)
    {
      return;
    }

LABEL_17:
    self->_multipathBytesOutInitial = *(from + 7);
    *&self->_has |= 0x40u;
    return;
  }

LABEL_16:
  self->_multipathBytesInInitial = *(from + 4);
  *&self->_has |= 8u;
  if ((*(from + 72) & 0x40) != 0)
  {
    goto LABEL_17;
  }
}

@end