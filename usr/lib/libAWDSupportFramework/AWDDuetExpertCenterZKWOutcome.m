@interface AWDDuetExpertCenterZKWOutcome
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasEngaged:(BOOL)a3;
- (void)setHasExpert:(BOOL)a3;
- (void)setHasItemSelected:(BOOL)a3;
- (void)setHasItemsShown:(BOOL)a3;
- (void)setHasSameCategorySelected:(BOOL)a3;
- (void)setHasTimestamp:(BOOL)a3;
- (void)setHasTypedQuery:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDDuetExpertCenterZKWOutcome

- (void)setHasTimestamp:(BOOL)a3
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

- (void)setHasExpert:(BOOL)a3
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

- (void)setHasEngaged:(BOOL)a3
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

- (void)setHasItemsShown:(BOOL)a3
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

- (void)setHasTypedQuery:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x80;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = v3 & 0x80 | *&self->_has & 0x7F;
}

- (void)setHasItemSelected:(BOOL)a3
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

- (void)setHasSameCategorySelected:(BOOL)a3
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

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDDuetExpertCenterZKWOutcome;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDDuetExpertCenterZKWOutcome description](&v3, sel_description), -[AWDDuetExpertCenterZKWOutcome dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x29EDB8E00] dictionary];
  has = self->_has;
  if ((has & 4) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 0x10) == 0)
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

  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_expert), @"expert"}];
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_engaged), @"engaged"}];
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_5:
    if ((has & 0x80) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_itemsShown), @"itemsShown"}];
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_6:
    if ((has & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_16;
  }

LABEL_15:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_typedQuery), @"typedQuery"}];
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_7:
    if ((has & 1) == 0)
    {
      goto LABEL_8;
    }

LABEL_17:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_egress), @"egress"}];
    if ((*&self->_has & 0x40) == 0)
    {
      return v3;
    }

    goto LABEL_9;
  }

LABEL_16:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_itemSelected), @"itemSelected"}];
  has = self->_has;
  if (has)
  {
    goto LABEL_17;
  }

LABEL_8:
  if ((has & 0x40) != 0)
  {
LABEL_9:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_sameCategorySelected), @"sameCategorySelected"}];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  has = self->_has;
  if ((has & 4) != 0)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 0x10) == 0)
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

  expert = self->_expert;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  engaged = self->_engaged;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_5:
    if ((has & 0x80) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  itemsShown = self->_itemsShown;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_6:
    if ((has & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  typedQuery = self->_typedQuery;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_7:
    if ((has & 1) == 0)
    {
      goto LABEL_8;
    }

LABEL_16:
    egress = self->_egress;
    PBDataWriterWriteUint64Field();
    if ((*&self->_has & 0x40) == 0)
    {
      return;
    }

    goto LABEL_17;
  }

LABEL_15:
  itemSelected = self->_itemSelected;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if (has)
  {
    goto LABEL_16;
  }

LABEL_8:
  if ((has & 0x40) == 0)
  {
    return;
  }

LABEL_17:
  sameCategorySelected = self->_sameCategorySelected;

  PBDataWriterWriteBOOLField();
}

- (void)copyTo:(id)a3
{
  has = self->_has;
  if ((has & 4) != 0)
  {
    *(a3 + 3) = self->_timestamp;
    *(a3 + 40) |= 4u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 0x10) == 0)
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

  *(a3 + 2) = self->_expert;
  *(a3 + 40) |= 2u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  *(a3 + 36) = self->_engaged;
  *(a3 + 40) |= 0x10u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_5:
    if ((has & 0x80) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  *(a3 + 8) = self->_itemsShown;
  *(a3 + 40) |= 8u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_6:
    if ((has & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  *(a3 + 39) = self->_typedQuery;
  *(a3 + 40) |= 0x80u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_7:
    if ((has & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_16;
  }

LABEL_15:
  *(a3 + 37) = self->_itemSelected;
  *(a3 + 40) |= 0x20u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_8:
    if ((has & 0x40) == 0)
    {
      return;
    }

LABEL_17:
    *(a3 + 38) = self->_sameCategorySelected;
    *(a3 + 40) |= 0x40u;
    return;
  }

LABEL_16:
  *(a3 + 1) = self->_egress;
  *(a3 + 40) |= 1u;
  if ((*&self->_has & 0x40) != 0)
  {
    goto LABEL_17;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  has = self->_has;
  if ((has & 4) != 0)
  {
    *(result + 3) = self->_timestamp;
    *(result + 40) |= 4u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 0x10) == 0)
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

  *(result + 2) = self->_expert;
  *(result + 40) |= 2u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  *(result + 36) = self->_engaged;
  *(result + 40) |= 0x10u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_5:
    if ((has & 0x80) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  *(result + 8) = self->_itemsShown;
  *(result + 40) |= 8u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_6:
    if ((has & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_16;
  }

LABEL_15:
  *(result + 39) = self->_typedQuery;
  *(result + 40) |= 0x80u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_7:
    if ((has & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

LABEL_16:
  *(result + 37) = self->_itemSelected;
  *(result + 40) |= 0x20u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_8:
    if ((has & 0x40) == 0)
    {
      return result;
    }

    goto LABEL_9;
  }

LABEL_17:
  *(result + 1) = self->_egress;
  *(result + 40) |= 1u;
  if ((*&self->_has & 0x40) == 0)
  {
    return result;
  }

LABEL_9:
  *(result + 38) = self->_sameCategorySelected;
  *(result + 40) |= 0x40u;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    if ((*&self->_has & 4) != 0)
    {
      if ((*(a3 + 40) & 4) == 0 || self->_timestamp != *(a3 + 3))
      {
        goto LABEL_50;
      }
    }

    else if ((*(a3 + 40) & 4) != 0)
    {
      goto LABEL_50;
    }

    if ((*&self->_has & 2) != 0)
    {
      if ((*(a3 + 40) & 2) == 0 || self->_expert != *(a3 + 2))
      {
        goto LABEL_50;
      }
    }

    else if ((*(a3 + 40) & 2) != 0)
    {
      goto LABEL_50;
    }

    if ((*&self->_has & 0x10) != 0)
    {
      if ((*(a3 + 40) & 0x10) == 0)
      {
        goto LABEL_50;
      }

      v6 = *(a3 + 36);
      if (self->_engaged)
      {
        if ((*(a3 + 36) & 1) == 0)
        {
          goto LABEL_50;
        }
      }

      else if (*(a3 + 36))
      {
        goto LABEL_50;
      }
    }

    else if ((*(a3 + 40) & 0x10) != 0)
    {
      goto LABEL_50;
    }

    if ((*&self->_has & 8) != 0)
    {
      if ((*(a3 + 40) & 8) == 0 || self->_itemsShown != *(a3 + 8))
      {
        goto LABEL_50;
      }
    }

    else if ((*(a3 + 40) & 8) != 0)
    {
      goto LABEL_50;
    }

    if ((*&self->_has & 0x80) != 0)
    {
      if ((*(a3 + 40) & 0x80) == 0)
      {
        goto LABEL_50;
      }

      v7 = *(a3 + 39);
      if (self->_typedQuery)
      {
        if ((*(a3 + 39) & 1) == 0)
        {
          goto LABEL_50;
        }
      }

      else if (*(a3 + 39))
      {
        goto LABEL_50;
      }
    }

    else if ((*(a3 + 40) & 0x80) != 0)
    {
      goto LABEL_50;
    }

    if ((*&self->_has & 0x20) != 0)
    {
      if ((*(a3 + 40) & 0x20) == 0)
      {
        goto LABEL_50;
      }

      v8 = *(a3 + 37);
      if (self->_itemSelected)
      {
        if ((*(a3 + 37) & 1) == 0)
        {
          goto LABEL_50;
        }
      }

      else if (*(a3 + 37))
      {
        goto LABEL_50;
      }
    }

    else if ((*(a3 + 40) & 0x20) != 0)
    {
      goto LABEL_50;
    }

    if (*&self->_has)
    {
      if ((*(a3 + 40) & 1) == 0 || self->_egress != *(a3 + 1))
      {
        goto LABEL_50;
      }
    }

    else if (*(a3 + 40))
    {
      goto LABEL_50;
    }

    LOBYTE(v5) = (*(a3 + 40) & 0x40) == 0;
    if ((*&self->_has & 0x40) != 0)
    {
      if ((*(a3 + 40) & 0x40) != 0)
      {
        if (self->_sameCategorySelected)
        {
          if (*(a3 + 38))
          {
            goto LABEL_53;
          }
        }

        else if (!*(a3 + 38))
        {
LABEL_53:
          LOBYTE(v5) = 1;
          return v5;
        }
      }

LABEL_50:
      LOBYTE(v5) = 0;
    }
  }

  return v5;
}

- (unint64_t)hash
{
  if ((*&self->_has & 4) != 0)
  {
    v2 = 2654435761u * self->_timestamp;
    if ((*&self->_has & 2) != 0)
    {
LABEL_3:
      v3 = 2654435761u * self->_expert;
      if ((*&self->_has & 0x10) != 0)
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
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_4:
    v4 = 2654435761 * self->_engaged;
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
    v5 = 2654435761 * self->_itemsShown;
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
    v6 = 2654435761 * self->_typedQuery;
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
    v7 = 2654435761 * self->_itemSelected;
    if (*&self->_has)
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
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_8:
  v8 = 2654435761u * self->_egress;
  if ((*&self->_has & 0x40) == 0)
  {
    goto LABEL_17;
  }

LABEL_9:
  v9 = 2654435761 * self->_sameCategorySelected;
  return v3 ^ v2 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9;
}

- (void)mergeFrom:(id)a3
{
  v3 = *(a3 + 40);
  if ((v3 & 4) != 0)
  {
    self->_timestamp = *(a3 + 3);
    *&self->_has |= 4u;
    v3 = *(a3 + 40);
    if ((v3 & 2) == 0)
    {
LABEL_3:
      if ((v3 & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((*(a3 + 40) & 2) == 0)
  {
    goto LABEL_3;
  }

  self->_expert = *(a3 + 2);
  *&self->_has |= 2u;
  v3 = *(a3 + 40);
  if ((v3 & 0x10) == 0)
  {
LABEL_4:
    if ((v3 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  self->_engaged = *(a3 + 36);
  *&self->_has |= 0x10u;
  v3 = *(a3 + 40);
  if ((v3 & 8) == 0)
  {
LABEL_5:
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  self->_itemsShown = *(a3 + 8);
  *&self->_has |= 8u;
  v3 = *(a3 + 40);
  if ((v3 & 0x80) == 0)
  {
LABEL_6:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  self->_typedQuery = *(a3 + 39);
  *&self->_has |= 0x80u;
  v3 = *(a3 + 40);
  if ((v3 & 0x20) == 0)
  {
LABEL_7:
    if ((v3 & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_16;
  }

LABEL_15:
  self->_itemSelected = *(a3 + 37);
  *&self->_has |= 0x20u;
  v3 = *(a3 + 40);
  if ((v3 & 1) == 0)
  {
LABEL_8:
    if ((v3 & 0x40) == 0)
    {
      return;
    }

LABEL_17:
    self->_sameCategorySelected = *(a3 + 38);
    *&self->_has |= 0x40u;
    return;
  }

LABEL_16:
  self->_egress = *(a3 + 1);
  *&self->_has |= 1u;
  if ((*(a3 + 40) & 0x40) != 0)
  {
    goto LABEL_17;
  }
}

@end