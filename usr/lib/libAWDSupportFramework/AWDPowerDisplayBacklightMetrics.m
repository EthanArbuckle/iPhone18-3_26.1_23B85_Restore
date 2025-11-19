@interface AWDPowerDisplayBacklightMetrics
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addBacklightBucket:(id)a3;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)setHasAlsAutoBrightnessChangeCount:(BOOL)a3;
- (void)setHasAlsAutoBrightnessCurveE0A:(BOOL)a3;
- (void)setHasAlsAutoBrightnessCurveE0B:(BOOL)a3;
- (void)setHasAlsAutoBrightnessCurveE1:(BOOL)a3;
- (void)setHasAlsAutoBrightnessCurveE2:(BOOL)a3;
- (void)setHasAlsAutoBrightnessCurveEdynth:(BOOL)a3;
- (void)setHasAlsAutoBrightnessCurveL0A:(BOOL)a3;
- (void)setHasAlsAutoBrightnessCurveL0B:(BOOL)a3;
- (void)setHasAlsAutoBrightnessCurveL1:(BOOL)a3;
- (void)setHasAlsAutoBrightnessCurveL2:(BOOL)a3;
- (void)setHasAlsAutoBrightnessLux:(BOOL)a3;
- (void)setHasAlsAutoBrightnessSlider:(BOOL)a3;
- (void)setHasAlsBrightnessEnableCnt:(BOOL)a3;
- (void)setHasDispOnCount:(BOOL)a3;
- (void)setHasDisplayIdlePercentage:(BOOL)a3;
- (void)setHasFrameRateResidencyPercentage:(BOOL)a3;
- (void)setHasMieCount:(BOOL)a3;
- (void)setHasMieDuration:(BOOL)a3;
- (void)setHasPluggedDisplayOnDuration:(BOOL)a3;
- (void)setHasResidencyPercentage30Hz:(BOOL)a3;
- (void)setHasResidencyPercentage60Hz:(BOOL)a3;
- (void)setHasTotalBacklightPower:(BOOL)a3;
- (void)setHasTotalDisplayPower:(BOOL)a3;
- (void)setHasUnpluggedDisplayOnDuration:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDPowerDisplayBacklightMetrics

- (void)dealloc
{
  [(AWDPowerDisplayBacklightMetrics *)self setBacklightBuckets:0];
  v3.receiver = self;
  v3.super_class = AWDPowerDisplayBacklightMetrics;
  [(AWDPowerDisplayBacklightMetrics *)&v3 dealloc];
}

- (void)setHasDispOnCount:(BOOL)a3
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

- (void)setHasUnpluggedDisplayOnDuration:(BOOL)a3
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

- (void)setHasPluggedDisplayOnDuration:(BOOL)a3
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

- (void)setHasMieDuration:(BOOL)a3
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

- (void)setHasMieCount:(BOOL)a3
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

- (void)setHasDisplayIdlePercentage:(BOOL)a3
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

- (void)setHasAlsAutoBrightnessCurveE1:(BOOL)a3
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

- (void)setHasAlsAutoBrightnessCurveL1:(BOOL)a3
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

- (void)setHasAlsAutoBrightnessCurveE2:(BOOL)a3
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

- (void)setHasAlsAutoBrightnessCurveL2:(BOOL)a3
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

- (void)setHasAlsAutoBrightnessCurveE0A:(BOOL)a3
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

- (void)setHasAlsAutoBrightnessCurveL0A:(BOOL)a3
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

- (void)setHasAlsAutoBrightnessCurveE0B:(BOOL)a3
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

- (void)setHasAlsAutoBrightnessCurveL0B:(BOOL)a3
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

- (void)setHasAlsAutoBrightnessCurveEdynth:(BOOL)a3
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

- (void)setHasAlsAutoBrightnessSlider:(BOOL)a3
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

- (void)setHasAlsAutoBrightnessLux:(BOOL)a3
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

- (void)setHasAlsAutoBrightnessChangeCount:(BOOL)a3
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

- (void)setHasAlsBrightnessEnableCnt:(BOOL)a3
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

- (void)addBacklightBucket:(id)a3
{
  backlightBuckets = self->_backlightBuckets;
  if (!backlightBuckets)
  {
    backlightBuckets = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    self->_backlightBuckets = backlightBuckets;
  }

  [(NSMutableArray *)backlightBuckets addObject:a3];
}

- (void)setHasTotalDisplayPower:(BOOL)a3
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

- (void)setHasTotalBacklightPower:(BOOL)a3
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

- (void)setHasFrameRateResidencyPercentage:(BOOL)a3
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

- (void)setHasResidencyPercentage60Hz:(BOOL)a3
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

- (void)setHasResidencyPercentage30Hz:(BOOL)a3
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
  v3.receiver = self;
  v3.super_class = AWDPowerDisplayBacklightMetrics;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDPowerDisplayBacklightMetrics description](&v3, sel_description), -[AWDPowerDisplayBacklightMetrics dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v19 = *MEMORY[0x29EDCA608];
  v3 = [MEMORY[0x29EDB8E00] dictionary];
  has = self->_has;
  if (*&has)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
    has = self->_has;
    if ((*&has & 0x4000) == 0)
    {
LABEL_3:
      if ((*&has & 0x1000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_40;
    }
  }

  else if ((*&has & 0x4000) == 0)
  {
    goto LABEL_3;
  }

  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_dispOnCount), @"dispOnCount"}];
  has = self->_has;
  if ((*&has & 0x1000000) == 0)
  {
LABEL_4:
    if ((*&has & 0x80000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_41;
  }

LABEL_40:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_unpluggedDisplayOnDuration), @"unpluggedDisplayOnDuration"}];
  has = self->_has;
  if ((*&has & 0x80000) == 0)
  {
LABEL_5:
    if ((*&has & 0x40000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_42;
  }

LABEL_41:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_pluggedDisplayOnDuration), @"pluggedDisplayOnDuration"}];
  has = self->_has;
  if ((*&has & 0x40000) == 0)
  {
LABEL_6:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_43;
  }

LABEL_42:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_mieDuration), @"mieDuration"}];
  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_7:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_44;
  }

LABEL_43:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_mieCount), @"mieCount"}];
  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_8:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_45;
  }

LABEL_44:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_displayIdlePercentage), @"displayIdlePercentage"}];
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_9:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_46;
  }

LABEL_45:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_alsAutoBrightnessCurveE1), @"alsAutoBrightnessCurveE1"}];
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_10:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_47;
  }

LABEL_46:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_alsAutoBrightnessCurveL1), @"alsAutoBrightnessCurveL1"}];
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_11:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_48;
  }

LABEL_47:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_alsAutoBrightnessCurveE2), @"alsAutoBrightnessCurveE2"}];
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_12:
    if ((*&has & 4) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_49;
  }

LABEL_48:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_alsAutoBrightnessCurveL2), @"alsAutoBrightnessCurveL2"}];
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_13:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_50;
  }

LABEL_49:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_alsAutoBrightnessCurveE0A), @"alsAutoBrightnessCurveE0A"}];
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_14:
    if ((*&has & 8) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_51;
  }

LABEL_50:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_alsAutoBrightnessCurveL0A), @"alsAutoBrightnessCurveL0A"}];
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_15:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_52;
  }

LABEL_51:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_alsAutoBrightnessCurveE0B), @"alsAutoBrightnessCurveE0B"}];
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_16:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_53;
  }

LABEL_52:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_alsAutoBrightnessCurveL0B), @"alsAutoBrightnessCurveL0B"}];
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_17:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_54;
  }

LABEL_53:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_alsAutoBrightnessCurveEdynth), @"alsAutoBrightnessCurveEdynth"}];
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_18:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_55;
  }

LABEL_54:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_alsAutoBrightnessSlider), @"alsAutoBrightnessSlider"}];
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_19:
    if ((*&has & 2) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_56;
  }

LABEL_55:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_alsAutoBrightnessLux), @"alsAutoBrightnessLux"}];
  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_20:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

LABEL_56:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_alsAutoBrightnessChangeCount), @"alsAutoBrightnessChangeCount"}];
  if ((*&self->_has & 0x2000) != 0)
  {
LABEL_21:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_alsBrightnessEnableCnt), @"alsBrightnessEnableCnt"}];
  }

LABEL_22:
  if ([(NSMutableArray *)self->_backlightBuckets count])
  {
    v5 = [objc_alloc(MEMORY[0x29EDB8DE8]) initWithCapacity:{-[NSMutableArray count](self->_backlightBuckets, "count")}];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    backlightBuckets = self->_backlightBuckets;
    v7 = [(NSMutableArray *)backlightBuckets countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(backlightBuckets);
          }

          [v5 addObject:{objc_msgSend(*(*(&v14 + 1) + 8 * i), "dictionaryRepresentation")}];
        }

        v8 = [(NSMutableArray *)backlightBuckets countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v8);
    }

    [v3 setObject:v5 forKey:@"backlightBucket"];
  }

  v11 = self->_has;
  if ((*&v11 & 0x800000) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_totalDisplayPower), @"totalDisplayPower"}];
    v11 = self->_has;
    if ((*&v11 & 0x400000) == 0)
    {
LABEL_33:
      if ((*&v11 & 0x10000) == 0)
      {
        goto LABEL_34;
      }

      goto LABEL_60;
    }
  }

  else if ((*&v11 & 0x400000) == 0)
  {
    goto LABEL_33;
  }

  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_totalBacklightPower), @"totalBacklightPower"}];
  v11 = self->_has;
  if ((*&v11 & 0x10000) == 0)
  {
LABEL_34:
    if ((*&v11 & 0x200000) == 0)
    {
      goto LABEL_35;
    }

LABEL_61:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_residencyPercentage60Hz), @"residencyPercentage60Hz"}];
    if ((*&self->_has & 0x100000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_36;
  }

LABEL_60:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_frameRateResidencyPercentage), @"frameRateResidencyPercentage"}];
  v11 = self->_has;
  if ((*&v11 & 0x200000) != 0)
  {
    goto LABEL_61;
  }

LABEL_35:
  if ((*&v11 & 0x100000) != 0)
  {
LABEL_36:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_residencyPercentage30Hz), @"residencyPercentage30Hz"}];
  }

LABEL_37:
  v12 = *MEMORY[0x29EDCA608];
  return v3;
}

- (void)writeTo:(id)a3
{
  v43 = *MEMORY[0x29EDCA608];
  has = self->_has;
  if (*&has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    has = self->_has;
    if ((*&has & 0x4000) == 0)
    {
LABEL_3:
      if ((*&has & 0x1000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_38;
    }
  }

  else if ((*&has & 0x4000) == 0)
  {
    goto LABEL_3;
  }

  dispOnCount = self->_dispOnCount;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x1000000) == 0)
  {
LABEL_4:
    if ((*&has & 0x80000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_39;
  }

LABEL_38:
  unpluggedDisplayOnDuration = self->_unpluggedDisplayOnDuration;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x80000) == 0)
  {
LABEL_5:
    if ((*&has & 0x40000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_40;
  }

LABEL_39:
  pluggedDisplayOnDuration = self->_pluggedDisplayOnDuration;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x40000) == 0)
  {
LABEL_6:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_41;
  }

LABEL_40:
  mieDuration = self->_mieDuration;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_7:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_42;
  }

LABEL_41:
  mieCount = self->_mieCount;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_8:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_43;
  }

LABEL_42:
  displayIdlePercentage = self->_displayIdlePercentage;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_9:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_44;
  }

LABEL_43:
  alsAutoBrightnessCurveE1 = self->_alsAutoBrightnessCurveE1;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_10:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_45;
  }

LABEL_44:
  alsAutoBrightnessCurveL1 = self->_alsAutoBrightnessCurveL1;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_11:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_46;
  }

LABEL_45:
  alsAutoBrightnessCurveE2 = self->_alsAutoBrightnessCurveE2;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_12:
    if ((*&has & 4) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_47;
  }

LABEL_46:
  alsAutoBrightnessCurveL2 = self->_alsAutoBrightnessCurveL2;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_13:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_48;
  }

LABEL_47:
  alsAutoBrightnessCurveE0A = self->_alsAutoBrightnessCurveE0A;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_14:
    if ((*&has & 8) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_49;
  }

LABEL_48:
  alsAutoBrightnessCurveL0A = self->_alsAutoBrightnessCurveL0A;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_15:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_50;
  }

LABEL_49:
  alsAutoBrightnessCurveE0B = self->_alsAutoBrightnessCurveE0B;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_16:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_51;
  }

LABEL_50:
  alsAutoBrightnessCurveL0B = self->_alsAutoBrightnessCurveL0B;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_17:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_52;
  }

LABEL_51:
  alsAutoBrightnessCurveEdynth = self->_alsAutoBrightnessCurveEdynth;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_18:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_53;
  }

LABEL_52:
  alsAutoBrightnessSlider = self->_alsAutoBrightnessSlider;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_19:
    if ((*&has & 2) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_54;
  }

LABEL_53:
  alsAutoBrightnessLux = self->_alsAutoBrightnessLux;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_20:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

LABEL_54:
  alsAutoBrightnessChangeCount = self->_alsAutoBrightnessChangeCount;
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 0x2000) != 0)
  {
LABEL_21:
    alsBrightnessEnableCnt = self->_alsBrightnessEnableCnt;
    PBDataWriterWriteUint32Field();
  }

LABEL_22:
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  backlightBuckets = self->_backlightBuckets;
  v7 = [(NSMutableArray *)backlightBuckets countByEnumeratingWithState:&v38 objects:v42 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v39;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v39 != v9)
        {
          objc_enumerationMutation(backlightBuckets);
        }

        v11 = *(*(&v38 + 1) + 8 * i);
        PBDataWriterWriteSubmessage();
      }

      v8 = [(NSMutableArray *)backlightBuckets countByEnumeratingWithState:&v38 objects:v42 count:16];
    }

    while (v8);
  }

  v12 = self->_has;
  if ((*&v12 & 0x800000) != 0)
  {
    totalDisplayPower = self->_totalDisplayPower;
    PBDataWriterWriteUint32Field();
    v12 = self->_has;
    if ((*&v12 & 0x400000) == 0)
    {
LABEL_31:
      if ((*&v12 & 0x10000) == 0)
      {
        goto LABEL_32;
      }

      goto LABEL_58;
    }
  }

  else if ((*&v12 & 0x400000) == 0)
  {
    goto LABEL_31;
  }

  totalBacklightPower = self->_totalBacklightPower;
  PBDataWriterWriteUint32Field();
  v12 = self->_has;
  if ((*&v12 & 0x10000) == 0)
  {
LABEL_32:
    if ((*&v12 & 0x200000) == 0)
    {
      goto LABEL_33;
    }

LABEL_59:
    residencyPercentage60Hz = self->_residencyPercentage60Hz;
    PBDataWriterWriteUint32Field();
    if ((*&self->_has & 0x100000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_34;
  }

LABEL_58:
  frameRateResidencyPercentage = self->_frameRateResidencyPercentage;
  PBDataWriterWriteUint32Field();
  v12 = self->_has;
  if ((*&v12 & 0x200000) != 0)
  {
    goto LABEL_59;
  }

LABEL_33:
  if ((*&v12 & 0x100000) != 0)
  {
LABEL_34:
    residencyPercentage30Hz = self->_residencyPercentage30Hz;
    PBDataWriterWriteUint32Field();
  }

LABEL_35:
  v14 = *MEMORY[0x29EDCA608];
}

- (void)copyTo:(id)a3
{
  has = self->_has;
  if (*&has)
  {
    *(a3 + 1) = self->_timestamp;
    *(a3 + 31) |= 1u;
    has = self->_has;
    if ((*&has & 0x4000) == 0)
    {
LABEL_3:
      if ((*&has & 0x1000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_35;
    }
  }

  else if ((*&has & 0x4000) == 0)
  {
    goto LABEL_3;
  }

  *(a3 + 20) = self->_dispOnCount;
  *(a3 + 31) |= 0x4000u;
  has = self->_has;
  if ((*&has & 0x1000000) == 0)
  {
LABEL_4:
    if ((*&has & 0x80000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_36;
  }

LABEL_35:
  *(a3 + 30) = self->_unpluggedDisplayOnDuration;
  *(a3 + 31) |= 0x1000000u;
  has = self->_has;
  if ((*&has & 0x80000) == 0)
  {
LABEL_5:
    if ((*&has & 0x40000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_37;
  }

LABEL_36:
  *(a3 + 25) = self->_pluggedDisplayOnDuration;
  *(a3 + 31) |= 0x80000u;
  has = self->_has;
  if ((*&has & 0x40000) == 0)
  {
LABEL_6:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_38;
  }

LABEL_37:
  *(a3 + 24) = self->_mieDuration;
  *(a3 + 31) |= 0x40000u;
  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_7:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_39;
  }

LABEL_38:
  *(a3 + 23) = self->_mieCount;
  *(a3 + 31) |= 0x20000u;
  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_8:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_40;
  }

LABEL_39:
  *(a3 + 21) = self->_displayIdlePercentage;
  *(a3 + 31) |= 0x8000u;
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_9:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_41;
  }

LABEL_40:
  *(a3 + 7) = self->_alsAutoBrightnessCurveE1;
  *(a3 + 31) |= 0x10u;
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_10:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_42;
  }

LABEL_41:
  *(a3 + 12) = self->_alsAutoBrightnessCurveL1;
  *(a3 + 31) |= 0x200u;
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_11:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_43;
  }

LABEL_42:
  *(a3 + 8) = self->_alsAutoBrightnessCurveE2;
  *(a3 + 31) |= 0x20u;
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_12:
    if ((*&has & 4) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_44;
  }

LABEL_43:
  *(a3 + 13) = self->_alsAutoBrightnessCurveL2;
  *(a3 + 31) |= 0x400u;
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_13:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_45;
  }

LABEL_44:
  *(a3 + 5) = self->_alsAutoBrightnessCurveE0A;
  *(a3 + 31) |= 4u;
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_14:
    if ((*&has & 8) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_46;
  }

LABEL_45:
  *(a3 + 10) = self->_alsAutoBrightnessCurveL0A;
  *(a3 + 31) |= 0x80u;
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_15:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_47;
  }

LABEL_46:
  *(a3 + 6) = self->_alsAutoBrightnessCurveE0B;
  *(a3 + 31) |= 8u;
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_16:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_48;
  }

LABEL_47:
  *(a3 + 11) = self->_alsAutoBrightnessCurveL0B;
  *(a3 + 31) |= 0x100u;
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_17:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_49;
  }

LABEL_48:
  *(a3 + 9) = self->_alsAutoBrightnessCurveEdynth;
  *(a3 + 31) |= 0x40u;
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_18:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_50;
  }

LABEL_49:
  *(a3 + 15) = self->_alsAutoBrightnessSlider;
  *(a3 + 31) |= 0x1000u;
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_19:
    if ((*&has & 2) == 0)
    {
      goto LABEL_20;
    }

LABEL_51:
    *(a3 + 4) = self->_alsAutoBrightnessChangeCount;
    *(a3 + 31) |= 2u;
    if ((*&self->_has & 0x2000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

LABEL_50:
  *(a3 + 14) = self->_alsAutoBrightnessLux;
  *(a3 + 31) |= 0x800u;
  has = self->_has;
  if ((*&has & 2) != 0)
  {
    goto LABEL_51;
  }

LABEL_20:
  if ((*&has & 0x2000) != 0)
  {
LABEL_21:
    *(a3 + 16) = self->_alsBrightnessEnableCnt;
    *(a3 + 31) |= 0x2000u;
  }

LABEL_22:
  if ([(AWDPowerDisplayBacklightMetrics *)self backlightBucketsCount])
  {
    [a3 clearBacklightBuckets];
    v6 = [(AWDPowerDisplayBacklightMetrics *)self backlightBucketsCount];
    if (v6)
    {
      v7 = v6;
      for (i = 0; i != v7; ++i)
      {
        [a3 addBacklightBucket:{-[AWDPowerDisplayBacklightMetrics backlightBucketAtIndex:](self, "backlightBucketAtIndex:", i)}];
      }
    }
  }

  v9 = self->_has;
  if ((*&v9 & 0x800000) != 0)
  {
    *(a3 + 29) = self->_totalDisplayPower;
    *(a3 + 31) |= 0x800000u;
    v9 = self->_has;
    if ((*&v9 & 0x400000) == 0)
    {
LABEL_28:
      if ((*&v9 & 0x10000) == 0)
      {
        goto LABEL_29;
      }

      goto LABEL_55;
    }
  }

  else if ((*&v9 & 0x400000) == 0)
  {
    goto LABEL_28;
  }

  *(a3 + 28) = self->_totalBacklightPower;
  *(a3 + 31) |= 0x400000u;
  v9 = self->_has;
  if ((*&v9 & 0x10000) == 0)
  {
LABEL_29:
    if ((*&v9 & 0x200000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_56;
  }

LABEL_55:
  *(a3 + 22) = self->_frameRateResidencyPercentage;
  *(a3 + 31) |= 0x10000u;
  v9 = self->_has;
  if ((*&v9 & 0x200000) == 0)
  {
LABEL_30:
    if ((*&v9 & 0x100000) == 0)
    {
      return;
    }

    goto LABEL_31;
  }

LABEL_56:
  *(a3 + 27) = self->_residencyPercentage60Hz;
  *(a3 + 31) |= 0x200000u;
  if ((*&self->_has & 0x100000) == 0)
  {
    return;
  }

LABEL_31:
  *(a3 + 26) = self->_residencyPercentage30Hz;
  *(a3 + 31) |= 0x100000u;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v22 = *MEMORY[0x29EDCA608];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  has = self->_has;
  if (*&has)
  {
    *(v5 + 8) = self->_timestamp;
    *(v5 + 124) |= 1u;
    has = self->_has;
    if ((*&has & 0x4000) == 0)
    {
LABEL_3:
      if ((*&has & 0x1000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_38;
    }
  }

  else if ((*&has & 0x4000) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 80) = self->_dispOnCount;
  *(v5 + 124) |= 0x4000u;
  has = self->_has;
  if ((*&has & 0x1000000) == 0)
  {
LABEL_4:
    if ((*&has & 0x80000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_39;
  }

LABEL_38:
  *(v5 + 120) = self->_unpluggedDisplayOnDuration;
  *(v5 + 124) |= 0x1000000u;
  has = self->_has;
  if ((*&has & 0x80000) == 0)
  {
LABEL_5:
    if ((*&has & 0x40000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_40;
  }

LABEL_39:
  *(v5 + 100) = self->_pluggedDisplayOnDuration;
  *(v5 + 124) |= 0x80000u;
  has = self->_has;
  if ((*&has & 0x40000) == 0)
  {
LABEL_6:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_41;
  }

LABEL_40:
  *(v5 + 96) = self->_mieDuration;
  *(v5 + 124) |= 0x40000u;
  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_7:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_42;
  }

LABEL_41:
  *(v5 + 92) = self->_mieCount;
  *(v5 + 124) |= 0x20000u;
  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_8:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_43;
  }

LABEL_42:
  *(v5 + 84) = self->_displayIdlePercentage;
  *(v5 + 124) |= 0x8000u;
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_9:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_44;
  }

LABEL_43:
  *(v5 + 28) = self->_alsAutoBrightnessCurveE1;
  *(v5 + 124) |= 0x10u;
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_10:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_45;
  }

LABEL_44:
  *(v5 + 48) = self->_alsAutoBrightnessCurveL1;
  *(v5 + 124) |= 0x200u;
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_11:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_46;
  }

LABEL_45:
  *(v5 + 32) = self->_alsAutoBrightnessCurveE2;
  *(v5 + 124) |= 0x20u;
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_12:
    if ((*&has & 4) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_47;
  }

LABEL_46:
  *(v5 + 52) = self->_alsAutoBrightnessCurveL2;
  *(v5 + 124) |= 0x400u;
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_13:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_48;
  }

LABEL_47:
  *(v5 + 20) = self->_alsAutoBrightnessCurveE0A;
  *(v5 + 124) |= 4u;
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_14:
    if ((*&has & 8) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_49;
  }

LABEL_48:
  *(v5 + 40) = self->_alsAutoBrightnessCurveL0A;
  *(v5 + 124) |= 0x80u;
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_15:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_50;
  }

LABEL_49:
  *(v5 + 24) = self->_alsAutoBrightnessCurveE0B;
  *(v5 + 124) |= 8u;
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_16:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_51;
  }

LABEL_50:
  *(v5 + 44) = self->_alsAutoBrightnessCurveL0B;
  *(v5 + 124) |= 0x100u;
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_17:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_52;
  }

LABEL_51:
  *(v5 + 36) = self->_alsAutoBrightnessCurveEdynth;
  *(v5 + 124) |= 0x40u;
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_18:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_53;
  }

LABEL_52:
  *(v5 + 60) = self->_alsAutoBrightnessSlider;
  *(v5 + 124) |= 0x1000u;
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_19:
    if ((*&has & 2) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_54;
  }

LABEL_53:
  *(v5 + 56) = self->_alsAutoBrightnessLux;
  *(v5 + 124) |= 0x800u;
  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_20:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

LABEL_54:
  *(v5 + 16) = self->_alsAutoBrightnessChangeCount;
  *(v5 + 124) |= 2u;
  if ((*&self->_has & 0x2000) != 0)
  {
LABEL_21:
    *(v5 + 64) = self->_alsBrightnessEnableCnt;
    *(v5 + 124) |= 0x2000u;
  }

LABEL_22:
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  backlightBuckets = self->_backlightBuckets;
  v9 = [(NSMutableArray *)backlightBuckets countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(backlightBuckets);
        }

        v13 = [*(*(&v17 + 1) + 8 * i) copyWithZone:a3];
        [v6 addBacklightBucket:v13];
      }

      v10 = [(NSMutableArray *)backlightBuckets countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }

  v14 = self->_has;
  if ((*&v14 & 0x800000) != 0)
  {
    v6[29] = self->_totalDisplayPower;
    v6[31] |= 0x800000u;
    v14 = self->_has;
    if ((*&v14 & 0x400000) == 0)
    {
LABEL_31:
      if ((*&v14 & 0x10000) == 0)
      {
        goto LABEL_32;
      }

      goto LABEL_58;
    }
  }

  else if ((*&v14 & 0x400000) == 0)
  {
    goto LABEL_31;
  }

  v6[28] = self->_totalBacklightPower;
  v6[31] |= 0x400000u;
  v14 = self->_has;
  if ((*&v14 & 0x10000) == 0)
  {
LABEL_32:
    if ((*&v14 & 0x200000) == 0)
    {
      goto LABEL_33;
    }

LABEL_59:
    v6[27] = self->_residencyPercentage60Hz;
    v6[31] |= 0x200000u;
    if ((*&self->_has & 0x100000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_34;
  }

LABEL_58:
  v6[22] = self->_frameRateResidencyPercentage;
  v6[31] |= 0x10000u;
  v14 = self->_has;
  if ((*&v14 & 0x200000) != 0)
  {
    goto LABEL_59;
  }

LABEL_33:
  if ((*&v14 & 0x100000) != 0)
  {
LABEL_34:
    v6[26] = self->_residencyPercentage30Hz;
    v6[31] |= 0x100000u;
  }

LABEL_35:
  v15 = *MEMORY[0x29EDCA608];
  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    has = self->_has;
    v7 = *(a3 + 31);
    if (*&has)
    {
      if ((v7 & 1) == 0 || self->_timestamp != *(a3 + 1))
      {
        goto LABEL_129;
      }
    }

    else if (v7)
    {
LABEL_129:
      LOBYTE(v5) = 0;
      return v5;
    }

    if ((*&has & 0x4000) != 0)
    {
      if ((v7 & 0x4000) == 0 || self->_dispOnCount != *(a3 + 20))
      {
        goto LABEL_129;
      }
    }

    else if ((v7 & 0x4000) != 0)
    {
      goto LABEL_129;
    }

    if ((*&has & 0x1000000) != 0)
    {
      if ((v7 & 0x1000000) == 0 || self->_unpluggedDisplayOnDuration != *(a3 + 30))
      {
        goto LABEL_129;
      }
    }

    else if ((v7 & 0x1000000) != 0)
    {
      goto LABEL_129;
    }

    if ((*&has & 0x80000) != 0)
    {
      if ((v7 & 0x80000) == 0 || self->_pluggedDisplayOnDuration != *(a3 + 25))
      {
        goto LABEL_129;
      }
    }

    else if ((v7 & 0x80000) != 0)
    {
      goto LABEL_129;
    }

    if ((*&has & 0x40000) != 0)
    {
      if ((v7 & 0x40000) == 0 || self->_mieDuration != *(a3 + 24))
      {
        goto LABEL_129;
      }
    }

    else if ((v7 & 0x40000) != 0)
    {
      goto LABEL_129;
    }

    if ((*&has & 0x20000) != 0)
    {
      if ((v7 & 0x20000) == 0 || self->_mieCount != *(a3 + 23))
      {
        goto LABEL_129;
      }
    }

    else if ((v7 & 0x20000) != 0)
    {
      goto LABEL_129;
    }

    if ((*&has & 0x8000) != 0)
    {
      if ((v7 & 0x8000) == 0 || self->_displayIdlePercentage != *(a3 + 21))
      {
        goto LABEL_129;
      }
    }

    else if ((v7 & 0x8000) != 0)
    {
      goto LABEL_129;
    }

    if ((*&has & 0x10) != 0)
    {
      if ((v7 & 0x10) == 0 || self->_alsAutoBrightnessCurveE1 != *(a3 + 7))
      {
        goto LABEL_129;
      }
    }

    else if ((v7 & 0x10) != 0)
    {
      goto LABEL_129;
    }

    if ((*&has & 0x200) != 0)
    {
      if ((v7 & 0x200) == 0 || self->_alsAutoBrightnessCurveL1 != *(a3 + 12))
      {
        goto LABEL_129;
      }
    }

    else if ((v7 & 0x200) != 0)
    {
      goto LABEL_129;
    }

    if ((*&has & 0x20) != 0)
    {
      if ((v7 & 0x20) == 0 || self->_alsAutoBrightnessCurveE2 != *(a3 + 8))
      {
        goto LABEL_129;
      }
    }

    else if ((v7 & 0x20) != 0)
    {
      goto LABEL_129;
    }

    if ((*&has & 0x400) != 0)
    {
      if ((v7 & 0x400) == 0 || self->_alsAutoBrightnessCurveL2 != *(a3 + 13))
      {
        goto LABEL_129;
      }
    }

    else if ((v7 & 0x400) != 0)
    {
      goto LABEL_129;
    }

    if ((*&has & 4) != 0)
    {
      if ((v7 & 4) == 0 || self->_alsAutoBrightnessCurveE0A != *(a3 + 5))
      {
        goto LABEL_129;
      }
    }

    else if ((v7 & 4) != 0)
    {
      goto LABEL_129;
    }

    if ((*&has & 0x80) != 0)
    {
      if ((v7 & 0x80) == 0 || self->_alsAutoBrightnessCurveL0A != *(a3 + 10))
      {
        goto LABEL_129;
      }
    }

    else if ((v7 & 0x80) != 0)
    {
      goto LABEL_129;
    }

    if ((*&has & 8) != 0)
    {
      if ((v7 & 8) == 0 || self->_alsAutoBrightnessCurveE0B != *(a3 + 6))
      {
        goto LABEL_129;
      }
    }

    else if ((v7 & 8) != 0)
    {
      goto LABEL_129;
    }

    if ((*&has & 0x100) != 0)
    {
      if ((v7 & 0x100) == 0 || self->_alsAutoBrightnessCurveL0B != *(a3 + 11))
      {
        goto LABEL_129;
      }
    }

    else if ((v7 & 0x100) != 0)
    {
      goto LABEL_129;
    }

    if ((*&has & 0x40) != 0)
    {
      if ((v7 & 0x40) == 0 || self->_alsAutoBrightnessCurveEdynth != *(a3 + 9))
      {
        goto LABEL_129;
      }
    }

    else if ((v7 & 0x40) != 0)
    {
      goto LABEL_129;
    }

    if ((*&has & 0x1000) != 0)
    {
      if ((v7 & 0x1000) == 0 || self->_alsAutoBrightnessSlider != *(a3 + 15))
      {
        goto LABEL_129;
      }
    }

    else if ((v7 & 0x1000) != 0)
    {
      goto LABEL_129;
    }

    if ((*&has & 0x800) != 0)
    {
      if ((v7 & 0x800) == 0 || self->_alsAutoBrightnessLux != *(a3 + 14))
      {
        goto LABEL_129;
      }
    }

    else if ((v7 & 0x800) != 0)
    {
      goto LABEL_129;
    }

    if ((*&has & 2) != 0)
    {
      if ((v7 & 2) == 0 || self->_alsAutoBrightnessChangeCount != *(a3 + 4))
      {
        goto LABEL_129;
      }
    }

    else if ((v7 & 2) != 0)
    {
      goto LABEL_129;
    }

    if ((*&has & 0x2000) != 0)
    {
      if ((v7 & 0x2000) == 0 || self->_alsBrightnessEnableCnt != *(a3 + 16))
      {
        goto LABEL_129;
      }
    }

    else if ((v7 & 0x2000) != 0)
    {
      goto LABEL_129;
    }

    backlightBuckets = self->_backlightBuckets;
    if (backlightBuckets | *(a3 + 9))
    {
      v5 = [(NSMutableArray *)backlightBuckets isEqual:?];
      if (!v5)
      {
        return v5;
      }

      has = self->_has;
    }

    v9 = *(a3 + 31);
    if ((*&has & 0x800000) != 0)
    {
      if ((v9 & 0x800000) == 0 || self->_totalDisplayPower != *(a3 + 29))
      {
        goto LABEL_129;
      }
    }

    else if ((v9 & 0x800000) != 0)
    {
      goto LABEL_129;
    }

    if ((*&has & 0x400000) != 0)
    {
      if ((v9 & 0x400000) == 0 || self->_totalBacklightPower != *(a3 + 28))
      {
        goto LABEL_129;
      }
    }

    else if ((v9 & 0x400000) != 0)
    {
      goto LABEL_129;
    }

    if ((*&has & 0x10000) != 0)
    {
      if ((v9 & 0x10000) == 0 || self->_frameRateResidencyPercentage != *(a3 + 22))
      {
        goto LABEL_129;
      }
    }

    else if ((v9 & 0x10000) != 0)
    {
      goto LABEL_129;
    }

    if ((*&has & 0x200000) != 0)
    {
      if ((v9 & 0x200000) == 0 || self->_residencyPercentage60Hz != *(a3 + 27))
      {
        goto LABEL_129;
      }
    }

    else if ((v9 & 0x200000) != 0)
    {
      goto LABEL_129;
    }

    LOBYTE(v5) = (v9 & 0x100000) == 0;
    if ((*&has & 0x100000) != 0)
    {
      if ((v9 & 0x100000) == 0 || self->_residencyPercentage30Hz != *(a3 + 26))
      {
        goto LABEL_129;
      }

      LOBYTE(v5) = 1;
    }
  }

  return v5;
}

- (unint64_t)hash
{
  has = self->_has;
  if (*&has)
  {
    v31 = 2654435761u * self->_timestamp;
    if ((*&has & 0x4000) != 0)
    {
LABEL_3:
      v30 = 2654435761 * self->_dispOnCount;
      if ((*&has & 0x1000000) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_24;
    }
  }

  else
  {
    v31 = 0;
    if ((*&has & 0x4000) != 0)
    {
      goto LABEL_3;
    }
  }

  v30 = 0;
  if ((*&has & 0x1000000) != 0)
  {
LABEL_4:
    v29 = 2654435761 * self->_unpluggedDisplayOnDuration;
    if ((*&has & 0x80000) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_25;
  }

LABEL_24:
  v29 = 0;
  if ((*&has & 0x80000) != 0)
  {
LABEL_5:
    v28 = 2654435761 * self->_pluggedDisplayOnDuration;
    if ((*&has & 0x40000) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_26;
  }

LABEL_25:
  v28 = 0;
  if ((*&has & 0x40000) != 0)
  {
LABEL_6:
    v27 = 2654435761 * self->_mieDuration;
    if ((*&has & 0x20000) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_27;
  }

LABEL_26:
  v27 = 0;
  if ((*&has & 0x20000) != 0)
  {
LABEL_7:
    v26 = 2654435761 * self->_mieCount;
    if ((*&has & 0x8000) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_28;
  }

LABEL_27:
  v26 = 0;
  if ((*&has & 0x8000) != 0)
  {
LABEL_8:
    v25 = 2654435761 * self->_displayIdlePercentage;
    if ((*&has & 0x10) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_29;
  }

LABEL_28:
  v25 = 0;
  if ((*&has & 0x10) != 0)
  {
LABEL_9:
    v24 = 2654435761 * self->_alsAutoBrightnessCurveE1;
    if ((*&has & 0x200) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_30;
  }

LABEL_29:
  v24 = 0;
  if ((*&has & 0x200) != 0)
  {
LABEL_10:
    v23 = 2654435761 * self->_alsAutoBrightnessCurveL1;
    if ((*&has & 0x20) != 0)
    {
      goto LABEL_11;
    }

    goto LABEL_31;
  }

LABEL_30:
  v23 = 0;
  if ((*&has & 0x20) != 0)
  {
LABEL_11:
    v22 = 2654435761 * self->_alsAutoBrightnessCurveE2;
    if ((*&has & 0x400) != 0)
    {
      goto LABEL_12;
    }

    goto LABEL_32;
  }

LABEL_31:
  v22 = 0;
  if ((*&has & 0x400) != 0)
  {
LABEL_12:
    v21 = 2654435761 * self->_alsAutoBrightnessCurveL2;
    if ((*&has & 4) != 0)
    {
      goto LABEL_13;
    }

    goto LABEL_33;
  }

LABEL_32:
  v21 = 0;
  if ((*&has & 4) != 0)
  {
LABEL_13:
    v20 = 2654435761 * self->_alsAutoBrightnessCurveE0A;
    if ((*&has & 0x80) != 0)
    {
      goto LABEL_14;
    }

    goto LABEL_34;
  }

LABEL_33:
  v20 = 0;
  if ((*&has & 0x80) != 0)
  {
LABEL_14:
    v19 = 2654435761 * self->_alsAutoBrightnessCurveL0A;
    if ((*&has & 8) != 0)
    {
      goto LABEL_15;
    }

    goto LABEL_35;
  }

LABEL_34:
  v19 = 0;
  if ((*&has & 8) != 0)
  {
LABEL_15:
    v4 = 2654435761 * self->_alsAutoBrightnessCurveE0B;
    if ((*&has & 0x100) != 0)
    {
      goto LABEL_16;
    }

    goto LABEL_36;
  }

LABEL_35:
  v4 = 0;
  if ((*&has & 0x100) != 0)
  {
LABEL_16:
    v5 = 2654435761 * self->_alsAutoBrightnessCurveL0B;
    if ((*&has & 0x40) != 0)
    {
      goto LABEL_17;
    }

    goto LABEL_37;
  }

LABEL_36:
  v5 = 0;
  if ((*&has & 0x40) != 0)
  {
LABEL_17:
    v6 = 2654435761 * self->_alsAutoBrightnessCurveEdynth;
    if ((*&has & 0x1000) != 0)
    {
      goto LABEL_18;
    }

    goto LABEL_38;
  }

LABEL_37:
  v6 = 0;
  if ((*&has & 0x1000) != 0)
  {
LABEL_18:
    v7 = 2654435761 * self->_alsAutoBrightnessSlider;
    if ((*&has & 0x800) != 0)
    {
      goto LABEL_19;
    }

    goto LABEL_39;
  }

LABEL_38:
  v7 = 0;
  if ((*&has & 0x800) != 0)
  {
LABEL_19:
    v8 = 2654435761 * self->_alsAutoBrightnessLux;
    if ((*&has & 2) != 0)
    {
      goto LABEL_20;
    }

LABEL_40:
    v9 = 0;
    if ((*&has & 0x2000) != 0)
    {
      goto LABEL_21;
    }

    goto LABEL_41;
  }

LABEL_39:
  v8 = 0;
  if ((*&has & 2) == 0)
  {
    goto LABEL_40;
  }

LABEL_20:
  v9 = 2654435761 * self->_alsAutoBrightnessChangeCount;
  if ((*&has & 0x2000) != 0)
  {
LABEL_21:
    v10 = 2654435761 * self->_alsBrightnessEnableCnt;
    goto LABEL_42;
  }

LABEL_41:
  v10 = 0;
LABEL_42:
  v11 = [(NSMutableArray *)self->_backlightBuckets hash];
  v12 = self->_has;
  if ((*&v12 & 0x800000) != 0)
  {
    v13 = 2654435761 * self->_totalDisplayPower;
    if ((*&v12 & 0x400000) != 0)
    {
LABEL_44:
      v14 = 2654435761 * self->_totalBacklightPower;
      if ((*&v12 & 0x10000) != 0)
      {
        goto LABEL_45;
      }

      goto LABEL_50;
    }
  }

  else
  {
    v13 = 0;
    if ((*&v12 & 0x400000) != 0)
    {
      goto LABEL_44;
    }
  }

  v14 = 0;
  if ((*&v12 & 0x10000) != 0)
  {
LABEL_45:
    v15 = 2654435761 * self->_frameRateResidencyPercentage;
    if ((*&v12 & 0x200000) != 0)
    {
      goto LABEL_46;
    }

LABEL_51:
    v16 = 0;
    if ((*&v12 & 0x100000) != 0)
    {
      goto LABEL_47;
    }

LABEL_52:
    v17 = 0;
    return v30 ^ v31 ^ v29 ^ v28 ^ v27 ^ v26 ^ v25 ^ v24 ^ v23 ^ v22 ^ v21 ^ v20 ^ v19 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v11;
  }

LABEL_50:
  v15 = 0;
  if ((*&v12 & 0x200000) == 0)
  {
    goto LABEL_51;
  }

LABEL_46:
  v16 = 2654435761 * self->_residencyPercentage60Hz;
  if ((*&v12 & 0x100000) == 0)
  {
    goto LABEL_52;
  }

LABEL_47:
  v17 = 2654435761 * self->_residencyPercentage30Hz;
  return v30 ^ v31 ^ v29 ^ v28 ^ v27 ^ v26 ^ v25 ^ v24 ^ v23 ^ v22 ^ v21 ^ v20 ^ v19 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v11;
}

- (void)mergeFrom:(id)a3
{
  v18 = *MEMORY[0x29EDCA608];
  v5 = *(a3 + 31);
  if (v5)
  {
    self->_timestamp = *(a3 + 1);
    *&self->_has |= 1u;
    v5 = *(a3 + 31);
    if ((v5 & 0x4000) == 0)
    {
LABEL_3:
      if ((v5 & 0x1000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_38;
    }
  }

  else if ((v5 & 0x4000) == 0)
  {
    goto LABEL_3;
  }

  self->_dispOnCount = *(a3 + 20);
  *&self->_has |= 0x4000u;
  v5 = *(a3 + 31);
  if ((v5 & 0x1000000) == 0)
  {
LABEL_4:
    if ((v5 & 0x80000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_39;
  }

LABEL_38:
  self->_unpluggedDisplayOnDuration = *(a3 + 30);
  *&self->_has |= 0x1000000u;
  v5 = *(a3 + 31);
  if ((v5 & 0x80000) == 0)
  {
LABEL_5:
    if ((v5 & 0x40000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_40;
  }

LABEL_39:
  self->_pluggedDisplayOnDuration = *(a3 + 25);
  *&self->_has |= 0x80000u;
  v5 = *(a3 + 31);
  if ((v5 & 0x40000) == 0)
  {
LABEL_6:
    if ((v5 & 0x20000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_41;
  }

LABEL_40:
  self->_mieDuration = *(a3 + 24);
  *&self->_has |= 0x40000u;
  v5 = *(a3 + 31);
  if ((v5 & 0x20000) == 0)
  {
LABEL_7:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_42;
  }

LABEL_41:
  self->_mieCount = *(a3 + 23);
  *&self->_has |= 0x20000u;
  v5 = *(a3 + 31);
  if ((v5 & 0x8000) == 0)
  {
LABEL_8:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_43;
  }

LABEL_42:
  self->_displayIdlePercentage = *(a3 + 21);
  *&self->_has |= 0x8000u;
  v5 = *(a3 + 31);
  if ((v5 & 0x10) == 0)
  {
LABEL_9:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_44;
  }

LABEL_43:
  self->_alsAutoBrightnessCurveE1 = *(a3 + 7);
  *&self->_has |= 0x10u;
  v5 = *(a3 + 31);
  if ((v5 & 0x200) == 0)
  {
LABEL_10:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_45;
  }

LABEL_44:
  self->_alsAutoBrightnessCurveL1 = *(a3 + 12);
  *&self->_has |= 0x200u;
  v5 = *(a3 + 31);
  if ((v5 & 0x20) == 0)
  {
LABEL_11:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_46;
  }

LABEL_45:
  self->_alsAutoBrightnessCurveE2 = *(a3 + 8);
  *&self->_has |= 0x20u;
  v5 = *(a3 + 31);
  if ((v5 & 0x400) == 0)
  {
LABEL_12:
    if ((v5 & 4) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_47;
  }

LABEL_46:
  self->_alsAutoBrightnessCurveL2 = *(a3 + 13);
  *&self->_has |= 0x400u;
  v5 = *(a3 + 31);
  if ((v5 & 4) == 0)
  {
LABEL_13:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_48;
  }

LABEL_47:
  self->_alsAutoBrightnessCurveE0A = *(a3 + 5);
  *&self->_has |= 4u;
  v5 = *(a3 + 31);
  if ((v5 & 0x80) == 0)
  {
LABEL_14:
    if ((v5 & 8) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_49;
  }

LABEL_48:
  self->_alsAutoBrightnessCurveL0A = *(a3 + 10);
  *&self->_has |= 0x80u;
  v5 = *(a3 + 31);
  if ((v5 & 8) == 0)
  {
LABEL_15:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_50;
  }

LABEL_49:
  self->_alsAutoBrightnessCurveE0B = *(a3 + 6);
  *&self->_has |= 8u;
  v5 = *(a3 + 31);
  if ((v5 & 0x100) == 0)
  {
LABEL_16:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_51;
  }

LABEL_50:
  self->_alsAutoBrightnessCurveL0B = *(a3 + 11);
  *&self->_has |= 0x100u;
  v5 = *(a3 + 31);
  if ((v5 & 0x40) == 0)
  {
LABEL_17:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_52;
  }

LABEL_51:
  self->_alsAutoBrightnessCurveEdynth = *(a3 + 9);
  *&self->_has |= 0x40u;
  v5 = *(a3 + 31);
  if ((v5 & 0x1000) == 0)
  {
LABEL_18:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_53;
  }

LABEL_52:
  self->_alsAutoBrightnessSlider = *(a3 + 15);
  *&self->_has |= 0x1000u;
  v5 = *(a3 + 31);
  if ((v5 & 0x800) == 0)
  {
LABEL_19:
    if ((v5 & 2) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_54;
  }

LABEL_53:
  self->_alsAutoBrightnessLux = *(a3 + 14);
  *&self->_has |= 0x800u;
  v5 = *(a3 + 31);
  if ((v5 & 2) == 0)
  {
LABEL_20:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

LABEL_54:
  self->_alsAutoBrightnessChangeCount = *(a3 + 4);
  *&self->_has |= 2u;
  if ((*(a3 + 31) & 0x2000) != 0)
  {
LABEL_21:
    self->_alsBrightnessEnableCnt = *(a3 + 16);
    *&self->_has |= 0x2000u;
  }

LABEL_22:
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = *(a3 + 9);
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(AWDPowerDisplayBacklightMetrics *)self addBacklightBucket:*(*(&v13 + 1) + 8 * i)];
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  v11 = *(a3 + 31);
  if ((v11 & 0x800000) != 0)
  {
    self->_totalDisplayPower = *(a3 + 29);
    *&self->_has |= 0x800000u;
    v11 = *(a3 + 31);
    if ((v11 & 0x400000) == 0)
    {
LABEL_31:
      if ((v11 & 0x10000) == 0)
      {
        goto LABEL_32;
      }

      goto LABEL_58;
    }
  }

  else if ((v11 & 0x400000) == 0)
  {
    goto LABEL_31;
  }

  self->_totalBacklightPower = *(a3 + 28);
  *&self->_has |= 0x400000u;
  v11 = *(a3 + 31);
  if ((v11 & 0x10000) == 0)
  {
LABEL_32:
    if ((v11 & 0x200000) == 0)
    {
      goto LABEL_33;
    }

LABEL_59:
    self->_residencyPercentage60Hz = *(a3 + 27);
    *&self->_has |= 0x200000u;
    if ((*(a3 + 31) & 0x100000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_34;
  }

LABEL_58:
  self->_frameRateResidencyPercentage = *(a3 + 22);
  *&self->_has |= 0x10000u;
  v11 = *(a3 + 31);
  if ((v11 & 0x200000) != 0)
  {
    goto LABEL_59;
  }

LABEL_33:
  if ((v11 & 0x100000) != 0)
  {
LABEL_34:
    self->_residencyPercentage30Hz = *(a3 + 26);
    *&self->_has |= 0x100000u;
  }

LABEL_35:
  v12 = *MEMORY[0x29EDCA608];
}

@end