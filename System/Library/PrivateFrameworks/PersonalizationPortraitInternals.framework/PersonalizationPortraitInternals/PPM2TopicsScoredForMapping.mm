@interface PPM2TopicsScoredForMapping
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasError:(BOOL)error;
- (void)setHasExclusionSpec:(BOOL)spec;
- (void)setHasLimitHit:(BOOL)hit;
- (void)setHasTimeLimited:(BOOL)limited;
- (void)setHasTimeSpec:(BOOL)spec;
- (void)writeTo:(id)to;
@end

@implementation PPM2TopicsScoredForMapping

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v6 = fromCopy;
  if (*(fromCopy + 2))
  {
    [(PPM2TopicsScoredForMapping *)self setBundleId:?];
    fromCopy = v6;
  }

  if (*(fromCopy + 3))
  {
    [(PPM2TopicsScoredForMapping *)self setMappingId:?];
    fromCopy = v6;
  }

  v5 = *(fromCopy + 44);
  if (v5)
  {
    self->_resultSizeLog10 = *(fromCopy + 8);
    *&self->_has |= 1u;
    v5 = *(fromCopy + 44);
    if ((v5 & 0x10) == 0)
    {
LABEL_7:
      if ((v5 & 4) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_19;
    }
  }

  else if ((*(fromCopy + 44) & 0x10) == 0)
  {
    goto LABEL_7;
  }

  self->_timeLimited = *(fromCopy + 39);
  *&self->_has |= 0x10u;
  v5 = *(fromCopy + 44);
  if ((v5 & 4) == 0)
  {
LABEL_8:
    if ((v5 & 2) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

LABEL_19:
  self->_exclusionSpec = *(fromCopy + 37);
  *&self->_has |= 4u;
  v5 = *(fromCopy + 44);
  if ((v5 & 2) == 0)
  {
LABEL_9:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

LABEL_20:
  self->_error = *(fromCopy + 36);
  *&self->_has |= 2u;
  v5 = *(fromCopy + 44);
  if ((v5 & 0x20) == 0)
  {
LABEL_10:
    if ((v5 & 8) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_21:
  self->_timeSpec = *(fromCopy + 40);
  *&self->_has |= 0x20u;
  if ((*(fromCopy + 44) & 8) != 0)
  {
LABEL_11:
    self->_limitHit = *(fromCopy + 38);
    *&self->_has |= 8u;
  }

LABEL_12:
  if (*(fromCopy + 1))
  {
    [(PPM2TopicsScoredForMapping *)self setActiveTreatments:?];
    fromCopy = v6;
  }
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_bundleId hash];
  v4 = [(NSString *)self->_mappingId hash];
  if (*&self->_has)
  {
    v5 = 2654435761 * self->_resultSizeLog10;
    if ((*&self->_has & 0x10) != 0)
    {
LABEL_3:
      v6 = 2654435761 * self->_timeLimited;
      if ((*&self->_has & 4) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v5 = 0;
    if ((*&self->_has & 0x10) != 0)
    {
      goto LABEL_3;
    }
  }

  v6 = 0;
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    v7 = 2654435761 * self->_exclusionSpec;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  v7 = 0;
  if ((*&self->_has & 2) != 0)
  {
LABEL_5:
    v8 = 2654435761 * self->_error;
    if ((*&self->_has & 0x20) != 0)
    {
      goto LABEL_6;
    }

LABEL_12:
    v9 = 0;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_7;
    }

LABEL_13:
    v10 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ [(NSString *)self->_activeTreatments hash];
  }

LABEL_11:
  v8 = 0;
  if ((*&self->_has & 0x20) == 0)
  {
    goto LABEL_12;
  }

LABEL_6:
  v9 = 2654435761 * self->_timeSpec;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_13;
  }

LABEL_7:
  v10 = 2654435761 * self->_limitHit;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ [(NSString *)self->_activeTreatments hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_53;
  }

  bundleId = self->_bundleId;
  if (bundleId | *(equalCopy + 2))
  {
    if (![(NSString *)bundleId isEqual:?])
    {
      goto LABEL_53;
    }
  }

  mappingId = self->_mappingId;
  if (mappingId | *(equalCopy + 3))
  {
    if (![(NSString *)mappingId isEqual:?])
    {
      goto LABEL_53;
    }
  }

  v7 = *(equalCopy + 44);
  if (*&self->_has)
  {
    if ((*(equalCopy + 44) & 1) == 0 || self->_resultSizeLog10 != *(equalCopy + 8))
    {
      goto LABEL_53;
    }
  }

  else if (*(equalCopy + 44))
  {
    goto LABEL_53;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    if ((*(equalCopy + 44) & 0x10) == 0)
    {
      goto LABEL_53;
    }

    v10 = *(equalCopy + 39);
    if (self->_timeLimited)
    {
      if ((*(equalCopy + 39) & 1) == 0)
      {
        goto LABEL_53;
      }
    }

    else if (*(equalCopy + 39))
    {
      goto LABEL_53;
    }
  }

  else if ((*(equalCopy + 44) & 0x10) != 0)
  {
    goto LABEL_53;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 44) & 4) == 0)
    {
      goto LABEL_53;
    }

    v11 = *(equalCopy + 37);
    if (self->_exclusionSpec)
    {
      if ((*(equalCopy + 37) & 1) == 0)
      {
        goto LABEL_53;
      }
    }

    else if (*(equalCopy + 37))
    {
      goto LABEL_53;
    }
  }

  else if ((*(equalCopy + 44) & 4) != 0)
  {
    goto LABEL_53;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 44) & 2) == 0)
    {
      goto LABEL_53;
    }

    v12 = *(equalCopy + 36);
    if (self->_error)
    {
      if ((*(equalCopy + 36) & 1) == 0)
      {
        goto LABEL_53;
      }
    }

    else if (*(equalCopy + 36))
    {
      goto LABEL_53;
    }
  }

  else if ((*(equalCopy + 44) & 2) != 0)
  {
    goto LABEL_53;
  }

  if ((*&self->_has & 0x20) != 0)
  {
    if ((*(equalCopy + 44) & 0x20) == 0)
    {
      goto LABEL_53;
    }

    v13 = *(equalCopy + 40);
    if (self->_timeSpec)
    {
      if ((*(equalCopy + 40) & 1) == 0)
      {
        goto LABEL_53;
      }
    }

    else if (*(equalCopy + 40))
    {
      goto LABEL_53;
    }
  }

  else if ((*(equalCopy + 44) & 0x20) != 0)
  {
    goto LABEL_53;
  }

  if ((*&self->_has & 8) == 0)
  {
    if ((*(equalCopy + 44) & 8) == 0)
    {
      goto LABEL_21;
    }

LABEL_53:
    v9 = 0;
    goto LABEL_54;
  }

  if ((*(equalCopy + 44) & 8) == 0)
  {
    goto LABEL_53;
  }

  v14 = *(equalCopy + 38);
  if (self->_limitHit)
  {
    if ((*(equalCopy + 38) & 1) == 0)
    {
      goto LABEL_53;
    }
  }

  else if (*(equalCopy + 38))
  {
    goto LABEL_53;
  }

LABEL_21:
  activeTreatments = self->_activeTreatments;
  if (activeTreatments | *(equalCopy + 1))
  {
    v9 = [(NSString *)activeTreatments isEqual:?];
  }

  else
  {
    v9 = 1;
  }

LABEL_54:

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_bundleId copyWithZone:zone];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  v8 = [(NSString *)self->_mappingId copyWithZone:zone];
  v9 = *(v5 + 24);
  *(v5 + 24) = v8;

  has = self->_has;
  if (has)
  {
    *(v5 + 32) = self->_resultSizeLog10;
    *(v5 + 44) |= 1u;
    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 39) = self->_timeLimited;
  *(v5 + 44) |= 0x10u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  *(v5 + 37) = self->_exclusionSpec;
  *(v5 + 44) |= 4u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_5:
    if ((has & 0x20) == 0)
    {
      goto LABEL_6;
    }

LABEL_13:
    *(v5 + 40) = self->_timeSpec;
    *(v5 + 44) |= 0x20u;
    if ((*&self->_has & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_12:
  *(v5 + 36) = self->_error;
  *(v5 + 44) |= 2u;
  has = self->_has;
  if ((has & 0x20) != 0)
  {
    goto LABEL_13;
  }

LABEL_6:
  if ((has & 8) != 0)
  {
LABEL_7:
    *(v5 + 38) = self->_limitHit;
    *(v5 + 44) |= 8u;
  }

LABEL_8:
  v11 = [(NSString *)self->_activeTreatments copyWithZone:zone];
  v12 = *(v5 + 8);
  *(v5 + 8) = v11;

  return v5;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_bundleId)
  {
    [toCopy setBundleId:?];
    toCopy = v6;
  }

  if (self->_mappingId)
  {
    [v6 setMappingId:?];
    toCopy = v6;
  }

  has = self->_has;
  if (has)
  {
    *(toCopy + 8) = self->_resultSizeLog10;
    *(toCopy + 44) |= 1u;
    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_7:
      if ((has & 4) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_19;
    }
  }

  else if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_7;
  }

  *(toCopy + 39) = self->_timeLimited;
  *(toCopy + 44) |= 0x10u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_8:
    if ((has & 2) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

LABEL_19:
  *(toCopy + 37) = self->_exclusionSpec;
  *(toCopy + 44) |= 4u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_9:
    if ((has & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

LABEL_20:
  *(toCopy + 36) = self->_error;
  *(toCopy + 44) |= 2u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_10:
    if ((has & 8) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_21:
  *(toCopy + 40) = self->_timeSpec;
  *(toCopy + 44) |= 0x20u;
  if ((*&self->_has & 8) != 0)
  {
LABEL_11:
    *(toCopy + 38) = self->_limitHit;
    *(toCopy + 44) |= 8u;
  }

LABEL_12:
  if (self->_activeTreatments)
  {
    [v6 setActiveTreatments:?];
    toCopy = v6;
  }
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v12 = toCopy;
  if (self->_bundleId)
  {
    PBDataWriterWriteStringField();
    toCopy = v12;
  }

  if (self->_mappingId)
  {
    PBDataWriterWriteStringField();
    toCopy = v12;
  }

  has = self->_has;
  if (has)
  {
    resultSizeLog10 = self->_resultSizeLog10;
    PBDataWriterWriteUint32Field();
    toCopy = v12;
    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_7:
      if ((has & 4) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_19;
    }
  }

  else if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_7;
  }

  timeLimited = self->_timeLimited;
  PBDataWriterWriteBOOLField();
  toCopy = v12;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_8:
    if ((has & 2) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

LABEL_19:
  exclusionSpec = self->_exclusionSpec;
  PBDataWriterWriteBOOLField();
  toCopy = v12;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_9:
    if ((has & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

LABEL_20:
  error = self->_error;
  PBDataWriterWriteBOOLField();
  toCopy = v12;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_10:
    if ((has & 8) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_21:
  timeSpec = self->_timeSpec;
  PBDataWriterWriteBOOLField();
  toCopy = v12;
  if ((*&self->_has & 8) != 0)
  {
LABEL_11:
    limitHit = self->_limitHit;
    PBDataWriterWriteBOOLField();
    toCopy = v12;
  }

LABEL_12:
  if (self->_activeTreatments)
  {
    PBDataWriterWriteStringField();
    toCopy = v12;
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  bundleId = self->_bundleId;
  if (bundleId)
  {
    [dictionary setObject:bundleId forKey:@"bundleId"];
  }

  mappingId = self->_mappingId;
  if (mappingId)
  {
    [v4 setObject:mappingId forKey:@"mappingId"];
  }

  has = self->_has;
  if (has)
  {
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_resultSizeLog10];
    [v4 setObject:v11 forKey:@"resultSizeLog10"];

    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_7:
      if ((has & 4) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_19;
    }
  }

  else if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_7;
  }

  v12 = [MEMORY[0x277CCABB0] numberWithBool:self->_timeLimited];
  [v4 setObject:v12 forKey:@"timeLimited"];

  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_8:
    if ((has & 2) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

LABEL_19:
  v13 = [MEMORY[0x277CCABB0] numberWithBool:self->_exclusionSpec];
  [v4 setObject:v13 forKey:@"exclusionSpec"];

  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_9:
    if ((has & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

LABEL_20:
  v14 = [MEMORY[0x277CCABB0] numberWithBool:self->_error];
  [v4 setObject:v14 forKey:@"error"];

  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_10:
    if ((has & 8) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_21:
  v15 = [MEMORY[0x277CCABB0] numberWithBool:self->_timeSpec];
  [v4 setObject:v15 forKey:@"timeSpec"];

  if ((*&self->_has & 8) != 0)
  {
LABEL_11:
    v8 = [MEMORY[0x277CCABB0] numberWithBool:self->_limitHit];
    [v4 setObject:v8 forKey:@"limitHit"];
  }

LABEL_12:
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
  v8.super_class = PPM2TopicsScoredForMapping;
  v4 = [(PPM2TopicsScoredForMapping *)&v8 description];
  dictionaryRepresentation = [(PPM2TopicsScoredForMapping *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (void)setHasLimitHit:(BOOL)hit
{
  if (hit)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasTimeSpec:(BOOL)spec
{
  if (spec)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (void)setHasError:(BOOL)error
{
  if (error)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasExclusionSpec:(BOOL)spec
{
  if (spec)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasTimeLimited:(BOOL)limited
{
  if (limited)
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