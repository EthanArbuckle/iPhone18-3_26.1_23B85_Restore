@interface AWDSafariSafeBrowsingWarningShownEvent
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsProvider:(id)provider;
- (int)provider;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasProvider:(BOOL)provider;
- (void)writeTo:(id)to;
@end

@implementation AWDSafariSafeBrowsingWarningShownEvent

- (int)provider
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_provider;
  }

  else
  {
    return 0;
  }
}

- (void)setHasProvider:(BOOL)provider
{
  if (provider)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (int)StringAsProvider:(id)provider
{
  if ([provider isEqualToString:@"GOOGLE"])
  {
    return 0;
  }

  if ([provider isEqualToString:@"OTHER"])
  {
    return 1;
  }

  if ([provider isEqualToString:@"SAFARI"])
  {
    return 2;
  }

  if ([provider isEqualToString:@"MULTIPLE"])
  {
    return 3;
  }

  if ([provider isEqualToString:@"SAFARI_EXTENSION"])
  {
    return 4;
  }

  return 0;
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDSafariSafeBrowsingWarningShownEvent;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDSafariSafeBrowsingWarningShownEvent description](&v3, sel_description), -[AWDSafariSafeBrowsingWarningShownEvent dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  has = self->_has;
  if (has)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    provider = self->_provider;
    if (provider >= 5)
    {
      v6 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"(unknown: %i)", self->_provider];
    }

    else
    {
      v6 = off_29EE32D98[provider];
    }

    [dictionary setObject:v6 forKey:@"provider"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  has = self->_has;
  if (has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    provider = self->_provider;

    PBDataWriterWriteInt32Field();
  }
}

- (void)copyTo:(id)to
{
  if ((*&self->_has & 1) == 0)
  {
    if ((*&self->_has & 2) == 0)
    {
      return;
    }

LABEL_5:
    *(to + 4) = self->_provider;
    *(to + 20) |= 2u;
    return;
  }

  *(to + 1) = self->_timestamp;
  *(to + 20) |= 1u;
  if ((*&self->_has & 2) != 0)
  {
    goto LABEL_5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  has = self->_has;
  if (has)
  {
    *(result + 1) = self->_timestamp;
    *(result + 20) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(result + 4) = self->_provider;
    *(result + 20) |= 2u;
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    if (*&self->_has)
    {
      if ((*(equal + 20) & 1) == 0 || self->_timestamp != *(equal + 1))
      {
        goto LABEL_11;
      }
    }

    else if (*(equal + 20))
    {
LABEL_11:
      LOBYTE(v5) = 0;
      return v5;
    }

    LOBYTE(v5) = (*(equal + 20) & 2) == 0;
    if ((*&self->_has & 2) != 0)
    {
      if ((*(equal + 20) & 2) == 0 || self->_provider != *(equal + 4))
      {
        goto LABEL_11;
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
    v2 = 2654435761u * self->_timestamp;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v3 = 0;
    return v3 ^ v2;
  }

  v2 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v3 = 2654435761 * self->_provider;
  return v3 ^ v2;
}

- (void)mergeFrom:(id)from
{
  if ((*(from + 20) & 1) == 0)
  {
    if ((*(from + 20) & 2) == 0)
    {
      return;
    }

LABEL_5:
    self->_provider = *(from + 4);
    *&self->_has |= 2u;
    return;
  }

  self->_timestamp = *(from + 1);
  *&self->_has |= 1u;
  if ((*(from + 20) & 2) != 0)
  {
    goto LABEL_5;
  }
}

@end