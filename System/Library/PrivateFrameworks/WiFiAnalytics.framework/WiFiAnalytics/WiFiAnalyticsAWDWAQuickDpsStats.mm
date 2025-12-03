@interface WiFiAnalyticsAWDWAQuickDpsStats
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsSuppressedReason:(id)reason;
- (int)suppressedReason;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasAwdlActivityThreshold:(BOOL)threshold;
- (void)setHasCcaThreshold:(BOOL)threshold;
- (void)setHasIsDpsValidationDisabled:(BOOL)disabled;
- (void)setHasProbabilityThreshold:(BOOL)threshold;
- (void)setHasQuickDpsResetRecommendation:(BOOL)recommendation;
- (void)setHasRssiThreshold:(BOOL)threshold;
- (void)setHasScreenOffThreshold:(BOOL)threshold;
- (void)setHasScreenOnThreshold:(BOOL)threshold;
- (void)setHasScreenStateOn:(BOOL)on;
- (void)setHasStallPrediction:(BOOL)prediction;
- (void)setHasStallProbability:(BOOL)probability;
- (void)setHasSuppressedReason:(BOOL)reason;
- (void)writeTo:(id)to;
@end

@implementation WiFiAnalyticsAWDWAQuickDpsStats

- (void)setHasScreenStateOn:(BOOL)on
{
  if (on)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7FF | v3;
}

- (void)setHasQuickDpsResetRecommendation:(BOOL)recommendation
{
  if (recommendation)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFBFF | v3;
}

- (void)setHasStallPrediction:(BOOL)prediction
{
  if (prediction)
  {
    v3 = 4096;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEFFF | v3;
}

- (void)setHasStallProbability:(BOOL)probability
{
  if (probability)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFF7F | v3;
}

- (void)setHasProbabilityThreshold:(BOOL)threshold
{
  if (threshold)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFF7 | v3;
}

- (void)setHasCcaThreshold:(BOOL)threshold
{
  if (threshold)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFB | v3;
}

- (void)setHasRssiThreshold:(BOOL)threshold
{
  if (threshold)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFEF | v3;
}

- (void)setHasScreenOnThreshold:(BOOL)threshold
{
  if (threshold)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFBF | v3;
}

- (void)setHasScreenOffThreshold:(BOOL)threshold
{
  if (threshold)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFDF | v3;
}

- (int)suppressedReason
{
  if ((*&self->_has & 0x100) != 0)
  {
    return self->_suppressedReason;
  }

  else
  {
    return 0;
  }
}

- (void)setHasSuppressedReason:(BOOL)reason
{
  if (reason)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFEFF | v3;
}

- (int)StringAsSuppressedReason:(id)reason
{
  reasonCopy = reason;
  if ([reasonCopy isEqualToString:@"kNotSuppressed"])
  {
    v4 = 0;
  }

  else if ([reasonCopy isEqualToString:@"kMLPrediction"])
  {
    v4 = 1;
  }

  else if ([reasonCopy isEqualToString:@"kPredictionProbability"])
  {
    v4 = 2;
  }

  else if ([reasonCopy isEqualToString:@"kQuickDpsDisabled"])
  {
    v4 = 3;
  }

  else if ([reasonCopy isEqualToString:@"kValidationFailure"])
  {
    v4 = 4;
  }

  else if ([reasonCopy isEqualToString:@"kBudgetThresholdReached"])
  {
    v4 = 5;
  }

  else if ([reasonCopy isEqualToString:@"kCcaThresholdReached"])
  {
    v4 = 6;
  }

  else if ([reasonCopy isEqualToString:@"kTriggerDisconnectSuspected"])
  {
    v4 = 7;
  }

  else if ([reasonCopy isEqualToString:@"kHighAwdlActivitySuspected"])
  {
    v4 = 8;
  }

  else if ([reasonCopy isEqualToString:@"kValidationFailureTxSuccessInAtleastOneAC"])
  {
    v4 = 9;
  }

  else if ([reasonCopy isEqualToString:@"kValidationFailureOtherErr"])
  {
    v4 = 10;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasIsDpsValidationDisabled:(BOOL)disabled
{
  if (disabled)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFDFF | v3;
}

- (void)setHasAwdlActivityThreshold:(BOOL)threshold
{
  if (threshold)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFD | v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = WiFiAnalyticsAWDWAQuickDpsStats;
  v4 = [(WiFiAnalyticsAWDWAQuickDpsStats *)&v8 description];
  dictionaryRepresentation = [(WiFiAnalyticsAWDWAQuickDpsStats *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  has = self->_has;
  if ((has & 0x800) != 0)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithBool:self->_screenStateOn];
    [dictionary setObject:v7 forKey:@"screenStateOn"];

    has = self->_has;
    if ((has & 0x400) == 0)
    {
LABEL_3:
      if ((has & 0x1000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_20;
    }
  }

  else if ((*&self->_has & 0x400) == 0)
  {
    goto LABEL_3;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithBool:self->_quickDpsResetRecommendation];
  [dictionary setObject:v8 forKey:@"quickDpsResetRecommendation"];

  has = self->_has;
  if ((has & 0x1000) == 0)
  {
LABEL_4:
    if ((has & 0x80) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_21;
  }

LABEL_20:
  v9 = [MEMORY[0x1E696AD98] numberWithBool:self->_stallPrediction];
  [dictionary setObject:v9 forKey:@"stallPrediction"];

  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_5:
    if ((has & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_22;
  }

LABEL_21:
  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_stallProbability];
  [dictionary setObject:v10 forKey:@"stallProbability"];

  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_6:
    if ((has & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_23;
  }

LABEL_22:
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_probabilityThreshold];
  [dictionary setObject:v11 forKey:@"probabilityThreshold"];

  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_7:
    if ((has & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_24;
  }

LABEL_23:
  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_ccaThreshold];
  [dictionary setObject:v12 forKey:@"ccaThreshold"];

  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_8:
    if ((has & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_25;
  }

LABEL_24:
  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_rssiThreshold];
  [dictionary setObject:v13 forKey:@"rssiThreshold"];

  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_9:
    if ((has & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_26;
  }

LABEL_25:
  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_screenOnThreshold];
  [dictionary setObject:v14 forKey:@"screenOnThreshold"];

  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_10:
    if ((has & 0x100) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_27;
  }

LABEL_26:
  v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_screenOffThreshold];
  [dictionary setObject:v15 forKey:@"screenOffThreshold"];

  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_11:
    if ((has & 0x200) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_31;
  }

LABEL_27:
  suppressedReason = self->_suppressedReason;
  if (suppressedReason >= 0xB)
  {
    v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_suppressedReason];
  }

  else
  {
    v17 = off_1E830EF58[suppressedReason];
  }

  [dictionary setObject:v17 forKey:@"suppressedReason"];

  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_12:
    if ((has & 2) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_32;
  }

LABEL_31:
  v18 = [MEMORY[0x1E696AD98] numberWithBool:self->_isDpsValidationDisabled];
  [dictionary setObject:v18 forKey:@"isDpsValidationDisabled"];

  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_13:
    if ((has & 1) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_32:
  v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_awdlActivityThreshold];
  [dictionary setObject:v19 forKey:@"awdlActivityThreshold"];

  if (*&self->_has)
  {
LABEL_14:
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_quickDpsTimeSincePreviousTriggerMinutes];
    [dictionary setObject:v5 forKey:@"quickDpsTimeSincePreviousTriggerMinutes"];
  }

LABEL_15:

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((has & 0x800) != 0)
  {
    screenStateOn = self->_screenStateOn;
    PBDataWriterWriteBOOLField();
    has = self->_has;
    if ((has & 0x400) == 0)
    {
LABEL_3:
      if ((has & 0x1000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_20;
    }
  }

  else if ((*&self->_has & 0x400) == 0)
  {
    goto LABEL_3;
  }

  quickDpsResetRecommendation = self->_quickDpsResetRecommendation;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 0x1000) == 0)
  {
LABEL_4:
    if ((has & 0x80) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_21;
  }

LABEL_20:
  stallPrediction = self->_stallPrediction;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_5:
    if ((has & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_22;
  }

LABEL_21:
  stallProbability = self->_stallProbability;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_6:
    if ((has & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_23;
  }

LABEL_22:
  probabilityThreshold = self->_probabilityThreshold;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_7:
    if ((has & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_24;
  }

LABEL_23:
  ccaThreshold = self->_ccaThreshold;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_8:
    if ((has & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_25;
  }

LABEL_24:
  rssiThreshold = self->_rssiThreshold;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_9:
    if ((has & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_26;
  }

LABEL_25:
  screenOnThreshold = self->_screenOnThreshold;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_10:
    if ((has & 0x100) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_27;
  }

LABEL_26:
  screenOffThreshold = self->_screenOffThreshold;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_11:
    if ((has & 0x200) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_28;
  }

LABEL_27:
  suppressedReason = self->_suppressedReason;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_12:
    if ((has & 2) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_29;
  }

LABEL_28:
  isDpsValidationDisabled = self->_isDpsValidationDisabled;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_13:
    if ((has & 1) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_29:
  awdlActivityThreshold = self->_awdlActivityThreshold;
  PBDataWriterWriteUint32Field();
  if (*&self->_has)
  {
LABEL_14:
    quickDpsTimeSincePreviousTriggerMinutes = self->_quickDpsTimeSincePreviousTriggerMinutes;
    PBDataWriterWriteUint64Field();
  }

LABEL_15:
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((has & 0x800) != 0)
  {
    toCopy[50] = self->_screenStateOn;
    *(toCopy + 26) |= 0x800u;
    has = self->_has;
    if ((has & 0x400) == 0)
    {
LABEL_3:
      if ((has & 0x1000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_20;
    }
  }

  else if ((*&self->_has & 0x400) == 0)
  {
    goto LABEL_3;
  }

  toCopy[49] = self->_quickDpsResetRecommendation;
  *(toCopy + 26) |= 0x400u;
  has = self->_has;
  if ((has & 0x1000) == 0)
  {
LABEL_4:
    if ((has & 0x80) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_21;
  }

LABEL_20:
  toCopy[51] = self->_stallPrediction;
  *(toCopy + 26) |= 0x1000u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_5:
    if ((has & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_22;
  }

LABEL_21:
  *(toCopy + 10) = self->_stallProbability;
  *(toCopy + 26) |= 0x80u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_6:
    if ((has & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_23;
  }

LABEL_22:
  *(toCopy + 6) = self->_probabilityThreshold;
  *(toCopy + 26) |= 8u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_7:
    if ((has & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_24;
  }

LABEL_23:
  *(toCopy + 5) = self->_ccaThreshold;
  *(toCopy + 26) |= 4u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_8:
    if ((has & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_25;
  }

LABEL_24:
  *(toCopy + 7) = self->_rssiThreshold;
  *(toCopy + 26) |= 0x10u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_9:
    if ((has & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_26;
  }

LABEL_25:
  *(toCopy + 9) = self->_screenOnThreshold;
  *(toCopy + 26) |= 0x40u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_10:
    if ((has & 0x100) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_27;
  }

LABEL_26:
  *(toCopy + 8) = self->_screenOffThreshold;
  *(toCopy + 26) |= 0x20u;
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_11:
    if ((has & 0x200) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_28;
  }

LABEL_27:
  *(toCopy + 11) = self->_suppressedReason;
  *(toCopy + 26) |= 0x100u;
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_12:
    if ((has & 2) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_29;
  }

LABEL_28:
  toCopy[48] = self->_isDpsValidationDisabled;
  *(toCopy + 26) |= 0x200u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_13:
    if ((has & 1) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_29:
  *(toCopy + 4) = self->_awdlActivityThreshold;
  *(toCopy + 26) |= 2u;
  if (*&self->_has)
  {
LABEL_14:
    *(toCopy + 1) = self->_quickDpsTimeSincePreviousTriggerMinutes;
    *(toCopy + 26) |= 1u;
  }

LABEL_15:
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  has = self->_has;
  if ((has & 0x800) != 0)
  {
    *(result + 50) = self->_screenStateOn;
    *(result + 26) |= 0x800u;
    has = self->_has;
    if ((has & 0x400) == 0)
    {
LABEL_3:
      if ((has & 0x1000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_18;
    }
  }

  else if ((*&self->_has & 0x400) == 0)
  {
    goto LABEL_3;
  }

  *(result + 49) = self->_quickDpsResetRecommendation;
  *(result + 26) |= 0x400u;
  has = self->_has;
  if ((has & 0x1000) == 0)
  {
LABEL_4:
    if ((has & 0x80) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_18:
  *(result + 51) = self->_stallPrediction;
  *(result + 26) |= 0x1000u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_5:
    if ((has & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

LABEL_19:
  *(result + 10) = self->_stallProbability;
  *(result + 26) |= 0x80u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_6:
    if ((has & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_21;
  }

LABEL_20:
  *(result + 6) = self->_probabilityThreshold;
  *(result + 26) |= 8u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_7:
    if ((has & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

LABEL_21:
  *(result + 5) = self->_ccaThreshold;
  *(result + 26) |= 4u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_8:
    if ((has & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_23;
  }

LABEL_22:
  *(result + 7) = self->_rssiThreshold;
  *(result + 26) |= 0x10u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_9:
    if ((has & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_24;
  }

LABEL_23:
  *(result + 9) = self->_screenOnThreshold;
  *(result + 26) |= 0x40u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_10:
    if ((has & 0x100) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_25;
  }

LABEL_24:
  *(result + 8) = self->_screenOffThreshold;
  *(result + 26) |= 0x20u;
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_11:
    if ((has & 0x200) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_26;
  }

LABEL_25:
  *(result + 11) = self->_suppressedReason;
  *(result + 26) |= 0x100u;
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_12:
    if ((has & 2) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_27;
  }

LABEL_26:
  *(result + 48) = self->_isDpsValidationDisabled;
  *(result + 26) |= 0x200u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_13:
    if ((has & 1) == 0)
    {
      return result;
    }

    goto LABEL_14;
  }

LABEL_27:
  *(result + 4) = self->_awdlActivityThreshold;
  *(result + 26) |= 2u;
  if ((*&self->_has & 1) == 0)
  {
    return result;
  }

LABEL_14:
  *(result + 1) = self->_quickDpsTimeSincePreviousTriggerMinutes;
  *(result + 26) |= 1u;
  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_79;
  }

  has = self->_has;
  v6 = *(equalCopy + 26);
  if ((has & 0x800) != 0)
  {
    if ((*(equalCopy + 26) & 0x800) == 0)
    {
      goto LABEL_79;
    }

    v7 = *(equalCopy + 50);
    if (self->_screenStateOn)
    {
      if ((*(equalCopy + 50) & 1) == 0)
      {
        goto LABEL_79;
      }
    }

    else if (*(equalCopy + 50))
    {
      goto LABEL_79;
    }
  }

  else if ((*(equalCopy + 26) & 0x800) != 0)
  {
    goto LABEL_79;
  }

  if ((*&self->_has & 0x400) != 0)
  {
    if ((*(equalCopy + 26) & 0x400) == 0)
    {
      goto LABEL_79;
    }

    v8 = *(equalCopy + 49);
    if (self->_quickDpsResetRecommendation)
    {
      if ((*(equalCopy + 49) & 1) == 0)
      {
        goto LABEL_79;
      }
    }

    else if (*(equalCopy + 49))
    {
      goto LABEL_79;
    }
  }

  else if ((*(equalCopy + 26) & 0x400) != 0)
  {
    goto LABEL_79;
  }

  if ((*&self->_has & 0x1000) != 0)
  {
    if ((*(equalCopy + 26) & 0x1000) == 0)
    {
      goto LABEL_79;
    }

    v9 = *(equalCopy + 51);
    if (self->_stallPrediction)
    {
      if ((*(equalCopy + 51) & 1) == 0)
      {
        goto LABEL_79;
      }
    }

    else if (*(equalCopy + 51))
    {
      goto LABEL_79;
    }
  }

  else if ((*(equalCopy + 26) & 0x1000) != 0)
  {
    goto LABEL_79;
  }

  if ((has & 0x80) != 0)
  {
    if ((v6 & 0x80) == 0 || self->_stallProbability != *(equalCopy + 10))
    {
      goto LABEL_79;
    }
  }

  else if ((v6 & 0x80) != 0)
  {
    goto LABEL_79;
  }

  if ((has & 8) != 0)
  {
    if ((v6 & 8) == 0 || self->_probabilityThreshold != *(equalCopy + 6))
    {
      goto LABEL_79;
    }
  }

  else if ((v6 & 8) != 0)
  {
    goto LABEL_79;
  }

  if ((has & 4) != 0)
  {
    if ((v6 & 4) == 0 || self->_ccaThreshold != *(equalCopy + 5))
    {
      goto LABEL_79;
    }
  }

  else if ((v6 & 4) != 0)
  {
    goto LABEL_79;
  }

  if ((has & 0x10) != 0)
  {
    if ((v6 & 0x10) == 0 || self->_rssiThreshold != *(equalCopy + 7))
    {
      goto LABEL_79;
    }
  }

  else if ((v6 & 0x10) != 0)
  {
    goto LABEL_79;
  }

  if ((has & 0x40) != 0)
  {
    if ((v6 & 0x40) == 0 || self->_screenOnThreshold != *(equalCopy + 9))
    {
      goto LABEL_79;
    }
  }

  else if ((v6 & 0x40) != 0)
  {
    goto LABEL_79;
  }

  if ((has & 0x20) != 0)
  {
    if ((v6 & 0x20) == 0 || self->_screenOffThreshold != *(equalCopy + 8))
    {
      goto LABEL_79;
    }
  }

  else if ((v6 & 0x20) != 0)
  {
    goto LABEL_79;
  }

  if ((*&self->_has & 0x100) != 0)
  {
    if ((*(equalCopy + 26) & 0x100) == 0 || self->_suppressedReason != *(equalCopy + 11))
    {
      goto LABEL_79;
    }
  }

  else if ((*(equalCopy + 26) & 0x100) != 0)
  {
    goto LABEL_79;
  }

  if ((*&self->_has & 0x200) == 0)
  {
    if ((*(equalCopy + 26) & 0x200) == 0)
    {
      goto LABEL_63;
    }

LABEL_79:
    v11 = 0;
    goto LABEL_80;
  }

  if ((*(equalCopy + 26) & 0x200) == 0)
  {
    goto LABEL_79;
  }

  v10 = *(equalCopy + 48);
  if (self->_isDpsValidationDisabled)
  {
    if ((*(equalCopy + 48) & 1) == 0)
    {
      goto LABEL_79;
    }
  }

  else if (*(equalCopy + 48))
  {
    goto LABEL_79;
  }

LABEL_63:
  if ((has & 2) != 0)
  {
    if ((v6 & 2) == 0 || self->_awdlActivityThreshold != *(equalCopy + 4))
    {
      goto LABEL_79;
    }
  }

  else if ((v6 & 2) != 0)
  {
    goto LABEL_79;
  }

  if (has)
  {
    if ((v6 & 1) == 0 || self->_quickDpsTimeSincePreviousTriggerMinutes != *(equalCopy + 1))
    {
      goto LABEL_79;
    }

    v11 = 1;
  }

  else
  {
    v11 = (v6 & 1) == 0;
  }

LABEL_80:

  return v11;
}

- (unint64_t)hash
{
  has = self->_has;
  if ((has & 0x800) != 0)
  {
    v3 = 2654435761 * self->_screenStateOn;
    if ((*&self->_has & 0x400) != 0)
    {
LABEL_3:
      v4 = 2654435761 * self->_quickDpsResetRecommendation;
      if ((*&self->_has & 0x1000) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

  else
  {
    v3 = 0;
    if ((*&self->_has & 0x400) != 0)
    {
      goto LABEL_3;
    }
  }

  v4 = 0;
  if ((*&self->_has & 0x1000) != 0)
  {
LABEL_4:
    v5 = 2654435761 * self->_stallPrediction;
    if ((has & 0x80) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_18;
  }

LABEL_17:
  v5 = 0;
  if ((has & 0x80) != 0)
  {
LABEL_5:
    v6 = 2654435761 * self->_stallProbability;
    if ((has & 8) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_19;
  }

LABEL_18:
  v6 = 0;
  if ((has & 8) != 0)
  {
LABEL_6:
    v7 = 2654435761 * self->_probabilityThreshold;
    if ((has & 4) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_20;
  }

LABEL_19:
  v7 = 0;
  if ((has & 4) != 0)
  {
LABEL_7:
    v8 = 2654435761 * self->_ccaThreshold;
    if ((has & 0x10) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_21;
  }

LABEL_20:
  v8 = 0;
  if ((has & 0x10) != 0)
  {
LABEL_8:
    v9 = 2654435761 * self->_rssiThreshold;
    if ((has & 0x40) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_22;
  }

LABEL_21:
  v9 = 0;
  if ((has & 0x40) != 0)
  {
LABEL_9:
    v10 = 2654435761 * self->_screenOnThreshold;
    if ((has & 0x20) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_23;
  }

LABEL_22:
  v10 = 0;
  if ((has & 0x20) != 0)
  {
LABEL_10:
    v11 = 2654435761 * self->_screenOffThreshold;
    if ((*&self->_has & 0x100) != 0)
    {
      goto LABEL_11;
    }

    goto LABEL_24;
  }

LABEL_23:
  v11 = 0;
  if ((*&self->_has & 0x100) != 0)
  {
LABEL_11:
    v12 = 2654435761 * self->_suppressedReason;
    if ((*&self->_has & 0x200) != 0)
    {
      goto LABEL_12;
    }

    goto LABEL_25;
  }

LABEL_24:
  v12 = 0;
  if ((*&self->_has & 0x200) != 0)
  {
LABEL_12:
    v13 = 2654435761 * self->_isDpsValidationDisabled;
    if ((has & 2) != 0)
    {
      goto LABEL_13;
    }

LABEL_26:
    v14 = 0;
    if (has)
    {
      goto LABEL_14;
    }

LABEL_27:
    v15 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15;
  }

LABEL_25:
  v13 = 0;
  if ((has & 2) == 0)
  {
    goto LABEL_26;
  }

LABEL_13:
  v14 = 2654435761 * self->_awdlActivityThreshold;
  if ((has & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_14:
  v15 = 2654435761u * self->_quickDpsTimeSincePreviousTriggerMinutes;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = *(fromCopy + 26);
  if ((v5 & 0x800) != 0)
  {
    self->_screenStateOn = *(fromCopy + 50);
    *&self->_has |= 0x800u;
    v5 = *(fromCopy + 26);
    if ((v5 & 0x400) == 0)
    {
LABEL_3:
      if ((v5 & 0x1000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_20;
    }
  }

  else if ((*(fromCopy + 26) & 0x400) == 0)
  {
    goto LABEL_3;
  }

  self->_quickDpsResetRecommendation = *(fromCopy + 49);
  *&self->_has |= 0x400u;
  v5 = *(fromCopy + 26);
  if ((v5 & 0x1000) == 0)
  {
LABEL_4:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_21;
  }

LABEL_20:
  self->_stallPrediction = *(fromCopy + 51);
  *&self->_has |= 0x1000u;
  v5 = *(fromCopy + 26);
  if ((v5 & 0x80) == 0)
  {
LABEL_5:
    if ((v5 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_22;
  }

LABEL_21:
  self->_stallProbability = *(fromCopy + 10);
  *&self->_has |= 0x80u;
  v5 = *(fromCopy + 26);
  if ((v5 & 8) == 0)
  {
LABEL_6:
    if ((v5 & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_23;
  }

LABEL_22:
  self->_probabilityThreshold = *(fromCopy + 6);
  *&self->_has |= 8u;
  v5 = *(fromCopy + 26);
  if ((v5 & 4) == 0)
  {
LABEL_7:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_24;
  }

LABEL_23:
  self->_ccaThreshold = *(fromCopy + 5);
  *&self->_has |= 4u;
  v5 = *(fromCopy + 26);
  if ((v5 & 0x10) == 0)
  {
LABEL_8:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_25;
  }

LABEL_24:
  self->_rssiThreshold = *(fromCopy + 7);
  *&self->_has |= 0x10u;
  v5 = *(fromCopy + 26);
  if ((v5 & 0x40) == 0)
  {
LABEL_9:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_26;
  }

LABEL_25:
  self->_screenOnThreshold = *(fromCopy + 9);
  *&self->_has |= 0x40u;
  v5 = *(fromCopy + 26);
  if ((v5 & 0x20) == 0)
  {
LABEL_10:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_27;
  }

LABEL_26:
  self->_screenOffThreshold = *(fromCopy + 8);
  *&self->_has |= 0x20u;
  v5 = *(fromCopy + 26);
  if ((v5 & 0x100) == 0)
  {
LABEL_11:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_28;
  }

LABEL_27:
  self->_suppressedReason = *(fromCopy + 11);
  *&self->_has |= 0x100u;
  v5 = *(fromCopy + 26);
  if ((v5 & 0x200) == 0)
  {
LABEL_12:
    if ((v5 & 2) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_29;
  }

LABEL_28:
  self->_isDpsValidationDisabled = *(fromCopy + 48);
  *&self->_has |= 0x200u;
  v5 = *(fromCopy + 26);
  if ((v5 & 2) == 0)
  {
LABEL_13:
    if ((v5 & 1) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_29:
  self->_awdlActivityThreshold = *(fromCopy + 4);
  *&self->_has |= 2u;
  if (*(fromCopy + 26))
  {
LABEL_14:
    self->_quickDpsTimeSincePreviousTriggerMinutes = *(fromCopy + 1);
    *&self->_has |= 1u;
  }

LABEL_15:
}

@end