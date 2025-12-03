@interface PPM2AttributedFeedback
+ (id)options;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsAlgorithm:(id)algorithm;
- (int)StringAsCategory:(id)category;
- (int)StringAsDomain:(id)domain;
- (int)StringAsSource:(id)source;
- (int)StringAsType:(id)type;
- (int)algorithm;
- (int)category;
- (int)domain;
- (int)source;
- (int)type;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasCategory:(BOOL)category;
- (void)setHasDomain:(BOOL)domain;
- (void)setHasIsRemote:(BOOL)remote;
- (void)setHasSource:(BOOL)source;
- (void)setHasType:(BOOL)type;
- (void)writeTo:(id)to;
@end

@implementation PPM2AttributedFeedback

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = *(fromCopy + 68);
  if ((v5 & 8) != 0)
  {
    self->_source = *(fromCopy + 14);
    *&self->_has |= 8u;
    v5 = *(fromCopy + 68);
    if ((v5 & 1) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*(fromCopy + 68) & 1) == 0)
  {
    goto LABEL_3;
  }

  self->_algorithm = *(fromCopy + 4);
  *&self->_has |= 1u;
  if ((*(fromCopy + 68) & 4) != 0)
  {
LABEL_4:
    self->_domain = *(fromCopy + 8);
    *&self->_has |= 4u;
  }

LABEL_5:
  v7 = fromCopy;
  if (*(fromCopy + 1))
  {
    [(PPM2AttributedFeedback *)self setActiveTreatments:?];
    fromCopy = v7;
  }

  if (*(fromCopy + 3))
  {
    [(PPM2AttributedFeedback *)self setClientId:?];
    fromCopy = v7;
  }

  if (*(fromCopy + 6))
  {
    [(PPM2AttributedFeedback *)self setMappingId:?];
    fromCopy = v7;
  }

  v6 = *(fromCopy + 68);
  if ((v6 & 0x10) != 0)
  {
    self->_type = *(fromCopy + 15);
    *&self->_has |= 0x10u;
    v6 = *(fromCopy + 68);
  }

  if ((v6 & 2) != 0)
  {
    self->_category = *(fromCopy + 5);
    *&self->_has |= 2u;
  }

  if (*(fromCopy + 5))
  {
    [(PPM2AttributedFeedback *)self setDynamicCategory:?];
    fromCopy = v7;
  }

  if ((*(fromCopy + 68) & 0x20) != 0)
  {
    self->_isRemote = *(fromCopy + 64);
    *&self->_has |= 0x20u;
  }
}

- (unint64_t)hash
{
  if ((*&self->_has & 8) == 0)
  {
    v13 = 0;
    if (*&self->_has)
    {
      goto LABEL_3;
    }

LABEL_6:
    v3 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v13 = 2654435761 * self->_source;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v3 = 2654435761 * self->_algorithm;
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    v4 = 2654435761 * self->_domain;
    goto LABEL_8;
  }

LABEL_7:
  v4 = 0;
LABEL_8:
  v5 = [(NSString *)self->_activeTreatments hash];
  v6 = [(NSString *)self->_clientId hash];
  v7 = [(NSString *)self->_mappingId hash];
  if ((*&self->_has & 0x10) != 0)
  {
    v8 = 2654435761 * self->_type;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v8 = 0;
    if ((*&self->_has & 2) != 0)
    {
LABEL_10:
      v9 = 2654435761 * self->_category;
      goto LABEL_13;
    }
  }

  v9 = 0;
LABEL_13:
  v10 = [(NSString *)self->_dynamicCategory hash];
  if ((*&self->_has & 0x20) != 0)
  {
    v11 = 2654435761 * self->_isRemote;
  }

  else
  {
    v11 = 0;
  }

  return v3 ^ v13 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_38;
  }

  v5 = *(equalCopy + 68);
  if ((*&self->_has & 8) != 0)
  {
    if ((*(equalCopy + 68) & 8) == 0 || self->_source != *(equalCopy + 14))
    {
      goto LABEL_38;
    }
  }

  else if ((*(equalCopy + 68) & 8) != 0)
  {
    goto LABEL_38;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 68) & 1) == 0 || self->_algorithm != *(equalCopy + 4))
    {
      goto LABEL_38;
    }
  }

  else if (*(equalCopy + 68))
  {
    goto LABEL_38;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 68) & 4) == 0 || self->_domain != *(equalCopy + 8))
    {
      goto LABEL_38;
    }
  }

  else if ((*(equalCopy + 68) & 4) != 0)
  {
    goto LABEL_38;
  }

  activeTreatments = self->_activeTreatments;
  if (activeTreatments | *(equalCopy + 1) && ![(NSString *)activeTreatments isEqual:?])
  {
    goto LABEL_38;
  }

  clientId = self->_clientId;
  if (clientId | *(equalCopy + 3))
  {
    if (![(NSString *)clientId isEqual:?])
    {
      goto LABEL_38;
    }
  }

  mappingId = self->_mappingId;
  if (mappingId | *(equalCopy + 6))
  {
    if (![(NSString *)mappingId isEqual:?])
    {
      goto LABEL_38;
    }
  }

  has = self->_has;
  v10 = *(equalCopy + 68);
  if ((has & 0x10) != 0)
  {
    if ((*(equalCopy + 68) & 0x10) == 0 || self->_type != *(equalCopy + 15))
    {
      goto LABEL_38;
    }
  }

  else if ((*(equalCopy + 68) & 0x10) != 0)
  {
    goto LABEL_38;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 68) & 2) == 0 || self->_category != *(equalCopy + 5))
    {
      goto LABEL_38;
    }
  }

  else if ((*(equalCopy + 68) & 2) != 0)
  {
    goto LABEL_38;
  }

  dynamicCategory = self->_dynamicCategory;
  if (dynamicCategory | *(equalCopy + 5))
  {
    if (![(NSString *)dynamicCategory isEqual:?])
    {
      goto LABEL_38;
    }

    has = self->_has;
    v10 = *(equalCopy + 68);
  }

  v12 = (v10 & 0x20) == 0;
  if ((has & 0x20) != 0)
  {
    if ((v10 & 0x20) != 0)
    {
      if (self->_isRemote)
      {
        if ((*(equalCopy + 64) & 1) == 0)
        {
          goto LABEL_38;
        }
      }

      else if (*(equalCopy + 64))
      {
        goto LABEL_38;
      }

      v12 = 1;
      goto LABEL_39;
    }

LABEL_38:
    v12 = 0;
  }

LABEL_39:

  return v12;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  has = self->_has;
  if ((has & 8) != 0)
  {
    *(v5 + 56) = self->_source;
    *(v5 + 68) |= 8u;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
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

  *(v5 + 16) = self->_algorithm;
  *(v5 + 68) |= 1u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    *(v5 + 32) = self->_domain;
    *(v5 + 68) |= 4u;
  }

LABEL_5:
  v8 = [(NSString *)self->_activeTreatments copyWithZone:zone];
  v9 = *(v6 + 8);
  *(v6 + 8) = v8;

  v10 = [(NSString *)self->_clientId copyWithZone:zone];
  v11 = *(v6 + 24);
  *(v6 + 24) = v10;

  v12 = [(NSString *)self->_mappingId copyWithZone:zone];
  v13 = *(v6 + 48);
  *(v6 + 48) = v12;

  v14 = self->_has;
  if ((v14 & 0x10) != 0)
  {
    *(v6 + 60) = self->_type;
    *(v6 + 68) |= 0x10u;
    v14 = self->_has;
  }

  if ((v14 & 2) != 0)
  {
    *(v6 + 20) = self->_category;
    *(v6 + 68) |= 2u;
  }

  v15 = [(NSString *)self->_dynamicCategory copyWithZone:zone];
  v16 = *(v6 + 40);
  *(v6 + 40) = v15;

  if ((*&self->_has & 0x20) != 0)
  {
    *(v6 + 64) = self->_isRemote;
    *(v6 + 68) |= 0x20u;
  }

  return v6;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((has & 8) != 0)
  {
    toCopy[14] = self->_source;
    *(toCopy + 68) |= 8u;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
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

  toCopy[4] = self->_algorithm;
  *(toCopy + 68) |= 1u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    toCopy[8] = self->_domain;
    *(toCopy + 68) |= 4u;
  }

LABEL_5:
  v7 = toCopy;
  if (self->_activeTreatments)
  {
    [toCopy setActiveTreatments:?];
    toCopy = v7;
  }

  if (self->_clientId)
  {
    [v7 setClientId:?];
    toCopy = v7;
  }

  if (self->_mappingId)
  {
    [v7 setMappingId:?];
    toCopy = v7;
  }

  v6 = self->_has;
  if ((v6 & 0x10) != 0)
  {
    toCopy[15] = self->_type;
    *(toCopy + 68) |= 0x10u;
    v6 = self->_has;
  }

  if ((v6 & 2) != 0)
  {
    toCopy[5] = self->_category;
    *(toCopy + 68) |= 2u;
  }

  if (self->_dynamicCategory)
  {
    [v7 setDynamicCategory:?];
    toCopy = v7;
  }

  if ((*&self->_has & 0x20) != 0)
  {
    *(toCopy + 64) = self->_isRemote;
    *(toCopy + 68) |= 0x20u;
  }
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((has & 8) != 0)
  {
    source = self->_source;
    PBDataWriterWriteInt32Field();
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
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
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    domain = self->_domain;
    PBDataWriterWriteInt32Field();
  }

LABEL_5:
  if (self->_activeTreatments)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_clientId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_mappingId)
  {
    PBDataWriterWriteStringField();
  }

  v6 = self->_has;
  if ((v6 & 0x10) != 0)
  {
    type = self->_type;
    PBDataWriterWriteInt32Field();
    v6 = self->_has;
  }

  if ((v6 & 2) != 0)
  {
    category = self->_category;
    PBDataWriterWriteInt32Field();
  }

  if (self->_dynamicCategory)
  {
    PBDataWriterWriteStringField();
  }

  if ((*&self->_has & 0x20) != 0)
  {
    isRemote = self->_isRemote;
    PBDataWriterWriteBOOLField();
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if ((has & 8) != 0)
  {
    source = self->_source;
    if (source >= 0x19)
    {
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_source];
    }

    else
    {
      v6 = off_2789728C8[source];
    }

    [dictionary setObject:v6 forKey:@"source"];

    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
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
    v8 = off_278972990[algorithm];
  }

  [dictionary setObject:v8 forKey:@"algorithm"];

  if ((*&self->_has & 4) != 0)
  {
LABEL_13:
    domain = self->_domain;
    if (domain >= 8)
    {
      v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_domain];
    }

    else
    {
      v10 = off_278972A40[domain];
    }

    [dictionary setObject:v10 forKey:@"domain"];
  }

LABEL_17:
  activeTreatments = self->_activeTreatments;
  if (activeTreatments)
  {
    [dictionary setObject:activeTreatments forKey:@"activeTreatments"];
  }

  clientId = self->_clientId;
  if (clientId)
  {
    [dictionary setObject:clientId forKey:@"clientId"];
  }

  mappingId = self->_mappingId;
  if (mappingId)
  {
    [dictionary setObject:mappingId forKey:@"mappingId"];
  }

  v14 = self->_has;
  if ((v14 & 0x10) != 0)
  {
    type = self->_type;
    if (type >= 6)
    {
      v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_type];
    }

    else
    {
      v16 = off_278972A80[type];
    }

    [dictionary setObject:v16 forKey:@"type"];

    v14 = self->_has;
  }

  if ((v14 & 2) != 0)
  {
    category = self->_category;
    if (category >= 0x16)
    {
      v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_category];
    }

    else
    {
      v18 = off_278972AB0[category];
    }

    [dictionary setObject:v18 forKey:@"category"];
  }

  dynamicCategory = self->_dynamicCategory;
  if (dynamicCategory)
  {
    [dictionary setObject:dynamicCategory forKey:@"dynamicCategory"];
  }

  if ((*&self->_has & 0x20) != 0)
  {
    v20 = [MEMORY[0x277CCABB0] numberWithBool:self->_isRemote];
    [dictionary setObject:v20 forKey:@"isRemote"];
  }

  return dictionary;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = PPM2AttributedFeedback;
  v4 = [(PPM2AttributedFeedback *)&v8 description];
  dictionaryRepresentation = [(PPM2AttributedFeedback *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (void)setHasIsRemote:(BOOL)remote
{
  if (remote)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
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
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (int)category
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_category;
  }

  else
  {
    return 0;
  }
}

- (int)StringAsType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"Invalid"])
  {
    v4 = 0;
  }

  else if ([typeCopy isEqualToString:@"EngagedExplicit"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"EngagedImplicit"])
  {
    v4 = 2;
  }

  else if ([typeCopy isEqualToString:@"RejectedExplicit"])
  {
    v4 = 3;
  }

  else if ([typeCopy isEqualToString:@"RejectedImplicit"])
  {
    v4 = 4;
  }

  else if ([typeCopy isEqualToString:@"Offered"])
  {
    v4 = 5;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasType:(BOOL)type
{
  if (type)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (int)type
{
  if ((*&self->_has & 0x10) != 0)
  {
    return self->_type;
  }

  else
  {
    return 0;
  }
}

- (int)StringAsDomain:(id)domain
{
  domainCopy = domain;
  if ([domainCopy isEqualToString:@"Topics"])
  {
    v4 = 0;
  }

  else if ([domainCopy isEqualToString:@"NamedEntities"])
  {
    v4 = 1;
  }

  else if ([domainCopy isEqualToString:@"Locations"])
  {
    v4 = 2;
  }

  else if ([domainCopy isEqualToString:@"Events"])
  {
    v4 = 3;
  }

  else if ([domainCopy isEqualToString:@"ContactsDomain"])
  {
    v4 = 4;
  }

  else if ([domainCopy isEqualToString:@"Connections"])
  {
    v4 = 5;
  }

  else if ([domainCopy isEqualToString:@"QuickTypeBroker"])
  {
    v4 = 6;
  }

  else if ([domainCopy isEqualToString:@"UniversalSearchSpotlightTopics"])
  {
    v4 = 7;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasDomain:(BOOL)domain
{
  if (domain)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (int)domain
{
  if ((*&self->_has & 4) != 0)
  {
    return self->_domain;
  }

  else
  {
    return 0;
  }
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
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (int)source
{
  if ((*&self->_has & 8) != 0)
  {
    return self->_source;
  }

  else
  {
    return 0;
  }
}

+ (id)options
{
  if (options_once_4069 != -1)
  {
    dispatch_once(&options_once_4069, &__block_literal_global_4070);
  }

  v3 = options_sOptions_4071;

  return v3;
}

void __33__PPM2AttributedFeedback_options__block_invoke()
{
  v0 = options_sOptions_4071;
  options_sOptions_4071 = &unk_284785ED8;
}

@end