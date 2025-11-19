@interface AWDMETRICSKCellularPowerlogRrcModeHist
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasConnDurBin0:(BOOL)a3;
- (void)setHasConnDurBin10:(BOOL)a3;
- (void)setHasConnDurBin11:(BOOL)a3;
- (void)setHasConnDurBin12:(BOOL)a3;
- (void)setHasConnDurBin1:(BOOL)a3;
- (void)setHasConnDurBin2:(BOOL)a3;
- (void)setHasConnDurBin3:(BOOL)a3;
- (void)setHasConnDurBin4:(BOOL)a3;
- (void)setHasConnDurBin5:(BOOL)a3;
- (void)setHasConnDurBin6:(BOOL)a3;
- (void)setHasConnDurBin7:(BOOL)a3;
- (void)setHasConnDurBin8:(BOOL)a3;
- (void)setHasConnDurBin9:(BOOL)a3;
- (void)setHasDurationMs:(BOOL)a3;
- (void)setHasIdleDurBin0:(BOOL)a3;
- (void)setHasIdleDurBin10:(BOOL)a3;
- (void)setHasIdleDurBin11:(BOOL)a3;
- (void)setHasIdleDurBin12:(BOOL)a3;
- (void)setHasIdleDurBin1:(BOOL)a3;
- (void)setHasIdleDurBin2:(BOOL)a3;
- (void)setHasIdleDurBin3:(BOOL)a3;
- (void)setHasIdleDurBin4:(BOOL)a3;
- (void)setHasIdleDurBin5:(BOOL)a3;
- (void)setHasIdleDurBin6:(BOOL)a3;
- (void)setHasIdleDurBin7:(BOOL)a3;
- (void)setHasIdleDurBin8:(BOOL)a3;
- (void)setHasIdleDurBin9:(BOOL)a3;
- (void)setHasSubsId:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDMETRICSKCellularPowerlogRrcModeHist

- (void)setHasDurationMs:(BOOL)a3
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

- (void)setHasIdleDurBin0:(BOOL)a3
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

- (void)setHasIdleDurBin1:(BOOL)a3
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

- (void)setHasIdleDurBin2:(BOOL)a3
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

- (void)setHasIdleDurBin3:(BOOL)a3
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

- (void)setHasIdleDurBin4:(BOOL)a3
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

- (void)setHasIdleDurBin5:(BOOL)a3
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

- (void)setHasIdleDurBin6:(BOOL)a3
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

- (void)setHasIdleDurBin7:(BOOL)a3
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

- (void)setHasIdleDurBin8:(BOOL)a3
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

- (void)setHasIdleDurBin9:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x8000000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xF7FFFFFF | v3);
}

- (void)setHasIdleDurBin10:(BOOL)a3
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

- (void)setHasIdleDurBin11:(BOOL)a3
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

- (void)setHasIdleDurBin12:(BOOL)a3
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

- (void)setHasConnDurBin0:(BOOL)a3
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

- (void)setHasConnDurBin1:(BOOL)a3
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

- (void)setHasConnDurBin2:(BOOL)a3
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

- (void)setHasConnDurBin3:(BOOL)a3
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

- (void)setHasConnDurBin4:(BOOL)a3
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

- (void)setHasConnDurBin5:(BOOL)a3
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

- (void)setHasConnDurBin6:(BOOL)a3
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

- (void)setHasConnDurBin7:(BOOL)a3
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

- (void)setHasConnDurBin8:(BOOL)a3
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

- (void)setHasConnDurBin9:(BOOL)a3
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

- (void)setHasConnDurBin10:(BOOL)a3
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

- (void)setHasConnDurBin11:(BOOL)a3
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

- (void)setHasConnDurBin12:(BOOL)a3
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

- (void)setHasSubsId:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x10000000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xEFFFFFFF | v3);
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = AWDMETRICSKCellularPowerlogRrcModeHist;
  v4 = [(AWDMETRICSKCellularPowerlogRrcModeHist *)&v8 description];
  v5 = [(AWDMETRICSKCellularPowerlogRrcModeHist *)self dictionaryRepresentation];
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
    if ((*&has & 0x4000) == 0)
    {
LABEL_3:
      if ((*&has & 0x8000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_36;
    }
  }

  else if ((*&has & 0x4000) == 0)
  {
    goto LABEL_3;
  }

  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_durationMs];
  [v3 setObject:v8 forKey:@"duration_ms"];

  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_4:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_37;
  }

LABEL_36:
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_idleDurBin0];
  [v3 setObject:v9 forKey:@"idle_dur_bin_0"];

  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_5:
    if ((*&has & 0x100000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_38;
  }

LABEL_37:
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_idleDurBin1];
  [v3 setObject:v10 forKey:@"idle_dur_bin_1"];

  has = self->_has;
  if ((*&has & 0x100000) == 0)
  {
LABEL_6:
    if ((*&has & 0x200000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_39;
  }

LABEL_38:
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_idleDurBin2];
  [v3 setObject:v11 forKey:@"idle_dur_bin_2"];

  has = self->_has;
  if ((*&has & 0x200000) == 0)
  {
LABEL_7:
    if ((*&has & 0x400000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_40;
  }

LABEL_39:
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_idleDurBin3];
  [v3 setObject:v12 forKey:@"idle_dur_bin_3"];

  has = self->_has;
  if ((*&has & 0x400000) == 0)
  {
LABEL_8:
    if ((*&has & 0x800000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_41;
  }

LABEL_40:
  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_idleDurBin4];
  [v3 setObject:v13 forKey:@"idle_dur_bin_4"];

  has = self->_has;
  if ((*&has & 0x800000) == 0)
  {
LABEL_9:
    if ((*&has & 0x1000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_42;
  }

LABEL_41:
  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_idleDurBin5];
  [v3 setObject:v14 forKey:@"idle_dur_bin_5"];

  has = self->_has;
  if ((*&has & 0x1000000) == 0)
  {
LABEL_10:
    if ((*&has & 0x2000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_43;
  }

LABEL_42:
  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_idleDurBin6];
  [v3 setObject:v15 forKey:@"idle_dur_bin_6"];

  has = self->_has;
  if ((*&has & 0x2000000) == 0)
  {
LABEL_11:
    if ((*&has & 0x4000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_44;
  }

LABEL_43:
  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_idleDurBin7];
  [v3 setObject:v16 forKey:@"idle_dur_bin_7"];

  has = self->_has;
  if ((*&has & 0x4000000) == 0)
  {
LABEL_12:
    if ((*&has & 0x8000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_45;
  }

LABEL_44:
  v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_idleDurBin8];
  [v3 setObject:v17 forKey:@"idle_dur_bin_8"];

  has = self->_has;
  if ((*&has & 0x8000000) == 0)
  {
LABEL_13:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_46;
  }

LABEL_45:
  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_idleDurBin9];
  [v3 setObject:v18 forKey:@"idle_dur_bin_9"];

  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_14:
    if ((*&has & 0x40000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_47;
  }

LABEL_46:
  v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_idleDurBin10];
  [v3 setObject:v19 forKey:@"idle_dur_bin_10"];

  has = self->_has;
  if ((*&has & 0x40000) == 0)
  {
LABEL_15:
    if ((*&has & 0x80000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_48;
  }

LABEL_47:
  v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_idleDurBin11];
  [v3 setObject:v20 forKey:@"idle_dur_bin_11"];

  has = self->_has;
  if ((*&has & 0x80000) == 0)
  {
LABEL_16:
    if ((*&has & 2) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_49;
  }

LABEL_48:
  v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_idleDurBin12];
  [v3 setObject:v21 forKey:@"idle_dur_bin_12"];

  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_17:
    if ((*&has & 4) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_50;
  }

LABEL_49:
  v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_connDurBin0];
  [v3 setObject:v22 forKey:@"conn_dur_bin_0"];

  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_18:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_51;
  }

LABEL_50:
  v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_connDurBin1];
  [v3 setObject:v23 forKey:@"conn_dur_bin_1"];

  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_19:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_52;
  }

LABEL_51:
  v24 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_connDurBin2];
  [v3 setObject:v24 forKey:@"conn_dur_bin_2"];

  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_20:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_53;
  }

LABEL_52:
  v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_connDurBin3];
  [v3 setObject:v25 forKey:@"conn_dur_bin_3"];

  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_21:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_54;
  }

LABEL_53:
  v26 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_connDurBin4];
  [v3 setObject:v26 forKey:@"conn_dur_bin_4"];

  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_22:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_55;
  }

LABEL_54:
  v27 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_connDurBin5];
  [v3 setObject:v27 forKey:@"conn_dur_bin_5"];

  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_23:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_56;
  }

LABEL_55:
  v28 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_connDurBin6];
  [v3 setObject:v28 forKey:@"conn_dur_bin_6"];

  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_24:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_57;
  }

LABEL_56:
  v29 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_connDurBin7];
  [v3 setObject:v29 forKey:@"conn_dur_bin_7"];

  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_25:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_58;
  }

LABEL_57:
  v30 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_connDurBin8];
  [v3 setObject:v30 forKey:@"conn_dur_bin_8"];

  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_26:
    if ((*&has & 8) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_59;
  }

LABEL_58:
  v31 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_connDurBin9];
  [v3 setObject:v31 forKey:@"conn_dur_bin_9"];

  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_27:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_60;
  }

LABEL_59:
  v32 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_connDurBin10];
  [v3 setObject:v32 forKey:@"conn_dur_bin_10"];

  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_28:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_61;
  }

LABEL_60:
  v33 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_connDurBin11];
  [v3 setObject:v33 forKey:@"conn_dur_bin_11"];

  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_29:
    if ((*&has & 0x10000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

LABEL_61:
  v34 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_connDurBin12];
  [v3 setObject:v34 forKey:@"conn_dur_bin_12"];

  if ((*&self->_has & 0x10000000) != 0)
  {
LABEL_30:
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_subsId];
    [v3 setObject:v5 forKey:@"subs_id"];
  }

LABEL_31:

  return v3;
}

- (void)writeTo:(id)a3
{
  v34 = a3;
  has = self->_has;
  if (*&has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    has = self->_has;
    if ((*&has & 0x4000) == 0)
    {
LABEL_3:
      if ((*&has & 0x8000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_36;
    }
  }

  else if ((*&has & 0x4000) == 0)
  {
    goto LABEL_3;
  }

  durationMs = self->_durationMs;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_4:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_37;
  }

LABEL_36:
  idleDurBin0 = self->_idleDurBin0;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_5:
    if ((*&has & 0x100000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_38;
  }

LABEL_37:
  idleDurBin1 = self->_idleDurBin1;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x100000) == 0)
  {
LABEL_6:
    if ((*&has & 0x200000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_39;
  }

LABEL_38:
  idleDurBin2 = self->_idleDurBin2;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x200000) == 0)
  {
LABEL_7:
    if ((*&has & 0x400000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_40;
  }

LABEL_39:
  idleDurBin3 = self->_idleDurBin3;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x400000) == 0)
  {
LABEL_8:
    if ((*&has & 0x800000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_41;
  }

LABEL_40:
  idleDurBin4 = self->_idleDurBin4;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x800000) == 0)
  {
LABEL_9:
    if ((*&has & 0x1000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_42;
  }

LABEL_41:
  idleDurBin5 = self->_idleDurBin5;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x1000000) == 0)
  {
LABEL_10:
    if ((*&has & 0x2000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_43;
  }

LABEL_42:
  idleDurBin6 = self->_idleDurBin6;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x2000000) == 0)
  {
LABEL_11:
    if ((*&has & 0x4000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_44;
  }

LABEL_43:
  idleDurBin7 = self->_idleDurBin7;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x4000000) == 0)
  {
LABEL_12:
    if ((*&has & 0x8000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_45;
  }

LABEL_44:
  idleDurBin8 = self->_idleDurBin8;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x8000000) == 0)
  {
LABEL_13:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_46;
  }

LABEL_45:
  idleDurBin9 = self->_idleDurBin9;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_14:
    if ((*&has & 0x40000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_47;
  }

LABEL_46:
  idleDurBin10 = self->_idleDurBin10;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x40000) == 0)
  {
LABEL_15:
    if ((*&has & 0x80000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_48;
  }

LABEL_47:
  idleDurBin11 = self->_idleDurBin11;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x80000) == 0)
  {
LABEL_16:
    if ((*&has & 2) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_49;
  }

LABEL_48:
  idleDurBin12 = self->_idleDurBin12;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_17:
    if ((*&has & 4) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_50;
  }

LABEL_49:
  connDurBin0 = self->_connDurBin0;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_18:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_51;
  }

LABEL_50:
  connDurBin1 = self->_connDurBin1;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_19:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_52;
  }

LABEL_51:
  connDurBin2 = self->_connDurBin2;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_20:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_53;
  }

LABEL_52:
  connDurBin3 = self->_connDurBin3;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_21:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_54;
  }

LABEL_53:
  connDurBin4 = self->_connDurBin4;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_22:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_55;
  }

LABEL_54:
  connDurBin5 = self->_connDurBin5;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_23:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_56;
  }

LABEL_55:
  connDurBin6 = self->_connDurBin6;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_24:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_57;
  }

LABEL_56:
  connDurBin7 = self->_connDurBin7;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_25:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_58;
  }

LABEL_57:
  connDurBin8 = self->_connDurBin8;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_26:
    if ((*&has & 8) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_59;
  }

LABEL_58:
  connDurBin9 = self->_connDurBin9;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_27:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_60;
  }

LABEL_59:
  connDurBin10 = self->_connDurBin10;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_28:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_61;
  }

LABEL_60:
  connDurBin11 = self->_connDurBin11;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_29:
    if ((*&has & 0x10000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

LABEL_61:
  connDurBin12 = self->_connDurBin12;
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 0x10000000) != 0)
  {
LABEL_30:
    subsId = self->_subsId;
    PBDataWriterWriteUint32Field();
  }

LABEL_31:
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if (*&has)
  {
    v4[1] = self->_timestamp;
    *(v4 + 32) |= 1u;
    has = self->_has;
    if ((*&has & 0x4000) == 0)
    {
LABEL_3:
      if ((*&has & 0x8000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_36;
    }
  }

  else if ((*&has & 0x4000) == 0)
  {
    goto LABEL_3;
  }

  *(v4 + 17) = self->_durationMs;
  *(v4 + 32) |= 0x4000u;
  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_4:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_37;
  }

LABEL_36:
  *(v4 + 18) = self->_idleDurBin0;
  *(v4 + 32) |= 0x8000u;
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_5:
    if ((*&has & 0x100000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_38;
  }

LABEL_37:
  *(v4 + 19) = self->_idleDurBin1;
  *(v4 + 32) |= 0x10000u;
  has = self->_has;
  if ((*&has & 0x100000) == 0)
  {
LABEL_6:
    if ((*&has & 0x200000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_39;
  }

LABEL_38:
  *(v4 + 23) = self->_idleDurBin2;
  *(v4 + 32) |= 0x100000u;
  has = self->_has;
  if ((*&has & 0x200000) == 0)
  {
LABEL_7:
    if ((*&has & 0x400000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_40;
  }

LABEL_39:
  *(v4 + 24) = self->_idleDurBin3;
  *(v4 + 32) |= 0x200000u;
  has = self->_has;
  if ((*&has & 0x400000) == 0)
  {
LABEL_8:
    if ((*&has & 0x800000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_41;
  }

LABEL_40:
  *(v4 + 25) = self->_idleDurBin4;
  *(v4 + 32) |= 0x400000u;
  has = self->_has;
  if ((*&has & 0x800000) == 0)
  {
LABEL_9:
    if ((*&has & 0x1000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_42;
  }

LABEL_41:
  *(v4 + 26) = self->_idleDurBin5;
  *(v4 + 32) |= 0x800000u;
  has = self->_has;
  if ((*&has & 0x1000000) == 0)
  {
LABEL_10:
    if ((*&has & 0x2000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_43;
  }

LABEL_42:
  *(v4 + 27) = self->_idleDurBin6;
  *(v4 + 32) |= 0x1000000u;
  has = self->_has;
  if ((*&has & 0x2000000) == 0)
  {
LABEL_11:
    if ((*&has & 0x4000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_44;
  }

LABEL_43:
  *(v4 + 28) = self->_idleDurBin7;
  *(v4 + 32) |= 0x2000000u;
  has = self->_has;
  if ((*&has & 0x4000000) == 0)
  {
LABEL_12:
    if ((*&has & 0x8000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_45;
  }

LABEL_44:
  *(v4 + 29) = self->_idleDurBin8;
  *(v4 + 32) |= 0x4000000u;
  has = self->_has;
  if ((*&has & 0x8000000) == 0)
  {
LABEL_13:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_46;
  }

LABEL_45:
  *(v4 + 30) = self->_idleDurBin9;
  *(v4 + 32) |= 0x8000000u;
  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_14:
    if ((*&has & 0x40000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_47;
  }

LABEL_46:
  *(v4 + 20) = self->_idleDurBin10;
  *(v4 + 32) |= 0x20000u;
  has = self->_has;
  if ((*&has & 0x40000) == 0)
  {
LABEL_15:
    if ((*&has & 0x80000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_48;
  }

LABEL_47:
  *(v4 + 21) = self->_idleDurBin11;
  *(v4 + 32) |= 0x40000u;
  has = self->_has;
  if ((*&has & 0x80000) == 0)
  {
LABEL_16:
    if ((*&has & 2) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_49;
  }

LABEL_48:
  *(v4 + 22) = self->_idleDurBin12;
  *(v4 + 32) |= 0x80000u;
  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_17:
    if ((*&has & 4) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_50;
  }

LABEL_49:
  *(v4 + 4) = self->_connDurBin0;
  *(v4 + 32) |= 2u;
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_18:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_51;
  }

LABEL_50:
  *(v4 + 5) = self->_connDurBin1;
  *(v4 + 32) |= 4u;
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_19:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_52;
  }

LABEL_51:
  *(v4 + 9) = self->_connDurBin2;
  *(v4 + 32) |= 0x40u;
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_20:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_53;
  }

LABEL_52:
  *(v4 + 10) = self->_connDurBin3;
  *(v4 + 32) |= 0x80u;
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_21:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_54;
  }

LABEL_53:
  *(v4 + 11) = self->_connDurBin4;
  *(v4 + 32) |= 0x100u;
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_22:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_55;
  }

LABEL_54:
  *(v4 + 12) = self->_connDurBin5;
  *(v4 + 32) |= 0x200u;
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_23:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_56;
  }

LABEL_55:
  *(v4 + 13) = self->_connDurBin6;
  *(v4 + 32) |= 0x400u;
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_24:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_57;
  }

LABEL_56:
  *(v4 + 14) = self->_connDurBin7;
  *(v4 + 32) |= 0x800u;
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_25:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_58;
  }

LABEL_57:
  *(v4 + 15) = self->_connDurBin8;
  *(v4 + 32) |= 0x1000u;
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_26:
    if ((*&has & 8) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_59;
  }

LABEL_58:
  *(v4 + 16) = self->_connDurBin9;
  *(v4 + 32) |= 0x2000u;
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_27:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_60;
  }

LABEL_59:
  *(v4 + 6) = self->_connDurBin10;
  *(v4 + 32) |= 8u;
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_28:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_61;
  }

LABEL_60:
  *(v4 + 7) = self->_connDurBin11;
  *(v4 + 32) |= 0x10u;
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_29:
    if ((*&has & 0x10000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

LABEL_61:
  *(v4 + 8) = self->_connDurBin12;
  *(v4 + 32) |= 0x20u;
  if ((*&self->_has & 0x10000000) != 0)
  {
LABEL_30:
    *(v4 + 31) = self->_subsId;
    *(v4 + 32) |= 0x10000000u;
  }

LABEL_31:
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  has = self->_has;
  if (*&has)
  {
    *(result + 1) = self->_timestamp;
    *(result + 32) |= 1u;
    has = self->_has;
    if ((*&has & 0x4000) == 0)
    {
LABEL_3:
      if ((*&has & 0x8000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_34;
    }
  }

  else if ((*&has & 0x4000) == 0)
  {
    goto LABEL_3;
  }

  *(result + 17) = self->_durationMs;
  *(result + 32) |= 0x4000u;
  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_4:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_35;
  }

LABEL_34:
  *(result + 18) = self->_idleDurBin0;
  *(result + 32) |= 0x8000u;
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_5:
    if ((*&has & 0x100000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_36;
  }

LABEL_35:
  *(result + 19) = self->_idleDurBin1;
  *(result + 32) |= 0x10000u;
  has = self->_has;
  if ((*&has & 0x100000) == 0)
  {
LABEL_6:
    if ((*&has & 0x200000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_37;
  }

LABEL_36:
  *(result + 23) = self->_idleDurBin2;
  *(result + 32) |= 0x100000u;
  has = self->_has;
  if ((*&has & 0x200000) == 0)
  {
LABEL_7:
    if ((*&has & 0x400000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_38;
  }

LABEL_37:
  *(result + 24) = self->_idleDurBin3;
  *(result + 32) |= 0x200000u;
  has = self->_has;
  if ((*&has & 0x400000) == 0)
  {
LABEL_8:
    if ((*&has & 0x800000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_39;
  }

LABEL_38:
  *(result + 25) = self->_idleDurBin4;
  *(result + 32) |= 0x400000u;
  has = self->_has;
  if ((*&has & 0x800000) == 0)
  {
LABEL_9:
    if ((*&has & 0x1000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_40;
  }

LABEL_39:
  *(result + 26) = self->_idleDurBin5;
  *(result + 32) |= 0x800000u;
  has = self->_has;
  if ((*&has & 0x1000000) == 0)
  {
LABEL_10:
    if ((*&has & 0x2000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_41;
  }

LABEL_40:
  *(result + 27) = self->_idleDurBin6;
  *(result + 32) |= 0x1000000u;
  has = self->_has;
  if ((*&has & 0x2000000) == 0)
  {
LABEL_11:
    if ((*&has & 0x4000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_42;
  }

LABEL_41:
  *(result + 28) = self->_idleDurBin7;
  *(result + 32) |= 0x2000000u;
  has = self->_has;
  if ((*&has & 0x4000000) == 0)
  {
LABEL_12:
    if ((*&has & 0x8000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_43;
  }

LABEL_42:
  *(result + 29) = self->_idleDurBin8;
  *(result + 32) |= 0x4000000u;
  has = self->_has;
  if ((*&has & 0x8000000) == 0)
  {
LABEL_13:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_44;
  }

LABEL_43:
  *(result + 30) = self->_idleDurBin9;
  *(result + 32) |= 0x8000000u;
  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_14:
    if ((*&has & 0x40000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_45;
  }

LABEL_44:
  *(result + 20) = self->_idleDurBin10;
  *(result + 32) |= 0x20000u;
  has = self->_has;
  if ((*&has & 0x40000) == 0)
  {
LABEL_15:
    if ((*&has & 0x80000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_46;
  }

LABEL_45:
  *(result + 21) = self->_idleDurBin11;
  *(result + 32) |= 0x40000u;
  has = self->_has;
  if ((*&has & 0x80000) == 0)
  {
LABEL_16:
    if ((*&has & 2) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_47;
  }

LABEL_46:
  *(result + 22) = self->_idleDurBin12;
  *(result + 32) |= 0x80000u;
  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_17:
    if ((*&has & 4) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_48;
  }

LABEL_47:
  *(result + 4) = self->_connDurBin0;
  *(result + 32) |= 2u;
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_18:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_49;
  }

LABEL_48:
  *(result + 5) = self->_connDurBin1;
  *(result + 32) |= 4u;
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_19:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_50;
  }

LABEL_49:
  *(result + 9) = self->_connDurBin2;
  *(result + 32) |= 0x40u;
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_20:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_51;
  }

LABEL_50:
  *(result + 10) = self->_connDurBin3;
  *(result + 32) |= 0x80u;
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_21:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_52;
  }

LABEL_51:
  *(result + 11) = self->_connDurBin4;
  *(result + 32) |= 0x100u;
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_22:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_53;
  }

LABEL_52:
  *(result + 12) = self->_connDurBin5;
  *(result + 32) |= 0x200u;
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_23:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_54;
  }

LABEL_53:
  *(result + 13) = self->_connDurBin6;
  *(result + 32) |= 0x400u;
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_24:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_55;
  }

LABEL_54:
  *(result + 14) = self->_connDurBin7;
  *(result + 32) |= 0x800u;
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_25:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_56;
  }

LABEL_55:
  *(result + 15) = self->_connDurBin8;
  *(result + 32) |= 0x1000u;
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_26:
    if ((*&has & 8) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_57;
  }

LABEL_56:
  *(result + 16) = self->_connDurBin9;
  *(result + 32) |= 0x2000u;
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_27:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_58;
  }

LABEL_57:
  *(result + 6) = self->_connDurBin10;
  *(result + 32) |= 8u;
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_28:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_59;
  }

LABEL_58:
  *(result + 7) = self->_connDurBin11;
  *(result + 32) |= 0x10u;
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_29:
    if ((*&has & 0x10000000) == 0)
    {
      return result;
    }

    goto LABEL_30;
  }

LABEL_59:
  *(result + 8) = self->_connDurBin12;
  *(result + 32) |= 0x20u;
  if ((*&self->_has & 0x10000000) == 0)
  {
    return result;
  }

LABEL_30:
  *(result + 31) = self->_subsId;
  *(result + 32) |= 0x10000000u;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_147;
  }

  has = self->_has;
  v6 = *(v4 + 32);
  if (*&has)
  {
    if ((v6 & 1) == 0 || self->_timestamp != *(v4 + 1))
    {
      goto LABEL_147;
    }
  }

  else if (v6)
  {
LABEL_147:
    v7 = 0;
    goto LABEL_148;
  }

  if ((*&has & 0x4000) != 0)
  {
    if ((v6 & 0x4000) == 0 || self->_durationMs != *(v4 + 17))
    {
      goto LABEL_147;
    }
  }

  else if ((v6 & 0x4000) != 0)
  {
    goto LABEL_147;
  }

  if ((*&has & 0x8000) != 0)
  {
    if ((v6 & 0x8000) == 0 || self->_idleDurBin0 != *(v4 + 18))
    {
      goto LABEL_147;
    }
  }

  else if ((v6 & 0x8000) != 0)
  {
    goto LABEL_147;
  }

  if ((*&has & 0x10000) != 0)
  {
    if ((v6 & 0x10000) == 0 || self->_idleDurBin1 != *(v4 + 19))
    {
      goto LABEL_147;
    }
  }

  else if ((v6 & 0x10000) != 0)
  {
    goto LABEL_147;
  }

  if ((*&has & 0x100000) != 0)
  {
    if ((v6 & 0x100000) == 0 || self->_idleDurBin2 != *(v4 + 23))
    {
      goto LABEL_147;
    }
  }

  else if ((v6 & 0x100000) != 0)
  {
    goto LABEL_147;
  }

  if ((*&has & 0x200000) != 0)
  {
    if ((v6 & 0x200000) == 0 || self->_idleDurBin3 != *(v4 + 24))
    {
      goto LABEL_147;
    }
  }

  else if ((v6 & 0x200000) != 0)
  {
    goto LABEL_147;
  }

  if ((*&has & 0x400000) != 0)
  {
    if ((v6 & 0x400000) == 0 || self->_idleDurBin4 != *(v4 + 25))
    {
      goto LABEL_147;
    }
  }

  else if ((v6 & 0x400000) != 0)
  {
    goto LABEL_147;
  }

  if ((*&has & 0x800000) != 0)
  {
    if ((v6 & 0x800000) == 0 || self->_idleDurBin5 != *(v4 + 26))
    {
      goto LABEL_147;
    }
  }

  else if ((v6 & 0x800000) != 0)
  {
    goto LABEL_147;
  }

  if ((*&has & 0x1000000) != 0)
  {
    if ((v6 & 0x1000000) == 0 || self->_idleDurBin6 != *(v4 + 27))
    {
      goto LABEL_147;
    }
  }

  else if ((v6 & 0x1000000) != 0)
  {
    goto LABEL_147;
  }

  if ((*&has & 0x2000000) != 0)
  {
    if ((v6 & 0x2000000) == 0 || self->_idleDurBin7 != *(v4 + 28))
    {
      goto LABEL_147;
    }
  }

  else if ((v6 & 0x2000000) != 0)
  {
    goto LABEL_147;
  }

  if ((*&has & 0x4000000) != 0)
  {
    if ((v6 & 0x4000000) == 0 || self->_idleDurBin8 != *(v4 + 29))
    {
      goto LABEL_147;
    }
  }

  else if ((v6 & 0x4000000) != 0)
  {
    goto LABEL_147;
  }

  if ((*&has & 0x8000000) != 0)
  {
    if ((v6 & 0x8000000) == 0 || self->_idleDurBin9 != *(v4 + 30))
    {
      goto LABEL_147;
    }
  }

  else if ((v6 & 0x8000000) != 0)
  {
    goto LABEL_147;
  }

  if ((*&has & 0x20000) != 0)
  {
    if ((v6 & 0x20000) == 0 || self->_idleDurBin10 != *(v4 + 20))
    {
      goto LABEL_147;
    }
  }

  else if ((v6 & 0x20000) != 0)
  {
    goto LABEL_147;
  }

  if ((*&has & 0x40000) != 0)
  {
    if ((v6 & 0x40000) == 0 || self->_idleDurBin11 != *(v4 + 21))
    {
      goto LABEL_147;
    }
  }

  else if ((v6 & 0x40000) != 0)
  {
    goto LABEL_147;
  }

  if ((*&has & 0x80000) != 0)
  {
    if ((v6 & 0x80000) == 0 || self->_idleDurBin12 != *(v4 + 22))
    {
      goto LABEL_147;
    }
  }

  else if ((v6 & 0x80000) != 0)
  {
    goto LABEL_147;
  }

  if ((*&has & 2) != 0)
  {
    if ((v6 & 2) == 0 || self->_connDurBin0 != *(v4 + 4))
    {
      goto LABEL_147;
    }
  }

  else if ((v6 & 2) != 0)
  {
    goto LABEL_147;
  }

  if ((*&has & 4) != 0)
  {
    if ((v6 & 4) == 0 || self->_connDurBin1 != *(v4 + 5))
    {
      goto LABEL_147;
    }
  }

  else if ((v6 & 4) != 0)
  {
    goto LABEL_147;
  }

  if ((*&has & 0x40) != 0)
  {
    if ((v6 & 0x40) == 0 || self->_connDurBin2 != *(v4 + 9))
    {
      goto LABEL_147;
    }
  }

  else if ((v6 & 0x40) != 0)
  {
    goto LABEL_147;
  }

  if ((*&has & 0x80) != 0)
  {
    if ((v6 & 0x80) == 0 || self->_connDurBin3 != *(v4 + 10))
    {
      goto LABEL_147;
    }
  }

  else if ((v6 & 0x80) != 0)
  {
    goto LABEL_147;
  }

  if ((*&has & 0x100) != 0)
  {
    if ((v6 & 0x100) == 0 || self->_connDurBin4 != *(v4 + 11))
    {
      goto LABEL_147;
    }
  }

  else if ((v6 & 0x100) != 0)
  {
    goto LABEL_147;
  }

  if ((*&has & 0x200) != 0)
  {
    if ((v6 & 0x200) == 0 || self->_connDurBin5 != *(v4 + 12))
    {
      goto LABEL_147;
    }
  }

  else if ((v6 & 0x200) != 0)
  {
    goto LABEL_147;
  }

  if ((*&has & 0x400) != 0)
  {
    if ((v6 & 0x400) == 0 || self->_connDurBin6 != *(v4 + 13))
    {
      goto LABEL_147;
    }
  }

  else if ((v6 & 0x400) != 0)
  {
    goto LABEL_147;
  }

  if ((*&has & 0x800) != 0)
  {
    if ((v6 & 0x800) == 0 || self->_connDurBin7 != *(v4 + 14))
    {
      goto LABEL_147;
    }
  }

  else if ((v6 & 0x800) != 0)
  {
    goto LABEL_147;
  }

  if ((*&has & 0x1000) != 0)
  {
    if ((v6 & 0x1000) == 0 || self->_connDurBin8 != *(v4 + 15))
    {
      goto LABEL_147;
    }
  }

  else if ((v6 & 0x1000) != 0)
  {
    goto LABEL_147;
  }

  if ((*&has & 0x2000) != 0)
  {
    if ((v6 & 0x2000) == 0 || self->_connDurBin9 != *(v4 + 16))
    {
      goto LABEL_147;
    }
  }

  else if ((v6 & 0x2000) != 0)
  {
    goto LABEL_147;
  }

  if ((*&has & 8) != 0)
  {
    if ((v6 & 8) == 0 || self->_connDurBin10 != *(v4 + 6))
    {
      goto LABEL_147;
    }
  }

  else if ((v6 & 8) != 0)
  {
    goto LABEL_147;
  }

  if ((*&has & 0x10) != 0)
  {
    if ((v6 & 0x10) == 0 || self->_connDurBin11 != *(v4 + 7))
    {
      goto LABEL_147;
    }
  }

  else if ((v6 & 0x10) != 0)
  {
    goto LABEL_147;
  }

  if ((*&has & 0x20) != 0)
  {
    if ((v6 & 0x20) == 0 || self->_connDurBin12 != *(v4 + 8))
    {
      goto LABEL_147;
    }
  }

  else if ((v6 & 0x20) != 0)
  {
    goto LABEL_147;
  }

  if ((*&has & 0x10000000) != 0)
  {
    if ((v6 & 0x10000000) == 0 || self->_subsId != *(v4 + 31))
    {
      goto LABEL_147;
    }

    v7 = 1;
  }

  else
  {
    v7 = (v6 & 0x10000000) == 0;
  }

LABEL_148:

  return v7;
}

- (unint64_t)hash
{
  has = self->_has;
  if (*&has)
  {
    v32 = 2654435761u * self->_timestamp;
    if ((*&has & 0x4000) != 0)
    {
LABEL_3:
      v31 = 2654435761 * self->_durationMs;
      if ((*&has & 0x8000) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_33;
    }
  }

  else
  {
    v32 = 0;
    if ((*&has & 0x4000) != 0)
    {
      goto LABEL_3;
    }
  }

  v31 = 0;
  if ((*&has & 0x8000) != 0)
  {
LABEL_4:
    v3 = 2654435761 * self->_idleDurBin0;
    if ((*&has & 0x10000) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_34;
  }

LABEL_33:
  v3 = 0;
  if ((*&has & 0x10000) != 0)
  {
LABEL_5:
    v4 = 2654435761 * self->_idleDurBin1;
    if ((*&has & 0x100000) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_35;
  }

LABEL_34:
  v4 = 0;
  if ((*&has & 0x100000) != 0)
  {
LABEL_6:
    v5 = 2654435761 * self->_idleDurBin2;
    if ((*&has & 0x200000) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_36;
  }

LABEL_35:
  v5 = 0;
  if ((*&has & 0x200000) != 0)
  {
LABEL_7:
    v6 = 2654435761 * self->_idleDurBin3;
    if ((*&has & 0x400000) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_37;
  }

LABEL_36:
  v6 = 0;
  if ((*&has & 0x400000) != 0)
  {
LABEL_8:
    v7 = 2654435761 * self->_idleDurBin4;
    if ((*&has & 0x800000) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_38;
  }

LABEL_37:
  v7 = 0;
  if ((*&has & 0x800000) != 0)
  {
LABEL_9:
    v8 = 2654435761 * self->_idleDurBin5;
    if ((*&has & 0x1000000) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_39;
  }

LABEL_38:
  v8 = 0;
  if ((*&has & 0x1000000) != 0)
  {
LABEL_10:
    v9 = 2654435761 * self->_idleDurBin6;
    if ((*&has & 0x2000000) != 0)
    {
      goto LABEL_11;
    }

    goto LABEL_40;
  }

LABEL_39:
  v9 = 0;
  if ((*&has & 0x2000000) != 0)
  {
LABEL_11:
    v10 = 2654435761 * self->_idleDurBin7;
    if ((*&has & 0x4000000) != 0)
    {
      goto LABEL_12;
    }

    goto LABEL_41;
  }

LABEL_40:
  v10 = 0;
  if ((*&has & 0x4000000) != 0)
  {
LABEL_12:
    v11 = 2654435761 * self->_idleDurBin8;
    if ((*&has & 0x8000000) != 0)
    {
      goto LABEL_13;
    }

    goto LABEL_42;
  }

LABEL_41:
  v11 = 0;
  if ((*&has & 0x8000000) != 0)
  {
LABEL_13:
    v12 = 2654435761 * self->_idleDurBin9;
    if ((*&has & 0x20000) != 0)
    {
      goto LABEL_14;
    }

    goto LABEL_43;
  }

LABEL_42:
  v12 = 0;
  if ((*&has & 0x20000) != 0)
  {
LABEL_14:
    v13 = 2654435761 * self->_idleDurBin10;
    if ((*&has & 0x40000) != 0)
    {
      goto LABEL_15;
    }

    goto LABEL_44;
  }

LABEL_43:
  v13 = 0;
  if ((*&has & 0x40000) != 0)
  {
LABEL_15:
    v14 = 2654435761 * self->_idleDurBin11;
    if ((*&has & 0x80000) != 0)
    {
      goto LABEL_16;
    }

    goto LABEL_45;
  }

LABEL_44:
  v14 = 0;
  if ((*&has & 0x80000) != 0)
  {
LABEL_16:
    v15 = 2654435761 * self->_idleDurBin12;
    if ((*&has & 2) != 0)
    {
      goto LABEL_17;
    }

    goto LABEL_46;
  }

LABEL_45:
  v15 = 0;
  if ((*&has & 2) != 0)
  {
LABEL_17:
    v16 = 2654435761 * self->_connDurBin0;
    if ((*&has & 4) != 0)
    {
      goto LABEL_18;
    }

    goto LABEL_47;
  }

LABEL_46:
  v16 = 0;
  if ((*&has & 4) != 0)
  {
LABEL_18:
    v17 = 2654435761 * self->_connDurBin1;
    if ((*&has & 0x40) != 0)
    {
      goto LABEL_19;
    }

    goto LABEL_48;
  }

LABEL_47:
  v17 = 0;
  if ((*&has & 0x40) != 0)
  {
LABEL_19:
    v18 = 2654435761 * self->_connDurBin2;
    if ((*&has & 0x80) != 0)
    {
      goto LABEL_20;
    }

    goto LABEL_49;
  }

LABEL_48:
  v18 = 0;
  if ((*&has & 0x80) != 0)
  {
LABEL_20:
    v19 = 2654435761 * self->_connDurBin3;
    if ((*&has & 0x100) != 0)
    {
      goto LABEL_21;
    }

    goto LABEL_50;
  }

LABEL_49:
  v19 = 0;
  if ((*&has & 0x100) != 0)
  {
LABEL_21:
    v20 = 2654435761 * self->_connDurBin4;
    if ((*&has & 0x200) != 0)
    {
      goto LABEL_22;
    }

    goto LABEL_51;
  }

LABEL_50:
  v20 = 0;
  if ((*&has & 0x200) != 0)
  {
LABEL_22:
    v21 = 2654435761 * self->_connDurBin5;
    if ((*&has & 0x400) != 0)
    {
      goto LABEL_23;
    }

    goto LABEL_52;
  }

LABEL_51:
  v21 = 0;
  if ((*&has & 0x400) != 0)
  {
LABEL_23:
    v22 = 2654435761 * self->_connDurBin6;
    if ((*&has & 0x800) != 0)
    {
      goto LABEL_24;
    }

    goto LABEL_53;
  }

LABEL_52:
  v22 = 0;
  if ((*&has & 0x800) != 0)
  {
LABEL_24:
    v23 = 2654435761 * self->_connDurBin7;
    if ((*&has & 0x1000) != 0)
    {
      goto LABEL_25;
    }

    goto LABEL_54;
  }

LABEL_53:
  v23 = 0;
  if ((*&has & 0x1000) != 0)
  {
LABEL_25:
    v24 = 2654435761 * self->_connDurBin8;
    if ((*&has & 0x2000) != 0)
    {
      goto LABEL_26;
    }

    goto LABEL_55;
  }

LABEL_54:
  v24 = 0;
  if ((*&has & 0x2000) != 0)
  {
LABEL_26:
    v25 = 2654435761 * self->_connDurBin9;
    if ((*&has & 8) != 0)
    {
      goto LABEL_27;
    }

    goto LABEL_56;
  }

LABEL_55:
  v25 = 0;
  if ((*&has & 8) != 0)
  {
LABEL_27:
    v26 = 2654435761 * self->_connDurBin10;
    if ((*&has & 0x10) != 0)
    {
      goto LABEL_28;
    }

    goto LABEL_57;
  }

LABEL_56:
  v26 = 0;
  if ((*&has & 0x10) != 0)
  {
LABEL_28:
    v27 = 2654435761 * self->_connDurBin11;
    if ((*&has & 0x20) != 0)
    {
      goto LABEL_29;
    }

LABEL_58:
    v28 = 0;
    if ((*&has & 0x10000000) != 0)
    {
      goto LABEL_30;
    }

LABEL_59:
    v29 = 0;
    return v31 ^ v32 ^ v3 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19 ^ v20 ^ v21 ^ v22 ^ v23 ^ v24 ^ v25 ^ v26 ^ v27 ^ v28 ^ v29;
  }

LABEL_57:
  v27 = 0;
  if ((*&has & 0x20) == 0)
  {
    goto LABEL_58;
  }

LABEL_29:
  v28 = 2654435761 * self->_connDurBin12;
  if ((*&has & 0x10000000) == 0)
  {
    goto LABEL_59;
  }

LABEL_30:
  v29 = 2654435761 * self->_subsId;
  return v31 ^ v32 ^ v3 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19 ^ v20 ^ v21 ^ v22 ^ v23 ^ v24 ^ v25 ^ v26 ^ v27 ^ v28 ^ v29;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 32);
  if (v5)
  {
    self->_timestamp = *(v4 + 1);
    *&self->_has |= 1u;
    v5 = *(v4 + 32);
    if ((v5 & 0x4000) == 0)
    {
LABEL_3:
      if ((v5 & 0x8000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_36;
    }
  }

  else if ((v5 & 0x4000) == 0)
  {
    goto LABEL_3;
  }

  self->_durationMs = *(v4 + 17);
  *&self->_has |= 0x4000u;
  v5 = *(v4 + 32);
  if ((v5 & 0x8000) == 0)
  {
LABEL_4:
    if ((v5 & 0x10000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_37;
  }

LABEL_36:
  self->_idleDurBin0 = *(v4 + 18);
  *&self->_has |= 0x8000u;
  v5 = *(v4 + 32);
  if ((v5 & 0x10000) == 0)
  {
LABEL_5:
    if ((v5 & 0x100000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_38;
  }

LABEL_37:
  self->_idleDurBin1 = *(v4 + 19);
  *&self->_has |= 0x10000u;
  v5 = *(v4 + 32);
  if ((v5 & 0x100000) == 0)
  {
LABEL_6:
    if ((v5 & 0x200000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_39;
  }

LABEL_38:
  self->_idleDurBin2 = *(v4 + 23);
  *&self->_has |= 0x100000u;
  v5 = *(v4 + 32);
  if ((v5 & 0x200000) == 0)
  {
LABEL_7:
    if ((v5 & 0x400000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_40;
  }

LABEL_39:
  self->_idleDurBin3 = *(v4 + 24);
  *&self->_has |= 0x200000u;
  v5 = *(v4 + 32);
  if ((v5 & 0x400000) == 0)
  {
LABEL_8:
    if ((v5 & 0x800000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_41;
  }

LABEL_40:
  self->_idleDurBin4 = *(v4 + 25);
  *&self->_has |= 0x400000u;
  v5 = *(v4 + 32);
  if ((v5 & 0x800000) == 0)
  {
LABEL_9:
    if ((v5 & 0x1000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_42;
  }

LABEL_41:
  self->_idleDurBin5 = *(v4 + 26);
  *&self->_has |= 0x800000u;
  v5 = *(v4 + 32);
  if ((v5 & 0x1000000) == 0)
  {
LABEL_10:
    if ((v5 & 0x2000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_43;
  }

LABEL_42:
  self->_idleDurBin6 = *(v4 + 27);
  *&self->_has |= 0x1000000u;
  v5 = *(v4 + 32);
  if ((v5 & 0x2000000) == 0)
  {
LABEL_11:
    if ((v5 & 0x4000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_44;
  }

LABEL_43:
  self->_idleDurBin7 = *(v4 + 28);
  *&self->_has |= 0x2000000u;
  v5 = *(v4 + 32);
  if ((v5 & 0x4000000) == 0)
  {
LABEL_12:
    if ((v5 & 0x8000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_45;
  }

LABEL_44:
  self->_idleDurBin8 = *(v4 + 29);
  *&self->_has |= 0x4000000u;
  v5 = *(v4 + 32);
  if ((v5 & 0x8000000) == 0)
  {
LABEL_13:
    if ((v5 & 0x20000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_46;
  }

LABEL_45:
  self->_idleDurBin9 = *(v4 + 30);
  *&self->_has |= 0x8000000u;
  v5 = *(v4 + 32);
  if ((v5 & 0x20000) == 0)
  {
LABEL_14:
    if ((v5 & 0x40000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_47;
  }

LABEL_46:
  self->_idleDurBin10 = *(v4 + 20);
  *&self->_has |= 0x20000u;
  v5 = *(v4 + 32);
  if ((v5 & 0x40000) == 0)
  {
LABEL_15:
    if ((v5 & 0x80000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_48;
  }

LABEL_47:
  self->_idleDurBin11 = *(v4 + 21);
  *&self->_has |= 0x40000u;
  v5 = *(v4 + 32);
  if ((v5 & 0x80000) == 0)
  {
LABEL_16:
    if ((v5 & 2) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_49;
  }

LABEL_48:
  self->_idleDurBin12 = *(v4 + 22);
  *&self->_has |= 0x80000u;
  v5 = *(v4 + 32);
  if ((v5 & 2) == 0)
  {
LABEL_17:
    if ((v5 & 4) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_50;
  }

LABEL_49:
  self->_connDurBin0 = *(v4 + 4);
  *&self->_has |= 2u;
  v5 = *(v4 + 32);
  if ((v5 & 4) == 0)
  {
LABEL_18:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_51;
  }

LABEL_50:
  self->_connDurBin1 = *(v4 + 5);
  *&self->_has |= 4u;
  v5 = *(v4 + 32);
  if ((v5 & 0x40) == 0)
  {
LABEL_19:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_52;
  }

LABEL_51:
  self->_connDurBin2 = *(v4 + 9);
  *&self->_has |= 0x40u;
  v5 = *(v4 + 32);
  if ((v5 & 0x80) == 0)
  {
LABEL_20:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_53;
  }

LABEL_52:
  self->_connDurBin3 = *(v4 + 10);
  *&self->_has |= 0x80u;
  v5 = *(v4 + 32);
  if ((v5 & 0x100) == 0)
  {
LABEL_21:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_54;
  }

LABEL_53:
  self->_connDurBin4 = *(v4 + 11);
  *&self->_has |= 0x100u;
  v5 = *(v4 + 32);
  if ((v5 & 0x200) == 0)
  {
LABEL_22:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_55;
  }

LABEL_54:
  self->_connDurBin5 = *(v4 + 12);
  *&self->_has |= 0x200u;
  v5 = *(v4 + 32);
  if ((v5 & 0x400) == 0)
  {
LABEL_23:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_56;
  }

LABEL_55:
  self->_connDurBin6 = *(v4 + 13);
  *&self->_has |= 0x400u;
  v5 = *(v4 + 32);
  if ((v5 & 0x800) == 0)
  {
LABEL_24:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_57;
  }

LABEL_56:
  self->_connDurBin7 = *(v4 + 14);
  *&self->_has |= 0x800u;
  v5 = *(v4 + 32);
  if ((v5 & 0x1000) == 0)
  {
LABEL_25:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_58;
  }

LABEL_57:
  self->_connDurBin8 = *(v4 + 15);
  *&self->_has |= 0x1000u;
  v5 = *(v4 + 32);
  if ((v5 & 0x2000) == 0)
  {
LABEL_26:
    if ((v5 & 8) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_59;
  }

LABEL_58:
  self->_connDurBin9 = *(v4 + 16);
  *&self->_has |= 0x2000u;
  v5 = *(v4 + 32);
  if ((v5 & 8) == 0)
  {
LABEL_27:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_60;
  }

LABEL_59:
  self->_connDurBin10 = *(v4 + 6);
  *&self->_has |= 8u;
  v5 = *(v4 + 32);
  if ((v5 & 0x10) == 0)
  {
LABEL_28:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_61;
  }

LABEL_60:
  self->_connDurBin11 = *(v4 + 7);
  *&self->_has |= 0x10u;
  v5 = *(v4 + 32);
  if ((v5 & 0x20) == 0)
  {
LABEL_29:
    if ((v5 & 0x10000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

LABEL_61:
  self->_connDurBin12 = *(v4 + 8);
  *&self->_has |= 0x20u;
  if ((*(v4 + 32) & 0x10000000) != 0)
  {
LABEL_30:
    self->_subsId = *(v4 + 31);
    *&self->_has |= 0x10000000u;
  }

LABEL_31:
}

@end