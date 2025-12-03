@interface AWDSafariAutoFillAuthenticationPreferenceEvent
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasRequiresAuthentication:(BOOL)authentication;
- (void)writeTo:(id)to;
@end

@implementation AWDSafariAutoFillAuthenticationPreferenceEvent

- (void)setHasRequiresAuthentication:(BOOL)authentication
{
  if (authentication)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDSafariAutoFillAuthenticationPreferenceEvent;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDSafariAutoFillAuthenticationPreferenceEvent description](&v3, sel_description), -[AWDSafariAutoFillAuthenticationPreferenceEvent dictionaryRepresentation](self, "dictionaryRepresentation")];
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
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_requiresAuthentication), @"requiresAuthentication"}];
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
    requiresAuthentication = self->_requiresAuthentication;

    PBDataWriterWriteBOOLField();
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
    *(to + 16) = self->_requiresAuthentication;
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
    *(result + 16) = self->_requiresAuthentication;
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
        goto LABEL_9;
      }
    }

    else if (*(equal + 20))
    {
      goto LABEL_9;
    }

    LOBYTE(v5) = (*(equal + 20) & 2) == 0;
    if ((*&self->_has & 2) != 0)
    {
      if ((*(equal + 20) & 2) == 0)
      {
LABEL_9:
        LOBYTE(v5) = 0;
        return v5;
      }

      if (self->_requiresAuthentication)
      {
        if ((*(equal + 16) & 1) == 0)
        {
          goto LABEL_9;
        }
      }

      else if (*(equal + 16))
      {
        goto LABEL_9;
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
  v3 = 2654435761 * self->_requiresAuthentication;
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
    self->_requiresAuthentication = *(from + 16);
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