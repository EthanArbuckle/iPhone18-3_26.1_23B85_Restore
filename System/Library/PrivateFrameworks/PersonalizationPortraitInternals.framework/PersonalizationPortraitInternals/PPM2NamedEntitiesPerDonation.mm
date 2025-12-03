@interface PPM2NamedEntitiesPerDonation
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsAlgorithm:(id)algorithm;
- (int)StringAsDonationSource:(id)source;
- (int)algorithm;
- (int)donationSource;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasDonationSource:(BOOL)source;
- (void)writeTo:(id)to;
@end

@implementation PPM2NamedEntitiesPerDonation

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if ((fromCopy[8] & 2) != 0)
  {
    self->_donationSource = fromCopy[5];
    *&self->_has |= 2u;
  }

  v5 = fromCopy;
  if (*(fromCopy + 3))
  {
    [(PPM2NamedEntitiesPerDonation *)self setGroupId:?];
    fromCopy = v5;
  }

  if (fromCopy[8])
  {
    self->_algorithm = fromCopy[4];
    *&self->_has |= 1u;
  }

  if (*(fromCopy + 1))
  {
    [(PPM2NamedEntitiesPerDonation *)self setActiveTreatments:?];
    fromCopy = v5;
  }
}

- (unint64_t)hash
{
  if ((*&self->_has & 2) != 0)
  {
    v3 = 2654435761 * self->_donationSource;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSString *)self->_groupId hash];
  if (*&self->_has)
  {
    v5 = 2654435761 * self->_algorithm;
  }

  else
  {
    v5 = 0;
  }

  return v4 ^ v3 ^ v5 ^ [(NSString *)self->_activeTreatments hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  has = self->_has;
  v6 = *(equalCopy + 32);
  if ((has & 2) != 0)
  {
    if ((*(equalCopy + 32) & 2) == 0 || self->_donationSource != *(equalCopy + 5))
    {
      goto LABEL_17;
    }
  }

  else if ((*(equalCopy + 32) & 2) != 0)
  {
    goto LABEL_17;
  }

  groupId = self->_groupId;
  if (groupId | *(equalCopy + 3))
  {
    if (![(NSString *)groupId isEqual:?])
    {
LABEL_17:
      v9 = 0;
      goto LABEL_18;
    }

    has = self->_has;
    v6 = *(equalCopy + 32);
  }

  if (has)
  {
    if ((v6 & 1) == 0 || self->_algorithm != *(equalCopy + 4))
    {
      goto LABEL_17;
    }
  }

  else if (v6)
  {
    goto LABEL_17;
  }

  activeTreatments = self->_activeTreatments;
  if (activeTreatments | *(equalCopy + 1))
  {
    v9 = [(NSString *)activeTreatments isEqual:?];
  }

  else
  {
    v9 = 1;
  }

LABEL_18:

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if ((*&self->_has & 2) != 0)
  {
    *(v5 + 20) = self->_donationSource;
    *(v5 + 32) |= 2u;
  }

  v7 = [(NSString *)self->_groupId copyWithZone:zone];
  v8 = *(v6 + 24);
  *(v6 + 24) = v7;

  if (*&self->_has)
  {
    *(v6 + 16) = self->_algorithm;
    *(v6 + 32) |= 1u;
  }

  v9 = [(NSString *)self->_activeTreatments copyWithZone:zone];
  v10 = *(v6 + 8);
  *(v6 + 8) = v9;

  return v6;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if ((*&self->_has & 2) != 0)
  {
    toCopy[5] = self->_donationSource;
    *(toCopy + 32) |= 2u;
  }

  v5 = toCopy;
  if (self->_groupId)
  {
    [toCopy setGroupId:?];
    toCopy = v5;
  }

  if (*&self->_has)
  {
    toCopy[4] = self->_algorithm;
    *(toCopy + 32) |= 1u;
  }

  if (self->_activeTreatments)
  {
    [v5 setActiveTreatments:?];
    toCopy = v5;
  }
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v7 = toCopy;
  if ((*&self->_has & 2) != 0)
  {
    donationSource = self->_donationSource;
    PBDataWriterWriteInt32Field();
    toCopy = v7;
  }

  if (self->_groupId)
  {
    PBDataWriterWriteStringField();
    toCopy = v7;
  }

  if (*&self->_has)
  {
    algorithm = self->_algorithm;
    PBDataWriterWriteInt32Field();
    toCopy = v7;
  }

  if (self->_activeTreatments)
  {
    PBDataWriterWriteStringField();
    toCopy = v7;
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if ((*&self->_has & 2) != 0)
  {
    donationSource = self->_donationSource;
    if (donationSource >= 0x19)
    {
      v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_donationSource];
    }

    else
    {
      v5 = off_2789711B8[donationSource];
    }

    [dictionary setObject:v5 forKey:@"donationSource"];
  }

  groupId = self->_groupId;
  if (groupId)
  {
    [dictionary setObject:groupId forKey:@"groupId"];
  }

  if (*&self->_has)
  {
    algorithm = self->_algorithm;
    if (algorithm >= 0x16)
    {
      v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_algorithm];
    }

    else
    {
      v8 = off_278971280[algorithm];
    }

    [dictionary setObject:v8 forKey:@"algorithm"];
  }

  activeTreatments = self->_activeTreatments;
  if (activeTreatments)
  {
    [dictionary setObject:activeTreatments forKey:@"activeTreatments"];
  }

  return dictionary;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = PPM2NamedEntitiesPerDonation;
  v4 = [(PPM2NamedEntitiesPerDonation *)&v8 description];
  dictionaryRepresentation = [(PPM2NamedEntitiesPerDonation *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
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

- (int)algorithm
{
  if (*&self->_has)
  {
    return self->_algorithm;
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

@end