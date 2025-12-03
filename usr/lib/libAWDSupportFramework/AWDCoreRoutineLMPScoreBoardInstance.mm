@interface AWDCoreRoutineLMPScoreBoardInstance
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)setHasIncorrects:(BOOL)incorrects;
- (void)setHasInvalids:(BOOL)invalids;
- (void)setHasUnknowns:(BOOL)unknowns;
- (void)writeTo:(id)to;
@end

@implementation AWDCoreRoutineLMPScoreBoardInstance

- (void)dealloc
{
  [(AWDCoreRoutineLMPScoreBoardInstance *)self setKeyword:0];
  v3.receiver = self;
  v3.super_class = AWDCoreRoutineLMPScoreBoardInstance;
  [(AWDCoreRoutineLMPScoreBoardInstance *)&v3 dealloc];
}

- (void)setHasIncorrects:(BOOL)incorrects
{
  if (incorrects)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasUnknowns:(BOOL)unknowns
{
  if (unknowns)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasInvalids:(BOOL)invalids
{
  if (invalids)
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
  v3.super_class = AWDCoreRoutineLMPScoreBoardInstance;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDCoreRoutineLMPScoreBoardInstance description](&v3, sel_description), -[AWDCoreRoutineLMPScoreBoardInstance dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  v4 = dictionary;
  keyword = self->_keyword;
  if (keyword)
  {
    [dictionary setObject:keyword forKey:@"keyword"];
  }

  has = self->_has;
  if (has)
  {
    [v4 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_corrects), @"corrects"}];
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_5:
      if ((has & 8) == 0)
      {
        goto LABEL_6;
      }

LABEL_11:
      [v4 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_unknowns), @"unknowns"}];
      if ((*&self->_has & 4) == 0)
      {
        return v4;
      }

      goto LABEL_7;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

  [v4 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_incorrects), @"incorrects"}];
  has = self->_has;
  if ((has & 8) != 0)
  {
    goto LABEL_11;
  }

LABEL_6:
  if ((has & 4) != 0)
  {
LABEL_7:
    [v4 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_invalids), @"invalids"}];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  if (self->_keyword)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if (has)
  {
    corrects = self->_corrects;
    PBDataWriterWriteInt32Field();
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_5:
      if ((has & 8) == 0)
      {
        goto LABEL_6;
      }

LABEL_10:
      unknowns = self->_unknowns;
      PBDataWriterWriteInt32Field();
      if ((*&self->_has & 4) == 0)
      {
        return;
      }

      goto LABEL_11;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

  incorrects = self->_incorrects;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 8) != 0)
  {
    goto LABEL_10;
  }

LABEL_6:
  if ((has & 4) == 0)
  {
    return;
  }

LABEL_11:
  invalids = self->_invalids;

  PBDataWriterWriteInt32Field();
}

- (void)copyTo:(id)to
{
  if (self->_keyword)
  {
    [to setKeyword:?];
  }

  has = self->_has;
  if (has)
  {
    *(to + 2) = self->_corrects;
    *(to + 36) |= 1u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_5:
      if ((has & 8) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_11;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

  *(to + 3) = self->_incorrects;
  *(to + 36) |= 2u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_6:
    if ((has & 4) == 0)
    {
      return;
    }

    goto LABEL_7;
  }

LABEL_11:
  *(to + 8) = self->_unknowns;
  *(to + 36) |= 8u;
  if ((*&self->_has & 4) == 0)
  {
    return;
  }

LABEL_7:
  *(to + 4) = self->_invalids;
  *(to + 36) |= 4u;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];

  *(v5 + 24) = [(NSString *)self->_keyword copyWithZone:zone];
  has = self->_has;
  if (has)
  {
    *(v5 + 8) = self->_corrects;
    *(v5 + 36) |= 1u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

LABEL_9:
      *(v5 + 32) = self->_unknowns;
      *(v5 + 36) |= 8u;
      if ((*&self->_has & 4) == 0)
      {
        return v5;
      }

      goto LABEL_5;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 12) = self->_incorrects;
  *(v5 + 36) |= 2u;
  has = self->_has;
  if ((has & 8) != 0)
  {
    goto LABEL_9;
  }

LABEL_4:
  if ((has & 4) != 0)
  {
LABEL_5:
    *(v5 + 16) = self->_invalids;
    *(v5 + 36) |= 4u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    keyword = self->_keyword;
    if (!(keyword | *(equal + 3)) || (v5 = [(NSString *)keyword isEqual:?]) != 0)
    {
      if (*&self->_has)
      {
        if ((*(equal + 36) & 1) == 0 || self->_corrects != *(equal + 2))
        {
          goto LABEL_23;
        }
      }

      else if (*(equal + 36))
      {
LABEL_23:
        LOBYTE(v5) = 0;
        return v5;
      }

      if ((*&self->_has & 2) != 0)
      {
        if ((*(equal + 36) & 2) == 0 || self->_incorrects != *(equal + 3))
        {
          goto LABEL_23;
        }
      }

      else if ((*(equal + 36) & 2) != 0)
      {
        goto LABEL_23;
      }

      if ((*&self->_has & 8) != 0)
      {
        if ((*(equal + 36) & 8) == 0 || self->_unknowns != *(equal + 8))
        {
          goto LABEL_23;
        }
      }

      else if ((*(equal + 36) & 8) != 0)
      {
        goto LABEL_23;
      }

      LOBYTE(v5) = (*(equal + 36) & 4) == 0;
      if ((*&self->_has & 4) != 0)
      {
        if ((*(equal + 36) & 4) == 0 || self->_invalids != *(equal + 4))
        {
          goto LABEL_23;
        }

        LOBYTE(v5) = 1;
      }
    }
  }

  return v5;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_keyword hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_corrects;
    if ((*&self->_has & 2) != 0)
    {
LABEL_3:
      v5 = 2654435761 * self->_incorrects;
      if ((*&self->_has & 8) != 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      v6 = 0;
      if ((*&self->_has & 4) != 0)
      {
        goto LABEL_5;
      }

LABEL_9:
      v7 = 0;
      return v4 ^ v3 ^ v5 ^ v6 ^ v7;
    }
  }

  else
  {
    v4 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  v5 = 0;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  v6 = 2654435761 * self->_unknowns;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_9;
  }

LABEL_5:
  v7 = 2654435761 * self->_invalids;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7;
}

- (void)mergeFrom:(id)from
{
  if (*(from + 3))
  {
    [(AWDCoreRoutineLMPScoreBoardInstance *)self setKeyword:?];
  }

  v5 = *(from + 36);
  if (v5)
  {
    self->_corrects = *(from + 2);
    *&self->_has |= 1u;
    v5 = *(from + 36);
    if ((v5 & 2) == 0)
    {
LABEL_5:
      if ((v5 & 8) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_11;
    }
  }

  else if ((*(from + 36) & 2) == 0)
  {
    goto LABEL_5;
  }

  self->_incorrects = *(from + 3);
  *&self->_has |= 2u;
  v5 = *(from + 36);
  if ((v5 & 8) == 0)
  {
LABEL_6:
    if ((v5 & 4) == 0)
    {
      return;
    }

    goto LABEL_7;
  }

LABEL_11:
  self->_unknowns = *(from + 8);
  *&self->_has |= 8u;
  if ((*(from + 36) & 4) == 0)
  {
    return;
  }

LABEL_7:
  self->_invalids = *(from + 4);
  *&self->_has |= 4u;
}

@end