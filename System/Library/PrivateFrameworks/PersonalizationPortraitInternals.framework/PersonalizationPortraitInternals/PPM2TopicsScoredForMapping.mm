@interface PPM2TopicsScoredForMapping
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasError:(BOOL)a3;
- (void)setHasExclusionSpec:(BOOL)a3;
- (void)setHasLimitHit:(BOOL)a3;
- (void)setHasTimeLimited:(BOOL)a3;
- (void)setHasTimeSpec:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation PPM2TopicsScoredForMapping

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (*(v4 + 2))
  {
    [(PPM2TopicsScoredForMapping *)self setBundleId:?];
    v4 = v6;
  }

  if (*(v4 + 3))
  {
    [(PPM2TopicsScoredForMapping *)self setMappingId:?];
    v4 = v6;
  }

  v5 = *(v4 + 44);
  if (v5)
  {
    self->_resultSizeLog10 = *(v4 + 8);
    *&self->_has |= 1u;
    v5 = *(v4 + 44);
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

  else if ((*(v4 + 44) & 0x10) == 0)
  {
    goto LABEL_7;
  }

  self->_timeLimited = *(v4 + 39);
  *&self->_has |= 0x10u;
  v5 = *(v4 + 44);
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
  self->_exclusionSpec = *(v4 + 37);
  *&self->_has |= 4u;
  v5 = *(v4 + 44);
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
  self->_error = *(v4 + 36);
  *&self->_has |= 2u;
  v5 = *(v4 + 44);
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
  self->_timeSpec = *(v4 + 40);
  *&self->_has |= 0x20u;
  if ((*(v4 + 44) & 8) != 0)
  {
LABEL_11:
    self->_limitHit = *(v4 + 38);
    *&self->_has |= 8u;
  }

LABEL_12:
  if (*(v4 + 1))
  {
    [(PPM2TopicsScoredForMapping *)self setActiveTreatments:?];
    v4 = v6;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_53;
  }

  bundleId = self->_bundleId;
  if (bundleId | *(v4 + 2))
  {
    if (![(NSString *)bundleId isEqual:?])
    {
      goto LABEL_53;
    }
  }

  mappingId = self->_mappingId;
  if (mappingId | *(v4 + 3))
  {
    if (![(NSString *)mappingId isEqual:?])
    {
      goto LABEL_53;
    }
  }

  v7 = *(v4 + 44);
  if (*&self->_has)
  {
    if ((*(v4 + 44) & 1) == 0 || self->_resultSizeLog10 != *(v4 + 8))
    {
      goto LABEL_53;
    }
  }

  else if (*(v4 + 44))
  {
    goto LABEL_53;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    if ((*(v4 + 44) & 0x10) == 0)
    {
      goto LABEL_53;
    }

    v10 = *(v4 + 39);
    if (self->_timeLimited)
    {
      if ((*(v4 + 39) & 1) == 0)
      {
        goto LABEL_53;
      }
    }

    else if (*(v4 + 39))
    {
      goto LABEL_53;
    }
  }

  else if ((*(v4 + 44) & 0x10) != 0)
  {
    goto LABEL_53;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 44) & 4) == 0)
    {
      goto LABEL_53;
    }

    v11 = *(v4 + 37);
    if (self->_exclusionSpec)
    {
      if ((*(v4 + 37) & 1) == 0)
      {
        goto LABEL_53;
      }
    }

    else if (*(v4 + 37))
    {
      goto LABEL_53;
    }
  }

  else if ((*(v4 + 44) & 4) != 0)
  {
    goto LABEL_53;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 44) & 2) == 0)
    {
      goto LABEL_53;
    }

    v12 = *(v4 + 36);
    if (self->_error)
    {
      if ((*(v4 + 36) & 1) == 0)
      {
        goto LABEL_53;
      }
    }

    else if (*(v4 + 36))
    {
      goto LABEL_53;
    }
  }

  else if ((*(v4 + 44) & 2) != 0)
  {
    goto LABEL_53;
  }

  if ((*&self->_has & 0x20) != 0)
  {
    if ((*(v4 + 44) & 0x20) == 0)
    {
      goto LABEL_53;
    }

    v13 = *(v4 + 40);
    if (self->_timeSpec)
    {
      if ((*(v4 + 40) & 1) == 0)
      {
        goto LABEL_53;
      }
    }

    else if (*(v4 + 40))
    {
      goto LABEL_53;
    }
  }

  else if ((*(v4 + 44) & 0x20) != 0)
  {
    goto LABEL_53;
  }

  if ((*&self->_has & 8) == 0)
  {
    if ((*(v4 + 44) & 8) == 0)
    {
      goto LABEL_21;
    }

LABEL_53:
    v9 = 0;
    goto LABEL_54;
  }

  if ((*(v4 + 44) & 8) == 0)
  {
    goto LABEL_53;
  }

  v14 = *(v4 + 38);
  if (self->_limitHit)
  {
    if ((*(v4 + 38) & 1) == 0)
    {
      goto LABEL_53;
    }
  }

  else if (*(v4 + 38))
  {
    goto LABEL_53;
  }

LABEL_21:
  activeTreatments = self->_activeTreatments;
  if (activeTreatments | *(v4 + 1))
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_bundleId copyWithZone:a3];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  v8 = [(NSString *)self->_mappingId copyWithZone:a3];
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
  v11 = [(NSString *)self->_activeTreatments copyWithZone:a3];
  v12 = *(v5 + 8);
  *(v5 + 8) = v11;

  return v5;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_bundleId)
  {
    [v4 setBundleId:?];
    v4 = v6;
  }

  if (self->_mappingId)
  {
    [v6 setMappingId:?];
    v4 = v6;
  }

  has = self->_has;
  if (has)
  {
    *(v4 + 8) = self->_resultSizeLog10;
    *(v4 + 44) |= 1u;
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

  *(v4 + 39) = self->_timeLimited;
  *(v4 + 44) |= 0x10u;
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
  *(v4 + 37) = self->_exclusionSpec;
  *(v4 + 44) |= 4u;
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
  *(v4 + 36) = self->_error;
  *(v4 + 44) |= 2u;
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
  *(v4 + 40) = self->_timeSpec;
  *(v4 + 44) |= 0x20u;
  if ((*&self->_has & 8) != 0)
  {
LABEL_11:
    *(v4 + 38) = self->_limitHit;
    *(v4 + 44) |= 8u;
  }

LABEL_12:
  if (self->_activeTreatments)
  {
    [v6 setActiveTreatments:?];
    v4 = v6;
  }
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v12 = v4;
  if (self->_bundleId)
  {
    PBDataWriterWriteStringField();
    v4 = v12;
  }

  if (self->_mappingId)
  {
    PBDataWriterWriteStringField();
    v4 = v12;
  }

  has = self->_has;
  if (has)
  {
    resultSizeLog10 = self->_resultSizeLog10;
    PBDataWriterWriteUint32Field();
    v4 = v12;
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
  v4 = v12;
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
  v4 = v12;
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
  v4 = v12;
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
  v4 = v12;
  if ((*&self->_has & 8) != 0)
  {
LABEL_11:
    limitHit = self->_limitHit;
    PBDataWriterWriteBOOLField();
    v4 = v12;
  }

LABEL_12:
  if (self->_activeTreatments)
  {
    PBDataWriterWriteStringField();
    v4 = v12;
  }
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  bundleId = self->_bundleId;
  if (bundleId)
  {
    [v3 setObject:bundleId forKey:@"bundleId"];
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
  v5 = [(PPM2TopicsScoredForMapping *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (void)setHasLimitHit:(BOOL)a3
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

- (void)setHasTimeSpec:(BOOL)a3
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

- (void)setHasError:(BOOL)a3
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

- (void)setHasExclusionSpec:(BOOL)a3
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

- (void)setHasTimeLimited:(BOOL)a3
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