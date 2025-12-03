@interface PPM2NamedEntityNewItemDonation
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsAlgorithm:(id)algorithm;
- (int)StringAsCategory:(id)category;
- (int)StringAsDonationSource:(id)source;
- (int)algorithm;
- (int)category;
- (int)donationSource;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasAlgorithm:(BOOL)algorithm;
- (void)setHasCategory:(BOOL)category;
- (void)setHasDonationSource:(BOOL)source;
- (void)setHasNewItem:(BOOL)item;
- (void)setHasUserCreated:(BOOL)created;
- (void)writeTo:(id)to;
@end

@implementation PPM2NamedEntityNewItemDonation

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = *(fromCopy + 60);
  if ((v5 & 8) != 0)
  {
    self->_donationSource = *(fromCopy + 8);
    *&self->_has |= 8u;
    v5 = *(fromCopy + 60);
  }

  if ((v5 & 4) != 0)
  {
    self->_category = *(fromCopy + 7);
    *&self->_has |= 4u;
  }

  v8 = fromCopy;
  if (*(fromCopy + 5))
  {
    [(PPM2NamedEntityNewItemDonation *)self setDynamicCategory:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 6))
  {
    [(PPM2NamedEntityNewItemDonation *)self setGroupId:?];
    fromCopy = v8;
  }

  v6 = *(fromCopy + 60);
  if ((v6 & 0x10) != 0)
  {
    self->_newItem = *(fromCopy + 56);
    *&self->_has |= 0x10u;
    v6 = *(fromCopy + 60);
  }

  if ((v6 & 2) != 0)
  {
    self->_algorithm = *(fromCopy + 6);
    *&self->_has |= 2u;
  }

  if (*(fromCopy + 2))
  {
    [(PPM2NamedEntityNewItemDonation *)self setActiveTreatments:?];
    fromCopy = v8;
  }

  v7 = *(fromCopy + 60);
  if ((v7 & 0x20) != 0)
  {
    self->_userCreated = *(fromCopy + 57);
    *&self->_has |= 0x20u;
    v7 = *(fromCopy + 60);
  }

  if (v7)
  {
    self->_rank = *(fromCopy + 1);
    *&self->_has |= 1u;
  }
}

- (unint64_t)hash
{
  if ((*&self->_has & 8) != 0)
  {
    v3 = 2654435761 * self->_donationSource;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = 0;
    if ((*&self->_has & 4) != 0)
    {
LABEL_3:
      v4 = 2654435761 * self->_category;
      goto LABEL_6;
    }
  }

  v4 = 0;
LABEL_6:
  v5 = [(NSString *)self->_dynamicCategory hash];
  v6 = [(NSString *)self->_groupId hash];
  if ((*&self->_has & 0x10) != 0)
  {
    v7 = 2654435761 * self->_newItem;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v7 = 0;
    if ((*&self->_has & 2) != 0)
    {
LABEL_8:
      v8 = 2654435761 * self->_algorithm;
      goto LABEL_11;
    }
  }

  v8 = 0;
LABEL_11:
  v9 = [(NSString *)self->_activeTreatments hash];
  if ((*&self->_has & 0x20) != 0)
  {
    v10 = 2654435761 * self->_userCreated;
    if (*&self->_has)
    {
      goto LABEL_13;
    }

LABEL_15:
    v11 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11;
  }

  v10 = 0;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_13:
  v11 = 2654435761 * self->_rank;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_39;
  }

  v5 = *(equalCopy + 60);
  if ((*&self->_has & 8) != 0)
  {
    if ((*(equalCopy + 60) & 8) == 0 || self->_donationSource != *(equalCopy + 8))
    {
      goto LABEL_39;
    }
  }

  else if ((*(equalCopy + 60) & 8) != 0)
  {
    goto LABEL_39;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 60) & 4) == 0 || self->_category != *(equalCopy + 7))
    {
      goto LABEL_39;
    }
  }

  else if ((*(equalCopy + 60) & 4) != 0)
  {
    goto LABEL_39;
  }

  dynamicCategory = self->_dynamicCategory;
  if (dynamicCategory | *(equalCopy + 5) && ![(NSString *)dynamicCategory isEqual:?])
  {
    goto LABEL_39;
  }

  groupId = self->_groupId;
  if (groupId | *(equalCopy + 6))
  {
    if (![(NSString *)groupId isEqual:?])
    {
      goto LABEL_39;
    }
  }

  has = self->_has;
  v9 = *(equalCopy + 60);
  if ((has & 0x10) != 0)
  {
    if ((*(equalCopy + 60) & 0x10) == 0)
    {
      goto LABEL_39;
    }

    v10 = *(equalCopy + 56);
    if (self->_newItem)
    {
      if ((*(equalCopy + 56) & 1) == 0)
      {
        goto LABEL_39;
      }
    }

    else if (*(equalCopy + 56))
    {
      goto LABEL_39;
    }
  }

  else if ((*(equalCopy + 60) & 0x10) != 0)
  {
    goto LABEL_39;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 60) & 2) == 0 || self->_algorithm != *(equalCopy + 6))
    {
      goto LABEL_39;
    }
  }

  else if ((*(equalCopy + 60) & 2) != 0)
  {
    goto LABEL_39;
  }

  activeTreatments = self->_activeTreatments;
  if (activeTreatments | *(equalCopy + 2))
  {
    if (![(NSString *)activeTreatments isEqual:?])
    {
      goto LABEL_39;
    }

    has = self->_has;
    v9 = *(equalCopy + 60);
  }

  if ((has & 0x20) == 0)
  {
    if ((v9 & 0x20) == 0)
    {
      goto LABEL_32;
    }

LABEL_39:
    v12 = 0;
    goto LABEL_40;
  }

  if ((v9 & 0x20) == 0)
  {
    goto LABEL_39;
  }

  v14 = *(equalCopy + 57);
  if (self->_userCreated)
  {
    if ((*(equalCopy + 57) & 1) == 0)
    {
      goto LABEL_39;
    }
  }

  else if (*(equalCopy + 57))
  {
    goto LABEL_39;
  }

LABEL_32:
  v12 = (v9 & 1) == 0;
  if (has)
  {
    if ((v9 & 1) == 0 || self->_rank != *(equalCopy + 1))
    {
      goto LABEL_39;
    }

    v12 = 1;
  }

LABEL_40:

  return v12;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  has = self->_has;
  if ((has & 8) != 0)
  {
    *(v5 + 32) = self->_donationSource;
    *(v5 + 60) |= 8u;
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    *(v5 + 28) = self->_category;
    *(v5 + 60) |= 4u;
  }

  v8 = [(NSString *)self->_dynamicCategory copyWithZone:zone];
  v9 = *(v6 + 40);
  *(v6 + 40) = v8;

  v10 = [(NSString *)self->_groupId copyWithZone:zone];
  v11 = *(v6 + 48);
  *(v6 + 48) = v10;

  v12 = self->_has;
  if ((v12 & 0x10) != 0)
  {
    *(v6 + 56) = self->_newItem;
    *(v6 + 60) |= 0x10u;
    v12 = self->_has;
  }

  if ((v12 & 2) != 0)
  {
    *(v6 + 24) = self->_algorithm;
    *(v6 + 60) |= 2u;
  }

  v13 = [(NSString *)self->_activeTreatments copyWithZone:zone];
  v14 = *(v6 + 16);
  *(v6 + 16) = v13;

  v15 = self->_has;
  if ((v15 & 0x20) != 0)
  {
    *(v6 + 57) = self->_userCreated;
    *(v6 + 60) |= 0x20u;
    v15 = self->_has;
  }

  if (v15)
  {
    *(v6 + 8) = self->_rank;
    *(v6 + 60) |= 1u;
  }

  return v6;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((has & 8) != 0)
  {
    toCopy[8] = self->_donationSource;
    *(toCopy + 60) |= 8u;
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    toCopy[7] = self->_category;
    *(toCopy + 60) |= 4u;
  }

  v8 = toCopy;
  if (self->_dynamicCategory)
  {
    [toCopy setDynamicCategory:?];
    toCopy = v8;
  }

  if (self->_groupId)
  {
    [v8 setGroupId:?];
    toCopy = v8;
  }

  v6 = self->_has;
  if ((v6 & 0x10) != 0)
  {
    *(toCopy + 56) = self->_newItem;
    *(toCopy + 60) |= 0x10u;
    v6 = self->_has;
  }

  if ((v6 & 2) != 0)
  {
    toCopy[6] = self->_algorithm;
    *(toCopy + 60) |= 2u;
  }

  if (self->_activeTreatments)
  {
    [v8 setActiveTreatments:?];
    toCopy = v8;
  }

  v7 = self->_has;
  if ((v7 & 0x20) != 0)
  {
    *(toCopy + 57) = self->_userCreated;
    *(toCopy + 60) |= 0x20u;
    v7 = self->_has;
  }

  if (v7)
  {
    *(toCopy + 1) = self->_rank;
    *(toCopy + 60) |= 1u;
  }
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((has & 8) != 0)
  {
    donationSource = self->_donationSource;
    PBDataWriterWriteInt32Field();
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    category = self->_category;
    PBDataWriterWriteInt32Field();
  }

  if (self->_dynamicCategory)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_groupId)
  {
    PBDataWriterWriteStringField();
  }

  v7 = self->_has;
  if ((v7 & 0x10) != 0)
  {
    newItem = self->_newItem;
    PBDataWriterWriteBOOLField();
    v7 = self->_has;
  }

  if ((v7 & 2) != 0)
  {
    algorithm = self->_algorithm;
    PBDataWriterWriteInt32Field();
  }

  if (self->_activeTreatments)
  {
    PBDataWriterWriteStringField();
  }

  v10 = self->_has;
  if ((v10 & 0x20) != 0)
  {
    userCreated = self->_userCreated;
    PBDataWriterWriteBOOLField();
    v10 = self->_has;
  }

  if (v10)
  {
    rank = self->_rank;
    PBDataWriterWriteInt64Field();
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if ((has & 8) != 0)
  {
    donationSource = self->_donationSource;
    if (donationSource >= 0x19)
    {
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_donationSource];
    }

    else
    {
      v6 = off_2789757C0[donationSource];
    }

    [dictionary setObject:v6 forKey:@"donationSource"];

    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    category = self->_category;
    if (category >= 0x16)
    {
      v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_category];
    }

    else
    {
      v8 = off_278975888[category];
    }

    [dictionary setObject:v8 forKey:@"category"];
  }

  dynamicCategory = self->_dynamicCategory;
  if (dynamicCategory)
  {
    [dictionary setObject:dynamicCategory forKey:@"dynamicCategory"];
  }

  groupId = self->_groupId;
  if (groupId)
  {
    [dictionary setObject:groupId forKey:@"groupId"];
  }

  v11 = self->_has;
  if ((v11 & 0x10) != 0)
  {
    v12 = [MEMORY[0x277CCABB0] numberWithBool:self->_newItem];
    [dictionary setObject:v12 forKey:@"newItem"];

    v11 = self->_has;
  }

  if ((v11 & 2) != 0)
  {
    algorithm = self->_algorithm;
    if (algorithm >= 0x16)
    {
      v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_algorithm];
    }

    else
    {
      v14 = off_278975938[algorithm];
    }

    [dictionary setObject:v14 forKey:@"algorithm"];
  }

  activeTreatments = self->_activeTreatments;
  if (activeTreatments)
  {
    [dictionary setObject:activeTreatments forKey:@"activeTreatments"];
  }

  v16 = self->_has;
  if ((v16 & 0x20) != 0)
  {
    v17 = [MEMORY[0x277CCABB0] numberWithBool:self->_userCreated];
    [dictionary setObject:v17 forKey:@"userCreated"];

    v16 = self->_has;
  }

  if (v16)
  {
    v18 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_rank];
    [dictionary setObject:v18 forKey:@"rank"];
  }

  return dictionary;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = PPM2NamedEntityNewItemDonation;
  v4 = [(PPM2NamedEntityNewItemDonation *)&v8 description];
  dictionaryRepresentation = [(PPM2NamedEntityNewItemDonation *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (void)setHasUserCreated:(BOOL)created
{
  if (created)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (int)StringAsAlgorithm:(id)algorithm
{
  algorithmCopy = algorithm;
  if ([algorithmCopy isEqualToString:@"Unknown"])
  {
    v4 = 0;
  }

  else if ([algorithmCopy isEqualToString:@"LookupHint"])
  {
    v4 = 1;
  }

  else if ([algorithmCopy isEqualToString:@"CoreNLP"])
  {
    v4 = 2;
  }

  else if ([algorithmCopy isEqualToString:@"CoreRoutineImport"])
  {
    v4 = 3;
  }

  else if ([algorithmCopy isEqualToString:@"DataDetectors"])
  {
    v4 = 4;
  }

  else if ([algorithmCopy isEqualToString:@"NSUALocation"])
  {
    v4 = 5;
  }

  else if ([algorithmCopy isEqualToString:@"TrustedLocation"])
  {
    v4 = 6;
  }

  else if ([algorithmCopy isEqualToString:@"MapsInteraction"])
  {
    v4 = 7;
  }

  else if ([algorithmCopy isEqualToString:@"CustomTagger"])
  {
    v4 = 8;
  }

  else if ([algorithmCopy isEqualToString:@"EventKitImport"])
  {
    v4 = 9;
  }

  else if ([algorithmCopy isEqualToString:@"PhotosKnowledgeGraph"])
  {
    v4 = 10;
  }

  else if ([algorithmCopy isEqualToString:@"ContextKit"])
  {
    v4 = 11;
  }

  else if ([algorithmCopy isEqualToString:@"SiriDonation"])
  {
    v4 = 12;
  }

  else if ([algorithmCopy isEqualToString:@"NE2T"])
  {
    v4 = 13;
  }

  else if ([algorithmCopy isEqualToString:@"HighLevelTopicExtraction"])
  {
    v4 = 14;
  }

  else if ([algorithmCopy isEqualToString:@"ParsecDonation"])
  {
    v4 = 15;
  }

  else if ([algorithmCopy isEqualToString:@"PodcastsInteraction"])
  {
    v4 = 16;
  }

  else if ([algorithmCopy isEqualToString:@"HealthKitImport"])
  {
    v4 = 17;
  }

  else if ([algorithmCopy isEqualToString:@"NowPlayingDonation"])
  {
    v4 = 18;
  }

  else if ([algorithmCopy isEqualToString:@"ContactsImport"])
  {
    v4 = 19;
  }

  else if ([algorithmCopy isEqualToString:@"AugmentedGazetteer"])
  {
    v4 = 20;
  }

  else if ([algorithmCopy isEqualToString:@"KnowledgeGraph"])
  {
    v4 = 21;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasAlgorithm:(BOOL)algorithm
{
  if (algorithm)
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

- (void)setHasNewItem:(BOOL)item
{
  if (item)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (int)StringAsCategory:(id)category
{
  categoryCopy = category;
  if ([categoryCopy isEqualToString:@"UnknownCategory"])
  {
    v4 = 0;
  }

  else if ([categoryCopy isEqualToString:@"Person"])
  {
    v4 = 1;
  }

  else if ([categoryCopy isEqualToString:@"Organization"])
  {
    v4 = 2;
  }

  else if ([categoryCopy isEqualToString:@"Location"])
  {
    v4 = 3;
  }

  else if ([categoryCopy isEqualToString:@"Restaurant"])
  {
    v4 = 4;
  }

  else if ([categoryCopy isEqualToString:@"ActivityLocation"])
  {
    v4 = 5;
  }

  else if ([categoryCopy isEqualToString:@"Media"])
  {
    v4 = 6;
  }

  else if ([categoryCopy isEqualToString:@"Artist"])
  {
    v4 = 7;
  }

  else if ([categoryCopy isEqualToString:@"StreetAddress"])
  {
    v4 = 8;
  }

  else if ([categoryCopy isEqualToString:@"City"])
  {
    v4 = 9;
  }

  else if ([categoryCopy isEqualToString:@"State"])
  {
    v4 = 10;
  }

  else if ([categoryCopy isEqualToString:@"Country"])
  {
    v4 = 11;
  }

  else if ([categoryCopy isEqualToString:@"FullAddress"])
  {
    v4 = 12;
  }

  else if ([categoryCopy isEqualToString:@"TouristAttraction"])
  {
    v4 = 13;
  }

  else if ([categoryCopy isEqualToString:@"EventTitle"])
  {
    v4 = 14;
  }

  else if ([categoryCopy isEqualToString:@"SportsTeam"])
  {
    v4 = 15;
  }

  else if ([categoryCopy isEqualToString:@"ProfessionalAthlete"])
  {
    v4 = 16;
  }

  else if ([categoryCopy isEqualToString:@"Musician"])
  {
    v4 = 17;
  }

  else if ([categoryCopy isEqualToString:@"Movie"])
  {
    v4 = 18;
  }

  else if ([categoryCopy isEqualToString:@"Dynamic"])
  {
    v4 = 19;
  }

  else if ([categoryCopy isEqualToString:@"Politician"])
  {
    v4 = 20;
  }

  else if ([categoryCopy isEqualToString:@"TelevisionShow"])
  {
    v4 = 21;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasCategory:(BOOL)category
{
  if (category)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (int)category
{
  if ((*&self->_has & 4) != 0)
  {
    return self->_category;
  }

  else
  {
    return 0;
  }
}

- (int)StringAsDonationSource:(id)source
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

- (void)setHasDonationSource:(BOOL)source
{
  if (source)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (int)donationSource
{
  if ((*&self->_has & 8) != 0)
  {
    return self->_donationSource;
  }

  else
  {
    return 0;
  }
}

@end