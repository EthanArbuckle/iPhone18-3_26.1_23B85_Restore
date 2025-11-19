@interface PPM2FeedbackAtK
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsDomain:(id)a3;
- (int)StringAsFeedbackType:(id)a3;
- (int)domain;
- (int)feedbackType;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasDomain:(BOOL)a3;
- (void)setHasEvaluatedCount:(BOOL)a3;
- (void)setHasFeedbackType:(BOOL)a3;
- (void)setHasK:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation PPM2FeedbackAtK

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 36);
  if ((v5 & 0x10) != 0)
  {
    self->_k = *(v4 + 8);
    *&self->_has |= 0x10u;
    v5 = *(v4 + 36);
    if ((v5 & 4) == 0)
    {
LABEL_3:
      if ((v5 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if ((*(v4 + 36) & 4) == 0)
  {
    goto LABEL_3;
  }

  self->_evaluatedCount = *(v4 + 6);
  *&self->_has |= 4u;
  v5 = *(v4 + 36);
  if ((v5 & 2) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_15:
  self->_domain = *(v4 + 5);
  *&self->_has |= 2u;
  if ((*(v4 + 36) & 8) != 0)
  {
LABEL_5:
    self->_feedbackType = *(v4 + 7);
    *&self->_has |= 8u;
  }

LABEL_6:
  if (*(v4 + 1))
  {
    v6 = v4;
    [(PPM2FeedbackAtK *)self setActiveTreatments:?];
    v4 = v6;
  }

  if (*(v4 + 36))
  {
    self->_bucket = *(v4 + 4);
    *&self->_has |= 1u;
  }
}

- (unint64_t)hash
{
  if ((*&self->_has & 0x10) != 0)
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

LABEL_8:
      v5 = 0;
      if ((*&self->_has & 8) != 0)
      {
        goto LABEL_5;
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
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = 2654435761 * self->_domain;
  if ((*&self->_has & 8) != 0)
  {
LABEL_5:
    v6 = 2654435761 * self->_feedbackType;
    goto LABEL_10;
  }

LABEL_9:
  v6 = 0;
LABEL_10:
  v7 = [(NSString *)self->_activeTreatments hash];
  if (*&self->_has)
  {
    v8 = 2654435761 * self->_bucket;
  }

  else
  {
    v8 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v8 ^ v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_29;
  }

  has = self->_has;
  v6 = *(v4 + 36);
  if ((has & 0x10) != 0)
  {
    if ((*(v4 + 36) & 0x10) == 0 || self->_k != *(v4 + 8))
    {
      goto LABEL_29;
    }
  }

  else if ((*(v4 + 36) & 0x10) != 0)
  {
    goto LABEL_29;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 36) & 4) == 0 || self->_evaluatedCount != *(v4 + 6))
    {
      goto LABEL_29;
    }
  }

  else if ((*(v4 + 36) & 4) != 0)
  {
    goto LABEL_29;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 36) & 2) == 0 || self->_domain != *(v4 + 5))
    {
      goto LABEL_29;
    }
  }

  else if ((*(v4 + 36) & 2) != 0)
  {
    goto LABEL_29;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(v4 + 36) & 8) == 0 || self->_feedbackType != *(v4 + 7))
    {
      goto LABEL_29;
    }
  }

  else if ((*(v4 + 36) & 8) != 0)
  {
    goto LABEL_29;
  }

  activeTreatments = self->_activeTreatments;
  if (activeTreatments | *(v4 + 1))
  {
    if (![(NSString *)activeTreatments isEqual:?])
    {
LABEL_29:
      v8 = 0;
      goto LABEL_30;
    }

    has = self->_has;
    v6 = *(v4 + 36);
  }

  v8 = (v6 & 1) == 0;
  if (has)
  {
    if ((v6 & 1) == 0 || self->_bucket != *(v4 + 4))
    {
      goto LABEL_29;
    }

    v8 = 1;
  }

LABEL_30:

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  has = self->_has;
  if ((has & 0x10) != 0)
  {
    *(v5 + 32) = self->_k;
    *(v5 + 36) |= 0x10u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 24) = self->_evaluatedCount;
  *(v5 + 36) |= 4u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  *(v5 + 20) = self->_domain;
  *(v5 + 36) |= 2u;
  if ((*&self->_has & 8) != 0)
  {
LABEL_5:
    *(v5 + 28) = self->_feedbackType;
    *(v5 + 36) |= 8u;
  }

LABEL_6:
  v8 = [(NSString *)self->_activeTreatments copyWithZone:a3];
  v9 = *(v6 + 8);
  *(v6 + 8) = v8;

  if (*&self->_has)
  {
    *(v6 + 16) = self->_bucket;
    *(v6 + 36) |= 1u;
  }

  return v6;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if ((has & 0x10) != 0)
  {
    v4[8] = self->_k;
    *(v4 + 36) |= 0x10u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  v4[6] = self->_evaluatedCount;
  *(v4 + 36) |= 4u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_15:
  v4[5] = self->_domain;
  *(v4 + 36) |= 2u;
  if ((*&self->_has & 8) != 0)
  {
LABEL_5:
    v4[7] = self->_feedbackType;
    *(v4 + 36) |= 8u;
  }

LABEL_6:
  if (self->_activeTreatments)
  {
    v6 = v4;
    [v4 setActiveTreatments:?];
    v4 = v6;
  }

  if (*&self->_has)
  {
    v4[4] = self->_bucket;
    *(v4 + 36) |= 1u;
  }
}

- (void)writeTo:(id)a3
{
  v10 = a3;
  has = self->_has;
  if ((has & 0x10) != 0)
  {
    k = self->_k;
    PBDataWriterWriteUint32Field();
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  evaluatedCount = self->_evaluatedCount;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_15:
  domain = self->_domain;
  PBDataWriterWriteInt32Field();
  if ((*&self->_has & 8) != 0)
  {
LABEL_5:
    feedbackType = self->_feedbackType;
    PBDataWriterWriteInt32Field();
  }

LABEL_6:
  if (self->_activeTreatments)
  {
    PBDataWriterWriteStringField();
  }

  if (*&self->_has)
  {
    bucket = self->_bucket;
    PBDataWriterWriteUint32Field();
  }
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if ((has & 0x10) != 0)
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

      goto LABEL_8;
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
    if ((has & 8) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_12;
  }

LABEL_8:
  domain = self->_domain;
  if (domain >= 8)
  {
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_domain];
  }

  else
  {
    v8 = off_2789742A8[domain];
  }

  [v3 setObject:v8 forKey:@"domain"];

  if ((*&self->_has & 8) != 0)
  {
LABEL_12:
    feedbackType = self->_feedbackType;
    if (feedbackType >= 6)
    {
      v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_feedbackType];
    }

    else
    {
      v10 = off_2789742E8[feedbackType];
    }

    [v3 setObject:v10 forKey:@"feedbackType"];
  }

LABEL_16:
  activeTreatments = self->_activeTreatments;
  if (activeTreatments)
  {
    [v3 setObject:activeTreatments forKey:@"activeTreatments"];
  }

  if (*&self->_has)
  {
    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_bucket];
    [v3 setObject:v12 forKey:@"bucket"];
  }

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = PPM2FeedbackAtK;
  v4 = [(PPM2FeedbackAtK *)&v8 description];
  v5 = [(PPM2FeedbackAtK *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (int)StringAsFeedbackType:(id)a3
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

- (void)setHasFeedbackType:(BOOL)a3
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

- (int)feedbackType
{
  if ((*&self->_has & 8) != 0)
  {
    return self->_feedbackType;
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
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

@end