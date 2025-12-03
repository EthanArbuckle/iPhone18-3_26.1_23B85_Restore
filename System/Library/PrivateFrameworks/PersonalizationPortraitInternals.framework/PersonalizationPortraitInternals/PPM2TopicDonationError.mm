@interface PPM2TopicDonationError
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsReason:(id)reason;
- (int)StringAsSource:(id)source;
- (int)reason;
- (int)source;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasReason:(BOOL)reason;
- (void)setHasSource:(BOOL)source;
- (void)writeTo:(id)to;
@end

@implementation PPM2TopicDonationError

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if ((*(fromCopy + 32) & 2) != 0)
  {
    self->_reason = *(fromCopy + 6);
    *&self->_has |= 2u;
  }

  if (*(fromCopy + 2))
  {
    v6 = fromCopy;
    [(PPM2TopicDonationError *)self setActiveTreatments:?];
    fromCopy = v6;
  }

  v5 = *(fromCopy + 32);
  if ((v5 & 4) != 0)
  {
    self->_source = *(fromCopy + 7);
    *&self->_has |= 4u;
    v5 = *(fromCopy + 32);
  }

  if (v5)
  {
    self->_code = *(fromCopy + 1);
    *&self->_has |= 1u;
  }
}

- (unint64_t)hash
{
  if ((*&self->_has & 2) != 0)
  {
    v3 = 2654435761 * self->_reason;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSString *)self->_activeTreatments hash];
  if ((*&self->_has & 4) != 0)
  {
    v5 = 2654435761 * self->_source;
    if (*&self->_has)
    {
      goto LABEL_6;
    }

LABEL_8:
    v6 = 0;
    return v4 ^ v3 ^ v5 ^ v6;
  }

  v5 = 0;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_6:
  v6 = 2654435761 * self->_code;
  return v4 ^ v3 ^ v5 ^ v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_19;
  }

  has = self->_has;
  v6 = *(equalCopy + 32);
  if ((has & 2) != 0)
  {
    if ((*(equalCopy + 32) & 2) == 0 || self->_reason != *(equalCopy + 6))
    {
      goto LABEL_19;
    }
  }

  else if ((*(equalCopy + 32) & 2) != 0)
  {
    goto LABEL_19;
  }

  activeTreatments = self->_activeTreatments;
  if (activeTreatments | *(equalCopy + 2))
  {
    if (![(NSString *)activeTreatments isEqual:?])
    {
LABEL_19:
      v8 = 0;
      goto LABEL_20;
    }

    has = self->_has;
    v6 = *(equalCopy + 32);
  }

  if ((has & 4) != 0)
  {
    if ((v6 & 4) == 0 || self->_source != *(equalCopy + 7))
    {
      goto LABEL_19;
    }
  }

  else if ((v6 & 4) != 0)
  {
    goto LABEL_19;
  }

  v8 = (v6 & 1) == 0;
  if (has)
  {
    if ((v6 & 1) == 0 || self->_code != *(equalCopy + 1))
    {
      goto LABEL_19;
    }

    v8 = 1;
  }

LABEL_20:

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if ((*&self->_has & 2) != 0)
  {
    *(v5 + 24) = self->_reason;
    *(v5 + 32) |= 2u;
  }

  v7 = [(NSString *)self->_activeTreatments copyWithZone:zone];
  v8 = *(v6 + 16);
  *(v6 + 16) = v7;

  has = self->_has;
  if ((has & 4) != 0)
  {
    *(v6 + 28) = self->_source;
    *(v6 + 32) |= 4u;
    has = self->_has;
  }

  if (has)
  {
    *(v6 + 8) = self->_code;
    *(v6 + 32) |= 1u;
  }

  return v6;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if ((*&self->_has & 2) != 0)
  {
    toCopy[6] = self->_reason;
    *(toCopy + 32) |= 2u;
  }

  if (self->_activeTreatments)
  {
    v6 = toCopy;
    [toCopy setActiveTreatments:?];
    toCopy = v6;
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    toCopy[7] = self->_source;
    *(toCopy + 32) |= 4u;
    has = self->_has;
  }

  if (has)
  {
    *(toCopy + 1) = self->_code;
    *(toCopy + 32) |= 1u;
  }
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if ((*&self->_has & 2) != 0)
  {
    reason = self->_reason;
    PBDataWriterWriteInt32Field();
  }

  if (self->_activeTreatments)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    source = self->_source;
    PBDataWriterWriteInt32Field();
    has = self->_has;
  }

  if (has)
  {
    code = self->_code;
    PBDataWriterWriteInt64Field();
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if ((*&self->_has & 2) != 0)
  {
    reason = self->_reason;
    if (reason >= 0xA)
    {
      v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_reason];
    }

    else
    {
      v5 = off_278971D40[reason];
    }

    [dictionary setObject:v5 forKey:@"reason"];
  }

  activeTreatments = self->_activeTreatments;
  if (activeTreatments)
  {
    [dictionary setObject:activeTreatments forKey:@"activeTreatments"];
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    source = self->_source;
    if (source >= 0x19)
    {
      v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_source];
    }

    else
    {
      v9 = off_278971D90[source];
    }

    [dictionary setObject:v9 forKey:@"source"];

    has = self->_has;
  }

  if (has)
  {
    v10 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_code];
    [dictionary setObject:v10 forKey:@"code"];
  }

  return dictionary;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = PPM2TopicDonationError;
  v4 = [(PPM2TopicDonationError *)&v8 description];
  dictionaryRepresentation = [(PPM2TopicDonationError *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (int)StringAsSource:(id)source
{
  sourceCopy = source;
  if ([sourceCopy isEqualToString:@"Safari"])
  {
    v4 = 0;
  }

  else if ([sourceCopy isEqualToString:@"News"])
  {
    v4 = 1;
  }

  else if ([sourceCopy isEqualToString:@"Mail"])
  {
    v4 = 2;
  }

  else if ([sourceCopy isEqualToString:@"Messages"])
  {
    v4 = 3;
  }

  else if ([sourceCopy isEqualToString:@"CoreRoutine"])
  {
    v4 = 4;
  }

  else if ([sourceCopy isEqualToString:@"Siri"])
  {
    v4 = 5;
  }

  else if ([sourceCopy isEqualToString:@"Photos"])
  {
    v4 = 6;
  }

  else if ([sourceCopy isEqualToString:@"Health"])
  {
    v4 = 7;
  }

  else if ([sourceCopy isEqualToString:@"Podcasts"])
  {
    v4 = 8;
  }

  else if ([sourceCopy isEqualToString:@"Calendar"])
  {
    v4 = 9;
  }

  else if ([sourceCopy isEqualToString:@"Parsec"])
  {
    v4 = 10;
  }

  else if ([sourceCopy isEqualToString:@"NowPlaying"])
  {
    v4 = 11;
  }

  else if ([sourceCopy isEqualToString:@"Notes"])
  {
    v4 = 12;
  }

  else if ([sourceCopy isEqualToString:@"Maps"])
  {
    v4 = 13;
  }

  else if ([sourceCopy isEqualToString:@"ContactsSource"])
  {
    v4 = 14;
  }

  else if ([sourceCopy isEqualToString:@"Reminders"])
  {
    v4 = 15;
  }

  else if ([sourceCopy isEqualToString:@"UnknownFirstParty"])
  {
    v4 = 16;
  }

  else if ([sourceCopy isEqualToString:@"UnknownThirdParty"])
  {
    v4 = 17;
  }

  else if ([sourceCopy isEqualToString:@"UnknownSource"])
  {
    v4 = 18;
  }

  else if ([sourceCopy isEqualToString:@"Music"])
  {
    v4 = 19;
  }

  else if ([sourceCopy isEqualToString:@"Wallet"])
  {
    v4 = 20;
  }

  else if ([sourceCopy isEqualToString:@"Facetime"])
  {
    v4 = 21;
  }

  else if ([sourceCopy isEqualToString:@"Camera"])
  {
    v4 = 22;
  }

  else if ([sourceCopy isEqualToString:@"TVRemoteNotifications"])
  {
    v4 = 23;
  }

  else if ([sourceCopy isEqualToString:@"TVApp"])
  {
    v4 = 24;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasSource:(BOOL)source
{
  if (source)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (int)source
{
  if ((*&self->_has & 4) != 0)
  {
    return self->_source;
  }

  else
  {
    return 0;
  }
}

- (int)StringAsReason:(id)reason
{
  reasonCopy = reason;
  if ([reasonCopy isEqualToString:@"ZeroTopic"])
  {
    v4 = 0;
  }

  else if ([reasonCopy isEqualToString:@"ZeroSafariReader"])
  {
    v4 = 1;
  }

  else if ([reasonCopy isEqualToString:@"ZeroSafariHTML"])
  {
    v4 = 2;
  }

  else if ([reasonCopy isEqualToString:@"Context"])
  {
    v4 = 3;
  }

  else if ([reasonCopy isEqualToString:@"Donation"])
  {
    v4 = 4;
  }

  else if ([reasonCopy isEqualToString:@"HTML"])
  {
    v4 = 5;
  }

  else if ([reasonCopy isEqualToString:@"Delete"])
  {
    v4 = 6;
  }

  else if ([reasonCopy isEqualToString:@"DeleteBlocklist"])
  {
    v4 = 7;
  }

  else if ([reasonCopy isEqualToString:@"UnknownTopicError"])
  {
    v4 = 8;
  }

  else if ([reasonCopy isEqualToString:@"TopicOverflow"])
  {
    v4 = 9;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasReason:(BOOL)reason
{
  if (reason)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (int)reason
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_reason;
  }

  else
  {
    return 0;
  }
}

@end