@interface PPM2NamedEntitySourceLanguage
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
- (void)setHasLanguageCount:(BOOL)count;
- (void)writeTo:(id)to;
@end

@implementation PPM2NamedEntitySourceLanguage

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v6 = fromCopy;
  if (*(fromCopy + 3))
  {
    [(PPM2NamedEntitySourceLanguage *)self setDetectedLanguage:?];
    fromCopy = v6;
  }

  if (*(fromCopy + 5))
  {
    [(PPM2NamedEntitySourceLanguage *)self setSystemLanguage:?];
    fromCopy = v6;
  }

  v5 = *(fromCopy + 48);
  if ((v5 & 4) != 0)
  {
    self->_languageCount = *(fromCopy + 9);
    *&self->_has |= 4u;
    v5 = *(fromCopy + 48);
    if ((v5 & 2) == 0)
    {
LABEL_7:
      if ((v5 & 1) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  else if ((*(fromCopy + 48) & 2) == 0)
  {
    goto LABEL_7;
  }

  self->_donationSource = *(fromCopy + 8);
  *&self->_has |= 2u;
  if (*(fromCopy + 48))
  {
LABEL_8:
    self->_algorithm = *(fromCopy + 4);
    *&self->_has |= 1u;
  }

LABEL_9:
  if (*(fromCopy + 1))
  {
    [(PPM2NamedEntitySourceLanguage *)self setActiveTreatments:?];
    fromCopy = v6;
  }
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_detectedLanguage hash];
  v4 = [(NSString *)self->_systemLanguage hash];
  if ((*&self->_has & 4) == 0)
  {
    v5 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v6 = 0;
    if (*&self->_has)
    {
      goto LABEL_4;
    }

LABEL_7:
    v7 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ [(NSString *)self->_activeTreatments hash];
  }

  v5 = 2654435761 * self->_languageCount;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v6 = 2654435761 * self->_donationSource;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  v7 = 2654435761 * self->_algorithm;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ [(NSString *)self->_activeTreatments hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_23;
  }

  detectedLanguage = self->_detectedLanguage;
  if (detectedLanguage | *(equalCopy + 3))
  {
    if (![(NSString *)detectedLanguage isEqual:?])
    {
      goto LABEL_23;
    }
  }

  systemLanguage = self->_systemLanguage;
  if (systemLanguage | *(equalCopy + 5))
  {
    if (![(NSString *)systemLanguage isEqual:?])
    {
      goto LABEL_23;
    }
  }

  v7 = *(equalCopy + 48);
  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 48) & 4) == 0 || self->_languageCount != *(equalCopy + 9))
    {
      goto LABEL_23;
    }
  }

  else if ((*(equalCopy + 48) & 4) != 0)
  {
LABEL_23:
    v9 = 0;
    goto LABEL_24;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 48) & 2) == 0 || self->_donationSource != *(equalCopy + 8))
    {
      goto LABEL_23;
    }
  }

  else if ((*(equalCopy + 48) & 2) != 0)
  {
    goto LABEL_23;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 48) & 1) == 0 || self->_algorithm != *(equalCopy + 4))
    {
      goto LABEL_23;
    }
  }

  else if (*(equalCopy + 48))
  {
    goto LABEL_23;
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

LABEL_24:

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_detectedLanguage copyWithZone:zone];
  v7 = *(v5 + 24);
  *(v5 + 24) = v6;

  v8 = [(NSString *)self->_systemLanguage copyWithZone:zone];
  v9 = *(v5 + 40);
  *(v5 + 40) = v8;

  has = self->_has;
  if ((has & 4) == 0)
  {
    if ((*&self->_has & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v5 + 32) = self->_donationSource;
    *(v5 + 48) |= 2u;
    if ((*&self->_has & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  *(v5 + 36) = self->_languageCount;
  *(v5 + 48) |= 4u;
  has = self->_has;
  if ((has & 2) != 0)
  {
    goto LABEL_7;
  }

LABEL_3:
  if (has)
  {
LABEL_4:
    *(v5 + 16) = self->_algorithm;
    *(v5 + 48) |= 1u;
  }

LABEL_5:
  v11 = [(NSString *)self->_activeTreatments copyWithZone:zone];
  v12 = *(v5 + 8);
  *(v5 + 8) = v11;

  return v5;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_detectedLanguage)
  {
    [toCopy setDetectedLanguage:?];
    toCopy = v6;
  }

  if (self->_systemLanguage)
  {
    [v6 setSystemLanguage:?];
    toCopy = v6;
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    *(toCopy + 9) = self->_languageCount;
    *(toCopy + 48) |= 4u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_7:
      if ((has & 1) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_7;
  }

  *(toCopy + 8) = self->_donationSource;
  *(toCopy + 48) |= 2u;
  if (*&self->_has)
  {
LABEL_8:
    *(toCopy + 4) = self->_algorithm;
    *(toCopy + 48) |= 1u;
  }

LABEL_9:
  if (self->_activeTreatments)
  {
    [v6 setActiveTreatments:?];
    toCopy = v6;
  }
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v9 = toCopy;
  if (self->_detectedLanguage)
  {
    PBDataWriterWriteStringField();
    toCopy = v9;
  }

  if (self->_systemLanguage)
  {
    PBDataWriterWriteStringField();
    toCopy = v9;
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    languageCount = self->_languageCount;
    PBDataWriterWriteUint32Field();
    toCopy = v9;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_7:
      if ((has & 1) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_7;
  }

  donationSource = self->_donationSource;
  PBDataWriterWriteInt32Field();
  toCopy = v9;
  if (*&self->_has)
  {
LABEL_8:
    algorithm = self->_algorithm;
    PBDataWriterWriteInt32Field();
    toCopy = v9;
  }

LABEL_9:
  if (self->_activeTreatments)
  {
    PBDataWriterWriteStringField();
    toCopy = v9;
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  detectedLanguage = self->_detectedLanguage;
  if (detectedLanguage)
  {
    [dictionary setObject:detectedLanguage forKey:@"detectedLanguage"];
  }

  systemLanguage = self->_systemLanguage;
  if (systemLanguage)
  {
    [v4 setObject:systemLanguage forKey:@"systemLanguage"];
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_languageCount];
    [v4 setObject:v8 forKey:@"languageCount"];

    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_7:
      if ((has & 1) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_14;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_7;
  }

  donationSource = self->_donationSource;
  if (donationSource >= 0x19)
  {
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_donationSource];
  }

  else
  {
    v10 = off_278974420[donationSource];
  }

  [v4 setObject:v10 forKey:@"donationSource"];

  if (*&self->_has)
  {
LABEL_14:
    algorithm = self->_algorithm;
    if (algorithm >= 0x16)
    {
      v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_algorithm];
    }

    else
    {
      v12 = off_2789744E8[algorithm];
    }

    [v4 setObject:v12 forKey:@"algorithm"];
  }

LABEL_18:
  activeTreatments = self->_activeTreatments;
  if (activeTreatments)
  {
    [v4 setObject:activeTreatments forKey:@"activeTreatments"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = PPM2NamedEntitySourceLanguage;
  v4 = [(PPM2NamedEntitySourceLanguage *)&v8 description];
  dictionaryRepresentation = [(PPM2NamedEntitySourceLanguage *)self dictionaryRepresentation];
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

- (void)setHasLanguageCount:(BOOL)count
{
  if (count)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

@end