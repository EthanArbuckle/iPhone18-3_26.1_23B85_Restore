@interface AWDDuetExpertCenterZKWOutcome
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasEngaged:(BOOL)engaged;
- (void)setHasExpert:(BOOL)expert;
- (void)setHasItemSelected:(BOOL)selected;
- (void)setHasItemsShown:(BOOL)shown;
- (void)setHasSameCategorySelected:(BOOL)selected;
- (void)setHasTimestamp:(BOOL)timestamp;
- (void)setHasTypedQuery:(BOOL)query;
- (void)writeTo:(id)to;
@end

@implementation AWDDuetExpertCenterZKWOutcome

- (void)setHasTimestamp:(BOOL)timestamp
{
  if (timestamp)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasExpert:(BOOL)expert
{
  if (expert)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasEngaged:(BOOL)engaged
{
  if (engaged)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasItemsShown:(BOOL)shown
{
  if (shown)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasTypedQuery:(BOOL)query
{
  if (query)
  {
    v3 = 0x80;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = v3 & 0x80 | *&self->_has & 0x7F;
}

- (void)setHasItemSelected:(BOOL)selected
{
  if (selected)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (void)setHasSameCategorySelected:(BOOL)selected
{
  if (selected)
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
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  has = self->_has;
  if ((has & 4) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
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

  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_expert), @"expert"}];
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
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_engaged), @"engaged"}];
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
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_itemsShown), @"itemsShown"}];
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
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_typedQuery), @"typedQuery"}];
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_7:
    if ((has & 1) == 0)
    {
      goto LABEL_8;
    }

LABEL_17:
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_egress), @"egress"}];
    if ((*&self->_has & 0x40) == 0)
    {
      return dictionary;
    }

    goto LABEL_9;
  }

LABEL_16:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_itemSelected), @"itemSelected"}];
  has = self->_has;
  if (has)
  {
    goto LABEL_17;
  }

LABEL_8:
  if ((has & 0x40) != 0)
  {
LABEL_9:
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_sameCategorySelected), @"sameCategorySelected"}];
  }

  return dictionary;
}

- (void)writeTo:(id)to
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

- (void)copyTo:(id)to
{
  has = self->_has;
  if ((has & 4) != 0)
  {
    *(to + 3) = self->_timestamp;
    *(to + 40) |= 4u;
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

  *(to + 2) = self->_expert;
  *(to + 40) |= 2u;
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
  *(to + 36) = self->_engaged;
  *(to + 40) |= 0x10u;
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
  *(to + 8) = self->_itemsShown;
  *(to + 40) |= 8u;
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
  *(to + 39) = self->_typedQuery;
  *(to + 40) |= 0x80u;
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
  *(to + 37) = self->_itemSelected;
  *(to + 40) |= 0x20u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_8:
    if ((has & 0x40) == 0)
    {
      return;
    }

LABEL_17:
    *(to + 38) = self->_sameCategorySelected;
    *(to + 40) |= 0x40u;
    return;
  }

LABEL_16:
  *(to + 1) = self->_egress;
  *(to + 40) |= 1u;
  if ((*&self->_has & 0x40) != 0)
  {
    goto LABEL_17;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
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

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    if ((*&self->_has & 4) != 0)
    {
      if ((*(equal + 40) & 4) == 0 || self->_timestamp != *(equal + 3))
      {
        goto LABEL_50;
      }
    }

    else if ((*(equal + 40) & 4) != 0)
    {
      goto LABEL_50;
    }

    if ((*&self->_has & 2) != 0)
    {
      if ((*(equal + 40) & 2) == 0 || self->_expert != *(equal + 2))
      {
        goto LABEL_50;
      }
    }

    else if ((*(equal + 40) & 2) != 0)
    {
      goto LABEL_50;
    }

    if ((*&self->_has & 0x10) != 0)
    {
      if ((*(equal + 40) & 0x10) == 0)
      {
        goto LABEL_50;
      }

      v6 = *(equal + 36);
      if (self->_engaged)
      {
        if ((*(equal + 36) & 1) == 0)
        {
          goto LABEL_50;
        }
      }

      else if (*(equal + 36))
      {
        goto LABEL_50;
      }
    }

    else if ((*(equal + 40) & 0x10) != 0)
    {
      goto LABEL_50;
    }

    if ((*&self->_has & 8) != 0)
    {
      if ((*(equal + 40) & 8) == 0 || self->_itemsShown != *(equal + 8))
      {
        goto LABEL_50;
      }
    }

    else if ((*(equal + 40) & 8) != 0)
    {
      goto LABEL_50;
    }

    if ((*&self->_has & 0x80) != 0)
    {
      if ((*(equal + 40) & 0x80) == 0)
      {
        goto LABEL_50;
      }

      v7 = *(equal + 39);
      if (self->_typedQuery)
      {
        if ((*(equal + 39) & 1) == 0)
        {
          goto LABEL_50;
        }
      }

      else if (*(equal + 39))
      {
        goto LABEL_50;
      }
    }

    else if ((*(equal + 40) & 0x80) != 0)
    {
      goto LABEL_50;
    }

    if ((*&self->_has & 0x20) != 0)
    {
      if ((*(equal + 40) & 0x20) == 0)
      {
        goto LABEL_50;
      }

      v8 = *(equal + 37);
      if (self->_itemSelected)
      {
        if ((*(equal + 37) & 1) == 0)
        {
          goto LABEL_50;
        }
      }

      else if (*(equal + 37))
      {
        goto LABEL_50;
      }
    }

    else if ((*(equal + 40) & 0x20) != 0)
    {
      goto LABEL_50;
    }

    if (*&self->_has)
    {
      if ((*(equal + 40) & 1) == 0 || self->_egress != *(equal + 1))
      {
        goto LABEL_50;
      }
    }

    else if (*(equal + 40))
    {
      goto LABEL_50;
    }

    LOBYTE(v5) = (*(equal + 40) & 0x40) == 0;
    if ((*&self->_has & 0x40) != 0)
    {
      if ((*(equal + 40) & 0x40) != 0)
      {
        if (self->_sameCategorySelected)
        {
          if (*(equal + 38))
          {
            goto LABEL_53;
          }
        }

        else if (!*(equal + 38))
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

- (void)mergeFrom:(id)from
{
  v3 = *(from + 40);
  if ((v3 & 4) != 0)
  {
    self->_timestamp = *(from + 3);
    *&self->_has |= 4u;
    v3 = *(from + 40);
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

  else if ((*(from + 40) & 2) == 0)
  {
    goto LABEL_3;
  }

  self->_expert = *(from + 2);
  *&self->_has |= 2u;
  v3 = *(from + 40);
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
  self->_engaged = *(from + 36);
  *&self->_has |= 0x10u;
  v3 = *(from + 40);
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
  self->_itemsShown = *(from + 8);
  *&self->_has |= 8u;
  v3 = *(from + 40);
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
  self->_typedQuery = *(from + 39);
  *&self->_has |= 0x80u;
  v3 = *(from + 40);
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
  self->_itemSelected = *(from + 37);
  *&self->_has |= 0x20u;
  v3 = *(from + 40);
  if ((v3 & 1) == 0)
  {
LABEL_8:
    if ((v3 & 0x40) == 0)
    {
      return;
    }

LABEL_17:
    self->_sameCategorySelected = *(from + 38);
    *&self->_has |= 0x40u;
    return;
  }

LABEL_16:
  self->_egress = *(from + 1);
  *&self->_has |= 1u;
  if ((*(from + 40) & 0x40) != 0)
  {
    goto LABEL_17;
  }
}

@end