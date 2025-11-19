@interface PPM2ObjectsDeleted
+ (id)options;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsDomain:(id)a3;
- (int)StringAsDonationSource:(id)a3;
- (int)domain;
- (int)donationSource;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasDonationSource:(BOOL)a3;
- (void)setHasError:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation PPM2ObjectsDeleted

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 20);
  if (v5)
  {
    self->_domain = *(v4 + 2);
    *&self->_has |= 1u;
    v5 = *(v4 + 20);
    if ((v5 & 4) == 0)
    {
LABEL_3:
      if ((v5 & 2) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*(v4 + 20) & 4) == 0)
  {
    goto LABEL_3;
  }

  self->_error = *(v4 + 16);
  *&self->_has |= 4u;
  if ((*(v4 + 20) & 2) != 0)
  {
LABEL_4:
    self->_donationSource = *(v4 + 3);
    *&self->_has |= 2u;
  }

LABEL_5:
}

- (unint64_t)hash
{
  if ((*&self->_has & 1) == 0)
  {
    v2 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v3 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_4;
    }

LABEL_7:
    v4 = 0;
    return v3 ^ v2 ^ v4;
  }

  v2 = 2654435761 * self->_domain;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v3 = 2654435761 * self->_error;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  v4 = 2654435761 * self->_donationSource;
  return v3 ^ v2 ^ v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_14;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 20) & 1) == 0 || self->_domain != *(v4 + 2))
    {
      goto LABEL_14;
    }
  }

  else if (*(v4 + 20))
  {
    goto LABEL_14;
  }

  if ((*&self->_has & 4) == 0)
  {
    if ((*(v4 + 20) & 4) == 0)
    {
      goto LABEL_9;
    }

LABEL_14:
    v5 = 0;
    goto LABEL_15;
  }

  if ((*(v4 + 20) & 4) == 0)
  {
    goto LABEL_14;
  }

  v7 = *(v4 + 16);
  if (self->_error)
  {
    if ((*(v4 + 16) & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  else if (*(v4 + 16))
  {
    goto LABEL_14;
  }

LABEL_9:
  v5 = (*(v4 + 20) & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 20) & 2) == 0 || self->_donationSource != *(v4 + 3))
    {
      goto LABEL_14;
    }

    v5 = 1;
  }

LABEL_15:

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  has = self->_has;
  if (has)
  {
    *(result + 2) = self->_domain;
    *(result + 20) |= 1u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        return result;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  *(result + 16) = self->_error;
  *(result + 20) |= 4u;
  if ((*&self->_has & 2) == 0)
  {
    return result;
  }

LABEL_4:
  *(result + 3) = self->_donationSource;
  *(result + 20) |= 2u;
  return result;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if (has)
  {
    v4[2] = self->_domain;
    *(v4 + 20) |= 1u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  *(v4 + 16) = self->_error;
  *(v4 + 20) |= 4u;
  if ((*&self->_has & 2) != 0)
  {
LABEL_4:
    v4[3] = self->_donationSource;
    *(v4 + 20) |= 2u;
  }

LABEL_5:
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  v9 = v4;
  if (has)
  {
    domain = self->_domain;
    PBDataWriterWriteInt32Field();
    v4 = v9;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  error = self->_error;
  PBDataWriterWriteBOOLField();
  v4 = v9;
  if ((*&self->_has & 2) != 0)
  {
LABEL_4:
    donationSource = self->_donationSource;
    PBDataWriterWriteInt32Field();
    v4 = v9;
  }

LABEL_5:
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if ((has & 1) == 0)
  {
    if ((*&self->_has & 4) == 0)
    {
      goto LABEL_3;
    }

LABEL_9:
    v7 = [MEMORY[0x277CCABB0] numberWithBool:self->_error];
    [v3 setObject:v7 forKey:@"error"];

    if ((*&self->_has & 2) == 0)
    {
      goto LABEL_14;
    }

LABEL_10:
    donationSource = self->_donationSource;
    if (donationSource >= 0x19)
    {
      v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_donationSource];
    }

    else
    {
      v9 = off_278977D38[donationSource];
    }

    [v3 setObject:v9 forKey:@"donationSource"];

    goto LABEL_14;
  }

  domain = self->_domain;
  if (domain >= 8)
  {
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_domain];
  }

  else
  {
    v6 = off_278977CF8[domain];
  }

  [v3 setObject:v6 forKey:@"domain"];

  has = self->_has;
  if ((has & 4) != 0)
  {
    goto LABEL_9;
  }

LABEL_3:
  if ((has & 2) != 0)
  {
    goto LABEL_10;
  }

LABEL_14:

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = PPM2ObjectsDeleted;
  v4 = [(PPM2ObjectsDeleted *)&v8 description];
  v5 = [(PPM2ObjectsDeleted *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (int)StringAsDonationSource:(id)a3
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

- (void)setHasDonationSource:(BOOL)a3
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

- (int)donationSource
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_donationSource;
  }

  else
  {
    return 0;
  }
}

- (void)setHasError:(BOOL)a3
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

- (int)StringAsDomain:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Topics"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"NamedEntities"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"Locations"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"Events"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"ContactsDomain"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"Connections"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"QuickTypeBroker"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"UniversalSearchSpotlightTopics"])
  {
    v4 = 7;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)domain
{
  if (*&self->_has)
  {
    return self->_domain;
  }

  else
  {
    return 0;
  }
}

+ (id)options
{
  if (options_once_22088 != -1)
  {
    dispatch_once(&options_once_22088, &__block_literal_global_22089);
  }

  v3 = options_sOptions_22090;

  return v3;
}

void __29__PPM2ObjectsDeleted_options__block_invoke()
{
  v0 = options_sOptions_22090;
  options_sOptions_22090 = &unk_284786018;
}

@end