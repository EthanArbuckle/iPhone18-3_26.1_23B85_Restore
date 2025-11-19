@interface AWDSymptomsSDMParticipant
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasDlThroughputBytesPerSecond:(BOOL)a3;
- (void)setHasParticipationDelta:(BOOL)a3;
- (void)setHasPeriodDuration:(BOOL)a3;
- (void)setHasUlThroughputBytesPerSecond:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDSymptomsSDMParticipant

- (void)setHasParticipationDelta:(BOOL)a3
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

- (void)setHasPeriodDuration:(BOOL)a3
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

- (void)setHasDlThroughputBytesPerSecond:(BOOL)a3
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

- (void)setHasUlThroughputBytesPerSecond:(BOOL)a3
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

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = AWDSymptomsSDMParticipant;
  v4 = [(AWDSymptomsSDMParticipant *)&v8 description];
  v5 = [(AWDSymptomsSDMParticipant *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  if ((*&self->_has & 4) != 0)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_participationDelta];
    [v3 setObject:v4 forKey:@"participationDelta"];
  }

  name = self->_name;
  if (name)
  {
    [v3 setObject:name forKey:@"name"];
  }

  has = self->_has;
  if ((has & 8) != 0)
  {
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_periodDuration];
    [v3 setObject:v9 forKey:@"periodDuration"];

    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_7:
      if ((has & 0x10) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_15;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_7;
  }

  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_dlThroughputBytesPerSecond];
  [v3 setObject:v10 forKey:@"dlThroughputBytesPerSecond"];

  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_8:
    if ((has & 1) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_15:
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_ulThroughputBytesPerSecond];
  [v3 setObject:v11 forKey:@"ulThroughputBytesPerSecond"];

  if (*&self->_has)
  {
LABEL_9:
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_additionalFlags];
    [v3 setObject:v7 forKey:@"additionalFlags"];
  }

LABEL_10:

  return v3;
}

- (void)writeTo:(id)a3
{
  v10 = a3;
  if ((*&self->_has & 4) != 0)
  {
    participationDelta = self->_participationDelta;
    PBDataWriterWriteUint64Field();
  }

  if (self->_name)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if ((has & 8) != 0)
  {
    periodDuration = self->_periodDuration;
    PBDataWriterWriteUint64Field();
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_7:
      if ((has & 0x10) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_15;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_7;
  }

  dlThroughputBytesPerSecond = self->_dlThroughputBytesPerSecond;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_8:
    if ((has & 1) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_15:
  ulThroughputBytesPerSecond = self->_ulThroughputBytesPerSecond;
  PBDataWriterWriteUint64Field();
  if (*&self->_has)
  {
LABEL_9:
    additionalFlags = self->_additionalFlags;
    PBDataWriterWriteUint64Field();
  }

LABEL_10:
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if ((*&self->_has & 4) != 0)
  {
    v4[3] = self->_participationDelta;
    *(v4 + 56) |= 4u;
  }

  if (self->_name)
  {
    v6 = v4;
    [v4 setName:?];
    v4 = v6;
  }

  has = self->_has;
  if ((has & 8) != 0)
  {
    v4[4] = self->_periodDuration;
    *(v4 + 56) |= 8u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_7:
      if ((has & 0x10) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_15;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_7;
  }

  v4[2] = self->_dlThroughputBytesPerSecond;
  *(v4 + 56) |= 2u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_8:
    if ((has & 1) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_15:
  v4[5] = self->_ulThroughputBytesPerSecond;
  *(v4 + 56) |= 0x10u;
  if (*&self->_has)
  {
LABEL_9:
    v4[1] = self->_additionalFlags;
    *(v4 + 56) |= 1u;
  }

LABEL_10:
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if ((*&self->_has & 4) != 0)
  {
    *(v5 + 24) = self->_participationDelta;
    *(v5 + 56) |= 4u;
  }

  v7 = [(NSString *)self->_name copyWithZone:a3];
  v8 = *(v6 + 48);
  *(v6 + 48) = v7;

  has = self->_has;
  if ((has & 8) != 0)
  {
    *(v6 + 32) = self->_periodDuration;
    *(v6 + 56) |= 8u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_5:
      if ((has & 0x10) == 0)
      {
        goto LABEL_6;
      }

LABEL_11:
      *(v6 + 40) = self->_ulThroughputBytesPerSecond;
      *(v6 + 56) |= 0x10u;
      if ((*&self->_has & 1) == 0)
      {
        return v6;
      }

      goto LABEL_7;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

  *(v6 + 16) = self->_dlThroughputBytesPerSecond;
  *(v6 + 56) |= 2u;
  has = self->_has;
  if ((has & 0x10) != 0)
  {
    goto LABEL_11;
  }

LABEL_6:
  if (has)
  {
LABEL_7:
    *(v6 + 8) = self->_additionalFlags;
    *(v6 + 56) |= 1u;
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_29;
  }

  has = self->_has;
  v6 = *(v4 + 56);
  if ((has & 4) != 0)
  {
    if ((*(v4 + 56) & 4) == 0 || self->_participationDelta != *(v4 + 3))
    {
      goto LABEL_29;
    }
  }

  else if ((*(v4 + 56) & 4) != 0)
  {
    goto LABEL_29;
  }

  name = self->_name;
  if (name | *(v4 + 6))
  {
    if (![(NSString *)name isEqual:?])
    {
LABEL_29:
      v8 = 0;
      goto LABEL_30;
    }

    has = self->_has;
  }

  if ((has & 8) != 0)
  {
    if ((*(v4 + 56) & 8) == 0 || self->_periodDuration != *(v4 + 4))
    {
      goto LABEL_29;
    }
  }

  else if ((*(v4 + 56) & 8) != 0)
  {
    goto LABEL_29;
  }

  if ((has & 2) != 0)
  {
    if ((*(v4 + 56) & 2) == 0 || self->_dlThroughputBytesPerSecond != *(v4 + 2))
    {
      goto LABEL_29;
    }
  }

  else if ((*(v4 + 56) & 2) != 0)
  {
    goto LABEL_29;
  }

  if ((has & 0x10) != 0)
  {
    if ((*(v4 + 56) & 0x10) == 0 || self->_ulThroughputBytesPerSecond != *(v4 + 5))
    {
      goto LABEL_29;
    }
  }

  else if ((*(v4 + 56) & 0x10) != 0)
  {
    goto LABEL_29;
  }

  v8 = (*(v4 + 56) & 1) == 0;
  if (has)
  {
    if ((*(v4 + 56) & 1) == 0 || self->_additionalFlags != *(v4 + 1))
    {
      goto LABEL_29;
    }

    v8 = 1;
  }

LABEL_30:

  return v8;
}

- (unint64_t)hash
{
  if ((*&self->_has & 4) != 0)
  {
    v3 = 2654435761u * self->_participationDelta;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSString *)self->_name hash];
  if ((*&self->_has & 8) != 0)
  {
    v5 = 2654435761u * self->_periodDuration;
    if ((*&self->_has & 2) != 0)
    {
LABEL_6:
      v6 = 2654435761u * self->_dlThroughputBytesPerSecond;
      if ((*&self->_has & 0x10) != 0)
      {
        goto LABEL_7;
      }

LABEL_11:
      v7 = 0;
      if (*&self->_has)
      {
        goto LABEL_8;
      }

LABEL_12:
      v8 = 0;
      return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8;
    }
  }

  else
  {
    v5 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_6;
    }
  }

  v6 = 0;
  if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_11;
  }

LABEL_7:
  v7 = 2654435761u * self->_ulThroughputBytesPerSecond;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_8:
  v8 = 2654435761u * self->_additionalFlags;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if ((v4[7] & 4) != 0)
  {
    self->_participationDelta = v4[3];
    *&self->_has |= 4u;
  }

  if (v4[6])
  {
    v6 = v4;
    [(AWDSymptomsSDMParticipant *)self setName:?];
    v4 = v6;
  }

  v5 = *(v4 + 56);
  if ((v5 & 8) != 0)
  {
    self->_periodDuration = v4[4];
    *&self->_has |= 8u;
    v5 = *(v4 + 56);
    if ((v5 & 2) == 0)
    {
LABEL_7:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_15;
    }
  }

  else if ((v4[7] & 2) == 0)
  {
    goto LABEL_7;
  }

  self->_dlThroughputBytesPerSecond = v4[2];
  *&self->_has |= 2u;
  v5 = *(v4 + 56);
  if ((v5 & 0x10) == 0)
  {
LABEL_8:
    if ((v5 & 1) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_15:
  self->_ulThroughputBytesPerSecond = v4[5];
  *&self->_has |= 0x10u;
  if (v4[7])
  {
LABEL_9:
    self->_additionalFlags = v4[1];
    *&self->_has |= 1u;
  }

LABEL_10:
}

@end