@interface AWDSafariSelectedFavoritesGridItemEvent
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsDisplayContext:(id)a3;
- (int)StringAsSection:(id)a3;
- (int)StringAsType:(id)a3;
- (int)displayContext;
- (int)section;
- (int)type;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasDisplayContext:(BOOL)a3;
- (void)setHasRow:(BOOL)a3;
- (void)setHasSection:(BOOL)a3;
- (void)setHasSectionIndex:(BOOL)a3;
- (void)setHasTimestamp:(BOOL)a3;
- (void)setHasType:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDSafariSelectedFavoritesGridItemEvent

- (void)setHasTimestamp:(BOOL)a3
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

- (void)setHasRow:(BOOL)a3
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

- (void)setHasSectionIndex:(BOOL)a3
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

- (int)type
{
  if ((*&self->_has & 0x40) != 0)
  {
    return self->_type;
  }

  else
  {
    return 0;
  }
}

- (void)setHasType:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xBF | v3;
}

- (int)StringAsType:(id)a3
{
  if ([a3 isEqualToString:@"UNKNOWN_TYPE"])
  {
    return 0;
  }

  if ([a3 isEqualToString:@"BOOKMARK"])
  {
    return 1;
  }

  if ([a3 isEqualToString:@"FOLDER"])
  {
    return 2;
  }

  if ([a3 isEqualToString:@"BOOKMARKLET"])
  {
    return 3;
  }

  return 0;
}

- (int)displayContext
{
  if ((*&self->_has & 0x10) != 0)
  {
    return self->_displayContext;
  }

  else
  {
    return 0;
  }
}

- (void)setHasDisplayContext:(BOOL)a3
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

- (int)StringAsDisplayContext:(id)a3
{
  if ([a3 isEqualToString:@"NEW_TAB_PAGE"])
  {
    return 0;
  }

  else
  {
    return [a3 isEqualToString:@"FOCUSED_URL_FIELD"];
  }
}

- (int)section
{
  if ((*&self->_has & 0x20) != 0)
  {
    return self->_section;
  }

  else
  {
    return 0;
  }
}

- (void)setHasSection:(BOOL)a3
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

- (int)StringAsSection:(id)a3
{
  if ([a3 isEqualToString:@"FAVORITES"])
  {
    return 0;
  }

  if ([a3 isEqualToString:@"FREQUENTLY_VISITED"])
  {
    return 1;
  }

  if ([a3 isEqualToString:@"OTHER_SECTION"])
  {
    return 2;
  }

  return 0;
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDSafariSelectedFavoritesGridItemEvent;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDSafariSelectedFavoritesGridItemEvent description](&v3, sel_description), -[AWDSafariSelectedFavoritesGridItemEvent dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x29EDB8E00] dictionary];
  has = self->_has;
  if ((has & 8) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_row), @"row"}];
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_4:
    if ((has & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_itemsPerRow), @"itemsPerRow"}];
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_5:
    if ((has & 0x40) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_sectionIndex), @"sectionIndex"}];
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_6:
    if ((has & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_13:
  type = self->_type;
  if (type >= 4)
  {
    v6 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"(unknown: %i)", self->_type];
  }

  else
  {
    v6 = off_29EE32DC0[type];
  }

  [v3 setObject:v6 forKey:@"type"];
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_7:
    if ((has & 0x20) == 0)
    {
      return v3;
    }

    goto LABEL_23;
  }

LABEL_17:
  displayContext = self->_displayContext;
  if (displayContext)
  {
    if (displayContext == 1)
    {
      v8 = @"FOCUSED_URL_FIELD";
    }

    else
    {
      v8 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"(unknown: %i)", self->_displayContext];
    }
  }

  else
  {
    v8 = @"NEW_TAB_PAGE";
  }

  [v3 setObject:v8 forKey:@"displayContext"];
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_23:
    section = self->_section;
    if (section >= 3)
    {
      v10 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"(unknown: %i)", self->_section];
    }

    else
    {
      v10 = off_29EE32DE0[section];
    }

    [v3 setObject:v10 forKey:@"section"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  has = self->_has;
  if ((has & 8) != 0)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  row = self->_row;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_4:
    if ((has & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  itemsPerRow = self->_itemsPerRow;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_5:
    if ((has & 0x40) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  sectionIndex = self->_sectionIndex;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_6:
    if ((has & 0x10) == 0)
    {
      goto LABEL_7;
    }

LABEL_14:
    displayContext = self->_displayContext;
    PBDataWriterWriteInt32Field();
    if ((*&self->_has & 0x20) == 0)
    {
      return;
    }

    goto LABEL_15;
  }

LABEL_13:
  type = self->_type;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 0x10) != 0)
  {
    goto LABEL_14;
  }

LABEL_7:
  if ((has & 0x20) == 0)
  {
    return;
  }

LABEL_15:
  section = self->_section;

  PBDataWriterWriteInt32Field();
}

- (void)copyTo:(id)a3
{
  has = self->_has;
  if ((has & 8) != 0)
  {
    *(a3 + 4) = self->_timestamp;
    *(a3 + 52) |= 8u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  *(a3 + 2) = self->_row;
  *(a3 + 52) |= 2u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_4:
    if ((has & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  *(a3 + 1) = self->_itemsPerRow;
  *(a3 + 52) |= 1u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_5:
    if ((has & 0x40) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  *(a3 + 3) = self->_sectionIndex;
  *(a3 + 52) |= 4u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_6:
    if ((has & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_14;
  }

LABEL_13:
  *(a3 + 12) = self->_type;
  *(a3 + 52) |= 0x40u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_7:
    if ((has & 0x20) == 0)
    {
      return;
    }

LABEL_15:
    *(a3 + 11) = self->_section;
    *(a3 + 52) |= 0x20u;
    return;
  }

LABEL_14:
  *(a3 + 10) = self->_displayContext;
  *(a3 + 52) |= 0x10u;
  if ((*&self->_has & 0x20) != 0)
  {
    goto LABEL_15;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  has = self->_has;
  if ((has & 8) != 0)
  {
    *(result + 4) = self->_timestamp;
    *(result + 52) |= 8u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
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

  *(result + 2) = self->_row;
  *(result + 52) |= 2u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_4:
    if ((has & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  *(result + 1) = self->_itemsPerRow;
  *(result + 52) |= 1u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_5:
    if ((has & 0x40) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  *(result + 3) = self->_sectionIndex;
  *(result + 52) |= 4u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_6:
    if ((has & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  *(result + 12) = self->_type;
  *(result + 52) |= 0x40u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_7:
    if ((has & 0x20) == 0)
    {
      return result;
    }

    goto LABEL_8;
  }

LABEL_15:
  *(result + 10) = self->_displayContext;
  *(result + 52) |= 0x10u;
  if ((*&self->_has & 0x20) == 0)
  {
    return result;
  }

LABEL_8:
  *(result + 11) = self->_section;
  *(result + 52) |= 0x20u;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    if ((*&self->_has & 8) != 0)
    {
      if ((*(a3 + 52) & 8) == 0 || self->_timestamp != *(a3 + 4))
      {
        goto LABEL_36;
      }
    }

    else if ((*(a3 + 52) & 8) != 0)
    {
LABEL_36:
      LOBYTE(v5) = 0;
      return v5;
    }

    if ((*&self->_has & 2) != 0)
    {
      if ((*(a3 + 52) & 2) == 0 || self->_row != *(a3 + 2))
      {
        goto LABEL_36;
      }
    }

    else if ((*(a3 + 52) & 2) != 0)
    {
      goto LABEL_36;
    }

    if (*&self->_has)
    {
      if ((*(a3 + 52) & 1) == 0 || self->_itemsPerRow != *(a3 + 1))
      {
        goto LABEL_36;
      }
    }

    else if (*(a3 + 52))
    {
      goto LABEL_36;
    }

    if ((*&self->_has & 4) != 0)
    {
      if ((*(a3 + 52) & 4) == 0 || self->_sectionIndex != *(a3 + 3))
      {
        goto LABEL_36;
      }
    }

    else if ((*(a3 + 52) & 4) != 0)
    {
      goto LABEL_36;
    }

    if ((*&self->_has & 0x40) != 0)
    {
      if ((*(a3 + 52) & 0x40) == 0 || self->_type != *(a3 + 12))
      {
        goto LABEL_36;
      }
    }

    else if ((*(a3 + 52) & 0x40) != 0)
    {
      goto LABEL_36;
    }

    if ((*&self->_has & 0x10) != 0)
    {
      if ((*(a3 + 52) & 0x10) == 0 || self->_displayContext != *(a3 + 10))
      {
        goto LABEL_36;
      }
    }

    else if ((*(a3 + 52) & 0x10) != 0)
    {
      goto LABEL_36;
    }

    LOBYTE(v5) = (*(a3 + 52) & 0x20) == 0;
    if ((*&self->_has & 0x20) != 0)
    {
      if ((*(a3 + 52) & 0x20) == 0 || self->_section != *(a3 + 11))
      {
        goto LABEL_36;
      }

      LOBYTE(v5) = 1;
    }
  }

  return v5;
}

- (unint64_t)hash
{
  if ((*&self->_has & 8) != 0)
  {
    v2 = 2654435761u * self->_timestamp;
    if ((*&self->_has & 2) != 0)
    {
LABEL_3:
      v3 = 2654435761u * self->_row;
      if (*&self->_has)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
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
  if (*&self->_has)
  {
LABEL_4:
    v4 = 2654435761u * self->_itemsPerRow;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  v4 = 0;
  if ((*&self->_has & 4) != 0)
  {
LABEL_5:
    v5 = 2654435761u * self->_sectionIndex;
    if ((*&self->_has & 0x40) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  v5 = 0;
  if ((*&self->_has & 0x40) != 0)
  {
LABEL_6:
    v6 = 2654435761 * self->_type;
    if ((*&self->_has & 0x10) != 0)
    {
      goto LABEL_7;
    }

LABEL_14:
    v7 = 0;
    if ((*&self->_has & 0x20) != 0)
    {
      goto LABEL_8;
    }

LABEL_15:
    v8 = 0;
    return v3 ^ v2 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8;
  }

LABEL_13:
  v6 = 0;
  if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_14;
  }

LABEL_7:
  v7 = 2654435761 * self->_displayContext;
  if ((*&self->_has & 0x20) == 0)
  {
    goto LABEL_15;
  }

LABEL_8:
  v8 = 2654435761 * self->_section;
  return v3 ^ v2 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8;
}

- (void)mergeFrom:(id)a3
{
  v3 = *(a3 + 52);
  if ((v3 & 8) != 0)
  {
    self->_timestamp = *(a3 + 4);
    *&self->_has |= 8u;
    v3 = *(a3 + 52);
    if ((v3 & 2) == 0)
    {
LABEL_3:
      if ((v3 & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*(a3 + 52) & 2) == 0)
  {
    goto LABEL_3;
  }

  self->_row = *(a3 + 2);
  *&self->_has |= 2u;
  v3 = *(a3 + 52);
  if ((v3 & 1) == 0)
  {
LABEL_4:
    if ((v3 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  self->_itemsPerRow = *(a3 + 1);
  *&self->_has |= 1u;
  v3 = *(a3 + 52);
  if ((v3 & 4) == 0)
  {
LABEL_5:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  self->_sectionIndex = *(a3 + 3);
  *&self->_has |= 4u;
  v3 = *(a3 + 52);
  if ((v3 & 0x40) == 0)
  {
LABEL_6:
    if ((v3 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_14;
  }

LABEL_13:
  self->_type = *(a3 + 12);
  *&self->_has |= 0x40u;
  v3 = *(a3 + 52);
  if ((v3 & 0x10) == 0)
  {
LABEL_7:
    if ((v3 & 0x20) == 0)
    {
      return;
    }

LABEL_15:
    self->_section = *(a3 + 11);
    *&self->_has |= 0x20u;
    return;
  }

LABEL_14:
  self->_displayContext = *(a3 + 10);
  *&self->_has |= 0x10u;
  if ((*(a3 + 52) & 0x20) != 0)
  {
    goto LABEL_15;
  }
}

@end