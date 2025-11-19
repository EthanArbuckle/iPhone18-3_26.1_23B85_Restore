@interface AWDMETRICSKCellularPlatformApBbSleepStatsPlatformState
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsAp:(id)a3;
- (int)StringAsBbChipset:(id)a3;
- (int)StringAsNonPsPrefSim:(id)a3;
- (int)StringAsPsPrefSim:(id)a3;
- (int)ap;
- (int)bbChipset;
- (int)nonPsPrefSim;
- (int)psPrefSim;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasBbChipset:(BOOL)a3;
- (void)setHasDurationMs:(BOOL)a3;
- (void)setHasDurationUlpnMs:(BOOL)a3;
- (void)setHasNonPsPrefSim:(BOOL)a3;
- (void)setHasPsPrefSim:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDMETRICSKCellularPlatformApBbSleepStatsPlatformState

- (int)ap
{
  if (*&self->_has)
  {
    return self->_ap;
  }

  else
  {
    return 0;
  }
}

- (int)StringAsAp:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"AWAKE"])
  {
    v4 = 0;
  }

  else
  {
    v4 = [v3 isEqualToString:@"SLEEP"];
  }

  return v4;
}

- (int)psPrefSim
{
  if ((*&self->_has & 0x20) != 0)
  {
    return self->_psPrefSim;
  }

  else
  {
    return 0;
  }
}

- (void)setHasPsPrefSim:(BOOL)a3
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

- (int)StringAsPsPrefSim:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"AIRPLANE_MODE"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"OOS_IDLE"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"OOS_3GPP_NETWORK_SCAN"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"GSM_IDLE"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"GSM_CONNECTED"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"TX_RX_SUSPEND"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"WCDMA_IDLE"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"WCDMA_FACH"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"WCDMA_DCH"])
  {
    v4 = 8;
  }

  else if ([v3 isEqualToString:@"WCDMA_PCH"])
  {
    v4 = 9;
  }

  else if ([v3 isEqualToString:@"LTE_IDLE_CAMPED"])
  {
    v4 = 10;
  }

  else if ([v3 isEqualToString:@"LTE_IDLE_CAMPED_ULI"])
  {
    v4 = 11;
  }

  else if ([v3 isEqualToString:@"LTE_ATMPT_CONNECTION"])
  {
    v4 = 12;
  }

  else if ([v3 isEqualToString:@"LTE_CONNECTED"])
  {
    v4 = 13;
  }

  else if ([v3 isEqualToString:@"LTE_CONNECTED_ULI"])
  {
    v4 = 14;
  }

  else if ([v3 isEqualToString:@"LTE_ATMPT_INBND_MOBILITY"])
  {
    v4 = 15;
  }

  else if ([v3 isEqualToString:@"LTE_ATMPT_OUTBND_MOBILITY"])
  {
    v4 = 16;
  }

  else if ([v3 isEqualToString:@"NR_SUB6_IDLE"])
  {
    v4 = 17;
  }

  else if ([v3 isEqualToString:@"NR_SUB6_ATMPT_CONNECTION"])
  {
    v4 = 18;
  }

  else if ([v3 isEqualToString:@"NR_SUB6_CONNECTED"])
  {
    v4 = 19;
  }

  else if ([v3 isEqualToString:@"NR_SUB6_INACTIVE"])
  {
    v4 = 20;
  }

  else if ([v3 isEqualToString:@"NR_SUB6_ATMPT_INBND_MOBILITY"])
  {
    v4 = 21;
  }

  else if ([v3 isEqualToString:@"NR_SUB6_ATMPT_OUTBND_MOBILITY"])
  {
    v4 = 22;
  }

  else if ([v3 isEqualToString:@"NR_SUB6_ENDC_CONNECTED"])
  {
    v4 = 23;
  }

  else if ([v3 isEqualToString:@"WCDMA_CONNECTED"])
  {
    v4 = 30;
  }

  else if ([v3 isEqualToString:@"OTHERS"])
  {
    v4 = 50;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)nonPsPrefSim
{
  if ((*&self->_has & 0x10) != 0)
  {
    return self->_nonPsPrefSim;
  }

  else
  {
    return 0;
  }
}

- (void)setHasNonPsPrefSim:(BOOL)a3
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

- (int)StringAsNonPsPrefSim:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"AIRPLANE_MODE"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"OOS_IDLE"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"OOS_3GPP_NETWORK_SCAN"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"GSM_IDLE"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"GSM_CONNECTED"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"TX_RX_SUSPEND"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"WCDMA_IDLE"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"WCDMA_FACH"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"WCDMA_DCH"])
  {
    v4 = 8;
  }

  else if ([v3 isEqualToString:@"WCDMA_PCH"])
  {
    v4 = 9;
  }

  else if ([v3 isEqualToString:@"LTE_IDLE_CAMPED"])
  {
    v4 = 10;
  }

  else if ([v3 isEqualToString:@"LTE_IDLE_CAMPED_ULI"])
  {
    v4 = 11;
  }

  else if ([v3 isEqualToString:@"LTE_ATMPT_CONNECTION"])
  {
    v4 = 12;
  }

  else if ([v3 isEqualToString:@"LTE_CONNECTED"])
  {
    v4 = 13;
  }

  else if ([v3 isEqualToString:@"LTE_CONNECTED_ULI"])
  {
    v4 = 14;
  }

  else if ([v3 isEqualToString:@"LTE_ATMPT_INBND_MOBILITY"])
  {
    v4 = 15;
  }

  else if ([v3 isEqualToString:@"LTE_ATMPT_OUTBND_MOBILITY"])
  {
    v4 = 16;
  }

  else if ([v3 isEqualToString:@"NR_SUB6_IDLE"])
  {
    v4 = 17;
  }

  else if ([v3 isEqualToString:@"NR_SUB6_ATMPT_CONNECTION"])
  {
    v4 = 18;
  }

  else if ([v3 isEqualToString:@"NR_SUB6_CONNECTED"])
  {
    v4 = 19;
  }

  else if ([v3 isEqualToString:@"NR_SUB6_INACTIVE"])
  {
    v4 = 20;
  }

  else if ([v3 isEqualToString:@"NR_SUB6_ATMPT_INBND_MOBILITY"])
  {
    v4 = 21;
  }

  else if ([v3 isEqualToString:@"NR_SUB6_ATMPT_OUTBND_MOBILITY"])
  {
    v4 = 22;
  }

  else if ([v3 isEqualToString:@"NR_SUB6_ENDC_CONNECTED"])
  {
    v4 = 23;
  }

  else if ([v3 isEqualToString:@"WCDMA_CONNECTED"])
  {
    v4 = 30;
  }

  else if ([v3 isEqualToString:@"OTHERS"])
  {
    v4 = 50;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)bbChipset
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_bbChipset;
  }

  else
  {
    return 0;
  }
}

- (void)setHasBbChipset:(BOOL)a3
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

- (int)StringAsBbChipset:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"SOCSLP_AWAKE"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"SOCSLP_SLP_VCXO"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"SOCSLP_SLP_SOC"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"SOCSLP_SLP_S2R"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasDurationMs:(BOOL)a3
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

- (void)setHasDurationUlpnMs:(BOOL)a3
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
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = AWDMETRICSKCellularPlatformApBbSleepStatsPlatformState;
  v4 = [(AWDMETRICSKCellularPlatformApBbSleepStatsPlatformState *)&v8 description];
  v5 = [(AWDMETRICSKCellularPlatformApBbSleepStatsPlatformState *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if (has)
  {
    ap = self->_ap;
    if (ap)
    {
      if (ap == 1)
      {
        v6 = @"SLEEP";
      }

      else
      {
        v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_ap];
      }
    }

    else
    {
      v6 = @"AWAKE";
    }

    [v3 setObject:v6 forKey:@"ap"];

    has = self->_has;
    if ((has & 0x20) == 0)
    {
LABEL_3:
      if ((has & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

  else if ((*&self->_has & 0x20) == 0)
  {
    goto LABEL_3;
  }

  psPrefSim = self->_psPrefSim;
  if (psPrefSim < 0x33 && ((0x4000040FFFFFFuLL >> psPrefSim) & 1) != 0)
  {
    v8 = off_279A0F320[psPrefSim];
  }

  else
  {
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_psPrefSim];
  }

  [v3 setObject:v8 forKey:@"ps_pref_sim"];

  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_4:
    if ((has & 2) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_22;
  }

LABEL_17:
  nonPsPrefSim = self->_nonPsPrefSim;
  if (nonPsPrefSim < 0x33 && ((0x4000040FFFFFFuLL >> nonPsPrefSim) & 1) != 0)
  {
    v10 = off_279A0F320[nonPsPrefSim];
  }

  else
  {
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_nonPsPrefSim];
  }

  [v3 setObject:v10 forKey:@"non_ps_pref_sim"];

  has = self->_has;
  if ((has & 2) != 0)
  {
LABEL_22:
    bbChipset = self->_bbChipset;
    if (bbChipset >= 4)
    {
      v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_bbChipset];
    }

    else
    {
      v12 = off_279A0F4B8[bbChipset];
    }

    [v3 setObject:v12 forKey:@"bb_chipset"];

    has = self->_has;
  }

LABEL_26:
  if ((has & 4) != 0)
  {
    v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_durationMs];
    [v3 setObject:v13 forKey:@"duration_ms"];

    has = self->_has;
  }

  if ((has & 8) != 0)
  {
    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_durationUlpnMs];
    [v3 setObject:v14 forKey:@"duration_ulpn_ms"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v11 = a3;
  has = self->_has;
  if (has)
  {
    ap = self->_ap;
    PBDataWriterWriteInt32Field();
    has = self->_has;
    if ((has & 0x20) == 0)
    {
LABEL_3:
      if ((has & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((*&self->_has & 0x20) == 0)
  {
    goto LABEL_3;
  }

  psPrefSim = self->_psPrefSim;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_4:
    if ((has & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  nonPsPrefSim = self->_nonPsPrefSim;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_5:
    if ((has & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  bbChipset = self->_bbChipset;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_6:
    if ((has & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_15:
  durationMs = self->_durationMs;
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 8) != 0)
  {
LABEL_7:
    durationUlpnMs = self->_durationUlpnMs;
    PBDataWriterWriteUint32Field();
  }

LABEL_8:
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if (has)
  {
    v4[2] = self->_ap;
    *(v4 + 32) |= 1u;
    has = self->_has;
    if ((has & 0x20) == 0)
    {
LABEL_3:
      if ((has & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((*&self->_has & 0x20) == 0)
  {
    goto LABEL_3;
  }

  v4[7] = self->_psPrefSim;
  *(v4 + 32) |= 0x20u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_4:
    if ((has & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  v4[6] = self->_nonPsPrefSim;
  *(v4 + 32) |= 0x10u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_5:
    if ((has & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  v4[3] = self->_bbChipset;
  *(v4 + 32) |= 2u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_6:
    if ((has & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_15:
  v4[4] = self->_durationMs;
  *(v4 + 32) |= 4u;
  if ((*&self->_has & 8) != 0)
  {
LABEL_7:
    v4[5] = self->_durationUlpnMs;
    *(v4 + 32) |= 8u;
  }

LABEL_8:
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  has = self->_has;
  if (has)
  {
    *(result + 2) = self->_ap;
    *(result + 32) |= 1u;
    has = self->_has;
    if ((has & 0x20) == 0)
    {
LABEL_3:
      if ((has & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*&self->_has & 0x20) == 0)
  {
    goto LABEL_3;
  }

  *(result + 7) = self->_psPrefSim;
  *(result + 32) |= 0x20u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_4:
    if ((has & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  *(result + 6) = self->_nonPsPrefSim;
  *(result + 32) |= 0x10u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_5:
    if ((has & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  *(result + 3) = self->_bbChipset;
  *(result + 32) |= 2u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_6:
    if ((has & 8) == 0)
    {
      return result;
    }

    goto LABEL_7;
  }

LABEL_13:
  *(result + 4) = self->_durationMs;
  *(result + 32) |= 4u;
  if ((*&self->_has & 8) == 0)
  {
    return result;
  }

LABEL_7:
  *(result + 5) = self->_durationUlpnMs;
  *(result + 32) |= 8u;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_31;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 32) & 1) == 0 || self->_ap != *(v4 + 2))
    {
      goto LABEL_31;
    }
  }

  else if (*(v4 + 32))
  {
LABEL_31:
    v5 = 0;
    goto LABEL_32;
  }

  if ((*&self->_has & 0x20) != 0)
  {
    if ((*(v4 + 32) & 0x20) == 0 || self->_psPrefSim != *(v4 + 7))
    {
      goto LABEL_31;
    }
  }

  else if ((*(v4 + 32) & 0x20) != 0)
  {
    goto LABEL_31;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    if ((*(v4 + 32) & 0x10) == 0 || self->_nonPsPrefSim != *(v4 + 6))
    {
      goto LABEL_31;
    }
  }

  else if ((*(v4 + 32) & 0x10) != 0)
  {
    goto LABEL_31;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 32) & 2) == 0 || self->_bbChipset != *(v4 + 3))
    {
      goto LABEL_31;
    }
  }

  else if ((*(v4 + 32) & 2) != 0)
  {
    goto LABEL_31;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 32) & 4) == 0 || self->_durationMs != *(v4 + 4))
    {
      goto LABEL_31;
    }
  }

  else if ((*(v4 + 32) & 4) != 0)
  {
    goto LABEL_31;
  }

  v5 = (*(v4 + 32) & 8) == 0;
  if ((*&self->_has & 8) != 0)
  {
    if ((*(v4 + 32) & 8) == 0 || self->_durationUlpnMs != *(v4 + 5))
    {
      goto LABEL_31;
    }

    v5 = 1;
  }

LABEL_32:

  return v5;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761 * self->_ap;
    if ((*&self->_has & 0x20) != 0)
    {
LABEL_3:
      v3 = 2654435761 * self->_psPrefSim;
      if ((*&self->_has & 0x10) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v2 = 0;
    if ((*&self->_has & 0x20) != 0)
    {
      goto LABEL_3;
    }
  }

  v3 = 0;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_4:
    v4 = 2654435761 * self->_nonPsPrefSim;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  v4 = 0;
  if ((*&self->_has & 2) != 0)
  {
LABEL_5:
    v5 = 2654435761 * self->_bbChipset;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_6;
    }

LABEL_12:
    v6 = 0;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_7;
    }

LABEL_13:
    v7 = 0;
    return v3 ^ v2 ^ v4 ^ v5 ^ v6 ^ v7;
  }

LABEL_11:
  v5 = 0;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_12;
  }

LABEL_6:
  v6 = 2654435761 * self->_durationMs;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_13;
  }

LABEL_7:
  v7 = 2654435761 * self->_durationUlpnMs;
  return v3 ^ v2 ^ v4 ^ v5 ^ v6 ^ v7;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 32);
  if (v5)
  {
    self->_ap = *(v4 + 2);
    *&self->_has |= 1u;
    v5 = *(v4 + 32);
    if ((v5 & 0x20) == 0)
    {
LABEL_3:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((*(v4 + 32) & 0x20) == 0)
  {
    goto LABEL_3;
  }

  self->_psPrefSim = *(v4 + 7);
  *&self->_has |= 0x20u;
  v5 = *(v4 + 32);
  if ((v5 & 0x10) == 0)
  {
LABEL_4:
    if ((v5 & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  self->_nonPsPrefSim = *(v4 + 6);
  *&self->_has |= 0x10u;
  v5 = *(v4 + 32);
  if ((v5 & 2) == 0)
  {
LABEL_5:
    if ((v5 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  self->_bbChipset = *(v4 + 3);
  *&self->_has |= 2u;
  v5 = *(v4 + 32);
  if ((v5 & 4) == 0)
  {
LABEL_6:
    if ((v5 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_15:
  self->_durationMs = *(v4 + 4);
  *&self->_has |= 4u;
  if ((*(v4 + 32) & 8) != 0)
  {
LABEL_7:
    self->_durationUlpnMs = *(v4 + 5);
    *&self->_has |= 8u;
  }

LABEL_8:
}

@end