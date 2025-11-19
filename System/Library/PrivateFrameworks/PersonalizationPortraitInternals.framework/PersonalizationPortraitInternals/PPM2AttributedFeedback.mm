@interface PPM2AttributedFeedback
+ (id)options;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsAlgorithm:(id)a3;
- (int)StringAsCategory:(id)a3;
- (int)StringAsDomain:(id)a3;
- (int)StringAsSource:(id)a3;
- (int)StringAsType:(id)a3;
- (int)algorithm;
- (int)category;
- (int)domain;
- (int)source;
- (int)type;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasCategory:(BOOL)a3;
- (void)setHasDomain:(BOOL)a3;
- (void)setHasIsRemote:(BOOL)a3;
- (void)setHasSource:(BOOL)a3;
- (void)setHasType:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation PPM2AttributedFeedback

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 68);
  if ((v5 & 8) != 0)
  {
    self->_source = *(v4 + 14);
    *&self->_has |= 8u;
    v5 = *(v4 + 68);
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

  else if ((*(v4 + 68) & 1) == 0)
  {
    goto LABEL_3;
  }

  self->_algorithm = *(v4 + 4);
  *&self->_has |= 1u;
  if ((*(v4 + 68) & 4) != 0)
  {
LABEL_4:
    self->_domain = *(v4 + 8);
    *&self->_has |= 4u;
  }

LABEL_5:
  v7 = v4;
  if (*(v4 + 1))
  {
    [(PPM2AttributedFeedback *)self setActiveTreatments:?];
    v4 = v7;
  }

  if (*(v4 + 3))
  {
    [(PPM2AttributedFeedback *)self setClientId:?];
    v4 = v7;
  }

  if (*(v4 + 6))
  {
    [(PPM2AttributedFeedback *)self setMappingId:?];
    v4 = v7;
  }

  v6 = *(v4 + 68);
  if ((v6 & 0x10) != 0)
  {
    self->_type = *(v4 + 15);
    *&self->_has |= 0x10u;
    v6 = *(v4 + 68);
  }

  if ((v6 & 2) != 0)
  {
    self->_category = *(v4 + 5);
    *&self->_has |= 2u;
  }

  if (*(v4 + 5))
  {
    [(PPM2AttributedFeedback *)self setDynamicCategory:?];
    v4 = v7;
  }

  if ((*(v4 + 68) & 0x20) != 0)
  {
    self->_isRemote = *(v4 + 64);
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_38;
  }

  v5 = *(v4 + 68);
  if ((*&self->_has & 8) != 0)
  {
    if ((*(v4 + 68) & 8) == 0 || self->_source != *(v4 + 14))
    {
      goto LABEL_38;
    }
  }

  else if ((*(v4 + 68) & 8) != 0)
  {
    goto LABEL_38;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 68) & 1) == 0 || self->_algorithm != *(v4 + 4))
    {
      goto LABEL_38;
    }
  }

  else if (*(v4 + 68))
  {
    goto LABEL_38;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 68) & 4) == 0 || self->_domain != *(v4 + 8))
    {
      goto LABEL_38;
    }
  }

  else if ((*(v4 + 68) & 4) != 0)
  {
    goto LABEL_38;
  }

  activeTreatments = self->_activeTreatments;
  if (activeTreatments | *(v4 + 1) && ![(NSString *)activeTreatments isEqual:?])
  {
    goto LABEL_38;
  }

  clientId = self->_clientId;
  if (clientId | *(v4 + 3))
  {
    if (![(NSString *)clientId isEqual:?])
    {
      goto LABEL_38;
    }
  }

  mappingId = self->_mappingId;
  if (mappingId | *(v4 + 6))
  {
    if (![(NSString *)mappingId isEqual:?])
    {
      goto LABEL_38;
    }
  }

  has = self->_has;
  v10 = *(v4 + 68);
  if ((has & 0x10) != 0)
  {
    if ((*(v4 + 68) & 0x10) == 0 || self->_type != *(v4 + 15))
    {
      goto LABEL_38;
    }
  }

  else if ((*(v4 + 68) & 0x10) != 0)
  {
    goto LABEL_38;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 68) & 2) == 0 || self->_category != *(v4 + 5))
    {
      goto LABEL_38;
    }
  }

  else if ((*(v4 + 68) & 2) != 0)
  {
    goto LABEL_38;
  }

  dynamicCategory = self->_dynamicCategory;
  if (dynamicCategory | *(v4 + 5))
  {
    if (![(NSString *)dynamicCategory isEqual:?])
    {
      goto LABEL_38;
    }

    has = self->_has;
    v10 = *(v4 + 68);
  }

  v12 = (v10 & 0x20) == 0;
  if ((has & 0x20) != 0)
  {
    if ((v10 & 0x20) != 0)
    {
      if (self->_isRemote)
      {
        if ((*(v4 + 64) & 1) == 0)
        {
          goto LABEL_38;
        }
      }

      else if (*(v4 + 64))
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
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
  v8 = [(NSString *)self->_activeTreatments copyWithZone:a3];
  v9 = *(v6 + 8);
  *(v6 + 8) = v8;

  v10 = [(NSString *)self->_clientId copyWithZone:a3];
  v11 = *(v6 + 24);
  *(v6 + 24) = v10;

  v12 = [(NSString *)self->_mappingId copyWithZone:a3];
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

  v15 = [(NSString *)self->_dynamicCategory copyWithZone:a3];
  v16 = *(v6 + 40);
  *(v6 + 40) = v15;

  if ((*&self->_has & 0x20) != 0)
  {
    *(v6 + 64) = self->_isRemote;
    *(v6 + 68) |= 0x20u;
  }

  return v6;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if ((has & 8) != 0)
  {
    v4[14] = self->_source;
    *(v4 + 68) |= 8u;
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

  v4[4] = self->_algorithm;
  *(v4 + 68) |= 1u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    v4[8] = self->_domain;
    *(v4 + 68) |= 4u;
  }

LABEL_5:
  v7 = v4;
  if (self->_activeTreatments)
  {
    [v4 setActiveTreatments:?];
    v4 = v7;
  }

  if (self->_clientId)
  {
    [v7 setClientId:?];
    v4 = v7;
  }

  if (self->_mappingId)
  {
    [v7 setMappingId:?];
    v4 = v7;
  }

  v6 = self->_has;
  if ((v6 & 0x10) != 0)
  {
    v4[15] = self->_type;
    *(v4 + 68) |= 0x10u;
    v6 = self->_has;
  }

  if ((v6 & 2) != 0)
  {
    v4[5] = self->_category;
    *(v4 + 68) |= 2u;
  }

  if (self->_dynamicCategory)
  {
    [v7 setDynamicCategory:?];
    v4 = v7;
  }

  if ((*&self->_has & 0x20) != 0)
  {
    *(v4 + 64) = self->_isRemote;
    *(v4 + 68) |= 0x20u;
  }
}

- (void)writeTo:(id)a3
{
  v12 = a3;
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
  v3 = [MEMORY[0x277CBEB38] dictionary];
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

    [v3 setObject:v6 forKey:@"source"];

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

  [v3 setObject:v8 forKey:@"algorithm"];

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

    [v3 setObject:v10 forKey:@"domain"];
  }

LABEL_17:
  activeTreatments = self->_activeTreatments;
  if (activeTreatments)
  {
    [v3 setObject:activeTreatments forKey:@"activeTreatments"];
  }

  clientId = self->_clientId;
  if (clientId)
  {
    [v3 setObject:clientId forKey:@"clientId"];
  }

  mappingId = self->_mappingId;
  if (mappingId)
  {
    [v3 setObject:mappingId forKey:@"mappingId"];
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

    [v3 setObject:v16 forKey:@"type"];

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

    [v3 setObject:v18 forKey:@"category"];
  }

  dynamicCategory = self->_dynamicCategory;
  if (dynamicCategory)
  {
    [v3 setObject:dynamicCategory forKey:@"dynamicCategory"];
  }

  if ((*&self->_has & 0x20) != 0)
  {
    v20 = [MEMORY[0x277CCABB0] numberWithBool:self->_isRemote];
    [v3 setObject:v20 forKey:@"isRemote"];
  }

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = PPM2AttributedFeedback;
  v4 = [(PPM2AttributedFeedback *)&v8 description];
  v5 = [(PPM2AttributedFeedback *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (void)setHasIsRemote:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (int)StringAsCategory:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"UnknownCategory"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"Person"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"Organization"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"Location"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"Restaurant"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"ActivityLocation"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"Media"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"Artist"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"StreetAddress"])
  {
    v4 = 8;
  }

  else if ([v3 isEqualToString:@"City"])
  {
    v4 = 9;
  }

  else if ([v3 isEqualToString:@"State"])
  {
    v4 = 10;
  }

  else if ([v3 isEqualToString:@"Country"])
  {
    v4 = 11;
  }

  else if ([v3 isEqualToString:@"FullAddress"])
  {
    v4 = 12;
  }

  else if ([v3 isEqualToString:@"TouristAttraction"])
  {
    v4 = 13;
  }

  else if ([v3 isEqualToString:@"EventTitle"])
  {
    v4 = 14;
  }

  else if ([v3 isEqualToString:@"SportsTeam"])
  {
    v4 = 15;
  }

  else if ([v3 isEqualToString:@"ProfessionalAthlete"])
  {
    v4 = 16;
  }

  else if ([v3 isEqualToString:@"Musician"])
  {
    v4 = 17;
  }

  else if ([v3 isEqualToString:@"Movie"])
  {
    v4 = 18;
  }

  else if ([v3 isEqualToString:@"Dynamic"])
  {
    v4 = 19;
  }

  else if ([v3 isEqualToString:@"Politician"])
  {
    v4 = 20;
  }

  else if ([v3 isEqualToString:@"TelevisionShow"])
  {
    v4 = 21;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasCategory:(BOOL)a3
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

- (int)StringAsType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Invalid"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"EngagedExplicit"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"EngagedImplicit"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"RejectedExplicit"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"RejectedImplicit"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"Offered"])
  {
    v4 = 5;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasType:(BOOL)a3
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