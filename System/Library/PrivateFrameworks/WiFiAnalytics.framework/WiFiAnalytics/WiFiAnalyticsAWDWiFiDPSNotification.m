@interface WiFiAnalyticsAWDWiFiDPSNotification
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsSymptom:(id)a3;
- (int)symptom;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasCca:(BOOL)a3;
- (void)setHasFacetimeCallInProgress:(BOOL)a3;
- (void)setHasIsNANEnabled:(BOOL)a3;
- (void)setHasProblemAC:(BOOL)a3;
- (void)setHasSymptom:(BOOL)a3;
- (void)setHasTxBETrId:(BOOL)a3;
- (void)setHasTxBKTrId:(BOOL)a3;
- (void)setHasTxVITrId:(BOOL)a3;
- (void)setHasTxVOTrId:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation WiFiAnalyticsAWDWiFiDPSNotification

- (int)symptom
{
  if ((*&self->_has & 8) != 0)
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
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFF7 | v3;
}

- (int)StringAsSymptom:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"kDriverDetectedStall"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"kDriverDetectedSlow"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"kUserToggleOff"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"kUserToggleOn"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"kSymptomsdTrigger"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasProblemAC:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFB | v3;
}

- (void)setHasFacetimeCallInProgress:(BOOL)a3
{
  if (a3)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFEFF | v3;
}

- (void)setHasCca:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFD | v3;
}

- (void)setHasTxBETrId:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFEF | v3;
}

- (void)setHasTxBKTrId:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFDF | v3;
}

- (void)setHasTxVITrId:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFBF | v3;
}

- (void)setHasTxVOTrId:(BOOL)a3
{
  if (a3)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFF7F | v3;
}

- (void)setHasIsNANEnabled:(BOOL)a3
{
  if (a3)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFDFF | v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = WiFiAnalyticsAWDWiFiDPSNotification;
  v4 = [(WiFiAnalyticsAWDWiFiDPSNotification *)&v8 description];
  v5 = [(WiFiAnalyticsAWDWiFiDPSNotification *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  has = self->_has;
  if (has)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_timestamp];
    [v3 setObject:v7 forKey:@"timestamp"];

    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_20;
    }
  }

  else if ((has & 8) == 0)
  {
    goto LABEL_3;
  }

  symptom = self->_symptom;
  if (symptom >= 5)
  {
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_symptom];
  }

  else
  {
    v9 = off_1E830EF30[symptom];
  }

  [v3 setObject:v9 forKey:@"symptom"];

  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 0x100) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_21;
  }

LABEL_20:
  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_problemAC];
  [v3 setObject:v10 forKey:@"problemAC"];

  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_5:
    if ((has & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_22;
  }

LABEL_21:
  v11 = [MEMORY[0x1E696AD98] numberWithBool:self->_facetimeCallInProgress];
  [v3 setObject:v11 forKey:@"facetimeCallInProgress"];

  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_6:
    if ((has & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_23;
  }

LABEL_22:
  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_cca];
  [v3 setObject:v12 forKey:@"cca"];

  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_7:
    if ((has & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_24;
  }

LABEL_23:
  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_txBETrId];
  [v3 setObject:v13 forKey:@"txBETrId"];

  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_8:
    if ((has & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_25;
  }

LABEL_24:
  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_txBKTrId];
  [v3 setObject:v14 forKey:@"txBKTrId"];

  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_9:
    if ((has & 0x80) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_26;
  }

LABEL_25:
  v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_txVITrId];
  [v3 setObject:v15 forKey:@"txVITrId"];

  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_10:
    if ((has & 0x200) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_26:
  v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_txVOTrId];
  [v3 setObject:v16 forKey:@"txVOTrId"];

  if ((*&self->_has & 0x200) != 0)
  {
LABEL_11:
    v5 = [MEMORY[0x1E696AD98] numberWithBool:self->_isNANEnabled];
    [v3 setObject:v5 forKey:@"isNANEnabled"];
  }

LABEL_12:

  return v3;
}

- (void)writeTo:(id)a3
{
  v15 = a3;
  has = self->_has;
  if (has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

  else if ((has & 8) == 0)
  {
    goto LABEL_3;
  }

  symptom = self->_symptom;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 0x100) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_18;
  }

LABEL_17:
  problemAC = self->_problemAC;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_5:
    if ((has & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_19;
  }

LABEL_18:
  facetimeCallInProgress = self->_facetimeCallInProgress;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_6:
    if ((has & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_20;
  }

LABEL_19:
  cca = self->_cca;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_7:
    if ((has & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_21;
  }

LABEL_20:
  txBETrId = self->_txBETrId;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_8:
    if ((has & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_22;
  }

LABEL_21:
  txBKTrId = self->_txBKTrId;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_9:
    if ((has & 0x80) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_23;
  }

LABEL_22:
  txVITrId = self->_txVITrId;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_10:
    if ((has & 0x200) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_23:
  txVOTrId = self->_txVOTrId;
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 0x200) != 0)
  {
LABEL_11:
    isNANEnabled = self->_isNANEnabled;
    PBDataWriterWriteBOOLField();
  }

LABEL_12:
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if (has)
  {
    v4[1] = self->_timestamp;
    *(v4 + 24) |= 1u;
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

  else if ((has & 8) == 0)
  {
    goto LABEL_3;
  }

  *(v4 + 6) = self->_symptom;
  *(v4 + 24) |= 8u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 0x100) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_18;
  }

LABEL_17:
  *(v4 + 5) = self->_problemAC;
  *(v4 + 24) |= 4u;
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_5:
    if ((has & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_19;
  }

LABEL_18:
  *(v4 + 44) = self->_facetimeCallInProgress;
  *(v4 + 24) |= 0x100u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_6:
    if ((has & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_20;
  }

LABEL_19:
  *(v4 + 4) = self->_cca;
  *(v4 + 24) |= 2u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_7:
    if ((has & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_21;
  }

LABEL_20:
  *(v4 + 7) = self->_txBETrId;
  *(v4 + 24) |= 0x10u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_8:
    if ((has & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_22;
  }

LABEL_21:
  *(v4 + 8) = self->_txBKTrId;
  *(v4 + 24) |= 0x20u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_9:
    if ((has & 0x80) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_23;
  }

LABEL_22:
  *(v4 + 9) = self->_txVITrId;
  *(v4 + 24) |= 0x40u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_10:
    if ((has & 0x200) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_23:
  *(v4 + 10) = self->_txVOTrId;
  *(v4 + 24) |= 0x80u;
  if ((*&self->_has & 0x200) != 0)
  {
LABEL_11:
    *(v4 + 45) = self->_isNANEnabled;
    *(v4 + 24) |= 0x200u;
  }

LABEL_12:
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  has = self->_has;
  if (has)
  {
    *(result + 1) = self->_timestamp;
    *(result + 24) |= 1u;
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if ((has & 8) == 0)
  {
    goto LABEL_3;
  }

  *(result + 6) = self->_symptom;
  *(result + 24) |= 8u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 0x100) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_15:
  *(result + 5) = self->_problemAC;
  *(result + 24) |= 4u;
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_5:
    if ((has & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_16:
  *(result + 44) = self->_facetimeCallInProgress;
  *(result + 24) |= 0x100u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_6:
    if ((has & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  *(result + 4) = self->_cca;
  *(result + 24) |= 2u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_7:
    if ((has & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  *(result + 7) = self->_txBETrId;
  *(result + 24) |= 0x10u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_8:
    if ((has & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

LABEL_19:
  *(result + 8) = self->_txBKTrId;
  *(result + 24) |= 0x20u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_9:
    if ((has & 0x80) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

LABEL_20:
  *(result + 9) = self->_txVITrId;
  *(result + 24) |= 0x40u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_10:
    if ((has & 0x200) == 0)
    {
      return result;
    }

    goto LABEL_11;
  }

LABEL_21:
  *(result + 10) = self->_txVOTrId;
  *(result + 24) |= 0x80u;
  if ((*&self->_has & 0x200) == 0)
  {
    return result;
  }

LABEL_11:
  *(result + 45) = self->_isNANEnabled;
  *(result + 24) |= 0x200u;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_53;
  }

  has = self->_has;
  v6 = *(v4 + 24);
  if (has)
  {
    if ((v6 & 1) == 0 || self->_timestamp != *(v4 + 1))
    {
      goto LABEL_53;
    }
  }

  else if (v6)
  {
    goto LABEL_53;
  }

  if ((has & 8) != 0)
  {
    if ((v6 & 8) == 0 || self->_symptom != *(v4 + 6))
    {
      goto LABEL_53;
    }
  }

  else if ((v6 & 8) != 0)
  {
    goto LABEL_53;
  }

  if ((has & 4) != 0)
  {
    if ((v6 & 4) == 0 || self->_problemAC != *(v4 + 5))
    {
      goto LABEL_53;
    }
  }

  else if ((v6 & 4) != 0)
  {
    goto LABEL_53;
  }

  if ((*&self->_has & 0x100) != 0)
  {
    if ((*(v4 + 24) & 0x100) == 0)
    {
      goto LABEL_53;
    }

    v7 = *(v4 + 44);
    if (self->_facetimeCallInProgress)
    {
      if ((*(v4 + 44) & 1) == 0)
      {
        goto LABEL_53;
      }
    }

    else if (*(v4 + 44))
    {
      goto LABEL_53;
    }
  }

  else if ((*(v4 + 24) & 0x100) != 0)
  {
    goto LABEL_53;
  }

  if ((has & 2) != 0)
  {
    if ((v6 & 2) == 0 || self->_cca != *(v4 + 4))
    {
      goto LABEL_53;
    }
  }

  else if ((v6 & 2) != 0)
  {
    goto LABEL_53;
  }

  if ((has & 0x10) != 0)
  {
    if ((v6 & 0x10) == 0 || self->_txBETrId != *(v4 + 7))
    {
      goto LABEL_53;
    }
  }

  else if ((v6 & 0x10) != 0)
  {
    goto LABEL_53;
  }

  if ((has & 0x20) != 0)
  {
    if ((v6 & 0x20) == 0 || self->_txBKTrId != *(v4 + 8))
    {
      goto LABEL_53;
    }
  }

  else if ((v6 & 0x20) != 0)
  {
    goto LABEL_53;
  }

  if ((has & 0x40) != 0)
  {
    if ((v6 & 0x40) == 0 || self->_txVITrId != *(v4 + 9))
    {
      goto LABEL_53;
    }
  }

  else if ((v6 & 0x40) != 0)
  {
    goto LABEL_53;
  }

  if ((has & 0x80) != 0)
  {
    if ((v6 & 0x80) == 0 || self->_txVOTrId != *(v4 + 10))
    {
      goto LABEL_53;
    }
  }

  else if ((v6 & 0x80) != 0)
  {
    goto LABEL_53;
  }

  if ((*&self->_has & 0x200) != 0)
  {
    if ((*(v4 + 24) & 0x200) != 0)
    {
      if (self->_isNANEnabled)
      {
        if ((*(v4 + 45) & 1) == 0)
        {
          goto LABEL_53;
        }
      }

      else if (*(v4 + 45))
      {
        goto LABEL_53;
      }

      v8 = 1;
      goto LABEL_54;
    }

LABEL_53:
    v8 = 0;
    goto LABEL_54;
  }

  v8 = (v6 & 0x200) == 0;
LABEL_54:

  return v8;
}

- (unint64_t)hash
{
  has = self->_has;
  if (has)
  {
    v3 = 2654435761u * self->_timestamp;
    if ((has & 8) != 0)
    {
LABEL_3:
      v4 = 2654435761 * self->_symptom;
      if ((has & 4) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else
  {
    v3 = 0;
    if ((has & 8) != 0)
    {
      goto LABEL_3;
    }
  }

  v4 = 0;
  if ((has & 4) != 0)
  {
LABEL_4:
    v5 = 2654435761 * self->_problemAC;
    if ((*&self->_has & 0x100) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  v5 = 0;
  if ((*&self->_has & 0x100) != 0)
  {
LABEL_5:
    v6 = 2654435761 * self->_facetimeCallInProgress;
    if ((has & 2) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  v6 = 0;
  if ((has & 2) != 0)
  {
LABEL_6:
    v7 = 2654435761 * self->_cca;
    if ((has & 0x10) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  v7 = 0;
  if ((has & 0x10) != 0)
  {
LABEL_7:
    v8 = 2654435761 * self->_txBETrId;
    if ((has & 0x20) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

LABEL_17:
  v8 = 0;
  if ((has & 0x20) != 0)
  {
LABEL_8:
    v9 = 2654435761 * self->_txBKTrId;
    if ((has & 0x40) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_18:
  v9 = 0;
  if ((has & 0x40) != 0)
  {
LABEL_9:
    v10 = 2654435761 * self->_txVITrId;
    if ((has & 0x80) != 0)
    {
      goto LABEL_10;
    }

LABEL_20:
    v11 = 0;
    if ((*&self->_has & 0x200) != 0)
    {
      goto LABEL_11;
    }

LABEL_21:
    v12 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12;
  }

LABEL_19:
  v10 = 0;
  if ((has & 0x80) == 0)
  {
    goto LABEL_20;
  }

LABEL_10:
  v11 = 2654435761 * self->_txVOTrId;
  if ((*&self->_has & 0x200) == 0)
  {
    goto LABEL_21;
  }

LABEL_11:
  v12 = 2654435761 * self->_isNANEnabled;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 24);
  if (v5)
  {
    self->_timestamp = *(v4 + 1);
    *&self->_has |= 1u;
    v5 = *(v4 + 24);
    if ((v5 & 8) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

  else if ((v5 & 8) == 0)
  {
    goto LABEL_3;
  }

  self->_symptom = *(v4 + 6);
  *&self->_has |= 8u;
  v5 = *(v4 + 24);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_18;
  }

LABEL_17:
  self->_problemAC = *(v4 + 5);
  *&self->_has |= 4u;
  v5 = *(v4 + 24);
  if ((v5 & 0x100) == 0)
  {
LABEL_5:
    if ((v5 & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_19;
  }

LABEL_18:
  self->_facetimeCallInProgress = *(v4 + 44);
  *&self->_has |= 0x100u;
  v5 = *(v4 + 24);
  if ((v5 & 2) == 0)
  {
LABEL_6:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_20;
  }

LABEL_19:
  self->_cca = *(v4 + 4);
  *&self->_has |= 2u;
  v5 = *(v4 + 24);
  if ((v5 & 0x10) == 0)
  {
LABEL_7:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_21;
  }

LABEL_20:
  self->_txBETrId = *(v4 + 7);
  *&self->_has |= 0x10u;
  v5 = *(v4 + 24);
  if ((v5 & 0x20) == 0)
  {
LABEL_8:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_22;
  }

LABEL_21:
  self->_txBKTrId = *(v4 + 8);
  *&self->_has |= 0x20u;
  v5 = *(v4 + 24);
  if ((v5 & 0x40) == 0)
  {
LABEL_9:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_23;
  }

LABEL_22:
  self->_txVITrId = *(v4 + 9);
  *&self->_has |= 0x40u;
  v5 = *(v4 + 24);
  if ((v5 & 0x80) == 0)
  {
LABEL_10:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_23:
  self->_txVOTrId = *(v4 + 10);
  *&self->_has |= 0x80u;
  if ((*(v4 + 24) & 0x200) != 0)
  {
LABEL_11:
    self->_isNANEnabled = *(v4 + 45);
    *&self->_has |= 0x200u;
  }

LABEL_12:
}

@end