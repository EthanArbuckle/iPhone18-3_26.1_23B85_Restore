@interface AWDSymptomsCellularSDMAdviceChange
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsNewAdvice:(id)a3;
- (int)StringAsNewAdviceCause:(id)a3;
- (int)StringAsPreviousAdvice:(id)a3;
- (int)StringAsPreviousAdviceCause:(id)a3;
- (int)StringAsPreviousAdviceInitialCause:(id)a3;
- (int)newAdvice;
- (int)newAdviceCause;
- (int)previousAdvice;
- (int)previousAdviceCause;
- (int)previousAdviceInitialCause;
- (unint64_t)hash;
- (void)addAdviceInitiatingNames:(id)a3;
- (void)addOldAdvicePartipants:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasDlSubsequentThroughputBytesPerSec:(BOOL)a3;
- (void)setHasNewAdvice:(BOOL)a3;
- (void)setHasNewAdviceAdditionalFlags:(BOOL)a3;
- (void)setHasNewAdviceCause:(BOOL)a3;
- (void)setHasNewScreenIsDark:(BOOL)a3;
- (void)setHasNewScreenIsLocked:(BOOL)a3;
- (void)setHasPreviousAdvice:(BOOL)a3;
- (void)setHasPreviousAdviceCause:(BOOL)a3;
- (void)setHasPreviousAdviceDuration:(BOOL)a3;
- (void)setHasPreviousAdviceInitialCause:(BOOL)a3;
- (void)setHasPreviousScreenIsDark:(BOOL)a3;
- (void)setHasPreviousScreenIsLocked:(BOOL)a3;
- (void)setHasTimestamp:(BOOL)a3;
- (void)setHasUlPriorThroughputBytesPerSec:(BOOL)a3;
- (void)setHasUlSubsequentThroughputBytesPerSec:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDSymptomsCellularSDMAdviceChange

- (void)setHasTimestamp:(BOOL)a3
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

- (int)previousAdvice
{
  if ((*&self->_has & 0x200) != 0)
  {
    return self->_previousAdvice;
  }

  else
  {
    return 0;
  }
}

- (void)setHasPreviousAdvice:(BOOL)a3
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

- (int)StringAsPreviousAdvice:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"ThroughputLowConfidenceLow"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"ThroughputHighConfidenceLow"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"ThroughputLowConfidenceHigh"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"ThroughputHighConfidenceHigh"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"ThroughputAdviceDisabled"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)previousAdviceCause
{
  if ((*&self->_has & 0x400) != 0)
  {
    return self->_previousAdviceCause;
  }

  else
  {
    return 1;
  }
}

- (void)setHasPreviousAdviceCause:(BOOL)a3
{
  if (a3)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFBFF | v3;
}

- (int)StringAsPreviousAdviceCause:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"LargeTransfer"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"AVFlow"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"HighInterfaceUse"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"MediaserverdAssetDownload"])
  {
    v4 = 8;
  }

  else if ([v3 isEqualToString:@"SceenOnDefault"])
  {
    v4 = 16;
  }

  else if ([v3 isEqualToString:@"SceenDarkDefault"])
  {
    v4 = 32;
  }

  else if ([v3 isEqualToString:@"SceenLockedDefault"])
  {
    v4 = 64;
  }

  else if ([v3 isEqualToString:@"AdminOverride"])
  {
    v4 = 128;
  }

  else if ([v3 isEqualToString:@"BackgroundTransfer"])
  {
    v4 = 256;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)setHasPreviousAdviceDuration:(BOOL)a3
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

- (void)setHasUlPriorThroughputBytesPerSec:(BOOL)a3
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

- (int)newAdvice
{
  if ((*&self->_has & 0x80) != 0)
  {
    return self->_newAdvice;
  }

  else
  {
    return 0;
  }
}

- (void)setHasNewAdvice:(BOOL)a3
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

- (int)StringAsNewAdvice:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"ThroughputLowConfidenceLow"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"ThroughputHighConfidenceLow"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"ThroughputLowConfidenceHigh"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"ThroughputHighConfidenceHigh"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"ThroughputAdviceDisabled"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)newAdviceCause
{
  if ((*&self->_has & 0x100) != 0)
  {
    return self->_newAdviceCause;
  }

  else
  {
    return 1;
  }
}

- (void)setHasNewAdviceCause:(BOOL)a3
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

- (int)StringAsNewAdviceCause:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"LargeTransfer"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"AVFlow"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"HighInterfaceUse"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"MediaserverdAssetDownload"])
  {
    v4 = 8;
  }

  else if ([v3 isEqualToString:@"SceenOnDefault"])
  {
    v4 = 16;
  }

  else if ([v3 isEqualToString:@"SceenDarkDefault"])
  {
    v4 = 32;
  }

  else if ([v3 isEqualToString:@"SceenLockedDefault"])
  {
    v4 = 64;
  }

  else if ([v3 isEqualToString:@"AdminOverride"])
  {
    v4 = 128;
  }

  else if ([v3 isEqualToString:@"BackgroundTransfer"])
  {
    v4 = 256;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)setHasNewAdviceAdditionalFlags:(BOOL)a3
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

- (void)setHasDlSubsequentThroughputBytesPerSec:(BOOL)a3
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

- (void)setHasUlSubsequentThroughputBytesPerSec:(BOOL)a3
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

- (void)addAdviceInitiatingNames:(id)a3
{
  v4 = a3;
  adviceInitiatingNames = self->_adviceInitiatingNames;
  v8 = v4;
  if (!adviceInitiatingNames)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_adviceInitiatingNames;
    self->_adviceInitiatingNames = v6;

    v4 = v8;
    adviceInitiatingNames = self->_adviceInitiatingNames;
  }

  [(NSMutableArray *)adviceInitiatingNames addObject:v4];
}

- (void)addOldAdvicePartipants:(id)a3
{
  v4 = a3;
  oldAdvicePartipants = self->_oldAdvicePartipants;
  v8 = v4;
  if (!oldAdvicePartipants)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_oldAdvicePartipants;
    self->_oldAdvicePartipants = v6;

    v4 = v8;
    oldAdvicePartipants = self->_oldAdvicePartipants;
  }

  [(NSMutableArray *)oldAdvicePartipants addObject:v4];
}

- (void)setHasPreviousScreenIsDark:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x4000;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xBFFF | v3;
}

- (void)setHasPreviousScreenIsLocked:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x8000;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = v3 & 0x8000 | *&self->_has & 0x7FFF;
}

- (void)setHasNewScreenIsDark:(BOOL)a3
{
  if (a3)
  {
    v3 = 4096;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEFFF | v3;
}

- (void)setHasNewScreenIsLocked:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x2000;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDFFF | v3;
}

- (int)previousAdviceInitialCause
{
  if ((*&self->_has & 0x800) != 0)
  {
    return self->_previousAdviceInitialCause;
  }

  else
  {
    return 1;
  }
}

- (void)setHasPreviousAdviceInitialCause:(BOOL)a3
{
  if (a3)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7FF | v3;
}

- (int)StringAsPreviousAdviceInitialCause:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"LargeTransfer"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"AVFlow"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"HighInterfaceUse"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"MediaserverdAssetDownload"])
  {
    v4 = 8;
  }

  else if ([v3 isEqualToString:@"SceenOnDefault"])
  {
    v4 = 16;
  }

  else if ([v3 isEqualToString:@"SceenDarkDefault"])
  {
    v4 = 32;
  }

  else if ([v3 isEqualToString:@"SceenLockedDefault"])
  {
    v4 = 64;
  }

  else if ([v3 isEqualToString:@"AdminOverride"])
  {
    v4 = 128;
  }

  else if ([v3 isEqualToString:@"BackgroundTransfer"])
  {
    v4 = 256;
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
  v8.super_class = AWDSymptomsCellularSDMAdviceChange;
  v4 = [(AWDSymptomsCellularSDMAdviceChange *)&v8 description];
  v5 = [(AWDSymptomsCellularSDMAdviceChange *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v42 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if ((has & 0x10) != 0)
  {
    v15 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_timestamp];
    [v3 setObject:v15 forKey:@"timestamp"];

    has = self->_has;
    if ((has & 0x200) == 0)
    {
LABEL_3:
      if ((has & 0x400) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_45;
    }
  }

  else if ((*&self->_has & 0x200) == 0)
  {
    goto LABEL_3;
  }

  previousAdvice = self->_previousAdvice;
  if (previousAdvice >= 5)
  {
    v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_previousAdvice];
  }

  else
  {
    v17 = off_27898EF68[previousAdvice];
  }

  [v3 setObject:v17 forKey:@"previousAdvice"];

  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_88;
  }

LABEL_45:
  previousAdviceCause = self->_previousAdviceCause;
  if (previousAdviceCause <= 15)
  {
    if (previousAdviceCause > 3)
    {
      if (previousAdviceCause == 4)
      {
        v25 = @"HighInterfaceUse";
        goto LABEL_87;
      }

      if (previousAdviceCause == 8)
      {
        v25 = @"MediaserverdAssetDownload";
        goto LABEL_87;
      }
    }

    else
    {
      if (previousAdviceCause == 1)
      {
        v25 = @"LargeTransfer";
        goto LABEL_87;
      }

      if (previousAdviceCause == 2)
      {
        v25 = @"AVFlow";
        goto LABEL_87;
      }
    }
  }

  else if (previousAdviceCause <= 63)
  {
    if (previousAdviceCause == 16)
    {
      v25 = @"SceenOnDefault";
      goto LABEL_87;
    }

    if (previousAdviceCause == 32)
    {
      v25 = @"SceenDarkDefault";
      goto LABEL_87;
    }
  }

  else
  {
    switch(previousAdviceCause)
    {
      case 64:
        v25 = @"SceenLockedDefault";
        goto LABEL_87;
      case 128:
        v25 = @"AdminOverride";
        goto LABEL_87;
      case 256:
        v25 = @"BackgroundTransfer";
        goto LABEL_87;
    }
  }

  v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_previousAdviceCause];
LABEL_87:
  [v3 setObject:v25 forKey:@"previousAdviceCause"];

  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_5:
    if ((has & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_89;
  }

LABEL_88:
  v28 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_previousAdviceDuration];
  [v3 setObject:v28 forKey:@"previousAdviceDuration"];

  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_6:
    if ((has & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_90;
  }

LABEL_89:
  v29 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_dlPriorThroughputBytesPerSec];
  [v3 setObject:v29 forKey:@"dlPriorThroughputBytesPerSec"];

  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_7:
    if ((has & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_91;
  }

LABEL_90:
  v30 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_ulPriorThroughputBytesPerSec];
  [v3 setObject:v30 forKey:@"ulPriorThroughputBytesPerSec"];

  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_8:
    if ((has & 0x100) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_95;
  }

LABEL_91:
  newAdvice = self->_newAdvice;
  if (newAdvice >= 5)
  {
    v32 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_newAdvice];
  }

  else
  {
    v32 = off_27898EF68[newAdvice];
  }

  [v3 setObject:v32 forKey:@"newAdvice"];

  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_9:
    if ((has & 4) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_118;
  }

LABEL_95:
  newAdviceCause = self->_newAdviceCause;
  if (newAdviceCause <= 15)
  {
    if (newAdviceCause > 3)
    {
      if (newAdviceCause == 4)
      {
        v34 = @"HighInterfaceUse";
        goto LABEL_117;
      }

      if (newAdviceCause == 8)
      {
        v34 = @"MediaserverdAssetDownload";
        goto LABEL_117;
      }
    }

    else
    {
      if (newAdviceCause == 1)
      {
        v34 = @"LargeTransfer";
        goto LABEL_117;
      }

      if (newAdviceCause == 2)
      {
        v34 = @"AVFlow";
        goto LABEL_117;
      }
    }
  }

  else if (newAdviceCause <= 63)
  {
    if (newAdviceCause == 16)
    {
      v34 = @"SceenOnDefault";
      goto LABEL_117;
    }

    if (newAdviceCause == 32)
    {
      v34 = @"SceenDarkDefault";
      goto LABEL_117;
    }
  }

  else
  {
    switch(newAdviceCause)
    {
      case 64:
        v34 = @"SceenLockedDefault";
        goto LABEL_117;
      case 128:
        v34 = @"AdminOverride";
        goto LABEL_117;
      case 256:
        v34 = @"BackgroundTransfer";
        goto LABEL_117;
    }
  }

  v34 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_newAdviceCause];
LABEL_117:
  [v3 setObject:v34 forKey:@"newAdviceCause"];

  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_10:
    if ((has & 2) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_119;
  }

LABEL_118:
  v35 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_newAdviceAdditionalFlags];
  [v3 setObject:v35 forKey:@"newAdviceAdditionalFlags"];

  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_11:
    if ((has & 0x40) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_119:
  v36 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_dlSubsequentThroughputBytesPerSec];
  [v3 setObject:v36 forKey:@"dlSubsequentThroughputBytesPerSec"];

  if ((*&self->_has & 0x40) != 0)
  {
LABEL_12:
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_ulSubsequentThroughputBytesPerSec];
    [v3 setObject:v5 forKey:@"ulSubsequentThroughputBytesPerSec"];
  }

LABEL_13:
  adviceInitiatingNames = self->_adviceInitiatingNames;
  if (adviceInitiatingNames)
  {
    [v3 setObject:adviceInitiatingNames forKey:@"adviceInitiatingNames"];
  }

  if ([(NSMutableArray *)self->_oldAdvicePartipants count])
  {
    v7 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_oldAdvicePartipants, "count")}];
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v8 = self->_oldAdvicePartipants;
    v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v37 objects:v41 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v38;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v38 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [*(*(&v37 + 1) + 8 * i) dictionaryRepresentation];
          [v7 addObject:v13];
        }

        v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v37 objects:v41 count:16];
      }

      while (v10);
    }

    [v3 setObject:v7 forKey:@"oldAdvicePartipants"];
  }

  v14 = self->_has;
  if ((v14 & 0x4000) != 0)
  {
    v18 = [MEMORY[0x277CCABB0] numberWithBool:self->_previousScreenIsDark];
    [v3 setObject:v18 forKey:@"previousScreenIsDark"];

    v14 = self->_has;
    if ((v14 & 0x8000) == 0)
    {
LABEL_26:
      if ((v14 & 0x1000) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_35;
    }
  }

  else if ((*&self->_has & 0x8000) == 0)
  {
    goto LABEL_26;
  }

  v19 = [MEMORY[0x277CCABB0] numberWithBool:self->_previousScreenIsLocked];
  [v3 setObject:v19 forKey:@"previousScreenIsLocked"];

  v14 = self->_has;
  if ((v14 & 0x1000) == 0)
  {
LABEL_27:
    if ((v14 & 0x2000) == 0)
    {
      goto LABEL_28;
    }

LABEL_36:
    v21 = [MEMORY[0x277CCABB0] numberWithBool:self->_newScreenIsLocked];
    [v3 setObject:v21 forKey:@"newScreenIsLocked"];

    if ((*&self->_has & 0x800) == 0)
    {
      goto LABEL_83;
    }

LABEL_37:
    previousAdviceInitialCause = self->_previousAdviceInitialCause;
    if (previousAdviceInitialCause <= 15)
    {
      if (previousAdviceInitialCause > 3)
      {
        if (previousAdviceInitialCause == 4)
        {
          v23 = @"HighInterfaceUse";
          goto LABEL_82;
        }

        if (previousAdviceInitialCause == 8)
        {
          v23 = @"MediaserverdAssetDownload";
          goto LABEL_82;
        }
      }

      else
      {
        if (previousAdviceInitialCause == 1)
        {
          v23 = @"LargeTransfer";
          goto LABEL_82;
        }

        if (previousAdviceInitialCause == 2)
        {
          v23 = @"AVFlow";
          goto LABEL_82;
        }
      }
    }

    else if (previousAdviceInitialCause <= 63)
    {
      if (previousAdviceInitialCause == 16)
      {
        v23 = @"SceenOnDefault";
        goto LABEL_82;
      }

      if (previousAdviceInitialCause == 32)
      {
        v23 = @"SceenDarkDefault";
        goto LABEL_82;
      }
    }

    else
    {
      switch(previousAdviceInitialCause)
      {
        case 64:
          v23 = @"SceenLockedDefault";
          goto LABEL_82;
        case 128:
          v23 = @"AdminOverride";
          goto LABEL_82;
        case 256:
          v23 = @"BackgroundTransfer";
LABEL_82:
          [v3 setObject:v23 forKey:@"previousAdviceInitialCause"];

          goto LABEL_83;
      }
    }

    v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_previousAdviceInitialCause];
    goto LABEL_82;
  }

LABEL_35:
  v20 = [MEMORY[0x277CCABB0] numberWithBool:self->_newScreenIsDark];
  [v3 setObject:v20 forKey:@"newScreenIsDark"];

  v14 = self->_has;
  if ((v14 & 0x2000) != 0)
  {
    goto LABEL_36;
  }

LABEL_28:
  if ((v14 & 0x800) != 0)
  {
    goto LABEL_37;
  }

LABEL_83:
  v26 = *MEMORY[0x277D85DE8];

  return v3;
}

- (void)writeTo:(id)a3
{
  v46 = *MEMORY[0x277D85DE8];
  v4 = a3;
  has = self->_has;
  if ((has & 0x10) != 0)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    has = self->_has;
    if ((has & 0x200) == 0)
    {
LABEL_3:
      if ((has & 0x400) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_36;
    }
  }

  else if ((*&self->_has & 0x200) == 0)
  {
    goto LABEL_3;
  }

  previousAdvice = self->_previousAdvice;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_37;
  }

LABEL_36:
  previousAdviceCause = self->_previousAdviceCause;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_5:
    if ((has & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_38;
  }

LABEL_37:
  previousAdviceDuration = self->_previousAdviceDuration;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_6:
    if ((has & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_39;
  }

LABEL_38:
  dlPriorThroughputBytesPerSec = self->_dlPriorThroughputBytesPerSec;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_7:
    if ((has & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_40;
  }

LABEL_39:
  ulPriorThroughputBytesPerSec = self->_ulPriorThroughputBytesPerSec;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_8:
    if ((has & 0x100) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_41;
  }

LABEL_40:
  newAdvice = self->_newAdvice;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_9:
    if ((has & 4) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_42;
  }

LABEL_41:
  newAdviceCause = self->_newAdviceCause;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_10:
    if ((has & 2) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_43;
  }

LABEL_42:
  newAdviceAdditionalFlags = self->_newAdviceAdditionalFlags;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_11:
    if ((has & 0x40) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_43:
  dlSubsequentThroughputBytesPerSec = self->_dlSubsequentThroughputBytesPerSec;
  PBDataWriterWriteUint64Field();
  if ((*&self->_has & 0x40) != 0)
  {
LABEL_12:
    ulSubsequentThroughputBytesPerSec = self->_ulSubsequentThroughputBytesPerSec;
    PBDataWriterWriteUint64Field();
  }

LABEL_13:
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v7 = self->_adviceInitiatingNames;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v40 objects:v45 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v41;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v41 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v40 + 1) + 8 * i);
        PBDataWriterWriteStringField();
      }

      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v40 objects:v45 count:16];
    }

    while (v9);
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v13 = self->_oldAdvicePartipants;
  v14 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v36 objects:v44 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v37;
    do
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v37 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v36 + 1) + 8 * j);
        PBDataWriterWriteSubmessage();
      }

      v15 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v36 objects:v44 count:16];
    }

    while (v15);
  }

  v19 = self->_has;
  if ((v19 & 0x4000) != 0)
  {
    previousScreenIsDark = self->_previousScreenIsDark;
    PBDataWriterWriteBOOLField();
    v19 = self->_has;
    if ((v19 & 0x8000) == 0)
    {
LABEL_29:
      if ((v19 & 0x1000) == 0)
      {
        goto LABEL_30;
      }

      goto LABEL_47;
    }
  }

  else if ((*&self->_has & 0x8000) == 0)
  {
    goto LABEL_29;
  }

  previousScreenIsLocked = self->_previousScreenIsLocked;
  PBDataWriterWriteBOOLField();
  v19 = self->_has;
  if ((v19 & 0x1000) == 0)
  {
LABEL_30:
    if ((v19 & 0x2000) == 0)
    {
      goto LABEL_31;
    }

LABEL_48:
    newScreenIsLocked = self->_newScreenIsLocked;
    PBDataWriterWriteBOOLField();
    if ((*&self->_has & 0x800) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_32;
  }

LABEL_47:
  newScreenIsDark = self->_newScreenIsDark;
  PBDataWriterWriteBOOLField();
  v19 = self->_has;
  if ((v19 & 0x2000) != 0)
  {
    goto LABEL_48;
  }

LABEL_31:
  if ((v19 & 0x800) != 0)
  {
LABEL_32:
    previousAdviceInitialCause = self->_previousAdviceInitialCause;
    PBDataWriterWriteInt32Field();
  }

LABEL_33:

  v21 = *MEMORY[0x277D85DE8];
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if ((has & 0x10) != 0)
  {
    v4[5] = self->_timestamp;
    *(v4 + 52) |= 0x10u;
    has = self->_has;
    if ((has & 0x200) == 0)
    {
LABEL_3:
      if ((has & 0x400) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_32;
    }
  }

  else if ((*&self->_has & 0x200) == 0)
  {
    goto LABEL_3;
  }

  *(v4 + 22) = self->_previousAdvice;
  *(v4 + 52) |= 0x200u;
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_33;
  }

LABEL_32:
  *(v4 + 23) = self->_previousAdviceCause;
  *(v4 + 52) |= 0x400u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_5:
    if ((has & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_34;
  }

LABEL_33:
  v4[4] = self->_previousAdviceDuration;
  *(v4 + 52) |= 8u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_6:
    if ((has & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_35;
  }

LABEL_34:
  v4[1] = self->_dlPriorThroughputBytesPerSec;
  *(v4 + 52) |= 1u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_7:
    if ((has & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_36;
  }

LABEL_35:
  v4[6] = self->_ulPriorThroughputBytesPerSec;
  *(v4 + 52) |= 0x20u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_8:
    if ((has & 0x100) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_37;
  }

LABEL_36:
  *(v4 + 18) = self->_newAdvice;
  *(v4 + 52) |= 0x80u;
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_9:
    if ((has & 4) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_38;
  }

LABEL_37:
  *(v4 + 19) = self->_newAdviceCause;
  *(v4 + 52) |= 0x100u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_10:
    if ((has & 2) == 0)
    {
      goto LABEL_11;
    }

LABEL_39:
    v4[2] = self->_dlSubsequentThroughputBytesPerSec;
    *(v4 + 52) |= 2u;
    if ((*&self->_has & 0x40) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_38:
  v4[3] = self->_newAdviceAdditionalFlags;
  *(v4 + 52) |= 4u;
  has = self->_has;
  if ((has & 2) != 0)
  {
    goto LABEL_39;
  }

LABEL_11:
  if ((has & 0x40) != 0)
  {
LABEL_12:
    v4[7] = self->_ulSubsequentThroughputBytesPerSec;
    *(v4 + 52) |= 0x40u;
  }

LABEL_13:
  v15 = v4;
  if ([(AWDSymptomsCellularSDMAdviceChange *)self adviceInitiatingNamesCount])
  {
    [v15 clearAdviceInitiatingNames];
    v6 = [(AWDSymptomsCellularSDMAdviceChange *)self adviceInitiatingNamesCount];
    if (v6)
    {
      v7 = v6;
      for (i = 0; i != v7; ++i)
      {
        v9 = [(AWDSymptomsCellularSDMAdviceChange *)self adviceInitiatingNamesAtIndex:i];
        [v15 addAdviceInitiatingNames:v9];
      }
    }
  }

  if ([(AWDSymptomsCellularSDMAdviceChange *)self oldAdvicePartipantsCount])
  {
    [v15 clearOldAdvicePartipants];
    v10 = [(AWDSymptomsCellularSDMAdviceChange *)self oldAdvicePartipantsCount];
    if (v10)
    {
      v11 = v10;
      for (j = 0; j != v11; ++j)
      {
        v13 = [(AWDSymptomsCellularSDMAdviceChange *)self oldAdvicePartipantsAtIndex:j];
        [v15 addOldAdvicePartipants:v13];
      }
    }
  }

  v14 = self->_has;
  if ((v14 & 0x4000) != 0)
  {
    *(v15 + 102) = self->_previousScreenIsDark;
    *(v15 + 52) |= 0x4000u;
    v14 = self->_has;
    if ((v14 & 0x8000) == 0)
    {
LABEL_23:
      if ((v14 & 0x1000) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_43;
    }
  }

  else if ((*&self->_has & 0x8000) == 0)
  {
    goto LABEL_23;
  }

  *(v15 + 103) = self->_previousScreenIsLocked;
  *(v15 + 52) |= 0x8000u;
  v14 = self->_has;
  if ((v14 & 0x1000) == 0)
  {
LABEL_24:
    if ((v14 & 0x2000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_44;
  }

LABEL_43:
  *(v15 + 100) = self->_newScreenIsDark;
  *(v15 + 52) |= 0x1000u;
  v14 = self->_has;
  if ((v14 & 0x2000) == 0)
  {
LABEL_25:
    if ((v14 & 0x800) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

LABEL_44:
  *(v15 + 101) = self->_newScreenIsLocked;
  *(v15 + 52) |= 0x2000u;
  if ((*&self->_has & 0x800) != 0)
  {
LABEL_26:
    *(v15 + 24) = self->_previousAdviceInitialCause;
    *(v15 + 52) |= 0x800u;
  }

LABEL_27:
}

- (id)copyWithZone:(_NSZone *)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  has = self->_has;
  if ((has & 0x10) != 0)
  {
    *(v5 + 40) = self->_timestamp;
    *(v5 + 104) |= 0x10u;
    has = self->_has;
    if ((has & 0x200) == 0)
    {
LABEL_3:
      if ((has & 0x400) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_36;
    }
  }

  else if ((*&self->_has & 0x200) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 88) = self->_previousAdvice;
  *(v5 + 104) |= 0x200u;
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_37;
  }

LABEL_36:
  *(v5 + 92) = self->_previousAdviceCause;
  *(v5 + 104) |= 0x400u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_5:
    if ((has & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_38;
  }

LABEL_37:
  *(v5 + 32) = self->_previousAdviceDuration;
  *(v5 + 104) |= 8u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_6:
    if ((has & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_39;
  }

LABEL_38:
  *(v5 + 8) = self->_dlPriorThroughputBytesPerSec;
  *(v5 + 104) |= 1u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_7:
    if ((has & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_40;
  }

LABEL_39:
  *(v5 + 48) = self->_ulPriorThroughputBytesPerSec;
  *(v5 + 104) |= 0x20u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_8:
    if ((has & 0x100) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_41;
  }

LABEL_40:
  *(v5 + 72) = self->_newAdvice;
  *(v5 + 104) |= 0x80u;
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_9:
    if ((has & 4) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_42;
  }

LABEL_41:
  *(v5 + 76) = self->_newAdviceCause;
  *(v5 + 104) |= 0x100u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_10:
    if ((has & 2) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_43;
  }

LABEL_42:
  *(v5 + 24) = self->_newAdviceAdditionalFlags;
  *(v5 + 104) |= 4u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_11:
    if ((has & 0x40) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_43:
  *(v5 + 16) = self->_dlSubsequentThroughputBytesPerSec;
  *(v5 + 104) |= 2u;
  if ((*&self->_has & 0x40) != 0)
  {
LABEL_12:
    *(v5 + 56) = self->_ulSubsequentThroughputBytesPerSec;
    *(v5 + 104) |= 0x40u;
  }

LABEL_13:
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v8 = self->_adviceInitiatingNames;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v28;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v28 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v27 + 1) + 8 * i) copyWithZone:a3];
        [v6 addAdviceInitiatingNames:v13];
      }

      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v10);
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v14 = self->_oldAdvicePartipants;
  v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v24;
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v24 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = [*(*(&v23 + 1) + 8 * j) copyWithZone:{a3, v23}];
        [v6 addOldAdvicePartipants:v19];
      }

      v16 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v16);
  }

  v20 = self->_has;
  if ((v20 & 0x4000) != 0)
  {
    *(v6 + 102) = self->_previousScreenIsDark;
    *(v6 + 104) |= 0x4000u;
    v20 = self->_has;
    if ((v20 & 0x8000) == 0)
    {
LABEL_29:
      if ((v20 & 0x1000) == 0)
      {
        goto LABEL_30;
      }

      goto LABEL_47;
    }
  }

  else if ((*&self->_has & 0x8000) == 0)
  {
    goto LABEL_29;
  }

  *(v6 + 103) = self->_previousScreenIsLocked;
  *(v6 + 104) |= 0x8000u;
  v20 = self->_has;
  if ((v20 & 0x1000) == 0)
  {
LABEL_30:
    if ((v20 & 0x2000) == 0)
    {
      goto LABEL_31;
    }

LABEL_48:
    *(v6 + 101) = self->_newScreenIsLocked;
    *(v6 + 104) |= 0x2000u;
    if ((*&self->_has & 0x800) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_32;
  }

LABEL_47:
  *(v6 + 100) = self->_newScreenIsDark;
  *(v6 + 104) |= 0x1000u;
  v20 = self->_has;
  if ((v20 & 0x2000) != 0)
  {
    goto LABEL_48;
  }

LABEL_31:
  if ((v20 & 0x800) != 0)
  {
LABEL_32:
    *(v6 + 96) = self->_previousAdviceInitialCause;
    *(v6 + 104) |= 0x800u;
  }

LABEL_33:
  v21 = *MEMORY[0x277D85DE8];
  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_97;
  }

  has = self->_has;
  v6 = *(v4 + 52);
  if ((has & 0x10) != 0)
  {
    if ((v6 & 0x10) == 0 || self->_timestamp != *(v4 + 5))
    {
      goto LABEL_97;
    }
  }

  else if ((v6 & 0x10) != 0)
  {
    goto LABEL_97;
  }

  if ((*&self->_has & 0x200) != 0)
  {
    if ((*(v4 + 52) & 0x200) == 0 || self->_previousAdvice != *(v4 + 22))
    {
      goto LABEL_97;
    }
  }

  else if ((*(v4 + 52) & 0x200) != 0)
  {
    goto LABEL_97;
  }

  if ((*&self->_has & 0x400) != 0)
  {
    if ((*(v4 + 52) & 0x400) == 0 || self->_previousAdviceCause != *(v4 + 23))
    {
      goto LABEL_97;
    }
  }

  else if ((*(v4 + 52) & 0x400) != 0)
  {
    goto LABEL_97;
  }

  if ((has & 8) != 0)
  {
    if ((v6 & 8) == 0 || self->_previousAdviceDuration != *(v4 + 4))
    {
      goto LABEL_97;
    }
  }

  else if ((v6 & 8) != 0)
  {
    goto LABEL_97;
  }

  if (has)
  {
    if ((v6 & 1) == 0 || self->_dlPriorThroughputBytesPerSec != *(v4 + 1))
    {
      goto LABEL_97;
    }
  }

  else if (v6)
  {
    goto LABEL_97;
  }

  if ((has & 0x20) != 0)
  {
    if ((v6 & 0x20) == 0 || self->_ulPriorThroughputBytesPerSec != *(v4 + 6))
    {
      goto LABEL_97;
    }
  }

  else if ((v6 & 0x20) != 0)
  {
    goto LABEL_97;
  }

  if ((has & 0x80) != 0)
  {
    if ((v6 & 0x80) == 0 || self->_newAdvice != *(v4 + 18))
    {
      goto LABEL_97;
    }
  }

  else if ((v6 & 0x80) != 0)
  {
    goto LABEL_97;
  }

  if ((*&self->_has & 0x100) != 0)
  {
    if ((*(v4 + 52) & 0x100) == 0 || self->_newAdviceCause != *(v4 + 19))
    {
      goto LABEL_97;
    }
  }

  else if ((*(v4 + 52) & 0x100) != 0)
  {
    goto LABEL_97;
  }

  if ((has & 4) != 0)
  {
    if ((v6 & 4) == 0 || self->_newAdviceAdditionalFlags != *(v4 + 3))
    {
      goto LABEL_97;
    }
  }

  else if ((v6 & 4) != 0)
  {
    goto LABEL_97;
  }

  if ((has & 2) != 0)
  {
    if ((v6 & 2) == 0 || self->_dlSubsequentThroughputBytesPerSec != *(v4 + 2))
    {
      goto LABEL_97;
    }
  }

  else if ((v6 & 2) != 0)
  {
    goto LABEL_97;
  }

  if ((has & 0x40) != 0)
  {
    if ((v6 & 0x40) == 0 || self->_ulSubsequentThroughputBytesPerSec != *(v4 + 7))
    {
      goto LABEL_97;
    }
  }

  else if ((v6 & 0x40) != 0)
  {
    goto LABEL_97;
  }

  adviceInitiatingNames = self->_adviceInitiatingNames;
  if (adviceInitiatingNames | *(v4 + 8) && ![(NSMutableArray *)adviceInitiatingNames isEqual:?])
  {
    goto LABEL_97;
  }

  oldAdvicePartipants = self->_oldAdvicePartipants;
  if (oldAdvicePartipants | *(v4 + 10))
  {
    if (![(NSMutableArray *)oldAdvicePartipants isEqual:?])
    {
      goto LABEL_97;
    }
  }

  if ((*&self->_has & 0x4000) != 0)
  {
    if ((*(v4 + 52) & 0x4000) == 0)
    {
      goto LABEL_97;
    }

    v10 = *(v4 + 102);
    if (self->_previousScreenIsDark)
    {
      if ((*(v4 + 102) & 1) == 0)
      {
        goto LABEL_97;
      }
    }

    else if (*(v4 + 102))
    {
      goto LABEL_97;
    }
  }

  else if ((*(v4 + 52) & 0x4000) != 0)
  {
    goto LABEL_97;
  }

  if ((*&self->_has & 0x8000) != 0)
  {
    if ((*(v4 + 52) & 0x8000) == 0)
    {
      goto LABEL_97;
    }

    v11 = *(v4 + 103);
    if (self->_previousScreenIsLocked)
    {
      if ((*(v4 + 103) & 1) == 0)
      {
        goto LABEL_97;
      }
    }

    else if (*(v4 + 103))
    {
      goto LABEL_97;
    }
  }

  else if ((*(v4 + 52) & 0x8000) != 0)
  {
    goto LABEL_97;
  }

  if ((*&self->_has & 0x1000) != 0)
  {
    if ((*(v4 + 52) & 0x1000) == 0)
    {
      goto LABEL_97;
    }

    v12 = *(v4 + 100);
    if (self->_newScreenIsDark)
    {
      if ((*(v4 + 100) & 1) == 0)
      {
        goto LABEL_97;
      }
    }

    else if (*(v4 + 100))
    {
      goto LABEL_97;
    }
  }

  else if ((*(v4 + 52) & 0x1000) != 0)
  {
    goto LABEL_97;
  }

  if ((*&self->_has & 0x2000) == 0)
  {
    if ((*(v4 + 52) & 0x2000) == 0)
    {
      goto LABEL_69;
    }

LABEL_97:
    v9 = 0;
    goto LABEL_98;
  }

  if ((*(v4 + 52) & 0x2000) == 0)
  {
    goto LABEL_97;
  }

  v13 = *(v4 + 101);
  if (self->_newScreenIsLocked)
  {
    if ((*(v4 + 101) & 1) == 0)
    {
      goto LABEL_97;
    }
  }

  else if (*(v4 + 101))
  {
    goto LABEL_97;
  }

LABEL_69:
  if ((*&self->_has & 0x800) != 0)
  {
    if ((*(v4 + 52) & 0x800) == 0 || self->_previousAdviceInitialCause != *(v4 + 24))
    {
      goto LABEL_97;
    }

    v9 = 1;
  }

  else
  {
    v9 = (*(v4 + 52) & 0x800) == 0;
  }

LABEL_98:

  return v9;
}

- (unint64_t)hash
{
  has = self->_has;
  if ((has & 0x10) != 0)
  {
    v22 = 2654435761u * self->_timestamp;
    if ((*&self->_has & 0x200) != 0)
    {
LABEL_3:
      v21 = 2654435761 * self->_previousAdvice;
      if ((*&self->_has & 0x400) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else
  {
    v22 = 0;
    if ((*&self->_has & 0x200) != 0)
    {
      goto LABEL_3;
    }
  }

  v21 = 0;
  if ((*&self->_has & 0x400) != 0)
  {
LABEL_4:
    v20 = 2654435761 * self->_previousAdviceCause;
    if ((has & 8) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_15:
  v20 = 0;
  if ((has & 8) != 0)
  {
LABEL_5:
    v19 = 2654435761u * self->_previousAdviceDuration;
    if (has)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_16:
  v19 = 0;
  if (has)
  {
LABEL_6:
    v18 = 2654435761u * self->_dlPriorThroughputBytesPerSec;
    if ((has & 0x20) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  v18 = 0;
  if ((has & 0x20) != 0)
  {
LABEL_7:
    v4 = 2654435761u * self->_ulPriorThroughputBytesPerSec;
    if ((has & 0x80) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  v4 = 0;
  if ((has & 0x80) != 0)
  {
LABEL_8:
    v5 = 2654435761 * self->_newAdvice;
    if ((*&self->_has & 0x100) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

LABEL_19:
  v5 = 0;
  if ((*&self->_has & 0x100) != 0)
  {
LABEL_9:
    v6 = 2654435761 * self->_newAdviceCause;
    if ((has & 4) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

LABEL_20:
  v6 = 0;
  if ((has & 4) != 0)
  {
LABEL_10:
    v7 = 2654435761u * self->_newAdviceAdditionalFlags;
    if ((has & 2) != 0)
    {
      goto LABEL_11;
    }

LABEL_22:
    v8 = 0;
    if ((has & 0x40) != 0)
    {
      goto LABEL_12;
    }

    goto LABEL_23;
  }

LABEL_21:
  v7 = 0;
  if ((has & 2) == 0)
  {
    goto LABEL_22;
  }

LABEL_11:
  v8 = 2654435761u * self->_dlSubsequentThroughputBytesPerSec;
  if ((has & 0x40) != 0)
  {
LABEL_12:
    v9 = 2654435761u * self->_ulSubsequentThroughputBytesPerSec;
    goto LABEL_24;
  }

LABEL_23:
  v9 = 0;
LABEL_24:
  v10 = [(NSMutableArray *)self->_adviceInitiatingNames hash];
  v11 = [(NSMutableArray *)self->_oldAdvicePartipants hash];
  if ((*&self->_has & 0x4000) != 0)
  {
    v12 = 2654435761 * self->_previousScreenIsDark;
    if ((*&self->_has & 0x8000) != 0)
    {
LABEL_26:
      v13 = 2654435761 * self->_previousScreenIsLocked;
      if ((*&self->_has & 0x1000) != 0)
      {
        goto LABEL_27;
      }

      goto LABEL_32;
    }
  }

  else
  {
    v12 = 0;
    if ((*&self->_has & 0x8000) != 0)
    {
      goto LABEL_26;
    }
  }

  v13 = 0;
  if ((*&self->_has & 0x1000) != 0)
  {
LABEL_27:
    v14 = 2654435761 * self->_newScreenIsDark;
    if ((*&self->_has & 0x2000) != 0)
    {
      goto LABEL_28;
    }

LABEL_33:
    v15 = 0;
    if ((*&self->_has & 0x800) != 0)
    {
      goto LABEL_29;
    }

LABEL_34:
    v16 = 0;
    return v21 ^ v22 ^ v20 ^ v19 ^ v18 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16;
  }

LABEL_32:
  v14 = 0;
  if ((*&self->_has & 0x2000) == 0)
  {
    goto LABEL_33;
  }

LABEL_28:
  v15 = 2654435761 * self->_newScreenIsLocked;
  if ((*&self->_has & 0x800) == 0)
  {
    goto LABEL_34;
  }

LABEL_29:
  v16 = 2654435761 * self->_previousAdviceInitialCause;
  return v21 ^ v22 ^ v20 ^ v19 ^ v18 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16;
}

- (void)mergeFrom:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  v6 = *(v4 + 52);
  if ((v6 & 0x10) != 0)
  {
    self->_timestamp = *(v4 + 5);
    *&self->_has |= 0x10u;
    v6 = *(v4 + 52);
    if ((v6 & 0x200) == 0)
    {
LABEL_3:
      if ((v6 & 0x400) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_36;
    }
  }

  else if ((*(v4 + 52) & 0x200) == 0)
  {
    goto LABEL_3;
  }

  self->_previousAdvice = *(v4 + 22);
  *&self->_has |= 0x200u;
  v6 = *(v4 + 52);
  if ((v6 & 0x400) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_37;
  }

LABEL_36:
  self->_previousAdviceCause = *(v4 + 23);
  *&self->_has |= 0x400u;
  v6 = *(v4 + 52);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_38;
  }

LABEL_37:
  self->_previousAdviceDuration = *(v4 + 4);
  *&self->_has |= 8u;
  v6 = *(v4 + 52);
  if ((v6 & 1) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_39;
  }

LABEL_38:
  self->_dlPriorThroughputBytesPerSec = *(v4 + 1);
  *&self->_has |= 1u;
  v6 = *(v4 + 52);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_40;
  }

LABEL_39:
  self->_ulPriorThroughputBytesPerSec = *(v4 + 6);
  *&self->_has |= 0x20u;
  v6 = *(v4 + 52);
  if ((v6 & 0x80) == 0)
  {
LABEL_8:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_41;
  }

LABEL_40:
  self->_newAdvice = *(v4 + 18);
  *&self->_has |= 0x80u;
  v6 = *(v4 + 52);
  if ((v6 & 0x100) == 0)
  {
LABEL_9:
    if ((v6 & 4) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_42;
  }

LABEL_41:
  self->_newAdviceCause = *(v4 + 19);
  *&self->_has |= 0x100u;
  v6 = *(v4 + 52);
  if ((v6 & 4) == 0)
  {
LABEL_10:
    if ((v6 & 2) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_43;
  }

LABEL_42:
  self->_newAdviceAdditionalFlags = *(v4 + 3);
  *&self->_has |= 4u;
  v6 = *(v4 + 52);
  if ((v6 & 2) == 0)
  {
LABEL_11:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_43:
  self->_dlSubsequentThroughputBytesPerSec = *(v4 + 2);
  *&self->_has |= 2u;
  if ((*(v4 + 52) & 0x40) != 0)
  {
LABEL_12:
    self->_ulSubsequentThroughputBytesPerSec = *(v4 + 7);
    *&self->_has |= 0x40u;
  }

LABEL_13:
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v7 = *(v4 + 8);
  v8 = [v7 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v24;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v24 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [(AWDSymptomsCellularSDMAdviceChange *)self addAdviceInitiatingNames:*(*(&v23 + 1) + 8 * i)];
      }

      v9 = [v7 countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v9);
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v12 = *(v5 + 10);
  v13 = [v12 countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v20;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v20 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [(AWDSymptomsCellularSDMAdviceChange *)self addOldAdvicePartipants:*(*(&v19 + 1) + 8 * j), v19];
      }

      v14 = [v12 countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v14);
  }

  v17 = *(v5 + 52);
  if ((v17 & 0x4000) != 0)
  {
    self->_previousScreenIsDark = *(v5 + 102);
    *&self->_has |= 0x4000u;
    v17 = *(v5 + 52);
    if ((v17 & 0x8000) == 0)
    {
LABEL_29:
      if ((v17 & 0x1000) == 0)
      {
        goto LABEL_30;
      }

      goto LABEL_47;
    }
  }

  else if ((*(v5 + 52) & 0x8000) == 0)
  {
    goto LABEL_29;
  }

  self->_previousScreenIsLocked = *(v5 + 103);
  *&self->_has |= 0x8000u;
  v17 = *(v5 + 52);
  if ((v17 & 0x1000) == 0)
  {
LABEL_30:
    if ((v17 & 0x2000) == 0)
    {
      goto LABEL_31;
    }

LABEL_48:
    self->_newScreenIsLocked = *(v5 + 101);
    *&self->_has |= 0x2000u;
    if ((*(v5 + 52) & 0x800) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_32;
  }

LABEL_47:
  self->_newScreenIsDark = *(v5 + 100);
  *&self->_has |= 0x1000u;
  v17 = *(v5 + 52);
  if ((v17 & 0x2000) != 0)
  {
    goto LABEL_48;
  }

LABEL_31:
  if ((v17 & 0x800) != 0)
  {
LABEL_32:
    self->_previousAdviceInitialCause = *(v5 + 24);
    *&self->_has |= 0x800u;
  }

LABEL_33:

  v18 = *MEMORY[0x277D85DE8];
}

@end