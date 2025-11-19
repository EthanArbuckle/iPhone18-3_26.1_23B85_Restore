@interface KCellularProtocolStackHist
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasDurBin0:(BOOL)a3;
- (void)setHasDurBin10:(BOOL)a3;
- (void)setHasDurBin11:(BOOL)a3;
- (void)setHasDurBin12:(BOOL)a3;
- (void)setHasDurBin13:(BOOL)a3;
- (void)setHasDurBin14:(BOOL)a3;
- (void)setHasDurBin15:(BOOL)a3;
- (void)setHasDurBin16:(BOOL)a3;
- (void)setHasDurBin17:(BOOL)a3;
- (void)setHasDurBin18:(BOOL)a3;
- (void)setHasDurBin19:(BOOL)a3;
- (void)setHasDurBin1:(BOOL)a3;
- (void)setHasDurBin20:(BOOL)a3;
- (void)setHasDurBin21:(BOOL)a3;
- (void)setHasDurBin22:(BOOL)a3;
- (void)setHasDurBin23:(BOOL)a3;
- (void)setHasDurBin24:(BOOL)a3;
- (void)setHasDurBin25:(BOOL)a3;
- (void)setHasDurBin26:(BOOL)a3;
- (void)setHasDurBin27:(BOOL)a3;
- (void)setHasDurBin28:(BOOL)a3;
- (void)setHasDurBin29:(BOOL)a3;
- (void)setHasDurBin2:(BOOL)a3;
- (void)setHasDurBin30:(BOOL)a3;
- (void)setHasDurBin31:(BOOL)a3;
- (void)setHasDurBin3:(BOOL)a3;
- (void)setHasDurBin4:(BOOL)a3;
- (void)setHasDurBin5:(BOOL)a3;
- (void)setHasDurBin6:(BOOL)a3;
- (void)setHasDurBin7:(BOOL)a3;
- (void)setHasDurBin8:(BOOL)a3;
- (void)setHasDurBin9:(BOOL)a3;
- (void)setHasDurationMs:(BOOL)a3;
- (void)setHasSubsId:(BOOL)a3;
- (void)setHasVersion:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation KCellularProtocolStackHist

- (void)setHasDurationMs:(BOOL)a3
{
  v3 = 0x200000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFDFFFFFFFFLL | v3);
}

- (void)setHasDurBin0:(BOOL)a3
{
  v3 = 2;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFFDLL | v3);
}

- (void)setHasDurBin1:(BOOL)a3
{
  v3 = 4;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFFBLL | v3);
}

- (void)setHasDurBin2:(BOOL)a3
{
  v3 = 0x2000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFDFFFLL | v3);
}

- (void)setHasDurBin3:(BOOL)a3
{
  v3 = 0x1000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFEFFFFFFLL | v3);
}

- (void)setHasDurBin4:(BOOL)a3
{
  v3 = 0x8000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFF7FFFFFFLL | v3);
}

- (void)setHasDurBin5:(BOOL)a3
{
  v3 = 0x10000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFEFFFFFFFLL | v3);
}

- (void)setHasDurBin6:(BOOL)a3
{
  v3 = 0x20000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFDFFFFFFFLL | v3);
}

- (void)setHasDurBin7:(BOOL)a3
{
  v3 = 0x40000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFBFFFFFFFLL | v3);
}

- (void)setHasDurBin8:(BOOL)a3
{
  v3 = 0x80000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFF7FFFFFFFLL | v3);
}

- (void)setHasDurBin9:(BOOL)a3
{
  v3 = 0x100000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFEFFFFFFFFLL | v3);
}

- (void)setHasDurBin10:(BOOL)a3
{
  v3 = 8;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFF7 | v3);
}

- (void)setHasDurBin11:(BOOL)a3
{
  v3 = 16;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFEFLL | v3);
}

- (void)setHasDurBin12:(BOOL)a3
{
  v3 = 32;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFDFLL | v3);
}

- (void)setHasDurBin13:(BOOL)a3
{
  v3 = 64;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFBFLL | v3);
}

- (void)setHasDurBin14:(BOOL)a3
{
  v3 = 128;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFF7FLL | v3);
}

- (void)setHasDurBin15:(BOOL)a3
{
  v3 = 256;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFEFFLL | v3);
}

- (void)setHasDurBin16:(BOOL)a3
{
  v3 = 512;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFDFFLL | v3);
}

- (void)setHasDurBin17:(BOOL)a3
{
  v3 = 1024;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFBFFLL | v3);
}

- (void)setHasDurBin18:(BOOL)a3
{
  v3 = 2048;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFF7FFLL | v3);
}

- (void)setHasDurBin19:(BOOL)a3
{
  v3 = 4096;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFEFFFLL | v3);
}

- (void)setHasDurBin20:(BOOL)a3
{
  v3 = 0x4000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFBFFFLL | v3);
}

- (void)setHasDurBin21:(BOOL)a3
{
  v3 = 0x8000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFF7FFFLL | v3);
}

- (void)setHasDurBin22:(BOOL)a3
{
  v3 = 0x10000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFEFFFFLL | v3);
}

- (void)setHasDurBin23:(BOOL)a3
{
  v3 = 0x20000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFDFFFFLL | v3);
}

- (void)setHasDurBin24:(BOOL)a3
{
  v3 = 0x40000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFBFFFFLL | v3);
}

- (void)setHasDurBin25:(BOOL)a3
{
  v3 = 0x80000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFF7FFFFLL | v3);
}

- (void)setHasDurBin26:(BOOL)a3
{
  v3 = 0x100000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFEFFFFFLL | v3);
}

- (void)setHasDurBin27:(BOOL)a3
{
  v3 = 0x200000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFDFFFFFLL | v3);
}

- (void)setHasDurBin28:(BOOL)a3
{
  v3 = 0x400000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFBFFFFFLL | v3);
}

- (void)setHasDurBin29:(BOOL)a3
{
  v3 = 0x800000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFF7FFFFFLL | v3);
}

- (void)setHasDurBin30:(BOOL)a3
{
  v3 = 0x2000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFDFFFFFFLL | v3);
}

- (void)setHasDurBin31:(BOOL)a3
{
  v3 = 0x4000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFBFFFFFFLL | v3);
}

- (void)setHasSubsId:(BOOL)a3
{
  v3 = 0x400000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFBFFFFFFFFLL | v3);
}

- (void)setHasVersion:(BOOL)a3
{
  v3 = 0x800000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFF7FFFFFFFFLL | v3);
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = KCellularProtocolStackHist;
  v4 = [(KCellularProtocolStackHist *)&v8 description];
  v5 = [(KCellularProtocolStackHist *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if (*&has)
  {
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_timestamp];
    [v3 setObject:v8 forKey:@"timestamp"];

    has = self->_has;
    if ((*&has & 0x200000000) == 0)
    {
LABEL_3:
      if ((*&has & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_41;
    }
  }

  else if ((*&has & 0x200000000) == 0)
  {
    goto LABEL_3;
  }

  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_durationMs];
  [v3 setObject:v9 forKey:@"duration_ms"];

  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_4:
    if ((*&has & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_42;
  }

LABEL_41:
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_durBin0];
  [v3 setObject:v10 forKey:@"dur_bin_0"];

  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_5:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_43;
  }

LABEL_42:
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_durBin1];
  [v3 setObject:v11 forKey:@"dur_bin_1"];

  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_6:
    if ((*&has & 0x1000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_44;
  }

LABEL_43:
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_durBin2];
  [v3 setObject:v12 forKey:@"dur_bin_2"];

  has = self->_has;
  if ((*&has & 0x1000000) == 0)
  {
LABEL_7:
    if ((*&has & 0x8000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_45;
  }

LABEL_44:
  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_durBin3];
  [v3 setObject:v13 forKey:@"dur_bin_3"];

  has = self->_has;
  if ((*&has & 0x8000000) == 0)
  {
LABEL_8:
    if ((*&has & 0x10000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_46;
  }

LABEL_45:
  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_durBin4];
  [v3 setObject:v14 forKey:@"dur_bin_4"];

  has = self->_has;
  if ((*&has & 0x10000000) == 0)
  {
LABEL_9:
    if ((*&has & 0x20000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_47;
  }

LABEL_46:
  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_durBin5];
  [v3 setObject:v15 forKey:@"dur_bin_5"];

  has = self->_has;
  if ((*&has & 0x20000000) == 0)
  {
LABEL_10:
    if ((*&has & 0x40000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_48;
  }

LABEL_47:
  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_durBin6];
  [v3 setObject:v16 forKey:@"dur_bin_6"];

  has = self->_has;
  if ((*&has & 0x40000000) == 0)
  {
LABEL_11:
    if ((*&has & 0x80000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_49;
  }

LABEL_48:
  v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_durBin7];
  [v3 setObject:v17 forKey:@"dur_bin_7"];

  has = self->_has;
  if ((*&has & 0x80000000) == 0)
  {
LABEL_12:
    if ((*&has & 0x100000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_50;
  }

LABEL_49:
  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_durBin8];
  [v3 setObject:v18 forKey:@"dur_bin_8"];

  has = self->_has;
  if ((*&has & 0x100000000) == 0)
  {
LABEL_13:
    if ((*&has & 8) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_51;
  }

LABEL_50:
  v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_durBin9];
  [v3 setObject:v19 forKey:@"dur_bin_9"];

  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_14:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_52;
  }

LABEL_51:
  v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_durBin10];
  [v3 setObject:v20 forKey:@"dur_bin_10"];

  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_15:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_53;
  }

LABEL_52:
  v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_durBin11];
  [v3 setObject:v21 forKey:@"dur_bin_11"];

  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_16:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_54;
  }

LABEL_53:
  v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_durBin12];
  [v3 setObject:v22 forKey:@"dur_bin_12"];

  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_17:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_55;
  }

LABEL_54:
  v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_durBin13];
  [v3 setObject:v23 forKey:@"dur_bin_13"];

  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_18:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_56;
  }

LABEL_55:
  v24 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_durBin14];
  [v3 setObject:v24 forKey:@"dur_bin_14"];

  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_19:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_57;
  }

LABEL_56:
  v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_durBin15];
  [v3 setObject:v25 forKey:@"dur_bin_15"];

  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_20:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_58;
  }

LABEL_57:
  v26 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_durBin16];
  [v3 setObject:v26 forKey:@"dur_bin_16"];

  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_21:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_59;
  }

LABEL_58:
  v27 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_durBin17];
  [v3 setObject:v27 forKey:@"dur_bin_17"];

  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_22:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_60;
  }

LABEL_59:
  v28 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_durBin18];
  [v3 setObject:v28 forKey:@"dur_bin_18"];

  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_23:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_61;
  }

LABEL_60:
  v29 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_durBin19];
  [v3 setObject:v29 forKey:@"dur_bin_19"];

  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_24:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_62;
  }

LABEL_61:
  v30 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_durBin20];
  [v3 setObject:v30 forKey:@"dur_bin_20"];

  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_25:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_63;
  }

LABEL_62:
  v31 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_durBin21];
  [v3 setObject:v31 forKey:@"dur_bin_21"];

  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_26:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_64;
  }

LABEL_63:
  v32 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_durBin22];
  [v3 setObject:v32 forKey:@"dur_bin_22"];

  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_27:
    if ((*&has & 0x40000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_65;
  }

LABEL_64:
  v33 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_durBin23];
  [v3 setObject:v33 forKey:@"dur_bin_23"];

  has = self->_has;
  if ((*&has & 0x40000) == 0)
  {
LABEL_28:
    if ((*&has & 0x80000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_66;
  }

LABEL_65:
  v34 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_durBin24];
  [v3 setObject:v34 forKey:@"dur_bin_24"];

  has = self->_has;
  if ((*&has & 0x80000) == 0)
  {
LABEL_29:
    if ((*&has & 0x100000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_67;
  }

LABEL_66:
  v35 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_durBin25];
  [v3 setObject:v35 forKey:@"dur_bin_25"];

  has = self->_has;
  if ((*&has & 0x100000) == 0)
  {
LABEL_30:
    if ((*&has & 0x200000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_68;
  }

LABEL_67:
  v36 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_durBin26];
  [v3 setObject:v36 forKey:@"dur_bin_26"];

  has = self->_has;
  if ((*&has & 0x200000) == 0)
  {
LABEL_31:
    if ((*&has & 0x400000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_69;
  }

LABEL_68:
  v37 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_durBin27];
  [v3 setObject:v37 forKey:@"dur_bin_27"];

  has = self->_has;
  if ((*&has & 0x400000) == 0)
  {
LABEL_32:
    if ((*&has & 0x800000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_70;
  }

LABEL_69:
  v38 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_durBin28];
  [v3 setObject:v38 forKey:@"dur_bin_28"];

  has = self->_has;
  if ((*&has & 0x800000) == 0)
  {
LABEL_33:
    if ((*&has & 0x2000000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_71;
  }

LABEL_70:
  v39 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_durBin29];
  [v3 setObject:v39 forKey:@"dur_bin_29"];

  has = self->_has;
  if ((*&has & 0x2000000) == 0)
  {
LABEL_34:
    if ((*&has & 0x4000000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_72;
  }

LABEL_71:
  v40 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_durBin30];
  [v3 setObject:v40 forKey:@"dur_bin_30"];

  has = self->_has;
  if ((*&has & 0x4000000) == 0)
  {
LABEL_35:
    if ((*&has & 0x400000000) == 0)
    {
      goto LABEL_36;
    }

LABEL_73:
    v42 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_subsId];
    [v3 setObject:v42 forKey:@"subs_id"];

    if ((*&self->_has & 0x800000000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_37;
  }

LABEL_72:
  v41 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_durBin31];
  [v3 setObject:v41 forKey:@"dur_bin_31"];

  has = self->_has;
  if ((*&has & 0x400000000) != 0)
  {
    goto LABEL_73;
  }

LABEL_36:
  if ((*&has & 0x800000000) != 0)
  {
LABEL_37:
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_version];
    [v3 setObject:v5 forKey:@"version"];
  }

LABEL_38:
  v6 = v3;

  return v3;
}

- (void)writeTo:(id)a3
{
  v41 = a3;
  has = self->_has;
  if (*&has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    has = self->_has;
    if ((*&has & 0x200000000) == 0)
    {
LABEL_3:
      if ((*&has & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_43;
    }
  }

  else if ((*&has & 0x200000000) == 0)
  {
    goto LABEL_3;
  }

  durationMs = self->_durationMs;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_4:
    if ((*&has & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_44;
  }

LABEL_43:
  durBin0 = self->_durBin0;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_5:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_45;
  }

LABEL_44:
  durBin1 = self->_durBin1;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_6:
    if ((*&has & 0x1000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_46;
  }

LABEL_45:
  durBin2 = self->_durBin2;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x1000000) == 0)
  {
LABEL_7:
    if ((*&has & 0x8000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_47;
  }

LABEL_46:
  durBin3 = self->_durBin3;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x8000000) == 0)
  {
LABEL_8:
    if ((*&has & 0x10000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_48;
  }

LABEL_47:
  durBin4 = self->_durBin4;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x10000000) == 0)
  {
LABEL_9:
    if ((*&has & 0x20000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_49;
  }

LABEL_48:
  durBin5 = self->_durBin5;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x20000000) == 0)
  {
LABEL_10:
    if ((*&has & 0x40000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_50;
  }

LABEL_49:
  durBin6 = self->_durBin6;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x40000000) == 0)
  {
LABEL_11:
    if ((*&has & 0x80000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_51;
  }

LABEL_50:
  durBin7 = self->_durBin7;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x80000000) == 0)
  {
LABEL_12:
    if ((*&has & 0x100000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_52;
  }

LABEL_51:
  durBin8 = self->_durBin8;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x100000000) == 0)
  {
LABEL_13:
    if ((*&has & 8) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_53;
  }

LABEL_52:
  durBin9 = self->_durBin9;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_14:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_54;
  }

LABEL_53:
  durBin10 = self->_durBin10;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_15:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_55;
  }

LABEL_54:
  durBin11 = self->_durBin11;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_16:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_56;
  }

LABEL_55:
  durBin12 = self->_durBin12;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_17:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_57;
  }

LABEL_56:
  durBin13 = self->_durBin13;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_18:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_58;
  }

LABEL_57:
  durBin14 = self->_durBin14;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_19:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_59;
  }

LABEL_58:
  durBin15 = self->_durBin15;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_20:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_60;
  }

LABEL_59:
  durBin16 = self->_durBin16;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_21:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_61;
  }

LABEL_60:
  durBin17 = self->_durBin17;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_22:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_62;
  }

LABEL_61:
  durBin18 = self->_durBin18;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_23:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_63;
  }

LABEL_62:
  durBin19 = self->_durBin19;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_24:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_64;
  }

LABEL_63:
  durBin20 = self->_durBin20;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_25:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_65;
  }

LABEL_64:
  durBin21 = self->_durBin21;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_26:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_66;
  }

LABEL_65:
  durBin22 = self->_durBin22;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_27:
    if ((*&has & 0x40000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_67;
  }

LABEL_66:
  durBin23 = self->_durBin23;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x40000) == 0)
  {
LABEL_28:
    if ((*&has & 0x80000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_68;
  }

LABEL_67:
  durBin24 = self->_durBin24;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x80000) == 0)
  {
LABEL_29:
    if ((*&has & 0x100000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_69;
  }

LABEL_68:
  durBin25 = self->_durBin25;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x100000) == 0)
  {
LABEL_30:
    if ((*&has & 0x200000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_70;
  }

LABEL_69:
  durBin26 = self->_durBin26;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x200000) == 0)
  {
LABEL_31:
    if ((*&has & 0x400000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_71;
  }

LABEL_70:
  durBin27 = self->_durBin27;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x400000) == 0)
  {
LABEL_32:
    if ((*&has & 0x800000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_72;
  }

LABEL_71:
  durBin28 = self->_durBin28;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x800000) == 0)
  {
LABEL_33:
    if ((*&has & 0x2000000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_73;
  }

LABEL_72:
  durBin29 = self->_durBin29;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x2000000) == 0)
  {
LABEL_34:
    if ((*&has & 0x4000000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_74;
  }

LABEL_73:
  durBin30 = self->_durBin30;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x4000000) == 0)
  {
LABEL_35:
    if ((*&has & 0x400000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_75;
  }

LABEL_74:
  durBin31 = self->_durBin31;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x400000000) == 0)
  {
LABEL_36:
    if ((*&has & 0x800000000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_37;
  }

LABEL_75:
  subsId = self->_subsId;
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 0x800000000) != 0)
  {
LABEL_37:
    version = self->_version;
    PBDataWriterWriteUint32Field();
  }

LABEL_38:
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if (*&has)
  {
    v4[1] = self->_timestamp;
    *(v4 + 156) |= 1uLL;
    has = self->_has;
    if ((*&has & 0x200000000) == 0)
    {
LABEL_3:
      if ((*&has & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_43;
    }
  }

  else if ((*&has & 0x200000000) == 0)
  {
    goto LABEL_3;
  }

  *(v4 + 36) = self->_durationMs;
  *(v4 + 156) |= 0x200000000uLL;
  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_4:
    if ((*&has & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_44;
  }

LABEL_43:
  *(v4 + 4) = self->_durBin0;
  *(v4 + 156) |= 2uLL;
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_5:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_45;
  }

LABEL_44:
  *(v4 + 5) = self->_durBin1;
  *(v4 + 156) |= 4uLL;
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_6:
    if ((*&has & 0x1000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_46;
  }

LABEL_45:
  *(v4 + 16) = self->_durBin2;
  *(v4 + 156) |= 0x2000uLL;
  has = self->_has;
  if ((*&has & 0x1000000) == 0)
  {
LABEL_7:
    if ((*&has & 0x8000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_47;
  }

LABEL_46:
  *(v4 + 27) = self->_durBin3;
  *(v4 + 156) |= 0x1000000uLL;
  has = self->_has;
  if ((*&has & 0x8000000) == 0)
  {
LABEL_8:
    if ((*&has & 0x10000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_48;
  }

LABEL_47:
  *(v4 + 30) = self->_durBin4;
  *(v4 + 156) |= 0x8000000uLL;
  has = self->_has;
  if ((*&has & 0x10000000) == 0)
  {
LABEL_9:
    if ((*&has & 0x20000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_49;
  }

LABEL_48:
  *(v4 + 31) = self->_durBin5;
  *(v4 + 156) |= 0x10000000uLL;
  has = self->_has;
  if ((*&has & 0x20000000) == 0)
  {
LABEL_10:
    if ((*&has & 0x40000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_50;
  }

LABEL_49:
  *(v4 + 32) = self->_durBin6;
  *(v4 + 156) |= 0x20000000uLL;
  has = self->_has;
  if ((*&has & 0x40000000) == 0)
  {
LABEL_11:
    if ((*&has & 0x80000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_51;
  }

LABEL_50:
  *(v4 + 33) = self->_durBin7;
  *(v4 + 156) |= 0x40000000uLL;
  has = self->_has;
  if ((*&has & 0x80000000) == 0)
  {
LABEL_12:
    if ((*&has & 0x100000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_52;
  }

LABEL_51:
  *(v4 + 34) = self->_durBin8;
  *(v4 + 156) |= 0x80000000uLL;
  has = self->_has;
  if ((*&has & 0x100000000) == 0)
  {
LABEL_13:
    if ((*&has & 8) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_53;
  }

LABEL_52:
  *(v4 + 35) = self->_durBin9;
  *(v4 + 156) |= 0x100000000uLL;
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_14:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_54;
  }

LABEL_53:
  *(v4 + 6) = self->_durBin10;
  *(v4 + 156) |= 8uLL;
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_15:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_55;
  }

LABEL_54:
  *(v4 + 7) = self->_durBin11;
  *(v4 + 156) |= 0x10uLL;
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_16:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_56;
  }

LABEL_55:
  *(v4 + 8) = self->_durBin12;
  *(v4 + 156) |= 0x20uLL;
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_17:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_57;
  }

LABEL_56:
  *(v4 + 9) = self->_durBin13;
  *(v4 + 156) |= 0x40uLL;
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_18:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_58;
  }

LABEL_57:
  *(v4 + 10) = self->_durBin14;
  *(v4 + 156) |= 0x80uLL;
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_19:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_59;
  }

LABEL_58:
  *(v4 + 11) = self->_durBin15;
  *(v4 + 156) |= 0x100uLL;
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_20:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_60;
  }

LABEL_59:
  *(v4 + 12) = self->_durBin16;
  *(v4 + 156) |= 0x200uLL;
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_21:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_61;
  }

LABEL_60:
  *(v4 + 13) = self->_durBin17;
  *(v4 + 156) |= 0x400uLL;
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_22:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_62;
  }

LABEL_61:
  *(v4 + 14) = self->_durBin18;
  *(v4 + 156) |= 0x800uLL;
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_23:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_63;
  }

LABEL_62:
  *(v4 + 15) = self->_durBin19;
  *(v4 + 156) |= 0x1000uLL;
  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_24:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_64;
  }

LABEL_63:
  *(v4 + 17) = self->_durBin20;
  *(v4 + 156) |= 0x4000uLL;
  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_25:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_65;
  }

LABEL_64:
  *(v4 + 18) = self->_durBin21;
  *(v4 + 156) |= 0x8000uLL;
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_26:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_66;
  }

LABEL_65:
  *(v4 + 19) = self->_durBin22;
  *(v4 + 156) |= 0x10000uLL;
  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_27:
    if ((*&has & 0x40000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_67;
  }

LABEL_66:
  *(v4 + 20) = self->_durBin23;
  *(v4 + 156) |= 0x20000uLL;
  has = self->_has;
  if ((*&has & 0x40000) == 0)
  {
LABEL_28:
    if ((*&has & 0x80000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_68;
  }

LABEL_67:
  *(v4 + 21) = self->_durBin24;
  *(v4 + 156) |= 0x40000uLL;
  has = self->_has;
  if ((*&has & 0x80000) == 0)
  {
LABEL_29:
    if ((*&has & 0x100000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_69;
  }

LABEL_68:
  *(v4 + 22) = self->_durBin25;
  *(v4 + 156) |= 0x80000uLL;
  has = self->_has;
  if ((*&has & 0x100000) == 0)
  {
LABEL_30:
    if ((*&has & 0x200000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_70;
  }

LABEL_69:
  *(v4 + 23) = self->_durBin26;
  *(v4 + 156) |= 0x100000uLL;
  has = self->_has;
  if ((*&has & 0x200000) == 0)
  {
LABEL_31:
    if ((*&has & 0x400000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_71;
  }

LABEL_70:
  *(v4 + 24) = self->_durBin27;
  *(v4 + 156) |= 0x200000uLL;
  has = self->_has;
  if ((*&has & 0x400000) == 0)
  {
LABEL_32:
    if ((*&has & 0x800000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_72;
  }

LABEL_71:
  *(v4 + 25) = self->_durBin28;
  *(v4 + 156) |= 0x400000uLL;
  has = self->_has;
  if ((*&has & 0x800000) == 0)
  {
LABEL_33:
    if ((*&has & 0x2000000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_73;
  }

LABEL_72:
  *(v4 + 26) = self->_durBin29;
  *(v4 + 156) |= 0x800000uLL;
  has = self->_has;
  if ((*&has & 0x2000000) == 0)
  {
LABEL_34:
    if ((*&has & 0x4000000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_74;
  }

LABEL_73:
  *(v4 + 28) = self->_durBin30;
  *(v4 + 156) |= 0x2000000uLL;
  has = self->_has;
  if ((*&has & 0x4000000) == 0)
  {
LABEL_35:
    if ((*&has & 0x400000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_75;
  }

LABEL_74:
  *(v4 + 29) = self->_durBin31;
  *(v4 + 156) |= 0x4000000uLL;
  has = self->_has;
  if ((*&has & 0x400000000) == 0)
  {
LABEL_36:
    if ((*&has & 0x800000000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_37;
  }

LABEL_75:
  *(v4 + 37) = self->_subsId;
  *(v4 + 156) |= 0x400000000uLL;
  if ((*&self->_has & 0x800000000) != 0)
  {
LABEL_37:
    *(v4 + 38) = self->_version;
    *(v4 + 156) |= 0x800000000uLL;
  }

LABEL_38:
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  has = self->_has;
  if (*&has)
  {
    *(v4 + 8) = self->_timestamp;
    *(v4 + 156) |= 1uLL;
    has = self->_has;
    if ((*&has & 0x200000000) == 0)
    {
LABEL_3:
      if ((*&has & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_41;
    }
  }

  else if ((*&has & 0x200000000) == 0)
  {
    goto LABEL_3;
  }

  *(v4 + 144) = self->_durationMs;
  *(v4 + 156) |= 0x200000000uLL;
  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_4:
    if ((*&has & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_42;
  }

LABEL_41:
  *(v4 + 16) = self->_durBin0;
  *(v4 + 156) |= 2uLL;
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_5:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_43;
  }

LABEL_42:
  *(v4 + 20) = self->_durBin1;
  *(v4 + 156) |= 4uLL;
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_6:
    if ((*&has & 0x1000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_44;
  }

LABEL_43:
  *(v4 + 64) = self->_durBin2;
  *(v4 + 156) |= 0x2000uLL;
  has = self->_has;
  if ((*&has & 0x1000000) == 0)
  {
LABEL_7:
    if ((*&has & 0x8000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_45;
  }

LABEL_44:
  *(v4 + 108) = self->_durBin3;
  *(v4 + 156) |= 0x1000000uLL;
  has = self->_has;
  if ((*&has & 0x8000000) == 0)
  {
LABEL_8:
    if ((*&has & 0x10000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_46;
  }

LABEL_45:
  *(v4 + 120) = self->_durBin4;
  *(v4 + 156) |= 0x8000000uLL;
  has = self->_has;
  if ((*&has & 0x10000000) == 0)
  {
LABEL_9:
    if ((*&has & 0x20000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_47;
  }

LABEL_46:
  *(v4 + 124) = self->_durBin5;
  *(v4 + 156) |= 0x10000000uLL;
  has = self->_has;
  if ((*&has & 0x20000000) == 0)
  {
LABEL_10:
    if ((*&has & 0x40000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_48;
  }

LABEL_47:
  *(v4 + 128) = self->_durBin6;
  *(v4 + 156) |= 0x20000000uLL;
  has = self->_has;
  if ((*&has & 0x40000000) == 0)
  {
LABEL_11:
    if ((*&has & 0x80000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_49;
  }

LABEL_48:
  *(v4 + 132) = self->_durBin7;
  *(v4 + 156) |= 0x40000000uLL;
  has = self->_has;
  if ((*&has & 0x80000000) == 0)
  {
LABEL_12:
    if ((*&has & 0x100000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_50;
  }

LABEL_49:
  *(v4 + 136) = self->_durBin8;
  *(v4 + 156) |= 0x80000000uLL;
  has = self->_has;
  if ((*&has & 0x100000000) == 0)
  {
LABEL_13:
    if ((*&has & 8) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_51;
  }

LABEL_50:
  *(v4 + 140) = self->_durBin9;
  *(v4 + 156) |= 0x100000000uLL;
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_14:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_52;
  }

LABEL_51:
  *(v4 + 24) = self->_durBin10;
  *(v4 + 156) |= 8uLL;
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_15:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_53;
  }

LABEL_52:
  *(v4 + 28) = self->_durBin11;
  *(v4 + 156) |= 0x10uLL;
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_16:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_54;
  }

LABEL_53:
  *(v4 + 32) = self->_durBin12;
  *(v4 + 156) |= 0x20uLL;
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_17:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_55;
  }

LABEL_54:
  *(v4 + 36) = self->_durBin13;
  *(v4 + 156) |= 0x40uLL;
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_18:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_56;
  }

LABEL_55:
  *(v4 + 40) = self->_durBin14;
  *(v4 + 156) |= 0x80uLL;
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_19:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_57;
  }

LABEL_56:
  *(v4 + 44) = self->_durBin15;
  *(v4 + 156) |= 0x100uLL;
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_20:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_58;
  }

LABEL_57:
  *(v4 + 48) = self->_durBin16;
  *(v4 + 156) |= 0x200uLL;
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_21:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_59;
  }

LABEL_58:
  *(v4 + 52) = self->_durBin17;
  *(v4 + 156) |= 0x400uLL;
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_22:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_60;
  }

LABEL_59:
  *(v4 + 56) = self->_durBin18;
  *(v4 + 156) |= 0x800uLL;
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_23:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_61;
  }

LABEL_60:
  *(v4 + 60) = self->_durBin19;
  *(v4 + 156) |= 0x1000uLL;
  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_24:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_62;
  }

LABEL_61:
  *(v4 + 68) = self->_durBin20;
  *(v4 + 156) |= 0x4000uLL;
  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_25:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_63;
  }

LABEL_62:
  *(v4 + 72) = self->_durBin21;
  *(v4 + 156) |= 0x8000uLL;
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_26:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_64;
  }

LABEL_63:
  *(v4 + 76) = self->_durBin22;
  *(v4 + 156) |= 0x10000uLL;
  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_27:
    if ((*&has & 0x40000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_65;
  }

LABEL_64:
  *(v4 + 80) = self->_durBin23;
  *(v4 + 156) |= 0x20000uLL;
  has = self->_has;
  if ((*&has & 0x40000) == 0)
  {
LABEL_28:
    if ((*&has & 0x80000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_66;
  }

LABEL_65:
  *(v4 + 84) = self->_durBin24;
  *(v4 + 156) |= 0x40000uLL;
  has = self->_has;
  if ((*&has & 0x80000) == 0)
  {
LABEL_29:
    if ((*&has & 0x100000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_67;
  }

LABEL_66:
  *(v4 + 88) = self->_durBin25;
  *(v4 + 156) |= 0x80000uLL;
  has = self->_has;
  if ((*&has & 0x100000) == 0)
  {
LABEL_30:
    if ((*&has & 0x200000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_68;
  }

LABEL_67:
  *(v4 + 92) = self->_durBin26;
  *(v4 + 156) |= 0x100000uLL;
  has = self->_has;
  if ((*&has & 0x200000) == 0)
  {
LABEL_31:
    if ((*&has & 0x400000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_69;
  }

LABEL_68:
  *(v4 + 96) = self->_durBin27;
  *(v4 + 156) |= 0x200000uLL;
  has = self->_has;
  if ((*&has & 0x400000) == 0)
  {
LABEL_32:
    if ((*&has & 0x800000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_70;
  }

LABEL_69:
  *(v4 + 100) = self->_durBin28;
  *(v4 + 156) |= 0x400000uLL;
  has = self->_has;
  if ((*&has & 0x800000) == 0)
  {
LABEL_33:
    if ((*&has & 0x2000000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_71;
  }

LABEL_70:
  *(v4 + 104) = self->_durBin29;
  *(v4 + 156) |= 0x800000uLL;
  has = self->_has;
  if ((*&has & 0x2000000) == 0)
  {
LABEL_34:
    if ((*&has & 0x4000000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_72;
  }

LABEL_71:
  *(v4 + 112) = self->_durBin30;
  *(v4 + 156) |= 0x2000000uLL;
  has = self->_has;
  if ((*&has & 0x4000000) == 0)
  {
LABEL_35:
    if ((*&has & 0x400000000) == 0)
    {
      goto LABEL_36;
    }

LABEL_73:
    *(v4 + 148) = self->_subsId;
    *(v4 + 156) |= 0x400000000uLL;
    if ((*&self->_has & 0x800000000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_37;
  }

LABEL_72:
  *(v4 + 116) = self->_durBin31;
  *(v4 + 156) |= 0x4000000uLL;
  has = self->_has;
  if ((*&has & 0x400000000) != 0)
  {
    goto LABEL_73;
  }

LABEL_36:
  if ((*&has & 0x800000000) != 0)
  {
LABEL_37:
    *(v4 + 152) = self->_version;
    *(v4 + 156) |= 0x800000000uLL;
  }

LABEL_38:
  v6 = v4;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_182;
  }

  has = self->_has;
  v6 = *(v4 + 156);
  if (*&has)
  {
    if ((v6 & 1) == 0 || self->_timestamp != *(v4 + 1))
    {
      goto LABEL_182;
    }
  }

  else if (v6)
  {
LABEL_182:
    v7 = 0;
    goto LABEL_183;
  }

  if ((*&has & 0x200000000) != 0)
  {
    if ((v6 & 0x200000000) == 0 || self->_durationMs != *(v4 + 36))
    {
      goto LABEL_182;
    }
  }

  else if ((v6 & 0x200000000) != 0)
  {
    goto LABEL_182;
  }

  if ((*&has & 2) != 0)
  {
    if ((v6 & 2) == 0 || self->_durBin0 != *(v4 + 4))
    {
      goto LABEL_182;
    }
  }

  else if ((v6 & 2) != 0)
  {
    goto LABEL_182;
  }

  if ((*&has & 4) != 0)
  {
    if ((v6 & 4) == 0 || self->_durBin1 != *(v4 + 5))
    {
      goto LABEL_182;
    }
  }

  else if ((v6 & 4) != 0)
  {
    goto LABEL_182;
  }

  if ((*&has & 0x2000) != 0)
  {
    if ((v6 & 0x2000) == 0 || self->_durBin2 != *(v4 + 16))
    {
      goto LABEL_182;
    }
  }

  else if ((v6 & 0x2000) != 0)
  {
    goto LABEL_182;
  }

  if ((*&has & 0x1000000) != 0)
  {
    if ((v6 & 0x1000000) == 0 || self->_durBin3 != *(v4 + 27))
    {
      goto LABEL_182;
    }
  }

  else if ((v6 & 0x1000000) != 0)
  {
    goto LABEL_182;
  }

  if ((*&has & 0x8000000) != 0)
  {
    if ((v6 & 0x8000000) == 0 || self->_durBin4 != *(v4 + 30))
    {
      goto LABEL_182;
    }
  }

  else if ((v6 & 0x8000000) != 0)
  {
    goto LABEL_182;
  }

  if ((*&has & 0x10000000) != 0)
  {
    if ((v6 & 0x10000000) == 0 || self->_durBin5 != *(v4 + 31))
    {
      goto LABEL_182;
    }
  }

  else if ((v6 & 0x10000000) != 0)
  {
    goto LABEL_182;
  }

  if ((*&has & 0x20000000) != 0)
  {
    if ((v6 & 0x20000000) == 0 || self->_durBin6 != *(v4 + 32))
    {
      goto LABEL_182;
    }
  }

  else if ((v6 & 0x20000000) != 0)
  {
    goto LABEL_182;
  }

  if ((*&has & 0x40000000) != 0)
  {
    if ((v6 & 0x40000000) == 0 || self->_durBin7 != *(v4 + 33))
    {
      goto LABEL_182;
    }
  }

  else if ((v6 & 0x40000000) != 0)
  {
    goto LABEL_182;
  }

  if ((*&has & 0x80000000) != 0)
  {
    if ((v6 & 0x80000000) == 0 || self->_durBin8 != *(v4 + 34))
    {
      goto LABEL_182;
    }
  }

  else if ((v6 & 0x80000000) != 0)
  {
    goto LABEL_182;
  }

  if ((*&has & 0x100000000) != 0)
  {
    if ((v6 & 0x100000000) == 0 || self->_durBin9 != *(v4 + 35))
    {
      goto LABEL_182;
    }
  }

  else if ((v6 & 0x100000000) != 0)
  {
    goto LABEL_182;
  }

  if ((*&has & 8) != 0)
  {
    if ((v6 & 8) == 0 || self->_durBin10 != *(v4 + 6))
    {
      goto LABEL_182;
    }
  }

  else if ((v6 & 8) != 0)
  {
    goto LABEL_182;
  }

  if ((*&has & 0x10) != 0)
  {
    if ((v6 & 0x10) == 0 || self->_durBin11 != *(v4 + 7))
    {
      goto LABEL_182;
    }
  }

  else if ((v6 & 0x10) != 0)
  {
    goto LABEL_182;
  }

  if ((*&has & 0x20) != 0)
  {
    if ((v6 & 0x20) == 0 || self->_durBin12 != *(v4 + 8))
    {
      goto LABEL_182;
    }
  }

  else if ((v6 & 0x20) != 0)
  {
    goto LABEL_182;
  }

  if ((*&has & 0x40) != 0)
  {
    if ((v6 & 0x40) == 0 || self->_durBin13 != *(v4 + 9))
    {
      goto LABEL_182;
    }
  }

  else if ((v6 & 0x40) != 0)
  {
    goto LABEL_182;
  }

  if ((*&has & 0x80) != 0)
  {
    if ((v6 & 0x80) == 0 || self->_durBin14 != *(v4 + 10))
    {
      goto LABEL_182;
    }
  }

  else if ((v6 & 0x80) != 0)
  {
    goto LABEL_182;
  }

  if ((*&has & 0x100) != 0)
  {
    if ((v6 & 0x100) == 0 || self->_durBin15 != *(v4 + 11))
    {
      goto LABEL_182;
    }
  }

  else if ((v6 & 0x100) != 0)
  {
    goto LABEL_182;
  }

  if ((*&has & 0x200) != 0)
  {
    if ((v6 & 0x200) == 0 || self->_durBin16 != *(v4 + 12))
    {
      goto LABEL_182;
    }
  }

  else if ((v6 & 0x200) != 0)
  {
    goto LABEL_182;
  }

  if ((*&has & 0x400) != 0)
  {
    if ((v6 & 0x400) == 0 || self->_durBin17 != *(v4 + 13))
    {
      goto LABEL_182;
    }
  }

  else if ((v6 & 0x400) != 0)
  {
    goto LABEL_182;
  }

  if ((*&has & 0x800) != 0)
  {
    if ((v6 & 0x800) == 0 || self->_durBin18 != *(v4 + 14))
    {
      goto LABEL_182;
    }
  }

  else if ((v6 & 0x800) != 0)
  {
    goto LABEL_182;
  }

  if ((*&has & 0x1000) != 0)
  {
    if ((v6 & 0x1000) == 0 || self->_durBin19 != *(v4 + 15))
    {
      goto LABEL_182;
    }
  }

  else if ((v6 & 0x1000) != 0)
  {
    goto LABEL_182;
  }

  if ((*&has & 0x4000) != 0)
  {
    if ((v6 & 0x4000) == 0 || self->_durBin20 != *(v4 + 17))
    {
      goto LABEL_182;
    }
  }

  else if ((v6 & 0x4000) != 0)
  {
    goto LABEL_182;
  }

  if ((*&has & 0x8000) != 0)
  {
    if ((v6 & 0x8000) == 0 || self->_durBin21 != *(v4 + 18))
    {
      goto LABEL_182;
    }
  }

  else if ((v6 & 0x8000) != 0)
  {
    goto LABEL_182;
  }

  if ((*&has & 0x10000) != 0)
  {
    if ((v6 & 0x10000) == 0 || self->_durBin22 != *(v4 + 19))
    {
      goto LABEL_182;
    }
  }

  else if ((v6 & 0x10000) != 0)
  {
    goto LABEL_182;
  }

  if ((*&has & 0x20000) != 0)
  {
    if ((v6 & 0x20000) == 0 || self->_durBin23 != *(v4 + 20))
    {
      goto LABEL_182;
    }
  }

  else if ((v6 & 0x20000) != 0)
  {
    goto LABEL_182;
  }

  if ((*&has & 0x40000) != 0)
  {
    if ((v6 & 0x40000) == 0 || self->_durBin24 != *(v4 + 21))
    {
      goto LABEL_182;
    }
  }

  else if ((v6 & 0x40000) != 0)
  {
    goto LABEL_182;
  }

  if ((*&has & 0x80000) != 0)
  {
    if ((v6 & 0x80000) == 0 || self->_durBin25 != *(v4 + 22))
    {
      goto LABEL_182;
    }
  }

  else if ((v6 & 0x80000) != 0)
  {
    goto LABEL_182;
  }

  if ((*&has & 0x100000) != 0)
  {
    if ((v6 & 0x100000) == 0 || self->_durBin26 != *(v4 + 23))
    {
      goto LABEL_182;
    }
  }

  else if ((v6 & 0x100000) != 0)
  {
    goto LABEL_182;
  }

  if ((*&has & 0x200000) != 0)
  {
    if ((v6 & 0x200000) == 0 || self->_durBin27 != *(v4 + 24))
    {
      goto LABEL_182;
    }
  }

  else if ((v6 & 0x200000) != 0)
  {
    goto LABEL_182;
  }

  if ((*&has & 0x400000) != 0)
  {
    if ((v6 & 0x400000) == 0 || self->_durBin28 != *(v4 + 25))
    {
      goto LABEL_182;
    }
  }

  else if ((v6 & 0x400000) != 0)
  {
    goto LABEL_182;
  }

  if ((*&has & 0x800000) != 0)
  {
    if ((v6 & 0x800000) == 0 || self->_durBin29 != *(v4 + 26))
    {
      goto LABEL_182;
    }
  }

  else if ((v6 & 0x800000) != 0)
  {
    goto LABEL_182;
  }

  if ((*&has & 0x2000000) != 0)
  {
    if ((v6 & 0x2000000) == 0 || self->_durBin30 != *(v4 + 28))
    {
      goto LABEL_182;
    }
  }

  else if ((v6 & 0x2000000) != 0)
  {
    goto LABEL_182;
  }

  if ((*&has & 0x4000000) != 0)
  {
    if ((v6 & 0x4000000) == 0 || self->_durBin31 != *(v4 + 29))
    {
      goto LABEL_182;
    }
  }

  else if ((v6 & 0x4000000) != 0)
  {
    goto LABEL_182;
  }

  if ((*&has & 0x400000000) != 0)
  {
    if ((v6 & 0x400000000) == 0 || self->_subsId != *(v4 + 37))
    {
      goto LABEL_182;
    }
  }

  else if ((v6 & 0x400000000) != 0)
  {
    goto LABEL_182;
  }

  if ((*&has & 0x800000000) != 0)
  {
    if ((v6 & 0x800000000) == 0 || self->_version != *(v4 + 38))
    {
      goto LABEL_182;
    }

    v7 = 1;
  }

  else
  {
    v7 = (v6 & 0x800000000) == 0;
  }

LABEL_183:

  return v7;
}

- (unint64_t)hash
{
  has = self->_has;
  if (*&has)
  {
    v39 = 2654435761u * self->_timestamp;
    if ((*&has & 0x200000000) != 0)
    {
LABEL_3:
      v38 = 2654435761 * self->_durationMs;
      if ((*&has & 2) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_40;
    }
  }

  else
  {
    v39 = 0;
    if ((*&has & 0x200000000) != 0)
    {
      goto LABEL_3;
    }
  }

  v38 = 0;
  if ((*&has & 2) != 0)
  {
LABEL_4:
    v37 = 2654435761 * self->_durBin0;
    if ((*&has & 4) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_41;
  }

LABEL_40:
  v37 = 0;
  if ((*&has & 4) != 0)
  {
LABEL_5:
    v36 = 2654435761 * self->_durBin1;
    if ((*&has & 0x2000) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_42;
  }

LABEL_41:
  v36 = 0;
  if ((*&has & 0x2000) != 0)
  {
LABEL_6:
    v35 = 2654435761 * self->_durBin2;
    if ((*&has & 0x1000000) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_43;
  }

LABEL_42:
  v35 = 0;
  if ((*&has & 0x1000000) != 0)
  {
LABEL_7:
    v34 = 2654435761 * self->_durBin3;
    if ((*&has & 0x8000000) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_44;
  }

LABEL_43:
  v34 = 0;
  if ((*&has & 0x8000000) != 0)
  {
LABEL_8:
    v33 = 2654435761 * self->_durBin4;
    if ((*&has & 0x10000000) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_45;
  }

LABEL_44:
  v33 = 0;
  if ((*&has & 0x10000000) != 0)
  {
LABEL_9:
    v32 = 2654435761 * self->_durBin5;
    if ((*&has & 0x20000000) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_46;
  }

LABEL_45:
  v32 = 0;
  if ((*&has & 0x20000000) != 0)
  {
LABEL_10:
    v31 = 2654435761 * self->_durBin6;
    if ((*&has & 0x40000000) != 0)
    {
      goto LABEL_11;
    }

    goto LABEL_47;
  }

LABEL_46:
  v31 = 0;
  if ((*&has & 0x40000000) != 0)
  {
LABEL_11:
    v30 = 2654435761 * self->_durBin7;
    if ((*&has & 0x80000000) != 0)
    {
      goto LABEL_12;
    }

    goto LABEL_48;
  }

LABEL_47:
  v30 = 0;
  if ((*&has & 0x80000000) != 0)
  {
LABEL_12:
    v3 = 2654435761 * self->_durBin8;
    if ((*&has & 0x100000000) != 0)
    {
      goto LABEL_13;
    }

    goto LABEL_49;
  }

LABEL_48:
  v3 = 0;
  if ((*&has & 0x100000000) != 0)
  {
LABEL_13:
    v4 = 2654435761 * self->_durBin9;
    if ((*&has & 8) != 0)
    {
      goto LABEL_14;
    }

    goto LABEL_50;
  }

LABEL_49:
  v4 = 0;
  if ((*&has & 8) != 0)
  {
LABEL_14:
    v5 = 2654435761 * self->_durBin10;
    if ((*&has & 0x10) != 0)
    {
      goto LABEL_15;
    }

    goto LABEL_51;
  }

LABEL_50:
  v5 = 0;
  if ((*&has & 0x10) != 0)
  {
LABEL_15:
    v6 = 2654435761 * self->_durBin11;
    if ((*&has & 0x20) != 0)
    {
      goto LABEL_16;
    }

    goto LABEL_52;
  }

LABEL_51:
  v6 = 0;
  if ((*&has & 0x20) != 0)
  {
LABEL_16:
    v7 = 2654435761 * self->_durBin12;
    if ((*&has & 0x40) != 0)
    {
      goto LABEL_17;
    }

    goto LABEL_53;
  }

LABEL_52:
  v7 = 0;
  if ((*&has & 0x40) != 0)
  {
LABEL_17:
    v8 = 2654435761 * self->_durBin13;
    if ((*&has & 0x80) != 0)
    {
      goto LABEL_18;
    }

    goto LABEL_54;
  }

LABEL_53:
  v8 = 0;
  if ((*&has & 0x80) != 0)
  {
LABEL_18:
    v9 = 2654435761 * self->_durBin14;
    if ((*&has & 0x100) != 0)
    {
      goto LABEL_19;
    }

    goto LABEL_55;
  }

LABEL_54:
  v9 = 0;
  if ((*&has & 0x100) != 0)
  {
LABEL_19:
    v10 = 2654435761 * self->_durBin15;
    if ((*&has & 0x200) != 0)
    {
      goto LABEL_20;
    }

    goto LABEL_56;
  }

LABEL_55:
  v10 = 0;
  if ((*&has & 0x200) != 0)
  {
LABEL_20:
    v11 = 2654435761 * self->_durBin16;
    if ((*&has & 0x400) != 0)
    {
      goto LABEL_21;
    }

    goto LABEL_57;
  }

LABEL_56:
  v11 = 0;
  if ((*&has & 0x400) != 0)
  {
LABEL_21:
    v12 = 2654435761 * self->_durBin17;
    if ((*&has & 0x800) != 0)
    {
      goto LABEL_22;
    }

    goto LABEL_58;
  }

LABEL_57:
  v12 = 0;
  if ((*&has & 0x800) != 0)
  {
LABEL_22:
    v13 = 2654435761 * self->_durBin18;
    if ((*&has & 0x1000) != 0)
    {
      goto LABEL_23;
    }

    goto LABEL_59;
  }

LABEL_58:
  v13 = 0;
  if ((*&has & 0x1000) != 0)
  {
LABEL_23:
    v14 = 2654435761 * self->_durBin19;
    if ((*&has & 0x4000) != 0)
    {
      goto LABEL_24;
    }

    goto LABEL_60;
  }

LABEL_59:
  v14 = 0;
  if ((*&has & 0x4000) != 0)
  {
LABEL_24:
    v15 = 2654435761 * self->_durBin20;
    if ((*&has & 0x8000) != 0)
    {
      goto LABEL_25;
    }

    goto LABEL_61;
  }

LABEL_60:
  v15 = 0;
  if ((*&has & 0x8000) != 0)
  {
LABEL_25:
    v16 = 2654435761 * self->_durBin21;
    if ((*&has & 0x10000) != 0)
    {
      goto LABEL_26;
    }

    goto LABEL_62;
  }

LABEL_61:
  v16 = 0;
  if ((*&has & 0x10000) != 0)
  {
LABEL_26:
    v17 = 2654435761 * self->_durBin22;
    if ((*&has & 0x20000) != 0)
    {
      goto LABEL_27;
    }

    goto LABEL_63;
  }

LABEL_62:
  v17 = 0;
  if ((*&has & 0x20000) != 0)
  {
LABEL_27:
    v18 = 2654435761 * self->_durBin23;
    if ((*&has & 0x40000) != 0)
    {
      goto LABEL_28;
    }

    goto LABEL_64;
  }

LABEL_63:
  v18 = 0;
  if ((*&has & 0x40000) != 0)
  {
LABEL_28:
    v19 = 2654435761 * self->_durBin24;
    if ((*&has & 0x80000) != 0)
    {
      goto LABEL_29;
    }

    goto LABEL_65;
  }

LABEL_64:
  v19 = 0;
  if ((*&has & 0x80000) != 0)
  {
LABEL_29:
    v20 = 2654435761 * self->_durBin25;
    if ((*&has & 0x100000) != 0)
    {
      goto LABEL_30;
    }

    goto LABEL_66;
  }

LABEL_65:
  v20 = 0;
  if ((*&has & 0x100000) != 0)
  {
LABEL_30:
    v21 = 2654435761 * self->_durBin26;
    if ((*&has & 0x200000) != 0)
    {
      goto LABEL_31;
    }

    goto LABEL_67;
  }

LABEL_66:
  v21 = 0;
  if ((*&has & 0x200000) != 0)
  {
LABEL_31:
    v22 = 2654435761 * self->_durBin27;
    if ((*&has & 0x400000) != 0)
    {
      goto LABEL_32;
    }

    goto LABEL_68;
  }

LABEL_67:
  v22 = 0;
  if ((*&has & 0x400000) != 0)
  {
LABEL_32:
    v23 = 2654435761 * self->_durBin28;
    if ((*&has & 0x800000) != 0)
    {
      goto LABEL_33;
    }

    goto LABEL_69;
  }

LABEL_68:
  v23 = 0;
  if ((*&has & 0x800000) != 0)
  {
LABEL_33:
    v24 = 2654435761 * self->_durBin29;
    if ((*&has & 0x2000000) != 0)
    {
      goto LABEL_34;
    }

    goto LABEL_70;
  }

LABEL_69:
  v24 = 0;
  if ((*&has & 0x2000000) != 0)
  {
LABEL_34:
    v25 = 2654435761 * self->_durBin30;
    if ((*&has & 0x4000000) != 0)
    {
      goto LABEL_35;
    }

    goto LABEL_71;
  }

LABEL_70:
  v25 = 0;
  if ((*&has & 0x4000000) != 0)
  {
LABEL_35:
    v26 = 2654435761 * self->_durBin31;
    if ((*&has & 0x400000000) != 0)
    {
      goto LABEL_36;
    }

LABEL_72:
    v27 = 0;
    if ((*&has & 0x800000000) != 0)
    {
      goto LABEL_37;
    }

LABEL_73:
    v28 = 0;
    return v38 ^ v39 ^ v37 ^ v36 ^ v35 ^ v34 ^ v33 ^ v32 ^ v31 ^ v30 ^ v3 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19 ^ v20 ^ v21 ^ v22 ^ v23 ^ v24 ^ v25 ^ v26 ^ v27 ^ v28;
  }

LABEL_71:
  v26 = 0;
  if ((*&has & 0x400000000) == 0)
  {
    goto LABEL_72;
  }

LABEL_36:
  v27 = 2654435761 * self->_subsId;
  if ((*&has & 0x800000000) == 0)
  {
    goto LABEL_73;
  }

LABEL_37:
  v28 = 2654435761 * self->_version;
  return v38 ^ v39 ^ v37 ^ v36 ^ v35 ^ v34 ^ v33 ^ v32 ^ v31 ^ v30 ^ v3 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19 ^ v20 ^ v21 ^ v22 ^ v23 ^ v24 ^ v25 ^ v26 ^ v27 ^ v28;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 156);
  if (v5)
  {
    self->_timestamp = *(v4 + 1);
    *&self->_has |= 1uLL;
    v5 = *(v4 + 156);
    if ((v5 & 0x200000000) == 0)
    {
LABEL_3:
      if ((v5 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_43;
    }
  }

  else if ((v5 & 0x200000000) == 0)
  {
    goto LABEL_3;
  }

  self->_durationMs = *(v4 + 36);
  *&self->_has |= 0x200000000uLL;
  v5 = *(v4 + 156);
  if ((v5 & 2) == 0)
  {
LABEL_4:
    if ((v5 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_44;
  }

LABEL_43:
  self->_durBin0 = *(v4 + 4);
  *&self->_has |= 2uLL;
  v5 = *(v4 + 156);
  if ((v5 & 4) == 0)
  {
LABEL_5:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_45;
  }

LABEL_44:
  self->_durBin1 = *(v4 + 5);
  *&self->_has |= 4uLL;
  v5 = *(v4 + 156);
  if ((v5 & 0x2000) == 0)
  {
LABEL_6:
    if ((v5 & 0x1000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_46;
  }

LABEL_45:
  self->_durBin2 = *(v4 + 16);
  *&self->_has |= 0x2000uLL;
  v5 = *(v4 + 156);
  if ((v5 & 0x1000000) == 0)
  {
LABEL_7:
    if ((v5 & 0x8000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_47;
  }

LABEL_46:
  self->_durBin3 = *(v4 + 27);
  *&self->_has |= 0x1000000uLL;
  v5 = *(v4 + 156);
  if ((v5 & 0x8000000) == 0)
  {
LABEL_8:
    if ((v5 & 0x10000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_48;
  }

LABEL_47:
  self->_durBin4 = *(v4 + 30);
  *&self->_has |= 0x8000000uLL;
  v5 = *(v4 + 156);
  if ((v5 & 0x10000000) == 0)
  {
LABEL_9:
    if ((v5 & 0x20000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_49;
  }

LABEL_48:
  self->_durBin5 = *(v4 + 31);
  *&self->_has |= 0x10000000uLL;
  v5 = *(v4 + 156);
  if ((v5 & 0x20000000) == 0)
  {
LABEL_10:
    if ((v5 & 0x40000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_50;
  }

LABEL_49:
  self->_durBin6 = *(v4 + 32);
  *&self->_has |= 0x20000000uLL;
  v5 = *(v4 + 156);
  if ((v5 & 0x40000000) == 0)
  {
LABEL_11:
    if ((v5 & 0x80000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_51;
  }

LABEL_50:
  self->_durBin7 = *(v4 + 33);
  *&self->_has |= 0x40000000uLL;
  v5 = *(v4 + 156);
  if ((v5 & 0x80000000) == 0)
  {
LABEL_12:
    if ((v5 & 0x100000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_52;
  }

LABEL_51:
  self->_durBin8 = *(v4 + 34);
  *&self->_has |= 0x80000000uLL;
  v5 = *(v4 + 156);
  if ((v5 & 0x100000000) == 0)
  {
LABEL_13:
    if ((v5 & 8) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_53;
  }

LABEL_52:
  self->_durBin9 = *(v4 + 35);
  *&self->_has |= 0x100000000uLL;
  v5 = *(v4 + 156);
  if ((v5 & 8) == 0)
  {
LABEL_14:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_54;
  }

LABEL_53:
  self->_durBin10 = *(v4 + 6);
  *&self->_has |= 8uLL;
  v5 = *(v4 + 156);
  if ((v5 & 0x10) == 0)
  {
LABEL_15:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_55;
  }

LABEL_54:
  self->_durBin11 = *(v4 + 7);
  *&self->_has |= 0x10uLL;
  v5 = *(v4 + 156);
  if ((v5 & 0x20) == 0)
  {
LABEL_16:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_56;
  }

LABEL_55:
  self->_durBin12 = *(v4 + 8);
  *&self->_has |= 0x20uLL;
  v5 = *(v4 + 156);
  if ((v5 & 0x40) == 0)
  {
LABEL_17:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_57;
  }

LABEL_56:
  self->_durBin13 = *(v4 + 9);
  *&self->_has |= 0x40uLL;
  v5 = *(v4 + 156);
  if ((v5 & 0x80) == 0)
  {
LABEL_18:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_58;
  }

LABEL_57:
  self->_durBin14 = *(v4 + 10);
  *&self->_has |= 0x80uLL;
  v5 = *(v4 + 156);
  if ((v5 & 0x100) == 0)
  {
LABEL_19:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_59;
  }

LABEL_58:
  self->_durBin15 = *(v4 + 11);
  *&self->_has |= 0x100uLL;
  v5 = *(v4 + 156);
  if ((v5 & 0x200) == 0)
  {
LABEL_20:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_60;
  }

LABEL_59:
  self->_durBin16 = *(v4 + 12);
  *&self->_has |= 0x200uLL;
  v5 = *(v4 + 156);
  if ((v5 & 0x400) == 0)
  {
LABEL_21:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_61;
  }

LABEL_60:
  self->_durBin17 = *(v4 + 13);
  *&self->_has |= 0x400uLL;
  v5 = *(v4 + 156);
  if ((v5 & 0x800) == 0)
  {
LABEL_22:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_62;
  }

LABEL_61:
  self->_durBin18 = *(v4 + 14);
  *&self->_has |= 0x800uLL;
  v5 = *(v4 + 156);
  if ((v5 & 0x1000) == 0)
  {
LABEL_23:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_63;
  }

LABEL_62:
  self->_durBin19 = *(v4 + 15);
  *&self->_has |= 0x1000uLL;
  v5 = *(v4 + 156);
  if ((v5 & 0x4000) == 0)
  {
LABEL_24:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_64;
  }

LABEL_63:
  self->_durBin20 = *(v4 + 17);
  *&self->_has |= 0x4000uLL;
  v5 = *(v4 + 156);
  if ((v5 & 0x8000) == 0)
  {
LABEL_25:
    if ((v5 & 0x10000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_65;
  }

LABEL_64:
  self->_durBin21 = *(v4 + 18);
  *&self->_has |= 0x8000uLL;
  v5 = *(v4 + 156);
  if ((v5 & 0x10000) == 0)
  {
LABEL_26:
    if ((v5 & 0x20000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_66;
  }

LABEL_65:
  self->_durBin22 = *(v4 + 19);
  *&self->_has |= 0x10000uLL;
  v5 = *(v4 + 156);
  if ((v5 & 0x20000) == 0)
  {
LABEL_27:
    if ((v5 & 0x40000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_67;
  }

LABEL_66:
  self->_durBin23 = *(v4 + 20);
  *&self->_has |= 0x20000uLL;
  v5 = *(v4 + 156);
  if ((v5 & 0x40000) == 0)
  {
LABEL_28:
    if ((v5 & 0x80000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_68;
  }

LABEL_67:
  self->_durBin24 = *(v4 + 21);
  *&self->_has |= 0x40000uLL;
  v5 = *(v4 + 156);
  if ((v5 & 0x80000) == 0)
  {
LABEL_29:
    if ((v5 & 0x100000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_69;
  }

LABEL_68:
  self->_durBin25 = *(v4 + 22);
  *&self->_has |= 0x80000uLL;
  v5 = *(v4 + 156);
  if ((v5 & 0x100000) == 0)
  {
LABEL_30:
    if ((v5 & 0x200000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_70;
  }

LABEL_69:
  self->_durBin26 = *(v4 + 23);
  *&self->_has |= 0x100000uLL;
  v5 = *(v4 + 156);
  if ((v5 & 0x200000) == 0)
  {
LABEL_31:
    if ((v5 & 0x400000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_71;
  }

LABEL_70:
  self->_durBin27 = *(v4 + 24);
  *&self->_has |= 0x200000uLL;
  v5 = *(v4 + 156);
  if ((v5 & 0x400000) == 0)
  {
LABEL_32:
    if ((v5 & 0x800000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_72;
  }

LABEL_71:
  self->_durBin28 = *(v4 + 25);
  *&self->_has |= 0x400000uLL;
  v5 = *(v4 + 156);
  if ((v5 & 0x800000) == 0)
  {
LABEL_33:
    if ((v5 & 0x2000000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_73;
  }

LABEL_72:
  self->_durBin29 = *(v4 + 26);
  *&self->_has |= 0x800000uLL;
  v5 = *(v4 + 156);
  if ((v5 & 0x2000000) == 0)
  {
LABEL_34:
    if ((v5 & 0x4000000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_74;
  }

LABEL_73:
  self->_durBin30 = *(v4 + 28);
  *&self->_has |= 0x2000000uLL;
  v5 = *(v4 + 156);
  if ((v5 & 0x4000000) == 0)
  {
LABEL_35:
    if ((v5 & 0x400000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_75;
  }

LABEL_74:
  self->_durBin31 = *(v4 + 29);
  *&self->_has |= 0x4000000uLL;
  v5 = *(v4 + 156);
  if ((v5 & 0x400000000) == 0)
  {
LABEL_36:
    if ((v5 & 0x800000000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_37;
  }

LABEL_75:
  self->_subsId = *(v4 + 37);
  *&self->_has |= 0x400000000uLL;
  if ((*(v4 + 156) & 0x800000000) != 0)
  {
LABEL_37:
    self->_version = *(v4 + 38);
    *&self->_has |= 0x800000000uLL;
  }

LABEL_38:
}

@end