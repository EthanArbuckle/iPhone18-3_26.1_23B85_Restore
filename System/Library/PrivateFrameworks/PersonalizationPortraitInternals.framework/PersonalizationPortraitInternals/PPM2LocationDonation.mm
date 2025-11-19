@interface PPM2LocationDonation
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsDonationSource:(id)a3;
- (int)donationSource;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation PPM2LocationDonation

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (v4[8])
  {
    self->_donationSource = v4[4];
    *&self->_has |= 1u;
  }

  v5 = v4;
  if (*(v4 + 3))
  {
    [(PPM2LocationDonation *)self setGroupId:?];
    v4 = v5;
  }

  if (*(v4 + 1))
  {
    [(PPM2LocationDonation *)self setActiveTreatments:?];
    v4 = v5;
  }
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_donationSource;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSString *)self->_groupId hash]^ v3;
  return v4 ^ [(NSString *)self->_activeTreatments hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_11;
  }

  v5 = *(v4 + 32);
  if (*&self->_has)
  {
    if ((*(v4 + 32) & 1) == 0 || self->_donationSource != *(v4 + 4))
    {
      goto LABEL_11;
    }
  }

  else if (*(v4 + 32))
  {
LABEL_11:
    v8 = 0;
    goto LABEL_12;
  }

  groupId = self->_groupId;
  if (groupId | *(v4 + 3) && ![(NSString *)groupId isEqual:?])
  {
    goto LABEL_11;
  }

  activeTreatments = self->_activeTreatments;
  if (activeTreatments | *(v4 + 1))
  {
    v8 = [(NSString *)activeTreatments isEqual:?];
  }

  else
  {
    v8 = 1;
  }

LABEL_12:

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 16) = self->_donationSource;
    *(v5 + 32) |= 1u;
  }

  v7 = [(NSString *)self->_groupId copyWithZone:a3];
  v8 = v6[3];
  v6[3] = v7;

  v9 = [(NSString *)self->_activeTreatments copyWithZone:a3];
  v10 = v6[1];
  v6[1] = v9;

  return v6;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (*&self->_has)
  {
    v4[4] = self->_donationSource;
    *(v4 + 32) |= 1u;
  }

  v5 = v4;
  if (self->_groupId)
  {
    [v4 setGroupId:?];
    v4 = v5;
  }

  if (self->_activeTreatments)
  {
    [v5 setActiveTreatments:?];
    v4 = v5;
  }
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (*&self->_has)
  {
    donationSource = self->_donationSource;
    PBDataWriterWriteInt32Field();
    v4 = v6;
  }

  if (self->_groupId)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_activeTreatments)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  if (*&self->_has)
  {
    donationSource = self->_donationSource;
    if (donationSource >= 0x19)
    {
      v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_donationSource];
    }

    else
    {
      v5 = off_278975610[donationSource];
    }

    [v3 setObject:v5 forKey:@"donationSource"];
  }

  groupId = self->_groupId;
  if (groupId)
  {
    [v3 setObject:groupId forKey:@"groupId"];
  }

  activeTreatments = self->_activeTreatments;
  if (activeTreatments)
  {
    [v3 setObject:activeTreatments forKey:@"activeTreatments"];
  }

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = PPM2LocationDonation;
  v4 = [(PPM2LocationDonation *)&v8 description];
  v5 = [(PPM2LocationDonation *)self dictionaryRepresentation];
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

- (int)donationSource
{
  if (*&self->_has)
  {
    return self->_donationSource;
  }

  else
  {
    return 0;
  }
}

@end