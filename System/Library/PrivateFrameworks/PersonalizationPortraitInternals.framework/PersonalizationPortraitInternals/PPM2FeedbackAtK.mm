@interface PPM2FeedbackAtK
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsDomain:(id)domain;
- (int)StringAsFeedbackType:(id)type;
- (int)domain;
- (int)feedbackType;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasDomain:(BOOL)domain;
- (void)setHasEvaluatedCount:(BOOL)count;
- (void)setHasFeedbackType:(BOOL)type;
- (void)setHasK:(BOOL)k;
- (void)writeTo:(id)to;
@end

@implementation PPM2FeedbackAtK

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = *(fromCopy + 36);
  if ((v5 & 0x10) != 0)
  {
    self->_k = *(fromCopy + 8);
    *&self->_has |= 0x10u;
    v5 = *(fromCopy + 36);
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

  else if ((*(fromCopy + 36) & 4) == 0)
  {
    goto LABEL_3;
  }

  self->_evaluatedCount = *(fromCopy + 6);
  *&self->_has |= 4u;
  v5 = *(fromCopy + 36);
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
  self->_domain = *(fromCopy + 5);
  *&self->_has |= 2u;
  if ((*(fromCopy + 36) & 8) != 0)
  {
LABEL_5:
    self->_feedbackType = *(fromCopy + 7);
    *&self->_has |= 8u;
  }

LABEL_6:
  if (*(fromCopy + 1))
  {
    v6 = fromCopy;
    [(PPM2FeedbackAtK *)self setActiveTreatments:?];
    fromCopy = v6;
  }

  if (*(fromCopy + 36))
  {
    self->_bucket = *(fromCopy + 4);
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_29;
  }

  has = self->_has;
  v6 = *(equalCopy + 36);
  if ((has & 0x10) != 0)
  {
    if ((*(equalCopy + 36) & 0x10) == 0 || self->_k != *(equalCopy + 8))
    {
      goto LABEL_29;
    }
  }

  else if ((*(equalCopy + 36) & 0x10) != 0)
  {
    goto LABEL_29;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 36) & 4) == 0 || self->_evaluatedCount != *(equalCopy + 6))
    {
      goto LABEL_29;
    }
  }

  else if ((*(equalCopy + 36) & 4) != 0)
  {
    goto LABEL_29;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 36) & 2) == 0 || self->_domain != *(equalCopy + 5))
    {
      goto LABEL_29;
    }
  }

  else if ((*(equalCopy + 36) & 2) != 0)
  {
    goto LABEL_29;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(equalCopy + 36) & 8) == 0 || self->_feedbackType != *(equalCopy + 7))
    {
      goto LABEL_29;
    }
  }

  else if ((*(equalCopy + 36) & 8) != 0)
  {
    goto LABEL_29;
  }

  activeTreatments = self->_activeTreatments;
  if (activeTreatments | *(equalCopy + 1))
  {
    if (![(NSString *)activeTreatments isEqual:?])
    {
LABEL_29:
      v8 = 0;
      goto LABEL_30;
    }

    has = self->_has;
    v6 = *(equalCopy + 36);
  }

  v8 = (v6 & 1) == 0;
  if (has)
  {
    if ((v6 & 1) == 0 || self->_bucket != *(equalCopy + 4))
    {
      goto LABEL_29;
    }

    v8 = 1;
  }

LABEL_30:

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
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
  v8 = [(NSString *)self->_activeTreatments copyWithZone:zone];
  v9 = *(v6 + 8);
  *(v6 + 8) = v8;

  if (*&self->_has)
  {
    *(v6 + 16) = self->_bucket;
    *(v6 + 36) |= 1u;
  }

  return v6;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((has & 0x10) != 0)
  {
    toCopy[8] = self->_k;
    *(toCopy + 36) |= 0x10u;
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

  toCopy[6] = self->_evaluatedCount;
  *(toCopy + 36) |= 4u;
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
  toCopy[5] = self->_domain;
  *(toCopy + 36) |= 2u;
  if ((*&self->_has & 8) != 0)
  {
LABEL_5:
    toCopy[7] = self->_feedbackType;
    *(toCopy + 36) |= 8u;
  }

LABEL_6:
  if (self->_activeTreatments)
  {
    v6 = toCopy;
    [toCopy setActiveTreatments:?];
    toCopy = v6;
  }

  if (*&self->_has)
  {
    toCopy[4] = self->_bucket;
    *(toCopy + 36) |= 1u;
  }
}

- (void)writeTo:(id)to
{
  toCopy = to;
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
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if ((has & 0x10) != 0)
  {
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_k];
    [dictionary setObject:v5 forKey:@"k"];

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
  [dictionary setObject:v6 forKey:@"evaluatedCount"];

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

  [dictionary setObject:v8 forKey:@"domain"];

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

    [dictionary setObject:v10 forKey:@"feedbackType"];
  }

LABEL_16:
  activeTreatments = self->_activeTreatments;
  if (activeTreatments)
  {
    [dictionary setObject:activeTreatments forKey:@"activeTreatments"];
  }

  if (*&self->_has)
  {
    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_bucket];
    [dictionary setObject:v12 forKey:@"bucket"];
  }

  return dictionary;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = PPM2FeedbackAtK;
  v4 = [(PPM2FeedbackAtK *)&v8 description];
  dictionaryRepresentation = [(PPM2FeedbackAtK *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (int)StringAsFeedbackType:(id)type
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

- (void)setHasFeedbackType:(BOOL)type
{
  if (type)
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

- (void)setHasEvaluatedCount:(BOOL)count
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

- (void)setHasK:(BOOL)k
{
  if (k)
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