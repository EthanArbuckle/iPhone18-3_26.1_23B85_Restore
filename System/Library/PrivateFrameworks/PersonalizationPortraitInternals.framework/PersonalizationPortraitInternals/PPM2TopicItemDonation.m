@interface PPM2TopicItemDonation
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsAlgorithm:(id)a3;
- (int)StringAsDonationSource:(id)a3;
- (int)algorithm;
- (int)donationSource;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasAlgorithm:(BOOL)a3;
- (void)setHasDonationSource:(BOOL)a3;
- (void)setHasNewItem:(BOOL)a3;
- (void)setHasUserCreated:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation PPM2TopicItemDonation

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if ((*(v4 + 44) & 4) != 0)
  {
    self->_donationSource = *(v4 + 7);
    *&self->_has |= 4u;
  }

  v7 = v4;
  if (*(v4 + 4))
  {
    [(PPM2TopicItemDonation *)self setGroupId:?];
    v4 = v7;
  }

  v5 = *(v4 + 44);
  if ((v5 & 8) != 0)
  {
    self->_newItem = *(v4 + 40);
    *&self->_has |= 8u;
    v5 = *(v4 + 44);
  }

  if ((v5 & 2) != 0)
  {
    self->_algorithm = *(v4 + 6);
    *&self->_has |= 2u;
  }

  if (*(v4 + 2))
  {
    [(PPM2TopicItemDonation *)self setActiveTreatments:?];
    v4 = v7;
  }

  v6 = *(v4 + 44);
  if ((v6 & 0x10) != 0)
  {
    self->_userCreated = *(v4 + 41);
    *&self->_has |= 0x10u;
    v6 = *(v4 + 44);
  }

  if (v6)
  {
    self->_rank = *(v4 + 1);
    *&self->_has |= 1u;
  }
}

- (unint64_t)hash
{
  if ((*&self->_has & 4) != 0)
  {
    v3 = 2654435761 * self->_donationSource;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSString *)self->_groupId hash];
  if ((*&self->_has & 8) != 0)
  {
    v5 = 2654435761 * self->_newItem;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v5 = 0;
    if ((*&self->_has & 2) != 0)
    {
LABEL_6:
      v6 = 2654435761 * self->_algorithm;
      goto LABEL_9;
    }
  }

  v6 = 0;
LABEL_9:
  v7 = [(NSString *)self->_activeTreatments hash];
  if ((*&self->_has & 0x10) != 0)
  {
    v8 = 2654435761 * self->_userCreated;
    if (*&self->_has)
    {
      goto LABEL_11;
    }

LABEL_13:
    v9 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9;
  }

  v8 = 0;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_11:
  v9 = 2654435761 * self->_rank;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_33;
  }

  has = self->_has;
  v6 = *(v4 + 44);
  if ((has & 4) != 0)
  {
    if ((*(v4 + 44) & 4) == 0 || self->_donationSource != *(v4 + 7))
    {
      goto LABEL_33;
    }
  }

  else if ((*(v4 + 44) & 4) != 0)
  {
    goto LABEL_33;
  }

  groupId = self->_groupId;
  if (groupId | *(v4 + 4))
  {
    if (![(NSString *)groupId isEqual:?])
    {
      goto LABEL_33;
    }

    has = self->_has;
    v6 = *(v4 + 44);
  }

  if ((has & 8) != 0)
  {
    if ((v6 & 8) == 0)
    {
      goto LABEL_33;
    }

    v8 = *(v4 + 40);
    if (self->_newItem)
    {
      if ((*(v4 + 40) & 1) == 0)
      {
        goto LABEL_33;
      }
    }

    else if (*(v4 + 40))
    {
      goto LABEL_33;
    }
  }

  else if ((v6 & 8) != 0)
  {
    goto LABEL_33;
  }

  if ((has & 2) != 0)
  {
    if ((v6 & 2) == 0 || self->_algorithm != *(v4 + 6))
    {
      goto LABEL_33;
    }
  }

  else if ((v6 & 2) != 0)
  {
    goto LABEL_33;
  }

  activeTreatments = self->_activeTreatments;
  if (activeTreatments | *(v4 + 2))
  {
    if (![(NSString *)activeTreatments isEqual:?])
    {
      goto LABEL_33;
    }

    has = self->_has;
    v6 = *(v4 + 44);
  }

  if ((has & 0x10) == 0)
  {
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_26;
    }

LABEL_33:
    v10 = 0;
    goto LABEL_34;
  }

  if ((v6 & 0x10) == 0)
  {
    goto LABEL_33;
  }

  v12 = *(v4 + 41);
  if (self->_userCreated)
  {
    if ((*(v4 + 41) & 1) == 0)
    {
      goto LABEL_33;
    }
  }

  else if (*(v4 + 41))
  {
    goto LABEL_33;
  }

LABEL_26:
  v10 = (v6 & 1) == 0;
  if (has)
  {
    if ((v6 & 1) == 0 || self->_rank != *(v4 + 1))
    {
      goto LABEL_33;
    }

    v10 = 1;
  }

LABEL_34:

  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if ((*&self->_has & 4) != 0)
  {
    *(v5 + 28) = self->_donationSource;
    *(v5 + 44) |= 4u;
  }

  v7 = [(NSString *)self->_groupId copyWithZone:a3];
  v8 = *(v6 + 32);
  *(v6 + 32) = v7;

  has = self->_has;
  if ((has & 8) != 0)
  {
    *(v6 + 40) = self->_newItem;
    *(v6 + 44) |= 8u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v6 + 24) = self->_algorithm;
    *(v6 + 44) |= 2u;
  }

  v10 = [(NSString *)self->_activeTreatments copyWithZone:a3];
  v11 = *(v6 + 16);
  *(v6 + 16) = v10;

  v12 = self->_has;
  if ((v12 & 0x10) != 0)
  {
    *(v6 + 41) = self->_userCreated;
    *(v6 + 44) |= 0x10u;
    v12 = self->_has;
  }

  if (v12)
  {
    *(v6 + 8) = self->_rank;
    *(v6 + 44) |= 1u;
  }

  return v6;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if ((*&self->_has & 4) != 0)
  {
    v4[7] = self->_donationSource;
    *(v4 + 44) |= 4u;
  }

  v7 = v4;
  if (self->_groupId)
  {
    [v4 setGroupId:?];
    v4 = v7;
  }

  has = self->_has;
  if ((has & 8) != 0)
  {
    *(v4 + 40) = self->_newItem;
    *(v4 + 44) |= 8u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v4[6] = self->_algorithm;
    *(v4 + 44) |= 2u;
  }

  if (self->_activeTreatments)
  {
    [v7 setActiveTreatments:?];
    v4 = v7;
  }

  v6 = self->_has;
  if ((v6 & 0x10) != 0)
  {
    *(v4 + 41) = self->_userCreated;
    *(v4 + 44) |= 0x10u;
    v6 = self->_has;
  }

  if (v6)
  {
    *(v4 + 1) = self->_rank;
    *(v4 + 44) |= 1u;
  }
}

- (void)writeTo:(id)a3
{
  v11 = a3;
  if ((*&self->_has & 4) != 0)
  {
    donationSource = self->_donationSource;
    PBDataWriterWriteInt32Field();
  }

  if (self->_groupId)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if ((has & 8) != 0)
  {
    newItem = self->_newItem;
    PBDataWriterWriteBOOLField();
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    algorithm = self->_algorithm;
    PBDataWriterWriteInt32Field();
  }

  if (self->_activeTreatments)
  {
    PBDataWriterWriteStringField();
  }

  v8 = self->_has;
  if ((v8 & 0x10) != 0)
  {
    userCreated = self->_userCreated;
    PBDataWriterWriteBOOLField();
    v8 = self->_has;
  }

  if (v8)
  {
    rank = self->_rank;
    PBDataWriterWriteInt64Field();
  }
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  if ((*&self->_has & 4) != 0)
  {
    donationSource = self->_donationSource;
    if (donationSource >= 0x19)
    {
      v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_donationSource];
    }

    else
    {
      v5 = off_278971E58[donationSource];
    }

    [v3 setObject:v5 forKey:@"donationSource"];
  }

  groupId = self->_groupId;
  if (groupId)
  {
    [v3 setObject:groupId forKey:@"groupId"];
  }

  has = self->_has;
  if ((has & 8) != 0)
  {
    v8 = [MEMORY[0x277CCABB0] numberWithBool:self->_newItem];
    [v3 setObject:v8 forKey:@"newItem"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    algorithm = self->_algorithm;
    if (algorithm >= 0x16)
    {
      v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_algorithm];
    }

    else
    {
      v10 = off_278971F20[algorithm];
    }

    [v3 setObject:v10 forKey:@"algorithm"];
  }

  activeTreatments = self->_activeTreatments;
  if (activeTreatments)
  {
    [v3 setObject:activeTreatments forKey:@"activeTreatments"];
  }

  v12 = self->_has;
  if ((v12 & 0x10) != 0)
  {
    v13 = [MEMORY[0x277CCABB0] numberWithBool:self->_userCreated];
    [v3 setObject:v13 forKey:@"userCreated"];

    v12 = self->_has;
  }

  if (v12)
  {
    v14 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_rank];
    [v3 setObject:v14 forKey:@"rank"];
  }

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = PPM2TopicItemDonation;
  v4 = [(PPM2TopicItemDonation *)&v8 description];
  v5 = [(PPM2TopicItemDonation *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (void)setHasUserCreated:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (int)StringAsAlgorithm:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Unknown"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"LookupHint"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"CoreNLP"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"CoreRoutineImport"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"DataDetectors"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"NSUALocation"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"TrustedLocation"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"MapsInteraction"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"CustomTagger"])
  {
    v4 = 8;
  }

  else if ([v3 isEqualToString:@"EventKitImport"])
  {
    v4 = 9;
  }

  else if ([v3 isEqualToString:@"PhotosKnowledgeGraph"])
  {
    v4 = 10;
  }

  else if ([v3 isEqualToString:@"ContextKit"])
  {
    v4 = 11;
  }

  else if ([v3 isEqualToString:@"SiriDonation"])
  {
    v4 = 12;
  }

  else if ([v3 isEqualToString:@"NE2T"])
  {
    v4 = 13;
  }

  else if ([v3 isEqualToString:@"HighLevelTopicExtraction"])
  {
    v4 = 14;
  }

  else if ([v3 isEqualToString:@"ParsecDonation"])
  {
    v4 = 15;
  }

  else if ([v3 isEqualToString:@"PodcastsInteraction"])
  {
    v4 = 16;
  }

  else if ([v3 isEqualToString:@"HealthKitImport"])
  {
    v4 = 17;
  }

  else if ([v3 isEqualToString:@"NowPlayingDonation"])
  {
    v4 = 18;
  }

  else if ([v3 isEqualToString:@"ContactsImport"])
  {
    v4 = 19;
  }

  else if ([v3 isEqualToString:@"AugmentedGazetteer"])
  {
    v4 = 20;
  }

  else if ([v3 isEqualToString:@"KnowledgeGraph"])
  {
    v4 = 21;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasAlgorithm:(BOOL)a3
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

- (int)algorithm
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_algorithm;
  }

  else
  {
    return 0;
  }
}

- (void)setHasNewItem:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
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
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (int)donationSource
{
  if ((*&self->_has & 4) != 0)
  {
    return self->_donationSource;
  }

  else
  {
    return 0;
  }
}

@end