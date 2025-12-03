@interface AWDSafariAutoFillAuthenticationEvent
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsCategory:(id)category;
- (int)StringAsClient:(id)client;
- (int)StringAsStatus:(id)status;
- (int)category;
- (int)client;
- (int)status;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)setHasCategory:(BOOL)category;
- (void)setHasClient:(BOOL)client;
- (void)setHasOnPageLoad:(BOOL)load;
- (void)setHasStatus:(BOOL)status;
- (void)writeTo:(id)to;
@end

@implementation AWDSafariAutoFillAuthenticationEvent

- (void)dealloc
{
  [(AWDSafariAutoFillAuthenticationEvent *)self setErrorDomain:0];
  [(AWDSafariAutoFillAuthenticationEvent *)self setErrorCode:0];
  v3.receiver = self;
  v3.super_class = AWDSafariAutoFillAuthenticationEvent;
  [(AWDSafariAutoFillAuthenticationEvent *)&v3 dealloc];
}

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

- (int)status
{
  if ((*&self->_has & 8) != 0)
  {
    return self->_status;
  }

  else
  {
    return 0;
  }
}

- (void)setHasStatus:(BOOL)status
{
  if (status)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (int)StringAsStatus:(id)status
{
  if ([status isEqualToString:@"SUCCESSFUL_AUTHENTICATION"])
  {
    return 0;
  }

  if ([status isEqualToString:@"FAILED_AUTHENTICATION"])
  {
    return 1;
  }

  if ([status isEqualToString:@"HAS_CACHED_SUCCESSFUL_AUTHENTICATION"])
  {
    return 2;
  }

  if ([status isEqualToString:@"HAS_CACHED_FAILED_AUTHENTICATION"])
  {
    return 3;
  }

  return 0;
}

- (int)client
{
  if ((*&self->_has & 4) != 0)
  {
    return self->_client;
  }

  else
  {
    return 0;
  }
}

- (void)setHasClient:(BOOL)client
{
  if (client)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (int)StringAsClient:(id)client
{
  if ([client isEqualToString:@"SAFARI_CLIENT"])
  {
    return 0;
  }

  if ([client isEqualToString:@"SAFARI_VIEW_CONTROLLER"])
  {
    return 1;
  }

  if ([client isEqualToString:@"SF_AUTHENTICATION_SESSION"])
  {
    return 2;
  }

  if ([client isEqualToString:@"WEB_APP"])
  {
    return 3;
  }

  if ([client isEqualToString:@"APP_AUTOFILL"])
  {
    return 4;
  }

  if ([client isEqualToString:@"WEB_SHEET"])
  {
    return 5;
  }

  if ([client isEqualToString:@"SHARED_WEB_CREDENTIALS"])
  {
    return 6;
  }

  if ([client isEqualToString:@"DATA_ACTIVATION"])
  {
    return 7;
  }

  if ([client isEqualToString:@"UNKNOWN_CLIENT"])
  {
    return 8;
  }

  return 0;
}

- (void)setHasOnPageLoad:(BOOL)load
{
  if (load)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDSafariAutoFillAuthenticationEvent;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDSafariAutoFillAuthenticationEvent description](&v3, sel_description), -[AWDSafariAutoFillAuthenticationEvent dictionaryRepresentation](self, "dictionaryRepresentation")];
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
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  category = self->_category;
  if (category >= 4)
  {
    v9 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"(unknown: %i)", self->_category];
  }

  else
  {
    v9 = off_29EE32C40[category];
  }

  [dictionary setObject:v9 forKey:@"category"];
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_21;
  }

LABEL_17:
  status = self->_status;
  if (status >= 4)
  {
    v11 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"(unknown: %i)", self->_status];
  }

  else
  {
    v11 = off_29EE32C60[status];
  }

  [dictionary setObject:v11 forKey:@"status"];
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_5:
    if ((has & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_21:
  client = self->_client;
  if (client >= 9)
  {
    v13 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"(unknown: %i)", self->_client];
  }

  else
  {
    v13 = off_29EE32C80[client];
  }

  [dictionary setObject:v13 forKey:@"client"];
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_6:
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_onPageLoad), @"onPageLoad"}];
  }

LABEL_7:
  errorDomain = self->_errorDomain;
  if (errorDomain)
  {
    [dictionary setObject:errorDomain forKey:@"errorDomain"];
  }

  errorCode = self->_errorCode;
  if (errorCode)
  {
    [dictionary setObject:errorCode forKey:@"errorCode"];
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
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  category = self->_category;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_15:
  status = self->_status;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_5:
    if ((has & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_16:
  client = self->_client;
  PBDataWriterWriteInt32Field();
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_6:
    onPageLoad = self->_onPageLoad;
    PBDataWriterWriteBOOLField();
  }

LABEL_7:
  if (self->_errorDomain)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_errorCode)
  {

    PBDataWriterWriteStringField();
  }
}

- (void)copyTo:(id)to
{
  has = self->_has;
  if (has)
  {
    *(to + 1) = self->_timestamp;
    *(to + 48) |= 1u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  *(to + 4) = self->_category;
  *(to + 48) |= 2u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_15:
  *(to + 10) = self->_status;
  *(to + 48) |= 8u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_5:
    if ((has & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_16:
  *(to + 5) = self->_client;
  *(to + 48) |= 4u;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_6:
    *(to + 44) = self->_onPageLoad;
    *(to + 48) |= 0x10u;
  }

LABEL_7:
  if (self->_errorDomain)
  {
    [to setErrorDomain:?];
  }

  if (self->_errorCode)
  {

    [to setErrorCode:?];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  has = self->_has;
  if (has)
  {
    *(v5 + 8) = self->_timestamp;
    *(v5 + 48) |= 1u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 16) = self->_category;
  *(v5 + 48) |= 2u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 4) == 0)
    {
      goto LABEL_5;
    }

LABEL_11:
    *(v5 + 20) = self->_client;
    *(v5 + 48) |= 4u;
    if ((*&self->_has & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_10:
  *(v5 + 40) = self->_status;
  *(v5 + 48) |= 8u;
  has = self->_has;
  if ((has & 4) != 0)
  {
    goto LABEL_11;
  }

LABEL_5:
  if ((has & 0x10) != 0)
  {
LABEL_6:
    *(v5 + 44) = self->_onPageLoad;
    *(v5 + 48) |= 0x10u;
  }

LABEL_7:

  *(v6 + 32) = [(NSString *)self->_errorDomain copyWithZone:zone];
  *(v6 + 24) = [(NSString *)self->_errorCode copyWithZone:zone];
  return v6;
}

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (!v5)
  {
    return v5;
  }

  v6 = *(equal + 48);
  if (*&self->_has)
  {
    if ((*(equal + 48) & 1) == 0 || self->_timestamp != *(equal + 1))
    {
      goto LABEL_29;
    }
  }

  else if (*(equal + 48))
  {
    goto LABEL_29;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equal + 48) & 2) == 0 || self->_category != *(equal + 4))
    {
      goto LABEL_29;
    }
  }

  else if ((*(equal + 48) & 2) != 0)
  {
    goto LABEL_29;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(equal + 48) & 8) == 0 || self->_status != *(equal + 10))
    {
      goto LABEL_29;
    }
  }

  else if ((*(equal + 48) & 8) != 0)
  {
    goto LABEL_29;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(equal + 48) & 4) == 0 || self->_client != *(equal + 5))
    {
      goto LABEL_29;
    }
  }

  else if ((*(equal + 48) & 4) != 0)
  {
    goto LABEL_29;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    if ((*(equal + 48) & 0x10) != 0)
    {
      v9 = *(equal + 44);
      if (self->_onPageLoad)
      {
        if ((*(equal + 44) & 1) == 0)
        {
          goto LABEL_29;
        }
      }

      else if (*(equal + 44))
      {
        goto LABEL_29;
      }

      goto LABEL_24;
    }

LABEL_29:
    LOBYTE(v5) = 0;
    return v5;
  }

  if ((*(equal + 48) & 0x10) != 0)
  {
    goto LABEL_29;
  }

LABEL_24:
  errorDomain = self->_errorDomain;
  if (!(errorDomain | *(equal + 4)) || (v5 = [(NSString *)errorDomain isEqual:?]) != 0)
  {
    errorCode = self->_errorCode;
    if (errorCode | *(equal + 3))
    {

      LOBYTE(v5) = [(NSString *)errorCode isEqual:?];
    }

    else
    {
      LOBYTE(v5) = 1;
    }
  }

  return v5;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761u * self->_timestamp;
    if ((*&self->_has & 2) != 0)
    {
LABEL_3:
      v4 = 2654435761 * self->_category;
      if ((*&self->_has & 8) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v3 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  v4 = 0;
  if ((*&self->_has & 8) != 0)
  {
LABEL_4:
    v5 = 2654435761 * self->_status;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    v6 = 0;
    if ((*&self->_has & 0x10) != 0)
    {
      goto LABEL_6;
    }

LABEL_11:
    v7 = 0;
    goto LABEL_12;
  }

LABEL_9:
  v5 = 0;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  v6 = 2654435761 * self->_client;
  if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_11;
  }

LABEL_6:
  v7 = 2654435761 * self->_onPageLoad;
LABEL_12:
  v8 = v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ [(NSString *)self->_errorDomain hash];
  return v8 ^ [(NSString *)self->_errorCode hash];
}

- (void)mergeFrom:(id)from
{
  v5 = *(from + 48);
  if (v5)
  {
    self->_timestamp = *(from + 1);
    *&self->_has |= 1u;
    v5 = *(from + 48);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if ((*(from + 48) & 2) == 0)
  {
    goto LABEL_3;
  }

  self->_category = *(from + 4);
  *&self->_has |= 2u;
  v5 = *(from + 48);
  if ((v5 & 8) == 0)
  {
LABEL_4:
    if ((v5 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_15:
  self->_status = *(from + 10);
  *&self->_has |= 8u;
  v5 = *(from + 48);
  if ((v5 & 4) == 0)
  {
LABEL_5:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_16:
  self->_client = *(from + 5);
  *&self->_has |= 4u;
  if ((*(from + 48) & 0x10) != 0)
  {
LABEL_6:
    self->_onPageLoad = *(from + 44);
    *&self->_has |= 0x10u;
  }

LABEL_7:
  if (*(from + 4))
  {
    [(AWDSafariAutoFillAuthenticationEvent *)self setErrorDomain:?];
  }

  if (*(from + 3))
  {

    [(AWDSafariAutoFillAuthenticationEvent *)self setErrorCode:?];
  }
}

@end