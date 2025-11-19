@interface KCellularPmicHwStats
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasActiveDurMs:(BOOL)a3;
- (void)setHasBctActiveDurMs:(BOOL)a3;
- (void)setHasCdmaActiveDurMs:(BOOL)a3;
- (void)setHasDbgActiveDurMs:(BOOL)a3;
- (void)setHasDpuActiveDurMs:(BOOL)a3;
- (void)setHasDurationMs:(BOOL)a3;
- (void)setHasGsmActiveDurMs:(BOOL)a3;
- (void)setHasGsmCa5ActiveDurMs:(BOOL)a3;
- (void)setHasHighVoltActiveDurMs:(BOOL)a3;
- (void)setHasHostActiveDurMs:(BOOL)a3;
- (void)setHasHostCpuActiveDurMs:(BOOL)a3;
- (void)setHasHostCpuSysActiveDurMs:(BOOL)a3;
- (void)setHasIoActiveDurMs:(BOOL)a3;
- (void)setHasLowVoltActiveDurMs:(BOOL)a3;
- (void)setHasLteActiveDurMs:(BOOL)a3;
- (void)setHasMidVoltActiveDurMs:(BOOL)a3;
- (void)setHasPerActiveDurMs:(BOOL)a3;
- (void)setHasPhyActiveDurMs:(BOOL)a3;
- (void)setHasPhyNocActiveDurMs:(BOOL)a3;
- (void)setHasRauActiveDurMs:(BOOL)a3;
- (void)setHasRpcuActiveDurMs:(BOOL)a3;
- (void)setHasSleepDurMs:(BOOL)a3;
- (void)setHasSleepEntryCount:(BOOL)a3;
- (void)setHasTdscdmaActiveDurMs:(BOOL)a3;
- (void)setHasTpcuActiveDurMs:(BOOL)a3;
- (void)setHasWcdmaActiveDurMs:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation KCellularPmicHwStats

- (void)setHasDurationMs:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFBF | v3);
}

- (void)setHasSleepDurMs:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x400000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFBFFFFF | v3);
}

- (void)setHasActiveDurMs:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFD | v3);
}

- (void)setHasSleepEntryCount:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x800000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFF7FFFFF | v3);
}

- (void)setHasLowVoltActiveDurMs:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x4000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFBFFF | v3);
}

- (void)setHasMidVoltActiveDurMs:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x10000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFEFFFF | v3);
}

- (void)setHasHighVoltActiveDurMs:(BOOL)a3
{
  if (a3)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFDFF | v3);
}

- (void)setHasGsmCa5ActiveDurMs:(BOOL)a3
{
  if (a3)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFEFF | v3);
}

- (void)setHasLteActiveDurMs:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x8000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFF7FFF | v3);
}

- (void)setHasWcdmaActiveDurMs:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x4000000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFBFFFFFF | v3);
}

- (void)setHasTdscdmaActiveDurMs:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x1000000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFEFFFFFF | v3);
}

- (void)setHasHostActiveDurMs:(BOOL)a3
{
  if (a3)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFBFF | v3);
}

- (void)setHasHostCpuSysActiveDurMs:(BOOL)a3
{
  if (a3)
  {
    v3 = 4096;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFEFFF | v3);
}

- (void)setHasHostCpuActiveDurMs:(BOOL)a3
{
  if (a3)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFF7FF | v3);
}

- (void)setHasRpcuActiveDurMs:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x200000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFDFFFFF | v3);
}

- (void)setHasPhyActiveDurMs:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x40000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFBFFFF | v3);
}

- (void)setHasPhyNocActiveDurMs:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x80000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFF7FFFF | v3);
}

- (void)setHasBctActiveDurMs:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFB | v3);
}

- (void)setHasCdmaActiveDurMs:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFF7 | v3);
}

- (void)setHasGsmActiveDurMs:(BOOL)a3
{
  if (a3)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFF7F | v3);
}

- (void)setHasTpcuActiveDurMs:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x2000000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFDFFFFFF | v3);
}

- (void)setHasIoActiveDurMs:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x2000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFDFFF | v3);
}

- (void)setHasPerActiveDurMs:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x20000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFDFFFF | v3);
}

- (void)setHasDbgActiveDurMs:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFEF | v3);
}

- (void)setHasDpuActiveDurMs:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFDF | v3);
}

- (void)setHasRauActiveDurMs:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x100000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFEFFFFF | v3);
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = KCellularPmicHwStats;
  v4 = [(KCellularPmicHwStats *)&v8 description];
  v5 = [(KCellularPmicHwStats *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if (*&has)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_timestamp];
    [v3 setObject:v7 forKey:@"timestamp"];

    has = self->_has;
    if ((*&has & 0x40) == 0)
    {
LABEL_3:
      if ((*&has & 0x400000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_34;
    }
  }

  else if ((*&has & 0x40) == 0)
  {
    goto LABEL_3;
  }

  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_durationMs];
  [v3 setObject:v8 forKey:@"duration_ms"];

  has = self->_has;
  if ((*&has & 0x400000) == 0)
  {
LABEL_4:
    if ((*&has & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_35;
  }

LABEL_34:
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_sleepDurMs];
  [v3 setObject:v9 forKey:@"sleep_dur_ms"];

  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_5:
    if ((*&has & 0x800000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_36;
  }

LABEL_35:
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_activeDurMs];
  [v3 setObject:v10 forKey:@"active_dur_ms"];

  has = self->_has;
  if ((*&has & 0x800000) == 0)
  {
LABEL_6:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_37;
  }

LABEL_36:
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_sleepEntryCount];
  [v3 setObject:v11 forKey:@"sleep_entry_count"];

  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_7:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_38;
  }

LABEL_37:
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_lowVoltActiveDurMs];
  [v3 setObject:v12 forKey:@"low_volt_active_dur_ms"];

  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_8:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_39;
  }

LABEL_38:
  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_midVoltActiveDurMs];
  [v3 setObject:v13 forKey:@"mid_volt_active_dur_ms"];

  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_9:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_40;
  }

LABEL_39:
  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_highVoltActiveDurMs];
  [v3 setObject:v14 forKey:@"high_volt_active_dur_ms"];

  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_10:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_41;
  }

LABEL_40:
  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_gsmCa5ActiveDurMs];
  [v3 setObject:v15 forKey:@"gsm_ca5_active_dur_ms"];

  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_11:
    if ((*&has & 0x4000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_42;
  }

LABEL_41:
  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_lteActiveDurMs];
  [v3 setObject:v16 forKey:@"lte_active_dur_ms"];

  has = self->_has;
  if ((*&has & 0x4000000) == 0)
  {
LABEL_12:
    if ((*&has & 0x1000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_43;
  }

LABEL_42:
  v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_wcdmaActiveDurMs];
  [v3 setObject:v17 forKey:@"wcdma_active_dur_ms"];

  has = self->_has;
  if ((*&has & 0x1000000) == 0)
  {
LABEL_13:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_44;
  }

LABEL_43:
  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_tdscdmaActiveDurMs];
  [v3 setObject:v18 forKey:@"tdscdma_active_dur_ms"];

  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_14:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_45;
  }

LABEL_44:
  v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_hostActiveDurMs];
  [v3 setObject:v19 forKey:@"host_active_dur_ms"];

  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_15:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_46;
  }

LABEL_45:
  v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_hostCpuSysActiveDurMs];
  [v3 setObject:v20 forKey:@"host_cpu_sys_active_dur_ms"];

  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_16:
    if ((*&has & 0x200000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_47;
  }

LABEL_46:
  v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_hostCpuActiveDurMs];
  [v3 setObject:v21 forKey:@"host_cpu_active_dur_ms"];

  has = self->_has;
  if ((*&has & 0x200000) == 0)
  {
LABEL_17:
    if ((*&has & 0x40000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_48;
  }

LABEL_47:
  v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_rpcuActiveDurMs];
  [v3 setObject:v22 forKey:@"rpcu_active_dur_ms"];

  has = self->_has;
  if ((*&has & 0x40000) == 0)
  {
LABEL_18:
    if ((*&has & 0x80000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_49;
  }

LABEL_48:
  v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_phyActiveDurMs];
  [v3 setObject:v23 forKey:@"phy_active_dur_ms"];

  has = self->_has;
  if ((*&has & 0x80000) == 0)
  {
LABEL_19:
    if ((*&has & 4) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_50;
  }

LABEL_49:
  v24 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_phyNocActiveDurMs];
  [v3 setObject:v24 forKey:@"phy_noc_active_dur_ms"];

  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_20:
    if ((*&has & 8) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_51;
  }

LABEL_50:
  v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_bctActiveDurMs];
  [v3 setObject:v25 forKey:@"bct_active_dur_ms"];

  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_21:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_52;
  }

LABEL_51:
  v26 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_cdmaActiveDurMs];
  [v3 setObject:v26 forKey:@"cdma_active_dur_ms"];

  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_22:
    if ((*&has & 0x2000000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_53;
  }

LABEL_52:
  v27 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_gsmActiveDurMs];
  [v3 setObject:v27 forKey:@"gsm_active_dur_ms"];

  has = self->_has;
  if ((*&has & 0x2000000) == 0)
  {
LABEL_23:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_54;
  }

LABEL_53:
  v28 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_tpcuActiveDurMs];
  [v3 setObject:v28 forKey:@"tpcu_active_dur_ms"];

  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_24:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_55;
  }

LABEL_54:
  v29 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_ioActiveDurMs];
  [v3 setObject:v29 forKey:@"io_active_dur_ms"];

  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_25:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_56;
  }

LABEL_55:
  v30 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_perActiveDurMs];
  [v3 setObject:v30 forKey:@"per_active_dur_ms"];

  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_26:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_57;
  }

LABEL_56:
  v31 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_dbgActiveDurMs];
  [v3 setObject:v31 forKey:@"dbg_active_dur_ms"];

  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_27:
    if ((*&has & 0x100000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

LABEL_57:
  v32 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_dpuActiveDurMs];
  [v3 setObject:v32 forKey:@"dpu_active_dur_ms"];

  if ((*&self->_has & 0x100000) != 0)
  {
LABEL_28:
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_rauActiveDurMs];
    [v3 setObject:v5 forKey:@"rau_active_dur_ms"];
  }

LABEL_29:

  return v3;
}

- (void)writeTo:(id)a3
{
  v32 = a3;
  has = self->_has;
  if (*&has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    has = self->_has;
    if ((*&has & 0x40) == 0)
    {
LABEL_3:
      if ((*&has & 0x400000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_34;
    }
  }

  else if ((*&has & 0x40) == 0)
  {
    goto LABEL_3;
  }

  durationMs = self->_durationMs;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x400000) == 0)
  {
LABEL_4:
    if ((*&has & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_35;
  }

LABEL_34:
  sleepDurMs = self->_sleepDurMs;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_5:
    if ((*&has & 0x800000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_36;
  }

LABEL_35:
  activeDurMs = self->_activeDurMs;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x800000) == 0)
  {
LABEL_6:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_37;
  }

LABEL_36:
  sleepEntryCount = self->_sleepEntryCount;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_7:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_38;
  }

LABEL_37:
  lowVoltActiveDurMs = self->_lowVoltActiveDurMs;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_8:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_39;
  }

LABEL_38:
  midVoltActiveDurMs = self->_midVoltActiveDurMs;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_9:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_40;
  }

LABEL_39:
  highVoltActiveDurMs = self->_highVoltActiveDurMs;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_10:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_41;
  }

LABEL_40:
  gsmCa5ActiveDurMs = self->_gsmCa5ActiveDurMs;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_11:
    if ((*&has & 0x4000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_42;
  }

LABEL_41:
  lteActiveDurMs = self->_lteActiveDurMs;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x4000000) == 0)
  {
LABEL_12:
    if ((*&has & 0x1000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_43;
  }

LABEL_42:
  wcdmaActiveDurMs = self->_wcdmaActiveDurMs;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x1000000) == 0)
  {
LABEL_13:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_44;
  }

LABEL_43:
  tdscdmaActiveDurMs = self->_tdscdmaActiveDurMs;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_14:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_45;
  }

LABEL_44:
  hostActiveDurMs = self->_hostActiveDurMs;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_15:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_46;
  }

LABEL_45:
  hostCpuSysActiveDurMs = self->_hostCpuSysActiveDurMs;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_16:
    if ((*&has & 0x200000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_47;
  }

LABEL_46:
  hostCpuActiveDurMs = self->_hostCpuActiveDurMs;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x200000) == 0)
  {
LABEL_17:
    if ((*&has & 0x40000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_48;
  }

LABEL_47:
  rpcuActiveDurMs = self->_rpcuActiveDurMs;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x40000) == 0)
  {
LABEL_18:
    if ((*&has & 0x80000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_49;
  }

LABEL_48:
  phyActiveDurMs = self->_phyActiveDurMs;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x80000) == 0)
  {
LABEL_19:
    if ((*&has & 4) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_50;
  }

LABEL_49:
  phyNocActiveDurMs = self->_phyNocActiveDurMs;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_20:
    if ((*&has & 8) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_51;
  }

LABEL_50:
  bctActiveDurMs = self->_bctActiveDurMs;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_21:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_52;
  }

LABEL_51:
  cdmaActiveDurMs = self->_cdmaActiveDurMs;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_22:
    if ((*&has & 0x2000000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_53;
  }

LABEL_52:
  gsmActiveDurMs = self->_gsmActiveDurMs;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x2000000) == 0)
  {
LABEL_23:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_54;
  }

LABEL_53:
  tpcuActiveDurMs = self->_tpcuActiveDurMs;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_24:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_55;
  }

LABEL_54:
  ioActiveDurMs = self->_ioActiveDurMs;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_25:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_56;
  }

LABEL_55:
  perActiveDurMs = self->_perActiveDurMs;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_26:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_57;
  }

LABEL_56:
  dbgActiveDurMs = self->_dbgActiveDurMs;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_27:
    if ((*&has & 0x100000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

LABEL_57:
  dpuActiveDurMs = self->_dpuActiveDurMs;
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 0x100000) != 0)
  {
LABEL_28:
    rauActiveDurMs = self->_rauActiveDurMs;
    PBDataWriterWriteUint32Field();
  }

LABEL_29:
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if (*&has)
  {
    v4[1] = self->_timestamp;
    *(v4 + 30) |= 1u;
    has = self->_has;
    if ((*&has & 0x40) == 0)
    {
LABEL_3:
      if ((*&has & 0x400000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_34;
    }
  }

  else if ((*&has & 0x40) == 0)
  {
    goto LABEL_3;
  }

  *(v4 + 9) = self->_durationMs;
  *(v4 + 30) |= 0x40u;
  has = self->_has;
  if ((*&has & 0x400000) == 0)
  {
LABEL_4:
    if ((*&has & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_35;
  }

LABEL_34:
  *(v4 + 25) = self->_sleepDurMs;
  *(v4 + 30) |= 0x400000u;
  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_5:
    if ((*&has & 0x800000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_36;
  }

LABEL_35:
  *(v4 + 4) = self->_activeDurMs;
  *(v4 + 30) |= 2u;
  has = self->_has;
  if ((*&has & 0x800000) == 0)
  {
LABEL_6:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_37;
  }

LABEL_36:
  *(v4 + 26) = self->_sleepEntryCount;
  *(v4 + 30) |= 0x800000u;
  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_7:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_38;
  }

LABEL_37:
  *(v4 + 17) = self->_lowVoltActiveDurMs;
  *(v4 + 30) |= 0x4000u;
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_8:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_39;
  }

LABEL_38:
  *(v4 + 19) = self->_midVoltActiveDurMs;
  *(v4 + 30) |= 0x10000u;
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_9:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_40;
  }

LABEL_39:
  *(v4 + 12) = self->_highVoltActiveDurMs;
  *(v4 + 30) |= 0x200u;
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_10:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_41;
  }

LABEL_40:
  *(v4 + 11) = self->_gsmCa5ActiveDurMs;
  *(v4 + 30) |= 0x100u;
  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_11:
    if ((*&has & 0x4000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_42;
  }

LABEL_41:
  *(v4 + 18) = self->_lteActiveDurMs;
  *(v4 + 30) |= 0x8000u;
  has = self->_has;
  if ((*&has & 0x4000000) == 0)
  {
LABEL_12:
    if ((*&has & 0x1000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_43;
  }

LABEL_42:
  *(v4 + 29) = self->_wcdmaActiveDurMs;
  *(v4 + 30) |= 0x4000000u;
  has = self->_has;
  if ((*&has & 0x1000000) == 0)
  {
LABEL_13:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_44;
  }

LABEL_43:
  *(v4 + 27) = self->_tdscdmaActiveDurMs;
  *(v4 + 30) |= 0x1000000u;
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_14:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_45;
  }

LABEL_44:
  *(v4 + 13) = self->_hostActiveDurMs;
  *(v4 + 30) |= 0x400u;
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_15:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_46;
  }

LABEL_45:
  *(v4 + 15) = self->_hostCpuSysActiveDurMs;
  *(v4 + 30) |= 0x1000u;
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_16:
    if ((*&has & 0x200000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_47;
  }

LABEL_46:
  *(v4 + 14) = self->_hostCpuActiveDurMs;
  *(v4 + 30) |= 0x800u;
  has = self->_has;
  if ((*&has & 0x200000) == 0)
  {
LABEL_17:
    if ((*&has & 0x40000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_48;
  }

LABEL_47:
  *(v4 + 24) = self->_rpcuActiveDurMs;
  *(v4 + 30) |= 0x200000u;
  has = self->_has;
  if ((*&has & 0x40000) == 0)
  {
LABEL_18:
    if ((*&has & 0x80000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_49;
  }

LABEL_48:
  *(v4 + 21) = self->_phyActiveDurMs;
  *(v4 + 30) |= 0x40000u;
  has = self->_has;
  if ((*&has & 0x80000) == 0)
  {
LABEL_19:
    if ((*&has & 4) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_50;
  }

LABEL_49:
  *(v4 + 22) = self->_phyNocActiveDurMs;
  *(v4 + 30) |= 0x80000u;
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_20:
    if ((*&has & 8) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_51;
  }

LABEL_50:
  *(v4 + 5) = self->_bctActiveDurMs;
  *(v4 + 30) |= 4u;
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_21:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_52;
  }

LABEL_51:
  *(v4 + 6) = self->_cdmaActiveDurMs;
  *(v4 + 30) |= 8u;
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_22:
    if ((*&has & 0x2000000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_53;
  }

LABEL_52:
  *(v4 + 10) = self->_gsmActiveDurMs;
  *(v4 + 30) |= 0x80u;
  has = self->_has;
  if ((*&has & 0x2000000) == 0)
  {
LABEL_23:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_54;
  }

LABEL_53:
  *(v4 + 28) = self->_tpcuActiveDurMs;
  *(v4 + 30) |= 0x2000000u;
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_24:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_55;
  }

LABEL_54:
  *(v4 + 16) = self->_ioActiveDurMs;
  *(v4 + 30) |= 0x2000u;
  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_25:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_56;
  }

LABEL_55:
  *(v4 + 20) = self->_perActiveDurMs;
  *(v4 + 30) |= 0x20000u;
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_26:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_57;
  }

LABEL_56:
  *(v4 + 7) = self->_dbgActiveDurMs;
  *(v4 + 30) |= 0x10u;
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_27:
    if ((*&has & 0x100000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

LABEL_57:
  *(v4 + 8) = self->_dpuActiveDurMs;
  *(v4 + 30) |= 0x20u;
  if ((*&self->_has & 0x100000) != 0)
  {
LABEL_28:
    *(v4 + 23) = self->_rauActiveDurMs;
    *(v4 + 30) |= 0x100000u;
  }

LABEL_29:
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  has = self->_has;
  if (*&has)
  {
    *(result + 1) = self->_timestamp;
    *(result + 30) |= 1u;
    has = self->_has;
    if ((*&has & 0x40) == 0)
    {
LABEL_3:
      if ((*&has & 0x400000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_32;
    }
  }

  else if ((*&has & 0x40) == 0)
  {
    goto LABEL_3;
  }

  *(result + 9) = self->_durationMs;
  *(result + 30) |= 0x40u;
  has = self->_has;
  if ((*&has & 0x400000) == 0)
  {
LABEL_4:
    if ((*&has & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_33;
  }

LABEL_32:
  *(result + 25) = self->_sleepDurMs;
  *(result + 30) |= 0x400000u;
  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_5:
    if ((*&has & 0x800000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_34;
  }

LABEL_33:
  *(result + 4) = self->_activeDurMs;
  *(result + 30) |= 2u;
  has = self->_has;
  if ((*&has & 0x800000) == 0)
  {
LABEL_6:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_35;
  }

LABEL_34:
  *(result + 26) = self->_sleepEntryCount;
  *(result + 30) |= 0x800000u;
  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_7:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_36;
  }

LABEL_35:
  *(result + 17) = self->_lowVoltActiveDurMs;
  *(result + 30) |= 0x4000u;
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_8:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_37;
  }

LABEL_36:
  *(result + 19) = self->_midVoltActiveDurMs;
  *(result + 30) |= 0x10000u;
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_9:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_38;
  }

LABEL_37:
  *(result + 12) = self->_highVoltActiveDurMs;
  *(result + 30) |= 0x200u;
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_10:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_39;
  }

LABEL_38:
  *(result + 11) = self->_gsmCa5ActiveDurMs;
  *(result + 30) |= 0x100u;
  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_11:
    if ((*&has & 0x4000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_40;
  }

LABEL_39:
  *(result + 18) = self->_lteActiveDurMs;
  *(result + 30) |= 0x8000u;
  has = self->_has;
  if ((*&has & 0x4000000) == 0)
  {
LABEL_12:
    if ((*&has & 0x1000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_41;
  }

LABEL_40:
  *(result + 29) = self->_wcdmaActiveDurMs;
  *(result + 30) |= 0x4000000u;
  has = self->_has;
  if ((*&has & 0x1000000) == 0)
  {
LABEL_13:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_42;
  }

LABEL_41:
  *(result + 27) = self->_tdscdmaActiveDurMs;
  *(result + 30) |= 0x1000000u;
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_14:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_43;
  }

LABEL_42:
  *(result + 13) = self->_hostActiveDurMs;
  *(result + 30) |= 0x400u;
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_15:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_44;
  }

LABEL_43:
  *(result + 15) = self->_hostCpuSysActiveDurMs;
  *(result + 30) |= 0x1000u;
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_16:
    if ((*&has & 0x200000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_45;
  }

LABEL_44:
  *(result + 14) = self->_hostCpuActiveDurMs;
  *(result + 30) |= 0x800u;
  has = self->_has;
  if ((*&has & 0x200000) == 0)
  {
LABEL_17:
    if ((*&has & 0x40000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_46;
  }

LABEL_45:
  *(result + 24) = self->_rpcuActiveDurMs;
  *(result + 30) |= 0x200000u;
  has = self->_has;
  if ((*&has & 0x40000) == 0)
  {
LABEL_18:
    if ((*&has & 0x80000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_47;
  }

LABEL_46:
  *(result + 21) = self->_phyActiveDurMs;
  *(result + 30) |= 0x40000u;
  has = self->_has;
  if ((*&has & 0x80000) == 0)
  {
LABEL_19:
    if ((*&has & 4) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_48;
  }

LABEL_47:
  *(result + 22) = self->_phyNocActiveDurMs;
  *(result + 30) |= 0x80000u;
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_20:
    if ((*&has & 8) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_49;
  }

LABEL_48:
  *(result + 5) = self->_bctActiveDurMs;
  *(result + 30) |= 4u;
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_21:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_50;
  }

LABEL_49:
  *(result + 6) = self->_cdmaActiveDurMs;
  *(result + 30) |= 8u;
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_22:
    if ((*&has & 0x2000000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_51;
  }

LABEL_50:
  *(result + 10) = self->_gsmActiveDurMs;
  *(result + 30) |= 0x80u;
  has = self->_has;
  if ((*&has & 0x2000000) == 0)
  {
LABEL_23:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_52;
  }

LABEL_51:
  *(result + 28) = self->_tpcuActiveDurMs;
  *(result + 30) |= 0x2000000u;
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_24:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_53;
  }

LABEL_52:
  *(result + 16) = self->_ioActiveDurMs;
  *(result + 30) |= 0x2000u;
  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_25:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_54;
  }

LABEL_53:
  *(result + 20) = self->_perActiveDurMs;
  *(result + 30) |= 0x20000u;
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_26:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_55;
  }

LABEL_54:
  *(result + 7) = self->_dbgActiveDurMs;
  *(result + 30) |= 0x10u;
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_27:
    if ((*&has & 0x100000) == 0)
    {
      return result;
    }

    goto LABEL_28;
  }

LABEL_55:
  *(result + 8) = self->_dpuActiveDurMs;
  *(result + 30) |= 0x20u;
  if ((*&self->_has & 0x100000) == 0)
  {
    return result;
  }

LABEL_28:
  *(result + 23) = self->_rauActiveDurMs;
  *(result + 30) |= 0x100000u;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_137;
  }

  has = self->_has;
  v6 = *(v4 + 30);
  if (*&has)
  {
    if ((v6 & 1) == 0 || self->_timestamp != *(v4 + 1))
    {
      goto LABEL_137;
    }
  }

  else if (v6)
  {
LABEL_137:
    v7 = 0;
    goto LABEL_138;
  }

  if ((*&has & 0x40) != 0)
  {
    if ((v6 & 0x40) == 0 || self->_durationMs != *(v4 + 9))
    {
      goto LABEL_137;
    }
  }

  else if ((v6 & 0x40) != 0)
  {
    goto LABEL_137;
  }

  if ((*&has & 0x400000) != 0)
  {
    if ((v6 & 0x400000) == 0 || self->_sleepDurMs != *(v4 + 25))
    {
      goto LABEL_137;
    }
  }

  else if ((v6 & 0x400000) != 0)
  {
    goto LABEL_137;
  }

  if ((*&has & 2) != 0)
  {
    if ((v6 & 2) == 0 || self->_activeDurMs != *(v4 + 4))
    {
      goto LABEL_137;
    }
  }

  else if ((v6 & 2) != 0)
  {
    goto LABEL_137;
  }

  if ((*&has & 0x800000) != 0)
  {
    if ((v6 & 0x800000) == 0 || self->_sleepEntryCount != *(v4 + 26))
    {
      goto LABEL_137;
    }
  }

  else if ((v6 & 0x800000) != 0)
  {
    goto LABEL_137;
  }

  if ((*&has & 0x4000) != 0)
  {
    if ((v6 & 0x4000) == 0 || self->_lowVoltActiveDurMs != *(v4 + 17))
    {
      goto LABEL_137;
    }
  }

  else if ((v6 & 0x4000) != 0)
  {
    goto LABEL_137;
  }

  if ((*&has & 0x10000) != 0)
  {
    if ((v6 & 0x10000) == 0 || self->_midVoltActiveDurMs != *(v4 + 19))
    {
      goto LABEL_137;
    }
  }

  else if ((v6 & 0x10000) != 0)
  {
    goto LABEL_137;
  }

  if ((*&has & 0x200) != 0)
  {
    if ((v6 & 0x200) == 0 || self->_highVoltActiveDurMs != *(v4 + 12))
    {
      goto LABEL_137;
    }
  }

  else if ((v6 & 0x200) != 0)
  {
    goto LABEL_137;
  }

  if ((*&has & 0x100) != 0)
  {
    if ((v6 & 0x100) == 0 || self->_gsmCa5ActiveDurMs != *(v4 + 11))
    {
      goto LABEL_137;
    }
  }

  else if ((v6 & 0x100) != 0)
  {
    goto LABEL_137;
  }

  if ((*&has & 0x8000) != 0)
  {
    if ((v6 & 0x8000) == 0 || self->_lteActiveDurMs != *(v4 + 18))
    {
      goto LABEL_137;
    }
  }

  else if ((v6 & 0x8000) != 0)
  {
    goto LABEL_137;
  }

  if ((*&has & 0x4000000) != 0)
  {
    if ((v6 & 0x4000000) == 0 || self->_wcdmaActiveDurMs != *(v4 + 29))
    {
      goto LABEL_137;
    }
  }

  else if ((v6 & 0x4000000) != 0)
  {
    goto LABEL_137;
  }

  if ((*&has & 0x1000000) != 0)
  {
    if ((v6 & 0x1000000) == 0 || self->_tdscdmaActiveDurMs != *(v4 + 27))
    {
      goto LABEL_137;
    }
  }

  else if ((v6 & 0x1000000) != 0)
  {
    goto LABEL_137;
  }

  if ((*&has & 0x400) != 0)
  {
    if ((v6 & 0x400) == 0 || self->_hostActiveDurMs != *(v4 + 13))
    {
      goto LABEL_137;
    }
  }

  else if ((v6 & 0x400) != 0)
  {
    goto LABEL_137;
  }

  if ((*&has & 0x1000) != 0)
  {
    if ((v6 & 0x1000) == 0 || self->_hostCpuSysActiveDurMs != *(v4 + 15))
    {
      goto LABEL_137;
    }
  }

  else if ((v6 & 0x1000) != 0)
  {
    goto LABEL_137;
  }

  if ((*&has & 0x800) != 0)
  {
    if ((v6 & 0x800) == 0 || self->_hostCpuActiveDurMs != *(v4 + 14))
    {
      goto LABEL_137;
    }
  }

  else if ((v6 & 0x800) != 0)
  {
    goto LABEL_137;
  }

  if ((*&has & 0x200000) != 0)
  {
    if ((v6 & 0x200000) == 0 || self->_rpcuActiveDurMs != *(v4 + 24))
    {
      goto LABEL_137;
    }
  }

  else if ((v6 & 0x200000) != 0)
  {
    goto LABEL_137;
  }

  if ((*&has & 0x40000) != 0)
  {
    if ((v6 & 0x40000) == 0 || self->_phyActiveDurMs != *(v4 + 21))
    {
      goto LABEL_137;
    }
  }

  else if ((v6 & 0x40000) != 0)
  {
    goto LABEL_137;
  }

  if ((*&has & 0x80000) != 0)
  {
    if ((v6 & 0x80000) == 0 || self->_phyNocActiveDurMs != *(v4 + 22))
    {
      goto LABEL_137;
    }
  }

  else if ((v6 & 0x80000) != 0)
  {
    goto LABEL_137;
  }

  if ((*&has & 4) != 0)
  {
    if ((v6 & 4) == 0 || self->_bctActiveDurMs != *(v4 + 5))
    {
      goto LABEL_137;
    }
  }

  else if ((v6 & 4) != 0)
  {
    goto LABEL_137;
  }

  if ((*&has & 8) != 0)
  {
    if ((v6 & 8) == 0 || self->_cdmaActiveDurMs != *(v4 + 6))
    {
      goto LABEL_137;
    }
  }

  else if ((v6 & 8) != 0)
  {
    goto LABEL_137;
  }

  if ((*&has & 0x80) != 0)
  {
    if ((v6 & 0x80) == 0 || self->_gsmActiveDurMs != *(v4 + 10))
    {
      goto LABEL_137;
    }
  }

  else if ((v6 & 0x80) != 0)
  {
    goto LABEL_137;
  }

  if ((*&has & 0x2000000) != 0)
  {
    if ((v6 & 0x2000000) == 0 || self->_tpcuActiveDurMs != *(v4 + 28))
    {
      goto LABEL_137;
    }
  }

  else if ((v6 & 0x2000000) != 0)
  {
    goto LABEL_137;
  }

  if ((*&has & 0x2000) != 0)
  {
    if ((v6 & 0x2000) == 0 || self->_ioActiveDurMs != *(v4 + 16))
    {
      goto LABEL_137;
    }
  }

  else if ((v6 & 0x2000) != 0)
  {
    goto LABEL_137;
  }

  if ((*&has & 0x20000) != 0)
  {
    if ((v6 & 0x20000) == 0 || self->_perActiveDurMs != *(v4 + 20))
    {
      goto LABEL_137;
    }
  }

  else if ((v6 & 0x20000) != 0)
  {
    goto LABEL_137;
  }

  if ((*&has & 0x10) != 0)
  {
    if ((v6 & 0x10) == 0 || self->_dbgActiveDurMs != *(v4 + 7))
    {
      goto LABEL_137;
    }
  }

  else if ((v6 & 0x10) != 0)
  {
    goto LABEL_137;
  }

  if ((*&has & 0x20) != 0)
  {
    if ((v6 & 0x20) == 0 || self->_dpuActiveDurMs != *(v4 + 8))
    {
      goto LABEL_137;
    }
  }

  else if ((v6 & 0x20) != 0)
  {
    goto LABEL_137;
  }

  if ((*&has & 0x100000) != 0)
  {
    if ((v6 & 0x100000) == 0 || self->_rauActiveDurMs != *(v4 + 23))
    {
      goto LABEL_137;
    }

    v7 = 1;
  }

  else
  {
    v7 = (v6 & 0x100000) == 0;
  }

LABEL_138:

  return v7;
}

- (unint64_t)hash
{
  has = self->_has;
  if (*&has)
  {
    v3 = 2654435761u * self->_timestamp;
    if ((*&has & 0x40) != 0)
    {
LABEL_3:
      v4 = 2654435761 * self->_durationMs;
      if ((*&has & 0x400000) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_19;
    }
  }

  else
  {
    v3 = 0;
    if ((*&has & 0x40) != 0)
    {
      goto LABEL_3;
    }
  }

  v4 = 0;
  if ((*&has & 0x400000) != 0)
  {
LABEL_4:
    v5 = 2654435761 * self->_sleepDurMs;
    if ((*&has & 2) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_20;
  }

LABEL_19:
  v5 = 0;
  if ((*&has & 2) != 0)
  {
LABEL_5:
    v6 = 2654435761 * self->_activeDurMs;
    if ((*&has & 0x800000) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_21;
  }

LABEL_20:
  v6 = 0;
  if ((*&has & 0x800000) != 0)
  {
LABEL_6:
    v7 = 2654435761 * self->_sleepEntryCount;
    if ((*&has & 0x4000) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_22;
  }

LABEL_21:
  v7 = 0;
  if ((*&has & 0x4000) != 0)
  {
LABEL_7:
    v8 = 2654435761 * self->_lowVoltActiveDurMs;
    if ((*&has & 0x10000) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_23;
  }

LABEL_22:
  v8 = 0;
  if ((*&has & 0x10000) != 0)
  {
LABEL_8:
    v9 = 2654435761 * self->_midVoltActiveDurMs;
    if ((*&has & 0x200) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_24;
  }

LABEL_23:
  v9 = 0;
  if ((*&has & 0x200) != 0)
  {
LABEL_9:
    v10 = 2654435761 * self->_highVoltActiveDurMs;
    if ((*&has & 0x100) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_25;
  }

LABEL_24:
  v10 = 0;
  if ((*&has & 0x100) != 0)
  {
LABEL_10:
    v11 = 2654435761 * self->_gsmCa5ActiveDurMs;
    if ((*&has & 0x8000) != 0)
    {
      goto LABEL_11;
    }

    goto LABEL_26;
  }

LABEL_25:
  v11 = 0;
  if ((*&has & 0x8000) != 0)
  {
LABEL_11:
    v12 = 2654435761 * self->_lteActiveDurMs;
    if ((*&has & 0x4000000) != 0)
    {
      goto LABEL_12;
    }

    goto LABEL_27;
  }

LABEL_26:
  v12 = 0;
  if ((*&has & 0x4000000) != 0)
  {
LABEL_12:
    v13 = 2654435761 * self->_wcdmaActiveDurMs;
    if ((*&has & 0x1000000) != 0)
    {
      goto LABEL_13;
    }

    goto LABEL_28;
  }

LABEL_27:
  v13 = 0;
  if ((*&has & 0x1000000) != 0)
  {
LABEL_13:
    v14 = 2654435761 * self->_tdscdmaActiveDurMs;
    if ((*&has & 0x400) != 0)
    {
      goto LABEL_14;
    }

    goto LABEL_29;
  }

LABEL_28:
  v14 = 0;
  if ((*&has & 0x400) != 0)
  {
LABEL_14:
    v15 = 2654435761 * self->_hostActiveDurMs;
    if ((*&has & 0x1000) != 0)
    {
      goto LABEL_15;
    }

LABEL_30:
    v16 = 0;
    if ((*&has & 0x800) != 0)
    {
      goto LABEL_16;
    }

    goto LABEL_31;
  }

LABEL_29:
  v15 = 0;
  if ((*&has & 0x1000) == 0)
  {
    goto LABEL_30;
  }

LABEL_15:
  v16 = 2654435761 * self->_hostCpuSysActiveDurMs;
  if ((*&has & 0x800) != 0)
  {
LABEL_16:
    v17 = 2654435761 * self->_hostCpuActiveDurMs;
    goto LABEL_32;
  }

LABEL_31:
  v17 = 0;
LABEL_32:
  if ((*&has & 0x200000) != 0)
  {
    v18 = 2654435761 * self->_rpcuActiveDurMs;
    if ((*&has & 0x40000) != 0)
    {
LABEL_34:
      v19 = 2654435761 * self->_phyActiveDurMs;
      if ((*&has & 0x80000) != 0)
      {
        goto LABEL_35;
      }

      goto LABEL_47;
    }
  }

  else
  {
    v18 = 0;
    if ((*&has & 0x40000) != 0)
    {
      goto LABEL_34;
    }
  }

  v19 = 0;
  if ((*&has & 0x80000) != 0)
  {
LABEL_35:
    v20 = 2654435761 * self->_phyNocActiveDurMs;
    if ((*&has & 4) != 0)
    {
      goto LABEL_36;
    }

    goto LABEL_48;
  }

LABEL_47:
  v20 = 0;
  if ((*&has & 4) != 0)
  {
LABEL_36:
    v21 = 2654435761 * self->_bctActiveDurMs;
    if ((*&has & 8) != 0)
    {
      goto LABEL_37;
    }

    goto LABEL_49;
  }

LABEL_48:
  v21 = 0;
  if ((*&has & 8) != 0)
  {
LABEL_37:
    v22 = 2654435761 * self->_cdmaActiveDurMs;
    if ((*&has & 0x80) != 0)
    {
      goto LABEL_38;
    }

    goto LABEL_50;
  }

LABEL_49:
  v22 = 0;
  if ((*&has & 0x80) != 0)
  {
LABEL_38:
    v23 = 2654435761 * self->_gsmActiveDurMs;
    if ((*&has & 0x2000000) != 0)
    {
      goto LABEL_39;
    }

    goto LABEL_51;
  }

LABEL_50:
  v23 = 0;
  if ((*&has & 0x2000000) != 0)
  {
LABEL_39:
    v24 = 2654435761 * self->_tpcuActiveDurMs;
    if ((*&has & 0x2000) != 0)
    {
      goto LABEL_40;
    }

    goto LABEL_52;
  }

LABEL_51:
  v24 = 0;
  if ((*&has & 0x2000) != 0)
  {
LABEL_40:
    v25 = 2654435761 * self->_ioActiveDurMs;
    if ((*&has & 0x20000) != 0)
    {
      goto LABEL_41;
    }

    goto LABEL_53;
  }

LABEL_52:
  v25 = 0;
  if ((*&has & 0x20000) != 0)
  {
LABEL_41:
    v26 = 2654435761 * self->_perActiveDurMs;
    if ((*&has & 0x10) != 0)
    {
      goto LABEL_42;
    }

    goto LABEL_54;
  }

LABEL_53:
  v26 = 0;
  if ((*&has & 0x10) != 0)
  {
LABEL_42:
    v27 = 2654435761 * self->_dbgActiveDurMs;
    if ((*&has & 0x20) != 0)
    {
      goto LABEL_43;
    }

LABEL_55:
    v28 = 0;
    if ((*&has & 0x100000) != 0)
    {
      goto LABEL_44;
    }

LABEL_56:
    v29 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19 ^ v20 ^ v21 ^ v22 ^ v23 ^ v24 ^ v25 ^ v26 ^ v27 ^ v28 ^ v29;
  }

LABEL_54:
  v27 = 0;
  if ((*&has & 0x20) == 0)
  {
    goto LABEL_55;
  }

LABEL_43:
  v28 = 2654435761 * self->_dpuActiveDurMs;
  if ((*&has & 0x100000) == 0)
  {
    goto LABEL_56;
  }

LABEL_44:
  v29 = 2654435761 * self->_rauActiveDurMs;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19 ^ v20 ^ v21 ^ v22 ^ v23 ^ v24 ^ v25 ^ v26 ^ v27 ^ v28 ^ v29;
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
    if ((v5 & 0x40) == 0)
    {
LABEL_3:
      if ((v5 & 0x400000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_34;
    }
  }

  else if ((v5 & 0x40) == 0)
  {
    goto LABEL_3;
  }

  self->_durationMs = *(v4 + 9);
  *&self->_has |= 0x40u;
  v5 = *(v4 + 30);
  if ((v5 & 0x400000) == 0)
  {
LABEL_4:
    if ((v5 & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_35;
  }

LABEL_34:
  self->_sleepDurMs = *(v4 + 25);
  *&self->_has |= 0x400000u;
  v5 = *(v4 + 30);
  if ((v5 & 2) == 0)
  {
LABEL_5:
    if ((v5 & 0x800000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_36;
  }

LABEL_35:
  self->_activeDurMs = *(v4 + 4);
  *&self->_has |= 2u;
  v5 = *(v4 + 30);
  if ((v5 & 0x800000) == 0)
  {
LABEL_6:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_37;
  }

LABEL_36:
  self->_sleepEntryCount = *(v4 + 26);
  *&self->_has |= 0x800000u;
  v5 = *(v4 + 30);
  if ((v5 & 0x4000) == 0)
  {
LABEL_7:
    if ((v5 & 0x10000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_38;
  }

LABEL_37:
  self->_lowVoltActiveDurMs = *(v4 + 17);
  *&self->_has |= 0x4000u;
  v5 = *(v4 + 30);
  if ((v5 & 0x10000) == 0)
  {
LABEL_8:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_39;
  }

LABEL_38:
  self->_midVoltActiveDurMs = *(v4 + 19);
  *&self->_has |= 0x10000u;
  v5 = *(v4 + 30);
  if ((v5 & 0x200) == 0)
  {
LABEL_9:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_40;
  }

LABEL_39:
  self->_highVoltActiveDurMs = *(v4 + 12);
  *&self->_has |= 0x200u;
  v5 = *(v4 + 30);
  if ((v5 & 0x100) == 0)
  {
LABEL_10:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_41;
  }

LABEL_40:
  self->_gsmCa5ActiveDurMs = *(v4 + 11);
  *&self->_has |= 0x100u;
  v5 = *(v4 + 30);
  if ((v5 & 0x8000) == 0)
  {
LABEL_11:
    if ((v5 & 0x4000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_42;
  }

LABEL_41:
  self->_lteActiveDurMs = *(v4 + 18);
  *&self->_has |= 0x8000u;
  v5 = *(v4 + 30);
  if ((v5 & 0x4000000) == 0)
  {
LABEL_12:
    if ((v5 & 0x1000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_43;
  }

LABEL_42:
  self->_wcdmaActiveDurMs = *(v4 + 29);
  *&self->_has |= 0x4000000u;
  v5 = *(v4 + 30);
  if ((v5 & 0x1000000) == 0)
  {
LABEL_13:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_44;
  }

LABEL_43:
  self->_tdscdmaActiveDurMs = *(v4 + 27);
  *&self->_has |= 0x1000000u;
  v5 = *(v4 + 30);
  if ((v5 & 0x400) == 0)
  {
LABEL_14:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_45;
  }

LABEL_44:
  self->_hostActiveDurMs = *(v4 + 13);
  *&self->_has |= 0x400u;
  v5 = *(v4 + 30);
  if ((v5 & 0x1000) == 0)
  {
LABEL_15:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_46;
  }

LABEL_45:
  self->_hostCpuSysActiveDurMs = *(v4 + 15);
  *&self->_has |= 0x1000u;
  v5 = *(v4 + 30);
  if ((v5 & 0x800) == 0)
  {
LABEL_16:
    if ((v5 & 0x200000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_47;
  }

LABEL_46:
  self->_hostCpuActiveDurMs = *(v4 + 14);
  *&self->_has |= 0x800u;
  v5 = *(v4 + 30);
  if ((v5 & 0x200000) == 0)
  {
LABEL_17:
    if ((v5 & 0x40000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_48;
  }

LABEL_47:
  self->_rpcuActiveDurMs = *(v4 + 24);
  *&self->_has |= 0x200000u;
  v5 = *(v4 + 30);
  if ((v5 & 0x40000) == 0)
  {
LABEL_18:
    if ((v5 & 0x80000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_49;
  }

LABEL_48:
  self->_phyActiveDurMs = *(v4 + 21);
  *&self->_has |= 0x40000u;
  v5 = *(v4 + 30);
  if ((v5 & 0x80000) == 0)
  {
LABEL_19:
    if ((v5 & 4) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_50;
  }

LABEL_49:
  self->_phyNocActiveDurMs = *(v4 + 22);
  *&self->_has |= 0x80000u;
  v5 = *(v4 + 30);
  if ((v5 & 4) == 0)
  {
LABEL_20:
    if ((v5 & 8) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_51;
  }

LABEL_50:
  self->_bctActiveDurMs = *(v4 + 5);
  *&self->_has |= 4u;
  v5 = *(v4 + 30);
  if ((v5 & 8) == 0)
  {
LABEL_21:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_52;
  }

LABEL_51:
  self->_cdmaActiveDurMs = *(v4 + 6);
  *&self->_has |= 8u;
  v5 = *(v4 + 30);
  if ((v5 & 0x80) == 0)
  {
LABEL_22:
    if ((v5 & 0x2000000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_53;
  }

LABEL_52:
  self->_gsmActiveDurMs = *(v4 + 10);
  *&self->_has |= 0x80u;
  v5 = *(v4 + 30);
  if ((v5 & 0x2000000) == 0)
  {
LABEL_23:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_54;
  }

LABEL_53:
  self->_tpcuActiveDurMs = *(v4 + 28);
  *&self->_has |= 0x2000000u;
  v5 = *(v4 + 30);
  if ((v5 & 0x2000) == 0)
  {
LABEL_24:
    if ((v5 & 0x20000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_55;
  }

LABEL_54:
  self->_ioActiveDurMs = *(v4 + 16);
  *&self->_has |= 0x2000u;
  v5 = *(v4 + 30);
  if ((v5 & 0x20000) == 0)
  {
LABEL_25:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_56;
  }

LABEL_55:
  self->_perActiveDurMs = *(v4 + 20);
  *&self->_has |= 0x20000u;
  v5 = *(v4 + 30);
  if ((v5 & 0x10) == 0)
  {
LABEL_26:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_57;
  }

LABEL_56:
  self->_dbgActiveDurMs = *(v4 + 7);
  *&self->_has |= 0x10u;
  v5 = *(v4 + 30);
  if ((v5 & 0x20) == 0)
  {
LABEL_27:
    if ((v5 & 0x100000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

LABEL_57:
  self->_dpuActiveDurMs = *(v4 + 8);
  *&self->_has |= 0x20u;
  if ((*(v4 + 30) & 0x100000) != 0)
  {
LABEL_28:
    self->_rauActiveDurMs = *(v4 + 23);
    *&self->_has |= 0x100000u;
  }

LABEL_29:
}

@end