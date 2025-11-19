@interface AWDSymptomsAdvisoryAppCanUseAlternateNetwork
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsBailOutOf:(id)a3;
- (int)StringAsDeliberation:(id)a3;
- (int)StringAsRationale:(id)a3;
- (int)bailOutOf;
- (int)deliberation;
- (int)rationale;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasAltUsage:(BOOL)a3;
- (void)setHasBailOutOf:(BOOL)a3;
- (void)setHasDeliberation:(BOOL)a3;
- (void)setHasJumboFlows:(BOOL)a3;
- (void)setHasRationale:(BOOL)a3;
- (void)setHasTimestamp:(BOOL)a3;
- (void)setHasWifiUsage:(BOOL)a3;
- (void)setHasWwanUsage:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDSymptomsAdvisoryAppCanUseAlternateNetwork

- (void)setHasTimestamp:(BOOL)a3
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

- (int)bailOutOf
{
  if ((*&self->_has & 0x40) != 0)
  {
    return self->_bailOutOf;
  }

  else
  {
    return 1;
  }
}

- (void)setHasBailOutOf:(BOOL)a3
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

- (int)StringAsBailOutOf:(id)a3
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

- (int)deliberation
{
  if ((*&self->_has & 0x80) != 0)
  {
    return self->_deliberation;
  }

  else
  {
    return 1;
  }
}

- (void)setHasDeliberation:(BOOL)a3
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

- (int)StringAsDeliberation:(id)a3
{
  v3 = a3;
  v4 = 1;
  if (([v3 isEqualToString:@"Allowed"] & 1) == 0)
  {
    if ([v3 isEqualToString:@"NotAllowed"])
    {
      v4 = 2;
    }

    else
    {
      v4 = 1;
    }
  }

  return v4;
}

- (int)rationale
{
  if ((*&self->_has & 0x100) != 0)
  {
    return self->_rationale;
  }

  else
  {
    return 1;
  }
}

- (void)setHasRationale:(BOOL)a3
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

- (int)StringAsRationale:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"WithinAllowance"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"OutsideAllowance"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"AppUnknown"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"AppSettleInPeriod"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"AppBlacklisted"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"AppWhitelisted"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"AppFreePassed"])
  {
    v4 = 7;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)setHasWwanUsage:(BOOL)a3
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

- (void)setHasWifiUsage:(BOOL)a3
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

- (void)setHasAltUsage:(BOOL)a3
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

- (void)setHasJumboFlows:(BOOL)a3
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

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = AWDSymptomsAdvisoryAppCanUseAlternateNetwork;
  v4 = [(AWDSymptomsAdvisoryAppCanUseAlternateNetwork *)&v8 description];
  v5 = [(AWDSymptomsAdvisoryAppCanUseAlternateNetwork *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  if ((*&self->_has & 8) != 0)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_timestamp];
    [v3 setObject:v4 forKey:@"timestamp"];
  }

  bundleName = self->_bundleName;
  if (bundleName)
  {
    [v3 setObject:bundleName forKey:@"bundleName"];
  }

  has = self->_has;
  if ((has & 0x40) != 0)
  {
    v9 = self->_bailOutOf - 1;
    if (v9 >= 3)
    {
      v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_bailOutOf];
    }

    else
    {
      v10 = off_27898DFE8[v9];
    }

    [v3 setObject:v10 forKey:@"bailOutOf"];

    has = self->_has;
    if ((has & 0x80) == 0)
    {
LABEL_7:
      if ((has & 0x100) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_27;
    }
  }

  else if ((has & 0x80) == 0)
  {
    goto LABEL_7;
  }

  deliberation = self->_deliberation;
  if (deliberation == 1)
  {
    v12 = @"Allowed";
  }

  else if (deliberation == 2)
  {
    v12 = @"NotAllowed";
  }

  else
  {
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_deliberation];
  }

  [v3 setObject:v12 forKey:@"deliberation"];

  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_8:
    if ((has & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_31;
  }

LABEL_27:
  v13 = self->_rationale - 1;
  if (v13 >= 7)
  {
    v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_rationale];
  }

  else
  {
    v14 = off_27898E000[v13];
  }

  [v3 setObject:v14 forKey:@"rationale"];

  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_9:
    if ((has & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_32;
  }

LABEL_31:
  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_wwanUsage];
  [v3 setObject:v15 forKey:@"wwanUsage"];

  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_10:
    if ((has & 2) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_33;
  }

LABEL_32:
  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_wifiUsage];
  [v3 setObject:v16 forKey:@"wifiUsage"];

  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_11:
    if ((has & 1) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_34;
  }

LABEL_33:
  v17 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_altUsage];
  [v3 setObject:v17 forKey:@"altUsage"];

  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_12:
    if ((has & 4) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_34:
  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_allFlows];
  [v3 setObject:v18 forKey:@"allFlows"];

  if ((*&self->_has & 4) != 0)
  {
LABEL_13:
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_jumboFlows];
    [v3 setObject:v7 forKey:@"jumboFlows"];
  }

LABEL_14:

  return v3;
}

- (void)writeTo:(id)a3
{
  v14 = a3;
  if ((*&self->_has & 8) != 0)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
  }

  if (self->_bundleName)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if ((has & 0x40) != 0)
  {
    bailOutOf = self->_bailOutOf;
    PBDataWriterWriteInt32Field();
    has = self->_has;
    if ((has & 0x80) == 0)
    {
LABEL_7:
      if ((has & 0x100) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_19;
    }
  }

  else if ((has & 0x80) == 0)
  {
    goto LABEL_7;
  }

  deliberation = self->_deliberation;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_8:
    if ((has & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

LABEL_19:
  rationale = self->_rationale;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_9:
    if ((has & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

LABEL_20:
  wwanUsage = self->_wwanUsage;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_10:
    if ((has & 2) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_22;
  }

LABEL_21:
  wifiUsage = self->_wifiUsage;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_11:
    if ((has & 1) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_23;
  }

LABEL_22:
  altUsage = self->_altUsage;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_12:
    if ((has & 4) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_23:
  allFlows = self->_allFlows;
  PBDataWriterWriteUint64Field();
  if ((*&self->_has & 4) != 0)
  {
LABEL_13:
    jumboFlows = self->_jumboFlows;
    PBDataWriterWriteUint64Field();
  }

LABEL_14:
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if ((*&self->_has & 8) != 0)
  {
    v4[4] = self->_timestamp;
    *(v4 + 40) |= 8u;
  }

  if (self->_bundleName)
  {
    v6 = v4;
    [v4 setBundleName:?];
    v4 = v6;
  }

  has = self->_has;
  if ((has & 0x40) != 0)
  {
    *(v4 + 14) = self->_bailOutOf;
    *(v4 + 40) |= 0x40u;
    has = self->_has;
    if ((has & 0x80) == 0)
    {
LABEL_7:
      if ((has & 0x100) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_19;
    }
  }

  else if ((has & 0x80) == 0)
  {
    goto LABEL_7;
  }

  *(v4 + 18) = self->_deliberation;
  *(v4 + 40) |= 0x80u;
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_8:
    if ((has & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

LABEL_19:
  *(v4 + 19) = self->_rationale;
  *(v4 + 40) |= 0x100u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_9:
    if ((has & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

LABEL_20:
  v4[6] = self->_wwanUsage;
  *(v4 + 40) |= 0x20u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_10:
    if ((has & 2) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_22;
  }

LABEL_21:
  v4[5] = self->_wifiUsage;
  *(v4 + 40) |= 0x10u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_11:
    if ((has & 1) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_23;
  }

LABEL_22:
  v4[2] = self->_altUsage;
  *(v4 + 40) |= 2u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_12:
    if ((has & 4) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_23:
  v4[1] = self->_allFlows;
  *(v4 + 40) |= 1u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_13:
    v4[3] = self->_jumboFlows;
    *(v4 + 40) |= 4u;
  }

LABEL_14:
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if ((*&self->_has & 8) != 0)
  {
    *(v5 + 32) = self->_timestamp;
    *(v5 + 80) |= 8u;
  }

  v7 = [(NSString *)self->_bundleName copyWithZone:a3];
  v8 = *(v6 + 64);
  *(v6 + 64) = v7;

  has = self->_has;
  if ((has & 0x40) != 0)
  {
    *(v6 + 56) = self->_bailOutOf;
    *(v6 + 80) |= 0x40u;
    has = self->_has;
    if ((has & 0x80) == 0)
    {
LABEL_5:
      if ((has & 0x100) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_15;
    }
  }

  else if ((has & 0x80) == 0)
  {
    goto LABEL_5;
  }

  *(v6 + 72) = self->_deliberation;
  *(v6 + 80) |= 0x80u;
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_6:
    if ((has & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_16;
  }

LABEL_15:
  *(v6 + 76) = self->_rationale;
  *(v6 + 80) |= 0x100u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_7:
    if ((has & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

LABEL_16:
  *(v6 + 48) = self->_wwanUsage;
  *(v6 + 80) |= 0x20u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_8:
    if ((has & 2) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_18;
  }

LABEL_17:
  *(v6 + 40) = self->_wifiUsage;
  *(v6 + 80) |= 0x10u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_9:
    if ((has & 1) == 0)
    {
      goto LABEL_10;
    }

LABEL_19:
    *(v6 + 8) = self->_allFlows;
    *(v6 + 80) |= 1u;
    if ((*&self->_has & 4) == 0)
    {
      return v6;
    }

    goto LABEL_11;
  }

LABEL_18:
  *(v6 + 16) = self->_altUsage;
  *(v6 + 80) |= 2u;
  has = self->_has;
  if (has)
  {
    goto LABEL_19;
  }

LABEL_10:
  if ((has & 4) != 0)
  {
LABEL_11:
    *(v6 + 24) = self->_jumboFlows;
    *(v6 + 80) |= 4u;
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_50;
  }

  has = self->_has;
  v6 = *(v4 + 40);
  if ((has & 8) != 0)
  {
    if ((v6 & 8) == 0 || self->_timestamp != *(v4 + 4))
    {
      goto LABEL_50;
    }
  }

  else if ((v6 & 8) != 0)
  {
    goto LABEL_50;
  }

  bundleName = self->_bundleName;
  if (bundleName | *(v4 + 8))
  {
    if (![(NSString *)bundleName isEqual:?])
    {
LABEL_50:
      v9 = 0;
      goto LABEL_51;
    }

    has = self->_has;
  }

  v8 = *(v4 + 40);
  if ((has & 0x40) != 0)
  {
    if ((v8 & 0x40) == 0 || self->_bailOutOf != *(v4 + 14))
    {
      goto LABEL_50;
    }
  }

  else if ((v8 & 0x40) != 0)
  {
    goto LABEL_50;
  }

  if ((has & 0x80) != 0)
  {
    if ((v8 & 0x80) == 0 || self->_deliberation != *(v4 + 18))
    {
      goto LABEL_50;
    }
  }

  else if ((v8 & 0x80) != 0)
  {
    goto LABEL_50;
  }

  if ((has & 0x100) != 0)
  {
    if ((*(v4 + 40) & 0x100) == 0 || self->_rationale != *(v4 + 19))
    {
      goto LABEL_50;
    }
  }

  else if ((*(v4 + 40) & 0x100) != 0)
  {
    goto LABEL_50;
  }

  if ((has & 0x20) != 0)
  {
    if ((v8 & 0x20) == 0 || self->_wwanUsage != *(v4 + 6))
    {
      goto LABEL_50;
    }
  }

  else if ((v8 & 0x20) != 0)
  {
    goto LABEL_50;
  }

  if ((has & 0x10) != 0)
  {
    if ((v8 & 0x10) == 0 || self->_wifiUsage != *(v4 + 5))
    {
      goto LABEL_50;
    }
  }

  else if ((v8 & 0x10) != 0)
  {
    goto LABEL_50;
  }

  if ((has & 2) != 0)
  {
    if ((v8 & 2) == 0 || self->_altUsage != *(v4 + 2))
    {
      goto LABEL_50;
    }
  }

  else if ((v8 & 2) != 0)
  {
    goto LABEL_50;
  }

  if (has)
  {
    if ((v8 & 1) == 0 || self->_allFlows != *(v4 + 1))
    {
      goto LABEL_50;
    }
  }

  else if (v8)
  {
    goto LABEL_50;
  }

  if ((has & 4) != 0)
  {
    if ((v8 & 4) == 0 || self->_jumboFlows != *(v4 + 3))
    {
      goto LABEL_50;
    }

    v9 = 1;
  }

  else
  {
    v9 = (v8 & 4) == 0;
  }

LABEL_51:

  return v9;
}

- (unint64_t)hash
{
  if ((*&self->_has & 8) != 0)
  {
    v3 = 2654435761u * self->_timestamp;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSString *)self->_bundleName hash];
  has = self->_has;
  if ((has & 0x40) != 0)
  {
    v6 = 2654435761 * self->_bailOutOf;
    if ((has & 0x80) != 0)
    {
LABEL_6:
      v7 = 2654435761 * self->_deliberation;
      if ((*&self->_has & 0x100) != 0)
      {
        goto LABEL_7;
      }

      goto LABEL_15;
    }
  }

  else
  {
    v6 = 0;
    if ((has & 0x80) != 0)
    {
      goto LABEL_6;
    }
  }

  v7 = 0;
  if ((*&self->_has & 0x100) != 0)
  {
LABEL_7:
    v8 = 2654435761 * self->_rationale;
    if ((has & 0x20) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_16;
  }

LABEL_15:
  v8 = 0;
  if ((has & 0x20) != 0)
  {
LABEL_8:
    v9 = 2654435761u * self->_wwanUsage;
    if ((has & 0x10) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_17;
  }

LABEL_16:
  v9 = 0;
  if ((has & 0x10) != 0)
  {
LABEL_9:
    v10 = 2654435761u * self->_wifiUsage;
    if ((has & 2) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_18;
  }

LABEL_17:
  v10 = 0;
  if ((has & 2) != 0)
  {
LABEL_10:
    v11 = 2654435761u * self->_altUsage;
    if (has)
    {
      goto LABEL_11;
    }

LABEL_19:
    v12 = 0;
    if ((has & 4) != 0)
    {
      goto LABEL_12;
    }

LABEL_20:
    v13 = 0;
    return v4 ^ v3 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13;
  }

LABEL_18:
  v11 = 0;
  if ((has & 1) == 0)
  {
    goto LABEL_19;
  }

LABEL_11:
  v12 = 2654435761u * self->_allFlows;
  if ((has & 4) == 0)
  {
    goto LABEL_20;
  }

LABEL_12:
  v13 = 2654435761u * self->_jumboFlows;
  return v4 ^ v3 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if ((*(v4 + 40) & 8) != 0)
  {
    self->_timestamp = *(v4 + 4);
    *&self->_has |= 8u;
  }

  if (*(v4 + 8))
  {
    v6 = v4;
    [(AWDSymptomsAdvisoryAppCanUseAlternateNetwork *)self setBundleName:?];
    v4 = v6;
  }

  v5 = *(v4 + 40);
  if ((v5 & 0x40) != 0)
  {
    self->_bailOutOf = *(v4 + 14);
    *&self->_has |= 0x40u;
    v5 = *(v4 + 40);
    if ((v5 & 0x80) == 0)
    {
LABEL_7:
      if ((v5 & 0x100) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_19;
    }
  }

  else if ((v5 & 0x80) == 0)
  {
    goto LABEL_7;
  }

  self->_deliberation = *(v4 + 18);
  *&self->_has |= 0x80u;
  v5 = *(v4 + 40);
  if ((v5 & 0x100) == 0)
  {
LABEL_8:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

LABEL_19:
  self->_rationale = *(v4 + 19);
  *&self->_has |= 0x100u;
  v5 = *(v4 + 40);
  if ((v5 & 0x20) == 0)
  {
LABEL_9:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

LABEL_20:
  self->_wwanUsage = *(v4 + 6);
  *&self->_has |= 0x20u;
  v5 = *(v4 + 40);
  if ((v5 & 0x10) == 0)
  {
LABEL_10:
    if ((v5 & 2) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_22;
  }

LABEL_21:
  self->_wifiUsage = *(v4 + 5);
  *&self->_has |= 0x10u;
  v5 = *(v4 + 40);
  if ((v5 & 2) == 0)
  {
LABEL_11:
    if ((v5 & 1) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_23;
  }

LABEL_22:
  self->_altUsage = *(v4 + 2);
  *&self->_has |= 2u;
  v5 = *(v4 + 40);
  if ((v5 & 1) == 0)
  {
LABEL_12:
    if ((v5 & 4) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_23:
  self->_allFlows = *(v4 + 1);
  *&self->_has |= 1u;
  if ((*(v4 + 40) & 4) != 0)
  {
LABEL_13:
    self->_jumboFlows = *(v4 + 3);
    *&self->_has |= 4u;
  }

LABEL_14:
}

@end