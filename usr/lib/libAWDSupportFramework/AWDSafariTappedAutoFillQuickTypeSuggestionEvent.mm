@interface AWDSafariTappedAutoFillQuickTypeSuggestionEvent
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsCategory:(id)category;
- (int)StringAsFormProperty:(id)property;
- (int)category;
- (int)formProperty;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasCategory:(BOOL)category;
- (void)setHasFormProperty:(BOOL)property;
- (void)writeTo:(id)to;
@end

@implementation AWDSafariTappedAutoFillQuickTypeSuggestionEvent

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

- (void)setHasCategory:(BOOL)category
{
  if (category)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (int)StringAsCategory:(id)category
{
  if ([category isEqualToString:@"CREDIT_CARD"])
  {
    return 0;
  }

  if ([category isEqualToString:@"PASSWORD"])
  {
    return 1;
  }

  if ([category isEqualToString:@"CONTACT"])
  {
    return 2;
  }

  if ([category isEqualToString:@"UNKNOWN_CATEGORY"])
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

- (void)setHasFormProperty:(BOOL)property
{
  if (property)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (int)StringAsFormProperty:(id)property
{
  if ([property isEqualToString:@"FIRST_NAME"])
  {
    return 0;
  }

  if ([property isEqualToString:@"LAST_NAME"])
  {
    return 1;
  }

  if ([property isEqualToString:@"FULL_NAME"])
  {
    return 2;
  }

  if ([property isEqualToString:@"BIRTHDAY"])
  {
    return 3;
  }

  if ([property isEqualToString:@"EMAIL"])
  {
    return 4;
  }

  if ([property isEqualToString:@"PHONE_NUMBER"])
  {
    return 5;
  }

  if ([property isEqualToString:@"ADDRESS"])
  {
    return 6;
  }

  if ([property isEqualToString:@"INSTANT_MESSAGE"])
  {
    return 7;
  }

  if ([property isEqualToString:@"ORGANIZATION"])
  {
    return 8;
  }

  if ([property isEqualToString:@"LOGIN_CREDENTIAL"])
  {
    return 9;
  }

  if ([property isEqualToString:@"CREDIT_CARD_FORM"])
  {
    return 10;
  }

  if ([property isEqualToString:@"UNKNOWN_PROPERTY"])
  {
    return 11;
  }

  return 0;
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDSafariTappedAutoFillQuickTypeSuggestionEvent;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDSafariTappedAutoFillQuickTypeSuggestionEvent description](&v3, sel_description), -[AWDSafariTappedAutoFillQuickTypeSuggestionEvent dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  has = self->_has;
  if (has)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        return dictionary;
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
    v6 = off_29EE32EB0[category];
  }

  [dictionary setObject:v6 forKey:@"category"];
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
      v8 = off_29EE32ED0[formProperty];
    }

    [dictionary setObject:v8 forKey:@"formProperty"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
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

- (void)copyTo:(id)to
{
  has = self->_has;
  if (has)
  {
    *(to + 1) = self->_timestamp;
    *(to + 24) |= 1u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        return;
      }

LABEL_7:
      *(to + 5) = self->_formProperty;
      *(to + 24) |= 4u;
      return;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  *(to + 4) = self->_category;
  *(to + 24) |= 2u;
  if ((*&self->_has & 4) != 0)
  {
    goto LABEL_7;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
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

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    if (*&self->_has)
    {
      if ((*(equal + 24) & 1) == 0 || self->_timestamp != *(equal + 1))
      {
        goto LABEL_16;
      }
    }

    else if (*(equal + 24))
    {
LABEL_16:
      LOBYTE(v5) = 0;
      return v5;
    }

    if ((*&self->_has & 2) != 0)
    {
      if ((*(equal + 24) & 2) == 0 || self->_category != *(equal + 4))
      {
        goto LABEL_16;
      }
    }

    else if ((*(equal + 24) & 2) != 0)
    {
      goto LABEL_16;
    }

    LOBYTE(v5) = (*(equal + 24) & 4) == 0;
    if ((*&self->_has & 4) != 0)
    {
      if ((*(equal + 24) & 4) == 0 || self->_formProperty != *(equal + 5))
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

- (void)mergeFrom:(id)from
{
  v3 = *(from + 24);
  if (v3)
  {
    self->_timestamp = *(from + 1);
    *&self->_has |= 1u;
    v3 = *(from + 24);
    if ((v3 & 2) == 0)
    {
LABEL_3:
      if ((v3 & 4) == 0)
      {
        return;
      }

LABEL_7:
      self->_formProperty = *(from + 5);
      *&self->_has |= 4u;
      return;
    }
  }

  else if ((*(from + 24) & 2) == 0)
  {
    goto LABEL_3;
  }

  self->_category = *(from + 4);
  *&self->_has |= 2u;
  if ((*(from + 24) & 4) != 0)
  {
    goto LABEL_7;
  }
}

@end