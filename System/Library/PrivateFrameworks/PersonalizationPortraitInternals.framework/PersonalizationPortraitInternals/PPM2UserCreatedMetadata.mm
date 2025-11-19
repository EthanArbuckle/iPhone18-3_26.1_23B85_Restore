@interface PPM2UserCreatedMetadata
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsAlgorithm:(id)a3;
- (int)StringAsDomain:(id)a3;
- (int)StringAsSource:(id)a3;
- (int)algorithm;
- (int)domain;
- (int)source;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasDomain:(BOOL)a3;
- (void)setHasSource:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation PPM2UserCreatedMetadata

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 28);
  if ((v5 & 4) != 0)
  {
    self->_source = *(v4 + 6);
    *&self->_has |= 4u;
    v5 = *(v4 + 28);
    if ((v5 & 1) == 0)
    {
LABEL_3:
      if ((v5 & 2) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*(v4 + 28) & 1) == 0)
  {
    goto LABEL_3;
  }

  self->_algorithm = *(v4 + 4);
  *&self->_has |= 1u;
  if ((*(v4 + 28) & 2) != 0)
  {
LABEL_4:
    self->_domain = *(v4 + 5);
    *&self->_has |= 2u;
  }

LABEL_5:
  if (*(v4 + 1))
  {
    v6 = v4;
    [(PPM2UserCreatedMetadata *)self setActiveTreatments:?];
    v4 = v6;
  }
}

- (unint64_t)hash
{
  if ((*&self->_has & 4) == 0)
  {
    v6 = 0;
    if (*&self->_has)
    {
      goto LABEL_3;
    }

LABEL_6:
    v7 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_4;
    }

LABEL_7:
    v8 = 0;
    return v7 ^ v6 ^ v8 ^ [(NSString *)self->_activeTreatments hash:v3];
  }

  v6 = 2654435761 * self->_source;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v7 = 2654435761 * self->_algorithm;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  v8 = 2654435761 * self->_domain;
  return v7 ^ v6 ^ v8 ^ [(NSString *)self->_activeTreatments hash:v3];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_19;
  }

  v5 = *(v4 + 28);
  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 28) & 4) == 0 || self->_source != *(v4 + 6))
    {
      goto LABEL_19;
    }
  }

  else if ((*(v4 + 28) & 4) != 0)
  {
LABEL_19:
    v7 = 0;
    goto LABEL_20;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 28) & 1) == 0 || self->_algorithm != *(v4 + 4))
    {
      goto LABEL_19;
    }
  }

  else if (*(v4 + 28))
  {
    goto LABEL_19;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 28) & 2) == 0 || self->_domain != *(v4 + 5))
    {
      goto LABEL_19;
    }
  }

  else if ((*(v4 + 28) & 2) != 0)
  {
    goto LABEL_19;
  }

  activeTreatments = self->_activeTreatments;
  if (activeTreatments | *(v4 + 1))
  {
    v7 = [(NSString *)activeTreatments isEqual:?];
  }

  else
  {
    v7 = 1;
  }

LABEL_20:

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  has = self->_has;
  if ((has & 4) == 0)
  {
    if ((*&self->_has & 1) == 0)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v5 + 16) = self->_algorithm;
    *(v5 + 28) |= 1u;
    if ((*&self->_has & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  *(v5 + 24) = self->_source;
  *(v5 + 28) |= 4u;
  has = self->_has;
  if (has)
  {
    goto LABEL_7;
  }

LABEL_3:
  if ((has & 2) != 0)
  {
LABEL_4:
    *(v5 + 20) = self->_domain;
    *(v5 + 28) |= 2u;
  }

LABEL_5:
  v8 = [(NSString *)self->_activeTreatments copyWithZone:a3];
  v9 = v6[1];
  v6[1] = v8;

  return v6;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if ((has & 4) != 0)
  {
    v4[6] = self->_source;
    *(v4 + 28) |= 4u;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  v4[4] = self->_algorithm;
  *(v4 + 28) |= 1u;
  if ((*&self->_has & 2) != 0)
  {
LABEL_4:
    v4[5] = self->_domain;
    *(v4 + 28) |= 2u;
  }

LABEL_5:
  if (self->_activeTreatments)
  {
    v6 = v4;
    [v4 setActiveTreatments:?];
    v4 = v6;
  }
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  v9 = v4;
  if ((has & 4) != 0)
  {
    source = self->_source;
    PBDataWriterWriteInt32Field();
    v4 = v9;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  algorithm = self->_algorithm;
  PBDataWriterWriteInt32Field();
  v4 = v9;
  if ((*&self->_has & 2) != 0)
  {
LABEL_4:
    domain = self->_domain;
    PBDataWriterWriteInt32Field();
    v4 = v9;
  }

LABEL_5:
  if (self->_activeTreatments)
  {
    PBDataWriterWriteStringField();
    v4 = v9;
  }
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if ((has & 4) != 0)
  {
    source = self->_source;
    if (source >= 0x19)
    {
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_source];
    }

    else
    {
      v6 = off_2789795F8[source];
    }

    [v3 setObject:v6 forKey:@"source"];

    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_13;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  algorithm = self->_algorithm;
  if (algorithm >= 0x16)
  {
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_algorithm];
  }

  else
  {
    v8 = off_2789796C0[algorithm];
  }

  [v3 setObject:v8 forKey:@"algorithm"];

  if ((*&self->_has & 2) != 0)
  {
LABEL_13:
    domain = self->_domain;
    if (domain >= 8)
    {
      v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_domain];
    }

    else
    {
      v10 = off_278979770[domain];
    }

    [v3 setObject:v10 forKey:@"domain"];
  }

LABEL_17:
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
  v8.super_class = PPM2UserCreatedMetadata;
  v4 = [(PPM2UserCreatedMetadata *)&v8 description];
  v5 = [(PPM2UserCreatedMetadata *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
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

- (void)setHasDomain:(BOOL)a3
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

- (int)domain
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_domain;
  }

  else
  {
    return 0;
  }
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

@end