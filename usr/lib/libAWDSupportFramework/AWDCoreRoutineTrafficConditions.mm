@interface AWDCoreRoutineTrafficConditions
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsPrecisionRecall:(id)recall;
- (int)StringAsTrafficDensity:(id)density;
- (int)precisionRecall;
- (int)trafficDensity;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasPrecisionRecall:(BOOL)recall;
- (void)setHasPredictedLocationOfInterest:(BOOL)interest;
- (void)setHasTrafficDensity:(BOOL)density;
- (void)setHasVehicleConnected:(BOOL)connected;
- (void)writeTo:(id)to;
@end

@implementation AWDCoreRoutineTrafficConditions

- (void)setHasVehicleConnected:(BOOL)connected
{
  if (connected)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasPredictedLocationOfInterest:(BOOL)interest
{
  if (interest)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (int)trafficDensity
{
  if ((*&self->_has & 4) != 0)
  {
    return self->_trafficDensity;
  }

  else
  {
    return 0;
  }
}

- (void)setHasTrafficDensity:(BOOL)density
{
  if (density)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (int)StringAsTrafficDensity:(id)density
{
  if ([density isEqualToString:@"CoreRoutineTrafficDensityUnknown"])
  {
    return 0;
  }

  if ([density isEqualToString:@"CoreRoutineTrafficDensityLight"])
  {
    return 1;
  }

  if ([density isEqualToString:@"CoreRoutineTrafficDensityNormal"])
  {
    return 2;
  }

  if ([density isEqualToString:@"CoreRoutineTrafficDensityHeavy"])
  {
    return 3;
  }

  return 0;
}

- (int)precisionRecall
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_precisionRecall;
  }

  else
  {
    return 0;
  }
}

- (void)setHasPrecisionRecall:(BOOL)recall
{
  if (recall)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (int)StringAsPrecisionRecall:(id)recall
{
  if ([recall isEqualToString:@"CoreRoutinePrecisionRecallUnknown"])
  {
    return 0;
  }

  if ([recall isEqualToString:@"CoreRoutinePrecisionRecallTruePositive"])
  {
    return 1;
  }

  if ([recall isEqualToString:@"CoreRoutinePrecisionRecallFalsePositive"])
  {
    return 2;
  }

  if ([recall isEqualToString:@"CoreRoutinePrecisionRecallTrueNegative"])
  {
    return 3;
  }

  if ([recall isEqualToString:@"CoreRoutinePrecisionRecallFalseNegative"])
  {
    return 4;
  }

  return 0;
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDCoreRoutineTrafficConditions;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDCoreRoutineTrafficConditions description](&v3, sel_description), -[AWDCoreRoutineTrafficConditions dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  has = self->_has;
  if (has)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_3;
  }

  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_vehicleConnected), @"vehicleConnected"}];
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

LABEL_9:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_predictedLocationOfInterest), @"predictedLocationOfInterest"}];
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_5:
    if ((has & 2) == 0)
    {
      return dictionary;
    }

    goto LABEL_14;
  }

LABEL_10:
  trafficDensity = self->_trafficDensity;
  if (trafficDensity >= 4)
  {
    v6 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"(unknown: %i)", self->_trafficDensity];
  }

  else
  {
    v6 = off_29EE32600[trafficDensity];
  }

  [dictionary setObject:v6 forKey:@"trafficDensity"];
  if ((*&self->_has & 2) != 0)
  {
LABEL_14:
    precisionRecall = self->_precisionRecall;
    if (precisionRecall >= 5)
    {
      v8 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"(unknown: %i)", self->_precisionRecall];
    }

    else
    {
      v8 = off_29EE32620[precisionRecall];
    }

    [dictionary setObject:v8 forKey:@"precisionRecall"];
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
    if ((has & 0x10) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_3;
  }

  vehicleConnected = self->_vehicleConnected;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 4) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    trafficDensity = self->_trafficDensity;
    PBDataWriterWriteInt32Field();
    if ((*&self->_has & 2) == 0)
    {
      return;
    }

    goto LABEL_11;
  }

LABEL_9:
  predictedLocationOfInterest = self->_predictedLocationOfInterest;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 4) != 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((has & 2) == 0)
  {
    return;
  }

LABEL_11:
  precisionRecall = self->_precisionRecall;

  PBDataWriterWriteInt32Field();
}

- (void)copyTo:(id)to
{
  has = self->_has;
  if (has)
  {
    *(to + 1) = self->_timestamp;
    *(to + 28) |= 1u;
    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_3;
  }

  *(to + 25) = self->_vehicleConnected;
  *(to + 28) |= 0x10u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

LABEL_9:
  *(to + 24) = self->_predictedLocationOfInterest;
  *(to + 28) |= 8u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_5:
    if ((has & 2) == 0)
    {
      return;
    }

LABEL_11:
    *(to + 4) = self->_precisionRecall;
    *(to + 28) |= 2u;
    return;
  }

LABEL_10:
  *(to + 5) = self->_trafficDensity;
  *(to + 28) |= 4u;
  if ((*&self->_has & 2) != 0)
  {
    goto LABEL_11;
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
    if ((has & 0x10) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_3;
  }

  *(result + 25) = self->_vehicleConnected;
  *(result + 28) |= 0x10u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  *(result + 24) = self->_predictedLocationOfInterest;
  *(result + 28) |= 8u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_5:
    if ((has & 2) == 0)
    {
      return result;
    }

    goto LABEL_6;
  }

LABEL_11:
  *(result + 5) = self->_trafficDensity;
  *(result + 28) |= 4u;
  if ((*&self->_has & 2) == 0)
  {
    return result;
  }

LABEL_6:
  *(result + 4) = self->_precisionRecall;
  *(result + 28) |= 2u;
  return result;
}

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (!v5)
  {
    return v5;
  }

  if (*&self->_has)
  {
    if ((*(equal + 28) & 1) == 0 || self->_timestamp != *(equal + 1))
    {
      goto LABEL_31;
    }
  }

  else if (*(equal + 28))
  {
    goto LABEL_31;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    if ((*(equal + 28) & 0x10) == 0)
    {
      goto LABEL_31;
    }

    v6 = *(equal + 25);
    if (self->_vehicleConnected)
    {
      if ((*(equal + 25) & 1) == 0)
      {
        goto LABEL_31;
      }
    }

    else if (*(equal + 25))
    {
      goto LABEL_31;
    }
  }

  else if ((*(equal + 28) & 0x10) != 0)
  {
    goto LABEL_31;
  }

  if ((*&self->_has & 8) == 0)
  {
    if ((*(equal + 28) & 8) == 0)
    {
      goto LABEL_11;
    }

LABEL_31:
    LOBYTE(v5) = 0;
    return v5;
  }

  if ((*(equal + 28) & 8) == 0)
  {
    goto LABEL_31;
  }

  v7 = *(equal + 24);
  if (self->_predictedLocationOfInterest)
  {
    if ((*(equal + 24) & 1) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_11;
  }

  if (*(equal + 24))
  {
    goto LABEL_31;
  }

LABEL_11:
  if ((*&self->_has & 4) != 0)
  {
    if ((*(equal + 28) & 4) == 0 || self->_trafficDensity != *(equal + 5))
    {
      goto LABEL_31;
    }
  }

  else if ((*(equal + 28) & 4) != 0)
  {
    goto LABEL_31;
  }

  LOBYTE(v5) = (*(equal + 28) & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((*(equal + 28) & 2) == 0 || self->_precisionRecall != *(equal + 4))
    {
      goto LABEL_31;
    }

    LOBYTE(v5) = 1;
  }

  return v5;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761u * self->_timestamp;
    if ((*&self->_has & 0x10) != 0)
    {
LABEL_3:
      v3 = 2654435761 * self->_vehicleConnected;
      if ((*&self->_has & 8) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v2 = 0;
    if ((*&self->_has & 0x10) != 0)
    {
      goto LABEL_3;
    }
  }

  v3 = 0;
  if ((*&self->_has & 8) != 0)
  {
LABEL_4:
    v4 = 2654435761 * self->_predictedLocationOfInterest;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    v5 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_6;
    }

LABEL_11:
    v6 = 0;
    return v3 ^ v2 ^ v4 ^ v5 ^ v6;
  }

LABEL_9:
  v4 = 0;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  v5 = 2654435761 * self->_trafficDensity;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_11;
  }

LABEL_6:
  v6 = 2654435761 * self->_precisionRecall;
  return v3 ^ v2 ^ v4 ^ v5 ^ v6;
}

- (void)mergeFrom:(id)from
{
  v3 = *(from + 28);
  if (v3)
  {
    self->_timestamp = *(from + 1);
    *&self->_has |= 1u;
    v3 = *(from + 28);
    if ((v3 & 0x10) == 0)
    {
LABEL_3:
      if ((v3 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((*(from + 28) & 0x10) == 0)
  {
    goto LABEL_3;
  }

  self->_vehicleConnected = *(from + 25);
  *&self->_has |= 0x10u;
  v3 = *(from + 28);
  if ((v3 & 8) == 0)
  {
LABEL_4:
    if ((v3 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

LABEL_9:
  self->_predictedLocationOfInterest = *(from + 24);
  *&self->_has |= 8u;
  v3 = *(from + 28);
  if ((v3 & 4) == 0)
  {
LABEL_5:
    if ((v3 & 2) == 0)
    {
      return;
    }

LABEL_11:
    self->_precisionRecall = *(from + 4);
    *&self->_has |= 2u;
    return;
  }

LABEL_10:
  self->_trafficDensity = *(from + 5);
  *&self->_has |= 4u;
  if ((*(from + 28) & 2) != 0)
  {
    goto LABEL_11;
  }
}

@end