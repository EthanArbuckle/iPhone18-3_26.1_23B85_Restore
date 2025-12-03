@interface AWDWAQuickDpsStats
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

@implementation AWDWAQuickDpsStats

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
  if ([reason isEqualToString:@"kNotSuppressed"])
  {
    return 0;
  }

  if ([reason isEqualToString:@"kMLPrediction"])
  {
    return 1;
  }

  if ([reason isEqualToString:@"kPredictionProbability"])
  {
    return 2;
  }

  if ([reason isEqualToString:@"kQuickDpsDisabled"])
  {
    return 3;
  }

  if ([reason isEqualToString:@"kValidationFailure"])
  {
    return 4;
  }

  if ([reason isEqualToString:@"kBudgetThresholdReached"])
  {
    return 5;
  }

  if ([reason isEqualToString:@"kCcaThresholdReached"])
  {
    return 6;
  }

  if ([reason isEqualToString:@"kTriggerDisconnectSuspected"])
  {
    return 7;
  }

  if ([reason isEqualToString:@"kHighAwdlActivitySuspected"])
  {
    return 8;
  }

  if ([reason isEqualToString:@"kValidationFailureTxSuccessInAtleastOneAC"])
  {
    return 9;
  }

  if ([reason isEqualToString:@"kValidationFailureOtherErr"])
  {
    return 10;
  }

  return 0;
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
  v3.receiver = self;
  v3.super_class = AWDWAQuickDpsStats;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDWAQuickDpsStats description](&v3, sel_description), -[AWDWAQuickDpsStats dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  has = self->_has;
  if ((has & 0x800) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_screenStateOn), @"screenStateOn"}];
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

  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_quickDpsResetRecommendation), @"quickDpsResetRecommendation"}];
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
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_stallPrediction), @"stallPrediction"}];
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
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_stallProbability), @"stallProbability"}];
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
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_probabilityThreshold), @"probabilityThreshold"}];
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
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_ccaThreshold), @"ccaThreshold"}];
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
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_rssiThreshold), @"rssiThreshold"}];
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
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_screenOnThreshold), @"screenOnThreshold"}];
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
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_screenOffThreshold), @"screenOffThreshold"}];
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_11:
    if ((has & 0x200) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_29;
  }

LABEL_25:
  suppressedReason = self->_suppressedReason;
  if (suppressedReason >= 0xB)
  {
    v7 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"(unknown: %i)", self->_suppressedReason];
  }

  else
  {
    v7 = off_29EE33158[suppressedReason];
  }

  [dictionary setObject:v7 forKey:@"suppressedReason"];
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_12:
    if ((has & 2) == 0)
    {
      goto LABEL_13;
    }

LABEL_30:
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_awdlActivityThreshold), @"awdlActivityThreshold"}];
    if ((*&self->_has & 1) == 0)
    {
      return dictionary;
    }

    goto LABEL_14;
  }

LABEL_29:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_isDpsValidationDisabled), @"isDpsValidationDisabled"}];
  has = self->_has;
  if ((has & 2) != 0)
  {
    goto LABEL_30;
  }

LABEL_13:
  if (has)
  {
LABEL_14:
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_quickDpsTimeSincePreviousTriggerMinutes), @"quickDpsTimeSincePreviousTriggerMinutes"}];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
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

      goto LABEL_17;
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

    goto LABEL_18;
  }

LABEL_17:
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

    goto LABEL_19;
  }

LABEL_18:
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

    goto LABEL_20;
  }

LABEL_19:
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

    goto LABEL_21;
  }

LABEL_20:
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

    goto LABEL_22;
  }

LABEL_21:
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

    goto LABEL_23;
  }

LABEL_22:
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

    goto LABEL_24;
  }

LABEL_23:
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

    goto LABEL_25;
  }

LABEL_24:
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

LABEL_26:
    awdlActivityThreshold = self->_awdlActivityThreshold;
    PBDataWriterWriteUint32Field();
    if ((*&self->_has & 1) == 0)
    {
      return;
    }

    goto LABEL_27;
  }

LABEL_25:
  isDpsValidationDisabled = self->_isDpsValidationDisabled;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 2) != 0)
  {
    goto LABEL_26;
  }

LABEL_13:
  if ((has & 1) == 0)
  {
    return;
  }

LABEL_27:
  quickDpsTimeSincePreviousTriggerMinutes = self->_quickDpsTimeSincePreviousTriggerMinutes;

  PBDataWriterWriteUint64Field();
}

- (void)copyTo:(id)to
{
  has = self->_has;
  if ((has & 0x800) != 0)
  {
    *(to + 50) = self->_screenStateOn;
    *(to + 26) |= 0x800u;
    has = self->_has;
    if ((has & 0x400) == 0)
    {
LABEL_3:
      if ((has & 0x1000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

  else if ((*&self->_has & 0x400) == 0)
  {
    goto LABEL_3;
  }

  *(to + 49) = self->_quickDpsResetRecommendation;
  *(to + 26) |= 0x400u;
  has = self->_has;
  if ((has & 0x1000) == 0)
  {
LABEL_4:
    if ((has & 0x80) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_18;
  }

LABEL_17:
  *(to + 51) = self->_stallPrediction;
  *(to + 26) |= 0x1000u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_5:
    if ((has & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_19;
  }

LABEL_18:
  *(to + 10) = self->_stallProbability;
  *(to + 26) |= 0x80u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_6:
    if ((has & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_20;
  }

LABEL_19:
  *(to + 6) = self->_probabilityThreshold;
  *(to + 26) |= 8u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_7:
    if ((has & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_21;
  }

LABEL_20:
  *(to + 5) = self->_ccaThreshold;
  *(to + 26) |= 4u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_8:
    if ((has & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_22;
  }

LABEL_21:
  *(to + 7) = self->_rssiThreshold;
  *(to + 26) |= 0x10u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_9:
    if ((has & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_23;
  }

LABEL_22:
  *(to + 9) = self->_screenOnThreshold;
  *(to + 26) |= 0x40u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_10:
    if ((has & 0x100) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_24;
  }

LABEL_23:
  *(to + 8) = self->_screenOffThreshold;
  *(to + 26) |= 0x20u;
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_11:
    if ((has & 0x200) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_25;
  }

LABEL_24:
  *(to + 11) = self->_suppressedReason;
  *(to + 26) |= 0x100u;
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_12:
    if ((has & 2) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_26;
  }

LABEL_25:
  *(to + 48) = self->_isDpsValidationDisabled;
  *(to + 26) |= 0x200u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_13:
    if ((has & 1) == 0)
    {
      return;
    }

LABEL_27:
    *(to + 1) = self->_quickDpsTimeSincePreviousTriggerMinutes;
    *(to + 26) |= 1u;
    return;
  }

LABEL_26:
  *(to + 4) = self->_awdlActivityThreshold;
  *(to + 26) |= 2u;
  if (*&self->_has)
  {
    goto LABEL_27;
  }
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
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (!v5)
  {
    return v5;
  }

  has = self->_has;
  v7 = *(equal + 26);
  if ((has & 0x800) != 0)
  {
    if ((*(equal + 26) & 0x800) == 0)
    {
      goto LABEL_77;
    }

    v8 = *(equal + 50);
    if (self->_screenStateOn)
    {
      if ((*(equal + 50) & 1) == 0)
      {
        goto LABEL_77;
      }
    }

    else if (*(equal + 50))
    {
      goto LABEL_77;
    }
  }

  else if ((*(equal + 26) & 0x800) != 0)
  {
    goto LABEL_77;
  }

  if ((*&self->_has & 0x400) != 0)
  {
    if ((*(equal + 26) & 0x400) == 0)
    {
      goto LABEL_77;
    }

    v9 = *(equal + 49);
    if (self->_quickDpsResetRecommendation)
    {
      if ((*(equal + 49) & 1) == 0)
      {
        goto LABEL_77;
      }
    }

    else if (*(equal + 49))
    {
      goto LABEL_77;
    }
  }

  else if ((*(equal + 26) & 0x400) != 0)
  {
    goto LABEL_77;
  }

  if ((*&self->_has & 0x1000) != 0)
  {
    if ((*(equal + 26) & 0x1000) == 0)
    {
      goto LABEL_77;
    }

    v10 = *(equal + 51);
    if (self->_stallPrediction)
    {
      if ((*(equal + 51) & 1) == 0)
      {
        goto LABEL_77;
      }
    }

    else if (*(equal + 51))
    {
      goto LABEL_77;
    }
  }

  else if ((*(equal + 26) & 0x1000) != 0)
  {
    goto LABEL_77;
  }

  if ((has & 0x80) != 0)
  {
    if ((v7 & 0x80) == 0 || self->_stallProbability != *(equal + 10))
    {
      goto LABEL_77;
    }
  }

  else if ((v7 & 0x80) != 0)
  {
    goto LABEL_77;
  }

  if ((has & 8) != 0)
  {
    if ((v7 & 8) == 0 || self->_probabilityThreshold != *(equal + 6))
    {
      goto LABEL_77;
    }
  }

  else if ((v7 & 8) != 0)
  {
    goto LABEL_77;
  }

  if ((has & 4) != 0)
  {
    if ((v7 & 4) == 0 || self->_ccaThreshold != *(equal + 5))
    {
      goto LABEL_77;
    }
  }

  else if ((v7 & 4) != 0)
  {
    goto LABEL_77;
  }

  if ((has & 0x10) != 0)
  {
    if ((v7 & 0x10) == 0 || self->_rssiThreshold != *(equal + 7))
    {
      goto LABEL_77;
    }
  }

  else if ((v7 & 0x10) != 0)
  {
    goto LABEL_77;
  }

  if ((has & 0x40) != 0)
  {
    if ((v7 & 0x40) == 0 || self->_screenOnThreshold != *(equal + 9))
    {
      goto LABEL_77;
    }
  }

  else if ((v7 & 0x40) != 0)
  {
    goto LABEL_77;
  }

  if ((has & 0x20) != 0)
  {
    if ((v7 & 0x20) == 0 || self->_screenOffThreshold != *(equal + 8))
    {
      goto LABEL_77;
    }
  }

  else if ((v7 & 0x20) != 0)
  {
    goto LABEL_77;
  }

  if ((*&self->_has & 0x100) != 0)
  {
    if ((*(equal + 26) & 0x100) == 0 || self->_suppressedReason != *(equal + 11))
    {
      goto LABEL_77;
    }
  }

  else if ((*(equal + 26) & 0x100) != 0)
  {
    goto LABEL_77;
  }

  if ((*&self->_has & 0x200) == 0)
  {
    if ((*(equal + 26) & 0x200) == 0)
    {
      goto LABEL_63;
    }

LABEL_77:
    LOBYTE(v5) = 0;
    return v5;
  }

  if ((*(equal + 26) & 0x200) == 0)
  {
    goto LABEL_77;
  }

  v11 = *(equal + 48);
  if (self->_isDpsValidationDisabled)
  {
    if ((*(equal + 48) & 1) == 0)
    {
      goto LABEL_77;
    }

    goto LABEL_63;
  }

  if (*(equal + 48))
  {
    goto LABEL_77;
  }

LABEL_63:
  if ((has & 2) != 0)
  {
    if ((v7 & 2) == 0 || self->_awdlActivityThreshold != *(equal + 4))
    {
      goto LABEL_77;
    }
  }

  else if ((v7 & 2) != 0)
  {
    goto LABEL_77;
  }

  LOBYTE(v5) = (v7 & 1) == 0;
  if (has)
  {
    if ((v7 & 1) == 0 || self->_quickDpsTimeSincePreviousTriggerMinutes != *(equal + 1))
    {
      goto LABEL_77;
    }

    LOBYTE(v5) = 1;
  }

  return v5;
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
  v3 = *(from + 26);
  if ((v3 & 0x800) != 0)
  {
    self->_screenStateOn = *(from + 50);
    *&self->_has |= 0x800u;
    v3 = *(from + 26);
    if ((v3 & 0x400) == 0)
    {
LABEL_3:
      if ((v3 & 0x1000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

  else if ((*(from + 26) & 0x400) == 0)
  {
    goto LABEL_3;
  }

  self->_quickDpsResetRecommendation = *(from + 49);
  *&self->_has |= 0x400u;
  v3 = *(from + 26);
  if ((v3 & 0x1000) == 0)
  {
LABEL_4:
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_18;
  }

LABEL_17:
  self->_stallPrediction = *(from + 51);
  *&self->_has |= 0x1000u;
  v3 = *(from + 26);
  if ((v3 & 0x80) == 0)
  {
LABEL_5:
    if ((v3 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_19;
  }

LABEL_18:
  self->_stallProbability = *(from + 10);
  *&self->_has |= 0x80u;
  v3 = *(from + 26);
  if ((v3 & 8) == 0)
  {
LABEL_6:
    if ((v3 & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_20;
  }

LABEL_19:
  self->_probabilityThreshold = *(from + 6);
  *&self->_has |= 8u;
  v3 = *(from + 26);
  if ((v3 & 4) == 0)
  {
LABEL_7:
    if ((v3 & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_21;
  }

LABEL_20:
  self->_ccaThreshold = *(from + 5);
  *&self->_has |= 4u;
  v3 = *(from + 26);
  if ((v3 & 0x10) == 0)
  {
LABEL_8:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_22;
  }

LABEL_21:
  self->_rssiThreshold = *(from + 7);
  *&self->_has |= 0x10u;
  v3 = *(from + 26);
  if ((v3 & 0x40) == 0)
  {
LABEL_9:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_23;
  }

LABEL_22:
  self->_screenOnThreshold = *(from + 9);
  *&self->_has |= 0x40u;
  v3 = *(from + 26);
  if ((v3 & 0x20) == 0)
  {
LABEL_10:
    if ((v3 & 0x100) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_24;
  }

LABEL_23:
  self->_screenOffThreshold = *(from + 8);
  *&self->_has |= 0x20u;
  v3 = *(from + 26);
  if ((v3 & 0x100) == 0)
  {
LABEL_11:
    if ((v3 & 0x200) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_25;
  }

LABEL_24:
  self->_suppressedReason = *(from + 11);
  *&self->_has |= 0x100u;
  v3 = *(from + 26);
  if ((v3 & 0x200) == 0)
  {
LABEL_12:
    if ((v3 & 2) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_26;
  }

LABEL_25:
  self->_isDpsValidationDisabled = *(from + 48);
  *&self->_has |= 0x200u;
  v3 = *(from + 26);
  if ((v3 & 2) == 0)
  {
LABEL_13:
    if ((v3 & 1) == 0)
    {
      return;
    }

LABEL_27:
    self->_quickDpsTimeSincePreviousTriggerMinutes = *(from + 1);
    *&self->_has |= 1u;
    return;
  }

LABEL_26:
  self->_awdlActivityThreshold = *(from + 4);
  *&self->_has |= 2u;
  if (*(from + 26))
  {
    goto LABEL_27;
  }
}

@end