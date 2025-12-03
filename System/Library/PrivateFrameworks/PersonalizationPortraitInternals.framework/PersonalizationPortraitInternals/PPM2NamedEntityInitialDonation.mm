@interface PPM2NamedEntityInitialDonation
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsAlgorithm:(id)algorithm;
- (int)StringAsSource:(id)source;
- (int)algorithm;
- (int)source;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasSource:(BOOL)source;
- (void)writeTo:(id)to;
@end

@implementation PPM2NamedEntityInitialDonation

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = *(fromCopy + 24);
  if ((v5 & 2) != 0)
  {
    self->_source = *(fromCopy + 5);
    *&self->_has |= 2u;
    v5 = *(fromCopy + 24);
  }

  if (v5)
  {
    self->_algorithm = *(fromCopy + 4);
    *&self->_has |= 1u;
  }

  if (*(fromCopy + 1))
  {
    v6 = fromCopy;
    [(PPM2NamedEntityInitialDonation *)self setActiveTreatments:?];
    fromCopy = v6;
  }
}

- (unint64_t)hash
{
  if ((*&self->_has & 2) != 0)
  {
    v6 = 2654435761 * self->_source;
    if (*&self->_has)
    {
      goto LABEL_3;
    }

LABEL_5:
    v7 = 0;
    return v7 ^ v6 ^ [(NSString *)self->_activeTreatments hash:v3];
  }

  v6 = 0;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v7 = 2654435761 * self->_algorithm;
  return v7 ^ v6 ^ [(NSString *)self->_activeTreatments hash:v3];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_14;
  }

  v5 = *(equalCopy + 24);
  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 24) & 2) == 0 || self->_source != *(equalCopy + 5))
    {
      goto LABEL_14;
    }
  }

  else if ((*(equalCopy + 24) & 2) != 0)
  {
LABEL_14:
    v7 = 0;
    goto LABEL_15;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 24) & 1) == 0 || self->_algorithm != *(equalCopy + 4))
    {
      goto LABEL_14;
    }
  }

  else if (*(equalCopy + 24))
  {
    goto LABEL_14;
  }

  activeTreatments = self->_activeTreatments;
  if (activeTreatments | *(equalCopy + 1))
  {
    v7 = [(NSString *)activeTreatments isEqual:?];
  }

  else
  {
    v7 = 1;
  }

LABEL_15:

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v5 + 20) = self->_source;
    *(v5 + 24) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(v5 + 16) = self->_algorithm;
    *(v5 + 24) |= 1u;
  }

  v8 = [(NSString *)self->_activeTreatments copyWithZone:zone];
  v9 = v6[1];
  v6[1] = v8;

  return v6;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((has & 2) != 0)
  {
    toCopy[5] = self->_source;
    *(toCopy + 24) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    toCopy[4] = self->_algorithm;
    *(toCopy + 24) |= 1u;
  }

  if (self->_activeTreatments)
  {
    v6 = toCopy;
    [toCopy setActiveTreatments:?];
    toCopy = v6;
  }
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  v8 = toCopy;
  if ((has & 2) != 0)
  {
    source = self->_source;
    PBDataWriterWriteInt32Field();
    toCopy = v8;
    has = self->_has;
  }

  if (has)
  {
    algorithm = self->_algorithm;
    PBDataWriterWriteInt32Field();
    toCopy = v8;
  }

  if (self->_activeTreatments)
  {
    PBDataWriterWriteStringField();
    toCopy = v8;
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if ((has & 2) != 0)
  {
    source = self->_source;
    if (source >= 0x19)
    {
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_source];
    }

    else
    {
      v6 = off_2789747E8[source];
    }

    [dictionary setObject:v6 forKey:@"source"];

    has = self->_has;
  }

  if (has)
  {
    algorithm = self->_algorithm;
    if (algorithm >= 0x16)
    {
      v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_algorithm];
    }

    else
    {
      v8 = off_2789748B0[algorithm];
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
  v8.super_class = PPM2NamedEntityInitialDonation;
  v4 = [(PPM2NamedEntityInitialDonation *)&v8 description];
  dictionaryRepresentation = [(PPM2NamedEntityInitialDonation *)self dictionaryRepresentation];
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
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (int)source
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_source;
  }

  else
  {
    return 0;
  }
}

@end