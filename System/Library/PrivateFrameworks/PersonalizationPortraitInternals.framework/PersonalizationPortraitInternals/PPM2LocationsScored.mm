@interface PPM2LocationsScored
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

@implementation PPM2LocationsScored

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (*(v4 + 2))
  {
    [(PPM2LocationsScored *)self setBundleId:?];
    v4 = v6;
  }

  v5 = *(v4 + 36);
  if (v5)
  {
    self->_resultSizeLog10 = *(v4 + 6);
    *&self->_has |= 1u;
    v5 = *(v4 + 36);
    if ((v5 & 8) == 0)
    {
LABEL_5:
      if ((v5 & 0x20) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_17;
    }
  }

  else if ((*(v4 + 36) & 8) == 0)
  {
    goto LABEL_5;
  }

  self->_limitHit = *(v4 + 30);
  *&self->_has |= 8u;
  v5 = *(v4 + 36);
  if ((v5 & 0x20) == 0)
  {
LABEL_6:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  self->_timeSpec = *(v4 + 32);
  *&self->_has |= 0x20u;
  v5 = *(v4 + 36);
  if ((v5 & 0x10) == 0)
  {
LABEL_7:
    if ((v5 & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  self->_timeLimited = *(v4 + 31);
  *&self->_has |= 0x10u;
  v5 = *(v4 + 36);
  if ((v5 & 4) == 0)
  {
LABEL_8:
    if ((v5 & 2) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_19:
  self->_exclusionSpec = *(v4 + 29);
  *&self->_has |= 4u;
  if ((*(v4 + 36) & 2) != 0)
  {
LABEL_9:
    self->_error = *(v4 + 28);
    *&self->_has |= 2u;
  }

LABEL_10:
  if (*(v4 + 1))
  {
    [(PPM2LocationsScored *)self setActiveTreatments:?];
    v4 = v6;
  }
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_bundleId hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_resultSizeLog10;
    if ((*&self->_has & 8) != 0)
    {
LABEL_3:
      v5 = 2654435761 * self->_limitHit;
      if ((*&self->_has & 0x20) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v4 = 0;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_3;
    }
  }

  v5 = 0;
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_4:
    v6 = 2654435761 * self->_timeSpec;
    if ((*&self->_has & 0x10) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  v6 = 0;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_5:
    v7 = 2654435761 * self->_timeLimited;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_6;
    }

LABEL_12:
    v8 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_7;
    }

LABEL_13:
    v9 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ [(NSString *)self->_activeTreatments hash];
  }

LABEL_11:
  v7 = 0;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_12;
  }

LABEL_6:
  v8 = 2654435761 * self->_exclusionSpec;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_13;
  }

LABEL_7:
  v9 = 2654435761 * self->_error;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ [(NSString *)self->_activeTreatments hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_51;
  }

  bundleId = self->_bundleId;
  if (bundleId | *(v4 + 2))
  {
    if (![(NSString *)bundleId isEqual:?])
    {
      goto LABEL_51;
    }
  }

  v6 = *(v4 + 36);
  if (*&self->_has)
  {
    if ((*(v4 + 36) & 1) == 0 || self->_resultSizeLog10 != *(v4 + 6))
    {
      goto LABEL_51;
    }
  }

  else if (*(v4 + 36))
  {
    goto LABEL_51;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(v4 + 36) & 8) == 0)
    {
      goto LABEL_51;
    }

    v9 = *(v4 + 30);
    if (self->_limitHit)
    {
      if ((*(v4 + 30) & 1) == 0)
      {
        goto LABEL_51;
      }
    }

    else if (*(v4 + 30))
    {
      goto LABEL_51;
    }
  }

  else if ((*(v4 + 36) & 8) != 0)
  {
    goto LABEL_51;
  }

  if ((*&self->_has & 0x20) != 0)
  {
    if ((*(v4 + 36) & 0x20) == 0)
    {
      goto LABEL_51;
    }

    v10 = *(v4 + 32);
    if (self->_timeSpec)
    {
      if ((*(v4 + 32) & 1) == 0)
      {
        goto LABEL_51;
      }
    }

    else if (*(v4 + 32))
    {
      goto LABEL_51;
    }
  }

  else if ((*(v4 + 36) & 0x20) != 0)
  {
    goto LABEL_51;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    if ((*(v4 + 36) & 0x10) == 0)
    {
      goto LABEL_51;
    }

    v11 = *(v4 + 31);
    if (self->_timeLimited)
    {
      if ((*(v4 + 31) & 1) == 0)
      {
        goto LABEL_51;
      }
    }

    else if (*(v4 + 31))
    {
      goto LABEL_51;
    }
  }

  else if ((*(v4 + 36) & 0x10) != 0)
  {
    goto LABEL_51;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 36) & 4) == 0)
    {
      goto LABEL_51;
    }

    v12 = *(v4 + 29);
    if (self->_exclusionSpec)
    {
      if ((*(v4 + 29) & 1) == 0)
      {
        goto LABEL_51;
      }
    }

    else if (*(v4 + 29))
    {
      goto LABEL_51;
    }
  }

  else if ((*(v4 + 36) & 4) != 0)
  {
    goto LABEL_51;
  }

  if ((*&self->_has & 2) == 0)
  {
    if ((*(v4 + 36) & 2) == 0)
    {
      goto LABEL_19;
    }

LABEL_51:
    v8 = 0;
    goto LABEL_52;
  }

  if ((*(v4 + 36) & 2) == 0)
  {
    goto LABEL_51;
  }

  v13 = *(v4 + 28);
  if (self->_error)
  {
    if ((*(v4 + 28) & 1) == 0)
    {
      goto LABEL_51;
    }
  }

  else if (*(v4 + 28))
  {
    goto LABEL_51;
  }

LABEL_19:
  activeTreatments = self->_activeTreatments;
  if (activeTreatments | *(v4 + 1))
  {
    v8 = [(NSString *)activeTreatments isEqual:?];
  }

  else
  {
    v8 = 1;
  }

LABEL_52:

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_bundleId copyWithZone:a3];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  has = self->_has;
  if (has)
  {
    *(v5 + 24) = self->_resultSizeLog10;
    *(v5 + 36) |= 1u;
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 0x20) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 30) = self->_limitHit;
  *(v5 + 36) |= 8u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_4:
    if ((has & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  *(v5 + 32) = self->_timeSpec;
  *(v5 + 36) |= 0x20u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_5:
    if ((has & 4) == 0)
    {
      goto LABEL_6;
    }

LABEL_13:
    *(v5 + 29) = self->_exclusionSpec;
    *(v5 + 36) |= 4u;
    if ((*&self->_has & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_12:
  *(v5 + 31) = self->_timeLimited;
  *(v5 + 36) |= 0x10u;
  has = self->_has;
  if ((has & 4) != 0)
  {
    goto LABEL_13;
  }

LABEL_6:
  if ((has & 2) != 0)
  {
LABEL_7:
    *(v5 + 28) = self->_error;
    *(v5 + 36) |= 2u;
  }

LABEL_8:
  v9 = [(NSString *)self->_activeTreatments copyWithZone:a3];
  v10 = *(v5 + 8);
  *(v5 + 8) = v9;

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

  has = self->_has;
  if (has)
  {
    *(v4 + 6) = self->_resultSizeLog10;
    *(v4 + 36) |= 1u;
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_5:
      if ((has & 0x20) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_17;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_5;
  }

  *(v4 + 30) = self->_limitHit;
  *(v4 + 36) |= 8u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_6:
    if ((has & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  *(v4 + 32) = self->_timeSpec;
  *(v4 + 36) |= 0x20u;
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

LABEL_18:
  *(v4 + 31) = self->_timeLimited;
  *(v4 + 36) |= 0x10u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_8:
    if ((has & 2) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_19:
  *(v4 + 29) = self->_exclusionSpec;
  *(v4 + 36) |= 4u;
  if ((*&self->_has & 2) != 0)
  {
LABEL_9:
    *(v4 + 28) = self->_error;
    *(v4 + 36) |= 2u;
  }

LABEL_10:
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

  has = self->_has;
  if (has)
  {
    resultSizeLog10 = self->_resultSizeLog10;
    PBDataWriterWriteUint32Field();
    v4 = v12;
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_5:
      if ((has & 0x20) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_17;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_5;
  }

  limitHit = self->_limitHit;
  PBDataWriterWriteBOOLField();
  v4 = v12;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_6:
    if ((has & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  timeSpec = self->_timeSpec;
  PBDataWriterWriteBOOLField();
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

LABEL_18:
  timeLimited = self->_timeLimited;
  PBDataWriterWriteBOOLField();
  v4 = v12;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_8:
    if ((has & 2) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_19:
  exclusionSpec = self->_exclusionSpec;
  PBDataWriterWriteBOOLField();
  v4 = v12;
  if ((*&self->_has & 2) != 0)
  {
LABEL_9:
    error = self->_error;
    PBDataWriterWriteBOOLField();
    v4 = v12;
  }

LABEL_10:
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

  has = self->_has;
  if (has)
  {
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_resultSizeLog10];
    [v4 setObject:v10 forKey:@"resultSizeLog10"];

    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_5:
      if ((has & 0x20) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_17;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_5;
  }

  v11 = [MEMORY[0x277CCABB0] numberWithBool:self->_limitHit];
  [v4 setObject:v11 forKey:@"limitHit"];

  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_6:
    if ((has & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  v12 = [MEMORY[0x277CCABB0] numberWithBool:self->_timeSpec];
  [v4 setObject:v12 forKey:@"timeSpec"];

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

LABEL_18:
  v13 = [MEMORY[0x277CCABB0] numberWithBool:self->_timeLimited];
  [v4 setObject:v13 forKey:@"timeLimited"];

  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_8:
    if ((has & 2) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_19:
  v14 = [MEMORY[0x277CCABB0] numberWithBool:self->_exclusionSpec];
  [v4 setObject:v14 forKey:@"exclusionSpec"];

  if ((*&self->_has & 2) != 0)
  {
LABEL_9:
    v7 = [MEMORY[0x277CCABB0] numberWithBool:self->_error];
    [v4 setObject:v7 forKey:@"error"];
  }

LABEL_10:
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
  v8.super_class = PPM2LocationsScored;
  v4 = [(PPM2LocationsScored *)&v8 description];
  v5 = [(PPM2LocationsScored *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
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

@end