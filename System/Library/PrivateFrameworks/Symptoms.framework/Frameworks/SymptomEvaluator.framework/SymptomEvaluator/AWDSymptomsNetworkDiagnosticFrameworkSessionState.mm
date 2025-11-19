@interface AWDSymptomsNetworkDiagnosticFrameworkSessionState
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsInState:(id)a3;
- (int)inState;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasInState:(BOOL)a3;
- (void)setHasTimestamp:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDSymptomsNetworkDiagnosticFrameworkSessionState

- (void)setHasTimestamp:(BOOL)a3
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

- (int)inState
{
  if ((*&self->_has & 4) != 0)
  {
    return self->_inState;
  }

  else
  {
    return 1;
  }
}

- (void)setHasInState:(BOOL)a3
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

- (int)StringAsInState:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Idle"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"Alerted"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"Running"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"Diagnosing"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = AWDSymptomsNetworkDiagnosticFrameworkSessionState;
  v4 = [(AWDSymptomsNetworkDiagnosticFrameworkSessionState *)&v8 description];
  v5 = [(AWDSymptomsNetworkDiagnosticFrameworkSessionState *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if ((has & 2) != 0)
  {
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_timestamp];
    [v3 setObject:v8 forKey:@"timestamp"];

    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  v9 = self->_inState - 1;
  if (v9 >= 4)
  {
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_inState];
  }

  else
  {
    v10 = off_27898F560[v9];
  }

  [v3 setObject:v10 forKey:@"inState"];

  if (*&self->_has)
  {
LABEL_4:
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_stateHeldForSecs];
    [v3 setObject:v5 forKey:@"stateHeldForSecs"];
  }

LABEL_5:
  symptomName = self->_symptomName;
  if (symptomName)
  {
    [v3 setObject:symptomName forKey:@"symptomName"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  v9 = v4;
  if ((has & 2) != 0)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    v4 = v9;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  inState = self->_inState;
  PBDataWriterWriteInt32Field();
  v4 = v9;
  if (*&self->_has)
  {
LABEL_4:
    stateHeldForSecs = self->_stateHeldForSecs;
    PBDataWriterWriteUint64Field();
    v4 = v9;
  }

LABEL_5:
  if (self->_symptomName)
  {
    PBDataWriterWriteStringField();
    v4 = v9;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if ((has & 2) != 0)
  {
    v4[2] = self->_timestamp;
    *(v4 + 40) |= 2u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  *(v4 + 6) = self->_inState;
  *(v4 + 40) |= 4u;
  if (*&self->_has)
  {
LABEL_4:
    v4[1] = self->_stateHeldForSecs;
    *(v4 + 40) |= 1u;
  }

LABEL_5:
  if (self->_symptomName)
  {
    v6 = v4;
    [v4 setSymptomName:?];
    v4 = v6;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  has = self->_has;
  if ((has & 2) == 0)
  {
    if ((*&self->_has & 4) == 0)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v5 + 24) = self->_inState;
    *(v5 + 40) |= 4u;
    if ((*&self->_has & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  *(v5 + 16) = self->_timestamp;
  *(v5 + 40) |= 2u;
  has = self->_has;
  if ((has & 4) != 0)
  {
    goto LABEL_7;
  }

LABEL_3:
  if (has)
  {
LABEL_4:
    *(v5 + 8) = self->_stateHeldForSecs;
    *(v5 + 40) |= 1u;
  }

LABEL_5:
  v8 = [(NSString *)self->_symptomName copyWithZone:a3];
  v9 = v6[4];
  v6[4] = v8;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_19;
  }

  v5 = *(v4 + 40);
  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 40) & 2) == 0 || self->_timestamp != *(v4 + 2))
    {
      goto LABEL_19;
    }
  }

  else if ((*(v4 + 40) & 2) != 0)
  {
LABEL_19:
    v7 = 0;
    goto LABEL_20;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 40) & 4) == 0 || self->_inState != *(v4 + 6))
    {
      goto LABEL_19;
    }
  }

  else if ((*(v4 + 40) & 4) != 0)
  {
    goto LABEL_19;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 40) & 1) == 0 || self->_stateHeldForSecs != *(v4 + 1))
    {
      goto LABEL_19;
    }
  }

  else if (*(v4 + 40))
  {
    goto LABEL_19;
  }

  symptomName = self->_symptomName;
  if (symptomName | *(v4 + 4))
  {
    v7 = [(NSString *)symptomName isEqual:?];
  }

  else
  {
    v7 = 1;
  }

LABEL_20:

  return v7;
}

- (unint64_t)hash
{
  if ((*&self->_has & 2) == 0)
  {
    v6 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v7 = 0;
    if (*&self->_has)
    {
      goto LABEL_4;
    }

LABEL_7:
    v8 = 0;
    return v7 ^ v6 ^ v8 ^ [(NSString *)self->_symptomName hash:v3];
  }

  v6 = 2654435761u * self->_timestamp;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v7 = 2654435761 * self->_inState;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  v8 = 2654435761u * self->_stateHeldForSecs;
  return v7 ^ v6 ^ v8 ^ [(NSString *)self->_symptomName hash:v3];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 40);
  if ((v5 & 2) != 0)
  {
    self->_timestamp = *(v4 + 2);
    *&self->_has |= 2u;
    v5 = *(v4 + 40);
    if ((v5 & 4) == 0)
    {
LABEL_3:
      if ((v5 & 1) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*(v4 + 40) & 4) == 0)
  {
    goto LABEL_3;
  }

  self->_inState = *(v4 + 6);
  *&self->_has |= 4u;
  if (*(v4 + 40))
  {
LABEL_4:
    self->_stateHeldForSecs = *(v4 + 1);
    *&self->_has |= 1u;
  }

LABEL_5:
  if (*(v4 + 4))
  {
    v6 = v4;
    [(AWDSymptomsNetworkDiagnosticFrameworkSessionState *)self setSymptomName:?];
    v4 = v6;
  }
}

@end