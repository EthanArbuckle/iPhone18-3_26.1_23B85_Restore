@interface AWDSymptomsNetworkLoadedLinkQualityMetric
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsNetworkType:(id)a3;
- (int)networkType;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasDataStalls:(BOOL)a3;
- (void)setHasIsLowInternetDL:(BOOL)a3;
- (void)setHasIsLowInternetUL:(BOOL)a3;
- (void)setHasIsNetworkReliable:(BOOL)a3;
- (void)setHasLQM:(BOOL)a3;
- (void)setHasLastReportedRSSI:(BOOL)a3;
- (void)setHasLoadedLQM:(BOOL)a3;
- (void)setHasNetworkType:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDSymptomsNetworkLoadedLinkQualityMetric

- (int)networkType
{
  if ((*&self->_has & 0x20) != 0)
  {
    return self->_networkType;
  }

  else
  {
    return 1;
  }
}

- (void)setHasNetworkType:(BOOL)a3
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

- (int)StringAsNetworkType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"WIFI"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"CELLULAR"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"WIRED_ETHERNET"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)setHasLoadedLQM:(BOOL)a3
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

- (void)setHasLQM:(BOOL)a3
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

- (void)setHasIsNetworkReliable:(BOOL)a3
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

- (void)setHasDataStalls:(BOOL)a3
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

- (void)setHasLastReportedRSSI:(BOOL)a3
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

- (void)setHasIsLowInternetUL:(BOOL)a3
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

- (void)setHasIsLowInternetDL:(BOOL)a3
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

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = AWDSymptomsNetworkLoadedLinkQualityMetric;
  v4 = [(AWDSymptomsNetworkLoadedLinkQualityMetric *)&v8 description];
  v5 = [(AWDSymptomsNetworkLoadedLinkQualityMetric *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if (has)
  {
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_timestamp];
    [v3 setObject:v5 forKey:@"timestamp"];

    has = self->_has;
  }

  if ((has & 0x20) != 0)
  {
    v6 = self->_networkType - 1;
    if (v6 >= 3)
    {
      v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_networkType];
    }

    else
    {
      v7 = off_278989F10[v6];
    }

    [v3 setObject:v7 forKey:@"networkType"];
  }

  networkAttachmentLabel = self->_networkAttachmentLabel;
  if (networkAttachmentLabel)
  {
    [v3 setObject:networkAttachmentLabel forKey:@"networkAttachmentLabel"];
  }

  v9 = self->_has;
  if ((v9 & 0x10) != 0)
  {
    v10 = [MEMORY[0x277CCABB0] numberWithInt:self->_loadedLQM];
    [v3 setObject:v10 forKey:@"loadedLQM"];

    v9 = self->_has;
  }

  if ((v9 & 4) != 0)
  {
    v11 = [MEMORY[0x277CCABB0] numberWithInt:self->_lQM];
    [v3 setObject:v11 forKey:@"LQM"];
  }

  radioAccessTechnology = self->_radioAccessTechnology;
  if (radioAccessTechnology)
  {
    [v3 setObject:radioAccessTechnology forKey:@"radioAccessTechnology"];
  }

  v13 = self->_has;
  if ((v13 & 0x100) != 0)
  {
    v16 = [MEMORY[0x277CCABB0] numberWithBool:self->_isNetworkReliable];
    [v3 setObject:v16 forKey:@"isNetworkReliable"];

    v13 = self->_has;
    if ((v13 & 2) == 0)
    {
LABEL_18:
      if ((v13 & 8) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_27;
    }
  }

  else if ((v13 & 2) == 0)
  {
    goto LABEL_18;
  }

  v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_dataStalls];
  [v3 setObject:v17 forKey:@"dataStalls"];

  v13 = self->_has;
  if ((v13 & 8) == 0)
  {
LABEL_19:
    if ((v13 & 0x80) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_28;
  }

LABEL_27:
  v18 = [MEMORY[0x277CCABB0] numberWithInt:self->_lastReportedRSSI];
  [v3 setObject:v18 forKey:@"lastReportedRSSI"];

  v13 = self->_has;
  if ((v13 & 0x80) == 0)
  {
LABEL_20:
    if ((v13 & 0x40) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

LABEL_28:
  v19 = [MEMORY[0x277CCABB0] numberWithBool:self->_isLowInternetUL];
  [v3 setObject:v19 forKey:@"isLowInternetUL"];

  if ((*&self->_has & 0x40) != 0)
  {
LABEL_21:
    v14 = [MEMORY[0x277CCABB0] numberWithBool:self->_isLowInternetDL];
    [v3 setObject:v14 forKey:@"isLowInternetDL"];
  }

LABEL_22:

  return v3;
}

- (void)writeTo:(id)a3
{
  v16 = a3;
  has = self->_has;
  if (has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    has = self->_has;
  }

  if ((has & 0x20) != 0)
  {
    networkType = self->_networkType;
    PBDataWriterWriteInt32Field();
  }

  if (self->_networkAttachmentLabel)
  {
    PBDataWriterWriteStringField();
  }

  v7 = self->_has;
  if ((v7 & 0x10) != 0)
  {
    loadedLQM = self->_loadedLQM;
    PBDataWriterWriteInt32Field();
    v7 = self->_has;
  }

  if ((v7 & 4) != 0)
  {
    lQM = self->_lQM;
    PBDataWriterWriteInt32Field();
  }

  if (self->_radioAccessTechnology)
  {
    PBDataWriterWriteStringField();
  }

  v10 = self->_has;
  if ((v10 & 0x100) != 0)
  {
    isNetworkReliable = self->_isNetworkReliable;
    PBDataWriterWriteBOOLField();
    v10 = self->_has;
    if ((v10 & 2) == 0)
    {
LABEL_15:
      if ((v10 & 8) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_24;
    }
  }

  else if ((v10 & 2) == 0)
  {
    goto LABEL_15;
  }

  dataStalls = self->_dataStalls;
  PBDataWriterWriteUint32Field();
  v10 = self->_has;
  if ((v10 & 8) == 0)
  {
LABEL_16:
    if ((v10 & 0x80) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_25;
  }

LABEL_24:
  lastReportedRSSI = self->_lastReportedRSSI;
  PBDataWriterWriteInt32Field();
  v10 = self->_has;
  if ((v10 & 0x80) == 0)
  {
LABEL_17:
    if ((v10 & 0x40) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

LABEL_25:
  isLowInternetUL = self->_isLowInternetUL;
  PBDataWriterWriteBOOLField();
  if ((*&self->_has & 0x40) != 0)
  {
LABEL_18:
    isLowInternetDL = self->_isLowInternetDL;
    PBDataWriterWriteBOOLField();
  }

LABEL_19:
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if (has)
  {
    v4[1] = self->_timestamp;
    *(v4 + 30) |= 1u;
    has = self->_has;
  }

  if ((has & 0x20) != 0)
  {
    *(v4 + 10) = self->_networkType;
    *(v4 + 30) |= 0x20u;
  }

  v8 = v4;
  if (self->_networkAttachmentLabel)
  {
    [v4 setNetworkAttachmentLabel:?];
    v4 = v8;
  }

  v6 = self->_has;
  if ((v6 & 0x10) != 0)
  {
    *(v4 + 7) = self->_loadedLQM;
    *(v4 + 30) |= 0x10u;
    v6 = self->_has;
  }

  if ((v6 & 4) != 0)
  {
    *(v4 + 5) = self->_lQM;
    *(v4 + 30) |= 4u;
  }

  if (self->_radioAccessTechnology)
  {
    [v8 setRadioAccessTechnology:?];
    v4 = v8;
  }

  v7 = self->_has;
  if ((v7 & 0x100) != 0)
  {
    *(v4 + 58) = self->_isNetworkReliable;
    *(v4 + 30) |= 0x100u;
    v7 = self->_has;
    if ((v7 & 2) == 0)
    {
LABEL_15:
      if ((v7 & 8) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_24;
    }
  }

  else if ((v7 & 2) == 0)
  {
    goto LABEL_15;
  }

  *(v4 + 4) = self->_dataStalls;
  *(v4 + 30) |= 2u;
  v7 = self->_has;
  if ((v7 & 8) == 0)
  {
LABEL_16:
    if ((v7 & 0x80) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_25;
  }

LABEL_24:
  *(v4 + 6) = self->_lastReportedRSSI;
  *(v4 + 30) |= 8u;
  v7 = self->_has;
  if ((v7 & 0x80) == 0)
  {
LABEL_17:
    if ((v7 & 0x40) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

LABEL_25:
  *(v4 + 57) = self->_isLowInternetUL;
  *(v4 + 30) |= 0x80u;
  if ((*&self->_has & 0x40) != 0)
  {
LABEL_18:
    *(v4 + 56) = self->_isLowInternetDL;
    *(v4 + 30) |= 0x40u;
  }

LABEL_19:
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  has = self->_has;
  if (has)
  {
    *(v5 + 8) = self->_timestamp;
    *(v5 + 60) |= 1u;
    has = self->_has;
  }

  if ((has & 0x20) != 0)
  {
    *(v5 + 40) = self->_networkType;
    *(v5 + 60) |= 0x20u;
  }

  v8 = [(NSString *)self->_networkAttachmentLabel copyWithZone:a3];
  v9 = *(v6 + 32);
  *(v6 + 32) = v8;

  v10 = self->_has;
  if ((v10 & 0x10) != 0)
  {
    *(v6 + 28) = self->_loadedLQM;
    *(v6 + 60) |= 0x10u;
    v10 = self->_has;
  }

  if ((v10 & 4) != 0)
  {
    *(v6 + 20) = self->_lQM;
    *(v6 + 60) |= 4u;
  }

  v11 = [(NSString *)self->_radioAccessTechnology copyWithZone:a3];
  v12 = *(v6 + 48);
  *(v6 + 48) = v11;

  v13 = self->_has;
  if ((v13 & 0x100) != 0)
  {
    *(v6 + 58) = self->_isNetworkReliable;
    *(v6 + 60) |= 0x100u;
    v13 = self->_has;
    if ((v13 & 2) == 0)
    {
LABEL_11:
      if ((v13 & 8) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_18;
    }
  }

  else if ((v13 & 2) == 0)
  {
    goto LABEL_11;
  }

  *(v6 + 16) = self->_dataStalls;
  *(v6 + 60) |= 2u;
  v13 = self->_has;
  if ((v13 & 8) == 0)
  {
LABEL_12:
    if ((v13 & 0x80) == 0)
    {
      goto LABEL_13;
    }

LABEL_19:
    *(v6 + 57) = self->_isLowInternetUL;
    *(v6 + 60) |= 0x80u;
    if ((*&self->_has & 0x40) == 0)
    {
      return v6;
    }

    goto LABEL_14;
  }

LABEL_18:
  *(v6 + 24) = self->_lastReportedRSSI;
  *(v6 + 60) |= 8u;
  v13 = self->_has;
  if ((v13 & 0x80) != 0)
  {
    goto LABEL_19;
  }

LABEL_13:
  if ((v13 & 0x40) != 0)
  {
LABEL_14:
    *(v6 + 56) = self->_isLowInternetDL;
    *(v6 + 60) |= 0x40u;
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_61;
  }

  has = self->_has;
  v6 = *(v4 + 30);
  if (has)
  {
    if ((v6 & 1) == 0 || self->_timestamp != *(v4 + 1))
    {
      goto LABEL_61;
    }
  }

  else if (v6)
  {
    goto LABEL_61;
  }

  if ((has & 0x20) != 0)
  {
    if ((v6 & 0x20) == 0 || self->_networkType != *(v4 + 10))
    {
      goto LABEL_61;
    }
  }

  else if ((v6 & 0x20) != 0)
  {
    goto LABEL_61;
  }

  networkAttachmentLabel = self->_networkAttachmentLabel;
  if (networkAttachmentLabel | *(v4 + 4))
  {
    if (![(NSString *)networkAttachmentLabel isEqual:?])
    {
      goto LABEL_61;
    }

    has = self->_has;
  }

  v8 = *(v4 + 30);
  if ((has & 0x10) != 0)
  {
    if ((v8 & 0x10) == 0 || self->_loadedLQM != *(v4 + 7))
    {
      goto LABEL_61;
    }
  }

  else if ((v8 & 0x10) != 0)
  {
    goto LABEL_61;
  }

  if ((has & 4) != 0)
  {
    if ((v8 & 4) == 0 || self->_lQM != *(v4 + 5))
    {
      goto LABEL_61;
    }
  }

  else if ((v8 & 4) != 0)
  {
    goto LABEL_61;
  }

  radioAccessTechnology = self->_radioAccessTechnology;
  if (radioAccessTechnology | *(v4 + 6))
  {
    if (![(NSString *)radioAccessTechnology isEqual:?])
    {
      goto LABEL_61;
    }

    has = self->_has;
  }

  v10 = *(v4 + 30);
  if ((has & 0x100) != 0)
  {
    if ((*(v4 + 30) & 0x100) == 0)
    {
      goto LABEL_61;
    }

    v11 = *(v4 + 58);
    if (self->_isNetworkReliable)
    {
      if ((*(v4 + 58) & 1) == 0)
      {
        goto LABEL_61;
      }
    }

    else if (*(v4 + 58))
    {
      goto LABEL_61;
    }
  }

  else if ((*(v4 + 30) & 0x100) != 0)
  {
    goto LABEL_61;
  }

  if ((has & 2) != 0)
  {
    if ((v10 & 2) == 0 || self->_dataStalls != *(v4 + 4))
    {
      goto LABEL_61;
    }
  }

  else if ((v10 & 2) != 0)
  {
    goto LABEL_61;
  }

  if ((has & 8) != 0)
  {
    if ((v10 & 8) == 0 || self->_lastReportedRSSI != *(v4 + 6))
    {
      goto LABEL_61;
    }
  }

  else if ((v10 & 8) != 0)
  {
    goto LABEL_61;
  }

  if ((has & 0x80) != 0)
  {
    if ((v10 & 0x80) == 0)
    {
      goto LABEL_61;
    }

    v13 = *(v4 + 57);
    if (self->_isLowInternetUL)
    {
      if ((*(v4 + 57) & 1) == 0)
      {
        goto LABEL_61;
      }
    }

    else if (*(v4 + 57))
    {
      goto LABEL_61;
    }
  }

  else if ((v10 & 0x80) != 0)
  {
    goto LABEL_61;
  }

  if ((has & 0x40) != 0)
  {
    if ((v10 & 0x40) != 0)
    {
      if (self->_isLowInternetDL)
      {
        if (*(v4 + 56))
        {
          goto LABEL_63;
        }
      }

      else if (!*(v4 + 56))
      {
LABEL_63:
        v12 = 1;
        goto LABEL_62;
      }
    }

LABEL_61:
    v12 = 0;
    goto LABEL_62;
  }

  v12 = (v10 & 0x40) == 0;
LABEL_62:

  return v12;
}

- (unint64_t)hash
{
  has = self->_has;
  if (has)
  {
    v4 = 2654435761u * self->_timestamp;
    if ((has & 0x20) != 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = 0;
    if ((has & 0x20) != 0)
    {
LABEL_3:
      v5 = 2654435761 * self->_networkType;
      goto LABEL_6;
    }
  }

  v5 = 0;
LABEL_6:
  v6 = [(NSString *)self->_networkAttachmentLabel hash];
  v7 = self->_has;
  if ((v7 & 0x10) != 0)
  {
    v8 = 2654435761 * self->_loadedLQM;
    if ((v7 & 4) != 0)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v8 = 0;
    if ((v7 & 4) != 0)
    {
LABEL_8:
      v9 = 2654435761 * self->_lQM;
      goto LABEL_11;
    }
  }

  v9 = 0;
LABEL_11:
  v10 = [(NSString *)self->_radioAccessTechnology hash];
  v11 = self->_has;
  if ((v11 & 0x100) != 0)
  {
    v12 = 2654435761 * self->_isNetworkReliable;
    if ((v11 & 2) != 0)
    {
LABEL_13:
      v13 = 2654435761 * self->_dataStalls;
      if ((v11 & 8) != 0)
      {
        goto LABEL_14;
      }

      goto LABEL_19;
    }
  }

  else
  {
    v12 = 0;
    if ((v11 & 2) != 0)
    {
      goto LABEL_13;
    }
  }

  v13 = 0;
  if ((v11 & 8) != 0)
  {
LABEL_14:
    v14 = 2654435761 * self->_lastReportedRSSI;
    if ((v11 & 0x80) != 0)
    {
      goto LABEL_15;
    }

LABEL_20:
    v15 = 0;
    if ((v11 & 0x40) != 0)
    {
      goto LABEL_16;
    }

LABEL_21:
    v16 = 0;
    return v5 ^ v4 ^ v8 ^ v9 ^ v6 ^ v10 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16;
  }

LABEL_19:
  v14 = 0;
  if ((v11 & 0x80) == 0)
  {
    goto LABEL_20;
  }

LABEL_15:
  v15 = 2654435761 * self->_isLowInternetUL;
  if ((v11 & 0x40) == 0)
  {
    goto LABEL_21;
  }

LABEL_16:
  v16 = 2654435761 * self->_isLowInternetDL;
  return v5 ^ v4 ^ v8 ^ v9 ^ v6 ^ v10 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 30);
  if (v5)
  {
    self->_timestamp = *(v4 + 1);
    *&self->_has |= 1u;
    v5 = *(v4 + 30);
  }

  if ((v5 & 0x20) != 0)
  {
    self->_networkType = *(v4 + 10);
    *&self->_has |= 0x20u;
  }

  v8 = v4;
  if (*(v4 + 4))
  {
    [(AWDSymptomsNetworkLoadedLinkQualityMetric *)self setNetworkAttachmentLabel:?];
    v4 = v8;
  }

  v6 = *(v4 + 30);
  if ((v6 & 0x10) != 0)
  {
    self->_loadedLQM = *(v4 + 7);
    *&self->_has |= 0x10u;
    v6 = *(v4 + 30);
  }

  if ((v6 & 4) != 0)
  {
    self->_lQM = *(v4 + 5);
    *&self->_has |= 4u;
  }

  if (*(v4 + 6))
  {
    [(AWDSymptomsNetworkLoadedLinkQualityMetric *)self setRadioAccessTechnology:?];
    v4 = v8;
  }

  v7 = *(v4 + 30);
  if ((v7 & 0x100) != 0)
  {
    self->_isNetworkReliable = *(v4 + 58);
    *&self->_has |= 0x100u;
    v7 = *(v4 + 30);
    if ((v7 & 2) == 0)
    {
LABEL_15:
      if ((v7 & 8) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_24;
    }
  }

  else if ((v7 & 2) == 0)
  {
    goto LABEL_15;
  }

  self->_dataStalls = *(v4 + 4);
  *&self->_has |= 2u;
  v7 = *(v4 + 30);
  if ((v7 & 8) == 0)
  {
LABEL_16:
    if ((v7 & 0x80) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_25;
  }

LABEL_24:
  self->_lastReportedRSSI = *(v4 + 6);
  *&self->_has |= 8u;
  v7 = *(v4 + 30);
  if ((v7 & 0x80) == 0)
  {
LABEL_17:
    if ((v7 & 0x40) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

LABEL_25:
  self->_isLowInternetUL = *(v4 + 57);
  *&self->_has |= 0x80u;
  if ((*(v4 + 30) & 0x40) != 0)
  {
LABEL_18:
    self->_isLowInternetDL = *(v4 + 56);
    *&self->_has |= 0x40u;
  }

LABEL_19:
}

@end