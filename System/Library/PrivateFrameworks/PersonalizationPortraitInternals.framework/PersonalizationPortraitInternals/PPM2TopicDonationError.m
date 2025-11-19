@interface PPM2TopicDonationError
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsReason:(id)a3;
- (int)StringAsSource:(id)a3;
- (int)reason;
- (int)source;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasReason:(BOOL)a3;
- (void)setHasSource:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation PPM2TopicDonationError

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if ((*(v4 + 32) & 2) != 0)
  {
    self->_reason = *(v4 + 6);
    *&self->_has |= 2u;
  }

  if (*(v4 + 2))
  {
    v6 = v4;
    [(PPM2TopicDonationError *)self setActiveTreatments:?];
    v4 = v6;
  }

  v5 = *(v4 + 32);
  if ((v5 & 4) != 0)
  {
    self->_source = *(v4 + 7);
    *&self->_has |= 4u;
    v5 = *(v4 + 32);
  }

  if (v5)
  {
    self->_code = *(v4 + 1);
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_19;
  }

  has = self->_has;
  v6 = *(v4 + 32);
  if ((has & 2) != 0)
  {
    if ((*(v4 + 32) & 2) == 0 || self->_reason != *(v4 + 6))
    {
      goto LABEL_19;
    }
  }

  else if ((*(v4 + 32) & 2) != 0)
  {
    goto LABEL_19;
  }

  activeTreatments = self->_activeTreatments;
  if (activeTreatments | *(v4 + 2))
  {
    if (![(NSString *)activeTreatments isEqual:?])
    {
LABEL_19:
      v8 = 0;
      goto LABEL_20;
    }

    has = self->_has;
    v6 = *(v4 + 32);
  }

  if ((has & 4) != 0)
  {
    if ((v6 & 4) == 0 || self->_source != *(v4 + 7))
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
    if ((v6 & 1) == 0 || self->_code != *(v4 + 1))
    {
      goto LABEL_19;
    }

    v8 = 1;
  }

LABEL_20:

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if ((*&self->_has & 2) != 0)
  {
    *(v5 + 24) = self->_reason;
    *(v5 + 32) |= 2u;
  }

  v7 = [(NSString *)self->_activeTreatments copyWithZone:a3];
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

- (void)copyTo:(id)a3
{
  v4 = a3;
  if ((*&self->_has & 2) != 0)
  {
    v4[6] = self->_reason;
    *(v4 + 32) |= 2u;
  }

  if (self->_activeTreatments)
  {
    v6 = v4;
    [v4 setActiveTreatments:?];
    v4 = v6;
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    v4[7] = self->_source;
    *(v4 + 32) |= 4u;
    has = self->_has;
  }

  if (has)
  {
    *(v4 + 1) = self->_code;
    *(v4 + 32) |= 1u;
  }
}

- (void)writeTo:(id)a3
{
  v8 = a3;
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
  v3 = [MEMORY[0x277CBEB38] dictionary];
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

    [v3 setObject:v5 forKey:@"reason"];
  }

  activeTreatments = self->_activeTreatments;
  if (activeTreatments)
  {
    [v3 setObject:activeTreatments forKey:@"activeTreatments"];
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

    [v3 setObject:v9 forKey:@"source"];

    has = self->_has;
  }

  if (has)
  {
    v10 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_code];
    [v3 setObject:v10 forKey:@"code"];
  }

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = PPM2TopicDonationError;
  v4 = [(PPM2TopicDonationError *)&v8 description];
  v5 = [(PPM2TopicDonationError *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (int)StringAsSource:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Safari"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"News"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"Mail"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"Messages"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"CoreRoutine"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"Siri"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"Photos"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"Health"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"Podcasts"])
  {
    v4 = 8;
  }

  else if ([v3 isEqualToString:@"Calendar"])
  {
    v4 = 9;
  }

  else if ([v3 isEqualToString:@"Parsec"])
  {
    v4 = 10;
  }

  else if ([v3 isEqualToString:@"NowPlaying"])
  {
    v4 = 11;
  }

  else if ([v3 isEqualToString:@"Notes"])
  {
    v4 = 12;
  }

  else if ([v3 isEqualToString:@"Maps"])
  {
    v4 = 13;
  }

  else if ([v3 isEqualToString:@"ContactsSource"])
  {
    v4 = 14;
  }

  else if ([v3 isEqualToString:@"Reminders"])
  {
    v4 = 15;
  }

  else if ([v3 isEqualToString:@"UnknownFirstParty"])
  {
    v4 = 16;
  }

  else if ([v3 isEqualToString:@"UnknownThirdParty"])
  {
    v4 = 17;
  }

  else if ([v3 isEqualToString:@"UnknownSource"])
  {
    v4 = 18;
  }

  else if ([v3 isEqualToString:@"Music"])
  {
    v4 = 19;
  }

  else if ([v3 isEqualToString:@"Wallet"])
  {
    v4 = 20;
  }

  else if ([v3 isEqualToString:@"Facetime"])
  {
    v4 = 21;
  }

  else if ([v3 isEqualToString:@"Camera"])
  {
    v4 = 22;
  }

  else if ([v3 isEqualToString:@"TVRemoteNotifications"])
  {
    v4 = 23;
  }

  else if ([v3 isEqualToString:@"TVApp"])
  {
    v4 = 24;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasSource:(BOOL)a3
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

- (int)StringAsReason:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"ZeroTopic"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"ZeroSafariReader"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"ZeroSafariHTML"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"Context"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"Donation"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"HTML"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"Delete"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"DeleteBlocklist"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"UnknownTopicError"])
  {
    v4 = 8;
  }

  else if ([v3 isEqualToString:@"TopicOverflow"])
  {
    v4 = 9;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasReason:(BOOL)a3
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