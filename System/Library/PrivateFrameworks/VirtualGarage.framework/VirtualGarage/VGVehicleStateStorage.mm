@interface VGVehicleStateStorage
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsActiveConnector:(id)connector;
- (int)StringAsOrigin:(id)origin;
- (int)activeConnector;
- (int)origin;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasActiveConnector:(BOOL)connector;
- (void)setHasCurrentBatteryCapacity:(BOOL)capacity;
- (void)setHasCurrentEVRange:(BOOL)range;
- (void)setHasDateOfUpdate:(BOOL)update;
- (void)setHasIsCharging:(BOOL)charging;
- (void)setHasMaxBatteryCapacity:(BOOL)capacity;
- (void)setHasMaxEVRange:(BOOL)range;
- (void)setHasMinBatteryCapacity:(BOOL)capacity;
- (void)setHasOrigin:(BOOL)origin;
- (void)writeTo:(id)to;
@end

@implementation VGVehicleStateStorage

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v7 = fromCopy;
  if (*(fromCopy + 11))
  {
    [(VGVehicleStateStorage *)self setIdentifier:?];
    fromCopy = v7;
  }

  v5 = *(fromCopy + 62);
  if ((v5 & 8) != 0)
  {
    self->_dateOfUpdate = *(fromCopy + 4);
    *&self->_has |= 8u;
    v5 = *(fromCopy + 62);
    if ((v5 & 0x100) == 0)
    {
LABEL_5:
      if ((v5 & 1) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_29;
    }
  }

  else if ((*(fromCopy + 62) & 0x100) == 0)
  {
    goto LABEL_5;
  }

  self->_origin = *(fromCopy + 24);
  *&self->_has |= 0x100u;
  v5 = *(fromCopy + 62);
  if ((v5 & 1) == 0)
  {
LABEL_6:
    if ((v5 & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_30;
  }

LABEL_29:
  self->_batteryPercentage = *(fromCopy + 1);
  *&self->_has |= 1u;
  v5 = *(fromCopy + 62);
  if ((v5 & 4) == 0)
  {
LABEL_7:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_31;
  }

LABEL_30:
  self->_currentEVRange = *(fromCopy + 3);
  *&self->_has |= 4u;
  v5 = *(fromCopy + 62);
  if ((v5 & 0x20) == 0)
  {
LABEL_8:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_32;
  }

LABEL_31:
  self->_maxEVRange = *(fromCopy + 6);
  *&self->_has |= 0x20u;
  v5 = *(fromCopy + 62);
  if ((v5 & 0x40) == 0)
  {
LABEL_9:
    if ((v5 & 2) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_33;
  }

LABEL_32:
  self->_minBatteryCapacity = *(fromCopy + 7);
  *&self->_has |= 0x40u;
  v5 = *(fromCopy + 62);
  if ((v5 & 2) == 0)
  {
LABEL_10:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_33:
  self->_currentBatteryCapacity = *(fromCopy + 2);
  *&self->_has |= 2u;
  if ((*(fromCopy + 62) & 0x10) != 0)
  {
LABEL_11:
    self->_maxBatteryCapacity = *(fromCopy + 5);
    *&self->_has |= 0x10u;
  }

LABEL_12:
  if (*(fromCopy + 10))
  {
    [(VGVehicleStateStorage *)self setConsumptionArguments:?];
    fromCopy = v7;
  }

  if (*(fromCopy + 9))
  {
    [(VGVehicleStateStorage *)self setChargingArguments:?];
    fromCopy = v7;
  }

  v6 = *(fromCopy + 62);
  if ((v6 & 0x200) != 0)
  {
    self->_isCharging = *(fromCopy + 120);
    *&self->_has |= 0x200u;
    v6 = *(fromCopy + 62);
  }

  if ((v6 & 0x80) != 0)
  {
    self->_activeConnector = *(fromCopy + 16);
    *&self->_has |= 0x80u;
  }

  if (*(fromCopy + 14))
  {
    [(VGVehicleStateStorage *)self setPairedAppInstallSessionIdentifier:?];
    fromCopy = v7;
  }

  if (*(fromCopy + 13))
  {
    [(VGVehicleStateStorage *)self setPairedAppInstallDeviceIdentifier:?];
    fromCopy = v7;
  }
}

- (unint64_t)hash
{
  v41 = [(NSString *)self->_identifier hash];
  has = self->_has;
  if ((has & 8) != 0)
  {
    v5 = fabs(self->_dateOfUpdate);
    v6 = floor(v5 + 0.5);
    v7 = (v5 - v6) * 1.84467441e19;
    v4 = 2654435761u * (v6 - trunc(v6 * 5.42101086e-20) * 1.84467441e19);
    if (v7 >= 0.0)
    {
      if (v7 > 0.0)
      {
        v4 += v7;
      }
    }

    else
    {
      v4 -= fabs(v7);
    }
  }

  else
  {
    v4 = 0;
  }

  if ((*&self->_has & 0x100) == 0)
  {
    v40 = 0;
    if (has)
    {
      goto LABEL_9;
    }

LABEL_12:
    v11 = 0;
    goto LABEL_13;
  }

  v40 = 2654435761 * self->_origin;
  if ((has & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_9:
  v8 = fabs(self->_batteryPercentage);
  v9 = floor(v8 + 0.5);
  v10 = (v8 - v9) * 1.84467441e19;
  v11 = 2654435761u * (v9 - trunc(v9 * 5.42101086e-20) * 1.84467441e19);
  if (v10 >= 0.0)
  {
    if (v10 > 0.0)
    {
      v11 += v10;
    }
  }

  else
  {
    v11 -= fabs(v10);
  }

LABEL_13:
  if ((has & 4) != 0)
  {
    v13 = fabs(self->_currentEVRange);
    v14 = floor(v13 + 0.5);
    v15 = (v13 - v14) * 1.84467441e19;
    v12 = 2654435761u * (v14 - trunc(v14 * 5.42101086e-20) * 1.84467441e19);
    if (v15 >= 0.0)
    {
      if (v15 > 0.0)
      {
        v12 += v15;
      }
    }

    else
    {
      v12 -= fabs(v15);
    }
  }

  else
  {
    v12 = 0;
  }

  if ((has & 0x20) != 0)
  {
    v17 = fabs(self->_maxEVRange);
    v18 = floor(v17 + 0.5);
    v19 = (v17 - v18) * 1.84467441e19;
    v16 = 2654435761u * (v18 - trunc(v18 * 5.42101086e-20) * 1.84467441e19);
    if (v19 >= 0.0)
    {
      if (v19 > 0.0)
      {
        v16 += v19;
      }
    }

    else
    {
      v16 -= fabs(v19);
    }
  }

  else
  {
    v16 = 0;
  }

  if ((has & 0x40) != 0)
  {
    v21 = fabs(self->_minBatteryCapacity);
    v22 = floor(v21 + 0.5);
    v23 = (v21 - v22) * 1.84467441e19;
    v20 = 2654435761u * (v22 - trunc(v22 * 5.42101086e-20) * 1.84467441e19);
    if (v23 >= 0.0)
    {
      if (v23 > 0.0)
      {
        v20 += v23;
      }
    }

    else
    {
      v20 -= fabs(v23);
    }
  }

  else
  {
    v20 = 0;
  }

  if ((has & 2) != 0)
  {
    v25 = fabs(self->_currentBatteryCapacity);
    v26 = floor(v25 + 0.5);
    v27 = (v25 - v26) * 1.84467441e19;
    v24 = 2654435761u * (v26 - trunc(v26 * 5.42101086e-20) * 1.84467441e19);
    if (v27 >= 0.0)
    {
      if (v27 > 0.0)
      {
        v24 += v27;
      }
    }

    else
    {
      v24 -= fabs(v27);
    }
  }

  else
  {
    v24 = 0;
  }

  if ((has & 0x10) != 0)
  {
    v29 = fabs(self->_maxBatteryCapacity);
    v30 = floor(v29 + 0.5);
    v31 = (v29 - v30) * 1.84467441e19;
    v28 = 2654435761u * (v30 - trunc(v30 * 5.42101086e-20) * 1.84467441e19);
    if (v31 >= 0.0)
    {
      if (v31 > 0.0)
      {
        v28 += v31;
      }
    }

    else
    {
      v28 -= fabs(v31);
    }
  }

  else
  {
    v28 = 0;
  }

  v32 = [(NSString *)self->_consumptionArguments hash];
  v33 = [(NSString *)self->_chargingArguments hash];
  v34 = self->_has;
  if ((v34 & 0x200) != 0)
  {
    v35 = 2654435761 * self->_isCharging;
    if ((v34 & 0x80) != 0)
    {
      goto LABEL_47;
    }

LABEL_49:
    v36 = 0;
    goto LABEL_50;
  }

  v35 = 0;
  if ((v34 & 0x80) == 0)
  {
    goto LABEL_49;
  }

LABEL_47:
  v36 = 2654435761 * self->_activeConnector;
LABEL_50:
  v37 = v4 ^ v41 ^ v40 ^ v11 ^ v12 ^ v16 ^ v20 ^ v24 ^ v28 ^ v32 ^ v33 ^ v35 ^ v36;
  v38 = [(NSData *)self->_pairedAppInstallSessionIdentifier hash];
  return v37 ^ v38 ^ [(NSString *)self->_pairedAppInstallDeviceIdentifier hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_64;
  }

  identifier = self->_identifier;
  if (identifier | *(equalCopy + 11))
  {
    if (![(NSString *)identifier isEqual:?])
    {
      goto LABEL_64;
    }
  }

  has = self->_has;
  v7 = *(equalCopy + 62);
  if ((has & 8) != 0)
  {
    if ((v7 & 8) == 0 || self->_dateOfUpdate != *(equalCopy + 4))
    {
      goto LABEL_64;
    }
  }

  else if ((v7 & 8) != 0)
  {
    goto LABEL_64;
  }

  if ((*&self->_has & 0x100) != 0)
  {
    if ((*(equalCopy + 62) & 0x100) == 0 || self->_origin != *(equalCopy + 24))
    {
      goto LABEL_64;
    }
  }

  else if ((*(equalCopy + 62) & 0x100) != 0)
  {
    goto LABEL_64;
  }

  if (has)
  {
    if ((v7 & 1) == 0 || self->_batteryPercentage != *(equalCopy + 1))
    {
      goto LABEL_64;
    }
  }

  else if (v7)
  {
    goto LABEL_64;
  }

  if ((has & 4) != 0)
  {
    if ((v7 & 4) == 0 || self->_currentEVRange != *(equalCopy + 3))
    {
      goto LABEL_64;
    }
  }

  else if ((v7 & 4) != 0)
  {
    goto LABEL_64;
  }

  if ((has & 0x20) != 0)
  {
    if ((v7 & 0x20) == 0 || self->_maxEVRange != *(equalCopy + 6))
    {
      goto LABEL_64;
    }
  }

  else if ((v7 & 0x20) != 0)
  {
    goto LABEL_64;
  }

  if ((has & 0x40) != 0)
  {
    if ((v7 & 0x40) == 0 || self->_minBatteryCapacity != *(equalCopy + 7))
    {
      goto LABEL_64;
    }
  }

  else if ((v7 & 0x40) != 0)
  {
    goto LABEL_64;
  }

  if ((has & 2) != 0)
  {
    if ((v7 & 2) == 0 || self->_currentBatteryCapacity != *(equalCopy + 2))
    {
      goto LABEL_64;
    }
  }

  else if ((v7 & 2) != 0)
  {
    goto LABEL_64;
  }

  if ((has & 0x10) != 0)
  {
    if ((v7 & 0x10) == 0 || self->_maxBatteryCapacity != *(equalCopy + 5))
    {
      goto LABEL_64;
    }
  }

  else if ((v7 & 0x10) != 0)
  {
    goto LABEL_64;
  }

  consumptionArguments = self->_consumptionArguments;
  if (consumptionArguments | *(equalCopy + 10) && ![(NSString *)consumptionArguments isEqual:?])
  {
    goto LABEL_64;
  }

  chargingArguments = self->_chargingArguments;
  if (chargingArguments | *(equalCopy + 9))
  {
    if (![(NSString *)chargingArguments isEqual:?])
    {
      goto LABEL_64;
    }
  }

  v10 = self->_has;
  v11 = *(equalCopy + 62);
  if ((v10 & 0x200) == 0)
  {
    if ((*(equalCopy + 62) & 0x200) == 0)
    {
      goto LABEL_50;
    }

LABEL_64:
    v15 = 0;
    goto LABEL_65;
  }

  if ((*(equalCopy + 62) & 0x200) == 0)
  {
    goto LABEL_64;
  }

  v12 = *(equalCopy + 120);
  if (self->_isCharging)
  {
    if ((*(equalCopy + 120) & 1) == 0)
    {
      goto LABEL_64;
    }
  }

  else if (*(equalCopy + 120))
  {
    goto LABEL_64;
  }

LABEL_50:
  if ((v10 & 0x80) != 0)
  {
    if ((v11 & 0x80) == 0 || self->_activeConnector != *(equalCopy + 16))
    {
      goto LABEL_64;
    }
  }

  else if ((v11 & 0x80) != 0)
  {
    goto LABEL_64;
  }

  pairedAppInstallSessionIdentifier = self->_pairedAppInstallSessionIdentifier;
  if (pairedAppInstallSessionIdentifier | *(equalCopy + 14) && ![(NSData *)pairedAppInstallSessionIdentifier isEqual:?])
  {
    goto LABEL_64;
  }

  pairedAppInstallDeviceIdentifier = self->_pairedAppInstallDeviceIdentifier;
  if (pairedAppInstallDeviceIdentifier | *(equalCopy + 13))
  {
    v15 = [(NSString *)pairedAppInstallDeviceIdentifier isEqual:?];
  }

  else
  {
    v15 = 1;
  }

LABEL_65:

  return v15;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_identifier copyWithZone:zone];
  v7 = *(v5 + 88);
  *(v5 + 88) = v6;

  has = self->_has;
  if ((has & 8) != 0)
  {
    *(v5 + 32) = self->_dateOfUpdate;
    *(v5 + 124) |= 8u;
    has = self->_has;
    if ((has & 0x100) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

  else if ((*&self->_has & 0x100) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 96) = self->_origin;
  *(v5 + 124) |= 0x100u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_4:
    if ((has & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_18;
  }

LABEL_17:
  *(v5 + 8) = self->_batteryPercentage;
  *(v5 + 124) |= 1u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_5:
    if ((has & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_19;
  }

LABEL_18:
  *(v5 + 24) = self->_currentEVRange;
  *(v5 + 124) |= 4u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_6:
    if ((has & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_20;
  }

LABEL_19:
  *(v5 + 48) = self->_maxEVRange;
  *(v5 + 124) |= 0x20u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_7:
    if ((has & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_21;
  }

LABEL_20:
  *(v5 + 56) = self->_minBatteryCapacity;
  *(v5 + 124) |= 0x40u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_8:
    if ((has & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_21:
  *(v5 + 16) = self->_currentBatteryCapacity;
  *(v5 + 124) |= 2u;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_9:
    *(v5 + 40) = self->_maxBatteryCapacity;
    *(v5 + 124) |= 0x10u;
  }

LABEL_10:
  v9 = [(NSString *)self->_consumptionArguments copyWithZone:zone];
  v10 = *(v5 + 80);
  *(v5 + 80) = v9;

  v11 = [(NSString *)self->_chargingArguments copyWithZone:zone];
  v12 = *(v5 + 72);
  *(v5 + 72) = v11;

  v13 = self->_has;
  if ((v13 & 0x200) != 0)
  {
    *(v5 + 120) = self->_isCharging;
    *(v5 + 124) |= 0x200u;
    v13 = self->_has;
  }

  if ((v13 & 0x80) != 0)
  {
    *(v5 + 64) = self->_activeConnector;
    *(v5 + 124) |= 0x80u;
  }

  v14 = [(NSData *)self->_pairedAppInstallSessionIdentifier copyWithZone:zone];
  v15 = *(v5 + 112);
  *(v5 + 112) = v14;

  v16 = [(NSString *)self->_pairedAppInstallDeviceIdentifier copyWithZone:zone];
  v17 = *(v5 + 104);
  *(v5 + 104) = v16;

  return v5;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  [toCopy setIdentifier:self->_identifier];
  v4 = toCopy;
  has = self->_has;
  if ((has & 8) != 0)
  {
    *(toCopy + 4) = *&self->_dateOfUpdate;
    *(toCopy + 62) |= 8u;
    has = self->_has;
    if ((has & 0x100) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_27;
    }
  }

  else if ((*&self->_has & 0x100) == 0)
  {
    goto LABEL_3;
  }

  *(toCopy + 24) = self->_origin;
  *(toCopy + 62) |= 0x100u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_4:
    if ((has & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_28;
  }

LABEL_27:
  *(toCopy + 1) = *&self->_batteryPercentage;
  *(toCopy + 62) |= 1u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_5:
    if ((has & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_29;
  }

LABEL_28:
  *(toCopy + 3) = *&self->_currentEVRange;
  *(toCopy + 62) |= 4u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_6:
    if ((has & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_30;
  }

LABEL_29:
  *(toCopy + 6) = *&self->_maxEVRange;
  *(toCopy + 62) |= 0x20u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_7:
    if ((has & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_31;
  }

LABEL_30:
  *(toCopy + 7) = *&self->_minBatteryCapacity;
  *(toCopy + 62) |= 0x40u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_8:
    if ((has & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_31:
  *(toCopy + 2) = *&self->_currentBatteryCapacity;
  *(toCopy + 62) |= 2u;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_9:
    *(toCopy + 5) = *&self->_maxBatteryCapacity;
    *(toCopy + 62) |= 0x10u;
  }

LABEL_10:
  if (self->_consumptionArguments)
  {
    [toCopy setConsumptionArguments:?];
    v4 = toCopy;
  }

  if (self->_chargingArguments)
  {
    [toCopy setChargingArguments:?];
    v4 = toCopy;
  }

  v6 = self->_has;
  if ((v6 & 0x200) != 0)
  {
    v4[120] = self->_isCharging;
    *(v4 + 62) |= 0x200u;
    v6 = self->_has;
  }

  if ((v6 & 0x80) != 0)
  {
    *(v4 + 16) = self->_activeConnector;
    *(v4 + 62) |= 0x80u;
  }

  if (self->_pairedAppInstallSessionIdentifier)
  {
    [toCopy setPairedAppInstallSessionIdentifier:?];
    v4 = toCopy;
  }

  if (self->_pairedAppInstallDeviceIdentifier)
  {
    [toCopy setPairedAppInstallDeviceIdentifier:?];
    v4 = toCopy;
  }
}

- (void)writeTo:(id)to
{
  toCopy = to;
  identifier = self->_identifier;
  v19 = toCopy;
  PBDataWriterWriteStringField();
  has = self->_has;
  if ((has & 8) != 0)
  {
    dateOfUpdate = self->_dateOfUpdate;
    PBDataWriterWriteDoubleField();
    has = self->_has;
  }

  if ((has & 0x100) != 0)
  {
    origin = self->_origin;
    PBDataWriterWriteInt32Field();
    has = self->_has;
  }

  v9 = v19;
  if (has)
  {
    batteryPercentage = self->_batteryPercentage;
    PBDataWriterWriteDoubleField();
    v9 = v19;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_7:
      if ((has & 0x20) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_29;
    }
  }

  else if ((has & 4) == 0)
  {
    goto LABEL_7;
  }

  currentEVRange = self->_currentEVRange;
  PBDataWriterWriteDoubleField();
  v9 = v19;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_8:
    if ((has & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_30;
  }

LABEL_29:
  maxEVRange = self->_maxEVRange;
  PBDataWriterWriteDoubleField();
  v9 = v19;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_9:
    if ((has & 2) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_31;
  }

LABEL_30:
  minBatteryCapacity = self->_minBatteryCapacity;
  PBDataWriterWriteDoubleField();
  v9 = v19;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_10:
    if ((has & 0x10) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_31:
  currentBatteryCapacity = self->_currentBatteryCapacity;
  PBDataWriterWriteDoubleField();
  v9 = v19;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_11:
    maxBatteryCapacity = self->_maxBatteryCapacity;
    PBDataWriterWriteDoubleField();
    v9 = v19;
  }

LABEL_12:
  if (self->_consumptionArguments)
  {
    PBDataWriterWriteStringField();
    v9 = v19;
  }

  if (self->_chargingArguments)
  {
    PBDataWriterWriteStringField();
    v9 = v19;
  }

  v11 = self->_has;
  if ((v11 & 0x200) != 0)
  {
    isCharging = self->_isCharging;
    PBDataWriterWriteBOOLField();
    v9 = v19;
    v11 = self->_has;
  }

  if ((v11 & 0x80) != 0)
  {
    activeConnector = self->_activeConnector;
    PBDataWriterWriteInt32Field();
    v9 = v19;
  }

  if (self->_pairedAppInstallSessionIdentifier)
  {
    PBDataWriterWriteDataField();
    v9 = v19;
  }

  if (self->_pairedAppInstallDeviceIdentifier)
  {
    PBDataWriterWriteStringField();
    v9 = v19;
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  identifier = self->_identifier;
  if (identifier)
  {
    [dictionary setObject:identifier forKey:@"identifier"];
  }

  has = self->_has;
  if ((has & 8) != 0)
  {
    v14 = [MEMORY[0x277CCABB0] numberWithDouble:self->_dateOfUpdate];
    [v4 setObject:v14 forKey:@"dateOfUpdate"];

    has = self->_has;
    if ((has & 0x100) == 0)
    {
LABEL_5:
      if ((has & 1) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_35;
    }
  }

  else if ((*&self->_has & 0x100) == 0)
  {
    goto LABEL_5;
  }

  origin = self->_origin;
  if (origin >= 3)
  {
    v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_origin];
  }

  else
  {
    v16 = off_279E266B8[origin];
  }

  [v4 setObject:v16 forKey:@"origin"];

  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_6:
    if ((has & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_36;
  }

LABEL_35:
  v20 = [MEMORY[0x277CCABB0] numberWithDouble:self->_batteryPercentage];
  [v4 setObject:v20 forKey:@"batteryPercentage"];

  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_7:
    if ((has & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_37;
  }

LABEL_36:
  v21 = [MEMORY[0x277CCABB0] numberWithDouble:self->_currentEVRange];
  [v4 setObject:v21 forKey:@"currentEVRange"];

  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_8:
    if ((has & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_38;
  }

LABEL_37:
  v22 = [MEMORY[0x277CCABB0] numberWithDouble:self->_maxEVRange];
  [v4 setObject:v22 forKey:@"maxEVRange"];

  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_9:
    if ((has & 2) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_39;
  }

LABEL_38:
  v23 = [MEMORY[0x277CCABB0] numberWithDouble:self->_minBatteryCapacity];
  [v4 setObject:v23 forKey:@"minBatteryCapacity"];

  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_10:
    if ((has & 0x10) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_39:
  v24 = [MEMORY[0x277CCABB0] numberWithDouble:self->_currentBatteryCapacity];
  [v4 setObject:v24 forKey:@"currentBatteryCapacity"];

  if ((*&self->_has & 0x10) != 0)
  {
LABEL_11:
    v7 = [MEMORY[0x277CCABB0] numberWithDouble:self->_maxBatteryCapacity];
    [v4 setObject:v7 forKey:@"maxBatteryCapacity"];
  }

LABEL_12:
  consumptionArguments = self->_consumptionArguments;
  if (consumptionArguments)
  {
    [v4 setObject:consumptionArguments forKey:@"consumptionArguments"];
  }

  chargingArguments = self->_chargingArguments;
  if (chargingArguments)
  {
    [v4 setObject:chargingArguments forKey:@"chargingArguments"];
  }

  v10 = self->_has;
  if ((v10 & 0x200) != 0)
  {
    v11 = [MEMORY[0x277CCABB0] numberWithBool:self->_isCharging];
    [v4 setObject:v11 forKey:@"isCharging"];

    v10 = self->_has;
  }

  if ((v10 & 0x80) != 0)
  {
    activeConnector = self->_activeConnector;
    if (activeConnector >= 0xA)
    {
      v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_activeConnector];
    }

    else
    {
      v13 = off_279E266D0[activeConnector];
    }

    [v4 setObject:v13 forKey:@"activeConnector"];
  }

  pairedAppInstallSessionIdentifier = self->_pairedAppInstallSessionIdentifier;
  if (pairedAppInstallSessionIdentifier)
  {
    [v4 setObject:pairedAppInstallSessionIdentifier forKey:@"pairedAppInstallSessionIdentifier"];
  }

  pairedAppInstallDeviceIdentifier = self->_pairedAppInstallDeviceIdentifier;
  if (pairedAppInstallDeviceIdentifier)
  {
    [v4 setObject:pairedAppInstallDeviceIdentifier forKey:@"pairedAppInstallDeviceIdentifier"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = VGVehicleStateStorage;
  v4 = [(VGVehicleStateStorage *)&v8 description];
  dictionaryRepresentation = [(VGVehicleStateStorage *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (int)StringAsActiveConnector:(id)connector
{
  connectorCopy = connector;
  if ([connectorCopy isEqualToString:@"NONE"])
  {
    v4 = 0;
  }

  else if ([connectorCopy isEqualToString:@"J1772"])
  {
    v4 = 1;
  }

  else if ([connectorCopy isEqualToString:@"CCS1"])
  {
    v4 = 2;
  }

  else if ([connectorCopy isEqualToString:@"CCS2"])
  {
    v4 = 3;
  }

  else if ([connectorCopy isEqualToString:@"CHADEMO"])
  {
    v4 = 4;
  }

  else if ([connectorCopy isEqualToString:@"GBT_AC"])
  {
    v4 = 5;
  }

  else if ([connectorCopy isEqualToString:@"GBT_DC"])
  {
    v4 = 6;
  }

  else if ([connectorCopy isEqualToString:@"NACS_DC"])
  {
    v4 = 7;
  }

  else if ([connectorCopy isEqualToString:@"MENNEKES"])
  {
    v4 = 8;
  }

  else if ([connectorCopy isEqualToString:@"NACS_AC"])
  {
    v4 = 9;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasActiveConnector:(BOOL)connector
{
  if (connector)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFF7F | v3;
}

- (int)activeConnector
{
  if ((*&self->_has & 0x80) != 0)
  {
    return self->_activeConnector;
  }

  else
  {
    return 0;
  }
}

- (void)setHasIsCharging:(BOOL)charging
{
  if (charging)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFDFF | v3;
}

- (void)setHasMaxBatteryCapacity:(BOOL)capacity
{
  if (capacity)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFEF | v3;
}

- (void)setHasCurrentBatteryCapacity:(BOOL)capacity
{
  if (capacity)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFD | v3;
}

- (void)setHasMinBatteryCapacity:(BOOL)capacity
{
  if (capacity)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFBF | v3;
}

- (void)setHasMaxEVRange:(BOOL)range
{
  if (range)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFDF | v3;
}

- (void)setHasCurrentEVRange:(BOOL)range
{
  if (range)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFB | v3;
}

- (int)StringAsOrigin:(id)origin
{
  originCopy = origin;
  if ([originCopy isEqualToString:@"UNKNOWN"])
  {
    v4 = 0;
  }

  else if ([originCopy isEqualToString:@"IAP2"])
  {
    v4 = 1;
  }

  else if ([originCopy isEqualToString:@"SIRIINTENTS"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasOrigin:(BOOL)origin
{
  if (origin)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFEFF | v3;
}

- (int)origin
{
  if ((*&self->_has & 0x100) != 0)
  {
    return self->_origin;
  }

  else
  {
    return 0;
  }
}

- (void)setHasDateOfUpdate:(BOOL)update
{
  if (update)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFF7 | v3;
}

@end