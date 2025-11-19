@interface AWDSpringBoardIconLaunch
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasIconIsFolder:(BOOL)a3;
- (void)setHasIconIsFromDock:(BOOL)a3;
- (void)setHasIconIsFromFolder:(BOOL)a3;
- (void)setHasTimestamp:(BOOL)a3;
- (void)setHasTotalIconPagesInFolder:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDSpringBoardIconLaunch

- (void)setHasTimestamp:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasIconIsFolder:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasIconIsFromFolder:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (void)setHasIconIsFromDock:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasTotalIconPagesInFolder:(BOOL)a3
{
  if (a3)
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
  v3.super_class = AWDSpringBoardIconLaunch;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDSpringBoardIconLaunch description](&v3, sel_description), -[AWDSpringBoardIconLaunch dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x29EDB8E00] dictionary];
  has = self->_has;
  if ((has & 2) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 0x20) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_3;
  }

  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_iconIsFolder), @"iconIsFolder"}];
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_4:
    if ((has & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_iconIsFromFolder), @"iconIsFromFolder"}];
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_5:
    if ((has & 1) == 0)
    {
      goto LABEL_6;
    }

LABEL_13:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_iconPageInFolder), @"iconPageInFolder"}];
    if ((*&self->_has & 4) == 0)
    {
      return v3;
    }

    goto LABEL_7;
  }

LABEL_12:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_iconIsFromDock), @"iconIsFromDock"}];
  has = self->_has;
  if (has)
  {
    goto LABEL_13;
  }

LABEL_6:
  if ((has & 4) != 0)
  {
LABEL_7:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_totalIconPagesInFolder), @"totalIconPagesInFolder"}];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  has = self->_has;
  if ((has & 2) != 0)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 0x20) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_3;
  }

  iconIsFolder = self->_iconIsFolder;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_4:
    if ((has & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  iconIsFromFolder = self->_iconIsFromFolder;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_5:
    if ((has & 1) == 0)
    {
      goto LABEL_6;
    }

LABEL_12:
    iconPageInFolder = self->_iconPageInFolder;
    PBDataWriterWriteUint64Field();
    if ((*&self->_has & 4) == 0)
    {
      return;
    }

    goto LABEL_13;
  }

LABEL_11:
  iconIsFromDock = self->_iconIsFromDock;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if (has)
  {
    goto LABEL_12;
  }

LABEL_6:
  if ((has & 4) == 0)
  {
    return;
  }

LABEL_13:
  totalIconPagesInFolder = self->_totalIconPagesInFolder;

  PBDataWriterWriteUint64Field();
}

- (void)copyTo:(id)a3
{
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(a3 + 2) = self->_timestamp;
    *(a3 + 36) |= 2u;
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 0x20) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_3;
  }

  *(a3 + 32) = self->_iconIsFolder;
  *(a3 + 36) |= 8u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_4:
    if ((has & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  *(a3 + 34) = self->_iconIsFromFolder;
  *(a3 + 36) |= 0x20u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_5:
    if ((has & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_12;
  }

LABEL_11:
  *(a3 + 33) = self->_iconIsFromDock;
  *(a3 + 36) |= 0x10u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_6:
    if ((has & 4) == 0)
    {
      return;
    }

LABEL_13:
    *(a3 + 3) = self->_totalIconPagesInFolder;
    *(a3 + 36) |= 4u;
    return;
  }

LABEL_12:
  *(a3 + 1) = self->_iconPageInFolder;
  *(a3 + 36) |= 1u;
  if ((*&self->_has & 4) != 0)
  {
    goto LABEL_13;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(result + 2) = self->_timestamp;
    *(result + 36) |= 2u;
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 0x20) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_3;
  }

  *(result + 32) = self->_iconIsFolder;
  *(result + 36) |= 8u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_4:
    if ((has & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  *(result + 34) = self->_iconIsFromFolder;
  *(result + 36) |= 0x20u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_5:
    if ((has & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  *(result + 33) = self->_iconIsFromDock;
  *(result + 36) |= 0x10u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_6:
    if ((has & 4) == 0)
    {
      return result;
    }

    goto LABEL_7;
  }

LABEL_13:
  *(result + 1) = self->_iconPageInFolder;
  *(result + 36) |= 1u;
  if ((*&self->_has & 4) == 0)
  {
    return result;
  }

LABEL_7:
  *(result + 3) = self->_totalIconPagesInFolder;
  *(result + 36) |= 4u;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (!v5)
  {
    return v5;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(a3 + 36) & 2) == 0 || self->_timestamp != *(a3 + 2))
    {
      goto LABEL_39;
    }
  }

  else if ((*(a3 + 36) & 2) != 0)
  {
    goto LABEL_39;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(a3 + 36) & 8) == 0)
    {
      goto LABEL_39;
    }

    v6 = *(a3 + 32);
    if (self->_iconIsFolder)
    {
      if ((*(a3 + 32) & 1) == 0)
      {
        goto LABEL_39;
      }
    }

    else if (*(a3 + 32))
    {
      goto LABEL_39;
    }
  }

  else if ((*(a3 + 36) & 8) != 0)
  {
    goto LABEL_39;
  }

  if ((*&self->_has & 0x20) != 0)
  {
    if ((*(a3 + 36) & 0x20) == 0)
    {
      goto LABEL_39;
    }

    v7 = *(a3 + 34);
    if (self->_iconIsFromFolder)
    {
      if ((*(a3 + 34) & 1) == 0)
      {
        goto LABEL_39;
      }
    }

    else if (*(a3 + 34))
    {
      goto LABEL_39;
    }
  }

  else if ((*(a3 + 36) & 0x20) != 0)
  {
    goto LABEL_39;
  }

  if ((*&self->_has & 0x10) == 0)
  {
    if ((*(a3 + 36) & 0x10) == 0)
    {
      goto LABEL_13;
    }

LABEL_39:
    LOBYTE(v5) = 0;
    return v5;
  }

  if ((*(a3 + 36) & 0x10) == 0)
  {
    goto LABEL_39;
  }

  v8 = *(a3 + 33);
  if (self->_iconIsFromDock)
  {
    if ((*(a3 + 33) & 1) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_13;
  }

  if (*(a3 + 33))
  {
    goto LABEL_39;
  }

LABEL_13:
  if (*&self->_has)
  {
    if ((*(a3 + 36) & 1) == 0 || self->_iconPageInFolder != *(a3 + 1))
    {
      goto LABEL_39;
    }
  }

  else if (*(a3 + 36))
  {
    goto LABEL_39;
  }

  LOBYTE(v5) = (*(a3 + 36) & 4) == 0;
  if ((*&self->_has & 4) != 0)
  {
    if ((*(a3 + 36) & 4) == 0 || self->_totalIconPagesInFolder != *(a3 + 3))
    {
      goto LABEL_39;
    }

    LOBYTE(v5) = 1;
  }

  return v5;
}

- (unint64_t)hash
{
  if ((*&self->_has & 2) != 0)
  {
    v2 = 2654435761u * self->_timestamp;
    if ((*&self->_has & 8) != 0)
    {
LABEL_3:
      v3 = 2654435761 * self->_iconIsFolder;
      if ((*&self->_has & 0x20) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v2 = 0;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_3;
    }
  }

  v3 = 0;
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_4:
    v4 = 2654435761 * self->_iconIsFromFolder;
    if ((*&self->_has & 0x10) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  v4 = 0;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_5:
    v5 = 2654435761 * self->_iconIsFromDock;
    if (*&self->_has)
    {
      goto LABEL_6;
    }

LABEL_12:
    v6 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_7;
    }

LABEL_13:
    v7 = 0;
    return v3 ^ v2 ^ v4 ^ v5 ^ v6 ^ v7;
  }

LABEL_11:
  v5 = 0;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_6:
  v6 = 2654435761u * self->_iconPageInFolder;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_13;
  }

LABEL_7:
  v7 = 2654435761u * self->_totalIconPagesInFolder;
  return v3 ^ v2 ^ v4 ^ v5 ^ v6 ^ v7;
}

- (void)mergeFrom:(id)a3
{
  v3 = *(a3 + 36);
  if ((v3 & 2) != 0)
  {
    self->_timestamp = *(a3 + 2);
    *&self->_has |= 2u;
    v3 = *(a3 + 36);
    if ((v3 & 8) == 0)
    {
LABEL_3:
      if ((v3 & 0x20) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((*(a3 + 36) & 8) == 0)
  {
    goto LABEL_3;
  }

  self->_iconIsFolder = *(a3 + 32);
  *&self->_has |= 8u;
  v3 = *(a3 + 36);
  if ((v3 & 0x20) == 0)
  {
LABEL_4:
    if ((v3 & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  self->_iconIsFromFolder = *(a3 + 34);
  *&self->_has |= 0x20u;
  v3 = *(a3 + 36);
  if ((v3 & 0x10) == 0)
  {
LABEL_5:
    if ((v3 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_12;
  }

LABEL_11:
  self->_iconIsFromDock = *(a3 + 33);
  *&self->_has |= 0x10u;
  v3 = *(a3 + 36);
  if ((v3 & 1) == 0)
  {
LABEL_6:
    if ((v3 & 4) == 0)
    {
      return;
    }

LABEL_13:
    self->_totalIconPagesInFolder = *(a3 + 3);
    *&self->_has |= 4u;
    return;
  }

LABEL_12:
  self->_iconPageInFolder = *(a3 + 1);
  *&self->_has |= 1u;
  if ((*(a3 + 36) & 4) != 0)
  {
    goto LABEL_13;
  }
}

@end