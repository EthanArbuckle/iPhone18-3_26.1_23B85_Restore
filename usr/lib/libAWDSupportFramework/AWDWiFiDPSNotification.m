@interface AWDWiFiDPSNotification
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsSymptom:(id)a3;
- (int)symptom;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasFacetimeCallInProgress:(BOOL)a3;
- (void)setHasProblemAC:(BOOL)a3;
- (void)setHasSymptom:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDWiFiDPSNotification

- (int)symptom
{
  if ((*&self->_has & 4) != 0)
  {
    return self->_symptom;
  }

  else
  {
    return 0;
  }
}

- (void)setHasSymptom:(BOOL)a3
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

- (int)StringAsSymptom:(id)a3
{
  if ([a3 isEqualToString:@"kDriverDetectedStall"])
  {
    return 0;
  }

  if ([a3 isEqualToString:@"kDriverDetectedSlow"])
  {
    return 1;
  }

  if ([a3 isEqualToString:@"kUserToggleOff"])
  {
    return 2;
  }

  if ([a3 isEqualToString:@"kUserToggleOn"])
  {
    return 3;
  }

  if ([a3 isEqualToString:@"kSymptomsdTrigger"])
  {
    return 4;
  }

  return 0;
}

- (void)setHasProblemAC:(BOOL)a3
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

- (void)setHasFacetimeCallInProgress:(BOOL)a3
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

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDWiFiDPSNotification;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDWiFiDPSNotification description](&v3, sel_description), -[AWDWiFiDPSNotification dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x29EDB8E00] dictionary];
  has = self->_has;
  if (has)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_4;
      }

LABEL_12:
      [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_problemAC), @"problemAC"}];
      if ((*&self->_has & 8) == 0)
      {
        return v3;
      }

      goto LABEL_5;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  symptom = self->_symptom;
  if (symptom >= 5)
  {
    v7 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"(unknown: %i)", self->_symptom];
  }

  else
  {
    v7 = off_29EE33258[symptom];
  }

  [v3 setObject:v7 forKey:@"symptom"];
  has = self->_has;
  if ((has & 2) != 0)
  {
    goto LABEL_12;
  }

LABEL_4:
  if ((has & 8) != 0)
  {
LABEL_5:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_facetimeCallInProgress), @"facetimeCallInProgress"}];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  has = self->_has;
  if (has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      problemAC = self->_problemAC;
      PBDataWriterWriteUint32Field();
      if ((*&self->_has & 8) == 0)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  symptom = self->_symptom;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 2) != 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  if ((has & 8) == 0)
  {
    return;
  }

LABEL_9:
  facetimeCallInProgress = self->_facetimeCallInProgress;

  PBDataWriterWriteBOOLField();
}

- (void)copyTo:(id)a3
{
  has = self->_has;
  if (has)
  {
    *(a3 + 1) = self->_timestamp;
    *(a3 + 28) |= 1u;
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

  *(a3 + 5) = self->_symptom;
  *(a3 + 28) |= 4u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      return;
    }

LABEL_9:
    *(a3 + 24) = self->_facetimeCallInProgress;
    *(a3 + 28) |= 8u;
    return;
  }

LABEL_8:
  *(a3 + 4) = self->_problemAC;
  *(a3 + 28) |= 2u;
  if ((*&self->_has & 8) != 0)
  {
    goto LABEL_9;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  has = self->_has;
  if (has)
  {
    *(result + 1) = self->_timestamp;
    *(result + 28) |= 1u;
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

  *(result + 5) = self->_symptom;
  *(result + 28) |= 4u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      return result;
    }

    goto LABEL_5;
  }

LABEL_9:
  *(result + 4) = self->_problemAC;
  *(result + 28) |= 2u;
  if ((*&self->_has & 8) == 0)
  {
    return result;
  }

LABEL_5:
  *(result + 24) = self->_facetimeCallInProgress;
  *(result + 28) |= 8u;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    if (*&self->_has)
    {
      if ((*(a3 + 28) & 1) == 0 || self->_timestamp != *(a3 + 1))
      {
        goto LABEL_19;
      }
    }

    else if (*(a3 + 28))
    {
      goto LABEL_19;
    }

    if ((*&self->_has & 4) != 0)
    {
      if ((*(a3 + 28) & 4) == 0 || self->_symptom != *(a3 + 5))
      {
        goto LABEL_19;
      }
    }

    else if ((*(a3 + 28) & 4) != 0)
    {
      goto LABEL_19;
    }

    if ((*&self->_has & 2) != 0)
    {
      if ((*(a3 + 28) & 2) == 0 || self->_problemAC != *(a3 + 4))
      {
        goto LABEL_19;
      }
    }

    else if ((*(a3 + 28) & 2) != 0)
    {
      goto LABEL_19;
    }

    LOBYTE(v5) = (*(a3 + 28) & 8) == 0;
    if ((*&self->_has & 8) != 0)
    {
      if ((*(a3 + 28) & 8) == 0)
      {
LABEL_19:
        LOBYTE(v5) = 0;
        return v5;
      }

      if (self->_facetimeCallInProgress)
      {
        if ((*(a3 + 24) & 1) == 0)
        {
          goto LABEL_19;
        }
      }

      else if (*(a3 + 24))
      {
        goto LABEL_19;
      }

      LOBYTE(v5) = 1;
    }
  }

  return v5;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761u * self->_timestamp;
    if ((*&self->_has & 4) != 0)
    {
LABEL_3:
      v3 = 2654435761 * self->_symptom;
      if ((*&self->_has & 2) != 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      v4 = 0;
      if ((*&self->_has & 8) != 0)
      {
        goto LABEL_5;
      }

LABEL_9:
      v5 = 0;
      return v3 ^ v2 ^ v4 ^ v5;
    }
  }

  else
  {
    v2 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_3;
    }
  }

  v3 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  v4 = 2654435761 * self->_problemAC;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_9;
  }

LABEL_5:
  v5 = 2654435761 * self->_facetimeCallInProgress;
  return v3 ^ v2 ^ v4 ^ v5;
}

- (void)mergeFrom:(id)a3
{
  v3 = *(a3 + 28);
  if (v3)
  {
    self->_timestamp = *(a3 + 1);
    *&self->_has |= 1u;
    v3 = *(a3 + 28);
    if ((v3 & 4) == 0)
    {
LABEL_3:
      if ((v3 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((*(a3 + 28) & 4) == 0)
  {
    goto LABEL_3;
  }

  self->_symptom = *(a3 + 5);
  *&self->_has |= 4u;
  v3 = *(a3 + 28);
  if ((v3 & 2) == 0)
  {
LABEL_4:
    if ((v3 & 8) == 0)
    {
      return;
    }

LABEL_9:
    self->_facetimeCallInProgress = *(a3 + 24);
    *&self->_has |= 8u;
    return;
  }

LABEL_8:
  self->_problemAC = *(a3 + 4);
  *&self->_has |= 2u;
  if ((*(a3 + 28) & 8) != 0)
  {
    goto LABEL_9;
  }
}

@end