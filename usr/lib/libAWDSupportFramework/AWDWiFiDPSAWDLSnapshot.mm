@interface AWDWiFiDPSAWDLSnapshot
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasDuration:(BOOL)duration;
- (void)setHasSdb:(BOOL)sdb;
- (void)setHasUse:(BOOL)use;
- (void)writeTo:(id)to;
@end

@implementation AWDWiFiDPSAWDLSnapshot

- (void)setHasDuration:(BOOL)duration
{
  if (duration)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasUse:(BOOL)use
{
  if (use)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasSdb:(BOOL)sdb
{
  if (sdb)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDWiFiDPSAWDLSnapshot;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDWiFiDPSAWDLSnapshot description](&v3, sel_description), -[AWDWiFiDPSAWDLSnapshot dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  has = self->_has;
  if (has)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_ts), @"ts"}];
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

LABEL_9:
      [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_use), @"use"}];
      if ((*&self->_has & 4) == 0)
      {
        return dictionary;
      }

      goto LABEL_5;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_duration), @"duration"}];
  has = self->_has;
  if ((has & 8) != 0)
  {
    goto LABEL_9;
  }

LABEL_4:
  if ((has & 4) != 0)
  {
LABEL_5:
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_sdb), @"sdb"}];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  has = self->_has;
  if (has)
  {
    ts = self->_ts;
    PBDataWriterWriteUint64Field();
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      use = self->_use;
      PBDataWriterWriteUint32Field();
      if ((*&self->_has & 4) == 0)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  duration = self->_duration;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 8) != 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  if ((has & 4) == 0)
  {
    return;
  }

LABEL_9:
  sdb = self->_sdb;

  PBDataWriterWriteUint32Field();
}

- (void)copyTo:(id)to
{
  has = self->_has;
  if (has)
  {
    *(to + 1) = self->_ts;
    *(to + 28) |= 1u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  *(to + 4) = self->_duration;
  *(to + 28) |= 2u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 4) == 0)
    {
      return;
    }

LABEL_9:
    *(to + 5) = self->_sdb;
    *(to + 28) |= 4u;
    return;
  }

LABEL_8:
  *(to + 6) = self->_use;
  *(to + 28) |= 8u;
  if ((*&self->_has & 4) != 0)
  {
    goto LABEL_9;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  has = self->_has;
  if (has)
  {
    *(result + 1) = self->_ts;
    *(result + 28) |= 1u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  *(result + 4) = self->_duration;
  *(result + 28) |= 2u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 4) == 0)
    {
      return result;
    }

    goto LABEL_5;
  }

LABEL_9:
  *(result + 6) = self->_use;
  *(result + 28) |= 8u;
  if ((*&self->_has & 4) == 0)
  {
    return result;
  }

LABEL_5:
  *(result + 5) = self->_sdb;
  *(result + 28) |= 4u;
  return result;
}

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    if (*&self->_has)
    {
      if ((*(equal + 28) & 1) == 0 || self->_ts != *(equal + 1))
      {
        goto LABEL_21;
      }
    }

    else if (*(equal + 28))
    {
LABEL_21:
      LOBYTE(v5) = 0;
      return v5;
    }

    if ((*&self->_has & 2) != 0)
    {
      if ((*(equal + 28) & 2) == 0 || self->_duration != *(equal + 4))
      {
        goto LABEL_21;
      }
    }

    else if ((*(equal + 28) & 2) != 0)
    {
      goto LABEL_21;
    }

    if ((*&self->_has & 8) != 0)
    {
      if ((*(equal + 28) & 8) == 0 || self->_use != *(equal + 6))
      {
        goto LABEL_21;
      }
    }

    else if ((*(equal + 28) & 8) != 0)
    {
      goto LABEL_21;
    }

    LOBYTE(v5) = (*(equal + 28) & 4) == 0;
    if ((*&self->_has & 4) != 0)
    {
      if ((*(equal + 28) & 4) == 0 || self->_sdb != *(equal + 5))
      {
        goto LABEL_21;
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
    v2 = 2654435761u * self->_ts;
    if ((*&self->_has & 2) != 0)
    {
LABEL_3:
      v3 = 2654435761 * self->_duration;
      if ((*&self->_has & 8) != 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      v4 = 0;
      if ((*&self->_has & 4) != 0)
      {
        goto LABEL_5;
      }

LABEL_9:
      v5 = 0;
      return v3 ^ v2 ^ v4 ^ v5;
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
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  v4 = 2654435761 * self->_use;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_9;
  }

LABEL_5:
  v5 = 2654435761 * self->_sdb;
  return v3 ^ v2 ^ v4 ^ v5;
}

- (void)mergeFrom:(id)from
{
  v3 = *(from + 28);
  if (v3)
  {
    self->_ts = *(from + 1);
    *&self->_has |= 1u;
    v3 = *(from + 28);
    if ((v3 & 2) == 0)
    {
LABEL_3:
      if ((v3 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((*(from + 28) & 2) == 0)
  {
    goto LABEL_3;
  }

  self->_duration = *(from + 4);
  *&self->_has |= 2u;
  v3 = *(from + 28);
  if ((v3 & 8) == 0)
  {
LABEL_4:
    if ((v3 & 4) == 0)
    {
      return;
    }

LABEL_9:
    self->_sdb = *(from + 5);
    *&self->_has |= 4u;
    return;
  }

LABEL_8:
  self->_use = *(from + 6);
  *&self->_has |= 8u;
  if ((*(from + 28) & 4) != 0)
  {
    goto LABEL_9;
  }
}

@end