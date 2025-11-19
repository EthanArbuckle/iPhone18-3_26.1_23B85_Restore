@interface RfBandDuration
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsEutraRfBand:(id)a3;
- (int)StringAsGeraRfBand:(id)a3;
- (int)StringAsRat:(id)a3;
- (int)StringAsUtraFddRfBand:(id)a3;
- (int)StringAsUtraTddRfBand:(id)a3;
- (int)eutraRfBand;
- (int)geraRfBand;
- (int)rat;
- (int)utraFddRfBand;
- (int)utraTddRfBand;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasEutraRfBand:(BOOL)a3;
- (void)setHasGeraRfBand:(BOOL)a3;
- (void)setHasRat:(BOOL)a3;
- (void)setHasUtraFddRfBand:(BOOL)a3;
- (void)setHasUtraTddRfBand:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation RfBandDuration

- (int)rat
{
  if ((*&self->_has & 8) != 0)
  {
    return self->_rat;
  }

  else
  {
    return 0;
  }
}

- (void)setHasRat:(BOOL)a3
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

- (int)StringAsRat:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"KCELLULAR_RAT_NONE"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"KCELLULAR_RAT_GERA"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"KCELLULAR_RAT_UTRA_FDD"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"KCELLULAR_RAT_EUTRA"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"KCELLULAR_RAT_UTRA_TDD"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)geraRfBand
{
  if ((*&self->_has & 4) != 0)
  {
    return self->_geraRfBand;
  }

  else
  {
    return 0;
  }
}

- (void)setHasGeraRfBand:(BOOL)a3
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

- (int)StringAsGeraRfBand:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"KGSM_RF_BAND_900"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"KGSM_RF_BAND_P_900"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"KGSM_RF_BAND_E_900"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"KGSM_RF_BAND_R_900"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"KGSM_RF_BAND_DCS_1800"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"KGSM_RF_BAND_PCS_1900"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"KGSM_RF_BAND_850"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"KGSM_RF_BAND_450"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"KGSM_RF_BAND_480"])
  {
    v4 = 8;
  }

  else if ([v3 isEqualToString:@"KGSM_RF_BAND_750"])
  {
    v4 = 9;
  }

  else if ([v3 isEqualToString:@"KGSM_RF_BAND_T_380"])
  {
    v4 = 10;
  }

  else if ([v3 isEqualToString:@"KGSM_RF_BAND_T_410"])
  {
    v4 = 11;
  }

  else if ([v3 isEqualToString:@"KGSM_RF_BAND_T_900"])
  {
    v4 = 12;
  }

  else if ([v3 isEqualToString:@"KGSM_RF_BAND_710"])
  {
    v4 = 13;
  }

  else if ([v3 isEqualToString:@"KGSM_RF_BAND_T_810"])
  {
    v4 = 14;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)utraFddRfBand
{
  if ((*&self->_has & 0x10) != 0)
  {
    return self->_utraFddRfBand;
  }

  else
  {
    return 0;
  }
}

- (void)setHasUtraFddRfBand:(BOOL)a3
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

- (int)StringAsUtraFddRfBand:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"KWCDMA_RF_BAND_1"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"KWCDMA_RF_BAND_2"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"KWCDMA_RF_BAND_3"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"KWCDMA_RF_BAND_4"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"KWCDMA_RF_BAND_5"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"KWCDMA_RF_BAND_6"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"KWCDMA_RF_BAND_7"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"KWCDMA_RF_BAND_8"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"KWCDMA_RF_BAND_9"])
  {
    v4 = 8;
  }

  else if ([v3 isEqualToString:@"KWCDMA_RF_BAND_10"])
  {
    v4 = 9;
  }

  else if ([v3 isEqualToString:@"KWCDMA_RF_BAND_11"])
  {
    v4 = 10;
  }

  else if ([v3 isEqualToString:@"KWCDMA_RF_BAND_12"])
  {
    v4 = 11;
  }

  else if ([v3 isEqualToString:@"KWCDMA_RF_BAND_13"])
  {
    v4 = 12;
  }

  else if ([v3 isEqualToString:@"KWCDMA_RF_BAND_14"])
  {
    v4 = 13;
  }

  else if ([v3 isEqualToString:@"KWCDMA_RF_BAND_15"])
  {
    v4 = 14;
  }

  else if ([v3 isEqualToString:@"KWCDMA_RF_BAND_16"])
  {
    v4 = 15;
  }

  else if ([v3 isEqualToString:@"KWCDMA_RF_BAND_17"])
  {
    v4 = 16;
  }

  else if ([v3 isEqualToString:@"KWCDMA_RF_BAND_18"])
  {
    v4 = 17;
  }

  else if ([v3 isEqualToString:@"KWCDMA_RF_BAND_19"])
  {
    v4 = 18;
  }

  else if ([v3 isEqualToString:@"KWCDMA_RF_BAND_20"])
  {
    v4 = 19;
  }

  else if ([v3 isEqualToString:@"KWCDMA_RF_BAND_21"])
  {
    v4 = 20;
  }

  else if ([v3 isEqualToString:@"KWCDMA_RF_BAND_22"])
  {
    v4 = 21;
  }

  else if ([v3 isEqualToString:@"KWCDMA_RF_BAND_25"])
  {
    v4 = 22;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)utraTddRfBand
{
  if ((*&self->_has & 0x20) != 0)
  {
    return self->_utraTddRfBand;
  }

  else
  {
    return 0;
  }
}

- (void)setHasUtraTddRfBand:(BOOL)a3
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

- (int)StringAsUtraTddRfBand:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"KTDS_RF_BAND_A"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"KTDS_RF_BAND_E"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"KTDS_RF_BAND_F"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)eutraRfBand
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_eutraRfBand;
  }

  else
  {
    return 1;
  }
}

- (void)setHasEutraRfBand:(BOOL)a3
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

- (int)StringAsEutraRfBand:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"KLTE_RF_BAND_1"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"KLTE_RF_BAND_2"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"KLTE_RF_BAND_3"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"KLTE_RF_BAND_4"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"KLTE_RF_BAND_5"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"KLTE_RF_BAND_6"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"KLTE_RF_BAND_7"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"KLTE_RF_BAND_8"])
  {
    v4 = 8;
  }

  else if ([v3 isEqualToString:@"KLTE_RF_BAND_9"])
  {
    v4 = 9;
  }

  else if ([v3 isEqualToString:@"KLTE_RF_BAND_10"])
  {
    v4 = 10;
  }

  else if ([v3 isEqualToString:@"KLTE_RF_BAND_11"])
  {
    v4 = 11;
  }

  else if ([v3 isEqualToString:@"KLTE_RF_BAND_12"])
  {
    v4 = 12;
  }

  else if ([v3 isEqualToString:@"KLTE_RF_BAND_13"])
  {
    v4 = 13;
  }

  else if ([v3 isEqualToString:@"KLTE_RF_BAND_14"])
  {
    v4 = 14;
  }

  else if ([v3 isEqualToString:@"KLTE_RF_BAND_15"])
  {
    v4 = 15;
  }

  else if ([v3 isEqualToString:@"KLTE_RF_BAND_16"])
  {
    v4 = 16;
  }

  else if ([v3 isEqualToString:@"KLTE_RF_BAND_17"])
  {
    v4 = 17;
  }

  else if ([v3 isEqualToString:@"KLTE_RF_BAND_18"])
  {
    v4 = 18;
  }

  else if ([v3 isEqualToString:@"KLTE_RF_BAND_19"])
  {
    v4 = 19;
  }

  else if ([v3 isEqualToString:@"KLTE_RF_BAND_20"])
  {
    v4 = 20;
  }

  else if ([v3 isEqualToString:@"KLTE_RF_BAND_21"])
  {
    v4 = 21;
  }

  else if ([v3 isEqualToString:@"KLTE_RF_BAND_22"])
  {
    v4 = 22;
  }

  else if ([v3 isEqualToString:@"KLTE_RF_BAND_23"])
  {
    v4 = 23;
  }

  else if ([v3 isEqualToString:@"KLTE_RF_BAND_24"])
  {
    v4 = 24;
  }

  else if ([v3 isEqualToString:@"KLTE_RF_BAND_25"])
  {
    v4 = 25;
  }

  else if ([v3 isEqualToString:@"KLTE_RF_BAND_26"])
  {
    v4 = 26;
  }

  else if ([v3 isEqualToString:@"KLTE_RF_BAND_27"])
  {
    v4 = 27;
  }

  else if ([v3 isEqualToString:@"KLTE_RF_BAND_28"])
  {
    v4 = 28;
  }

  else if ([v3 isEqualToString:@"KLTE_RF_BAND_29"])
  {
    v4 = 29;
  }

  else if ([v3 isEqualToString:@"KLTE_RF_BAND_30"])
  {
    v4 = 30;
  }

  else if ([v3 isEqualToString:@"KLTE_RF_BAND_31"])
  {
    v4 = 31;
  }

  else if ([v3 isEqualToString:@"KLTE_RF_BAND_32"])
  {
    v4 = 32;
  }

  else if ([v3 isEqualToString:@"KLTE_RF_BAND_33"])
  {
    v4 = 33;
  }

  else if ([v3 isEqualToString:@"KLTE_RF_BAND_34"])
  {
    v4 = 34;
  }

  else if ([v3 isEqualToString:@"KLTE_RF_BAND_35"])
  {
    v4 = 35;
  }

  else if ([v3 isEqualToString:@"KLTE_RF_BAND_36"])
  {
    v4 = 36;
  }

  else if ([v3 isEqualToString:@"KLTE_RF_BAND_37"])
  {
    v4 = 37;
  }

  else if ([v3 isEqualToString:@"KLTE_RF_BAND_38"])
  {
    v4 = 38;
  }

  else if ([v3 isEqualToString:@"KLTE_RF_BAND_39"])
  {
    v4 = 39;
  }

  else if ([v3 isEqualToString:@"KLTE_RF_BAND_40"])
  {
    v4 = 40;
  }

  else if ([v3 isEqualToString:@"KLTE_RF_BAND_41"])
  {
    v4 = 41;
  }

  else if ([v3 isEqualToString:@"KLTE_RF_BAND_42"])
  {
    v4 = 42;
  }

  else if ([v3 isEqualToString:@"KLTE_RF_BAND_43"])
  {
    v4 = 43;
  }

  else if ([v3 isEqualToString:@"KLTE_RF_BAND_44"])
  {
    v4 = 44;
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
  v8.super_class = RfBandDuration;
  v4 = [(RfBandDuration *)&v8 description];
  v5 = [(RfBandDuration *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if ((has & 8) != 0)
  {
    rat = self->_rat;
    if (rat >= 5)
    {
      v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_rat];
    }

    else
    {
      v8 = off_278261DF8[rat];
    }

    [v3 setObject:v8 forKey:@"rat"];

    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_19;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  geraRfBand = self->_geraRfBand;
  if (geraRfBand >= 0xF)
  {
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_geraRfBand];
  }

  else
  {
    v10 = off_278261E20[geraRfBand];
  }

  [v3 setObject:v10 forKey:@"gera_rf_band"];

  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_4:
    if ((has & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_23;
  }

LABEL_19:
  utraFddRfBand = self->_utraFddRfBand;
  if (utraFddRfBand >= 0x17)
  {
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_utraFddRfBand];
  }

  else
  {
    v12 = off_278261E98[utraFddRfBand];
  }

  [v3 setObject:v12 forKey:@"utra_fdd_rf_band"];

  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_5:
    if ((has & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_27;
  }

LABEL_23:
  utraTddRfBand = self->_utraTddRfBand;
  if (utraTddRfBand >= 3)
  {
    v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_utraTddRfBand];
  }

  else
  {
    v14 = off_278261F50[utraTddRfBand];
  }

  [v3 setObject:v14 forKey:@"utra_tdd_rf_band"];

  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_6:
    if ((has & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_27:
  v15 = self->_eutraRfBand - 1;
  if (v15 >= 0x2C)
  {
    v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_eutraRfBand];
  }

  else
  {
    v16 = off_278261F68[v15];
  }

  [v3 setObject:v16 forKey:@"eutra_rf_band"];

  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_7:
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_durationMs];
  [v3 setObject:v5 forKey:@"duration_ms"];

LABEL_8:

  return v3;
}

- (void)writeTo:(id)a3
{
  v11 = a3;
  has = self->_has;
  if ((has & 8) != 0)
  {
    rat = self->_rat;
    PBDataWriterWriteInt32Field();
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  geraRfBand = self->_geraRfBand;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_4:
    if ((has & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  utraFddRfBand = self->_utraFddRfBand;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_5:
    if ((has & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  utraTddRfBand = self->_utraTddRfBand;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_6:
    if ((has & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_15:
  eutraRfBand = self->_eutraRfBand;
  PBDataWriterWriteInt32Field();
  if (*&self->_has)
  {
LABEL_7:
    durationMs = self->_durationMs;
    PBDataWriterWriteUint32Field();
  }

LABEL_8:
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if ((has & 8) != 0)
  {
    v4[5] = self->_rat;
    *(v4 + 32) |= 8u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  v4[4] = self->_geraRfBand;
  *(v4 + 32) |= 4u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_4:
    if ((has & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  v4[6] = self->_utraFddRfBand;
  *(v4 + 32) |= 0x10u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_5:
    if ((has & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  v4[7] = self->_utraTddRfBand;
  *(v4 + 32) |= 0x20u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_6:
    if ((has & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_15:
  v4[3] = self->_eutraRfBand;
  *(v4 + 32) |= 2u;
  if (*&self->_has)
  {
LABEL_7:
    v4[2] = self->_durationMs;
    *(v4 + 32) |= 1u;
  }

LABEL_8:
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  has = self->_has;
  if ((has & 8) != 0)
  {
    *(result + 5) = self->_rat;
    *(result + 32) |= 8u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  *(result + 4) = self->_geraRfBand;
  *(result + 32) |= 4u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_4:
    if ((has & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  *(result + 6) = self->_utraFddRfBand;
  *(result + 32) |= 0x10u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_5:
    if ((has & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  *(result + 7) = self->_utraTddRfBand;
  *(result + 32) |= 0x20u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_6:
    if ((has & 1) == 0)
    {
      return result;
    }

    goto LABEL_7;
  }

LABEL_13:
  *(result + 3) = self->_eutraRfBand;
  *(result + 32) |= 2u;
  if ((*&self->_has & 1) == 0)
  {
    return result;
  }

LABEL_7:
  *(result + 2) = self->_durationMs;
  *(result + 32) |= 1u;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_31;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(v4 + 32) & 8) == 0 || self->_rat != *(v4 + 5))
    {
      goto LABEL_31;
    }
  }

  else if ((*(v4 + 32) & 8) != 0)
  {
LABEL_31:
    v5 = 0;
    goto LABEL_32;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 32) & 4) == 0 || self->_geraRfBand != *(v4 + 4))
    {
      goto LABEL_31;
    }
  }

  else if ((*(v4 + 32) & 4) != 0)
  {
    goto LABEL_31;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    if ((*(v4 + 32) & 0x10) == 0 || self->_utraFddRfBand != *(v4 + 6))
    {
      goto LABEL_31;
    }
  }

  else if ((*(v4 + 32) & 0x10) != 0)
  {
    goto LABEL_31;
  }

  if ((*&self->_has & 0x20) != 0)
  {
    if ((*(v4 + 32) & 0x20) == 0 || self->_utraTddRfBand != *(v4 + 7))
    {
      goto LABEL_31;
    }
  }

  else if ((*(v4 + 32) & 0x20) != 0)
  {
    goto LABEL_31;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 32) & 2) == 0 || self->_eutraRfBand != *(v4 + 3))
    {
      goto LABEL_31;
    }
  }

  else if ((*(v4 + 32) & 2) != 0)
  {
    goto LABEL_31;
  }

  v5 = (*(v4 + 32) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 32) & 1) == 0 || self->_durationMs != *(v4 + 2))
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
  if ((*&self->_has & 8) != 0)
  {
    v2 = 2654435761 * self->_rat;
    if ((*&self->_has & 4) != 0)
    {
LABEL_3:
      v3 = 2654435761 * self->_geraRfBand;
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
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_3;
    }
  }

  v3 = 0;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_4:
    v4 = 2654435761 * self->_utraFddRfBand;
    if ((*&self->_has & 0x20) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  v4 = 0;
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_5:
    v5 = 2654435761 * self->_utraTddRfBand;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_6;
    }

LABEL_12:
    v6 = 0;
    if (*&self->_has)
    {
      goto LABEL_7;
    }

LABEL_13:
    v7 = 0;
    return v3 ^ v2 ^ v4 ^ v5 ^ v6 ^ v7;
  }

LABEL_11:
  v5 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_12;
  }

LABEL_6:
  v6 = 2654435761 * self->_eutraRfBand;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_7:
  v7 = 2654435761 * self->_durationMs;
  return v3 ^ v2 ^ v4 ^ v5 ^ v6 ^ v7;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 32);
  if ((v5 & 8) != 0)
  {
    self->_rat = *(v4 + 5);
    *&self->_has |= 8u;
    v5 = *(v4 + 32);
    if ((v5 & 4) == 0)
    {
LABEL_3:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((*(v4 + 32) & 4) == 0)
  {
    goto LABEL_3;
  }

  self->_geraRfBand = *(v4 + 4);
  *&self->_has |= 4u;
  v5 = *(v4 + 32);
  if ((v5 & 0x10) == 0)
  {
LABEL_4:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  self->_utraFddRfBand = *(v4 + 6);
  *&self->_has |= 0x10u;
  v5 = *(v4 + 32);
  if ((v5 & 0x20) == 0)
  {
LABEL_5:
    if ((v5 & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  self->_utraTddRfBand = *(v4 + 7);
  *&self->_has |= 0x20u;
  v5 = *(v4 + 32);
  if ((v5 & 2) == 0)
  {
LABEL_6:
    if ((v5 & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_15:
  self->_eutraRfBand = *(v4 + 3);
  *&self->_has |= 2u;
  if (*(v4 + 32))
  {
LABEL_7:
    self->_durationMs = *(v4 + 2);
    *&self->_has |= 1u;
  }

LABEL_8:
}

@end