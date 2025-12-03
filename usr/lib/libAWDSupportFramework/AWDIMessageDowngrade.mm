@interface AWDIMessageDowngrade
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)setHasDurationBeforeDowngrade:(BOOL)downgrade;
- (void)setHasIsManualDowngrade:(BOOL)downgrade;
- (void)writeTo:(id)to;
@end

@implementation AWDIMessageDowngrade

- (void)dealloc
{
  [(AWDIMessageDowngrade *)self setGuid:0];
  v3.receiver = self;
  v3.super_class = AWDIMessageDowngrade;
  [(AWDIMessageDowngrade *)&v3 dealloc];
}

- (void)setHasDurationBeforeDowngrade:(BOOL)downgrade
{
  if (downgrade)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasIsManualDowngrade:(BOOL)downgrade
{
  if (downgrade)
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
  v3.super_class = AWDIMessageDowngrade;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDIMessageDowngrade description](&v3, sel_description), -[AWDIMessageDowngrade dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  v4 = dictionary;
  guid = self->_guid;
  if (guid)
  {
    [dictionary setObject:guid forKey:@"guid"];
  }

  has = self->_has;
  if ((has & 1) == 0)
  {
    if ((*&self->_has & 2) == 0)
    {
      goto LABEL_5;
    }

LABEL_9:
    [v4 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_durationBeforeDowngrade), @"durationBeforeDowngrade"}];
    if ((*&self->_has & 4) == 0)
    {
      return v4;
    }

    goto LABEL_6;
  }

  [v4 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
  has = self->_has;
  if ((has & 2) != 0)
  {
    goto LABEL_9;
  }

LABEL_5:
  if ((has & 4) != 0)
  {
LABEL_6:
    [v4 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_isManualDowngrade), @"isManualDowngrade"}];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  if (self->_guid)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if ((has & 1) == 0)
  {
    if ((*&self->_has & 2) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    durationBeforeDowngrade = self->_durationBeforeDowngrade;
    PBDataWriterWriteUint32Field();
    if ((*&self->_has & 4) == 0)
    {
      return;
    }

    goto LABEL_9;
  }

  timestamp = self->_timestamp;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 2) != 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  if ((has & 4) == 0)
  {
    return;
  }

LABEL_9:
  isManualDowngrade = self->_isManualDowngrade;

  PBDataWriterWriteUint32Field();
}

- (void)copyTo:(id)to
{
  if (self->_guid)
  {
    [to setGuid:?];
  }

  has = self->_has;
  if (has)
  {
    *(to + 1) = self->_timestamp;
    *(to + 36) |= 1u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_5:
      if ((has & 4) == 0)
      {
        return;
      }

      goto LABEL_6;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

  *(to + 4) = self->_durationBeforeDowngrade;
  *(to + 36) |= 2u;
  if ((*&self->_has & 4) == 0)
  {
    return;
  }

LABEL_6:
  *(to + 8) = self->_isManualDowngrade;
  *(to + 36) |= 4u;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];

  *(v5 + 24) = [(NSString *)self->_guid copyWithZone:zone];
  has = self->_has;
  if ((has & 1) == 0)
  {
    if ((*&self->_has & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v5 + 16) = self->_durationBeforeDowngrade;
    *(v5 + 36) |= 2u;
    if ((*&self->_has & 4) == 0)
    {
      return v5;
    }

    goto LABEL_4;
  }

  *(v5 + 8) = self->_timestamp;
  *(v5 + 36) |= 1u;
  has = self->_has;
  if ((has & 2) != 0)
  {
    goto LABEL_7;
  }

LABEL_3:
  if ((has & 4) != 0)
  {
LABEL_4:
    *(v5 + 32) = self->_isManualDowngrade;
    *(v5 + 36) |= 4u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    guid = self->_guid;
    if (!(guid | *(equal + 3)) || (v5 = [(NSString *)guid isEqual:?]) != 0)
    {
      if (*&self->_has)
      {
        if ((*(equal + 36) & 1) == 0 || self->_timestamp != *(equal + 1))
        {
          goto LABEL_18;
        }
      }

      else if (*(equal + 36))
      {
LABEL_18:
        LOBYTE(v5) = 0;
        return v5;
      }

      if ((*&self->_has & 2) != 0)
      {
        if ((*(equal + 36) & 2) == 0 || self->_durationBeforeDowngrade != *(equal + 4))
        {
          goto LABEL_18;
        }
      }

      else if ((*(equal + 36) & 2) != 0)
      {
        goto LABEL_18;
      }

      LOBYTE(v5) = (*(equal + 36) & 4) == 0;
      if ((*&self->_has & 4) != 0)
      {
        if ((*(equal + 36) & 4) == 0 || self->_isManualDowngrade != *(equal + 8))
        {
          goto LABEL_18;
        }

        LOBYTE(v5) = 1;
      }
    }
  }

  return v5;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_guid hash];
  if ((*&self->_has & 1) == 0)
  {
    v4 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v5 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_4;
    }

LABEL_7:
    v6 = 0;
    return v4 ^ v3 ^ v5 ^ v6;
  }

  v4 = 2654435761u * self->_timestamp;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v5 = 2654435761 * self->_durationBeforeDowngrade;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  v6 = 2654435761 * self->_isManualDowngrade;
  return v4 ^ v3 ^ v5 ^ v6;
}

- (void)mergeFrom:(id)from
{
  if (*(from + 3))
  {
    [(AWDIMessageDowngrade *)self setGuid:?];
  }

  v5 = *(from + 36);
  if (v5)
  {
    self->_timestamp = *(from + 1);
    *&self->_has |= 1u;
    v5 = *(from + 36);
    if ((v5 & 2) == 0)
    {
LABEL_5:
      if ((v5 & 4) == 0)
      {
        return;
      }

      goto LABEL_6;
    }
  }

  else if ((*(from + 36) & 2) == 0)
  {
    goto LABEL_5;
  }

  self->_durationBeforeDowngrade = *(from + 4);
  *&self->_has |= 2u;
  if ((*(from + 36) & 4) == 0)
  {
    return;
  }

LABEL_6:
  self->_isManualDowngrade = *(from + 8);
  *&self->_has |= 4u;
}

@end