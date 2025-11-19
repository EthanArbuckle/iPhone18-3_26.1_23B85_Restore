@interface PPM2EngagementRatio
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsDomain:(id)a3;
- (int)domain;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasEngagedCount:(BOOL)a3;
- (void)setHasEvaluatedCount:(BOOL)a3;
- (void)setHasK:(BOOL)a3;
- (void)setHasOfferedCount:(BOOL)a3;
- (void)setHasRejectedCount:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation PPM2EngagementRatio

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 48);
  if ((v5 & 8) != 0)
  {
    self->_k = *(v4 + 7);
    *&self->_has |= 8u;
    v5 = *(v4 + 48);
    if ((v5 & 4) == 0)
    {
LABEL_3:
      if ((v5 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_18;
    }
  }

  else if ((*(v4 + 48) & 4) == 0)
  {
    goto LABEL_3;
  }

  self->_evaluatedCount = *(v4 + 6);
  *&self->_has |= 4u;
  v5 = *(v4 + 48);
  if ((v5 & 2) == 0)
  {
LABEL_4:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_18:
  self->_engagedCount = *(v4 + 5);
  *&self->_has |= 2u;
  v5 = *(v4 + 48);
  if ((v5 & 0x20) == 0)
  {
LABEL_5:
    if ((v5 & 1) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_19:
  self->_rejectedCount = *(v4 + 11);
  *&self->_has |= 0x20u;
  if (*(v4 + 48))
  {
LABEL_6:
    self->_domain = *(v4 + 4);
    *&self->_has |= 1u;
  }

LABEL_7:
  v6 = v4;
  if (*(v4 + 1))
  {
    [(PPM2EngagementRatio *)self setActiveTreatments:?];
    v4 = v6;
  }

  if ((*(v4 + 48) & 0x10) != 0)
  {
    self->_offeredCount = *(v4 + 10);
    *&self->_has |= 0x10u;
  }

  if (*(v4 + 4))
  {
    [(PPM2EngagementRatio *)self setMappingId:?];
    v4 = v6;
  }
}

- (unint64_t)hash
{
  if ((*&self->_has & 8) != 0)
  {
    v3 = 2654435761 * self->_k;
    if ((*&self->_has & 4) != 0)
    {
LABEL_3:
      v4 = 2654435761 * self->_evaluatedCount;
      if ((*&self->_has & 2) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v3 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_3;
    }
  }

  v4 = 0;
  if ((*&self->_has & 2) != 0)
  {
LABEL_4:
    v5 = 2654435761 * self->_engagedCount;
    if ((*&self->_has & 0x20) != 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    v6 = 0;
    if (*&self->_has)
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }

LABEL_9:
  v5 = 0;
  if ((*&self->_has & 0x20) == 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  v6 = 2654435761 * self->_rejectedCount;
  if (*&self->_has)
  {
LABEL_6:
    v7 = 2654435761 * self->_domain;
    goto LABEL_12;
  }

LABEL_11:
  v7 = 0;
LABEL_12:
  v8 = [(NSString *)self->_activeTreatments hash];
  if ((*&self->_has & 0x10) != 0)
  {
    v9 = 2654435761 * self->_offeredCount;
  }

  else
  {
    v9 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v9 ^ v8 ^ [(NSString *)self->_mappingId hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_37;
  }

  has = self->_has;
  v6 = *(v4 + 48);
  if ((has & 8) != 0)
  {
    if ((*(v4 + 48) & 8) == 0 || self->_k != *(v4 + 7))
    {
      goto LABEL_37;
    }
  }

  else if ((*(v4 + 48) & 8) != 0)
  {
    goto LABEL_37;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 48) & 4) == 0 || self->_evaluatedCount != *(v4 + 6))
    {
      goto LABEL_37;
    }
  }

  else if ((*(v4 + 48) & 4) != 0)
  {
    goto LABEL_37;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 48) & 2) == 0 || self->_engagedCount != *(v4 + 5))
    {
      goto LABEL_37;
    }
  }

  else if ((*(v4 + 48) & 2) != 0)
  {
    goto LABEL_37;
  }

  if ((*&self->_has & 0x20) != 0)
  {
    if ((*(v4 + 48) & 0x20) == 0 || self->_rejectedCount != *(v4 + 11))
    {
      goto LABEL_37;
    }
  }

  else if ((*(v4 + 48) & 0x20) != 0)
  {
    goto LABEL_37;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 48) & 1) == 0 || self->_domain != *(v4 + 4))
    {
      goto LABEL_37;
    }
  }

  else if (*(v4 + 48))
  {
    goto LABEL_37;
  }

  activeTreatments = self->_activeTreatments;
  if (activeTreatments | *(v4 + 1))
  {
    if (![(NSString *)activeTreatments isEqual:?])
    {
LABEL_37:
      v9 = 0;
      goto LABEL_38;
    }

    has = self->_has;
    v6 = *(v4 + 48);
  }

  if ((has & 0x10) != 0)
  {
    if ((v6 & 0x10) == 0 || self->_offeredCount != *(v4 + 10))
    {
      goto LABEL_37;
    }
  }

  else if ((v6 & 0x10) != 0)
  {
    goto LABEL_37;
  }

  mappingId = self->_mappingId;
  if (mappingId | *(v4 + 4))
  {
    v9 = [(NSString *)mappingId isEqual:?];
  }

  else
  {
    v9 = 1;
  }

LABEL_38:

  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  has = self->_has;
  if ((has & 8) != 0)
  {
    *(v5 + 28) = self->_k;
    *(v5 + 48) |= 8u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 24) = self->_evaluatedCount;
  *(v5 + 48) |= 4u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_4:
    if ((has & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  *(v5 + 20) = self->_engagedCount;
  *(v5 + 48) |= 2u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_5:
    if ((has & 1) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_13:
  *(v5 + 44) = self->_rejectedCount;
  *(v5 + 48) |= 0x20u;
  if (*&self->_has)
  {
LABEL_6:
    *(v5 + 16) = self->_domain;
    *(v5 + 48) |= 1u;
  }

LABEL_7:
  v8 = [(NSString *)self->_activeTreatments copyWithZone:a3];
  v9 = *(v6 + 8);
  *(v6 + 8) = v8;

  if ((*&self->_has & 0x10) != 0)
  {
    *(v6 + 40) = self->_offeredCount;
    *(v6 + 48) |= 0x10u;
  }

  v10 = [(NSString *)self->_mappingId copyWithZone:a3];
  v11 = *(v6 + 32);
  *(v6 + 32) = v10;

  return v6;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if ((has & 8) != 0)
  {
    v4[7] = self->_k;
    *(v4 + 48) |= 8u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_18;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  v4[6] = self->_evaluatedCount;
  *(v4 + 48) |= 4u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_4:
    if ((has & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_18:
  v4[5] = self->_engagedCount;
  *(v4 + 48) |= 2u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_5:
    if ((has & 1) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_19:
  v4[11] = self->_rejectedCount;
  *(v4 + 48) |= 0x20u;
  if (*&self->_has)
  {
LABEL_6:
    v4[4] = self->_domain;
    *(v4 + 48) |= 1u;
  }

LABEL_7:
  v6 = v4;
  if (self->_activeTreatments)
  {
    [v4 setActiveTreatments:?];
    v4 = v6;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    v4[10] = self->_offeredCount;
    *(v4 + 48) |= 0x10u;
  }

  if (self->_mappingId)
  {
    [v6 setMappingId:?];
    v4 = v6;
  }
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  v12 = v4;
  if ((has & 8) != 0)
  {
    k = self->_k;
    PBDataWriterWriteUint32Field();
    v4 = v12;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_18;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  evaluatedCount = self->_evaluatedCount;
  PBDataWriterWriteUint32Field();
  v4 = v12;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_4:
    if ((has & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_18:
  engagedCount = self->_engagedCount;
  PBDataWriterWriteUint32Field();
  v4 = v12;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_5:
    if ((has & 1) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_19:
  rejectedCount = self->_rejectedCount;
  PBDataWriterWriteUint32Field();
  v4 = v12;
  if (*&self->_has)
  {
LABEL_6:
    domain = self->_domain;
    PBDataWriterWriteInt32Field();
    v4 = v12;
  }

LABEL_7:
  if (self->_activeTreatments)
  {
    PBDataWriterWriteStringField();
    v4 = v12;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    offeredCount = self->_offeredCount;
    PBDataWriterWriteUint32Field();
    v4 = v12;
  }

  if (self->_mappingId)
  {
    PBDataWriterWriteStringField();
    v4 = v12;
  }
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if ((has & 8) != 0)
  {
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_k];
    [v3 setObject:v5 forKey:@"k"];

    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_evaluatedCount];
  [v3 setObject:v6 forKey:@"evaluatedCount"];

  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_4:
    if ((has & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

LABEL_9:
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_engagedCount];
  [v3 setObject:v7 forKey:@"engagedCount"];

  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_5:
    if ((has & 1) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_11;
  }

LABEL_10:
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_rejectedCount];
  [v3 setObject:v8 forKey:@"rejectedCount"];

  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_11:
  domain = self->_domain;
  if (domain >= 8)
  {
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_domain];
  }

  else
  {
    v10 = off_278976C18[domain];
  }

  [v3 setObject:v10 forKey:@"domain"];

LABEL_15:
  activeTreatments = self->_activeTreatments;
  if (activeTreatments)
  {
    [v3 setObject:activeTreatments forKey:@"activeTreatments"];
  }

  if ((*&self->_has & 0x10) != 0)
  {
    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_offeredCount];
    [v3 setObject:v12 forKey:@"offeredCount"];
  }

  mappingId = self->_mappingId;
  if (mappingId)
  {
    [v3 setObject:mappingId forKey:@"mappingId"];
  }

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = PPM2EngagementRatio;
  v4 = [(PPM2EngagementRatio *)&v8 description];
  v5 = [(PPM2EngagementRatio *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (void)setHasOfferedCount:(BOOL)a3
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

- (void)setHasRejectedCount:(BOOL)a3
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

- (void)setHasEngagedCount:(BOOL)a3
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

- (void)setHasEvaluatedCount:(BOOL)a3
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

- (void)setHasK:(BOOL)a3
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

@end