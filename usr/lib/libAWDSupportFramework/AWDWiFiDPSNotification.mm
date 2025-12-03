@interface AWDWiFiDPSNotification
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsSymptom:(id)symptom;
- (int)symptom;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasFacetimeCallInProgress:(BOOL)progress;
- (void)setHasProblemAC:(BOOL)c;
- (void)setHasSymptom:(BOOL)symptom;
- (void)writeTo:(id)to;
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

- (void)setHasSymptom:(BOOL)symptom
{
  if (symptom)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (int)StringAsSymptom:(id)symptom
{
  if ([symptom isEqualToString:@"kDriverDetectedStall"])
  {
    return 0;
  }

  if ([symptom isEqualToString:@"kDriverDetectedSlow"])
  {
    return 1;
  }

  if ([symptom isEqualToString:@"kUserToggleOff"])
  {
    return 2;
  }

  if ([symptom isEqualToString:@"kUserToggleOn"])
  {
    return 3;
  }

  if ([symptom isEqualToString:@"kSymptomsdTrigger"])
  {
    return 4;
  }

  return 0;
}

- (void)setHasProblemAC:(BOOL)c
{
  if (c)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasFacetimeCallInProgress:(BOOL)progress
{
  if (progress)
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
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  has = self->_has;
  if (has)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_4;
      }

LABEL_12:
      [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_problemAC), @"problemAC"}];
      if ((*&self->_has & 8) == 0)
      {
        return dictionary;
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

  [dictionary setObject:v7 forKey:@"symptom"];
  has = self->_has;
  if ((has & 2) != 0)
  {
    goto LABEL_12;
  }

LABEL_4:
  if ((has & 8) != 0)
  {
LABEL_5:
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_facetimeCallInProgress), @"facetimeCallInProgress"}];
  }

  return dictionary;
}

- (void)writeTo:(id)to
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

- (void)copyTo:(id)to
{
  has = self->_has;
  if (has)
  {
    *(to + 1) = self->_timestamp;
    *(to + 28) |= 1u;
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

  *(to + 5) = self->_symptom;
  *(to + 28) |= 4u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      return;
    }

LABEL_9:
    *(to + 24) = self->_facetimeCallInProgress;
    *(to + 28) |= 8u;
    return;
  }

LABEL_8:
  *(to + 4) = self->_problemAC;
  *(to + 28) |= 2u;
  if ((*&self->_has & 8) != 0)
  {
    goto LABEL_9;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
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

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    if (*&self->_has)
    {
      if ((*(equal + 28) & 1) == 0 || self->_timestamp != *(equal + 1))
      {
        goto LABEL_19;
      }
    }

    else if (*(equal + 28))
    {
      goto LABEL_19;
    }

    if ((*&self->_has & 4) != 0)
    {
      if ((*(equal + 28) & 4) == 0 || self->_symptom != *(equal + 5))
      {
        goto LABEL_19;
      }
    }

    else if ((*(equal + 28) & 4) != 0)
    {
      goto LABEL_19;
    }

    if ((*&self->_has & 2) != 0)
    {
      if ((*(equal + 28) & 2) == 0 || self->_problemAC != *(equal + 4))
      {
        goto LABEL_19;
      }
    }

    else if ((*(equal + 28) & 2) != 0)
    {
      goto LABEL_19;
    }

    LOBYTE(v5) = (*(equal + 28) & 8) == 0;
    if ((*&self->_has & 8) != 0)
    {
      if ((*(equal + 28) & 8) == 0)
      {
LABEL_19:
        LOBYTE(v5) = 0;
        return v5;
      }

      if (self->_facetimeCallInProgress)
      {
        if ((*(equal + 24) & 1) == 0)
        {
          goto LABEL_19;
        }
      }

      else if (*(equal + 24))
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

- (void)mergeFrom:(id)from
{
  v3 = *(from + 28);
  if (v3)
  {
    self->_timestamp = *(from + 1);
    *&self->_has |= 1u;
    v3 = *(from + 28);
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

  else if ((*(from + 28) & 4) == 0)
  {
    goto LABEL_3;
  }

  self->_symptom = *(from + 5);
  *&self->_has |= 4u;
  v3 = *(from + 28);
  if ((v3 & 2) == 0)
  {
LABEL_4:
    if ((v3 & 8) == 0)
    {
      return;
    }

LABEL_9:
    self->_facetimeCallInProgress = *(from + 24);
    *&self->_has |= 8u;
    return;
  }

LABEL_8:
  self->_problemAC = *(from + 4);
  *&self->_has |= 2u;
  if ((*(from + 28) & 8) != 0)
  {
    goto LABEL_9;
  }
}

@end