@interface AWDSafariSetAutoFillQuickTypeSuggestionEvent
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsCategory:(id)a3;
- (int)StringAsFormProperty:(id)a3;
- (int)category;
- (int)formProperty;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasCategory:(BOOL)a3;
- (void)setHasFormProperty:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDSafariSetAutoFillQuickTypeSuggestionEvent

- (int)category
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_category;
  }

  else
  {
    return 0;
  }
}

- (void)setHasCategory:(BOOL)a3
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

- (int)StringAsCategory:(id)a3
{
  if ([a3 isEqualToString:@"CREDIT_CARD"])
  {
    return 0;
  }

  if ([a3 isEqualToString:@"PASSWORD"])
  {
    return 1;
  }

  if ([a3 isEqualToString:@"CONTACT"])
  {
    return 2;
  }

  if ([a3 isEqualToString:@"UNKNOWN_CATEGORY"])
  {
    return 3;
  }

  return 0;
}

- (int)formProperty
{
  if ((*&self->_has & 4) != 0)
  {
    return self->_formProperty;
  }

  else
  {
    return 0;
  }
}

- (void)setHasFormProperty:(BOOL)a3
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

- (int)StringAsFormProperty:(id)a3
{
  if ([a3 isEqualToString:@"FIRST_NAME"])
  {
    return 0;
  }

  if ([a3 isEqualToString:@"LAST_NAME"])
  {
    return 1;
  }

  if ([a3 isEqualToString:@"FULL_NAME"])
  {
    return 2;
  }

  if ([a3 isEqualToString:@"BIRTHDAY"])
  {
    return 3;
  }

  if ([a3 isEqualToString:@"EMAIL"])
  {
    return 4;
  }

  if ([a3 isEqualToString:@"PHONE_NUMBER"])
  {
    return 5;
  }

  if ([a3 isEqualToString:@"ADDRESS"])
  {
    return 6;
  }

  if ([a3 isEqualToString:@"INSTANT_MESSAGE"])
  {
    return 7;
  }

  if ([a3 isEqualToString:@"ORGANIZATION"])
  {
    return 8;
  }

  if ([a3 isEqualToString:@"LOGIN_CREDENTIAL"])
  {
    return 9;
  }

  if ([a3 isEqualToString:@"CREDIT_CARD_FORM"])
  {
    return 10;
  }

  if ([a3 isEqualToString:@"UNKNOWN_PROPERTY"])
  {
    return 11;
  }

  return 0;
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDSafariSetAutoFillQuickTypeSuggestionEvent;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDSafariSetAutoFillQuickTypeSuggestionEvent description](&v3, sel_description), -[AWDSafariSetAutoFillQuickTypeSuggestionEvent dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x29EDB8E00] dictionary];
  has = self->_has;
  if (has)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        return v3;
      }

      goto LABEL_10;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  category = self->_category;
  if (category >= 4)
  {
    v6 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"(unknown: %i)", self->_category];
  }

  else
  {
    v6 = off_29EE32DF8[category];
  }

  [v3 setObject:v6 forKey:@"category"];
  if ((*&self->_has & 4) != 0)
  {
LABEL_10:
    formProperty = self->_formProperty;
    if (formProperty >= 0xC)
    {
      v8 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"(unknown: %i)", self->_formProperty];
    }

    else
    {
      v8 = off_29EE32E18[formProperty];
    }

    [v3 setObject:v8 forKey:@"formProperty"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  has = self->_has;
  if ((has & 1) == 0)
  {
    if ((*&self->_has & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    category = self->_category;
    PBDataWriterWriteInt32Field();
    if ((*&self->_has & 4) == 0)
    {
      return;
    }

    goto LABEL_7;
  }

  timestamp = self->_timestamp;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 2) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((has & 4) == 0)
  {
    return;
  }

LABEL_7:
  formProperty = self->_formProperty;

  PBDataWriterWriteInt32Field();
}

- (void)copyTo:(id)a3
{
  has = self->_has;
  if (has)
  {
    *(a3 + 1) = self->_timestamp;
    *(a3 + 24) |= 1u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        return;
      }

LABEL_7:
      *(a3 + 5) = self->_formProperty;
      *(a3 + 24) |= 4u;
      return;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  *(a3 + 4) = self->_category;
  *(a3 + 24) |= 2u;
  if ((*&self->_has & 4) != 0)
  {
    goto LABEL_7;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  has = self->_has;
  if (has)
  {
    *(result + 1) = self->_timestamp;
    *(result + 24) |= 1u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        return result;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  *(result + 4) = self->_category;
  *(result + 24) |= 2u;
  if ((*&self->_has & 4) == 0)
  {
    return result;
  }

LABEL_4:
  *(result + 5) = self->_formProperty;
  *(result + 24) |= 4u;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    if (*&self->_has)
    {
      if ((*(a3 + 24) & 1) == 0 || self->_timestamp != *(a3 + 1))
      {
        goto LABEL_16;
      }
    }

    else if (*(a3 + 24))
    {
LABEL_16:
      LOBYTE(v5) = 0;
      return v5;
    }

    if ((*&self->_has & 2) != 0)
    {
      if ((*(a3 + 24) & 2) == 0 || self->_category != *(a3 + 4))
      {
        goto LABEL_16;
      }
    }

    else if ((*(a3 + 24) & 2) != 0)
    {
      goto LABEL_16;
    }

    LOBYTE(v5) = (*(a3 + 24) & 4) == 0;
    if ((*&self->_has & 4) != 0)
    {
      if ((*(a3 + 24) & 4) == 0 || self->_formProperty != *(a3 + 5))
      {
        goto LABEL_16;
      }

      LOBYTE(v5) = 1;
    }
  }

  return v5;
}

- (unint64_t)hash
{
  if ((*&self->_has & 1) == 0)
  {
    v2 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v3 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_4;
    }

LABEL_7:
    v4 = 0;
    return v3 ^ v2 ^ v4;
  }

  v2 = 2654435761u * self->_timestamp;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v3 = 2654435761 * self->_category;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  v4 = 2654435761 * self->_formProperty;
  return v3 ^ v2 ^ v4;
}

- (void)mergeFrom:(id)a3
{
  v3 = *(a3 + 24);
  if (v3)
  {
    self->_timestamp = *(a3 + 1);
    *&self->_has |= 1u;
    v3 = *(a3 + 24);
    if ((v3 & 2) == 0)
    {
LABEL_3:
      if ((v3 & 4) == 0)
      {
        return;
      }

LABEL_7:
      self->_formProperty = *(a3 + 5);
      *&self->_has |= 4u;
      return;
    }
  }

  else if ((*(a3 + 24) & 2) == 0)
  {
    goto LABEL_3;
  }

  self->_category = *(a3 + 4);
  *&self->_has |= 2u;
  if ((*(a3 + 24) & 4) != 0)
  {
    goto LABEL_7;
  }
}

@end